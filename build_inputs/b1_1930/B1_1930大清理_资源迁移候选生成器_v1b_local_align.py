# LOCAL ALIGN v1b (2026-10-10, Operit local toolchain).
# vs v1: ONLY the four exact-anchor literals are aligned to real r6t007 bytes.
# (blank line is TAB-only, not empty; each corrected anchor counts==1).
# Everything else is byte-identical to v1.
#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""AoH3 r6t007 B1 conservative resource candidate generator.
Never modifies repository source. Generates candidate + evidence to out dir.
Stdlib only; intentionally fail-closed on unknown/malformed inputs.
"""
import argparse, csv, hashlib, json, re, sys
from collections import defaultdict
from pathlib import Path

KEEP = list(range(67, 96)) + [97, 98]
DELETE = set(range(67)) | {96}
MAP = {old: i + 1 for i, old in enumerate(KEEP)}
SCENARIOS = {'WW2': (72, 6), 'qianxi': (81, 15), 'ModernWorld': (81, 15),
             'USA_States': (85, 19), 'brazil': (82, 16), 'SouthAmerica': (85, 19)}
KNOWN_GROUPS = {'units', 'buildings', 'laws', 'advantages', 'resources'}
TECH_KEYS = ('ID', 'Name', 'ImageID', 'TreeColumn', 'TreeRow', 'RequiredTech',
             'RequiredTech2', 'ResearchCost', 'Repeatable', 'AI')

class Blocked(Exception): pass

def sha(s):
    if isinstance(s, str): s = s.encode('utf-8')
    return hashlib.sha256(s).hexdigest()

def require(cond, why):
    if not cond: raise Blocked(why)

def occurrences(text, needle): return text.count(needle)

def top_blocks(text):
    m = re.search(r'\bTechnology\s*:\s*\[', text)
    require(m is not None, 'Technology array not found')
    start = m.end()-1
    blocks=[]; brace=0; bstart=None; quote=False; esc=False; close=None
    for pos in range(start+1, len(text)):
        c=text[pos]
        if quote:
            if esc: esc=False
            elif c=='\\': esc=True
            elif c=='"': quote=False
            continue
        if c=='"': quote=True; continue
        if c=='{' and brace==0: bstart=pos; brace+=1; continue
        if c=='{': brace+=1; continue
        if c=='}':
            brace-=1
            require(brace>=0 and bstart is not None, 'Unbalanced braces')
            if brace==0: blocks.append(text[bstart:pos+1]); bstart=None
            continue
        if c==']' and brace==0: close=pos; break
    require(close is not None and brace==0 and not quote, 'Technology array not closed')
    leftover=text[start+1:close]
    # Ensure only comma/whitespace outside top-level blocks
    stripped=[]; last=start+1
    # Recalculate offsets from original to verify no junk between entries
    for b in blocks:
        p=text.find(b, last); require(p>=0, 'Block location lost')
        stripped.append(text[last:p]); last=p+len(b)
    stripped.append(text[last:close])
    require(all(re.fullmatch(r'[\s,]*', x) for x in stripped), 'Unexpected non-node technology list content')
    return start, close, blocks

def field_matches(block, key):
    return list(re.finditer(r'(?m)^(\s*'+re.escape(key)+r'\s*:\s*)([^\r\n,]+)(\s*,)', block))

def field(block, key):
    m=field_matches(block,key)
    require(len(m)==1, f'{key} field should appear once, found {len(m)}')
    return m[0].group(2).strip()

def num(block,key):
    v=field(block,key)
    require(re.fullmatch(r'-?\d+', v) is not None, f'{key} is not integer: {v}')
    return int(v)

def edit_field(block,key,val):
    matches=field_matches(block,key)
    require(len(matches)==1, f'Nonunique field {key}')
    m=matches[0]
    return block[:m.start(2)] + str(val) + block[m.end(2):]

def mask(block):
    for k in ('ID','RequiredTech','RequiredTech2'):
        block=edit_field(block,k,'__TECH_REF__')
    return block

def validate_graph(blocks):
    require(len(blocks)==32, f'Expected 32, got {len(blocks)}')
    ids=[num(b,'ID') for b in blocks]
    require(ids == list(range(32)), f'Noncontinuous IDs: {ids}')
    adj=[]
    for i,b in enumerate(blocks):
        refs=[num(b,'RequiredTech'),num(b,'RequiredTech2')]
        require(all(x==-1 or 0<=x<32 for x in refs), f'Bad prerequisite at {i}: {refs}')
        require(i not in refs, f'Self-loop at {i}')
        require(not (refs[0]>=0 and refs[0]==refs[1]), f'Duplicate prereq at {i}')
        adj.append([x for x in refs if x>=0])
    require(adj[0] == [], 'Root must be independent')
    require(adj[1] == [0] and adj[2]==[0], 'EarlyFighter/EarlyTank must attach root once')
    state=[0]*32
    def dfs(x):
        if state[x]==1: raise Blocked(f'Prerequisite cycle at {x}')
        if state[x]==2: return
        state[x]=1
        for y in adj[x]: dfs(y)
        state[x]=2
    for x in range(32): dfs(x)
    return adj

def closure(index, adj):
    """Model-only prerequisite closure, not an AoH3 runtime substitute."""
    seen=set()
    def visit(i):
        if i in seen: return
        seen.add(i)
        for j in adj[i]: visit(j)
    visit(index)
    return seen

def prerequisites_met(index, adj, unlocked):
    """Model-only AND of direct prerequisites. Verify against game runtime."""
    return all(p in unlocked for p in adj[index])

def build_tech(text):
    # Strict exact anchors preserve raw script quirks, including blank lines.
    anchors={
        'original-root': '\t\t\tID: 0,\n\t\t\tName: "Library",\n\t\t\tImageID: 0,\n\t\t\t\n\t\t\tTreeColumn: 0,\n\t\t\tTreeRow: 2,',
        'first-retained': '\t\t\tID: 67,\n\t\t\tName: "EarlyFighter",\n\t\t\tImageID: 0,\n\t\t\t\n\t\t\tTreeColumn: 27,\n\t\t\tTreeRow: 1,',
        'out-of-order-deleted': '\t\t\tID: 96,\n\t\t\tName: "WarTactics",\n\t\t\tImageID: 0,\n\t\t\t\n\t\t\tTreeColumn: 14,\n\t\t\tTreeRow: 4,',
        'out-of-order-retained': '\t\t\tID: 97,\n\t\t\tName: "Bomber",\n\t\t\tImageID: 0,\n\t\t\t\n\t\t\tTreeColumn: 30,\n\t\t\tTreeRow: 1,',
    }
    for name,a in anchors.items():
        require(occurrences(text,a)==1, f'Exact anchor {name} not unique: {occurrences(text,a)}')
    left,right,old=top_blocks(text)
    require(len(old)==99, f'Source has {len(old)} techs, not 99')
    require([num(b,'ID') for b in old]==list(range(99)), 'Source ID != array index')
    deletion=[num(b,'ID') for b in old if num(b,'TreeColumn')<=26]
    require(set(deletion)==DELETE and len(deletion)==68, 'Source TreeColumn split drift')
    require([num(b,'ID') for b in old if num(b,'TreeColumn')>26]==KEEP,'Kept array order drift')
    root=old[0]
    root_keys=set(re.findall(r'(?m)^\s*([A-Za-z_]\w*)\s*:',root))
    require(root_keys==set(TECH_KEYS), f'Old Library unexpectedly gained fields: {root_keys}')
    root=edit_field(root,'Name','"ModernTechFoundation"')
    root=edit_field(root,'TreeColumn',26)
    root=edit_field(root,'TreeRow',2)
    new=[root]
    for old_id in KEEP:
        b=old[old_id]
        refs=[num(b,'RequiredTech'),num(b,'RequiredTech2')]
        mapped=[]
        for r in refs:
            require(r==-1 or 0<=r<99, f'Unexpected tech ref in source {old_id}: {r}')
            mapped.append(-1 if r==-1 else MAP[r] if r in MAP else 0)
        if mapped[0]==mapped[1] and mapped[0]>=0: mapped[1]=-1
        b=edit_field(b,'ID',MAP[old_id])
        b=edit_field(b,'RequiredTech',mapped[0])
        b=edit_field(b,'RequiredTech2',mapped[1])
        require(mask(b)==mask(old[old_id]), f'Unexpected field drift old tech {old_id}')
        new.append(b)
    adj=validate_graph(new)
    require(not prerequisites_met(1,adj,set()) and prerequisites_met(1,adj,{0}),
            'Simulated R1 root gate failed for fighter')
    require(not prerequisites_met(2,adj,set()) and prerequisites_met(2,adj,{0}),
            'Simulated R1 root gate failed for tank')
    # The exact source-file envelope is retained, only Technology list is reconstructed.
    out=text[:left+1] + '\n' + ',\n'.join('\t\t'+b for b in new) + ',\n\t' + text[right:]
    _,_,reparse=top_blocks(out)
    require(len(reparse)==32 and all(num(b,'ID')==i for i,b in enumerate(reparse)), 'Reparse failed')
    return out,old,new

# Only explicit, numeric RequiredTechID fields are eligible for automatic changes.
REF_RE=re.compile(r'(?m)^(?P<pre>[ \t]*RequiredTechID[ \t]*:[ \t]*)(?P<val>-?\d+|\[[ \t\d,\r\n-]*\])(?P<post>[ \t]*,)',re.M)

def refs_in(text):
    matches=list(REF_RE.finditer(text))
    appearances=len(re.findall(r'\bRequiredTechID\s*:',text))
    require(len(matches)==appearances, f'Unsupported RequiredTechID syntax: matched {len(matches)}/{appearances}')
    return matches

def remap_value(v):
    if v==-1: return -1,'unlocked'
    require(0<=v<99, f'Out-of-range old tech ref {v}')
    if v in MAP: return MAP[v], 'keep'
    return 0,'root-fallback'

def remap_resources(text, path, records):
    found=refs_in(text)
    n=len(found)
    if not n: return text,n
    out=[]; last=0
    for ordinal,m in enumerate(found):
        old=m.group('val'); orig=[int(x) for x in re.findall(r'-?\d+', old)]
        # exactly ints; no malformed punctuation
        cleaned=old.strip('[] \r\n\t')
        require(not cleaned or re.fullmatch(r'[\d,\s-]+',cleaned),f'Malformed list {path}')
        newvals=[remap_value(x) for x in orig]
        it=iter(newvals)
        replaced=re.sub(r'-?\d+', lambda _:str(next(it)[0]), old)
        require(len(re.findall(r'-?\d+',replaced))==len(orig), 'Array element count drift')
        old_meta=','.join(map(str,orig)); new_meta=','.join(str(v[0]) for v in newvals)
        semantics=';'.join(v[1] for v in newvals)
        records.append([str(path),ordinal+1, m.start(), old_meta,new_meta,semantics,sha(m.group(0))])
        out.append(text[last:m.start('val')]); out.append(replaced); last=m.end('val')
    out.append(text[last:]); output=''.join(out)
    require(len(refs_in(output))==n, f'Ref counts changed: {path}')
    # Verify non-reference content exactly equal
    def erase_refs(t):
        return REF_RE.sub(lambda m:m.group('pre')+'<TECH_REF>'+m.group('post'),t)
    require(erase_refs(text)==erase_refs(output),f'Non-tech content changed: {path}')
    return output,n

def tsv(path, header, rows):
    path.parent.mkdir(parents=True,exist_ok=True)
    with path.open('w',encoding='utf-8',newline='') as f:
        w=csv.writer(f,delimiter='\t'); w.writerow(header); w.writerows(rows)

def record_stage(out, rel, content, source, manifest):
    dst=out/'candidate'/rel; dst.parent.mkdir(parents=True,exist_ok=True)
    dst.write_bytes(content.encode('utf-8'))
    manifest.append((str(rel),sha(source),sha(content), 'changed' if source!=content else 'same-bytes'))

def run(repo,out):
    base=repo/'assets_r6t007'
    src=base/'game/technologies/Technologies.json'
    require(src.is_file(), f'Missing {src}')
    require(not out.resolve().is_relative_to(base.resolve()),'Output must not be inside baseline assets')
    source=src.read_text(encoding='utf-8')
    converted,old,new=build_tech(source)
    manifest=[]; refs=[]; anomalies=[]; fields=[]
    record_stage(out,Path('game/technologies/Technologies.json'),converted,source,manifest)
    tsv(out/'tech_id_map.tsv',['old_id','name','old_column','new_id','action'],
        [[i,field(b,'Name'),num(b,'TreeColumn'),MAP.get(i,''),'KEEP' if i in MAP else 'DELETE'] for i,b in enumerate(old)] +
        [['NEW','ModernTechFoundation',26,0,'CREATE']])
    for i,b in enumerate(old):
        if i not in DELETE: continue
        name=field(b,'Name')
        for k,v in re.findall(r'(?m)^\s*([A-Za-z_]\w*)\s*:\s*([^\r\n]+)',b):
            if k not in TECH_KEYS: fields.append([i,name,k,v.strip()])
    tsv(out/'deleted_effects.tsv',['old_id','name','effect_key','raw_value'], fields)
    # Stage only whitelisted, explicitly typed, numeric RequiredTechID fields.
    game=base/'game'
    for f in sorted(game.rglob('*.json')):
        rel=f.relative_to(base)
        if rel == Path('game/technologies/Technologies.json'): continue
        content=f.read_text(encoding='utf-8')
        has_tech=bool(re.search(r'(?m)^\s*(RequiredTechID|REQUIRED_TECHNOLOGY|TechnologyID)\s*:',content))
        if not has_tech: continue
        domain=rel.parts[1] if len(rel.parts)>1 else ''
        if domain not in KNOWN_GROUPS or f.name=='Units.json':
            anomalies.append([str(rel),'REVIEW_UNKNOWN_DOMAIN','tech-like field found; not patched'])
            continue
        if re.search(r'(?m)^\s*(REQUIRED_TECHNOLOGY|TechnologyID)\s*:',content):
            anomalies.append([str(rel),'REVIEW_UNKNOWN_KEY','unconfirmed tech-reference key'])
            continue
        updated,n=remap_resources(content,rel,refs)
        if n: record_stage(out,rel,updated,content,manifest)
    require(any('/units/' in '/'+row[0] for row in refs),'No unit RequiredTechID references scanned')
    for air in ('AirInterceptor.json','AirFighter.json','AirBomber.json','AirAttacker.json'):
        p=base/'game/units'/air
        require(p.is_file(),f'Missing {air}')
        # We deliberately record the old=0 -> new=0 semantic rename even though bytes are identical.
        vals=[int(x) for m in refs_in(p.read_text(encoding='utf-8')) for x in re.findall(r'-?\d+',m.group('val'))]
        require(vals==[0],f'Unexpected {air} RequiredTechID: {vals}')
    # Read but DO NOT modify six scenarios (B2). We only verify source candidate index mapping.
    scenario_rows=[]
    for tag,(expected_old,expected_new) in SCENARIOS.items():
        p=base/f'map/Earth3/scenarios/{tag}/Details.json'
        require(p.is_file(),f'Missing B2 scenario Details {p}')
        content=p.read_text(encoding='utf-8')
        vals=re.findall(r'\bCivDefault_Technology\s*:\s*(\d+)',content)
        require(len(vals)==1, f'Missing/nonunique CivDefault_Technology in {tag}')
        observed=int(vals[0]); require(observed==expected_old,f'{tag}: expected {expected_old}, observed {observed}')
        require(MAP[observed]==expected_new,f'Unexpected mapping for {tag}')
        graph=validate_graph(new)
        chain=closure(expected_new,graph)
        require(0 in chain, f'{tag}: root absent from model prerequisite closure')
        scenario_rows.append([tag,observed,field(old[observed],'Name'),expected_new,field(new[expected_new],'Name'),'B2_ONLY'])
    tsv(out/'b2_scenario_preview.tsv',['scenario','old_index','old_target','new_index','new_target','status'],scenario_rows)
    tsv(out/'reference_ledger.tsv',['path','field_ordinal','source_byte_offset_approx','old_values','candidate_values','reason','anchor_sha256'],refs)
    tsv(out/'review_blockers.tsv',['path','severity','reason'],anomalies)
    tsv(out/'manifest_sha256.tsv',['relative_path','old_sha256','candidate_sha256','status'],manifest)
    # Scan other asset regions for references (do not assume they are tech IDs).
    for p in sorted((base/'map/Earth3/scenarios').glob('*/Data.json')):
        c=p.read_text(encoding='utf-8')
        if re.search(r'\bTechnologyID\s*:',c):
            anomalies.append([str(p.relative_to(base)),'B2_TECHNOLOGY_ID','scenario-level field; B1 does not patch'])
    tsv(out/'review_blockers.tsv',['path','severity','reason'],anomalies)
    # Ref check: no dangling output reference, and root effect not assumed present.
    effect_keys=[r[2] for r in fields]
    report={
        'status':'CANDIDATE_ONLY__NOT_RELEASE',
        'source_sha256':sha(source), 'candidate_sha256':sha(converted),
        'source_nodes':99,'deleted_nodes':68,'kept_nodes':31,'new_root_nodes':1,'candidate_nodes':32,
        'resource_field_occurrences':len(refs), 'changed_files_including_tech':sum(x[3]=='changed' for x in manifest),
        'known_unresolved':['root localization language key and runtime display',
            'government file and REQUIRED_TECHNOLOGY semantics',
            'old tech effect retention (sea access and colonization)',
            'old unit level visibility / recruitability',
            'B2 scenario indexes and per-civilization TechnologyID not applied',
            'runtime ID-vs-index and old-save compatibility',
            'truth-on-device and resource overlay priority'],
        'review_rows':len(anomalies),'deleted_effect_rows':len(fields),
        'access_to_sea_was_deleted':any(k=='UnlocksAccessToTheSea' for k in effect_keys),
        'approved_source_not_modified':True}
    (out/'audit_report.json').write_text(json.dumps(report,indent=2,ensure_ascii=False)+'\n',encoding='utf-8')
    return report

def self_test():
    sample='RequiredTechID: [-1, 65, 67, 81, 96, 97, 98],\n'
    rows=[]; out,n=remap_resources(sample,Path('game/laws/Laws.json'),rows)
    assert n==1 and '[-1, 0, 1, 15, 0, 30, 31]' in out
    assert len(re.findall(r'-?\d+',out)) == len(re.findall(r'-?\d+',sample))
    assert remap_value(0)==(0,'root-fallback') and remap_value(75)==(9,'keep')
    # Negative G1: out of old-range ID must fail.
    for s in ('RequiredTechID: 99,\n','RequiredTechID: [2, 100],\n'):
        try: remap_resources(s,Path('game/units/mock.json'),[])
        except Blocked: pass
        else: raise AssertionError('Invalid ID accepted')
    # Negative G2: cycle, duplicate prereq, and swapped IDs must fail.
    def mock(i,a=-1,b=-1):
        return ('{\n ID: '+str(i)+',\n RequiredTech: '+str(a)+',\n RequiredTech2: '+str(b)+',\n}')
    base=[mock(0)]+[mock(i,0) for i in range(1,32)]
    adj=validate_graph(base)
    assert prerequisites_met(1,adj,{0}) and not prerequisites_met(1,adj,set())
    assert closure(31,adj)=={0,31}
    cases=[]
    a=base.copy();a[1]=mock(1,2);a[2]=mock(2,1);cases.append(a)
    a=base.copy();a[3]=mock(3,0,0);cases.append(a)
    a=base.copy();a[30],a[31]=a[31],a[30];cases.append(a)
    for t in cases:
        try:validate_graph(t)
        except Blocked:pass
        else:raise AssertionError('A negative graph fixture passed')
    # Negative G3: malformed field type must not be silently patched.
    try: refs_in('RequiredTechID: [2, "oops"],\n')
    except Blocked: pass
    else: raise AssertionError('Malformed type accepted')
    print('SELF_TEST PASS: mapping, closure, cycle, nonunique prerequisite, order, bad range and type')

if __name__=='__main__':
    ap=argparse.ArgumentParser(description=__doc__)
    ap.add_argument('--repo',type=Path,help='Repo root containing assets_r6t007')
    ap.add_argument('--out',type=Path,help='Dedicated NEW output directory outside the baseline')
    ap.add_argument('--self-test',action='store_true')
    args=ap.parse_args()
    try:
        if args.self_test:
            self_test();sys.exit(0)
        require(args.repo is not None and args.out is not None,'Need --repo and --out')
        require(not args.out.exists(),'Output already exists: use a fresh path to prevent overwrites')
        args.out.mkdir(parents=True)
        report=run(args.repo.resolve(),args.out.resolve())
        print(json.dumps(report,ensure_ascii=False,indent=2))
    except (Blocked,UnicodeError,OSError) as e:
        print('BLOCKED:',e,file=sys.stderr)
        sys.exit(2)
