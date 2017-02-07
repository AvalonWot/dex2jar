.class final Lcom/google/protobuf/Proto3Schema;
.super Ljava/lang/Object;
.source "Proto3Schema.java"

# interfaces
.implements Lcom/google/protobuf/Schema;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/Proto3Schema$LookupPositionStrategy;,
        Lcom/google/protobuf/Proto3Schema$TablePositionStrategy;,
        Lcom/google/protobuf/Proto3Schema$PositionStrategy;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/protobuf/Schema",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final EMPTY_LONG:J = -0x1L

.field static final ENFORCE_UTF8_MASK:I = 0x20000000

.field private static final FIELD_LENGTH:I = 0x10

.field private static final FIELD_SHIFT:I = 0x4

.field static final FIELD_TYPE_MASK:I = 0xff00000

.field private static final INT_LENGTH:I = 0x4

.field private static final LONGS_PER_FIELD:I = 0x2

.field private static final LONG_LENGTH:I = 0x8

.field private static final OFFSET_BITS:I = 0x14

.field private static final OFFSET_MASK:I = 0xfffff

.field private static final ONEOF_TYPE_OFFSET:I = 0x33


# instance fields
.field private final address:J

.field private final buffer:Ljava/nio/ByteBuffer;

.field private final defaultInstance:Lcom/google/protobuf/MessageLite;

.field private final fieldInitializer:Lcom/google/protobuf/FieldInitializer;

.field private final limit:J

.field private final lite:Z

.field private final mapFieldDefaultEntryMap:Lcom/google/protobuf/Int2ObjectHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Int2ObjectHashMap",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final mapFieldSchema:Lcom/google/protobuf/MapFieldSchema;

.field private final maxFieldNumber:I

.field private final messageFieldClassMap:Lcom/google/protobuf/Int2ObjectHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Int2ObjectHashMap",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final minFieldNumber:I

.field private final numFields:I

.field private final positionStrategy:Lcom/google/protobuf/Proto3Schema$PositionStrategy;


# direct methods
.method private constructor <init>(Ljava/nio/ByteBuffer;JJIIIZLjava/lang/Class;Lcom/google/protobuf/Int2ObjectHashMap;Lcom/google/protobuf/FieldInitializer;Lcom/google/protobuf/MapFieldSchema;Lcom/google/protobuf/Int2ObjectHashMap;)V
    .locals 6
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "address"    # J
    .param p4, "limit"    # J
    .param p6, "numFields"    # I
    .param p7, "minFieldNumber"    # I
    .param p8, "maxFieldNumber"    # I
    .param p9, "table"    # Z
    .param p12, "fieldInitializer"    # Lcom/google/protobuf/FieldInitializer;
    .param p13, "mapFieldSchema"    # Lcom/google/protobuf/MapFieldSchema;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "JJIIIZ",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/google/protobuf/Int2ObjectHashMap",
            "<",
            "Ljava/lang/Class",
            "<*>;>;",
            "Lcom/google/protobuf/FieldInitializer;",
            "Lcom/google/protobuf/MapFieldSchema;",
            "Lcom/google/protobuf/Int2ObjectHashMap",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 79
    .local p0, "this":Lcom/google/protobuf/Proto3Schema;, "Lcom/google/protobuf/Proto3Schema<TT;>;"
    .local p10, "messageClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p11, "messageFieldClassMap":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Class<*>;>;"
    .local p14, "mapFieldDefaultEntryMap":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Lcom/google/protobuf/Proto3Schema;->buffer:Ljava/nio/ByteBuffer;

    .line 81
    iput-wide p2, p0, Lcom/google/protobuf/Proto3Schema;->address:J

    .line 82
    iput-wide p4, p0, Lcom/google/protobuf/Proto3Schema;->limit:J

    .line 83
    iput p6, p0, Lcom/google/protobuf/Proto3Schema;->numFields:I

    .line 84
    iput p7, p0, Lcom/google/protobuf/Proto3Schema;->minFieldNumber:I

    .line 85
    iput p8, p0, Lcom/google/protobuf/Proto3Schema;->maxFieldNumber:I

    .line 86
    if-eqz p9, :cond_0

    new-instance v3, Lcom/google/protobuf/Proto3Schema$TablePositionStrategy;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/google/protobuf/Proto3Schema$TablePositionStrategy;-><init>(Lcom/google/protobuf/Proto3Schema;Lcom/google/protobuf/Proto3Schema$1;)V

    :goto_0
    iput-object v3, p0, Lcom/google/protobuf/Proto3Schema;->positionStrategy:Lcom/google/protobuf/Proto3Schema$PositionStrategy;

    .line 87
    move-object/from16 v0, p11

    iput-object v0, p0, Lcom/google/protobuf/Proto3Schema;->messageFieldClassMap:Lcom/google/protobuf/Int2ObjectHashMap;

    .line 88
    move-object/from16 v0, p12

    iput-object v0, p0, Lcom/google/protobuf/Proto3Schema;->fieldInitializer:Lcom/google/protobuf/FieldInitializer;

    .line 89
    const-class v3, Lcom/google/protobuf/GeneratedMessageLite;

    move-object/from16 v0, p10

    invoke-virtual {v3, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/google/protobuf/Proto3Schema;->lite:Z

    .line 91
    :try_start_0
    const-string v3, "getDefaultInstance"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    move-object/from16 v0, p10

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 92
    .local v2, "method":Ljava/lang/reflect/Method;
    const/4 v3, 0x0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    iput-object v3, p0, Lcom/google/protobuf/Proto3Schema;->defaultInstance:Lcom/google/protobuf/MessageLite;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    move-object/from16 v0, p13

    iput-object v0, p0, Lcom/google/protobuf/Proto3Schema;->mapFieldSchema:Lcom/google/protobuf/MapFieldSchema;

    .line 97
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/google/protobuf/Proto3Schema;->mapFieldDefaultEntryMap:Lcom/google/protobuf/Int2ObjectHashMap;

    .line 98
    return-void

    .line 86
    .end local v2    # "method":Ljava/lang/reflect/Method;
    :cond_0
    new-instance v3, Lcom/google/protobuf/Proto3Schema$LookupPositionStrategy;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/google/protobuf/Proto3Schema$LookupPositionStrategy;-><init>(Lcom/google/protobuf/Proto3Schema;Lcom/google/protobuf/Proto3Schema$1;)V

    goto :goto_0

    .line 93
    :catch_0
    move-exception v1

    .line 94
    .local v1, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method static synthetic access$300(Lcom/google/protobuf/Proto3Schema;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/protobuf/Proto3Schema;

    .prologue
    .line 12
    iget v0, p0, Lcom/google/protobuf/Proto3Schema;->minFieldNumber:I

    return v0
.end method

.method static synthetic access$400(Lcom/google/protobuf/Proto3Schema;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/protobuf/Proto3Schema;

    .prologue
    .line 12
    iget v0, p0, Lcom/google/protobuf/Proto3Schema;->maxFieldNumber:I

    return v0
.end method

.method static synthetic access$500(Lcom/google/protobuf/Proto3Schema;I)J
    .locals 2
    .param p0, "x0"    # Lcom/google/protobuf/Proto3Schema;
    .param p1, "x1"    # I

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/google/protobuf/Proto3Schema;->indexToAddress(I)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$600(Lcom/google/protobuf/Proto3Schema;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/protobuf/Proto3Schema;

    .prologue
    .line 12
    iget v0, p0, Lcom/google/protobuf/Proto3Schema;->numFields:I

    return v0
.end method

.method static synthetic access$700(J)I
    .locals 2
    .param p0, "x0"    # J

    .prologue
    .line 12
    invoke-static {p0, p1}, Lcom/google/protobuf/Proto3Schema;->numberAt(J)I

    move-result v0

    return v0
.end method

.method private static booleanAt(Ljava/lang/Object;J)Z
    .locals 1
    .param p1, "offset"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)Z"
        }
    .end annotation

    .prologue
    .line 1455
    .local p0, "message":Ljava/lang/Object;, "TT;"
    invoke-static {p0, p1, p2}, Lcom/google/protobuf/UnsafeUtil;->getBoolean(Ljava/lang/Object;J)Z

    move-result v0

    return v0
.end method

.method private static doubleAt(Ljava/lang/Object;J)D
    .locals 3
    .param p1, "offset"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)D"
        }
    .end annotation

    .prologue
    .line 1439
    .local p0, "message":Ljava/lang/Object;, "TT;"
    invoke-static {p0, p1, p2}, Lcom/google/protobuf/UnsafeUtil;->getDouble(Ljava/lang/Object;J)D

    move-result-wide v0

    return-wide v0
.end method

.method private static floatAt(Ljava/lang/Object;J)F
    .locals 1
    .param p1, "offset"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)F"
        }
    .end annotation

    .prologue
    .line 1443
    .local p0, "message":Ljava/lang/Object;, "TT;"
    invoke-static {p0, p1, p2}, Lcom/google/protobuf/UnsafeUtil;->getFloat(Ljava/lang/Object;J)F

    move-result v0

    return v0
.end method

.method private indexToAddress(I)J
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 1423
    .local p0, "this":Lcom/google/protobuf/Proto3Schema;, "Lcom/google/protobuf/Proto3Schema<TT;>;"
    iget-wide v0, p0, Lcom/google/protobuf/Proto3Schema;->address:J

    shl-int/lit8 v2, p1, 0x4

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private static intAt(Ljava/lang/Object;J)I
    .locals 1
    .param p1, "offset"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)I"
        }
    .end annotation

    .prologue
    .line 1447
    .local p0, "message":Ljava/lang/Object;, "TT;"
    invoke-static {p0, p1, p2}, Lcom/google/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v0

    return v0
.end method

