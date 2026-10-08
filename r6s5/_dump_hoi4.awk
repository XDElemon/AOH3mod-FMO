gsub(/\r/,"")
/^\t[a-z_0-9]+ = \{$/{name=$1; gsub(/[ \t{=]/,"",name)}
/\t\tresearch_cost = /{v=$3; gsub(/,/,"",v); print name"  cost="v}
/\t\tstart_year = /{v=$3; gsub(/,/,"",v); print name"  year="v}
/\t\tenable_equipments = \{$/{inq=1}
inq&&/^\t\t\t[a-z_0-9_]+$/{gsub(/[ \t]/,""); printf "    -> %s\n", $0}
/\t\t\},$/{inq=0}
/\t\tleads_to_tech = /{v=$3; print name"  leads="v}