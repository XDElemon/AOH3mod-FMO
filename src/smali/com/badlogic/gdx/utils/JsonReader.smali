.class public Lcom/badlogic/gdx/utils/JsonReader;
.super Ljava/lang/Object;
.source "JsonReader.java"

# interfaces
.implements Lcom/badlogic/gdx/utils/BaseJsonReader;


# static fields
.field private static final _json_actions:[B

.field private static final _json_eof_actions:[B

.field private static final _json_index_offsets:[S

.field private static final _json_indicies:[B

.field private static final _json_key_offsets:[S

.field private static final _json_range_lengths:[B

.field private static final _json_single_lengths:[B

.field private static final _json_trans_actions:[B

.field private static final _json_trans_keys:[C

.field private static final _json_trans_targs:[B

.field static final json_en_array:I = 0x17

.field static final json_en_main:I = 0x1

.field static final json_en_object:I = 0x5

.field static final json_error:I = 0x0

.field static final json_first_final:I = 0x23

.field static final json_start:I = 0x1


# instance fields
.field private current:Lcom/badlogic/gdx/utils/JsonValue;

.field private final elements:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/utils/JsonValue;",
            ">;"
        }
    .end annotation
.end field

.field private final lastChild:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/utils/JsonValue;",
            ">;"
        }
    .end annotation
.end field

.field private root:Lcom/badlogic/gdx/utils/JsonValue;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 857
    invoke-static {}, Lcom/badlogic/gdx/utils/JsonReader;->init__json_actions_0()[B

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/utils/JsonReader;->_json_actions:[B

    .line 858
    invoke-static {}, Lcom/badlogic/gdx/utils/JsonReader;->init__json_key_offsets_0()[S

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/utils/JsonReader;->_json_key_offsets:[S

    .line 859
    invoke-static {}, Lcom/badlogic/gdx/utils/JsonReader;->init__json_trans_keys_0()[C

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/utils/JsonReader;->_json_trans_keys:[C

    .line 860
    invoke-static {}, Lcom/badlogic/gdx/utils/JsonReader;->init__json_single_lengths_0()[B

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/utils/JsonReader;->_json_single_lengths:[B

    .line 861
    invoke-static {}, Lcom/badlogic/gdx/utils/JsonReader;->init__json_range_lengths_0()[B

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/utils/JsonReader;->_json_range_lengths:[B

    .line 862
    invoke-static {}, Lcom/badlogic/gdx/utils/JsonReader;->init__json_index_offsets_0()[S

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/utils/JsonReader;->_json_index_offsets:[S

    .line 863
    invoke-static {}, Lcom/badlogic/gdx/utils/JsonReader;->init__json_indicies_0()[B

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/utils/JsonReader;->_json_indicies:[B

    .line 864
    invoke-static {}, Lcom/badlogic/gdx/utils/JsonReader;->init__json_trans_targs_0()[B

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/utils/JsonReader;->_json_trans_targs:[B

    .line 865
    invoke-static {}, Lcom/badlogic/gdx/utils/JsonReader;->init__json_trans_actions_0()[B

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/utils/JsonReader;->_json_trans_actions:[B

    .line 866
    invoke-static {}, Lcom/badlogic/gdx/utils/JsonReader;->init__json_eof_actions_0()[B

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/utils/JsonReader;->_json_eof_actions:[B

    .line 867
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/JsonReader;->elements:Lcom/badlogic/gdx/utils/Array;

    .line 39
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/JsonReader;->lastChild:Lcom/badlogic/gdx/utils/Array;

    .line 40
    return-void
.end method

.method private addChild(Ljava/lang/String;Lcom/badlogic/gdx/utils/JsonValue;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "child"    # Lcom/badlogic/gdx/utils/JsonValue;

    .line 734
    invoke-virtual {p2, p1}, Lcom/badlogic/gdx/utils/JsonValue;->setName(Ljava/lang/String;)V

    .line 735
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonReader;->current:Lcom/badlogic/gdx/utils/JsonValue;

    if-nez v0, :cond_c

    .line 736
    iput-object p2, p0, Lcom/badlogic/gdx/utils/JsonReader;->current:Lcom/badlogic/gdx/utils/JsonValue;

    .line 737
    iput-object p2, p0, Lcom/badlogic/gdx/utils/JsonReader;->root:Lcom/badlogic/gdx/utils/JsonValue;

    goto :goto_4b

    .line 739
    :cond_c
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonReader;->current:Lcom/badlogic/gdx/utils/JsonValue;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->isArray()Z

    move-result v0

    if-nez v0, :cond_22

    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonReader;->current:Lcom/badlogic/gdx/utils/JsonValue;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->isObject()Z

    move-result v0

    if-eqz v0, :cond_1d

    goto :goto_22

    .line 754
    :cond_1d
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonReader;->current:Lcom/badlogic/gdx/utils/JsonValue;

    iput-object v0, p0, Lcom/badlogic/gdx/utils/JsonReader;->root:Lcom/badlogic/gdx/utils/JsonValue;

    goto :goto_4b

    .line 740
    :cond_22
    :goto_22
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonReader;->current:Lcom/badlogic/gdx/utils/JsonValue;

    iput-object v0, p2, Lcom/badlogic/gdx/utils/JsonValue;->parent:Lcom/badlogic/gdx/utils/JsonValue;

    .line 741
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonReader;->current:Lcom/badlogic/gdx/utils/JsonValue;

    iget v0, v0, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    if-nez v0, :cond_31

    .line 742
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonReader;->current:Lcom/badlogic/gdx/utils/JsonValue;

    iput-object p2, v0, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    goto :goto_3d

    .line 745
    :cond_31
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonReader;->lastChild:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/JsonValue;

    .line 746
    .local v0, "last":Lcom/badlogic/gdx/utils/JsonValue;
    iput-object p2, v0, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    .line 747
    iput-object v0, p2, Lcom/badlogic/gdx/utils/JsonValue;->prev:Lcom/badlogic/gdx/utils/JsonValue;

    .line 749
    .end local v0    # "last":Lcom/badlogic/gdx/utils/JsonValue;
    :goto_3d
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonReader;->lastChild:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 750
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonReader;->current:Lcom/badlogic/gdx/utils/JsonValue;

    .line 751
    .local v0, "current":Lcom/badlogic/gdx/utils/JsonValue;
    iget v1, v0, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    .line 752
    .end local v0    # "current":Lcom/badlogic/gdx/utils/JsonValue;
    nop

    .line 756
    :goto_4b
    return-void
.end method

.method private static init__json_actions_0()[B
    .registers 1

    .line 694
    const/16 v0, 0x1d

    new-array v0, v0, [B

    fill-array-data v0, :array_8

    return-object v0

    :array_8
    .array-data 1
        0x0t
        0x1t
        0x1t
        0x1t
        0x2t
        0x1t
        0x3t
        0x1t
        0x4t
        0x1t
        0x5t
        0x1t
        0x6t
        0x1t
        0x7t
        0x1t
        0x8t
        0x2t
        0x0t
        0x7t
        0x2t
        0x0t
        0x8t
        0x2t
        0x1t
        0x3t
        0x2t
        0x1t
        0x5t
    .end array-data
.end method

.method private static init__json_eof_actions_0()[B
    .registers 1

    .line 730
    const/16 v0, 0x27

    new-array v0, v0, [B

    fill-array-data v0, :array_8

    return-object v0

    :array_8
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method private static init__json_index_offsets_0()[S
    .registers 1

    .line 714
    const/16 v0, 0x27

    new-array v0, v0, [S

    fill-array-data v0, :array_8

    return-object v0

    :array_8
    .array-data 2
        0x0s
        0x0s
        0xbs
        0xes
        0x10s
        0x13s
        0x1cs
        0x22s
        0x28s
        0x2bs
        0x36s
        0x3es
        0x46s
        0x4fs
        0x51s
        0x5as
        0x5ds
        0x60s
        0x69s
        0x6cs
        0x6fs
        0x71s
        0x74s
        0x77s
        0x82s
        0x8as
        0x92s
        0x9ds
        0x9fs
        0xaas
        0xads
        0xb0s
        0xbbs
        0xbes
        0xc1s
        0xc4s
        0xc9s
        0xces
        0xcfs
    .end array-data
.end method

.method private static init__json_indicies_0()[B
    .registers 1

    .line 718
    const/16 v0, 0xd1

    new-array v0, v0, [B

    fill-array-data v0, :array_8

    return-object v0

    :array_8
    .array-data 1
        0x1t
        0x1t
        0x2t
        0x3t
        0x4t
        0x3t
        0x5t
        0x3t
        0x6t
        0x1t
        0x0t
        0x7t
        0x7t
        0x3t
        0x8t
        0x3t
        0x9t
        0x9t
        0x3t
        0xbt
        0xbt
        0xct
        0xdt
        0xet
        0x3t
        0xft
        0xbt
        0xat
        0x10t
        0x10t
        0x11t
        0x12t
        0x10t
        0x3t
        0x13t
        0x13t
        0x14t
        0x15t
        0x13t
        0x3t
        0x16t
        0x16t
        0x3t
        0x15t
        0x15t
        0x18t
        0x3t
        0x19t
        0x3t
        0x1at
        0x3t
        0x1bt
        0x15t
        0x17t
        0x1ct
        0x1dt
        0x1dt
        0x1ct
        0x1et
        0x1ft
        0x20t
        0x3t
        0x21t
        0x22t
        0x22t
        0x21t
        0xdt
        0x23t
        0xft
        0x3t
        0x22t
        0x22t
        0xct
        0x24t
        0x25t
        0x3t
        0xft
        0x22t
        0xat
        0x10t
        0x3t
        0x24t
        0x24t
        0xct
        0x3t
        0x26t
        0x3t
        0x3t
        0x24t
        0xat
        0x27t
        0x27t
        0x3t
        0x28t
        0x28t
        0x3t
        0xdt
        0xdt
        0xct
        0x3t
        0x29t
        0x3t
        0xft
        0xdt
        0xat
        0x2at
        0x2at
        0x3t
        0x2bt
        0x2bt
        0x3t
        0x1ct
        0x3t
        0x2ct
        0x2ct
        0x3t
        0x2dt
        0x2dt
        0x3t
        0x2ft
        0x2ft
        0x30t
        0x31t
        0x32t
        0x3t
        0x33t
        0x34t
        0x35t
        0x2ft
        0x2et
        0x36t
        0x37t
        0x37t
        0x36t
        0x38t
        0x39t
        0x3at
        0x3t
        0x3bt
        0x3ct
        0x3ct
        0x3bt
        0x31t
        0x3dt
        0x34t
        0x3t
        0x3ct
        0x3ct
        0x30t
        0x3et
        0x3ft
        0x3t
        0x33t
        0x34t
        0x35t
        0x3ct
        0x2et
        0x36t
        0x3t
        0x3et
        0x3et
        0x30t
        0x3t
        0x40t
        0x3t
        0x33t
        0x3t
        0x35t
        0x3et
        0x2et
        0x41t
        0x41t
        0x3t
        0x42t
        0x42t
        0x3t
        0x31t
        0x31t
        0x30t
        0x3t
        0x43t
        0x3t
        0x33t
        0x34t
        0x35t
        0x31t
        0x2et
        0x44t
        0x44t
        0x3t
        0x45t
        0x45t
        0x3t
        0x46t
        0x46t
        0x3t
        0x8t
        0x8t
        0x47t
        0x8t
        0x3t
        0x48t
        0x48t
        0x49t
        0x48t
        0x3t
        0x3t
        0x3t
        0x0t
    .end array-data
.end method

.method private static init__json_key_offsets_0()[S
    .registers 1

    .line 698
    const/16 v0, 0x27

    new-array v0, v0, [S

    fill-array-data v0, :array_8

    return-object v0

    :array_8
    .array-data 2
        0x0s
        0x0s
        0xbs
        0xds
        0xes
        0x10s
        0x19s
        0x1fs
        0x25s
        0x27s
        0x32s
        0x39s
        0x40s
        0x49s
        0x4as
        0x53s
        0x55s
        0x57s
        0x60s
        0x62s
        0x64s
        0x65s
        0x67s
        0x69s
        0x74s
        0x7bs
        0x82s
        0x8ds
        0x8es
        0x99s
        0x9bs
        0x9ds
        0xa8s
        0xaas
        0xacs
        0xaes
        0xb3s
        0xb8s
        0xb8s
    .end array-data
.end method

.method private static init__json_range_lengths_0()[B
    .registers 1

    .line 710
    const/16 v0, 0x27

    new-array v0, v0, [B

    fill-array-data v0, :array_8

    return-object v0

    :array_8
    .array-data 1
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
    .end array-data
.end method

.method private static init__json_single_lengths_0()[B
    .registers 1

    .line 706
    const/16 v0, 0x27

    new-array v0, v0, [B

    fill-array-data v0, :array_8

    return-object v0

    :array_8
    .array-data 1
        0x0t
        0x9t
        0x2t
        0x1t
        0x2t
        0x7t
        0x4t
        0x4t
        0x2t
        0x9t
        0x7t
        0x7t
        0x7t
        0x1t
        0x7t
        0x2t
        0x2t
        0x7t
        0x2t
        0x2t
        0x1t
        0x2t
        0x2t
        0x9t
        0x7t
        0x7t
        0x9t
        0x1t
        0x9t
        0x2t
        0x2t
        0x9t
        0x2t
        0x2t
        0x2t
        0x3t
        0x3t
        0x0t
        0x0t
    .end array-data
.end method

.method private static init__json_trans_actions_0()[B
    .registers 1

    .line 726
    const/16 v0, 0x4a

    new-array v0, v0, [B

    fill-array-data v0, :array_8

    return-object v0

    :array_8
    .array-data 1
        0xdt
        0x0t
        0xft
        0x0t
        0x0t
        0x7t
        0x3t
        0xbt
        0x1t
        0xbt
        0x11t
        0x0t
        0x14t
        0x0t
        0x0t
        0x5t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0xbt
        0xdt
        0xft
        0x0t
        0x7t
        0x3t
        0x1t
        0x1t
        0x1t
        0x1t
        0x17t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0xbt
        0xbt
        0x0t
        0xbt
        0xbt
        0xbt
        0xbt
        0xdt
        0x0t
        0xft
        0x0t
        0x0t
        0x7t
        0x9t
        0x3t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1at
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0xbt
        0xbt
        0x0t
        0xbt
        0xbt
        0xbt
        0x1t
        0x0t
        0x0t
    .end array-data
.end method

.method private static init__json_trans_keys_0()[C
    .registers 1

    .line 702
    const/16 v0, 0xb9

    new-array v0, v0, [C

    fill-array-data v0, :array_8

    return-object v0

    :array_8
    .array-data 2
        0xds
        0x20s
        0x22s
        0x2cs
        0x2fs
        0x3as
        0x5bs
        0x5ds
        0x7bs
        0x9s
        0xas
        0x2as
        0x2fs
        0x22s
        0x2as
        0x2fs
        0xds
        0x20s
        0x22s
        0x2cs
        0x2fs
        0x3as
        0x7ds
        0x9s
        0xas
        0xds
        0x20s
        0x2fs
        0x3as
        0x9s
        0xas
        0xds
        0x20s
        0x2fs
        0x3as
        0x9s
        0xas
        0x2as
        0x2fs
        0xds
        0x20s
        0x22s
        0x2cs
        0x2fs
        0x3as
        0x5bs
        0x5ds
        0x7bs
        0x9s
        0xas
        0x9s
        0xas
        0xds
        0x20s
        0x2cs
        0x2fs
        0x7ds
        0x9s
        0xas
        0xds
        0x20s
        0x2cs
        0x2fs
        0x7ds
        0xds
        0x20s
        0x22s
        0x2cs
        0x2fs
        0x3as
        0x7ds
        0x9s
        0xas
        0x22s
        0xds
        0x20s
        0x22s
        0x2cs
        0x2fs
        0x3as
        0x7ds
        0x9s
        0xas
        0x2as
        0x2fs
        0x2as
        0x2fs
        0xds
        0x20s
        0x22s
        0x2cs
        0x2fs
        0x3as
        0x7ds
        0x9s
        0xas
        0x2as
        0x2fs
        0x2as
        0x2fs
        0x22s
        0x2as
        0x2fs
        0x2as
        0x2fs
        0xds
        0x20s
        0x22s
        0x2cs
        0x2fs
        0x3as
        0x5bs
        0x5ds
        0x7bs
        0x9s
        0xas
        0x9s
        0xas
        0xds
        0x20s
        0x2cs
        0x2fs
        0x5ds
        0x9s
        0xas
        0xds
        0x20s
        0x2cs
        0x2fs
        0x5ds
        0xds
        0x20s
        0x22s
        0x2cs
        0x2fs
        0x3as
        0x5bs
        0x5ds
        0x7bs
        0x9s
        0xas
        0x22s
        0xds
        0x20s
        0x22s
        0x2cs
        0x2fs
        0x3as
        0x5bs
        0x5ds
        0x7bs
        0x9s
        0xas
        0x2as
        0x2fs
        0x2as
        0x2fs
        0xds
        0x20s
        0x22s
        0x2cs
        0x2fs
        0x3as
        0x5bs
        0x5ds
        0x7bs
        0x9s
        0xas
        0x2as
        0x2fs
        0x2as
        0x2fs
        0x2as
        0x2fs
        0xds
        0x20s
        0x2fs
        0x9s
        0xas
        0xds
        0x20s
        0x2fs
        0x9s
        0xas
        0x0s
    .end array-data
.end method

.method private static init__json_trans_targs_0()[B
    .registers 1

    .line 722
    const/16 v0, 0x4a

    new-array v0, v0, [B

    fill-array-data v0, :array_8

    return-object v0

    :array_8
    .array-data 1
        0x23t
        0x1t
        0x3t
        0x0t
        0x4t
        0x24t
        0x24t
        0x24t
        0x24t
        0x1t
        0x6t
        0x5t
        0xdt
        0x11t
        0x16t
        0x25t
        0x7t
        0x8t
        0x9t
        0x7t
        0x8t
        0x9t
        0x7t
        0xat
        0x14t
        0x15t
        0xbt
        0xbt
        0xbt
        0xct
        0x11t
        0x13t
        0x25t
        0xbt
        0xct
        0x13t
        0xet
        0x10t
        0xft
        0xet
        0xct
        0x12t
        0x11t
        0xbt
        0x9t
        0x5t
        0x18t
        0x17t
        0x1bt
        0x1ft
        0x22t
        0x19t
        0x26t
        0x19t
        0x19t
        0x1at
        0x1ft
        0x21t
        0x26t
        0x19t
        0x1at
        0x21t
        0x1ct
        0x1et
        0x1dt
        0x1ct
        0x1at
        0x20t
        0x1ft
        0x19t
        0x17t
        0x2t
        0x24t
        0x2t
    .end array-data
.end method

.method private unescape(Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p1, "value"    # Ljava/lang/String;

    .line 801
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 802
    .local v0, "length":I
    new-instance v1, Lcom/badlogic/gdx/utils/StringBuilder;

    add-int/lit8 v2, v0, 0x10

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>(I)V

    .line 803
    .local v1, "buffer":Lcom/badlogic/gdx/utils/StringBuilder;
    const/4 v2, 0x0

    .line 804
    .local v2, "i":I
    :goto_c
    if-ge v2, v0, :cond_73

    .line 805
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .local v3, "i":I
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 806
    .local v2, "c":C
    const/16 v4, 0x5c

    if-eq v2, v4, :cond_1d

    .line 807
    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    move v2, v3

    goto :goto_72

    .line 810
    :cond_1d
    if-ne v3, v0, :cond_21

    .line 811
    move v2, v3

    goto :goto_73

    .line 813
    :cond_21
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .local v4, "i":I
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 814
    const/16 v3, 0x75

    if-ne v2, v3, :cond_42

    .line 815
    add-int/lit8 v3, v4, 0x4

    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x10

    invoke-static {v3, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append([C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 816
    add-int/lit8 v4, v4, 0x4

    move v2, v4

    goto :goto_72

    .line 819
    :cond_42
    sparse-switch v2, :sswitch_data_78

    .line 846
    new-instance v3, Lcom/badlogic/gdx/utils/SerializationException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Illegal escaped character: \\"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 842
    :sswitch_5e
    const/16 v2, 0x9

    .line 843
    goto :goto_6e

    .line 838
    :sswitch_61
    const/16 v2, 0xd

    .line 839
    goto :goto_6e

    .line 834
    :sswitch_64
    const/16 v2, 0xa

    .line 835
    goto :goto_6e

    .line 830
    :sswitch_67
    const/16 v2, 0xc

    .line 831
    goto :goto_6e

    .line 826
    :sswitch_6a
    const/16 v2, 0x8

    .line 827
    goto :goto_6e

    .line 823
    :sswitch_6d
    nop

    .line 849
    :goto_6e
    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    move v2, v4

    .line 852
    .end local v4    # "i":I
    .local v2, "i":I
    :goto_72
    goto :goto_c

    .line 853
    :cond_73
    :goto_73
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :sswitch_data_78
    .sparse-switch
        0x22 -> :sswitch_6d
        0x2f -> :sswitch_6d
        0x5c -> :sswitch_6d
        0x62 -> :sswitch_6a
        0x66 -> :sswitch_67
        0x6e -> :sswitch_64
        0x72 -> :sswitch_61
        0x74 -> :sswitch_5e
    .end sparse-switch
.end method


# virtual methods
.method protected bool(Ljava/lang/String;Z)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .line 797
    new-instance v0, Lcom/badlogic/gdx/utils/JsonValue;

    invoke-direct {v0, p2}, Lcom/badlogic/gdx/utils/JsonValue;-><init>(Z)V

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/utils/JsonReader;->addChild(Ljava/lang/String;Lcom/badlogic/gdx/utils/JsonValue;)V

    .line 798
    return-void
.end method

.method protected number(Ljava/lang/String;DLjava/lang/String;)V
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # D
    .param p4, "stringValue"    # Ljava/lang/String;

    .line 789
    new-instance v0, Lcom/badlogic/gdx/utils/JsonValue;

    invoke-direct {v0, p2, p3, p4}, Lcom/badlogic/gdx/utils/JsonValue;-><init>(DLjava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/utils/JsonReader;->addChild(Ljava/lang/String;Lcom/badlogic/gdx/utils/JsonValue;)V

    .line 790
    return-void
.end method

.method protected number(Ljava/lang/String;JLjava/lang/String;)V
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # J
    .param p4, "stringValue"    # Ljava/lang/String;

    .line 793
    new-instance v0, Lcom/badlogic/gdx/utils/JsonValue;

    invoke-direct {v0, p2, p3, p4}, Lcom/badlogic/gdx/utils/JsonValue;-><init>(JLjava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/utils/JsonReader;->addChild(Ljava/lang/String;Lcom/badlogic/gdx/utils/JsonValue;)V

    .line 794
    return-void
.end method

.method public parse(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/utils/JsonValue;
    .registers 11
    .param p1, "file"    # Lcom/badlogic/gdx/files/FileHandle;

    .line 115
    const-string v0, ""

    .line 116
    .local v0, "charset":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/badlogic/gdx/files/FileHandle;->name()Ljava/lang/String;

    move-result-object v1

    .line 117
    .local v1, "str":Ljava/lang/String;
    const-string v2, "ProvincePoint"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_1b

    const-string v2, "ProvinceNeighboringProvinces"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_19

    goto :goto_1b

    :cond_19
    const/4 v2, 0x0

    goto :goto_1c

    :cond_1b
    :goto_1b
    const/4 v2, 0x1

    .line 119
    .local v2, "isSkip":Z
    :goto_1c
    const-string v5, "UTF-8"

    if-eqz v2, :cond_22

    .line 120
    move-object v0, v5

    goto :goto_65

    .line 122
    :cond_22
    :try_start_22
    sget-object v6, Lteam/rainfall/fontFix/EncodingDetector;->INSTANCE:Lteam/rainfall/fontFix/EncodingDetector;

    invoke-virtual {v6, p1}, Lteam/rainfall/fontFix/EncodingDetector;->detectStringCharset(Lcom/badlogic/gdx/files/FileHandle;)Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    .line 123
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v6
    :try_end_2d
    .catch Ljava/lang/NullPointerException; {:try_start_22 .. :try_end_2d} :catch_64
    .catchall {:try_start_22 .. :try_end_2d} :catchall_5d

    const-string v7, "GB18030"

    const-string v8, "Shift_JIS"

    sparse-switch v6, :sswitch_data_aa

    :cond_34
    goto :goto_4e

    :sswitch_35
    :try_start_35
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_34

    goto :goto_4f

    :sswitch_3c
    const-string v3, "BIG5"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    const/4 v3, 0x1

    goto :goto_4f

    :sswitch_46
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    const/4 v3, 0x2

    goto :goto_4f

    :goto_4e
    const/4 v3, -0x1

    :goto_4f
    packed-switch v3, :pswitch_data_b8

    .line 134
    goto :goto_5b

    .line 131
    :pswitch_53
    move-object v0, v8

    .line 132
    goto :goto_65

    .line 128
    :pswitch_55
    const-string v3, "Big5"
    :try_end_57
    .catch Ljava/lang/NullPointerException; {:try_start_35 .. :try_end_57} :catch_64
    .catchall {:try_start_35 .. :try_end_57} :catchall_5d

    move-object v0, v3

    .line 129
    goto :goto_65

    .line 125
    :pswitch_59
    move-object v0, v7

    .line 126
    goto :goto_65

    .line 134
    :goto_5b
    move-object v0, v5

    goto :goto_65

    .line 139
    :catchall_5d
    move-exception v3

    .line 140
    .local v3, "throwable":Ljava/lang/Throwable;
    const-string v4, "Error while detecting charset"

    invoke-static {v4, v3}, Lteam/rainfall/finality/FinalityLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_66

    .line 138
    .end local v3    # "throwable":Ljava/lang/Throwable;
    :catch_64
    move-exception v3

    .line 141
    :goto_65
    nop

    .line 143
    :goto_66
    if-nez v0, :cond_6a

    .line 144
    const-string v0, "UTF-8"

    .line 147
    :cond_6a
    :try_start_6a
    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/files/FileHandle;->reader(Ljava/lang/String;)Ljava/io/Reader;

    move-result-object v3
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_6e} :catch_8e

    .line 151
    .local v3, "reader":Ljava/io/Reader;
    nop

    .line 153
    :try_start_6f
    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/utils/JsonReader;->parse(Ljava/io/Reader;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v4
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_6f .. :try_end_73} :catch_74

    return-object v4

    .line 155
    :catch_74
    move-exception v4

    .line 156
    .local v4, "ex":Ljava/lang/Exception;
    new-instance v5, Lcom/badlogic/gdx/utils/SerializationException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error parsing file: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v4}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 149
    .end local v3    # "reader":Ljava/io/Reader;
    .end local v4    # "ex":Ljava/lang/Exception;
    :catch_8e
    move-exception v3

    .line 150
    .local v3, "ex":Ljava/lang/Exception;
    new-instance v4, Lcom/badlogic/gdx/utils/SerializationException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error reading file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_a9

    :goto_a8
    throw v4

    :goto_a9
    goto :goto_a8

    :sswitch_data_aa
    .sparse-switch
        -0x534a3669 -> :sswitch_46
        0x1f1b55 -> :sswitch_3c
        0x1f46f70b -> :sswitch_35
    .end sparse-switch

    :pswitch_data_b8
    .packed-switch 0x0
        :pswitch_59
        :pswitch_55
        :pswitch_53
    .end packed-switch
.end method

.method public parse(Ljava/io/InputStream;)Lcom/badlogic/gdx/utils/JsonValue;
    .registers 6
    .param p1, "input"    # Ljava/io/InputStream;

    .line 78
    const/4 v0, 0x0

    .line 80
    .local v0, "charset":Ljava/lang/String;
    :try_start_1
    sget-object v1, Lteam/rainfall/fontFix/EncodingDetector;->INSTANCE:Lteam/rainfall/fontFix/EncodingDetector;

    invoke-virtual {v1, p1}, Lteam/rainfall/fontFix/EncodingDetector;->detectInputStreamCharset(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 81
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1
    :try_end_c
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_c} :catch_46
    .catchall {:try_start_1 .. :try_end_c} :catchall_3f

    const-string v2, "GB18030"

    const-string v3, "Shift_JIS"

    sparse-switch v1, :sswitch_data_62

    :cond_13
    goto :goto_2e

    :sswitch_14
    :try_start_14
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    const/4 v1, 0x0

    goto :goto_2f

    :sswitch_1c
    const-string v1, "BIG5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    const/4 v1, 0x1

    goto :goto_2f

    :sswitch_26
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    const/4 v1, 0x2

    goto :goto_2f

    :goto_2e
    const/4 v1, -0x1

    :goto_2f
    packed-switch v1, :pswitch_data_70

    .line 92
    const-string v1, "UTF-8"

    goto :goto_3d

    .line 89
    :pswitch_35
    move-object v0, v3

    .line 90
    goto :goto_47

    .line 86
    :pswitch_37
    const-string v1, "Big5"
    :try_end_39
    .catch Ljava/lang/NullPointerException; {:try_start_14 .. :try_end_39} :catch_46
    .catchall {:try_start_14 .. :try_end_39} :catchall_3f

    move-object v0, v1

    .line 87
    goto :goto_47

    .line 83
    :pswitch_3b
    move-object v0, v2

    .line 84
    goto :goto_47

    .line 92
    :goto_3d
    move-object v0, v1

    goto :goto_47

    .line 96
    :catchall_3f
    move-exception v1

    .line 97
    .local v1, "throwable":Ljava/lang/Throwable;
    const-string v2, "Error while detecting charset"

    invoke-static {v2, v1}, Lteam/rainfall/finality/FinalityLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_48

    .line 95
    .end local v1    # "throwable":Ljava/lang/Throwable;
    :catch_46
    move-exception v1

    .line 98
    :goto_47
    nop

    .line 100
    :goto_48
    if-nez v0, :cond_4c

    .line 101
    const-string v0, "UTF-8"

    .line 104
    :cond_4c
    :try_start_4c
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p1, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_51} :catch_57

    .line 108
    .local v1, "reader":Ljava/io/Reader;
    nop

    .line 109
    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/JsonReader;->parse(Ljava/io/Reader;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v2

    return-object v2

    .line 106
    .end local v1    # "reader":Ljava/io/Reader;
    :catch_57
    move-exception v1

    .line 107
    .local v1, "ex":Ljava/lang/Exception;
    new-instance v2, Lcom/badlogic/gdx/utils/SerializationException;

    const-string v3, "Error reading stream."

    invoke-direct {v2, v3, v1}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_61

    :goto_60
    throw v2

    :goto_61
    goto :goto_60

    :sswitch_data_62
    .sparse-switch
        -0x534a3669 -> :sswitch_26
        0x1f1b55 -> :sswitch_1c
        0x1f46f70b -> :sswitch_14
    .end sparse-switch

    :pswitch_data_70
    .packed-switch 0x0
        :pswitch_3b
        :pswitch_37
        :pswitch_35
    .end packed-switch
.end method

.method public parse(Ljava/io/Reader;)Lcom/badlogic/gdx/utils/JsonValue;
    .registers 8
    .param p1, "reader"    # Ljava/io/Reader;

    .line 48
    const/16 v0, 0x400

    new-array v0, v0, [C

    .line 49
    .local v0, "data":[C
    const/4 v1, 0x0

    .line 52
    .local v1, "offset":I
    :goto_5
    :try_start_5
    array-length v2, v0

    sub-int/2addr v2, v1

    invoke-virtual {p1, v0, v1, v2}, Ljava/io/Reader;->read([CII)I

    move-result v2
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_b} :catch_2a
    .catchall {:try_start_5 .. :try_end_b} :catchall_28

    .line 53
    .local v2, "length":I
    const/4 v3, -0x1

    const/4 v4, 0x0

    if-ne v2, v3, :cond_19

    .line 54
    nop

    .line 70
    .end local v2    # "length":I
    invoke-static {p1}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 71
    nop

    .line 72
    invoke-virtual {p0, v0, v4, v1}, Lcom/badlogic/gdx/utils/JsonReader;->parse([CII)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v2

    return-object v2

    .line 56
    .restart local v2    # "length":I
    :cond_19
    if-nez v2, :cond_26

    .line 57
    :try_start_1b
    array-length v3, v0

    mul-int/lit8 v3, v3, 0x2

    new-array v3, v3, [C

    .line 58
    .local v3, "newData":[C
    array-length v5, v0

    invoke-static {v0, v4, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_24} :catch_2a
    .catchall {:try_start_1b .. :try_end_24} :catchall_28

    .line 59
    move-object v0, v3

    .line 60
    .end local v3    # "newData":[C
    goto :goto_27

    .line 62
    :cond_26
    add-int/2addr v1, v2

    .line 64
    .end local v2    # "length":I
    :goto_27
    goto :goto_5

    .line 70
    :catchall_28
    move-exception v2

    goto :goto_33

    .line 66
    :catch_2a
    move-exception v2

    .line 67
    .local v2, "ex":Ljava/io/IOException;
    :try_start_2b
    new-instance v3, Lcom/badlogic/gdx/utils/SerializationException;

    const-string v4, "Error reading input."

    invoke-direct {v3, v4, v2}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "data":[C
    .end local v1    # "offset":I
    .end local p1    # "reader":Ljava/io/Reader;
    throw v3
    :try_end_33
    .catchall {:try_start_2b .. :try_end_33} :catchall_28

    .line 70
    .end local v2    # "ex":Ljava/io/IOException;
    .restart local v0    # "data":[C
    .restart local v1    # "offset":I
    .restart local p1    # "reader":Ljava/io/Reader;
    :goto_33
    invoke-static {p1}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 71
    goto :goto_38

    :goto_37
    throw v2

    :goto_38
    goto :goto_37
.end method

.method public parse(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;
    .registers 5
    .param p1, "json"    # Ljava/lang/String;

    .line 43
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 44
    .local v0, "data":[C
    const/4 v1, 0x0

    array-length v2, v0

    invoke-virtual {p0, v0, v1, v2}, Lcom/badlogic/gdx/utils/JsonReader;->parse([CII)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v1

    return-object v1
.end method

.method public parse([CII)Lcom/badlogic/gdx/utils/JsonValue;
    .registers 37
    .param p1, "data"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 161
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v0, p2

    .line 163
    .local v0, "p":I
    move/from16 v3, p3

    .local v3, "eof":I
    move/from16 v4, p3

    .line 164
    .local v4, "pe":I
    const/4 v5, 0x0

    .line 165
    .local v5, "top":I
    const/4 v6, 0x4

    new-array v6, v6, [I

    .line 166
    .local v6, "stack":[I
    const/4 v7, 0x0

    .line 167
    .local v7, "s":I
    new-instance v8, Lcom/badlogic/gdx/utils/Array;

    const/16 v9, 0x8

    invoke-direct {v8, v9}, Lcom/badlogic/gdx/utils/Array;-><init>(I)V

    .line 168
    .local v8, "names":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    const/4 v9, 0x0

    .line 169
    .local v9, "needsUnescape":Z
    const/4 v10, 0x0

    .line 170
    .local v10, "stringIsName":Z
    const/4 v11, 0x0

    .line 171
    .local v11, "stringIsUnquoted":Z
    const/4 v12, 0x0

    .line 172
    .local v12, "parseRuntimeEx":Ljava/lang/RuntimeException;
    const/4 v13, 0x0

    .line 174
    .local v13, "debug":Z
    const/4 v14, 0x1

    .line 175
    .local v14, "cs":I
    const/4 v5, 0x0

    .line 176
    const/4 v15, 0x0

    .line 177
    .local v15, "_trans":I
    const/16 v16, 0x0

    move/from16 v32, v5

    move v5, v0

    move v0, v14

    move v14, v11

    move v11, v10

    move v10, v9

    move v9, v7

    move-object v7, v6

    move/from16 v6, v32

    .line 182
    .local v0, "cs":I
    .local v5, "p":I
    .local v6, "top":I
    .local v7, "stack":[I
    .local v9, "s":I
    .local v10, "needsUnescape":Z
    .local v11, "stringIsName":Z
    .local v14, "stringIsUnquoted":Z
    .local v16, "_goto_targ":I
    :goto_2b
    move/from16 v17, v9

    .end local v9    # "s":I
    .local v17, "s":I
    const-string v9, "null"

    move/from16 v18, v10

    .end local v10    # "needsUnescape":Z
    .local v18, "needsUnescape":Z
    const-string v10, "false"

    move/from16 v19, v11

    .end local v11    # "stringIsName":Z
    .local v19, "stringIsName":Z
    const-string v11, "true"

    move-object/from16 v20, v12

    .end local v12    # "parseRuntimeEx":Ljava/lang/RuntimeException;
    .local v20, "parseRuntimeEx":Ljava/lang/RuntimeException;
    const/4 v12, 0x1

    packed-switch v16, :pswitch_data_6f8

    .line 543
    :pswitch_3d
    move/from16 v26, v0

    move/from16 v22, v3

    move/from16 v28, v6

    move-object/from16 v29, v7

    move-object/from16 v27, v8

    move/from16 v23, v13

    .end local v0    # "cs":I
    .end local v3    # "eof":I
    .end local v6    # "top":I
    .end local v7    # "stack":[I
    .end local v8    # "names":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    .end local v13    # "debug":Z
    .local v22, "eof":I
    .local v23, "debug":Z
    .local v26, "cs":I
    .local v27, "names":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    .local v28, "top":I
    .local v29, "stack":[I
    move/from16 v9, v17

    move/from16 v10, v18

    move/from16 v11, v19

    goto/16 :goto_634

    .line 540
    .end local v22    # "eof":I
    .end local v23    # "debug":Z
    .end local v26    # "cs":I
    .end local v27    # "names":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    .end local v28    # "top":I
    .end local v29    # "stack":[I
    .restart local v0    # "cs":I
    .restart local v3    # "eof":I
    .restart local v6    # "top":I
    .restart local v7    # "stack":[I
    .restart local v8    # "names":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    .restart local v13    # "debug":Z
    :pswitch_51
    move/from16 v28, v6

    move-object/from16 v29, v7

    move/from16 v23, v13

    move v6, v5

    move v5, v0

    goto/16 :goto_4a2

    .line 182
    :pswitch_5b
    move/from16 v28, v6

    move-object/from16 v29, v7

    move/from16 v23, v13

    goto/16 :goto_476

    .line 184
    :pswitch_63
    if-ne v5, v4, :cond_70

    .line 185
    const/16 v16, 0x4

    .line 186
    move/from16 v9, v17

    move/from16 v10, v18

    move/from16 v11, v19

    move-object/from16 v12, v20

    goto :goto_2b

    .line 188
    :cond_70
    if-nez v0, :cond_7d

    .line 189
    const/16 v16, 0x5

    .line 190
    move/from16 v9, v17

    move/from16 v10, v18

    move/from16 v11, v19

    move-object/from16 v12, v20

    goto :goto_2b

    .line 194
    :cond_7d
    :pswitch_7d
    :try_start_7d
    sget-object v21, Lcom/badlogic/gdx/utils/JsonReader;->_json_key_offsets:[S

    aget-short v21, v21, v0

    .line 195
    .local v21, "_keys":I
    sget-object v22, Lcom/badlogic/gdx/utils/JsonReader;->_json_index_offsets:[S

    aget-short v22, v22, v0

    move/from16 v15, v22

    .line 196
    sget-object v22, Lcom/badlogic/gdx/utils/JsonReader;->_json_single_lengths:[B

    aget-byte v22, v22, v0
    :try_end_8b
    .catch Ljava/lang/RuntimeException; {:try_start_7d .. :try_end_8b} :catch_621

    .line 198
    .local v22, "_klen":I
    if-lez v22, :cond_df

    .line 199
    move/from16 v23, v21

    .line 200
    .local v23, "_lower":I
    add-int v24, v21, v22

    add-int/lit8 v24, v24, -0x1

    move/from16 v12, v23

    move/from16 v23, v13

    move/from16 v13, v24

    .line 201
    .local v12, "_lower":I
    .local v13, "_upper":I
    .local v23, "debug":Z
    :goto_99
    if-lt v13, v12, :cond_d6

    .line 202
    sub-int v24, v13, v12

    const/16 v25, 0x1

    shr-int/lit8 v24, v24, 0x1

    add-int v24, v12, v24

    .line 203
    .local v24, "_mid":I
    move/from16 v26, v12

    .end local v12    # "_lower":I
    .local v26, "_lower":I
    :try_start_a5
    aget-char v12, v2, v5

    sget-object v27, Lcom/badlogic/gdx/utils/JsonReader;->_json_trans_keys:[C

    move/from16 v28, v13

    .end local v13    # "_upper":I
    .local v28, "_upper":I
    aget-char v13, v27, v24

    if-ge v12, v13, :cond_b5

    .line 204
    add-int/lit8 v12, v24, -0x1

    move v13, v12

    move/from16 v12, v26

    .end local v28    # "_upper":I
    .local v12, "_upper":I
    goto :goto_c8

    .line 207
    .end local v12    # "_upper":I
    .restart local v28    # "_upper":I
    :cond_b5
    aget-char v12, v2, v5

    sget-object v13, Lcom/badlogic/gdx/utils/JsonReader;->_json_trans_keys:[C

    aget-char v13, v13, v24
    :try_end_bb
    .catch Ljava/lang/RuntimeException; {:try_start_a5 .. :try_end_bb} :catch_c9

    if-gt v12, v13, :cond_c4

    .line 208
    sub-int v12, v24, v21

    add-int/2addr v15, v12

    .line 209
    move/from16 v26, v0

    goto/16 :goto_12e

    .line 211
    :cond_c4
    add-int/lit8 v12, v24, 0x1

    move/from16 v13, v28

    .line 213
    .end local v24    # "_mid":I
    .end local v26    # "_lower":I
    .end local v28    # "_upper":I
    .local v12, "_lower":I
    .restart local v13    # "_upper":I
    :goto_c8
    goto :goto_99

    .line 660
    .end local v0    # "cs":I
    .end local v12    # "_lower":I
    .end local v13    # "_upper":I
    .end local v15    # "_trans":I
    .end local v16    # "_goto_targ":I
    .end local v21    # "_keys":I
    .end local v22    # "_klen":I
    :catch_c9
    move-exception v0

    move/from16 v22, v3

    move-object/from16 v27, v8

    move/from16 v9, v17

    move/from16 v10, v18

    move/from16 v11, v19

    goto/16 :goto_632

    .line 214
    .restart local v0    # "cs":I
    .restart local v12    # "_lower":I
    .restart local v13    # "_upper":I
    .restart local v15    # "_trans":I
    .restart local v16    # "_goto_targ":I
    .restart local v21    # "_keys":I
    .restart local v22    # "_klen":I
    :cond_d6
    move/from16 v26, v12

    move/from16 v28, v13

    .end local v12    # "_lower":I
    .end local v13    # "_upper":I
    .restart local v26    # "_lower":I
    .restart local v28    # "_upper":I
    add-int v21, v21, v22

    .line 215
    add-int v15, v15, v22

    goto :goto_e1

    .line 198
    .end local v23    # "debug":Z
    .end local v26    # "_lower":I
    .end local v28    # "_upper":I
    .local v13, "debug":Z
    :cond_df
    move/from16 v23, v13

    .line 217
    .end local v13    # "debug":Z
    .restart local v23    # "debug":Z
    :goto_e1
    :try_start_e1
    sget-object v12, Lcom/badlogic/gdx/utils/JsonReader;->_json_range_lengths:[B

    aget-byte v12, v12, v0
    :try_end_e5
    .catch Ljava/lang/RuntimeException; {:try_start_e1 .. :try_end_e5} :catch_611

    move/from16 v22, v12

    .line 218
    if-lez v22, :cond_12c

    .line 219
    move/from16 v12, v21

    .line 220
    .restart local v12    # "_lower":I
    shl-int/lit8 v13, v22, 0x1

    add-int v13, v21, v13

    add-int/lit8 v13, v13, -0x2

    .line 221
    .local v13, "_upper":I
    :goto_f1
    if-lt v13, v12, :cond_125

    .line 222
    sub-int v24, v13, v12

    const/16 v25, 0x1

    shr-int/lit8 v24, v24, 0x1

    and-int/lit8 v24, v24, -0x2

    add-int v24, v12, v24

    .line 223
    .restart local v24    # "_mid":I
    move/from16 v26, v0

    .end local v0    # "cs":I
    .local v26, "cs":I
    :try_start_ff
    aget-char v0, v2, v5

    sget-object v27, Lcom/badlogic/gdx/utils/JsonReader;->_json_trans_keys:[C

    move/from16 v28, v12

    .end local v12    # "_lower":I
    .local v28, "_lower":I
    aget-char v12, v27, v24

    if-ge v0, v12, :cond_10f

    .line 224
    add-int/lit8 v0, v24, -0x2

    move v13, v0

    move/from16 v12, v28

    .end local v13    # "_upper":I
    .local v0, "_upper":I
    goto :goto_122

    .line 227
    .end local v0    # "_upper":I
    .restart local v13    # "_upper":I
    :cond_10f
    aget-char v0, v2, v5

    sget-object v12, Lcom/badlogic/gdx/utils/JsonReader;->_json_trans_keys:[C

    add-int/lit8 v27, v24, 0x1

    aget-char v12, v12, v27
    :try_end_117
    .catch Ljava/lang/RuntimeException; {:try_start_ff .. :try_end_117} :catch_c9

    if-gt v0, v12, :cond_11f

    .line 228
    sub-int v0, v24, v21

    const/4 v12, 0x1

    shr-int/2addr v0, v12

    add-int/2addr v15, v0

    .line 229
    goto :goto_12e

    .line 231
    :cond_11f
    add-int/lit8 v0, v24, 0x2

    move v12, v0

    .line 233
    .end local v24    # "_mid":I
    .end local v28    # "_lower":I
    .restart local v12    # "_lower":I
    :goto_122
    move/from16 v0, v26

    goto :goto_f1

    .line 234
    .end local v26    # "cs":I
    .local v0, "cs":I
    :cond_125
    move/from16 v26, v0

    move/from16 v28, v12

    .end local v0    # "cs":I
    .end local v12    # "_lower":I
    .restart local v26    # "cs":I
    .restart local v28    # "_lower":I
    add-int v15, v15, v22

    goto :goto_12e

    .line 218
    .end local v13    # "_upper":I
    .end local v26    # "cs":I
    .end local v28    # "_lower":I
    .restart local v0    # "cs":I
    :cond_12c
    move/from16 v26, v0

    .line 237
    .end local v0    # "cs":I
    .restart local v26    # "cs":I
    :goto_12e
    :try_start_12e
    sget-object v0, Lcom/badlogic/gdx/utils/JsonReader;->_json_indicies:[B

    aget-byte v0, v0, v15

    move v15, v0

    .line 238
    sget-object v0, Lcom/badlogic/gdx/utils/JsonReader;->_json_trans_targs:[B

    aget-byte v0, v0, v15

    move v12, v0

    .line 239
    .end local v26    # "cs":I
    .local v12, "cs":I
    sget-object v0, Lcom/badlogic/gdx/utils/JsonReader;->_json_trans_actions:[B

    aget-byte v0, v0, v15
    :try_end_13c
    .catch Ljava/lang/RuntimeException; {:try_start_12e .. :try_end_13c} :catch_611

    if-eqz v0, :cond_46c

    .line 240
    :try_start_13e
    sget-object v0, Lcom/badlogic/gdx/utils/JsonReader;->_json_trans_actions:[B

    aget-byte v0, v0, v15

    .line 241
    .local v0, "_acts":I
    sget-object v13, Lcom/badlogic/gdx/utils/JsonReader;->_json_actions:[B

    add-int/lit8 v24, v0, 0x1

    .end local v0    # "_acts":I
    .local v24, "_acts":I
    aget-byte v0, v13, v0
    :try_end_148
    .catch Ljava/lang/RuntimeException; {:try_start_13e .. :try_end_148} :catch_45b

    move/from16 v13, v17

    .line 242
    .end local v17    # "s":I
    .local v0, "_nacts":I
    .local v13, "s":I
    :goto_14a
    add-int/lit8 v17, v0, -0x1

    .end local v0    # "_nacts":I
    .local v17, "_nacts":I
    if-lez v0, :cond_44c

    .line 243
    :try_start_14e
    sget-object v0, Lcom/badlogic/gdx/utils/JsonReader;->_json_actions:[B

    add-int/lit8 v26, v24, 0x1

    .end local v24    # "_acts":I
    .local v26, "_acts":I
    aget-byte v0, v0, v24
    :try_end_154
    .catch Ljava/lang/RuntimeException; {:try_start_14e .. :try_end_154} :catch_439

    move/from16 v27, v15

    .end local v15    # "_trans":I
    .local v27, "_trans":I
    const/16 v15, 0x2f

    packed-switch v0, :pswitch_data_706

    .line 522
    move/from16 v28, v6

    move-object/from16 v29, v7

    move/from16 v31, v12

    move/from16 v30, v13

    .end local v6    # "top":I
    .end local v7    # "stack":[I
    .end local v12    # "cs":I
    .end local v13    # "s":I
    .local v28, "top":I
    .restart local v29    # "stack":[I
    .local v30, "s":I
    .local v31, "cs":I
    move/from16 v0, v17

    move/from16 v24, v26

    move/from16 v15, v27

    goto :goto_14a

    .line 503
    .end local v28    # "top":I
    .end local v29    # "stack":[I
    .end local v30    # "s":I
    .end local v31    # "cs":I
    .restart local v6    # "top":I
    .restart local v7    # "stack":[I
    .restart local v12    # "cs":I
    .restart local v13    # "s":I
    :pswitch_16a
    add-int/lit8 v5, v5, 0x1

    move v13, v5

    .line 504
    const/4 v0, 0x0

    .end local v18    # "needsUnescape":Z
    .local v0, "needsUnescape":Z
    move v15, v0

    .line 507
    .end local v0    # "needsUnescape":Z
    .local v15, "needsUnescape":Z
    :cond_16f
    :try_start_16f
    aget-char v0, v2, v5
    :try_end_171
    .catch Ljava/lang/RuntimeException; {:try_start_16f .. :try_end_171} :catch_18d

    sparse-switch v0, :sswitch_data_71c

    .line 512
    goto :goto_17c

    .line 515
    :sswitch_175
    const/4 v15, 0x1

    .line 516
    add-int/lit8 v5, v5, 0x1

    goto :goto_17c

    .line 509
    :sswitch_179
    move/from16 v18, v15

    goto :goto_184

    .line 520
    :goto_17c
    const/16 v18, 0x1

    add-int/lit8 v5, v5, 0x1

    if-ne v5, v3, :cond_16f

    move/from16 v18, v15

    .line 521
    .end local v15    # "needsUnescape":Z
    .restart local v18    # "needsUnescape":Z
    :goto_184
    add-int/lit8 v5, v5, -0x1

    .line 522
    move/from16 v0, v17

    move/from16 v24, v26

    move/from16 v15, v27

    goto :goto_14a

    .line 660
    .end local v12    # "cs":I
    .end local v16    # "_goto_targ":I
    .end local v17    # "_nacts":I
    .end local v18    # "needsUnescape":Z
    .end local v21    # "_keys":I
    .end local v22    # "_klen":I
    .end local v26    # "_acts":I
    .end local v27    # "_trans":I
    .restart local v15    # "needsUnescape":Z
    :catch_18d
    move-exception v0

    move/from16 v22, v3

    move-object/from16 v27, v8

    move v9, v13

    move v10, v15

    move/from16 v11, v19

    goto/16 :goto_632

    .line 424
    .end local v15    # "needsUnescape":Z
    .restart local v12    # "cs":I
    .restart local v16    # "_goto_targ":I
    .restart local v17    # "_nacts":I
    .restart local v18    # "needsUnescape":Z
    .restart local v21    # "_keys":I
    .restart local v22    # "_klen":I
    .restart local v26    # "_acts":I
    .restart local v27    # "_trans":I
    :pswitch_198
    move v13, v5

    .line 425
    const/4 v0, 0x0

    .line 426
    .end local v18    # "needsUnescape":Z
    .restart local v0    # "needsUnescape":Z
    const/4 v14, 0x1

    .line 428
    if-eqz v19, :cond_1c7

    move/from16 v18, v0

    .line 430
    .end local v0    # "needsUnescape":Z
    .restart local v18    # "needsUnescape":Z
    :goto_19f
    :try_start_19f
    aget-char v0, v2, v5

    sparse-switch v0, :sswitch_data_726

    goto :goto_1bd

    .line 432
    :sswitch_1a5
    const/16 v18, 0x1

    .line 433
    goto :goto_1bd

    .line 436
    :sswitch_1a8
    add-int/lit8 v0, v5, 0x1

    if-ne v0, v3, :cond_1ad

    .line 437
    goto :goto_1bd

    .line 439
    :cond_1ad
    add-int/lit8 v0, v5, 0x1

    aget-char v0, v2, v0
    :try_end_1b1
    .catch Ljava/lang/RuntimeException; {:try_start_19f .. :try_end_1b1} :catch_320

    .line 440
    .local v0, "c":C
    if-ne v0, v15, :cond_1b4

    .line 441
    goto :goto_1ba

    .line 443
    :cond_1b4
    const/16 v15, 0x2a

    if-ne v0, v15, :cond_1bd

    .line 444
    goto :goto_1ba

    .line 451
    .end local v0    # "c":C
    :sswitch_1b9
    nop

    .line 493
    :goto_1ba
    move/from16 v29, v13

    goto :goto_1f6

    .line 457
    :cond_1bd
    :goto_1bd
    add-int/lit8 v5, v5, 0x1

    if-ne v5, v3, :cond_1c4

    move/from16 v29, v13

    goto :goto_1f6

    :cond_1c4
    const/16 v15, 0x2f

    goto :goto_19f

    .line 428
    .end local v18    # "needsUnescape":Z
    .local v0, "needsUnescape":Z
    :cond_1c7
    move v15, v0

    .line 461
    .end local v0    # "needsUnescape":Z
    .restart local v15    # "needsUnescape":Z
    :goto_1c8
    :try_start_1c8
    aget-char v0, v2, v5

    sparse-switch v0, :sswitch_data_73c

    move/from16 v29, v13

    .end local v13    # "s":I
    .local v29, "s":I
    goto :goto_1f0

    .line 463
    .end local v29    # "s":I
    .restart local v13    # "s":I
    :sswitch_1d0
    const/4 v15, 0x1

    .line 464
    move/from16 v29, v13

    goto :goto_1f0

    .line 467
    :sswitch_1d4
    add-int/lit8 v0, v5, 0x1

    if-ne v0, v3, :cond_1db

    .line 468
    move/from16 v29, v13

    goto :goto_1f0

    .line 470
    :cond_1db
    add-int/lit8 v0, v5, 0x1

    aget-char v0, v2, v0
    :try_end_1df
    .catch Ljava/lang/RuntimeException; {:try_start_1c8 .. :try_end_1df} :catch_21d

    .line 471
    .local v0, "c":C
    move/from16 v29, v13

    const/16 v13, 0x2f

    .end local v13    # "s":I
    .restart local v29    # "s":I
    if-ne v0, v13, :cond_1e6

    .line 472
    goto :goto_1ed

    .line 474
    :cond_1e6
    const/16 v13, 0x2a

    if-ne v0, v13, :cond_1f0

    .line 475
    goto :goto_1ed

    .line 484
    .end local v0    # "c":C
    .end local v29    # "s":I
    .restart local v13    # "s":I
    :sswitch_1eb
    move/from16 v29, v13

    .line 493
    .end local v13    # "s":I
    .restart local v29    # "s":I
    :goto_1ed
    move/from16 v18, v15

    goto :goto_1f6

    .line 490
    :cond_1f0
    :goto_1f0
    add-int/lit8 v5, v5, 0x1

    if-ne v5, v3, :cond_21a

    move/from16 v18, v15

    .line 493
    .end local v15    # "needsUnescape":Z
    .restart local v18    # "needsUnescape":Z
    :goto_1f6
    add-int/lit8 v5, v5, -0x1

    .line 494
    :goto_1f8
    :try_start_1f8
    aget-char v0, v2, v5

    invoke-static {v0}, Ljava/lang/Character;->isSpace(C)Z

    move-result v0
    :try_end_1fe
    .catch Ljava/lang/RuntimeException; {:try_start_1f8 .. :try_end_1fe} :catch_20d

    if-eqz v0, :cond_203

    .line 495
    add-int/lit8 v5, v5, -0x1

    goto :goto_1f8

    .line 494
    :cond_203
    move/from16 v0, v17

    move/from16 v24, v26

    move/from16 v15, v27

    move/from16 v13, v29

    goto/16 :goto_14a

    .line 660
    .end local v12    # "cs":I
    .end local v16    # "_goto_targ":I
    .end local v17    # "_nacts":I
    .end local v21    # "_keys":I
    .end local v22    # "_klen":I
    .end local v26    # "_acts":I
    .end local v27    # "_trans":I
    :catch_20d
    move-exception v0

    move/from16 v22, v3

    move-object/from16 v27, v8

    move/from16 v10, v18

    move/from16 v11, v19

    move/from16 v9, v29

    goto/16 :goto_632

    .line 490
    .end local v18    # "needsUnescape":Z
    .restart local v12    # "cs":I
    .restart local v15    # "needsUnescape":Z
    .restart local v16    # "_goto_targ":I
    .restart local v17    # "_nacts":I
    .restart local v21    # "_keys":I
    .restart local v22    # "_klen":I
    .restart local v26    # "_acts":I
    .restart local v27    # "_trans":I
    :cond_21a
    move/from16 v13, v29

    goto :goto_1c8

    .line 660
    .end local v12    # "cs":I
    .end local v16    # "_goto_targ":I
    .end local v17    # "_nacts":I
    .end local v21    # "_keys":I
    .end local v22    # "_klen":I
    .end local v26    # "_acts":I
    .end local v27    # "_trans":I
    .end local v29    # "s":I
    .restart local v13    # "s":I
    :catch_21d
    move-exception v0

    move/from16 v29, v13

    move/from16 v22, v3

    move-object/from16 v27, v8

    move v10, v15

    move/from16 v11, v19

    move/from16 v9, v29

    .end local v13    # "s":I
    .restart local v29    # "s":I
    goto/16 :goto_632

    .line 401
    .end local v15    # "needsUnescape":Z
    .end local v29    # "s":I
    .restart local v12    # "cs":I
    .restart local v13    # "s":I
    .restart local v16    # "_goto_targ":I
    .restart local v17    # "_nacts":I
    .restart local v18    # "needsUnescape":Z
    .restart local v21    # "_keys":I
    .restart local v22    # "_klen":I
    .restart local v26    # "_acts":I
    .restart local v27    # "_trans":I
    :pswitch_22b
    add-int/lit8 v0, v5, -0x1

    .line 402
    .local v0, "start":I
    add-int/lit8 v15, v5, 0x1

    .end local v5    # "p":I
    .local v15, "p":I
    :try_start_22f
    aget-char v5, v2, v5
    :try_end_231
    .catch Ljava/lang/RuntimeException; {:try_start_22f .. :try_end_231} :catch_273

    move/from16 v29, v0

    const/16 v0, 0x2f

    .end local v0    # "start":I
    .local v29, "start":I
    if-ne v5, v0, :cond_24d

    move v5, v15

    .line 403
    .end local v15    # "p":I
    .restart local v5    # "p":I
    :goto_238
    if-eq v5, v3, :cond_243

    :try_start_23a
    aget-char v0, v2, v5

    const/16 v15, 0xa

    if-eq v0, v15, :cond_243

    .line 404
    add-int/lit8 v5, v5, 0x1

    goto :goto_238

    .line 406
    :cond_243
    add-int/lit8 v5, v5, -0x1

    move/from16 v0, v17

    move/from16 v24, v26

    move/from16 v15, v27

    goto/16 :goto_14a

    .line 402
    .end local v5    # "p":I
    .restart local v15    # "p":I
    :cond_24d
    move v5, v15

    .line 409
    .end local v15    # "p":I
    .restart local v5    # "p":I
    :goto_24e
    add-int/lit8 v0, v5, 0x1

    if-ge v0, v3, :cond_25c

    aget-char v0, v2, v5

    const/16 v15, 0x2a

    if-ne v0, v15, :cond_259

    goto :goto_25e

    :cond_259
    const/16 v15, 0x2f

    goto :goto_266

    :cond_25c
    const/16 v15, 0x2a

    :goto_25e
    add-int/lit8 v0, v5, 0x1

    aget-char v0, v2, v0

    const/16 v15, 0x2f

    if-eq v0, v15, :cond_269

    .line 410
    :goto_266
    add-int/lit8 v5, v5, 0x1

    goto :goto_24e

    .line 412
    :cond_269
    add-int/lit8 v5, v5, 0x1

    .line 415
    move/from16 v0, v17

    move/from16 v24, v26

    move/from16 v15, v27

    goto/16 :goto_14a

    .line 660
    .end local v5    # "p":I
    .end local v12    # "cs":I
    .end local v16    # "_goto_targ":I
    .end local v17    # "_nacts":I
    .end local v21    # "_keys":I
    .end local v22    # "_klen":I
    .end local v26    # "_acts":I
    .end local v27    # "_trans":I
    .end local v29    # "start":I
    .restart local v15    # "p":I
    :catch_273
    move-exception v0

    move/from16 v22, v3

    move-object/from16 v27, v8

    move v9, v13

    move v5, v15

    move/from16 v10, v18

    move/from16 v11, v19

    goto/16 :goto_632

    .line 395
    .end local v15    # "p":I
    .restart local v5    # "p":I
    .restart local v12    # "cs":I
    .restart local v16    # "_goto_targ":I
    .restart local v17    # "_nacts":I
    .restart local v21    # "_keys":I
    .restart local v22    # "_klen":I
    .restart local v26    # "_acts":I
    .restart local v27    # "_trans":I
    :pswitch_280
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/utils/JsonReader;->pop()V

    .line 396
    add-int/lit8 v6, v6, -0x1

    aget v0, v7, v6

    .line 397
    .end local v12    # "cs":I
    .local v0, "cs":I
    const/16 v16, 0x2

    .line 398
    move v9, v13

    move/from16 v10, v18

    move/from16 v11, v19

    move-object/from16 v12, v20

    move/from16 v13, v23

    move/from16 v15, v27

    goto/16 :goto_2b

    .line 376
    .end local v0    # "cs":I
    .restart local v12    # "cs":I
    :pswitch_296
    iget v0, v8, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lez v0, :cond_2a1

    invoke-virtual {v8}, Lcom/badlogic/gdx/utils/Array;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_2a2

    :cond_2a1
    const/4 v0, 0x0

    .line 380
    .local v0, "name2":Ljava/lang/String;
    :goto_2a2
    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/JsonReader;->startArray(Ljava/lang/String;)V

    .line 381
    array-length v9, v7

    if-ne v6, v9, :cond_2b3

    .line 382
    array-length v9, v7

    mul-int/lit8 v9, v9, 0x2

    new-array v9, v9, [I

    .line 383
    .local v9, "newStack":[I
    array-length v10, v7

    const/4 v11, 0x0

    invoke-static {v7, v11, v9, v11, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_2b2
    .catch Ljava/lang/RuntimeException; {:try_start_23a .. :try_end_2b2} :catch_320

    .line 384
    move-object v7, v9

    .line 386
    .end local v9    # "newStack":[I
    :cond_2b3
    add-int/lit8 v9, v6, 0x1

    .end local v6    # "top":I
    .local v9, "top":I
    :try_start_2b5
    aput v12, v7, v6
    :try_end_2b7
    .catch Ljava/lang/RuntimeException; {:try_start_2b5 .. :try_end_2b7} :catch_313

    .line 387
    const/16 v6, 0x17

    .line 388
    .end local v12    # "cs":I
    .local v6, "cs":I
    const/16 v16, 0x2

    .line 389
    move v0, v6

    move v6, v9

    move v9, v13

    move/from16 v10, v18

    move/from16 v11, v19

    move-object/from16 v12, v20

    move/from16 v13, v23

    move/from16 v15, v27

    goto/16 :goto_2b

    .line 370
    .end local v0    # "name2":Ljava/lang/String;
    .end local v9    # "top":I
    .local v6, "top":I
    .restart local v12    # "cs":I
    :pswitch_2ca
    :try_start_2ca
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/utils/JsonReader;->pop()V

    .line 371
    add-int/lit8 v6, v6, -0x1

    aget v0, v7, v6

    .line 372
    .end local v12    # "cs":I
    .local v0, "cs":I
    const/16 v16, 0x2

    .line 373
    move v9, v13

    move/from16 v10, v18

    move/from16 v11, v19

    move-object/from16 v12, v20

    move/from16 v13, v23

    move/from16 v15, v27

    goto/16 :goto_2b

    .line 351
    .end local v0    # "cs":I
    .restart local v12    # "cs":I
    :pswitch_2e0
    iget v0, v8, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lez v0, :cond_2eb

    invoke-virtual {v8}, Lcom/badlogic/gdx/utils/Array;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_2ec

    :cond_2eb
    const/4 v0, 0x0

    .line 355
    .local v0, "name2":Ljava/lang/String;
    :goto_2ec
    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/JsonReader;->startObject(Ljava/lang/String;)V

    .line 356
    array-length v9, v7

    if-ne v6, v9, :cond_2fd

    .line 357
    array-length v9, v7

    mul-int/lit8 v9, v9, 0x2

    new-array v9, v9, [I

    .line 358
    .local v9, "newStack":[I
    array-length v10, v7

    const/4 v11, 0x0

    invoke-static {v7, v11, v9, v11, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_2fc
    .catch Ljava/lang/RuntimeException; {:try_start_2ca .. :try_end_2fc} :catch_320

    .line 359
    move-object v7, v9

    .line 361
    .end local v9    # "newStack":[I
    :cond_2fd
    add-int/lit8 v9, v6, 0x1

    .end local v6    # "top":I
    .local v9, "top":I
    :try_start_2ff
    aput v12, v7, v6
    :try_end_301
    .catch Ljava/lang/RuntimeException; {:try_start_2ff .. :try_end_301} :catch_313

    .line 362
    const/4 v6, 0x5

    .line 363
    .end local v12    # "cs":I
    .local v6, "cs":I
    const/16 v16, 0x2

    .line 364
    move v0, v6

    move v6, v9

    move v9, v13

    move/from16 v10, v18

    move/from16 v11, v19

    move-object/from16 v12, v20

    move/from16 v13, v23

    move/from16 v15, v27

    goto/16 :goto_2b

    .line 660
    .end local v0    # "name2":Ljava/lang/String;
    .end local v6    # "cs":I
    .end local v16    # "_goto_targ":I
    .end local v17    # "_nacts":I
    .end local v21    # "_keys":I
    .end local v22    # "_klen":I
    .end local v26    # "_acts":I
    .end local v27    # "_trans":I
    :catch_313
    move-exception v0

    move/from16 v22, v3

    move-object/from16 v27, v8

    move v6, v9

    move v9, v13

    move/from16 v10, v18

    move/from16 v11, v19

    goto/16 :goto_632

    .end local v9    # "top":I
    .local v6, "top":I
    :catch_320
    move-exception v0

    move/from16 v22, v3

    move-object/from16 v27, v8

    move v9, v13

    move/from16 v10, v18

    move/from16 v11, v19

    goto/16 :goto_632

    .line 249
    .restart local v12    # "cs":I
    .restart local v16    # "_goto_targ":I
    .restart local v17    # "_nacts":I
    .restart local v21    # "_keys":I
    .restart local v22    # "_klen":I
    .restart local v26    # "_acts":I
    .restart local v27    # "_trans":I
    :pswitch_32c
    :try_start_32c
    new-instance v0, Ljava/lang/String;

    sub-int v15, v5, v13

    invoke-direct {v0, v2, v13, v15}, Ljava/lang/String;-><init>([CII)V
    :try_end_333
    .catch Ljava/lang/RuntimeException; {:try_start_32c .. :try_end_333} :catch_439

    .line 250
    .local v0, "value":Ljava/lang/String;
    if-eqz v18, :cond_33b

    .line 251
    :try_start_335
    invoke-direct {v1, v0}, Lcom/badlogic/gdx/utils/JsonReader;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object v0, v15

    goto :goto_33c

    .line 250
    :cond_33b
    move-object v15, v0

    .line 254
    .end local v0    # "value":Ljava/lang/String;
    .local v15, "value":Ljava/lang/String;
    :goto_33c
    if-eqz v19, :cond_34d

    .line 255
    const/16 v19, 0x0

    .line 259
    invoke-virtual {v8, v15}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V
    :try_end_343
    .catch Ljava/lang/RuntimeException; {:try_start_335 .. :try_end_343} :catch_320

    move/from16 v28, v6

    move-object/from16 v29, v7

    move/from16 v31, v12

    move/from16 v30, v13

    goto/16 :goto_406

    .line 262
    :cond_34d
    :try_start_34d
    iget v0, v8, Lcom/badlogic/gdx/utils/Array;->size:I
    :try_end_34f
    .catch Ljava/lang/RuntimeException; {:try_start_34d .. :try_end_34f} :catch_439

    if-lez v0, :cond_358

    :try_start_351
    invoke-virtual {v8}, Lcom/badlogic/gdx/utils/Array;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_357
    .catch Ljava/lang/RuntimeException; {:try_start_351 .. :try_end_357} :catch_320

    goto :goto_359

    :cond_358
    const/4 v0, 0x0

    :goto_359
    move-object/from16 v24, v0

    .line 264
    .local v24, "name":Ljava/lang/String;
    if-eqz v14, :cond_3f9

    .line 265
    :try_start_35d
    invoke-virtual {v15, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_361
    .catch Ljava/lang/RuntimeException; {:try_start_35d .. :try_end_361} :catch_439

    if-eqz v0, :cond_383

    .line 269
    move/from16 v28, v6

    move-object/from16 v29, v7

    move-object/from16 v6, v24

    const/4 v7, 0x1

    .end local v7    # "stack":[I
    .end local v24    # "name":Ljava/lang/String;
    .local v6, "name":Ljava/lang/String;
    .restart local v28    # "top":I
    .local v29, "stack":[I
    :try_start_36a
    invoke-virtual {v1, v6, v7}, Lcom/badlogic/gdx/utils/JsonReader;->bool(Ljava/lang/String;Z)V
    :try_end_36d
    .catch Ljava/lang/RuntimeException; {:try_start_36a .. :try_end_36d} :catch_373

    .line 270
    move/from16 v31, v12

    move/from16 v30, v13

    goto/16 :goto_406

    .line 660
    .end local v6    # "name":Ljava/lang/String;
    .end local v12    # "cs":I
    .end local v15    # "value":Ljava/lang/String;
    .end local v16    # "_goto_targ":I
    .end local v17    # "_nacts":I
    .end local v21    # "_keys":I
    .end local v22    # "_klen":I
    .end local v26    # "_acts":I
    .end local v27    # "_trans":I
    :catch_373
    move-exception v0

    move/from16 v22, v3

    move-object/from16 v27, v8

    move v9, v13

    move/from16 v10, v18

    move/from16 v11, v19

    move/from16 v6, v28

    move-object/from16 v7, v29

    goto/16 :goto_632

    .line 272
    .end local v28    # "top":I
    .end local v29    # "stack":[I
    .local v6, "top":I
    .restart local v7    # "stack":[I
    .restart local v12    # "cs":I
    .restart local v15    # "value":Ljava/lang/String;
    .restart local v16    # "_goto_targ":I
    .restart local v17    # "_nacts":I
    .restart local v21    # "_keys":I
    .restart local v22    # "_klen":I
    .restart local v24    # "name":Ljava/lang/String;
    .restart local v26    # "_acts":I
    .restart local v27    # "_trans":I
    :cond_383
    move/from16 v28, v6

    move-object/from16 v29, v7

    move-object/from16 v6, v24

    .end local v7    # "stack":[I
    .end local v24    # "name":Ljava/lang/String;
    .local v6, "name":Ljava/lang/String;
    .restart local v28    # "top":I
    .restart local v29    # "stack":[I
    :try_start_389
    invoke-virtual {v15, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_38d
    .catch Ljava/lang/RuntimeException; {:try_start_389 .. :try_end_38d} :catch_3e6

    if-eqz v0, :cond_399

    .line 276
    const/4 v7, 0x0

    :try_start_390
    invoke-virtual {v1, v6, v7}, Lcom/badlogic/gdx/utils/JsonReader;->bool(Ljava/lang/String;Z)V
    :try_end_393
    .catch Ljava/lang/RuntimeException; {:try_start_390 .. :try_end_393} :catch_373

    .line 277
    move/from16 v31, v12

    move/from16 v30, v13

    goto/16 :goto_406

    .line 279
    :cond_399
    :try_start_399
    invoke-virtual {v15, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_39d
    .catch Ljava/lang/RuntimeException; {:try_start_399 .. :try_end_39d} :catch_3e6

    if-eqz v0, :cond_3a9

    .line 280
    const/4 v7, 0x0

    :try_start_3a0
    invoke-virtual {v1, v6, v7}, Lcom/badlogic/gdx/utils/JsonReader;->string(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    move/from16 v31, v12

    move/from16 v30, v13

    goto/16 :goto_406

    .line 283
    :cond_3a9
    const/4 v0, 0x0

    .line 284
    .local v0, "couldBeDouble":Z
    const/4 v7, 0x1

    .line 286
    .local v7, "couldBeLong":Z
    move/from16 v24, v13

    move/from16 v32, v24

    move/from16 v24, v0

    move/from16 v0, v32

    .local v0, "i":I
    .local v24, "couldBeDouble":Z
    :goto_3b3
    if-ge v0, v5, :cond_3c6

    .line 287
    aget-char v30, v2, v0
    :try_end_3b7
    .catch Ljava/lang/RuntimeException; {:try_start_3a0 .. :try_end_3b7} :catch_373

    sparse-switch v30, :sswitch_data_75a

    .line 310
    const/16 v24, 0x0

    .line 311
    const/4 v7, 0x0

    .line 312
    goto :goto_3c6

    .line 305
    :sswitch_3be
    const/16 v24, 0x1

    .line 306
    const/4 v7, 0x0

    .line 307
    goto :goto_3c3

    .line 300
    :sswitch_3c2
    nop

    .line 286
    :goto_3c3
    add-int/lit8 v0, v0, 0x1

    goto :goto_3b3

    .line 316
    .end local v0    # "i":I
    :cond_3c6
    :goto_3c6
    if-eqz v24, :cond_3d6

    .line 321
    move/from16 v31, v12

    move/from16 v30, v13

    .end local v12    # "cs":I
    .end local v13    # "s":I
    .restart local v30    # "s":I
    .restart local v31    # "cs":I
    :try_start_3cc
    invoke-static {v15}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v12

    invoke-virtual {v1, v6, v12, v13, v15}, Lcom/badlogic/gdx/utils/JsonReader;->number(Ljava/lang/String;DLjava/lang/String;)V
    :try_end_3d3
    .catch Ljava/lang/NumberFormatException; {:try_start_3cc .. :try_end_3d3} :catch_3d4
    .catch Ljava/lang/RuntimeException; {:try_start_3cc .. :try_end_3d3} :catch_416

    .line 322
    goto :goto_406

    .line 324
    :catch_3d4
    move-exception v0

    .line 325
    .local v0, "ex2":Ljava/lang/NumberFormatException;
    goto :goto_403

    .line 328
    .end local v0    # "ex2":Ljava/lang/NumberFormatException;
    .end local v30    # "s":I
    .end local v31    # "cs":I
    .restart local v12    # "cs":I
    .restart local v13    # "s":I
    :cond_3d6
    move/from16 v31, v12

    move/from16 v30, v13

    .end local v12    # "cs":I
    .end local v13    # "s":I
    .restart local v30    # "s":I
    .restart local v31    # "cs":I
    if-eqz v7, :cond_403

    .line 333
    :try_start_3dc
    invoke-static {v15}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    invoke-virtual {v1, v6, v12, v13, v15}, Lcom/badlogic/gdx/utils/JsonReader;->number(Ljava/lang/String;JLjava/lang/String;)V
    :try_end_3e3
    .catch Ljava/lang/NumberFormatException; {:try_start_3dc .. :try_end_3e3} :catch_3e4
    .catch Ljava/lang/RuntimeException; {:try_start_3dc .. :try_end_3e3} :catch_416

    .line 334
    goto :goto_406

    .line 336
    :catch_3e4
    move-exception v0

    goto :goto_403

    .line 660
    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "couldBeLong":Z
    .end local v15    # "value":Ljava/lang/String;
    .end local v16    # "_goto_targ":I
    .end local v17    # "_nacts":I
    .end local v21    # "_keys":I
    .end local v22    # "_klen":I
    .end local v24    # "couldBeDouble":Z
    .end local v26    # "_acts":I
    .end local v27    # "_trans":I
    .end local v30    # "s":I
    .end local v31    # "cs":I
    .restart local v13    # "s":I
    :catch_3e6
    move-exception v0

    move/from16 v30, v13

    move/from16 v22, v3

    move-object/from16 v27, v8

    move/from16 v10, v18

    move/from16 v11, v19

    move/from16 v6, v28

    move-object/from16 v7, v29

    move/from16 v9, v30

    .end local v13    # "s":I
    .restart local v30    # "s":I
    goto/16 :goto_632

    .line 264
    .end local v28    # "top":I
    .end local v29    # "stack":[I
    .end local v30    # "s":I
    .local v6, "top":I
    .local v7, "stack":[I
    .restart local v12    # "cs":I
    .restart local v13    # "s":I
    .restart local v15    # "value":Ljava/lang/String;
    .restart local v16    # "_goto_targ":I
    .restart local v17    # "_nacts":I
    .restart local v21    # "_keys":I
    .restart local v22    # "_klen":I
    .local v24, "name":Ljava/lang/String;
    .restart local v26    # "_acts":I
    .restart local v27    # "_trans":I
    :cond_3f9
    move/from16 v28, v6

    move-object/from16 v29, v7

    move/from16 v31, v12

    move/from16 v30, v13

    move-object/from16 v6, v24

    .line 343
    .end local v7    # "stack":[I
    .end local v12    # "cs":I
    .end local v13    # "s":I
    .end local v24    # "name":Ljava/lang/String;
    .local v6, "name":Ljava/lang/String;
    .restart local v28    # "top":I
    .restart local v29    # "stack":[I
    .restart local v30    # "s":I
    .restart local v31    # "cs":I
    :cond_403
    :goto_403
    :try_start_403
    invoke-virtual {v1, v6, v15}, Lcom/badlogic/gdx/utils/JsonReader;->string(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_406
    .catch Ljava/lang/RuntimeException; {:try_start_403 .. :try_end_406} :catch_416

    .line 346
    .end local v6    # "name":Ljava/lang/String;
    :goto_406
    const/4 v14, 0x0

    .line 347
    move v13, v5

    .line 348
    .end local v30    # "s":I
    .restart local v13    # "s":I
    move/from16 v0, v17

    move/from16 v24, v26

    move/from16 v15, v27

    move/from16 v6, v28

    move-object/from16 v7, v29

    move/from16 v12, v31

    goto/16 :goto_14a

    .line 660
    .end local v13    # "s":I
    .end local v15    # "value":Ljava/lang/String;
    .end local v16    # "_goto_targ":I
    .end local v17    # "_nacts":I
    .end local v21    # "_keys":I
    .end local v22    # "_klen":I
    .end local v26    # "_acts":I
    .end local v27    # "_trans":I
    .end local v31    # "cs":I
    .restart local v30    # "s":I
    :catch_416
    move-exception v0

    move/from16 v22, v3

    move-object/from16 v27, v8

    move/from16 v10, v18

    move/from16 v11, v19

    move/from16 v6, v28

    move-object/from16 v7, v29

    move/from16 v9, v30

    goto/16 :goto_632

    .line 245
    .end local v28    # "top":I
    .end local v29    # "stack":[I
    .end local v30    # "s":I
    .local v6, "top":I
    .restart local v7    # "stack":[I
    .restart local v12    # "cs":I
    .restart local v13    # "s":I
    .restart local v16    # "_goto_targ":I
    .restart local v17    # "_nacts":I
    .restart local v21    # "_keys":I
    .restart local v22    # "_klen":I
    .restart local v26    # "_acts":I
    .restart local v27    # "_trans":I
    :pswitch_427
    move/from16 v28, v6

    move-object/from16 v29, v7

    move/from16 v31, v12

    move/from16 v30, v13

    .end local v6    # "top":I
    .end local v7    # "stack":[I
    .end local v12    # "cs":I
    .end local v13    # "s":I
    .restart local v28    # "top":I
    .restart local v29    # "stack":[I
    .restart local v30    # "s":I
    .restart local v31    # "cs":I
    const/16 v19, 0x1

    .line 246
    move/from16 v0, v17

    move/from16 v24, v26

    move/from16 v15, v27

    goto/16 :goto_14a

    .line 660
    .end local v16    # "_goto_targ":I
    .end local v17    # "_nacts":I
    .end local v21    # "_keys":I
    .end local v22    # "_klen":I
    .end local v26    # "_acts":I
    .end local v27    # "_trans":I
    .end local v28    # "top":I
    .end local v29    # "stack":[I
    .end local v30    # "s":I
    .end local v31    # "cs":I
    .restart local v6    # "top":I
    .restart local v7    # "stack":[I
    .restart local v13    # "s":I
    :catch_439
    move-exception v0

    move/from16 v28, v6

    move-object/from16 v29, v7

    move/from16 v30, v13

    move/from16 v22, v3

    move-object/from16 v27, v8

    move/from16 v10, v18

    move/from16 v11, v19

    move/from16 v9, v30

    .end local v6    # "top":I
    .end local v7    # "stack":[I
    .end local v13    # "s":I
    .restart local v28    # "top":I
    .restart local v29    # "stack":[I
    .restart local v30    # "s":I
    goto/16 :goto_632

    .line 242
    .end local v28    # "top":I
    .end local v29    # "stack":[I
    .end local v30    # "s":I
    .restart local v6    # "top":I
    .restart local v7    # "stack":[I
    .restart local v12    # "cs":I
    .restart local v13    # "s":I
    .local v15, "_trans":I
    .restart local v16    # "_goto_targ":I
    .restart local v17    # "_nacts":I
    .restart local v21    # "_keys":I
    .restart local v22    # "_klen":I
    .local v24, "_acts":I
    :cond_44c
    move/from16 v28, v6

    move-object/from16 v29, v7

    move/from16 v31, v12

    move/from16 v30, v13

    move/from16 v27, v15

    .end local v6    # "top":I
    .end local v7    # "stack":[I
    .end local v12    # "cs":I
    .end local v13    # "s":I
    .end local v15    # "_trans":I
    .restart local v27    # "_trans":I
    .restart local v28    # "top":I
    .restart local v29    # "stack":[I
    .restart local v30    # "s":I
    .restart local v31    # "cs":I
    move/from16 v17, v30

    move/from16 v0, v31

    goto :goto_476

    .line 660
    .end local v16    # "_goto_targ":I
    .end local v21    # "_keys":I
    .end local v22    # "_klen":I
    .end local v24    # "_acts":I
    .end local v27    # "_trans":I
    .end local v28    # "top":I
    .end local v29    # "stack":[I
    .end local v30    # "s":I
    .end local v31    # "cs":I
    .restart local v6    # "top":I
    .restart local v7    # "stack":[I
    .local v17, "s":I
    :catch_45b
    move-exception v0

    move/from16 v28, v6

    move-object/from16 v29, v7

    move/from16 v22, v3

    move-object/from16 v27, v8

    move/from16 v9, v17

    move/from16 v10, v18

    move/from16 v11, v19

    .end local v6    # "top":I
    .end local v7    # "stack":[I
    .restart local v28    # "top":I
    .restart local v29    # "stack":[I
    goto/16 :goto_632

    .line 239
    .end local v28    # "top":I
    .end local v29    # "stack":[I
    .restart local v6    # "top":I
    .restart local v7    # "stack":[I
    .restart local v12    # "cs":I
    .restart local v15    # "_trans":I
    .restart local v16    # "_goto_targ":I
    .restart local v21    # "_keys":I
    .restart local v22    # "_klen":I
    :cond_46c
    move/from16 v28, v6

    move-object/from16 v29, v7

    move/from16 v31, v12

    move/from16 v27, v15

    .end local v6    # "top":I
    .end local v7    # "stack":[I
    .end local v12    # "cs":I
    .end local v15    # "_trans":I
    .restart local v27    # "_trans":I
    .restart local v28    # "top":I
    .restart local v29    # "stack":[I
    .restart local v31    # "cs":I
    move/from16 v0, v31

    .line 529
    .end local v21    # "_keys":I
    .end local v22    # "_klen":I
    .end local v27    # "_trans":I
    .end local v31    # "cs":I
    .local v0, "cs":I
    .restart local v15    # "_trans":I
    :goto_476
    if-nez v0, :cond_48a

    .line 530
    const/16 v16, 0x5

    .line 531
    move/from16 v9, v17

    move/from16 v10, v18

    move/from16 v11, v19

    move-object/from16 v12, v20

    move/from16 v13, v23

    move/from16 v6, v28

    move-object/from16 v7, v29

    goto/16 :goto_2b

    .line 533
    :cond_48a
    add-int/lit8 v5, v5, 0x1

    if-eq v5, v4, :cond_4a0

    .line 534
    const/16 v16, 0x1

    .line 535
    move/from16 v9, v17

    move/from16 v10, v18

    move/from16 v11, v19

    move-object/from16 v12, v20

    move/from16 v13, v23

    move/from16 v6, v28

    move-object/from16 v7, v29

    goto/16 :goto_2b

    .line 533
    :cond_4a0
    move v6, v5

    move v5, v0

    .line 548
    .end local v0    # "cs":I
    .local v5, "cs":I
    .local v6, "p":I
    :goto_4a2
    if-ne v6, v3, :cond_603

    .line 549
    :try_start_4a4
    sget-object v0, Lcom/badlogic/gdx/utils/JsonReader;->_json_eof_actions:[B

    aget-byte v0, v0, v5

    .line 550
    .local v0, "__acts":I
    sget-object v7, Lcom/badlogic/gdx/utils/JsonReader;->_json_actions:[B

    add-int/lit8 v12, v0, 0x1

    .end local v0    # "__acts":I
    .local v12, "__acts":I
    aget-byte v0, v7, v0
    :try_end_4ae
    .catch Ljava/lang/RuntimeException; {:try_start_4a4 .. :try_end_4ae} :catch_5f2

    move/from16 v7, v17

    .line 551
    .end local v17    # "s":I
    .local v0, "__nacts":I
    .local v7, "s":I
    :goto_4b0
    add-int/lit8 v13, v0, -0x1

    .end local v0    # "__nacts":I
    .local v13, "__nacts":I
    if-lez v0, :cond_5e2

    .line 552
    :try_start_4b4
    sget-object v0, Lcom/badlogic/gdx/utils/JsonReader;->_json_actions:[B

    add-int/lit8 v17, v12, 0x1

    .end local v12    # "__acts":I
    .local v17, "__acts":I
    aget-byte v0, v0, v12

    packed-switch v0, :pswitch_data_798

    .line 653
    move/from16 v22, v3

    move/from16 v21, v5

    move/from16 v26, v7

    move-object/from16 v27, v8

    .end local v3    # "eof":I
    .end local v5    # "cs":I
    .end local v7    # "s":I
    .end local v8    # "names":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    .local v21, "cs":I
    .local v22, "eof":I
    .local v26, "s":I
    .local v27, "names":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    move v0, v13

    move/from16 v12, v17

    goto :goto_4b0

    .line 554
    .end local v21    # "cs":I
    .end local v22    # "eof":I
    .end local v26    # "s":I
    .end local v27    # "names":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    .restart local v3    # "eof":I
    .restart local v5    # "cs":I
    .restart local v7    # "s":I
    .restart local v8    # "names":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    :pswitch_4c9
    new-instance v0, Ljava/lang/String;

    sub-int v12, v6, v7

    invoke-direct {v0, v2, v7, v12}, Ljava/lang/String;-><init>([CII)V
    :try_end_4d0
    .catch Ljava/lang/RuntimeException; {:try_start_4b4 .. :try_end_4d0} :catch_5ce

    .line 555
    .local v0, "value2":Ljava/lang/String;
    if-eqz v18, :cond_4e9

    .line 556
    :try_start_4d2
    invoke-direct {v1, v0}, Lcom/badlogic/gdx/utils/JsonReader;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object v0, v12

    goto :goto_4ea

    .line 660
    .end local v0    # "value2":Ljava/lang/String;
    .end local v5    # "cs":I
    .end local v13    # "__nacts":I
    .end local v15    # "_trans":I
    .end local v16    # "_goto_targ":I
    .end local v17    # "__acts":I
    :catch_4d8
    move-exception v0

    move/from16 v22, v3

    move v5, v6

    move v9, v7

    move-object/from16 v27, v8

    move/from16 v10, v18

    move/from16 v11, v19

    move/from16 v6, v28

    move-object/from16 v7, v29

    goto/16 :goto_632

    .line 555
    .restart local v0    # "value2":Ljava/lang/String;
    .restart local v5    # "cs":I
    .restart local v13    # "__nacts":I
    .restart local v15    # "_trans":I
    .restart local v16    # "_goto_targ":I
    .restart local v17    # "__acts":I
    :cond_4e9
    move-object v12, v0

    .line 559
    .end local v0    # "value2":Ljava/lang/String;
    .local v12, "value2":Ljava/lang/String;
    :goto_4ea
    if-eqz v19, :cond_4fb

    .line 560
    const/16 v19, 0x0

    .line 564
    invoke-virtual {v8, v12}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V
    :try_end_4f1
    .catch Ljava/lang/RuntimeException; {:try_start_4d2 .. :try_end_4f1} :catch_4d8

    move/from16 v22, v3

    move/from16 v21, v5

    move/from16 v26, v7

    move-object/from16 v27, v8

    goto/16 :goto_5b3

    .line 567
    :cond_4fb
    :try_start_4fb
    iget v0, v8, Lcom/badlogic/gdx/utils/Array;->size:I
    :try_end_4fd
    .catch Ljava/lang/RuntimeException; {:try_start_4fb .. :try_end_4fd} :catch_5ce

    if-lez v0, :cond_506

    :try_start_4ff
    invoke-virtual {v8}, Lcom/badlogic/gdx/utils/Array;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_505
    .catch Ljava/lang/RuntimeException; {:try_start_4ff .. :try_end_505} :catch_4d8

    goto :goto_507

    :cond_506
    const/4 v0, 0x0

    :goto_507
    move-object/from16 v21, v0

    .line 569
    .local v21, "name3":Ljava/lang/String;
    if-eqz v14, :cond_5a6

    .line 570
    :try_start_50b
    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_50f
    .catch Ljava/lang/RuntimeException; {:try_start_50b .. :try_end_50f} :catch_5ce

    if-eqz v0, :cond_530

    .line 574
    move/from16 v22, v3

    move-object/from16 v3, v21

    move/from16 v21, v5

    const/4 v5, 0x1

    .end local v5    # "cs":I
    .local v3, "name3":Ljava/lang/String;
    .local v21, "cs":I
    .restart local v22    # "eof":I
    :try_start_518
    invoke-virtual {v1, v3, v5}, Lcom/badlogic/gdx/utils/JsonReader;->bool(Ljava/lang/String;Z)V
    :try_end_51b
    .catch Ljava/lang/RuntimeException; {:try_start_518 .. :try_end_51b} :catch_521

    .line 575
    move/from16 v26, v7

    move-object/from16 v27, v8

    goto/16 :goto_5b3

    .line 660
    .end local v3    # "name3":Ljava/lang/String;
    .end local v12    # "value2":Ljava/lang/String;
    .end local v13    # "__nacts":I
    .end local v15    # "_trans":I
    .end local v16    # "_goto_targ":I
    .end local v17    # "__acts":I
    .end local v21    # "cs":I
    :catch_521
    move-exception v0

    move v5, v6

    move v9, v7

    move-object/from16 v27, v8

    move/from16 v10, v18

    move/from16 v11, v19

    move/from16 v6, v28

    move-object/from16 v7, v29

    goto/16 :goto_632

    .line 577
    .end local v22    # "eof":I
    .local v3, "eof":I
    .restart local v5    # "cs":I
    .restart local v12    # "value2":Ljava/lang/String;
    .restart local v13    # "__nacts":I
    .restart local v15    # "_trans":I
    .restart local v16    # "_goto_targ":I
    .restart local v17    # "__acts":I
    .local v21, "name3":Ljava/lang/String;
    :cond_530
    move/from16 v22, v3

    move-object/from16 v3, v21

    move/from16 v21, v5

    const/4 v5, 0x1

    .end local v5    # "cs":I
    .local v3, "name3":Ljava/lang/String;
    .local v21, "cs":I
    .restart local v22    # "eof":I
    :try_start_537
    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_53b
    .catch Ljava/lang/RuntimeException; {:try_start_537 .. :try_end_53b} :catch_594

    if-eqz v0, :cond_547

    .line 581
    const/4 v5, 0x0

    :try_start_53e
    invoke-virtual {v1, v3, v5}, Lcom/badlogic/gdx/utils/JsonReader;->bool(Ljava/lang/String;Z)V
    :try_end_541
    .catch Ljava/lang/RuntimeException; {:try_start_53e .. :try_end_541} :catch_521

    .line 582
    move/from16 v26, v7

    move-object/from16 v27, v8

    goto/16 :goto_5b3

    .line 584
    :cond_547
    :try_start_547
    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_54b
    .catch Ljava/lang/RuntimeException; {:try_start_547 .. :try_end_54b} :catch_594

    if-eqz v0, :cond_557

    .line 585
    const/4 v5, 0x0

    :try_start_54e
    invoke-virtual {v1, v3, v5}, Lcom/badlogic/gdx/utils/JsonReader;->string(Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    move/from16 v26, v7

    move-object/from16 v27, v8

    goto/16 :goto_5b3

    .line 588
    :cond_557
    const/4 v0, 0x0

    .line 589
    .local v0, "couldBeDouble2":Z
    const/4 v5, 0x1

    .line 591
    .local v5, "couldBeLong2":Z
    move/from16 v24, v7

    move/from16 v32, v24

    move/from16 v24, v0

    move/from16 v0, v32

    .local v0, "j":I
    .local v24, "couldBeDouble2":Z
    :goto_561
    if-ge v0, v6, :cond_574

    .line 592
    aget-char v26, v2, v0
    :try_end_565
    .catch Ljava/lang/RuntimeException; {:try_start_54e .. :try_end_565} :catch_521

    sparse-switch v26, :sswitch_data_79e

    .line 615
    const/16 v24, 0x0

    .line 616
    const/4 v5, 0x0

    .line 617
    goto :goto_574

    .line 610
    :sswitch_56c
    const/16 v24, 0x1

    .line 611
    const/4 v5, 0x0

    .line 612
    goto :goto_571

    .line 605
    :sswitch_570
    nop

    .line 591
    :goto_571
    add-int/lit8 v0, v0, 0x1

    goto :goto_561

    .line 621
    .end local v0    # "j":I
    :cond_574
    :goto_574
    if-eqz v24, :cond_584

    .line 626
    move/from16 v26, v7

    move-object/from16 v27, v8

    .end local v7    # "s":I
    .end local v8    # "names":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    .restart local v26    # "s":I
    .restart local v27    # "names":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    :try_start_57a
    invoke-static {v12}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7

    invoke-virtual {v1, v3, v7, v8, v12}, Lcom/badlogic/gdx/utils/JsonReader;->number(Ljava/lang/String;DLjava/lang/String;)V
    :try_end_581
    .catch Ljava/lang/NumberFormatException; {:try_start_57a .. :try_end_581} :catch_582
    .catch Ljava/lang/RuntimeException; {:try_start_57a .. :try_end_581} :catch_5c0

    .line 627
    goto :goto_5b3

    .line 629
    :catch_582
    move-exception v0

    .line 630
    .local v0, "ex4":Ljava/lang/NumberFormatException;
    goto :goto_5b0

    .line 633
    .end local v0    # "ex4":Ljava/lang/NumberFormatException;
    .end local v26    # "s":I
    .end local v27    # "names":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    .restart local v7    # "s":I
    .restart local v8    # "names":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    :cond_584
    move/from16 v26, v7

    move-object/from16 v27, v8

    .end local v7    # "s":I
    .end local v8    # "names":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    .restart local v26    # "s":I
    .restart local v27    # "names":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    if-eqz v5, :cond_5b0

    .line 638
    :try_start_58a
    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    invoke-virtual {v1, v3, v7, v8, v12}, Lcom/badlogic/gdx/utils/JsonReader;->number(Ljava/lang/String;JLjava/lang/String;)V
    :try_end_591
    .catch Ljava/lang/NumberFormatException; {:try_start_58a .. :try_end_591} :catch_592
    .catch Ljava/lang/RuntimeException; {:try_start_58a .. :try_end_591} :catch_5c0

    .line 639
    goto :goto_5b3

    .line 641
    :catch_592
    move-exception v0

    goto :goto_5b0

    .line 660
    .end local v3    # "name3":Ljava/lang/String;
    .end local v5    # "couldBeLong2":Z
    .end local v12    # "value2":Ljava/lang/String;
    .end local v13    # "__nacts":I
    .end local v15    # "_trans":I
    .end local v16    # "_goto_targ":I
    .end local v17    # "__acts":I
    .end local v21    # "cs":I
    .end local v24    # "couldBeDouble2":Z
    .end local v26    # "s":I
    .end local v27    # "names":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    .restart local v7    # "s":I
    .restart local v8    # "names":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    :catch_594
    move-exception v0

    move/from16 v26, v7

    move-object/from16 v27, v8

    move v5, v6

    move/from16 v10, v18

    move/from16 v11, v19

    move/from16 v9, v26

    move/from16 v6, v28

    move-object/from16 v7, v29

    .end local v7    # "s":I
    .end local v8    # "names":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    .restart local v26    # "s":I
    .restart local v27    # "names":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    goto/16 :goto_632

    .line 569
    .end local v22    # "eof":I
    .end local v26    # "s":I
    .end local v27    # "names":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    .local v3, "eof":I
    .local v5, "cs":I
    .restart local v7    # "s":I
    .restart local v8    # "names":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    .restart local v12    # "value2":Ljava/lang/String;
    .restart local v13    # "__nacts":I
    .restart local v15    # "_trans":I
    .restart local v16    # "_goto_targ":I
    .restart local v17    # "__acts":I
    .local v21, "name3":Ljava/lang/String;
    :cond_5a6
    move/from16 v22, v3

    move/from16 v26, v7

    move-object/from16 v27, v8

    move-object/from16 v3, v21

    move/from16 v21, v5

    .line 648
    .end local v5    # "cs":I
    .end local v7    # "s":I
    .end local v8    # "names":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    .local v3, "name3":Ljava/lang/String;
    .local v21, "cs":I
    .restart local v22    # "eof":I
    .restart local v26    # "s":I
    .restart local v27    # "names":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    :cond_5b0
    :goto_5b0
    :try_start_5b0
    invoke-virtual {v1, v3, v12}, Lcom/badlogic/gdx/utils/JsonReader;->string(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5b3
    .catch Ljava/lang/RuntimeException; {:try_start_5b0 .. :try_end_5b3} :catch_5c0

    .line 651
    .end local v3    # "name3":Ljava/lang/String;
    :goto_5b3
    const/4 v14, 0x0

    .line 652
    move v7, v6

    .line 653
    .end local v26    # "s":I
    .restart local v7    # "s":I
    move v0, v13

    move/from16 v12, v17

    move/from16 v5, v21

    move/from16 v3, v22

    move-object/from16 v8, v27

    goto/16 :goto_4b0

    .line 660
    .end local v7    # "s":I
    .end local v12    # "value2":Ljava/lang/String;
    .end local v13    # "__nacts":I
    .end local v15    # "_trans":I
    .end local v16    # "_goto_targ":I
    .end local v17    # "__acts":I
    .end local v21    # "cs":I
    .restart local v26    # "s":I
    :catch_5c0
    move-exception v0

    move v5, v6

    move/from16 v10, v18

    move/from16 v11, v19

    move/from16 v9, v26

    move/from16 v6, v28

    move-object/from16 v7, v29

    goto/16 :goto_632

    .end local v22    # "eof":I
    .end local v26    # "s":I
    .end local v27    # "names":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    .local v3, "eof":I
    .restart local v7    # "s":I
    .restart local v8    # "names":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    :catch_5ce
    move-exception v0

    move/from16 v22, v3

    move/from16 v26, v7

    move-object/from16 v27, v8

    move v5, v6

    move/from16 v10, v18

    move/from16 v11, v19

    move/from16 v9, v26

    move/from16 v6, v28

    move-object/from16 v7, v29

    .end local v3    # "eof":I
    .end local v7    # "s":I
    .end local v8    # "names":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    .restart local v22    # "eof":I
    .restart local v26    # "s":I
    .restart local v27    # "names":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    goto/16 :goto_632

    .line 551
    .end local v22    # "eof":I
    .end local v26    # "s":I
    .end local v27    # "names":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    .restart local v3    # "eof":I
    .restart local v5    # "cs":I
    .restart local v7    # "s":I
    .restart local v8    # "names":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    .local v12, "__acts":I
    .restart local v13    # "__nacts":I
    .restart local v15    # "_trans":I
    .restart local v16    # "_goto_targ":I
    :cond_5e2
    move/from16 v22, v3

    move/from16 v21, v5

    move/from16 v26, v7

    move-object/from16 v27, v8

    .end local v3    # "eof":I
    .end local v5    # "cs":I
    .end local v7    # "s":I
    .end local v8    # "names":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    .restart local v21    # "cs":I
    .restart local v22    # "eof":I
    .restart local v26    # "s":I
    .restart local v27    # "names":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    move v5, v6

    move/from16 v10, v18

    move/from16 v11, v19

    move/from16 v9, v26

    goto :goto_634

    .line 660
    .end local v12    # "__acts":I
    .end local v13    # "__nacts":I
    .end local v15    # "_trans":I
    .end local v16    # "_goto_targ":I
    .end local v21    # "cs":I
    .end local v22    # "eof":I
    .end local v26    # "s":I
    .end local v27    # "names":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    .restart local v3    # "eof":I
    .restart local v8    # "names":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    .local v17, "s":I
    :catch_5f2
    move-exception v0

    move/from16 v22, v3

    move-object/from16 v27, v8

    move v5, v6

    move/from16 v9, v17

    move/from16 v10, v18

    move/from16 v11, v19

    move/from16 v6, v28

    move-object/from16 v7, v29

    .end local v3    # "eof":I
    .end local v8    # "names":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    .restart local v22    # "eof":I
    .restart local v27    # "names":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    goto :goto_632

    .line 548
    .end local v22    # "eof":I
    .end local v27    # "names":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    .restart local v3    # "eof":I
    .restart local v5    # "cs":I
    .restart local v8    # "names":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    .restart local v15    # "_trans":I
    .restart local v16    # "_goto_targ":I
    :cond_603
    move/from16 v22, v3

    move/from16 v21, v5

    move-object/from16 v27, v8

    .end local v3    # "eof":I
    .end local v5    # "cs":I
    .end local v8    # "names":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    .restart local v21    # "cs":I
    .restart local v22    # "eof":I
    .restart local v27    # "names":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    move v5, v6

    move/from16 v9, v17

    move/from16 v10, v18

    move/from16 v11, v19

    goto :goto_634

    .line 660
    .end local v15    # "_trans":I
    .end local v16    # "_goto_targ":I
    .end local v21    # "cs":I
    .end local v22    # "eof":I
    .end local v27    # "names":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    .end local v28    # "top":I
    .end local v29    # "stack":[I
    .restart local v3    # "eof":I
    .local v5, "p":I
    .local v6, "top":I
    .local v7, "stack":[I
    .restart local v8    # "names":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    :catch_611
    move-exception v0

    move/from16 v22, v3

    move/from16 v28, v6

    move-object/from16 v29, v7

    move-object/from16 v27, v8

    move/from16 v9, v17

    move/from16 v10, v18

    move/from16 v11, v19

    .end local v3    # "eof":I
    .end local v6    # "top":I
    .end local v7    # "stack":[I
    .end local v8    # "names":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    .restart local v22    # "eof":I
    .restart local v27    # "names":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    .restart local v28    # "top":I
    .restart local v29    # "stack":[I
    goto :goto_632

    .end local v22    # "eof":I
    .end local v23    # "debug":Z
    .end local v27    # "names":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    .end local v28    # "top":I
    .end local v29    # "stack":[I
    .restart local v3    # "eof":I
    .restart local v6    # "top":I
    .restart local v7    # "stack":[I
    .restart local v8    # "names":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    .local v13, "debug":Z
    :catch_621
    move-exception v0

    move/from16 v22, v3

    move/from16 v28, v6

    move-object/from16 v29, v7

    move-object/from16 v27, v8

    move/from16 v23, v13

    move/from16 v9, v17

    move/from16 v10, v18

    move/from16 v11, v19

    .line 661
    .end local v3    # "eof":I
    .end local v8    # "names":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    .end local v13    # "debug":Z
    .end local v17    # "s":I
    .end local v18    # "needsUnescape":Z
    .end local v19    # "stringIsName":Z
    .local v0, "ex":Ljava/lang/RuntimeException;
    .local v9, "s":I
    .restart local v10    # "needsUnescape":Z
    .restart local v11    # "stringIsName":Z
    .restart local v22    # "eof":I
    .restart local v23    # "debug":Z
    .restart local v27    # "names":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/String;>;"
    :goto_632
    move-object v12, v0

    .end local v20    # "parseRuntimeEx":Ljava/lang/RuntimeException;
    .local v12, "parseRuntimeEx":Ljava/lang/RuntimeException;
    goto :goto_63a

    .line 662
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    .end local v6    # "top":I
    .end local v7    # "stack":[I
    .end local v12    # "parseRuntimeEx":Ljava/lang/RuntimeException;
    .restart local v20    # "parseRuntimeEx":Ljava/lang/RuntimeException;
    .restart local v28    # "top":I
    .restart local v29    # "stack":[I
    :goto_634
    move-object/from16 v12, v20

    move/from16 v6, v28

    move-object/from16 v7, v29

    .line 663
    .end local v20    # "parseRuntimeEx":Ljava/lang/RuntimeException;
    .end local v28    # "top":I
    .end local v29    # "stack":[I
    .restart local v6    # "top":I
    .restart local v7    # "stack":[I
    .restart local v12    # "parseRuntimeEx":Ljava/lang/RuntimeException;
    :goto_63a
    iget-object v0, v1, Lcom/badlogic/gdx/utils/JsonReader;->root:Lcom/badlogic/gdx/utils/JsonValue;

    .line 664
    .local v0, "root":Lcom/badlogic/gdx/utils/JsonValue;
    const/4 v3, 0x0

    iput-object v3, v1, Lcom/badlogic/gdx/utils/JsonReader;->root:Lcom/badlogic/gdx/utils/JsonValue;

    .line 665
    iput-object v3, v1, Lcom/badlogic/gdx/utils/JsonReader;->current:Lcom/badlogic/gdx/utils/JsonValue;

    .line 666
    iget-object v3, v1, Lcom/badlogic/gdx/utils/JsonReader;->lastChild:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 667
    if-ge v5, v4, :cond_6a5

    .line 668
    const/4 v3, 0x1

    .line 669
    .local v3, "lineNumber":I
    const/4 v8, 0x0

    .local v8, "k":I
    :goto_64a
    if-ge v8, v5, :cond_657

    .line 670
    aget-char v13, v2, v8

    const/16 v15, 0xa

    if-ne v13, v15, :cond_654

    .line 671
    add-int/lit8 v3, v3, 0x1

    .line 669
    :cond_654
    add-int/lit8 v8, v8, 0x1

    goto :goto_64a

    .line 674
    .end local v8    # "k":I
    :cond_657
    add-int/lit8 v8, v5, -0x20

    const/4 v13, 0x0

    invoke-static {v13, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 675
    .local v8, "start2":I
    new-instance v13, Lcom/badlogic/gdx/utils/SerializationException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v16, v6

    .end local v6    # "top":I
    .local v16, "top":I
    const-string v6, "Error parsing JSON on line "

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v15, " near: "

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    new-instance v15, Ljava/lang/String;

    move/from16 v17, v3

    .end local v3    # "lineNumber":I
    .local v17, "lineNumber":I
    sub-int v3, v5, v8

    invoke-direct {v15, v2, v8, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "*ERROR*"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v6, Ljava/lang/String;

    const/16 v15, 0x40

    move-object/from16 v18, v7

    .end local v7    # "stack":[I
    .local v18, "stack":[I
    sub-int v7, v4, v5

    invoke-static {v15, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-direct {v6, v2, v5, v7}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v13, v3, v12}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v13

    .line 677
    .end local v8    # "start2":I
    .end local v16    # "top":I
    .end local v17    # "lineNumber":I
    .end local v18    # "stack":[I
    .restart local v6    # "top":I
    .restart local v7    # "stack":[I
    :cond_6a5
    move/from16 v16, v6

    move-object/from16 v18, v7

    .end local v6    # "top":I
    .end local v7    # "stack":[I
    .restart local v16    # "top":I
    .restart local v18    # "stack":[I
    iget-object v3, v1, Lcom/badlogic/gdx/utils/JsonReader;->elements:Lcom/badlogic/gdx/utils/Array;

    iget v3, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    if-eqz v3, :cond_6d4

    .line 678
    iget-object v3, v1, Lcom/badlogic/gdx/utils/JsonReader;->elements:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/Array;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/utils/JsonValue;

    .line 679
    .local v3, "element":Lcom/badlogic/gdx/utils/JsonValue;
    iget-object v6, v1, Lcom/badlogic/gdx/utils/JsonReader;->elements:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v6}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 680
    if-eqz v3, :cond_6cc

    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/JsonValue;->isObject()Z

    move-result v6

    if-eqz v6, :cond_6cc

    .line 681
    new-instance v6, Lcom/badlogic/gdx/utils/SerializationException;

    const-string v7, "Error parsing JSON, unmatched brace."

    invoke-direct {v6, v7}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 683
    :cond_6cc
    new-instance v6, Lcom/badlogic/gdx/utils/SerializationException;

    const-string v7, "Error parsing JSON, unmatched bracket."

    invoke-direct {v6, v7}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 686
    .end local v3    # "element":Lcom/badlogic/gdx/utils/JsonValue;
    :cond_6d4
    if-nez v12, :cond_6d7

    .line 689
    return-object v0

    .line 687
    :cond_6d7
    new-instance v3, Lcom/badlogic/gdx/utils/SerializationException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error parsing JSON: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6, v12}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6f6

    :goto_6f5
    throw v3

    :goto_6f6
    goto :goto_6f5

    nop

    :pswitch_data_6f8
    .packed-switch 0x0
        :pswitch_63
        :pswitch_7d
        :pswitch_5b
        :pswitch_3d
        :pswitch_51
    .end packed-switch

    :pswitch_data_706
    .packed-switch 0x0
        :pswitch_427
        :pswitch_32c
        :pswitch_2e0
        :pswitch_2ca
        :pswitch_296
        :pswitch_280
        :pswitch_22b
        :pswitch_198
        :pswitch_16a
    .end packed-switch

    :sswitch_data_71c
    .sparse-switch
        0x22 -> :sswitch_179
        0x5c -> :sswitch_175
    .end sparse-switch

    :sswitch_data_726
    .sparse-switch
        0xa -> :sswitch_1b9
        0xd -> :sswitch_1b9
        0x2f -> :sswitch_1a8
        0x3a -> :sswitch_1b9
        0x5c -> :sswitch_1a5
    .end sparse-switch

    :sswitch_data_73c
    .sparse-switch
        0xa -> :sswitch_1eb
        0xd -> :sswitch_1eb
        0x2c -> :sswitch_1eb
        0x2f -> :sswitch_1d4
        0x5c -> :sswitch_1d0
        0x5d -> :sswitch_1eb
        0x7d -> :sswitch_1eb
    .end sparse-switch

    :sswitch_data_75a
    .sparse-switch
        0x2b -> :sswitch_3c2
        0x2d -> :sswitch_3c2
        0x2e -> :sswitch_3be
        0x30 -> :sswitch_3c2
        0x31 -> :sswitch_3c2
        0x32 -> :sswitch_3c2
        0x33 -> :sswitch_3c2
        0x34 -> :sswitch_3c2
        0x35 -> :sswitch_3c2
        0x36 -> :sswitch_3c2
        0x37 -> :sswitch_3c2
        0x38 -> :sswitch_3c2
        0x39 -> :sswitch_3c2
        0x45 -> :sswitch_3be
        0x65 -> :sswitch_3be
    .end sparse-switch

    :pswitch_data_798
    .packed-switch 0x1
        :pswitch_4c9
    .end packed-switch

    :sswitch_data_79e
    .sparse-switch
        0x2b -> :sswitch_570
        0x2d -> :sswitch_570
        0x2e -> :sswitch_56c
        0x30 -> :sswitch_570
        0x31 -> :sswitch_570
        0x32 -> :sswitch_570
        0x33 -> :sswitch_570
        0x34 -> :sswitch_570
        0x35 -> :sswitch_570
        0x36 -> :sswitch_570
        0x37 -> :sswitch_570
        0x38 -> :sswitch_570
        0x39 -> :sswitch_570
        0x45 -> :sswitch_56c
        0x65 -> :sswitch_56c
    .end sparse-switch
.end method

.method protected pop()V
    .registers 2

    .line 777
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonReader;->elements:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/JsonValue;

    iput-object v0, p0, Lcom/badlogic/gdx/utils/JsonReader;->root:Lcom/badlogic/gdx/utils/JsonValue;

    .line 778
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonReader;->current:Lcom/badlogic/gdx/utils/JsonValue;

    iget v0, v0, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    if-lez v0, :cond_15

    .line 779
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonReader;->lastChild:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->pop()Ljava/lang/Object;

    .line 781
    :cond_15
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonReader;->elements:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lez v0, :cond_24

    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonReader;->elements:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/JsonValue;

    goto :goto_25

    :cond_24
    const/4 v0, 0x0

    :goto_25
    iput-object v0, p0, Lcom/badlogic/gdx/utils/JsonReader;->current:Lcom/badlogic/gdx/utils/JsonValue;

    .line 782
    return-void
.end method

.method protected startArray(Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .line 768
    new-instance v0, Lcom/badlogic/gdx/utils/JsonValue;

    sget-object v1, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->array:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/JsonValue;-><init>(Lcom/badlogic/gdx/utils/JsonValue$ValueType;)V

    .line 769
    .local v0, "value":Lcom/badlogic/gdx/utils/JsonValue;
    iget-object v1, p0, Lcom/badlogic/gdx/utils/JsonReader;->current:Lcom/badlogic/gdx/utils/JsonValue;

    if-eqz v1, :cond_e

    .line 770
    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/utils/JsonReader;->addChild(Ljava/lang/String;Lcom/badlogic/gdx/utils/JsonValue;)V

    .line 772
    :cond_e
    iget-object v1, p0, Lcom/badlogic/gdx/utils/JsonReader;->elements:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 773
    iput-object v0, p0, Lcom/badlogic/gdx/utils/JsonReader;->current:Lcom/badlogic/gdx/utils/JsonValue;

    .line 774
    return-void
.end method

.method protected startObject(Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .line 759
    new-instance v0, Lcom/badlogic/gdx/utils/JsonValue;

    sget-object v1, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->object:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/JsonValue;-><init>(Lcom/badlogic/gdx/utils/JsonValue$ValueType;)V

    .line 760
    .local v0, "value":Lcom/badlogic/gdx/utils/JsonValue;
    iget-object v1, p0, Lcom/badlogic/gdx/utils/JsonReader;->current:Lcom/badlogic/gdx/utils/JsonValue;

    if-eqz v1, :cond_e

    .line 761
    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/utils/JsonReader;->addChild(Ljava/lang/String;Lcom/badlogic/gdx/utils/JsonValue;)V

    .line 763
    :cond_e
    iget-object v1, p0, Lcom/badlogic/gdx/utils/JsonReader;->elements:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 764
    iput-object v0, p0, Lcom/badlogic/gdx/utils/JsonReader;->current:Lcom/badlogic/gdx/utils/JsonValue;

    .line 765
    return-void
.end method

.method protected string(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 785
    new-instance v0, Lcom/badlogic/gdx/utils/JsonValue;

    invoke-direct {v0, p2}, Lcom/badlogic/gdx/utils/JsonValue;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/utils/JsonReader;->addChild(Ljava/lang/String;Lcom/badlogic/gdx/utils/JsonValue;)V

    .line 786
    return-void
.end method