.method private static isEnforceUtf8(I)Z
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 1431
    const/high16 v0, 0x20000000

    and-int/2addr v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isOneofPresent(Ljava/lang/Object;II)Z
    .locals 2
    .param p1, "fieldNumber"    # I
    .param p2, "presenceMaskAndOffset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;II)Z"
        }
    .end annotation

    .prologue
    .line 1479
    .local p0, "message":Ljava/lang/Object;, "TT;"
    const v0, 0xfffff

    and-int/2addr v0, p2

    int-to-long v0, v0

    invoke-static {p0, v0, v1}, Lcom/google/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static longAt(Ljava/lang/Object;J)J
    .locals 3
    .param p1, "offset"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)J"
        }
    .end annotation

    .prologue
    .line 1451
    .local p0, "message":Ljava/lang/Object;, "TT;"
    invoke-static {p0, p1, p2}, Lcom/google/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private final mergeMap(ILcom/google/protobuf/Int2ObjectHashMap;Ljava/lang/Object;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protobuf/Reader;)V
    .locals 3
    .param p1, "number"    # I
    .param p3, "mapDefaultEntry"    # Ljava/lang/Object;
    .param p4, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .param p5, "reader"    # Lcom/google/protobuf/Reader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I",
            "Lcom/google/protobuf/Int2ObjectHashMap",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            "Lcom/google/protobuf/Reader;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1355
    .local p0, "this":Lcom/google/protobuf/Proto3Schema;, "Lcom/google/protobuf/Proto3Schema<TT;>;"
    .local p2, "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    invoke-virtual {p2, p1}, Lcom/google/protobuf/Int2ObjectHashMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 1356
    .local v0, "mapField":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 1357
    iget-object v1, p0, Lcom/google/protobuf/Proto3Schema;->mapFieldSchema:Lcom/google/protobuf/MapFieldSchema;

    invoke-interface {v1, p3}, Lcom/google/protobuf/MapFieldSchema;->newMapField(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1358
    invoke-virtual {p2, p1, v0}, Lcom/google/protobuf/Int2ObjectHashMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1360
    :cond_0
    iget-object v1, p0, Lcom/google/protobuf/Proto3Schema;->mapFieldSchema:Lcom/google/protobuf/MapFieldSchema;

    .line 1361
    invoke-interface {v1, v0}, Lcom/google/protobuf/MapFieldSchema;->forMutableMapData(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/google/protobuf/Proto3Schema;->mapFieldSchema:Lcom/google/protobuf/MapFieldSchema;

    .line 1362
    invoke-interface {v2, p3}, Lcom/google/protobuf/MapFieldSchema;->forMapMetadata(Ljava/lang/Object;)Lcom/google/protobuf/MapEntryLite$Metadata;

    move-result-object v2

    .line 1360
    invoke-interface {p5, v1, v2, p4}, Lcom/google/protobuf/Reader;->readMap(Ljava/util/Map;Lcom/google/protobuf/MapEntryLite$Metadata;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 1364
    return-void
.end method

.method static newLookupSchema(Ljava/lang/Class;Lcom/google/protobuf/MessageInfo;Lcom/google/protobuf/FieldInitializer;Lcom/google/protobuf/MapFieldSchema;)Lcom/google/protobuf/Proto3Schema;
    .locals 26
    .param p1, "messageInfo"    # Lcom/google/protobuf/MessageInfo;
    .param p2, "fieldInitializer"    # Lcom/google/protobuf/FieldInitializer;
    .param p3, "mapFieldSchema"    # Lcom/google/protobuf/MapFieldSchema;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/google/protobuf/MessageInfo;",
            "Lcom/google/protobuf/FieldInitializer;",
            "Lcom/google/protobuf/MapFieldSchema;",
            ")",
            "Lcom/google/protobuf/Proto3Schema",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 172
    .local p0, "messageClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/MessageInfo;->getFields()Ljava/util/List;

    move-result-object v18

    .line 174
    .local v18, "fis":Ljava/util/List;, "Ljava/util/List<Lcom/google/protobuf/FieldInfo;>;"
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v20

    .line 175
    .local v20, "numFields":I
    mul-int/lit8 v17, v20, 0x10

    .line 176
    .local v17, "bufferLength":I
    add-int/lit8 v2, v17, 0x8

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 177
    .local v3, "buffer":Ljava/nio/ByteBuffer;
    invoke-static {v3}, Lcom/google/protobuf/UnsafeUtil;->addressOffset(Ljava/nio/ByteBuffer;)J

    move-result-wide v24

    .line 178
    .local v24, "tempAddress":J
    const-wide/16 v12, 0x7

    and-long v12, v12, v24

    const-wide/16 v14, 0x0

    cmp-long v2, v12, v14

    if-eqz v2, :cond_0

    .line 180
    const-wide/16 v12, -0x8

    and-long v12, v12, v24

    const-wide/16 v14, 0x8

    add-long v24, v12, v14

    .line 182
    :cond_0
    move-wide/from16 v4, v24

    .line 183
    .local v4, "address":J
    move/from16 v0, v17

    int-to-long v12, v0

    add-long v6, v4, v12

    .line 186
    .local v6, "limit":J
    move-wide/from16 v22, v4

    .line 187
    .local v22, "pos":J
    const/16 v19, 0x0

    .local v19, "i":I
    :goto_0
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v19

    if-ge v0, v2, :cond_1

    .line 188
    invoke-interface/range {v18 .. v19}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/FieldInfo;

    move-wide/from16 v0, v22

    invoke-static {v2, v0, v1}, Lcom/google/protobuf/Proto3Schema;->storeFieldData(Lcom/google/protobuf/FieldInfo;J)V

    .line 187
    add-int/lit8 v19, v19, 0x1

    const-wide/16 v12, 0x10

    add-long v22, v22, v12

    goto :goto_0

    .line 191
    :cond_1
    const/4 v9, -0x1

    .line 192
    .local v9, "minFieldNumber":I
    const/4 v10, -0x1

    .line 193
    .local v10, "maxFieldNumber":I
    if-lez v20, :cond_2

    .line 194
    const/4 v2, 0x0

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/FieldInfo;

    invoke-virtual {v2}, Lcom/google/protobuf/FieldInfo;->getFieldNumber()I

    move-result v9

    .line 195
    add-int/lit8 v2, v20, -0x1

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/FieldInfo;

    invoke-virtual {v2}, Lcom/google/protobuf/FieldInfo;->getFieldNumber()I

    move-result v10

    .line 197
    :cond_2
    new-instance v2, Lcom/google/protobuf/Proto3Schema;

    .line 201
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v8

    const/4 v11, 0x0

    .line 206
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/MessageInfo;->messageFieldClassMap()Lcom/google/protobuf/Int2ObjectHashMap;

    move-result-object v13

    .line 209
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/MessageInfo;->mapFieldDefaultEntryMap()Lcom/google/protobuf/Int2ObjectHashMap;

    move-result-object v16

    move-object/from16 v12, p0

    move-object/from16 v14, p2

    move-object/from16 v15, p3

    invoke-direct/range {v2 .. v16}, Lcom/google/protobuf/Proto3Schema;-><init>(Ljava/nio/ByteBuffer;JJIIIZLjava/lang/Class;Lcom/google/protobuf/Int2ObjectHashMap;Lcom/google/protobuf/FieldInitializer;Lcom/google/protobuf/MapFieldSchema;Lcom/google/protobuf/Int2ObjectHashMap;)V

    .line 197
    return-object v2
.end method

.method static newTableSchema(Ljava/lang/Class;Lcom/google/protobuf/MessageInfo;Lcom/google/protobuf/FieldInitializer;Lcom/google/protobuf/MapFieldSchema;)Lcom/google/protobuf/Proto3Schema;
    .locals 34
    .param p1, "messageInfo"    # Lcom/google/protobuf/MessageInfo;
    .param p2, "fieldInitializer"    # Lcom/google/protobuf/FieldInitializer;
    .param p3, "mapFieldSchema"    # Lcom/google/protobuf/MapFieldSchema;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/google/protobuf/MessageInfo;",
            "Lcom/google/protobuf/FieldInitializer;",
            "Lcom/google/protobuf/MapFieldSchema;",
            ")",
            "Lcom/google/protobuf/Proto3Schema",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 105
    .local p0, "messageClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/MessageInfo;->getFields()Ljava/util/List;

    move-result-object v24

    .line 110
    .local v24, "fis":Ljava/util/List;, "Ljava/util/List<Lcom/google/protobuf/FieldInfo;>;"
    invoke-interface/range {v24 .. v24}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 111
    const/4 v11, 0x0

    .line 112
    .local v11, "minFieldNumber":I
    const/4 v12, 0x0

    .line 113
    .local v12, "maxFieldNumber":I
    const/16 v25, 0x0

    .line 120
    .local v25, "numEntries":I
    :goto_0
    mul-int/lit8 v20, v25, 0x10

    .line 121
    .local v20, "bufferLength":I
    add-int/lit8 v4, v20, 0x8

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 122
    .local v5, "buffer":Ljava/nio/ByteBuffer;
    invoke-static {v5}, Lcom/google/protobuf/UnsafeUtil;->addressOffset(Ljava/nio/ByteBuffer;)J

    move-result-wide v32

    .line 123
    .local v32, "tempAddress":J
    const-wide/16 v14, 0x7

    and-long v14, v14, v32

    const-wide/16 v16, 0x0

    cmp-long v4, v14, v16

    if-eqz v4, :cond_0

    .line 125
    const-wide/16 v14, -0x8

    and-long v14, v14, v32

    const-wide/16 v16, 0x8

    add-long v32, v14, v16

    .line 127
    :cond_0
    move-wide/from16 v6, v32

    .line 128
    .local v6, "address":J
    move/from16 v0, v20

    int-to-long v14, v0

    add-long v8, v6, v14

    .line 131
    .local v8, "limit":J
    const/16 v22, 0x0

    .line 132
    .local v22, "fieldIndex":I
    const/16 v19, 0x0

    .local v19, "bufferIndex":I
    :goto_1
    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v4

    move/from16 v0, v22

    if-ge v0, v4, :cond_4

    .line 133
    move-object/from16 v0, v24

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/google/protobuf/FieldInfo;

    .line 134
    .local v21, "fi":Lcom/google/protobuf/FieldInfo;
    invoke-virtual/range {v21 .. v21}, Lcom/google/protobuf/FieldInfo;->getFieldNumber()I

    move-result v23

    .line 135
    .local v23, "fieldNumber":I
    sub-int v4, v23, v11

    shl-int/lit8 v4, v4, 0x4

    move/from16 v0, v19

    if-ge v0, v4, :cond_2

    .line 137
    move/from16 v0, v19

    int-to-long v14, v0

    add-long/2addr v14, v6

    const-wide/16 v16, 0x10

    add-long v28, v14, v16

    .line 138
    .local v28, "skipLimit":J
    move/from16 v0, v19

    int-to-long v14, v0

    add-long v30, v6, v14

    .local v30, "skipPos":J
    :goto_2
    cmp-long v4, v30, v28

    if-gez v4, :cond_3

    .line 139
    const-wide/16 v14, -0x1

    move-wide/from16 v0, v30

    invoke-static {v0, v1, v14, v15}, Lcom/google/protobuf/UnsafeUtil;->putLong(JJ)V

    .line 138
    const-wide/16 v14, 0x8

    add-long v30, v30, v14

    goto :goto_2

    .line 115
    .end local v5    # "buffer":Ljava/nio/ByteBuffer;
    .end local v6    # "address":J
    .end local v8    # "limit":J
    .end local v11    # "minFieldNumber":I
    .end local v12    # "maxFieldNumber":I
    .end local v19    # "bufferIndex":I
    .end local v20    # "bufferLength":I
    .end local v21    # "fi":Lcom/google/protobuf/FieldInfo;
    .end local v22    # "fieldIndex":I
    .end local v23    # "fieldNumber":I
    .end local v25    # "numEntries":I
    .end local v28    # "skipLimit":J
    .end local v30    # "skipPos":J
    .end local v32    # "tempAddress":J
    :cond_1
    const/4 v4, 0x0

    move-object/from16 v0, v24

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/FieldInfo;

    invoke-virtual {v4}, Lcom/google/protobuf/FieldInfo;->getFieldNumber()I

    move-result v11

    .line 116
    .restart local v11    # "minFieldNumber":I
    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, v24

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/FieldInfo;

    invoke-virtual {v4}, Lcom/google/protobuf/FieldInfo;->getFieldNumber()I

    move-result v12

    .line 117
    .restart local v12    # "maxFieldNumber":I
    sub-int v4, v12, v11

    add-int/lit8 v25, v4, 0x1

    .restart local v25    # "numEntries":I
    goto/16 :goto_0

    .line 146
    .restart local v5    # "buffer":Ljava/nio/ByteBuffer;
    .restart local v6    # "address":J
    .restart local v8    # "limit":J
    .restart local v19    # "bufferIndex":I
    .restart local v20    # "bufferLength":I
    .restart local v21    # "fi":Lcom/google/protobuf/FieldInfo;
    .restart local v22    # "fieldIndex":I
    .restart local v23    # "fieldNumber":I
    .restart local v32    # "tempAddress":J
    :cond_2
    move/from16 v0, v19

    int-to-long v14, v0

    add-long v26, v6, v14

    .line 147
    .local v26, "pos":J
    move-object/from16 v0, v21

    move-wide/from16 v1, v26

    invoke-static {v0, v1, v2}, Lcom/google/protobuf/Proto3Schema;->storeFieldData(Lcom/google/protobuf/FieldInfo;J)V

    .line 149
    add-int/lit8 v22, v22, 0x1

    .line 132
    .end local v26    # "pos":J
    :cond_3
    add-int/lit8 v19, v19, 0x10

    goto :goto_1

    .line 152
    .end local v21    # "fi":Lcom/google/protobuf/FieldInfo;
    .end local v23    # "fieldNumber":I
    :cond_4
    new-instance v4, Lcom/google/protobuf/Proto3Schema;

    .line 156
    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v10

    const/4 v13, 0x1

    .line 161
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/MessageInfo;->messageFieldClassMap()Lcom/google/protobuf/Int2ObjectHashMap;

    move-result-object v15

    .line 164
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/MessageInfo;->mapFieldDefaultEntryMap()Lcom/google/protobuf/Int2ObjectHashMap;

    move-result-object v18

    move-object/from16 v14, p0

    move-object/from16 v16, p2

    move-object/from16 v17, p3

    invoke-direct/range {v4 .. v18}, Lcom/google/protobuf/Proto3Schema;-><init>(Ljava/nio/ByteBuffer;JJIIIZLjava/lang/Class;Lcom/google/protobuf/Int2ObjectHashMap;Lcom/google/protobuf/FieldInitializer;Lcom/google/protobuf/MapFieldSchema;Lcom/google/protobuf/Int2ObjectHashMap;)V

    .line 152
    return-object v4
.end method

.method private static numberAt(J)I
    .locals 2
    .param p0, "pos"    # J

    .prologue
    .line 1415
    invoke-static {p0, p1}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v0

    return v0
.end method

.method private static offset(I)J
    .locals 2
    .param p0, "value"    # I

    .prologue
    .line 1435
    const v0, 0xfffff

    and-int/2addr v0, p0

    int-to-long v0, v0

    return-wide v0
.end method

.method private static oneofBooleanAt(Ljava/lang/Object;J)Z
    .locals 1
    .param p1, "offset"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)Z"
        }
    .end annotation

    .prologue
    .line 1475
    .local p0, "message":Ljava/lang/Object;, "TT;"
    invoke-static {p0, p1, p2}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private static oneofDoubleAt(Ljava/lang/Object;J)D
    .locals 3
    .param p1, "offset"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)D"
        }
    .end annotation

    .prologue
    .line 1459
    .local p0, "message":Ljava/lang/Object;, "TT;"
    invoke-static {p0, p1, p2}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method private static oneofFloatAt(Ljava/lang/Object;J)F
    .locals 1
    .param p1, "offset"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)F"
        }
    .end annotation

    .prologue
    .line 1463
    .local p0, "message":Ljava/lang/Object;, "TT;"
    invoke-static {p0, p1, p2}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method private static oneofIntAt(Ljava/lang/Object;J)I
    .locals 1
    .param p1, "offset"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)I"
        }
    .end annotation

    .prologue
    .line 1467
    .local p0, "message":Ljava/lang/Object;, "TT;"
    invoke-static {p0, p1, p2}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method private static oneofLongAt(Ljava/lang/Object;J)J
    .locals 3
    .param p1, "offset"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)J"
        }
    .end annotation

    .prologue
    .line 1471
    .local p0, "message":Ljava/lang/Object;, "TT;"
    invoke-static {p0, p1, p2}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method private readMessageList(Ljava/lang/Object;JLcom/google/protobuf/Reader;Ljava/lang/Class;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "offset"    # J
    .param p4, "reader"    # Lcom/google/protobuf/Reader;
    .param p6, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "J",
            "Lcom/google/protobuf/Reader;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1378
    .local p0, "this":Lcom/google/protobuf/Proto3Schema;, "Lcom/google/protobuf/Proto3Schema<TT;>;"
    .local p5, "targetType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lcom/google/protobuf/Proto3Schema;->fieldInitializer:Lcom/google/protobuf/FieldInitializer;

    .line 1379
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/protobuf/FieldInitializer;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    .line 1378
    invoke-interface {p4, v0, p5, p6}, Lcom/google/protobuf/Reader;->readMessageList(Ljava/util/List;Ljava/lang/Class;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 1380
    return-void
.end method

.method private readString(Ljava/lang/Object;ILcom/google/protobuf/Reader;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "typeAndOffset"    # I
    .param p3, "reader"    # Lcom/google/protobuf/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1391
    .local p0, "this":Lcom/google/protobuf/Proto3Schema;, "Lcom/google/protobuf/Proto3Schema<TT;>;"
    invoke-static {p2}, Lcom/google/protobuf/Proto3Schema;->isEnforceUtf8(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1393
    invoke-static {p2}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v0

    invoke-interface {p3}, Lcom/google/protobuf/Reader;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1403
    :goto_0
    return-void

    .line 1394
    :cond_0
    iget-boolean v0, p0, Lcom/google/protobuf/Proto3Schema;->lite:Z

    if-eqz v0, :cond_1

    .line 1397
    invoke-static {p2}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v0

    invoke-interface {p3}, Lcom/google/protobuf/Reader;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_0

    .line 1401
    :cond_1
    invoke-static {p2}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v0

    invoke-interface {p3}, Lcom/google/protobuf/Reader;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_0
.end method

.method private readStringList(Ljava/lang/Object;ILcom/google/protobuf/Reader;)V
    .locals 4
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "typeAndOffset"    # I
    .param p3, "reader"    # Lcom/google/protobuf/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1406
    .local p0, "this":Lcom/google/protobuf/Proto3Schema;, "Lcom/google/protobuf/Proto3Schema<TT;>;"
    invoke-static {p2}, Lcom/google/protobuf/Proto3Schema;->isEnforceUtf8(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1407
    iget-object v0, p0, Lcom/google/protobuf/Proto3Schema;->fieldInitializer:Lcom/google/protobuf/FieldInitializer;

    .line 1408
    invoke-static {p2}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v2

    invoke-virtual {v0, p1, v2, v3}, Lcom/google/protobuf/FieldInitializer;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    .line 1407
    invoke-interface {p3, v0}, Lcom/google/protobuf/Reader;->readStringListRequireUtf8(Ljava/util/List;)V

    .line 1412
    :goto_0
    return-void

    .line 1410
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/Proto3Schema;->fieldInitializer:Lcom/google/protobuf/FieldInitializer;

    invoke-static {p2}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v2

    invoke-virtual {v0, p1, v2, v3}, Lcom/google/protobuf/FieldInitializer;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    invoke-interface {p3, v0}, Lcom/google/protobuf/Reader;->readStringList(Ljava/util/List;)V

    goto :goto_0
.end method

.method private static setOneofPresent(Ljava/lang/Object;II)V
    .locals 2
    .param p1, "fieldNumber"    # I
    .param p2, "presenceMaskAndOffset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;II)V"
        }
    .end annotation

    .prologue
    .line 1483
    .local p0, "message":Ljava/lang/Object;, "TT;"
    const v0, 0xfffff

    and-int/2addr v0, p2

    int-to-long v0, v0

    invoke-static {p0, v0, v1, p1}, Lcom/google/protobuf/UnsafeUtil;->putInt(Ljava/lang/Object;JI)V

    .line 1484
    return-void
.end method

.method private static storeFieldData(Lcom/google/protobuf/FieldInfo;J)V
    .locals 11
    .param p0, "fi"    # Lcom/google/protobuf/FieldInfo;
    .param p1, "pos"    # J

    .prologue
    .line 218
    invoke-virtual {p0}, Lcom/google/protobuf/FieldInfo;->getOneof()Lcom/google/protobuf/OneofInfo;

    move-result-object v1

    .line 219
    .local v1, "oneof":Lcom/google/protobuf/OneofInfo;
    if-eqz v1, :cond_0

    .line 220
    invoke-virtual {p0}, Lcom/google/protobuf/FieldInfo;->getType()Lcom/google/protobuf/FieldType;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/protobuf/FieldType;->id()I

    move-result v6

    add-int/lit8 v5, v6, 0x33

    .line 221
    .local v5, "typeId":I
    invoke-virtual {v1}, Lcom/google/protobuf/OneofInfo;->getValueField()Ljava/lang/reflect/Field;

    move-result-object v6

    invoke-static {v6}, Lcom/google/protobuf/UnsafeUtil;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v6

    long-to-int v0, v6

    .line 222
    .local v0, "fieldOffset":I
    invoke-virtual {v1}, Lcom/google/protobuf/OneofInfo;->getCaseField()Ljava/lang/reflect/Field;

    move-result-object v6

    invoke-static {v6}, Lcom/google/protobuf/UnsafeUtil;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v6

    long-to-int v2, v6

    .line 223
    .local v2, "presenceFieldOffset":I
    const/4 v3, 0x0

    .line 232
    .local v3, "presenceMaskShift":I
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/FieldInfo;->getFieldNumber()I

    move-result v6

    invoke-static {p1, p2, v6}, Lcom/google/protobuf/UnsafeUtil;->putInt(JI)V

    .line 233
    const-wide/16 v6, 0x4

    add-long v8, p1, v6

    .line 235
    invoke-virtual {p0}, Lcom/google/protobuf/FieldInfo;->isEnforceUtf8()Z

    move-result v6

    if-eqz v6, :cond_1

    const/high16 v6, 0x20000000

    :goto_1
    shl-int/lit8 v7, v5, 0x14

    or-int/2addr v6, v7

    or-int/2addr v6, v0

    .line 233
    invoke-static {v8, v9, v6}, Lcom/google/protobuf/UnsafeUtil;->putInt(JI)V

    .line 236
    const-wide/16 v6, 0x8

    add-long/2addr v6, p1

    or-int/lit8 v8, v2, 0x0

    invoke-static {v6, v7, v8}, Lcom/google/protobuf/UnsafeUtil;->putInt(JI)V

    .line 237
    return-void

    .line 225
    .end local v0    # "fieldOffset":I
    .end local v2    # "presenceFieldOffset":I
    .end local v3    # "presenceMaskShift":I
    .end local v5    # "typeId":I
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/FieldInfo;->getType()Lcom/google/protobuf/FieldType;

    move-result-object v4

    .line 226
    .local v4, "type":Lcom/google/protobuf/FieldType;
    invoke-virtual {p0}, Lcom/google/protobuf/FieldInfo;->getField()Ljava/lang/reflect/Field;

    move-result-object v6

    invoke-static {v6}, Lcom/google/protobuf/UnsafeUtil;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v6

    long-to-int v0, v6

    .line 227
    .restart local v0    # "fieldOffset":I
    invoke-virtual {v4}, Lcom/google/protobuf/FieldType;->id()I

    move-result v5

    .line 228
    .restart local v5    # "typeId":I
    const/4 v2, 0x0

    .line 229
    .restart local v2    # "presenceFieldOffset":I
    const/4 v3, 0x0

    .restart local v3    # "presenceMaskShift":I
    goto :goto_0

    .line 235
    .end local v4    # "type":Lcom/google/protobuf/FieldType;
    :cond_1
    const/4 v6, 0x0

    goto :goto_1
.end method

.method private static type(I)I
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 1427
    const/high16 v0, 0xff00000

    and-int/2addr v0, p0

    ushr-int/lit8 v0, v0, 0x14

    return v0
.end method

.method private static typeAndOffsetAt(J)I
    .locals 2
    .param p0, "pos"    # J

    .prologue
    .line 1419
    const-wide/16 v0, 0x4

    add-long/2addr v0, p0

    invoke-static {v0, v1}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v0

    return v0
.end method

.method private writeFieldsInAscendingOrder(Ljava/lang/Object;Lcom/google/protobuf/Writer;)V
    .locals 10
    .param p2, "writer"    # Lcom/google/protobuf/Writer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/protobuf/Writer;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/protobuf/Proto3Schema;, "Lcom/google/protobuf/Proto3Schema<TT;>;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    const/4 v9, 0x1

    const/4 v8, 0x0

    const-wide/16 v6, 0x8

    .line 259
    iget-wide v2, p0, Lcom/google/protobuf/Proto3Schema;->address:J

    .local v2, "pos":J
    :goto_0
    iget-wide v4, p0, Lcom/google/protobuf/Proto3Schema;->limit:J

    cmp-long v4, v2, v4

    if-gez v4, :cond_1

    .line 260
    invoke-static {v2, v3}, Lcom/google/protobuf/Proto3Schema;->typeAndOffsetAt(J)I

    move-result v1

    .line 261
    .local v1, "typeAndOffset":I
    invoke-static {v2, v3}, Lcom/google/protobuf/Proto3Schema;->numberAt(J)I

    move-result v0

    .line 264
    .local v0, "number":I
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->type(I)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 259
    :cond_0
    :goto_1
    :pswitch_0
    const-wide/16 v4, 0x10

    add-long/2addr v2, v4

    goto :goto_0

    .line 266
    :pswitch_1
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/Proto3Schema;->doubleAt(Ljava/lang/Object;J)D

    move-result-wide v4

    invoke-static {v0, v4, v5, p2}, Lcom/google/protobuf/SchemaUtil;->writeDouble(IDLcom/google/protobuf/Writer;)V

    goto :goto_1

    .line 269
    :pswitch_2
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/Proto3Schema;->floatAt(Ljava/lang/Object;J)F

    move-result v4

    invoke-static {v0, v4, p2}, Lcom/google/protobuf/SchemaUtil;->writeFloat(IFLcom/google/protobuf/Writer;)V

    goto :goto_1

    .line 272
    :pswitch_3
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/Proto3Schema;->longAt(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {v0, v4, v5, p2}, Lcom/google/protobuf/SchemaUtil;->writeInt64(IJLcom/google/protobuf/Writer;)V

    goto :goto_1

    .line 275
    :pswitch_4
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/Proto3Schema;->longAt(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {v0, v4, v5, p2}, Lcom/google/protobuf/SchemaUtil;->writeUInt64(IJLcom/google/protobuf/Writer;)V

    goto :goto_1

    .line 278
    :pswitch_5
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/Proto3Schema;->intAt(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v0, v4, p2}, Lcom/google/protobuf/SchemaUtil;->writeInt32(IILcom/google/protobuf/Writer;)V

    goto :goto_1

    .line 281
    :pswitch_6
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/Proto3Schema;->longAt(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {v0, v4, v5, p2}, Lcom/google/protobuf/SchemaUtil;->writeFixed64(IJLcom/google/protobuf/Writer;)V

    goto :goto_1

    .line 284
    :pswitch_7
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/Proto3Schema;->intAt(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v0, v4, p2}, Lcom/google/protobuf/SchemaUtil;->writeFixed32(IILcom/google/protobuf/Writer;)V

    goto :goto_1

    .line 287
    :pswitch_8
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/Proto3Schema;->booleanAt(Ljava/lang/Object;J)Z

    move-result v4

    invoke-static {v0, v4, p2}, Lcom/google/protobuf/SchemaUtil;->writeBool(IZLcom/google/protobuf/Writer;)V

    goto :goto_1

    .line 291
    :pswitch_9
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 290
    invoke-static {v0, v4, p2}, Lcom/google/protobuf/SchemaUtil;->writeString(ILjava/lang/Object;Lcom/google/protobuf/Writer;)V

    goto :goto_1

    .line 295
    :pswitch_a
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 294
    invoke-static {v0, v4, p2}, Lcom/google/protobuf/SchemaUtil;->writeMessage(ILjava/lang/Object;Lcom/google/protobuf/Writer;)V

    goto :goto_1

    .line 299
    :pswitch_b
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/ByteString;

    .line 298
    invoke-static {v0, v4, p2}, Lcom/google/protobuf/SchemaUtil;->writeBytes(ILcom/google/protobuf/ByteString;Lcom/google/protobuf/Writer;)V

    goto/16 :goto_1

    .line 302
    :pswitch_c
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/Proto3Schema;->intAt(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v0, v4, p2}, Lcom/google/protobuf/SchemaUtil;->writeUInt32(IILcom/google/protobuf/Writer;)V

    goto/16 :goto_1

    .line 305
    :pswitch_d
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/Proto3Schema;->intAt(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v0, v4, p2}, Lcom/google/protobuf/SchemaUtil;->writeEnum(IILcom/google/protobuf/Writer;)V

    goto/16 :goto_1

    .line 308
    :pswitch_e
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/Proto3Schema;->intAt(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v0, v4, p2}, Lcom/google/protobuf/SchemaUtil;->writeSFixed32(IILcom/google/protobuf/Writer;)V

    goto/16 :goto_1

    .line 311
    :pswitch_f
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/Proto3Schema;->longAt(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {v0, v4, v5, p2}, Lcom/google/protobuf/SchemaUtil;->writeSFixed64(IJLcom/google/protobuf/Writer;)V

    goto/16 :goto_1

    .line 314
    :pswitch_10
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/Proto3Schema;->intAt(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v0, v4, p2}, Lcom/google/protobuf/SchemaUtil;->writeSInt32(IILcom/google/protobuf/Writer;)V

    goto/16 :goto_1

    .line 317
    :pswitch_11
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/Proto3Schema;->longAt(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {v0, v4, v5, p2}, Lcom/google/protobuf/SchemaUtil;->writeSInt64(IJLcom/google/protobuf/Writer;)V

    goto/16 :goto_1

    .line 325
    :pswitch_12
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 323
    invoke-static {v0, v4, p2, v8}, Lcom/google/protobuf/SchemaUtil;->writeDoubleList(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_1

    .line 332
    :pswitch_13
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 330
    invoke-static {v0, v4, p2, v8}, Lcom/google/protobuf/SchemaUtil;->writeFloatList(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_1

    .line 339
    :pswitch_14
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 337
    invoke-static {v0, v4, p2, v8}, Lcom/google/protobuf/SchemaUtil;->writeInt64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_1

    .line 346
    :pswitch_15
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 344
    invoke-static {v0, v4, p2, v8}, Lcom/google/protobuf/SchemaUtil;->writeUInt64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_1

    .line 353
    :pswitch_16
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 351
    invoke-static {v0, v4, p2, v8}, Lcom/google/protobuf/SchemaUtil;->writeInt32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_1

    .line 360
    :pswitch_17
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 358
    invoke-static {v0, v4, p2, v8}, Lcom/google/protobuf/SchemaUtil;->writeFixed64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_1

    .line 367
    :pswitch_18
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 365
    invoke-static {v0, v4, p2, v8}, Lcom/google/protobuf/SchemaUtil;->writeFixed32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_1

    .line 374
    :pswitch_19
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 372
    invoke-static {v0, v4, p2, v8}, Lcom/google/protobuf/SchemaUtil;->writeBoolList(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_1

    .line 380
    :pswitch_1a
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 379
    invoke-static {v0, v4, p2}, Lcom/google/protobuf/SchemaUtil;->writeStringList(ILjava/util/List;Lcom/google/protobuf/Writer;)V

    goto/16 :goto_1

    .line 384
    :pswitch_1b
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 383
    invoke-static {v0, v4, p2}, Lcom/google/protobuf/SchemaUtil;->writeMessageList(ILjava/util/List;Lcom/google/protobuf/Writer;)V

    goto/16 :goto_1

    .line 389
    :pswitch_1c
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 387
    invoke-static {v0, v4, p2}, Lcom/google/protobuf/SchemaUtil;->writeBytesList(ILjava/util/List;Lcom/google/protobuf/Writer;)V

    goto/16 :goto_1

    .line 395
    :pswitch_1d
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 393
    invoke-static {v0, v4, p2, v8}, Lcom/google/protobuf/SchemaUtil;->writeUInt32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_1

    .line 402
    :pswitch_1e
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 400
    invoke-static {v0, v4, p2, v8}, Lcom/google/protobuf/SchemaUtil;->writeEnumList(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_1

    .line 409
    :pswitch_1f
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 407
    invoke-static {v0, v4, p2, v8}, Lcom/google/protobuf/SchemaUtil;->writeSFixed32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_1

    .line 416
    :pswitch_20
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 414
    invoke-static {v0, v4, p2, v8}, Lcom/google/protobuf/SchemaUtil;->writeSFixed64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_1

    .line 423
    :pswitch_21
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 421
    invoke-static {v0, v4, p2, v8}, Lcom/google/protobuf/SchemaUtil;->writeSInt32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_1

    .line 430
    :pswitch_22
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 428
    invoke-static {v0, v4, p2, v8}, Lcom/google/protobuf/SchemaUtil;->writeSInt64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_1

    .line 437
    :pswitch_23
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 435
    invoke-static {v0, v4, p2, v9}, Lcom/google/protobuf/SchemaUtil;->writeDoubleList(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_1

    .line 444
    :pswitch_24
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 442
    invoke-static {v0, v4, p2, v9}, Lcom/google/protobuf/SchemaUtil;->writeFloatList(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_1

    .line 451
    :pswitch_25
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 449
    invoke-static {v0, v4, p2, v9}, Lcom/google/protobuf/SchemaUtil;->writeInt64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_1

    .line 458
    :pswitch_26
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 456
    invoke-static {v0, v4, p2, v9}, Lcom/google/protobuf/SchemaUtil;->writeUInt64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_1

    .line 465
    :pswitch_27
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 463
    invoke-static {v0, v4, p2, v9}, Lcom/google/protobuf/SchemaUtil;->writeInt32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_1

    .line 472
    :pswitch_28
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 470
    invoke-static {v0, v4, p2, v9}, Lcom/google/protobuf/SchemaUtil;->writeFixed64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_1

    .line 479
    :pswitch_29
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 477
    invoke-static {v0, v4, p2, v9}, Lcom/google/protobuf/SchemaUtil;->writeFixed32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_1

    .line 486
    :pswitch_2a
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 484
    invoke-static {v0, v4, p2, v9}, Lcom/google/protobuf/SchemaUtil;->writeBoolList(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_1

    .line 493
    :pswitch_2b
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 491
    invoke-static {v0, v4, p2, v9}, Lcom/google/protobuf/SchemaUtil;->writeUInt32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_1

    .line 500
    :pswitch_2c
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 498
    invoke-static {v0, v4, p2, v9}, Lcom/google/protobuf/SchemaUtil;->writeEnumList(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_1

    .line 507
    :pswitch_2d
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 505
    invoke-static {v0, v4, p2, v9}, Lcom/google/protobuf/SchemaUtil;->writeSFixed32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_1

    .line 514
    :pswitch_2e
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 512
    invoke-static {v0, v4, p2, v9}, Lcom/google/protobuf/SchemaUtil;->writeSFixed64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_1

    .line 521
    :pswitch_2f
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 519
    invoke-static {v0, v4, p2, v9}, Lcom/google/protobuf/SchemaUtil;->writeSInt32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_1

    .line 528
    :pswitch_30
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 526
    invoke-static {v0, v4, p2, v9}, Lcom/google/protobuf/SchemaUtil;->writeSInt64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_1

    .line 536
    :pswitch_31
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {p0, p2, v0, v4}, Lcom/google/protobuf/Proto3Schema;->writeMapHelper(Lcom/google/protobuf/Writer;ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 539
    :pswitch_32
    add-long v4, v2, v6

    invoke-static {v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v4

    invoke-static {p1, v0, v4}, Lcom/google/protobuf/Proto3Schema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 540
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/Proto3Schema;->oneofDoubleAt(Ljava/lang/Object;J)D

    move-result-wide v4

    invoke-interface {p2, v0, v4, v5}, Lcom/google/protobuf/Writer;->writeDouble(ID)V

    goto/16 :goto_1

    .line 544
    :pswitch_33
    add-long v4, v2, v6

    invoke-static {v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v4

    invoke-static {p1, v0, v4}, Lcom/google/protobuf/Proto3Schema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 545
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/Proto3Schema;->oneofFloatAt(Ljava/lang/Object;J)F

    move-result v4

    invoke-interface {p2, v0, v4}, Lcom/google/protobuf/Writer;->writeFloat(IF)V

    goto/16 :goto_1

    .line 549
    :pswitch_34
    add-long v4, v2, v6

    invoke-static {v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v4

    invoke-static {p1, v0, v4}, Lcom/google/protobuf/Proto3Schema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 550
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/Proto3Schema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-interface {p2, v0, v4, v5}, Lcom/google/protobuf/Writer;->writeInt64(IJ)V

    goto/16 :goto_1

    .line 554
    :pswitch_35
    add-long v4, v2, v6

    invoke-static {v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v4

    invoke-static {p1, v0, v4}, Lcom/google/protobuf/Proto3Schema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 555
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/Proto3Schema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-interface {p2, v0, v4, v5}, Lcom/google/protobuf/Writer;->writeUInt64(IJ)V

    goto/16 :goto_1

    .line 559
    :pswitch_36
    add-long v4, v2, v6

    invoke-static {v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v4

    invoke-static {p1, v0, v4}, Lcom/google/protobuf/Proto3Schema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 560
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/Proto3Schema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {p2, v0, v4}, Lcom/google/protobuf/Writer;->writeInt32(II)V

    goto/16 :goto_1

    .line 564
    :pswitch_37
    add-long v4, v2, v6

    invoke-static {v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v4

    invoke-static {p1, v0, v4}, Lcom/google/protobuf/Proto3Schema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 565
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/Proto3Schema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-interface {p2, v0, v4, v5}, Lcom/google/protobuf/Writer;->writeFixed64(IJ)V

    goto/16 :goto_1

    .line 569
    :pswitch_38
    add-long v4, v2, v6

    invoke-static {v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v4

    invoke-static {p1, v0, v4}, Lcom/google/protobuf/Proto3Schema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 570
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/Proto3Schema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {p2, v0, v4}, Lcom/google/protobuf/Writer;->writeFixed32(II)V

    goto/16 :goto_1

    .line 574
    :pswitch_39
    add-long v4, v2, v6

    invoke-static {v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v4

    invoke-static {p1, v0, v4}, Lcom/google/protobuf/Proto3Schema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 575
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/Proto3Schema;->oneofBooleanAt(Ljava/lang/Object;J)Z

    move-result v4

    invoke-interface {p2, v0, v4}, Lcom/google/protobuf/Writer;->writeBool(IZ)V

    goto/16 :goto_1

    .line 579
    :pswitch_3a
    add-long v4, v2, v6

    invoke-static {v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v4

    invoke-static {p1, v0, v4}, Lcom/google/protobuf/Proto3Schema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 580
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v0, v4, p2}, Lcom/google/protobuf/Proto3Schema;->writeString(ILjava/lang/Object;Lcom/google/protobuf/Writer;)V

    goto/16 :goto_1

    .line 584
    :pswitch_3b
    add-long v4, v2, v6

    invoke-static {v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v4

    invoke-static {p1, v0, v4}, Lcom/google/protobuf/Proto3Schema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 585
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p2, v0, v4}, Lcom/google/protobuf/Writer;->writeMessage(ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 589
    :pswitch_3c
    add-long v4, v2, v6

    invoke-static {v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v4

    invoke-static {p1, v0, v4}, Lcom/google/protobuf/Proto3Schema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 591
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/ByteString;

    .line 590
    invoke-interface {p2, v0, v4}, Lcom/google/protobuf/Writer;->writeBytes(ILcom/google/protobuf/ByteString;)V

    goto/16 :goto_1

    .line 595
    :pswitch_3d
    add-long v4, v2, v6

    invoke-static {v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v4

    invoke-static {p1, v0, v4}, Lcom/google/protobuf/Proto3Schema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 596
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/Proto3Schema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {p2, v0, v4}, Lcom/google/protobuf/Writer;->writeUInt32(II)V

    goto/16 :goto_1

    .line 600
    :pswitch_3e
    add-long v4, v2, v6

    invoke-static {v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v4

    invoke-static {p1, v0, v4}, Lcom/google/protobuf/Proto3Schema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 601
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/Proto3Schema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {p2, v0, v4}, Lcom/google/protobuf/Writer;->writeEnum(II)V

    goto/16 :goto_1

    .line 605
    :pswitch_3f
    add-long v4, v2, v6

    invoke-static {v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v4

    invoke-static {p1, v0, v4}, Lcom/google/protobuf/Proto3Schema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 606
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/Proto3Schema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {p2, v0, v4}, Lcom/google/protobuf/Writer;->writeSFixed32(II)V

    goto/16 :goto_1

    .line 610
    :pswitch_40
    add-long v4, v2, v6

    invoke-static {v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v4

    invoke-static {p1, v0, v4}, Lcom/google/protobuf/Proto3Schema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 611
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/Proto3Schema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-interface {p2, v0, v4, v5}, Lcom/google/protobuf/Writer;->writeSFixed64(IJ)V

    goto/16 :goto_1

    .line 615
    :pswitch_41
    add-long v4, v2, v6

    invoke-static {v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v4

    invoke-static {p1, v0, v4}, Lcom/google/protobuf/Proto3Schema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 616
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/Proto3Schema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {p2, v0, v4}, Lcom/google/protobuf/Writer;->writeSInt32(II)V

    goto/16 :goto_1

    .line 620
    :pswitch_42
    add-long v4, v2, v6

    invoke-static {v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v4

    invoke-static {p1, v0, v4}, Lcom/google/protobuf/Proto3Schema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 621
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/Proto3Schema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-interface {p2, v0, v4, v5}, Lcom/google/protobuf/Writer;->writeSInt64(IJ)V

    goto/16 :goto_1

    .line 629
    .end local v0    # "number":I
    .end local v1    # "typeAndOffset":I
    :cond_1
    return-void

    .line 264
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_0
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_2f
        :pswitch_30
        :pswitch_0
        :pswitch_31
        :pswitch_32
        :pswitch_33
        :pswitch_34
        :pswitch_35
        :pswitch_36
        :pswitch_37
        :pswitch_38
        :pswitch_39
        :pswitch_3a
        :pswitch_3b
        :pswitch_3c
        :pswitch_3d
        :pswitch_3e
        :pswitch_3f
        :pswitch_40
        :pswitch_41
        :pswitch_42
    .end packed-switch
.end method

.method private writeFieldsInDescendingOrder(Ljava/lang/Object;Lcom/google/protobuf/Writer;)V
    .locals 12
    .param p2, "writer"    # Lcom/google/protobuf/Writer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/protobuf/Writer;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/protobuf/Proto3Schema;, "Lcom/google/protobuf/Proto3Schema<TT;>;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    const-wide/16 v10, 0x10

    const/4 v9, 0x1

    const/4 v8, 0x0

    const-wide/16 v6, 0x8

    .line 633
    iget-wide v4, p0, Lcom/google/protobuf/Proto3Schema;->limit:J

    sub-long v2, v4, v10

    .local v2, "pos":J
    :goto_0
    iget-wide v4, p0, Lcom/google/protobuf/Proto3Schema;->address:J

    cmp-long v4, v2, v4

    if-ltz v4, :cond_1

    .line 634
    invoke-static {v2, v3}, Lcom/google/protobuf/Proto3Schema;->typeAndOffsetAt(J)I

    move-result v1

    .line 635
    .local v1, "typeAndOffset":I
    invoke-static {v2, v3}, Lcom/google/protobuf/Proto3Schema;->numberAt(J)I

    move-result v0

    .line 638
    .local v0, "number":I
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->type(I)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 633
    :cond_0
    :goto_1
    :pswitch_0
    sub-long/2addr v2, v10

    goto :goto_0

    .line 640
    :pswitch_1
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/Proto3Schema;->doubleAt(Ljava/lang/Object;J)D

    move-result-wide v4

    invoke-static {v0, v4, v5, p2}, Lcom/google/protobuf/SchemaUtil;->writeDouble(IDLcom/google/protobuf/Writer;)V

    goto :goto_1

    .line 643
    :pswitch_2
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/Proto3Schema;->floatAt(Ljava/lang/Object;J)F

    move-result v4

    invoke-static {v0, v4, p2}, Lcom/google/protobuf/SchemaUtil;->writeFloat(IFLcom/google/protobuf/Writer;)V

    goto :goto_1

    .line 646
    :pswitch_3
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/Proto3Schema;->longAt(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {v0, v4, v5, p2}, Lcom/google/protobuf/SchemaUtil;->writeInt64(IJLcom/google/protobuf/Writer;)V

    goto :goto_1

    .line 649
    :pswitch_4
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/Proto3Schema;->longAt(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {v0, v4, v5, p2}, Lcom/google/protobuf/SchemaUtil;->writeUInt64(IJLcom/google/protobuf/Writer;)V

    goto :goto_1

    .line 652
    :pswitch_5
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/Proto3Schema;->intAt(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v0, v4, p2}, Lcom/google/protobuf/SchemaUtil;->writeInt32(IILcom/google/protobuf/Writer;)V

    goto :goto_1

    .line 655
    :pswitch_6
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/Proto3Schema;->longAt(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {v0, v4, v5, p2}, Lcom/google/protobuf/SchemaUtil;->writeFixed64(IJLcom/google/protobuf/Writer;)V

    goto :goto_1

    .line 658
    :pswitch_7
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/Proto3Schema;->intAt(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v0, v4, p2}, Lcom/google/protobuf/SchemaUtil;->writeFixed32(IILcom/google/protobuf/Writer;)V

    goto :goto_1

    .line 661
    :pswitch_8
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/Proto3Schema;->booleanAt(Ljava/lang/Object;J)Z

    move-result v4

    invoke-static {v0, v4, p2}, Lcom/google/protobuf/SchemaUtil;->writeBool(IZLcom/google/protobuf/Writer;)V

    goto :goto_1

    .line 665
    :pswitch_9
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 664
    invoke-static {v0, v4, p2}, Lcom/google/protobuf/SchemaUtil;->writeString(ILjava/lang/Object;Lcom/google/protobuf/Writer;)V

    goto :goto_1

    .line 669
    :pswitch_a
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 668
    invoke-static {v0, v4, p2}, Lcom/google/protobuf/SchemaUtil;->writeMessage(ILjava/lang/Object;Lcom/google/protobuf/Writer;)V

    goto :goto_1

    .line 673
    :pswitch_b
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/ByteString;

    .line 672
    invoke-static {v0, v4, p2}, Lcom/google/protobuf/SchemaUtil;->writeBytes(ILcom/google/protobuf/ByteString;Lcom/google/protobuf/Writer;)V

    goto/16 :goto_1

    .line 676
    :pswitch_c
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/Proto3Schema;->intAt(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v0, v4, p2}, Lcom/google/protobuf/SchemaUtil;->writeUInt32(IILcom/google/protobuf/Writer;)V

    goto/16 :goto_1

    .line 679
    :pswitch_d
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/Proto3Schema;->intAt(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v0, v4, p2}, Lcom/google/protobuf/SchemaUtil;->writeEnum(IILcom/google/protobuf/Writer;)V

    goto/16 :goto_1

    .line 682
    :pswitch_e
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/Proto3Schema;->intAt(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v0, v4, p2}, Lcom/google/protobuf/SchemaUtil;->writeSFixed32(IILcom/google/protobuf/Writer;)V

    goto/16 :goto_1

    .line 685
    :pswitch_f
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/Proto3Schema;->longAt(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {v0, v4, v5, p2}, Lcom/google/protobuf/SchemaUtil;->writeSFixed64(IJLcom/google/protobuf/Writer;)V

    goto/16 :goto_1

    .line 688
    :pswitch_10
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/Proto3Schema;->intAt(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v0, v4, p2}, Lcom/google/protobuf/SchemaUtil;->writeSInt32(IILcom/google/protobuf/Writer;)V

    goto/16 :goto_1

    .line 691
    :pswitch_11
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/Proto3Schema;->longAt(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {v0, v4, v5, p2}, Lcom/google/protobuf/SchemaUtil;->writeSInt64(IJLcom/google/protobuf/Writer;)V

    goto/16 :goto_1

    .line 699
    :pswitch_12
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 697
    invoke-static {v0, v4, p2, v8}, Lcom/google/protobuf/SchemaUtil;->writeDoubleList(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_1

    .line 706
    :pswitch_13
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 704
    invoke-static {v0, v4, p2, v8}, Lcom/google/protobuf/SchemaUtil;->writeFloatList(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_1

    .line 713
    :pswitch_14
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 711
    invoke-static {v0, v4, p2, v8}, Lcom/google/protobuf/SchemaUtil;->writeInt64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_1

    .line 720
    :pswitch_15
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 718
    invoke-static {v0, v4, p2, v8}, Lcom/google/protobuf/SchemaUtil;->writeUInt64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_1

    .line 727
    :pswitch_16
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 725
    invoke-static {v0, v4, p2, v8}, Lcom/google/protobuf/SchemaUtil;->writeInt32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_1

    .line 734
    :pswitch_17
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 732
    invoke-static {v0, v4, p2, v8}, Lcom/google/protobuf/SchemaUtil;->writeFixed64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_1

    .line 741
    :pswitch_18
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 739
    invoke-static {v0, v4, p2, v8}, Lcom/google/protobuf/SchemaUtil;->writeFixed32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_1

    .line 748
    :pswitch_19
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 746
    invoke-static {v0, v4, p2, v8}, Lcom/google/protobuf/SchemaUtil;->writeBoolList(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_1

    .line 754
    :pswitch_1a
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 753
    invoke-static {v0, v4, p2}, Lcom/google/protobuf/SchemaUtil;->writeStringList(ILjava/util/List;Lcom/google/protobuf/Writer;)V

    goto/16 :goto_1

    .line 758
    :pswitch_1b
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 757
    invoke-static {v0, v4, p2}, Lcom/google/protobuf/SchemaUtil;->writeMessageList(ILjava/util/List;Lcom/google/protobuf/Writer;)V

    goto/16 :goto_1

    .line 763
    :pswitch_1c
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 761
    invoke-static {v0, v4, p2}, Lcom/google/protobuf/SchemaUtil;->writeBytesList(ILjava/util/List;Lcom/google/protobuf/Writer;)V

    goto/16 :goto_1

    .line 769
    :pswitch_1d
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 767
    invoke-static {v0, v4, p2, v8}, Lcom/google/protobuf/SchemaUtil;->writeUInt32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_1

    .line 776
    :pswitch_1e
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 774
    invoke-static {v0, v4, p2, v8}, Lcom/google/protobuf/SchemaUtil;->writeEnumList(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_1

    .line 783
    :pswitch_1f
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 781
    invoke-static {v0, v4, p2, v8}, Lcom/google/protobuf/SchemaUtil;->writeSFixed32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_1

    .line 790
    :pswitch_20
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 788
    invoke-static {v0, v4, p2, v8}, Lcom/google/protobuf/SchemaUtil;->writeSFixed64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_1

    .line 797
    :pswitch_21
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 795
    invoke-static {v0, v4, p2, v8}, Lcom/google/protobuf/SchemaUtil;->writeSInt32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_1

    .line 804
    :pswitch_22
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 802
    invoke-static {v0, v4, p2, v8}, Lcom/google/protobuf/SchemaUtil;->writeSInt64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_1

    .line 811
    :pswitch_23
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 809
    invoke-static {v0, v4, p2, v9}, Lcom/google/protobuf/SchemaUtil;->writeDoubleList(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_1

    .line 818
    :pswitch_24
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 816
    invoke-static {v0, v4, p2, v9}, Lcom/google/protobuf/SchemaUtil;->writeFloatList(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_1

    .line 825
    :pswitch_25
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 823
    invoke-static {v0, v4, p2, v9}, Lcom/google/protobuf/SchemaUtil;->writeInt64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_1

    .line 832
    :pswitch_26
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 830
    invoke-static {v0, v4, p2, v9}, Lcom/google/protobuf/SchemaUtil;->writeUInt64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_1

    .line 839
    :pswitch_27
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 837
    invoke-static {v0, v4, p2, v9}, Lcom/google/protobuf/SchemaUtil;->writeInt32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_1

    .line 846
    :pswitch_28
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 844
    invoke-static {v0, v4, p2, v9}, Lcom/google/protobuf/SchemaUtil;->writeFixed64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_1

    .line 853
    :pswitch_29
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 851
    invoke-static {v0, v4, p2, v9}, Lcom/google/protobuf/SchemaUtil;->writeFixed32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_1

    .line 860
    :pswitch_2a
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 858
    invoke-static {v0, v4, p2, v9}, Lcom/google/protobuf/SchemaUtil;->writeBoolList(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_1

    .line 867
    :pswitch_2b
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 865
    invoke-static {v0, v4, p2, v9}, Lcom/google/protobuf/SchemaUtil;->writeUInt32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_1

    .line 874
    :pswitch_2c
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 872
    invoke-static {v0, v4, p2, v9}, Lcom/google/protobuf/SchemaUtil;->writeEnumList(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_1

    .line 881
    :pswitch_2d
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 879
    invoke-static {v0, v4, p2, v9}, Lcom/google/protobuf/SchemaUtil;->writeSFixed32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_1

    .line 888
    :pswitch_2e
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 886
    invoke-static {v0, v4, p2, v9}, Lcom/google/protobuf/SchemaUtil;->writeSFixed64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_1

    .line 895
    :pswitch_2f
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 893
    invoke-static {v0, v4, p2, v9}, Lcom/google/protobuf/SchemaUtil;->writeSInt32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_1

    .line 902
    :pswitch_30
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 900
    invoke-static {v0, v4, p2, v9}, Lcom/google/protobuf/SchemaUtil;->writeSInt64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_1

    .line 910
    :pswitch_31
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {p0, p2, v0, v4}, Lcom/google/protobuf/Proto3Schema;->writeMapHelper(Lcom/google/protobuf/Writer;ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 913
    :pswitch_32
    add-long v4, v2, v6

    invoke-static {v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v4

    invoke-static {p1, v0, v4}, Lcom/google/protobuf/Proto3Schema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 914
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/Proto3Schema;->oneofDoubleAt(Ljava/lang/Object;J)D

    move-result-wide v4

    invoke-interface {p2, v0, v4, v5}, Lcom/google/protobuf/Writer;->writeDouble(ID)V

    goto/16 :goto_1

    .line 918
    :pswitch_33
    add-long v4, v2, v6

    invoke-static {v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v4

    invoke-static {p1, v0, v4}, Lcom/google/protobuf/Proto3Schema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 919
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/Proto3Schema;->oneofFloatAt(Ljava/lang/Object;J)F

    move-result v4

    invoke-interface {p2, v0, v4}, Lcom/google/protobuf/Writer;->writeFloat(IF)V

    goto/16 :goto_1

    .line 923
    :pswitch_34
    add-long v4, v2, v6

    invoke-static {v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v4

    invoke-static {p1, v0, v4}, Lcom/google/protobuf/Proto3Schema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 924
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/Proto3Schema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-interface {p2, v0, v4, v5}, Lcom/google/protobuf/Writer;->writeInt64(IJ)V

    goto/16 :goto_1

    .line 928
    :pswitch_35
    add-long v4, v2, v6

    invoke-static {v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v4

    invoke-static {p1, v0, v4}, Lcom/google/protobuf/Proto3Schema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 929
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/Proto3Schema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-interface {p2, v0, v4, v5}, Lcom/google/protobuf/Writer;->writeUInt64(IJ)V

    goto/16 :goto_1

    .line 933
    :pswitch_36
    add-long v4, v2, v6

    invoke-static {v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v4

    invoke-static {p1, v0, v4}, Lcom/google/protobuf/Proto3Schema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 934
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/Proto3Schema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {p2, v0, v4}, Lcom/google/protobuf/Writer;->writeInt32(II)V

    goto/16 :goto_1

    .line 938
    :pswitch_37
    add-long v4, v2, v6

    invoke-static {v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v4

    invoke-static {p1, v0, v4}, Lcom/google/protobuf/Proto3Schema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 939
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/Proto3Schema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-interface {p2, v0, v4, v5}, Lcom/google/protobuf/Writer;->writeFixed64(IJ)V

    goto/16 :goto_1

    .line 943
    :pswitch_38
    add-long v4, v2, v6

    invoke-static {v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v4

    invoke-static {p1, v0, v4}, Lcom/google/protobuf/Proto3Schema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 944
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/Proto3Schema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {p2, v0, v4}, Lcom/google/protobuf/Writer;->writeFixed32(II)V

    goto/16 :goto_1

    .line 948
    :pswitch_39
    add-long v4, v2, v6

    invoke-static {v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v4

    invoke-static {p1, v0, v4}, Lcom/google/protobuf/Proto3Schema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 949
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/Proto3Schema;->oneofBooleanAt(Ljava/lang/Object;J)Z

    move-result v4

    invoke-interface {p2, v0, v4}, Lcom/google/protobuf/Writer;->writeBool(IZ)V

    goto/16 :goto_1

    .line 953
    :pswitch_3a
    add-long v4, v2, v6

    invoke-static {v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v4

    invoke-static {p1, v0, v4}, Lcom/google/protobuf/Proto3Schema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 954
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v0, v4, p2}, Lcom/google/protobuf/Proto3Schema;->writeString(ILjava/lang/Object;Lcom/google/protobuf/Writer;)V

    goto/16 :goto_1

    .line 958
    :pswitch_3b
    add-long v4, v2, v6

    invoke-static {v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v4

    invoke-static {p1, v0, v4}, Lcom/google/protobuf/Proto3Schema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 959
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p2, v0, v4}, Lcom/google/protobuf/Writer;->writeMessage(ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 963
    :pswitch_3c
    add-long v4, v2, v6

    invoke-static {v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v4

    invoke-static {p1, v0, v4}, Lcom/google/protobuf/Proto3Schema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 965
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/ByteString;

    .line 964
    invoke-interface {p2, v0, v4}, Lcom/google/protobuf/Writer;->writeBytes(ILcom/google/protobuf/ByteString;)V

    goto/16 :goto_1

    .line 969
    :pswitch_3d
    add-long v4, v2, v6

    invoke-static {v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v4

    invoke-static {p1, v0, v4}, Lcom/google/protobuf/Proto3Schema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 970
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/Proto3Schema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {p2, v0, v4}, Lcom/google/protobuf/Writer;->writeUInt32(II)V

    goto/16 :goto_1

    .line 974
    :pswitch_3e
    add-long v4, v2, v6

    invoke-static {v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v4

    invoke-static {p1, v0, v4}, Lcom/google/protobuf/Proto3Schema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 975
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/Proto3Schema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {p2, v0, v4}, Lcom/google/protobuf/Writer;->writeEnum(II)V

    goto/16 :goto_1

    .line 979
    :pswitch_3f
    add-long v4, v2, v6

    invoke-static {v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v4

    invoke-static {p1, v0, v4}, Lcom/google/protobuf/Proto3Schema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 980
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/Proto3Schema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {p2, v0, v4}, Lcom/google/protobuf/Writer;->writeSFixed32(II)V

    goto/16 :goto_1

    .line 984
    :pswitch_40
    add-long v4, v2, v6

    invoke-static {v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v4

    invoke-static {p1, v0, v4}, Lcom/google/protobuf/Proto3Schema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 985
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/Proto3Schema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-interface {p2, v0, v4, v5}, Lcom/google/protobuf/Writer;->writeSFixed64(IJ)V

    goto/16 :goto_1

    .line 989
    :pswitch_41
    add-long v4, v2, v6

    invoke-static {v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v4

    invoke-static {p1, v0, v4}, Lcom/google/protobuf/Proto3Schema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 990
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/Proto3Schema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {p2, v0, v4}, Lcom/google/protobuf/Writer;->writeSInt32(II)V

    goto/16 :goto_1

    .line 994
    :pswitch_42
    add-long v4, v2, v6

    invoke-static {v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v4

    invoke-static {p1, v0, v4}, Lcom/google/protobuf/Proto3Schema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 995
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/Proto3Schema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-interface {p2, v0, v4, v5}, Lcom/google/protobuf/Writer;->writeSInt64(IJ)V

    goto/16 :goto_1

    .line 1003
    .end local v0    # "number":I
    .end local v1    # "typeAndOffset":I
    :cond_1
    return-void

    .line 638
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_0
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_2f
        :pswitch_30
        :pswitch_0
        :pswitch_31
        :pswitch_32
        :pswitch_33
        :pswitch_34
        :pswitch_35
        :pswitch_36
        :pswitch_37
        :pswitch_38
        :pswitch_39
        :pswitch_3a
        :pswitch_3b
        :pswitch_3c
        :pswitch_3d
        :pswitch_3e
        :pswitch_3f
        :pswitch_40
        :pswitch_41
        :pswitch_42
    .end packed-switch
.end method

.method private writeMapHelper(Lcom/google/protobuf/Writer;ILjava/lang/Object;)V
    .locals 2
    .param p1, "writer"    # Lcom/google/protobuf/Writer;
    .param p2, "number"    # I
    .param p3, "mapField"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/Writer;",
            "I",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1007
    .local p0, "this":Lcom/google/protobuf/Proto3Schema;, "Lcom/google/protobuf/Proto3Schema<TT;>;"
    iget-object v0, p0, Lcom/google/protobuf/Proto3Schema;->mapFieldSchema:Lcom/google/protobuf/MapFieldSchema;

    iget-object v1, p0, Lcom/google/protobuf/Proto3Schema;->mapFieldDefaultEntryMap:Lcom/google/protobuf/Int2ObjectHashMap;

    .line 1010
    invoke-virtual {v1, p2}, Lcom/google/protobuf/Int2ObjectHashMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/MapFieldSchema;->forMapMetadata(Ljava/lang/Object;)Lcom/google/protobuf/MapEntryLite$Metadata;

    move-result-object v0

    iget-object v1, p0, Lcom/google/protobuf/Proto3Schema;->mapFieldSchema:Lcom/google/protobuf/MapFieldSchema;

    .line 1011
    invoke-interface {v1, p3}, Lcom/google/protobuf/MapFieldSchema;->forMapData(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    .line 1007
    invoke-interface {p1, p2, v0, v1}, Lcom/google/protobuf/Writer;->writeMap(ILcom/google/protobuf/MapEntryLite$Metadata;Ljava/util/Map;)V

    .line 1012
    return-void
.end method

.method private static writeString(ILjava/lang/Object;Lcom/google/protobuf/Writer;)V
    .locals 1
    .param p0, "fieldNumber"    # I
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "writer"    # Lcom/google/protobuf/Writer;

    .prologue
    .line 1383
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1384
    check-cast p1, Ljava/lang/String;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-interface {p2, p0, p1}, Lcom/google/protobuf/Writer;->writeString(ILjava/lang/String;)V

    .line 1388
    :goto_0
    return-void

    .line 1386
    .restart local p1    # "value":Ljava/lang/Object;
    :cond_0
    check-cast p1, Lcom/google/protobuf/ByteString;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-interface {p2, p0, p1}, Lcom/google/protobuf/Writer;->writeBytes(ILcom/google/protobuf/ByteString;)V

    goto :goto_0
.end method


# virtual methods
.method public isInitialized(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 1368
    .local p0, "this":Lcom/google/protobuf/Proto3Schema;, "Lcom/google/protobuf/Proto3Schema<TT;>;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Ljava/lang/Object;Lcom/google/protobuf/Reader;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 20
    .param p2, "reader"    # Lcom/google/protobuf/Reader;
    .param p3, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/protobuf/Reader;",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1018
    .local p0, "this":Lcom/google/protobuf/Proto3Schema;, "Lcom/google/protobuf/Proto3Schema<TT;>;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    const/4 v6, 0x0

    .local v6, "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    move-object v13, v6

    .line 1021
    .end local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .local v13, "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface/range {p2 .. p2}, Lcom/google/protobuf/Reader;->getFieldNumber()I

    move-result v5

    .line 1022
    .local v5, "number":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/protobuf/Proto3Schema;->positionStrategy:Lcom/google/protobuf/Proto3Schema$PositionStrategy;

    invoke-virtual {v4, v5}, Lcom/google/protobuf/Proto3Schema$PositionStrategy;->positionForFieldNumber(I)J

    move-result-wide v14

    .line 1023
    .local v14, "pos":J
    const-wide/16 v8, 0x0

    cmp-long v4, v14, v8

    if-gez v4, :cond_3

    .line 1025
    invoke-interface/range {p2 .. p2}, Lcom/google/protobuf/Reader;->skipField()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-nez v4, :cond_0

    .line 1337
    if-eqz v13, :cond_1

    .line 1338
    invoke-virtual {v13}, Lcom/google/protobuf/Int2ObjectHashMap;->entries()Ljava/lang/Iterable;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveEntry;

    .line 1339
    .local v12, "entry":Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveEntry;, "Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveEntry<Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/protobuf/Proto3Schema;->positionStrategy:Lcom/google/protobuf/Proto3Schema$PositionStrategy;

    invoke-interface {v12}, Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveEntry;->key()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/google/protobuf/Proto3Schema$PositionStrategy;->positionForFieldNumber(I)J

    move-result-wide v14

    .line 1341
    invoke-static {v14, v15}, Lcom/google/protobuf/Proto3Schema;->typeAndOffsetAt(J)I

    move-result v7

    invoke-static {v7}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/protobuf/Proto3Schema;->mapFieldSchema:Lcom/google/protobuf/MapFieldSchema;

    invoke-interface {v12}, Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveEntry;->value()Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v7, v10}, Lcom/google/protobuf/MapFieldSchema;->toImmutable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 1340
    move-object/from16 v0, p1

    invoke-static {v0, v8, v9, v7}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_1

    .end local v12    # "entry":Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveEntry;, "Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveEntry<Ljava/lang/Object;>;"
    :cond_1
    move-object v6, v13

    .line 1332
    .end local v5    # "number":I
    .end local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :cond_2
    :goto_2
    return-void

    .line 1031
    .end local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v5    # "number":I
    .restart local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :cond_3
    :try_start_1
    invoke-static {v14, v15}, Lcom/google/protobuf/Proto3Schema;->typeAndOffsetAt(J)I

    move-result v17

    .line 1032
    .local v17, "typeAndOffset":I
    const-wide/16 v8, 0x8

    add-long/2addr v8, v14

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v16

    .line 1035
    .local v16, "presenceMaskAndOffset":I
    :try_start_2
    invoke-static/range {v17 .. v17}, Lcom/google/protobuf/Proto3Schema;->type(I)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 1321
    invoke-interface/range {p2 .. p2}, Lcom/google/protobuf/Reader;->skipField()Z
    :try_end_2
    .catch Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v4

    if-nez v4, :cond_7

    .line 1337
    if-eqz v13, :cond_5

    .line 1338
    invoke-virtual {v13}, Lcom/google/protobuf/Int2ObjectHashMap;->entries()Ljava/lang/Iterable;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveEntry;

    .line 1339
    .restart local v12    # "entry":Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveEntry;, "Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveEntry<Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/protobuf/Proto3Schema;->positionStrategy:Lcom/google/protobuf/Proto3Schema$PositionStrategy;

    invoke-interface {v12}, Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveEntry;->key()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/google/protobuf/Proto3Schema$PositionStrategy;->positionForFieldNumber(I)J

    move-result-wide v14

    .line 1341
    invoke-static {v14, v15}, Lcom/google/protobuf/Proto3Schema;->typeAndOffsetAt(J)I

    move-result v7

    invoke-static {v7}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/protobuf/Proto3Schema;->mapFieldSchema:Lcom/google/protobuf/MapFieldSchema;

    invoke-interface {v12}, Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveEntry;->value()Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v7, v10}, Lcom/google/protobuf/MapFieldSchema;->toImmutable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 1340
    move-object/from16 v0, p1

    invoke-static {v0, v8, v9, v7}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_3

    .line 1037
    .end local v12    # "entry":Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveEntry;, "Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveEntry<Ljava/lang/Object;>;"
    :pswitch_0
    :try_start_3
    invoke-static/range {v17 .. v17}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v8

    invoke-interface/range {p2 .. p2}, Lcom/google/protobuf/Reader;->readDouble()D

    move-result-wide v18

    move-object/from16 v0, p1

    move-wide/from16 v1, v18

    invoke-static {v0, v8, v9, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->putDouble(Ljava/lang/Object;JD)V

    move-object v6, v13

    .end local v5    # "number":I
    .end local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :cond_4
    :goto_4
    move-object v13, v6

    .line 1335
    .end local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto/16 :goto_0

    .line 1040
    .restart local v5    # "number":I
    :pswitch_1
    invoke-static/range {v17 .. v17}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v8

    invoke-interface/range {p2 .. p2}, Lcom/google/protobuf/Reader;->readFloat()F

    move-result v4

    move-object/from16 v0, p1

    invoke-static {v0, v8, v9, v4}, Lcom/google/protobuf/UnsafeUtil;->putFloat(Ljava/lang/Object;JF)V

    move-object v6, v13

    .line 1041
    .end local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto :goto_4

    .line 1043
    .end local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_2
    invoke-static/range {v17 .. v17}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v8

    invoke-interface/range {p2 .. p2}, Lcom/google/protobuf/Reader;->readInt64()J

    move-result-wide v18

    move-object/from16 v0, p1

    move-wide/from16 v1, v18

    invoke-static {v0, v8, v9, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->putLong(Ljava/lang/Object;JJ)V

    move-object v6, v13

    .line 1044
    .end local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto :goto_4

    .line 1046
    .end local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_3
    invoke-static/range {v17 .. v17}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v8

    invoke-interface/range {p2 .. p2}, Lcom/google/protobuf/Reader;->readUInt64()J

    move-result-wide v18

    move-object/from16 v0, p1

    move-wide/from16 v1, v18

    invoke-static {v0, v8, v9, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->putLong(Ljava/lang/Object;JJ)V

    move-object v6, v13

    .line 1047
    .end local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto :goto_4

    .line 1049
    .end local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_4
    invoke-static/range {v17 .. v17}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v8

    invoke-interface/range {p2 .. p2}, Lcom/google/protobuf/Reader;->readInt32()I

    move-result v4

    move-object/from16 v0, p1

    invoke-static {v0, v8, v9, v4}, Lcom/google/protobuf/UnsafeUtil;->putInt(Ljava/lang/Object;JI)V

    move-object v6, v13

    .line 1050
    .end local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto :goto_4

    .line 1052
    .end local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_5
    invoke-static/range {v17 .. v17}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v8

    invoke-interface/range {p2 .. p2}, Lcom/google/protobuf/Reader;->readFixed64()J

    move-result-wide v18

    move-object/from16 v0, p1

    move-wide/from16 v1, v18

    invoke-static {v0, v8, v9, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->putLong(Ljava/lang/Object;JJ)V

    move-object v6, v13

    .line 1053
    .end local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto :goto_4

    .line 1055
    .end local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_6
    invoke-static/range {v17 .. v17}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v8

    invoke-interface/range {p2 .. p2}, Lcom/google/protobuf/Reader;->readFixed32()I

    move-result v4

    move-object/from16 v0, p1

    invoke-static {v0, v8, v9, v4}, Lcom/google/protobuf/UnsafeUtil;->putInt(Ljava/lang/Object;JI)V

    move-object v6, v13

    .line 1056
    .end local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto :goto_4

    .line 1058
    .end local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_7
    invoke-static/range {v17 .. v17}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v8

    invoke-interface/range {p2 .. p2}, Lcom/google/protobuf/Reader;->readBool()Z

    move-result v4

    move-object/from16 v0, p1

    invoke-static {v0, v8, v9, v4}, Lcom/google/protobuf/UnsafeUtil;->putBoolean(Ljava/lang/Object;JZ)V

    move-object v6, v13

    .line 1059
    .end local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto :goto_4

    .line 1061
    .end local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_8
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v17

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/Proto3Schema;->readString(Ljava/lang/Object;ILcom/google/protobuf/Reader;)V

    move-object v6, v13

    .line 1062
    .end local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto :goto_4

    .line 1066
    .end local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_9
    invoke-static/range {v17 .. v17}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/protobuf/Proto3Schema;->messageFieldClassMap:Lcom/google/protobuf/Int2ObjectHashMap;

    .line 1067
    invoke-virtual {v4, v5}, Lcom/google/protobuf/Int2ObjectHashMap;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-interface {v0, v4, v1}, Lcom/google/protobuf/Reader;->readMessage(Ljava/lang/Class;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v4

    .line 1064
    move-object/from16 v0, p1

    invoke-static {v0, v8, v9, v4}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object v6, v13

    .line 1068
    .end local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto/16 :goto_4

    .line 1070
    .end local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_a
    invoke-static/range {v17 .. v17}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v8

    invoke-interface/range {p2 .. p2}, Lcom/google/protobuf/Reader;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-static {v0, v8, v9, v4}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object v6, v13

    .line 1071
    .end local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto/16 :goto_4

    .line 1073
    .end local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_b
    invoke-static/range {v17 .. v17}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v8

    invoke-interface/range {p2 .. p2}, Lcom/google/protobuf/Reader;->readUInt32()I

    move-result v4

    move-object/from16 v0, p1

    invoke-static {v0, v8, v9, v4}, Lcom/google/protobuf/UnsafeUtil;->putInt(Ljava/lang/Object;JI)V

    move-object v6, v13

    .line 1074
    .end local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto/16 :goto_4

    .line 1076
    .end local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_c
    invoke-static/range {v17 .. v17}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v8

    invoke-interface/range {p2 .. p2}, Lcom/google/protobuf/Reader;->readEnum()I

    move-result v4

    move-object/from16 v0, p1

    invoke-static {v0, v8, v9, v4}, Lcom/google/protobuf/UnsafeUtil;->putInt(Ljava/lang/Object;JI)V

    move-object v6, v13

    .line 1077
    .end local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto/16 :goto_4

    .line 1079
    .end local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_d
    invoke-static/range {v17 .. v17}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v8

    invoke-interface/range {p2 .. p2}, Lcom/google/protobuf/Reader;->readSFixed32()I

    move-result v4

    move-object/from16 v0, p1

    invoke-static {v0, v8, v9, v4}, Lcom/google/protobuf/UnsafeUtil;->putInt(Ljava/lang/Object;JI)V

    move-object v6, v13

    .line 1080
    .end local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto/16 :goto_4

    .line 1082
    .end local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_e
    invoke-static/range {v17 .. v17}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v8

    invoke-interface/range {p2 .. p2}, Lcom/google/protobuf/Reader;->readSFixed64()J

    move-result-wide v18

    move-object/from16 v0, p1

    move-wide/from16 v1, v18

    invoke-static {v0, v8, v9, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->putLong(Ljava/lang/Object;JJ)V

    move-object v6, v13

    .line 1083
    .end local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto/16 :goto_4

    .line 1085
    .end local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_f
    invoke-static/range {v17 .. v17}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v8

    invoke-interface/range {p2 .. p2}, Lcom/google/protobuf/Reader;->readSInt32()I

    move-result v4

    move-object/from16 v0, p1

    invoke-static {v0, v8, v9, v4}, Lcom/google/protobuf/UnsafeUtil;->putInt(Ljava/lang/Object;JI)V

    move-object v6, v13

    .line 1086
    .end local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto/16 :goto_4

    .line 1088
    .end local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_10
    invoke-static/range {v17 .. v17}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v8

    invoke-interface/range {p2 .. p2}, Lcom/google/protobuf/Reader;->readSInt64()J

    move-result-wide v18

    move-object/from16 v0, p1

    move-wide/from16 v1, v18

    invoke-static {v0, v8, v9, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->putLong(Ljava/lang/Object;JJ)V

    move-object v6, v13

    .line 1089
    .end local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto/16 :goto_4

    .end local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_11
    move-object v6, v13

    .line 1092
    .end local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto/16 :goto_4

    .line 1094
    .end local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_12
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/protobuf/Proto3Schema;->fieldInitializer:Lcom/google/protobuf/FieldInitializer;

    .line 1095
    invoke-static/range {v17 .. v17}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v8

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/google/protobuf/FieldInitializer;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 1094
    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Lcom/google/protobuf/Reader;->readDoubleList(Ljava/util/List;)V

    move-object v6, v13

    .line 1096
    .end local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto/16 :goto_4

    .line 1098
    .end local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_13
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/protobuf/Proto3Schema;->fieldInitializer:Lcom/google/protobuf/FieldInitializer;

    .line 1099
    invoke-static/range {v17 .. v17}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v8

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/google/protobuf/FieldInitializer;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 1098
    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Lcom/google/protobuf/Reader;->readFloatList(Ljava/util/List;)V

    move-object v6, v13

    .line 1100
    .end local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto/16 :goto_4

    .line 1102
    .end local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_14
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/protobuf/Proto3Schema;->fieldInitializer:Lcom/google/protobuf/FieldInitializer;

    .line 1103
    invoke-static/range {v17 .. v17}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v8

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/google/protobuf/FieldInitializer;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 1102
    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Lcom/google/protobuf/Reader;->readInt64List(Ljava/util/List;)V

    move-object v6, v13

    .line 1104
    .end local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto/16 :goto_4

    .line 1106
    .end local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_15
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/protobuf/Proto3Schema;->fieldInitializer:Lcom/google/protobuf/FieldInitializer;

    .line 1107
    invoke-static/range {v17 .. v17}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v8

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/google/protobuf/FieldInitializer;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 1106
    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Lcom/google/protobuf/Reader;->readUInt64List(Ljava/util/List;)V

    move-object v6, v13

    .line 1108
    .end local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto/16 :goto_4

    .line 1110
    .end local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_16
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/protobuf/Proto3Schema;->fieldInitializer:Lcom/google/protobuf/FieldInitializer;

    .line 1111
    invoke-static/range {v17 .. v17}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v8

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/google/protobuf/FieldInitializer;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 1110
    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Lcom/google/protobuf/Reader;->readInt32List(Ljava/util/List;)V

    move-object v6, v13

    .line 1112
    .end local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto/16 :goto_4

    .line 1114
    .end local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_17
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/protobuf/Proto3Schema;->fieldInitializer:Lcom/google/protobuf/FieldInitializer;

    .line 1115
    invoke-static/range {v17 .. v17}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v8

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/google/protobuf/FieldInitializer;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 1114
    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Lcom/google/protobuf/Reader;->readFixed64List(Ljava/util/List;)V

    move-object v6, v13

    .line 1116
    .end local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto/16 :goto_4

    .line 1118
    .end local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_18
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/protobuf/Proto3Schema;->fieldInitializer:Lcom/google/protobuf/FieldInitializer;

    .line 1119
    invoke-static/range {v17 .. v17}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v8

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/google/protobuf/FieldInitializer;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 1118
    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Lcom/google/protobuf/Reader;->readFixed32List(Ljava/util/List;)V

    move-object v6, v13

    .line 1120
    .end local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto/16 :goto_4

    .line 1122
    .end local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_19
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/protobuf/Proto3Schema;->fieldInitializer:Lcom/google/protobuf/FieldInitializer;

    .line 1123
    invoke-static/range {v17 .. v17}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v8

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/google/protobuf/FieldInitializer;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 1122
    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Lcom/google/protobuf/Reader;->readBoolList(Ljava/util/List;)V

    move-object v6, v13

    .line 1124
    .end local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto/16 :goto_4

    .line 1126
    .end local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_1a
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v17

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/Proto3Schema;->readStringList(Ljava/lang/Object;ILcom/google/protobuf/Reader;)V

    move-object v6, v13

    .line 1127
    .end local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto/16 :goto_4

    .line 1131
    .end local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_1b
    invoke-static/range {v17 .. v17}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/protobuf/Proto3Schema;->messageFieldClassMap:Lcom/google/protobuf/Int2ObjectHashMap;

    .line 1133
    invoke-virtual {v4, v5}, Lcom/google/protobuf/Int2ObjectHashMap;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Class;

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v8, p2

    move-object/from16 v10, p3

    .line 1129
    invoke-direct/range {v4 .. v10}, Lcom/google/protobuf/Proto3Schema;->readMessageList(Ljava/lang/Object;JLcom/google/protobuf/Reader;Ljava/lang/Class;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .end local v5    # "number":I
    move-object v6, v13

    .line 1135
    .end local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto/16 :goto_4

    .line 1137
    .end local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v5    # "number":I
    .restart local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_1c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/protobuf/Proto3Schema;->fieldInitializer:Lcom/google/protobuf/FieldInitializer;

    .line 1138
    invoke-static/range {v17 .. v17}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v8

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/google/protobuf/FieldInitializer;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 1137
    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Lcom/google/protobuf/Reader;->readBytesList(Ljava/util/List;)V

    move-object v6, v13

    .line 1139
    .end local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto/16 :goto_4

    .line 1141
    .end local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_1d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/protobuf/Proto3Schema;->fieldInitializer:Lcom/google/protobuf/FieldInitializer;

    .line 1142
    invoke-static/range {v17 .. v17}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v8

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/google/protobuf/FieldInitializer;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 1141
    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Lcom/google/protobuf/Reader;->readUInt32List(Ljava/util/List;)V

    move-object v6, v13

    .line 1143
    .end local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto/16 :goto_4

    .line 1145
    .end local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_1e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/protobuf/Proto3Schema;->fieldInitializer:Lcom/google/protobuf/FieldInitializer;

    .line 1146
    invoke-static/range {v17 .. v17}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v8

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/google/protobuf/FieldInitializer;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 1145
    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Lcom/google/protobuf/Reader;->readEnumList(Ljava/util/List;)V

    move-object v6, v13

    .line 1147
    .end local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto/16 :goto_4

    .line 1149
    .end local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_1f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/protobuf/Proto3Schema;->fieldInitializer:Lcom/google/protobuf/FieldInitializer;

    .line 1150
    invoke-static/range {v17 .. v17}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v8

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/google/protobuf/FieldInitializer;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 1149
    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Lcom/google/protobuf/Reader;->readSFixed32List(Ljava/util/List;)V

    move-object v6, v13

    .line 1151
    .end local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto/16 :goto_4

    .line 1153
    .end local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_20
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/protobuf/Proto3Schema;->fieldInitializer:Lcom/google/protobuf/FieldInitializer;

    .line 1154
    invoke-static/range {v17 .. v17}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v8

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/google/protobuf/FieldInitializer;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 1153
    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Lcom/google/protobuf/Reader;->readSFixed64List(Ljava/util/List;)V

    move-object v6, v13

    .line 1155
    .end local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto/16 :goto_4

    .line 1157
    .end local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_21
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/protobuf/Proto3Schema;->fieldInitializer:Lcom/google/protobuf/FieldInitializer;

    .line 1158
    invoke-static/range {v17 .. v17}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v8

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/google/protobuf/FieldInitializer;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 1157
    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Lcom/google/protobuf/Reader;->readSInt32List(Ljava/util/List;)V

    move-object v6, v13

    .line 1159
    .end local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto/16 :goto_4

    .line 1161
    .end local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_22
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/protobuf/Proto3Schema;->fieldInitializer:Lcom/google/protobuf/FieldInitializer;

    .line 1162
    invoke-static/range {v17 .. v17}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v8

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/google/protobuf/FieldInitializer;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 1161
    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Lcom/google/protobuf/Reader;->readSInt64List(Ljava/util/List;)V

    move-object v6, v13

    .line 1163
    .end local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto/16 :goto_4

    .line 1165
    .end local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_23
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/protobuf/Proto3Schema;->fieldInitializer:Lcom/google/protobuf/FieldInitializer;

    .line 1166
    invoke-static/range {v17 .. v17}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v8

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/google/protobuf/FieldInitializer;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 1165
    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Lcom/google/protobuf/Reader;->readDoubleList(Ljava/util/List;)V

    move-object v6, v13

    .line 1167
    .end local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto/16 :goto_4

    .line 1169
    .end local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_24
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/protobuf/Proto3Schema;->fieldInitializer:Lcom/google/protobuf/FieldInitializer;

    .line 1170
    invoke-static/range {v17 .. v17}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v8

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/google/protobuf/FieldInitializer;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 1169
    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Lcom/google/protobuf/Reader;->readFloatList(Ljava/util/List;)V

    move-object v6, v13

    .line 1171
    .end local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto/16 :goto_4

    .line 1173
    .end local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_25
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/protobuf/Proto3Schema;->fieldInitializer:Lcom/google/protobuf/FieldInitializer;

    .line 1174
    invoke-static/range {v17 .. v17}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v8

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/google/protobuf/FieldInitializer;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 1173
    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Lcom/google/protobuf/Reader;->readInt64List(Ljava/util/List;)V

    move-object v6, v13

    .line 1175
    .end local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto/16 :goto_4

    .line 1177
    .end local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_26
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/protobuf/Proto3Schema;->fieldInitializer:Lcom/google/protobuf/FieldInitializer;

    .line 1178
    invoke-static/range {v17 .. v17}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v8

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/google/protobuf/FieldInitializer;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 1177
    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Lcom/google/protobuf/Reader;->readUInt64List(Ljava/util/List;)V

    move-object v6, v13

    .line 1179
    .end local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto/16 :goto_4

    .line 1181
    .end local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_27
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/protobuf/Proto3Schema;->fieldInitializer:Lcom/google/protobuf/FieldInitializer;

    .line 1182
    invoke-static/range {v17 .. v17}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v8

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/google/protobuf/FieldInitializer;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 1181
    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Lcom/google/protobuf/Reader;->readInt32List(Ljava/util/List;)V

    move-object v6, v13

    .line 1183
    .end local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto/16 :goto_4

    .line 1185
    .end local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_28
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/protobuf/Proto3Schema;->fieldInitializer:Lcom/google/protobuf/FieldInitializer;

    .line 1186
    invoke-static/range {v17 .. v17}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v8

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/google/protobuf/FieldInitializer;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 1185
    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Lcom/google/protobuf/Reader;->readFixed64List(Ljava/util/List;)V

    move-object v6, v13

    .line 1187
    .end local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto/16 :goto_4

    .line 1189
    .end local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_29
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/protobuf/Proto3Schema;->fieldInitializer:Lcom/google/protobuf/FieldInitializer;

    .line 1190
    invoke-static/range {v17 .. v17}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v8

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/google/protobuf/FieldInitializer;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 1189
    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Lcom/google/protobuf/Reader;->readFixed32List(Ljava/util/List;)V

    move-object v6, v13

    .line 1191
    .end local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto/16 :goto_4

    .line 1193
    .end local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_2a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/protobuf/Proto3Schema;->fieldInitializer:Lcom/google/protobuf/FieldInitializer;

    .line 1194
    invoke-static/range {v17 .. v17}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v8

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/google/protobuf/FieldInitializer;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 1193
    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Lcom/google/protobuf/Reader;->readBoolList(Ljava/util/List;)V

    move-object v6, v13

    .line 1195
    .end local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto/16 :goto_4

    .line 1197
    .end local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_2b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/protobuf/Proto3Schema;->fieldInitializer:Lcom/google/protobuf/FieldInitializer;

    .line 1198
    invoke-static/range {v17 .. v17}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v8

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/google/protobuf/FieldInitializer;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 1197
    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Lcom/google/protobuf/Reader;->readUInt32List(Ljava/util/List;)V

    move-object v6, v13

    .line 1199
    .end local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto/16 :goto_4

    .line 1201
    .end local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_2c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/protobuf/Proto3Schema;->fieldInitializer:Lcom/google/protobuf/FieldInitializer;

    .line 1202
    invoke-static/range {v17 .. v17}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v8

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/google/protobuf/FieldInitializer;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 1201
    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Lcom/google/protobuf/Reader;->readEnumList(Ljava/util/List;)V

    move-object v6, v13

    .line 1203
    .end local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto/16 :goto_4

    .line 1205
    .end local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_2d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/protobuf/Proto3Schema;->fieldInitializer:Lcom/google/protobuf/FieldInitializer;

    .line 1206
    invoke-static/range {v17 .. v17}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v8

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/google/protobuf/FieldInitializer;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 1205
    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Lcom/google/protobuf/Reader;->readSFixed32List(Ljava/util/List;)V

    move-object v6, v13

    .line 1207
    .end local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto/16 :goto_4

    .line 1209
    .end local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_2e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/protobuf/Proto3Schema;->fieldInitializer:Lcom/google/protobuf/FieldInitializer;

    .line 1210
    invoke-static/range {v17 .. v17}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v8

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/google/protobuf/FieldInitializer;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 1209
    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Lcom/google/protobuf/Reader;->readSFixed64List(Ljava/util/List;)V

    move-object v6, v13

    .line 1211
    .end local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto/16 :goto_4

    .line 1213
    .end local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_2f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/protobuf/Proto3Schema;->fieldInitializer:Lcom/google/protobuf/FieldInitializer;

    .line 1214
    invoke-static/range {v17 .. v17}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v8

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/google/protobuf/FieldInitializer;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 1213
    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Lcom/google/protobuf/Reader;->readSInt32List(Ljava/util/List;)V

    move-object v6, v13

    .line 1215
    .end local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto/16 :goto_4

    .line 1217
    .end local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_30
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/protobuf/Proto3Schema;->fieldInitializer:Lcom/google/protobuf/FieldInitializer;

    .line 1218
    invoke-static/range {v17 .. v17}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v8

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/google/protobuf/FieldInitializer;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 1217
    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Lcom/google/protobuf/Reader;->readSInt64List(Ljava/util/List;)V

    move-object v6, v13

    .line 1219
    .end local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto/16 :goto_4

    .end local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_31
    move-object v6, v13

    .line 1222
    .end local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto/16 :goto_4

    .line 1224
    .end local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_32
    if-nez v13, :cond_8

    .line 1225
    new-instance v6, Lcom/google/protobuf/Int2ObjectHashMap;

    invoke-direct {v6}, Lcom/google/protobuf/Int2ObjectHashMap;-><init>()V
    :try_end_3
    .catch Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1227
    .end local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :goto_5
    :try_start_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/protobuf/Proto3Schema;->mapFieldDefaultEntryMap:Lcom/google/protobuf/Int2ObjectHashMap;

    .line 1230
    invoke-virtual {v4, v5}, Lcom/google/protobuf/Int2ObjectHashMap;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object/from16 v4, p0

    move-object/from16 v8, p3

    move-object/from16 v9, p2

    .line 1227
    invoke-direct/range {v4 .. v9}, Lcom/google/protobuf/Proto3Schema;->mergeMap(ILcom/google/protobuf/Int2ObjectHashMap;Ljava/lang/Object;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protobuf/Reader;)V
    :try_end_4
    .catch Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/16 :goto_4

    .line 1328
    :catch_0
    move-exception v11

    .line 1331
    .end local v5    # "number":I
    .local v11, "e":Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;
    :goto_6
    :try_start_5
    invoke-interface/range {p2 .. p2}, Lcom/google/protobuf/Reader;->skipField()Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result v4

    if-nez v4, :cond_4

    .line 1337
    if-eqz v6, :cond_2

    .line 1338
    invoke-virtual {v6}, Lcom/google/protobuf/Int2ObjectHashMap;->entries()Ljava/lang/Iterable;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveEntry;

    .line 1339
    .restart local v12    # "entry":Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveEntry;, "Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveEntry<Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/protobuf/Proto3Schema;->positionStrategy:Lcom/google/protobuf/Proto3Schema$PositionStrategy;

    invoke-interface {v12}, Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveEntry;->key()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/google/protobuf/Proto3Schema$PositionStrategy;->positionForFieldNumber(I)J

    move-result-wide v14

    .line 1341
    invoke-static {v14, v15}, Lcom/google/protobuf/Proto3Schema;->typeAndOffsetAt(J)I

    move-result v7

    invoke-static {v7}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/protobuf/Proto3Schema;->mapFieldSchema:Lcom/google/protobuf/MapFieldSchema;

    invoke-interface {v12}, Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveEntry;->value()Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v7, v10}, Lcom/google/protobuf/MapFieldSchema;->toImmutable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 1340
    move-object/from16 v0, p1

    invoke-static {v0, v8, v9, v7}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_7

    .line 1236
    .end local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .end local v11    # "e":Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;
    .end local v12    # "entry":Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveEntry;, "Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveEntry<Ljava/lang/Object;>;"
    .restart local v5    # "number":I
    .restart local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_33
    :try_start_6
    invoke-static/range {v17 .. v17}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v8

    invoke-interface/range {p2 .. p2}, Lcom/google/protobuf/Reader;->readDouble()D

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    .line 1235
    move-object/from16 v0, p1

    invoke-static {v0, v8, v9, v4}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1237
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v0, v5, v1}, Lcom/google/protobuf/Proto3Schema;->setOneofPresent(Ljava/lang/Object;II)V

    move-object v6, v13

    .line 1238
    .end local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto/16 :goto_4

    .line 1241
    .end local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_34
    invoke-static/range {v17 .. v17}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v8

    invoke-interface/range {p2 .. p2}, Lcom/google/protobuf/Reader;->readFloat()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    .line 1240
    move-object/from16 v0, p1

    invoke-static {v0, v8, v9, v4}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1242
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v0, v5, v1}, Lcom/google/protobuf/Proto3Schema;->setOneofPresent(Ljava/lang/Object;II)V

    move-object v6, v13

    .line 1243
    .end local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto/16 :goto_4

    .line 1246
    .end local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_35
    invoke-static/range {v17 .. v17}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v8

    invoke-interface/range {p2 .. p2}, Lcom/google/protobuf/Reader;->readInt64()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 1245
    move-object/from16 v0, p1

    invoke-static {v0, v8, v9, v4}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1247
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v0, v5, v1}, Lcom/google/protobuf/Proto3Schema;->setOneofPresent(Ljava/lang/Object;II)V

    move-object v6, v13

    .line 1248
    .end local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto/16 :goto_4

    .line 1251
    .end local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_36
    invoke-static/range {v17 .. v17}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v8

    invoke-interface/range {p2 .. p2}, Lcom/google/protobuf/Reader;->readUInt64()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 1250
    move-object/from16 v0, p1

    invoke-static {v0, v8, v9, v4}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1252
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v0, v5, v1}, Lcom/google/protobuf/Proto3Schema;->setOneofPresent(Ljava/lang/Object;II)V

    move-object v6, v13

    .line 1253
    .end local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto/16 :goto_4

    .line 1256
    .end local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_37
    invoke-static/range {v17 .. v17}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v8

    invoke-interface/range {p2 .. p2}, Lcom/google/protobuf/Reader;->readInt32()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 1255
    move-object/from16 v0, p1

    invoke-static {v0, v8, v9, v4}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1257
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v0, v5, v1}, Lcom/google/protobuf/Proto3Schema;->setOneofPresent(Ljava/lang/Object;II)V

    move-object v6, v13

    .line 1258
    .end local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto/16 :goto_4

    .line 1261
    .end local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_38
    invoke-static/range {v17 .. v17}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v8

    invoke-interface/range {p2 .. p2}, Lcom/google/protobuf/Reader;->readFixed64()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 1260
    move-object/from16 v0, p1

    invoke-static {v0, v8, v9, v4}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1262
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v0, v5, v1}, Lcom/google/protobuf/Proto3Schema;->setOneofPresent(Ljava/lang/Object;II)V

    move-object v6, v13

    .line 1263
    .end local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto/16 :goto_4

    .line 1266
    .end local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_39
    invoke-static/range {v17 .. v17}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v8

    invoke-interface/range {p2 .. p2}, Lcom/google/protobuf/Reader;->readFixed32()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 1265
    move-object/from16 v0, p1

    invoke-static {v0, v8, v9, v4}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1267
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v0, v5, v1}, Lcom/google/protobuf/Proto3Schema;->setOneofPresent(Ljava/lang/Object;II)V

    move-object v6, v13

    .line 1268
    .end local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto/16 :goto_4

    .line 1271
    .end local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_3a
    invoke-static/range {v17 .. v17}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v8

    invoke-interface/range {p2 .. p2}, Lcom/google/protobuf/Reader;->readBool()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 1270
    move-object/from16 v0, p1

    invoke-static {v0, v8, v9, v4}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1272
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v0, v5, v1}, Lcom/google/protobuf/Proto3Schema;->setOneofPresent(Ljava/lang/Object;II)V

    move-object v6, v13

    .line 1273
    .end local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto/16 :goto_4

    .line 1275
    .end local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_3b
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v17

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/Proto3Schema;->readString(Ljava/lang/Object;ILcom/google/protobuf/Reader;)V

    .line 1276
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v0, v5, v1}, Lcom/google/protobuf/Proto3Schema;->setOneofPresent(Ljava/lang/Object;II)V

    move-object v6, v13

    .line 1277
    .end local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto/16 :goto_4

    .line 1281
    .end local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_3c
    invoke-static/range {v17 .. v17}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/protobuf/Proto3Schema;->messageFieldClassMap:Lcom/google/protobuf/Int2ObjectHashMap;

    .line 1282
    invoke-virtual {v4, v5}, Lcom/google/protobuf/Int2ObjectHashMap;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-interface {v0, v4, v1}, Lcom/google/protobuf/Reader;->readMessage(Ljava/lang/Class;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v4

    .line 1279
    move-object/from16 v0, p1

    invoke-static {v0, v8, v9, v4}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1283
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v0, v5, v1}, Lcom/google/protobuf/Proto3Schema;->setOneofPresent(Ljava/lang/Object;II)V

    move-object v6, v13

    .line 1284
    .end local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto/16 :goto_4

    .line 1286
    .end local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_3d
    invoke-static/range {v17 .. v17}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v8

    invoke-interface/range {p2 .. p2}, Lcom/google/protobuf/Reader;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-static {v0, v8, v9, v4}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1287
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v0, v5, v1}, Lcom/google/protobuf/Proto3Schema;->setOneofPresent(Ljava/lang/Object;II)V

    move-object v6, v13

    .line 1288
    .end local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto/16 :goto_4

    .line 1291
    .end local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_3e
    invoke-static/range {v17 .. v17}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v8

    invoke-interface/range {p2 .. p2}, Lcom/google/protobuf/Reader;->readUInt32()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 1290
    move-object/from16 v0, p1

    invoke-static {v0, v8, v9, v4}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1292
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v0, v5, v1}, Lcom/google/protobuf/Proto3Schema;->setOneofPresent(Ljava/lang/Object;II)V

    move-object v6, v13

    .line 1293
    .end local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto/16 :goto_4

    .line 1296
    .end local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_3f
    invoke-static/range {v17 .. v17}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v8

    invoke-interface/range {p2 .. p2}, Lcom/google/protobuf/Reader;->readEnum()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 1295
    move-object/from16 v0, p1

    invoke-static {v0, v8, v9, v4}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1297
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v0, v5, v1}, Lcom/google/protobuf/Proto3Schema;->setOneofPresent(Ljava/lang/Object;II)V

    move-object v6, v13

    .line 1298
    .end local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto/16 :goto_4

    .line 1301
    .end local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_40
    invoke-static/range {v17 .. v17}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v8

    invoke-interface/range {p2 .. p2}, Lcom/google/protobuf/Reader;->readSFixed32()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 1300
    move-object/from16 v0, p1

    invoke-static {v0, v8, v9, v4}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1302
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v0, v5, v1}, Lcom/google/protobuf/Proto3Schema;->setOneofPresent(Ljava/lang/Object;II)V

    move-object v6, v13

    .line 1303
    .end local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto/16 :goto_4

    .line 1306
    .end local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_41
    invoke-static/range {v17 .. v17}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v8

    invoke-interface/range {p2 .. p2}, Lcom/google/protobuf/Reader;->readSFixed64()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 1305
    move-object/from16 v0, p1

    invoke-static {v0, v8, v9, v4}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1307
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v0, v5, v1}, Lcom/google/protobuf/Proto3Schema;->setOneofPresent(Ljava/lang/Object;II)V

    move-object v6, v13

    .line 1308
    .end local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto/16 :goto_4

    .line 1311
    .end local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_42
    invoke-static/range {v17 .. v17}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v8

    invoke-interface/range {p2 .. p2}, Lcom/google/protobuf/Reader;->readSInt32()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 1310
    move-object/from16 v0, p1

    invoke-static {v0, v8, v9, v4}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1312
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v0, v5, v1}, Lcom/google/protobuf/Proto3Schema;->setOneofPresent(Ljava/lang/Object;II)V

    move-object v6, v13

    .line 1313
    .end local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto/16 :goto_4

    .line 1316
    .end local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_43
    invoke-static/range {v17 .. v17}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v8

    invoke-interface/range {p2 .. p2}, Lcom/google/protobuf/Reader;->readSInt64()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 1315
    move-object/from16 v0, p1

    invoke-static {v0, v8, v9, v4}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1317
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v0, v5, v1}, Lcom/google/protobuf/Proto3Schema;->setOneofPresent(Ljava/lang/Object;II)V
    :try_end_6
    .catch Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-object v6, v13

    .line 1318
    .end local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto/16 :goto_4

    .end local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :cond_5
    move-object v6, v13

    .line 1323
    .end local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto/16 :goto_2

    .line 1337
    .end local v5    # "number":I
    .end local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .end local v14    # "pos":J
    .end local v16    # "presenceMaskAndOffset":I
    .end local v17    # "typeAndOffset":I
    .restart local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :catchall_0
    move-exception v4

    move-object v6, v13

    .end local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :goto_8
    if-eqz v6, :cond_6

    .line 1338
    invoke-virtual {v6}, Lcom/google/protobuf/Int2ObjectHashMap;->entries()Ljava/lang/Iterable;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_9
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveEntry;

    .line 1339
    .restart local v12    # "entry":Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveEntry;, "Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveEntry<Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/protobuf/Proto3Schema;->positionStrategy:Lcom/google/protobuf/Proto3Schema$PositionStrategy;

    invoke-interface {v12}, Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveEntry;->key()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/google/protobuf/Proto3Schema$PositionStrategy;->positionForFieldNumber(I)J

    move-result-wide v14

    .line 1341
    .restart local v14    # "pos":J
    invoke-static {v14, v15}, Lcom/google/protobuf/Proto3Schema;->typeAndOffsetAt(J)I

    move-result v8

    invoke-static {v8}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/protobuf/Proto3Schema;->mapFieldSchema:Lcom/google/protobuf/MapFieldSchema;

    invoke-interface {v12}, Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveEntry;->value()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v10, v0}, Lcom/google/protobuf/MapFieldSchema;->toImmutable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 1340
    move-object/from16 v0, p1

    invoke-static {v0, v8, v9, v10}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_9

    .line 1342
    .end local v12    # "entry":Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveEntry;, "Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveEntry<Ljava/lang/Object;>;"
    .end local v14    # "pos":J
    :cond_6
    throw v4

    .line 1337
    .restart local v14    # "pos":J
    .restart local v16    # "presenceMaskAndOffset":I
    .restart local v17    # "typeAndOffset":I
    :catchall_1
    move-exception v4

    goto :goto_8

    .line 1328
    .end local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :catch_1
    move-exception v11

    move-object v6, v13

    .end local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto/16 :goto_6

    .end local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v5    # "number":I
    .restart local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :cond_7
    move-object v6, v13

    .end local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto/16 :goto_4

    .end local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :cond_8
    move-object v6, v13

    .end local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto/16 :goto_5

    .line 1035
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_2f
        :pswitch_30
        :pswitch_31
        :pswitch_32
        :pswitch_33
        :pswitch_34
        :pswitch_35
        :pswitch_36
        :pswitch_37
        :pswitch_38
        :pswitch_39
        :pswitch_3a
        :pswitch_3b
        :pswitch_3c
        :pswitch_3d
        :pswitch_3e
        :pswitch_3f
        :pswitch_40
        :pswitch_41
        :pswitch_42
        :pswitch_43
    .end packed-switch
.end method

.method public final newInstance()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 242
    .local p0, "this":Lcom/google/protobuf/Proto3Schema;, "Lcom/google/protobuf/Proto3Schema<TT;>;"
    iget-object v0, p0, Lcom/google/protobuf/Proto3Schema;->defaultInstance:Lcom/google/protobuf/MessageLite;

    invoke-interface {v0}, Lcom/google/protobuf/MessageLite;->newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/protobuf/MessageLite$Builder;->build()Lcom/google/protobuf/MessageLite;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Ljava/lang/Object;Lcom/google/protobuf/Writer;)V
    .locals 2
    .param p2, "writer"    # Lcom/google/protobuf/Writer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/protobuf/Writer;",
            ")V"
        }
    .end annotation

    .prologue
    .line 250
    .local p0, "this":Lcom/google/protobuf/Proto3Schema;, "Lcom/google/protobuf/Proto3Schema<TT;>;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    invoke-interface {p2}, Lcom/google/protobuf/Writer;->fieldOrder()Lcom/google/protobuf/Writer$FieldOrder;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/Writer$FieldOrder;->DESCENDING:Lcom/google/protobuf/Writer$FieldOrder;

    if-ne v0, v1, :cond_0

    .line 251
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/Proto3Schema;->writeFieldsInDescendingOrder(Ljava/lang/Object;Lcom/google/protobuf/Writer;)V

    .line 255
    :goto_0
    return-void

    .line 253
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/Proto3Schema;->writeFieldsInAscendingOrder(Ljava/lang/Object;Lcom/google/protobuf/Writer;)V

    goto :goto_0
.end method
