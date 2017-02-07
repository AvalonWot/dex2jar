.class final Lcom/google/protobuf/Proto2Schema;
.super Ljava/lang/Object;
.source "Proto2Schema.java"

# interfaces
.implements Lcom/google/protobuf/Schema;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/Proto2Schema$LookupPositionStrategy;,
        Lcom/google/protobuf/Proto2Schema$TablePositionStrategy;,
        Lcom/google/protobuf/Proto2Schema$PositionStrategy;
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

.field static final REQUIRED_MASK:I = 0x10000000


# instance fields
.field private final address:J

.field private final buffer:Ljava/nio/ByteBuffer;

.field private final defaultInstance:Lcom/google/protobuf/MessageLite;

.field private final extensionSchema:Lcom/google/protobuf/ExtensionSchema;

.field private final extensionsOffset:J

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

.field private final memoizedIsInitializedOffset:J

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

.field private final positionStrategy:Lcom/google/protobuf/Proto2Schema$PositionStrategy;

.field private final unknownFieldSchema:Lcom/google/protobuf/UnknownFieldSchema;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/UnknownFieldSchema",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/nio/ByteBuffer;JJIIIZLjava/lang/Class;Lcom/google/protobuf/Int2ObjectHashMap;Lcom/google/protobuf/FieldInitializer;Lcom/google/protobuf/UnknownFieldSchema;Lcom/google/protobuf/ExtensionSchema;Lcom/google/protobuf/MapFieldSchema;Lcom/google/protobuf/Int2ObjectHashMap;)V
    .locals 6
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "address"    # J
    .param p4, "limit"    # J
    .param p6, "numFields"    # I
    .param p7, "minFieldNumber"    # I
    .param p8, "maxFieldNumber"    # I
    .param p9, "table"    # Z
    .param p12, "fieldInitializer"    # Lcom/google/protobuf/FieldInitializer;
    .param p14, "extensionSchema"    # Lcom/google/protobuf/ExtensionSchema;
    .param p15, "mapFieldSchema"    # Lcom/google/protobuf/MapFieldSchema;
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
            "Lcom/google/protobuf/UnknownFieldSchema",
            "<*>;",
            "Lcom/google/protobuf/ExtensionSchema;",
            "Lcom/google/protobuf/MapFieldSchema;",
            "Lcom/google/protobuf/Int2ObjectHashMap",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 88
    .local p0, "this":Lcom/google/protobuf/Proto2Schema;, "Lcom/google/protobuf/Proto2Schema<TT;>;"
    .local p10, "messageClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p11, "messageFieldClassMap":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Class<*>;>;"
    .local p13, "unknownFieldSchema":Lcom/google/protobuf/UnknownFieldSchema;, "Lcom/google/protobuf/UnknownFieldSchema<*>;"
    .local p16, "mapFieldDefaultEntryMap":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p1, p0, Lcom/google/protobuf/Proto2Schema;->buffer:Ljava/nio/ByteBuffer;

    .line 90
    iput-wide p2, p0, Lcom/google/protobuf/Proto2Schema;->address:J

    .line 91
    iput-wide p4, p0, Lcom/google/protobuf/Proto2Schema;->limit:J

    .line 92
    iput p6, p0, Lcom/google/protobuf/Proto2Schema;->numFields:I

    .line 93
    iput p7, p0, Lcom/google/protobuf/Proto2Schema;->minFieldNumber:I

    .line 94
    iput p8, p0, Lcom/google/protobuf/Proto2Schema;->maxFieldNumber:I

    .line 95
    if-eqz p9, :cond_0

    new-instance v4, Lcom/google/protobuf/Proto2Schema$TablePositionStrategy;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/google/protobuf/Proto2Schema$TablePositionStrategy;-><init>(Lcom/google/protobuf/Proto2Schema;Lcom/google/protobuf/Proto2Schema$1;)V

    :goto_0
    iput-object v4, p0, Lcom/google/protobuf/Proto2Schema;->positionStrategy:Lcom/google/protobuf/Proto2Schema$PositionStrategy;

    .line 96
    move-object/from16 v0, p11

    iput-object v0, p0, Lcom/google/protobuf/Proto2Schema;->messageFieldClassMap:Lcom/google/protobuf/Int2ObjectHashMap;

    .line 97
    move-object/from16 v0, p12

    iput-object v0, p0, Lcom/google/protobuf/Proto2Schema;->fieldInitializer:Lcom/google/protobuf/FieldInitializer;

    .line 98
    invoke-static/range {p10 .. p10}, Lcom/google/protobuf/SchemaUtil;->getMemoizedIsInitializedOffset(Ljava/lang/Class;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/protobuf/Proto2Schema;->memoizedIsInitializedOffset:J

    .line 99
    move-object/from16 v0, p13

    iput-object v0, p0, Lcom/google/protobuf/Proto2Schema;->unknownFieldSchema:Lcom/google/protobuf/UnknownFieldSchema;

    .line 100
    invoke-static/range {p10 .. p10}, Lcom/google/protobuf/SchemaUtil;->getExtensionsFieldOffset(Ljava/lang/Class;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/protobuf/Proto2Schema;->extensionsOffset:J

    .line 101
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/google/protobuf/Proto2Schema;->extensionSchema:Lcom/google/protobuf/ExtensionSchema;

    .line 102
    const-class v4, Lcom/google/protobuf/GeneratedMessageLite;

    move-object/from16 v0, p10

    invoke-virtual {v4, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/protobuf/Proto2Schema;->lite:Z

    .line 104
    :try_start_0
    const-string v4, "getDefaultInstance"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    move-object/from16 v0, p10

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 105
    .local v3, "method":Ljava/lang/reflect/Method;
    const/4 v4, 0x0

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/MessageLite;

    iput-object v4, p0, Lcom/google/protobuf/Proto2Schema;->defaultInstance:Lcom/google/protobuf/MessageLite;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/google/protobuf/Proto2Schema;->mapFieldSchema:Lcom/google/protobuf/MapFieldSchema;

    .line 110
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/google/protobuf/Proto2Schema;->mapFieldDefaultEntryMap:Lcom/google/protobuf/Int2ObjectHashMap;

    .line 111
    return-void

    .line 95
    .end local v3    # "method":Ljava/lang/reflect/Method;
    :cond_0
    new-instance v4, Lcom/google/protobuf/Proto2Schema$LookupPositionStrategy;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/google/protobuf/Proto2Schema$LookupPositionStrategy;-><init>(Lcom/google/protobuf/Proto2Schema;Lcom/google/protobuf/Proto2Schema$1;)V

    goto :goto_0

    .line 106
    :catch_0
    move-exception v2

    .line 107
    .local v2, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method static synthetic access$300(Lcom/google/protobuf/Proto2Schema;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/protobuf/Proto2Schema;

    .prologue
    .line 13
    iget v0, p0, Lcom/google/protobuf/Proto2Schema;->minFieldNumber:I

    return v0
.end method

.method static synthetic access$400(Lcom/google/protobuf/Proto2Schema;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/protobuf/Proto2Schema;

    .prologue
    .line 13
    iget v0, p0, Lcom/google/protobuf/Proto2Schema;->maxFieldNumber:I

    return v0
.end method

.method static synthetic access$500(Lcom/google/protobuf/Proto2Schema;I)J
    .locals 2
    .param p0, "x0"    # Lcom/google/protobuf/Proto2Schema;
    .param p1, "x1"    # I

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/google/protobuf/Proto2Schema;->indexToAddress(I)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$600(Lcom/google/protobuf/Proto2Schema;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/protobuf/Proto2Schema;

    .prologue
    .line 13
    iget v0, p0, Lcom/google/protobuf/Proto2Schema;->numFields:I

    return v0
.end method

.method static synthetic access$700(J)I
    .locals 2
    .param p0, "x0"    # J

    .prologue
    .line 13
    invoke-static {p0, p1}, Lcom/google/protobuf/Proto2Schema;->numberAt(J)I

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
    .line 1760
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
    .line 1744
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
    .line 1748
    .local p0, "message":Ljava/lang/Object;, "TT;"
    invoke-static {p0, p1, p2}, Lcom/google/protobuf/UnsafeUtil;->getFloat(Ljava/lang/Object;J)F

    move-result v0

    return v0
.end method

.method private getMemoizedIsInitialized(Ljava/lang/Object;)B
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)B"
        }
    .end annotation

    .prologue
    .line 1806
    .local p0, "this":Lcom/google/protobuf/Proto2Schema;, "Lcom/google/protobuf/Proto2Schema<TT;>;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    iget-wide v0, p0, Lcom/google/protobuf/Proto2Schema;->memoizedIsInitializedOffset:J

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/UnsafeUtil;->getByte(Ljava/lang/Object;J)B

    move-result v0

    return v0
.end method

.method private indexToAddress(I)J
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 1724
    .local p0, "this":Lcom/google/protobuf/Proto2Schema;, "Lcom/google/protobuf/Proto2Schema<TT;>;"
    iget-wide v0, p0, Lcom/google/protobuf/Proto2Schema;->address:J

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
    .line 1752
    .local p0, "message":Ljava/lang/Object;, "TT;"
    invoke-static {p0, p1, p2}, Lcom/google/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v0

    return v0
.end method

.method private static isEnforceUtf8(I)Z
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 1736
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

.method private static isFieldPresent(Ljava/lang/Object;I)Z
    .locals 4
    .param p1, "presenceMaskAndOffset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;I)Z"
        }
    .end annotation

    .prologue
    .local p0, "message":Ljava/lang/Object;, "TT;"
    const/4 v1, 0x1

    .line 1784
    ushr-int/lit8 v2, p1, 0x14

    shl-int v0, v1, v2

    .line 1785
    .local v0, "presenceMask":I
    const v2, 0xfffff

    and-int/2addr v2, p1

    int-to-long v2, v2

    invoke-static {p0, v2, v3}, Lcom/google/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v2

    and-int/2addr v2, v0

    if-eqz v2, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

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
    .line 1798
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

.method private static isRequired(I)Z
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 1732
    const/high16 v0, 0x10000000

    and-int/2addr v0, p0

    if-eqz v0, :cond_0

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
    .line 1756
    .local p0, "message":Ljava/lang/Object;, "TT;"
    invoke-static {p0, p1, p2}, Lcom/google/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private mergeFromHelper(Lcom/google/protobuf/UnknownFieldSchema;Ljava/lang/Object;Lcom/google/protobuf/Reader;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 25
    .param p3, "reader"    # Lcom/google/protobuf/Reader;
    .param p4, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/UnknownFieldSchema",
            "<TUT;>;TT;",
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
    .line 1191
    .local p0, "this":Lcom/google/protobuf/Proto2Schema;, "Lcom/google/protobuf/Proto2Schema<TT;>;"
    .local p1, "unknownFieldSchema":Lcom/google/protobuf/UnknownFieldSchema;, "Lcom/google/protobuf/UnknownFieldSchema<TUT;>;"
    .local p2, "message":Ljava/lang/Object;, "TT;"
    const/16 v23, 0x0

    .line 1192
    .local v23, "unknownFields":Ljava/lang/Object;, "TUT;"
    const/4 v9, 0x0

    .line 1193
    .local v9, "extensions":Lcom/google/protobuf/FieldSet;, "Lcom/google/protobuf/FieldSet<*>;"
    const/4 v12, 0x0

    .line 1194
    .local v12, "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/google/protobuf/Proto2Schema;->extensionsOffset:J

    const-wide/16 v10, -0x1

    cmp-long v4, v4, v10

    if-eqz v4, :cond_0

    .line 1195
    invoke-static {}, Lcom/google/protobuf/FieldSet;->newFieldSet()Lcom/google/protobuf/FieldSet;

    move-result-object v9

    .line 1197
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/google/protobuf/Proto2Schema;->extensionsOffset:J

    move-object/from16 v0, p2

    invoke-static {v0, v4, v5, v9}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_0
    move-object/from16 v19, v12

    .end local v12    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .local v19, "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    move-object/from16 v24, v23

    .line 1201
    .end local v23    # "unknownFields":Ljava/lang/Object;, "TUT;"
    :cond_1
    :goto_0
    :try_start_0
    invoke-interface/range {p3 .. p3}, Lcom/google/protobuf/Reader;->getFieldNumber()I

    move-result v7

    .line 1202
    .local v7, "number":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/protobuf/Proto2Schema;->positionStrategy:Lcom/google/protobuf/Proto2Schema$PositionStrategy;

    invoke-virtual {v4, v7}, Lcom/google/protobuf/Proto2Schema$PositionStrategy;->positionForFieldNumber(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v20

    .line 1203
    .local v20, "pos":J
    const-wide/16 v4, 0x0

    cmp-long v4, v20, v4

    if-gez v4, :cond_9

    .line 1204
    const v4, 0x7fffffff

    if-ne v7, v4, :cond_5

    .line 1566
    if-eqz v24, :cond_2

    .line 1567
    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/google/protobuf/UnknownFieldSchema;->toImmutable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v4}, Lcom/google/protobuf/UnknownFieldSchema;->setToMessage(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1569
    :cond_2
    if-eqz v19, :cond_3

    .line 1570
    invoke-virtual/range {v19 .. v19}, Lcom/google/protobuf/Int2ObjectHashMap;->entries()Ljava/lang/Iterable;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveEntry;

    .line 1571
    .local v18, "entry":Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveEntry;, "Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveEntry<Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/protobuf/Proto2Schema;->positionStrategy:Lcom/google/protobuf/Proto2Schema$PositionStrategy;

    invoke-interface/range {v18 .. v18}, Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveEntry;->key()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/google/protobuf/Proto2Schema$PositionStrategy;->positionForFieldNumber(I)J

    move-result-wide v20

    .line 1573
    invoke-static/range {v20 .. v21}, Lcom/google/protobuf/Proto2Schema;->typeAndOffsetAt(J)I

    move-result v5

    invoke-static {v5}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v10

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/protobuf/Proto2Schema;->mapFieldSchema:Lcom/google/protobuf/MapFieldSchema;

    invoke-interface/range {v18 .. v18}, Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveEntry;->value()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/google/protobuf/MapFieldSchema;->toImmutable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 1572
    move-object/from16 v0, p2

    invoke-static {v0, v10, v11, v5}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_1

    .end local v18    # "entry":Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveEntry;, "Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveEntry<Ljava/lang/Object;>;"
    :cond_3
    move-object/from16 v12, v19

    .line 1560
    .end local v19    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v12    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :cond_4
    :goto_2
    return-void

    .line 1208
    .end local v12    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v19    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :cond_5
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/protobuf/Proto2Schema;->extensionSchema:Lcom/google/protobuf/ExtensionSchema;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/protobuf/Proto2Schema;->defaultInstance:Lcom/google/protobuf/MessageLite;

    move-object/from16 v5, p3

    move-object/from16 v8, p4

    invoke-virtual/range {v4 .. v9}, Lcom/google/protobuf/ExtensionSchema;->parseExtension(Lcom/google/protobuf/Reader;Lcom/google/protobuf/MessageLite;ILcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protobuf/FieldSet;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1212
    if-nez v24, :cond_6

    .line 1213
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/UnknownFieldSchema;->newInstance()Ljava/lang/Object;

    move-result-object v23

    .restart local v23    # "unknownFields":Ljava/lang/Object;, "TUT;"
    move-object/from16 v24, v23

    .line 1216
    .end local v23    # "unknownFields":Ljava/lang/Object;, "TUT;"
    :cond_6
    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/UnknownFieldSchema;->mergeOneFieldFrom(Ljava/lang/Object;Lcom/google/protobuf/Reader;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    if-nez v4, :cond_1

    .line 1566
    if-eqz v24, :cond_7

    .line 1567
    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/google/protobuf/UnknownFieldSchema;->toImmutable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v4}, Lcom/google/protobuf/UnknownFieldSchema;->setToMessage(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1569
    :cond_7
    if-eqz v19, :cond_8

    .line 1570
    invoke-virtual/range {v19 .. v19}, Lcom/google/protobuf/Int2ObjectHashMap;->entries()Ljava/lang/Iterable;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveEntry;

    .line 1571
    .restart local v18    # "entry":Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveEntry;, "Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveEntry<Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/protobuf/Proto2Schema;->positionStrategy:Lcom/google/protobuf/Proto2Schema$PositionStrategy;

    invoke-interface/range {v18 .. v18}, Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveEntry;->key()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/google/protobuf/Proto2Schema$PositionStrategy;->positionForFieldNumber(I)J

    move-result-wide v20

    .line 1573
    invoke-static/range {v20 .. v21}, Lcom/google/protobuf/Proto2Schema;->typeAndOffsetAt(J)I

    move-result v5

    invoke-static {v5}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v10

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/protobuf/Proto2Schema;->mapFieldSchema:Lcom/google/protobuf/MapFieldSchema;

    invoke-interface/range {v18 .. v18}, Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveEntry;->value()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/google/protobuf/MapFieldSchema;->toImmutable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 1572
    move-object/from16 v0, p2

    invoke-static {v0, v10, v11, v5}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_3

    .end local v18    # "entry":Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveEntry;, "Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveEntry<Ljava/lang/Object;>;"
    :cond_8
    move-object/from16 v12, v19

    .line 1220
    .end local v19    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v12    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto :goto_2

    .line 1222
    .end local v12    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v19    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :cond_9
    :try_start_2
    invoke-static/range {v20 .. v21}, Lcom/google/protobuf/Proto2Schema;->typeAndOffsetAt(J)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v22

    .line 1225
    .local v22, "typeAndOffset":I
    :try_start_3
    invoke-static/range {v22 .. v22}, Lcom/google/protobuf/Proto2Schema;->type(I)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 1544
    if-nez v24, :cond_12

    .line 1545
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/UnknownFieldSchema;->newInstance()Ljava/lang/Object;
    :try_end_3
    .catch Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v23

    .restart local v23    # "unknownFields":Ljava/lang/Object;, "TUT;"
    move-object/from16 v4, v23

    .line 1547
    .end local v23    # "unknownFields":Ljava/lang/Object;, "TUT;"
    :goto_4
    :try_start_4
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v4, v1}, Lcom/google/protobuf/UnknownFieldSchema;->mergeOneFieldFrom(Ljava/lang/Object;Lcom/google/protobuf/Reader;)Z
    :try_end_4
    .catch Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-result v5

    if-nez v5, :cond_11

    .line 1566
    if-eqz v4, :cond_a

    .line 1567
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/google/protobuf/UnknownFieldSchema;->toImmutable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v4}, Lcom/google/protobuf/UnknownFieldSchema;->setToMessage(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1569
    :cond_a
    if-eqz v19, :cond_c

    .line 1570
    invoke-virtual/range {v19 .. v19}, Lcom/google/protobuf/Int2ObjectHashMap;->entries()Ljava/lang/Iterable;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveEntry;

    .line 1571
    .restart local v18    # "entry":Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveEntry;, "Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveEntry<Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/protobuf/Proto2Schema;->positionStrategy:Lcom/google/protobuf/Proto2Schema$PositionStrategy;

    invoke-interface/range {v18 .. v18}, Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveEntry;->key()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/google/protobuf/Proto2Schema$PositionStrategy;->positionForFieldNumber(I)J

    move-result-wide v20

    .line 1573
    invoke-static/range {v20 .. v21}, Lcom/google/protobuf/Proto2Schema;->typeAndOffsetAt(J)I

    move-result v5

    invoke-static {v5}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v10

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/protobuf/Proto2Schema;->mapFieldSchema:Lcom/google/protobuf/MapFieldSchema;

    invoke-interface/range {v18 .. v18}, Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveEntry;->value()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/google/protobuf/MapFieldSchema;->toImmutable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 1572
    move-object/from16 v0, p2

    invoke-static {v0, v10, v11, v5}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_5

    .line 1227
    .end local v18    # "entry":Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveEntry;, "Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveEntry<Ljava/lang/Object;>;"
    :pswitch_0
    :try_start_5
    invoke-static/range {v22 .. v22}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v4

    invoke-interface/range {p3 .. p3}, Lcom/google/protobuf/Reader;->readDouble()D

    move-result-wide v10

    move-object/from16 v0, p2

    invoke-static {v0, v4, v5, v10, v11}, Lcom/google/protobuf/UnsafeUtil;->putDouble(Ljava/lang/Object;JD)V

    .line 1228
    const-wide/16 v4, 0x8

    add-long v4, v4, v20

    invoke-static {v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v4

    move-object/from16 v0, p2

    invoke-static {v0, v4}, Lcom/google/protobuf/Proto2Schema;->setFieldPresent(Ljava/lang/Object;I)V

    move-object/from16 v12, v19

    .end local v19    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v12    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    move-object/from16 v4, v24

    :cond_b
    :goto_6
    move-object/from16 v19, v12

    .end local v12    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v19    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    move-object/from16 v24, v4

    .line 1563
    goto/16 :goto_0

    .line 1231
    :pswitch_1
    invoke-static/range {v22 .. v22}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v4

    invoke-interface/range {p3 .. p3}, Lcom/google/protobuf/Reader;->readFloat()F

    move-result v6

    move-object/from16 v0, p2

    invoke-static {v0, v4, v5, v6}, Lcom/google/protobuf/UnsafeUtil;->putFloat(Ljava/lang/Object;JF)V

    .line 1232
    const-wide/16 v4, 0x8

    add-long v4, v4, v20

    invoke-static {v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v4

    move-object/from16 v0, p2

    invoke-static {v0, v4}, Lcom/google/protobuf/Proto2Schema;->setFieldPresent(Ljava/lang/Object;I)V

    move-object/from16 v12, v19

    .end local v19    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v12    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    move-object/from16 v4, v24

    .line 1233
    goto :goto_6

    .line 1235
    .end local v12    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v19    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_2
    invoke-static/range {v22 .. v22}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v4

    invoke-interface/range {p3 .. p3}, Lcom/google/protobuf/Reader;->readInt64()J

    move-result-wide v10

    move-object/from16 v0, p2

    invoke-static {v0, v4, v5, v10, v11}, Lcom/google/protobuf/UnsafeUtil;->putLong(Ljava/lang/Object;JJ)V

    .line 1236
    const-wide/16 v4, 0x8

    add-long v4, v4, v20

    invoke-static {v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v4

    move-object/from16 v0, p2

    invoke-static {v0, v4}, Lcom/google/protobuf/Proto2Schema;->setFieldPresent(Ljava/lang/Object;I)V

    move-object/from16 v12, v19

    .end local v19    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v12    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    move-object/from16 v4, v24

    .line 1237
    goto :goto_6

    .line 1239
    .end local v12    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v19    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_3
    invoke-static/range {v22 .. v22}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v4

    invoke-interface/range {p3 .. p3}, Lcom/google/protobuf/Reader;->readUInt64()J

    move-result-wide v10

    move-object/from16 v0, p2

    invoke-static {v0, v4, v5, v10, v11}, Lcom/google/protobuf/UnsafeUtil;->putLong(Ljava/lang/Object;JJ)V

    .line 1240
    const-wide/16 v4, 0x8

    add-long v4, v4, v20

    invoke-static {v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v4

    move-object/from16 v0, p2

    invoke-static {v0, v4}, Lcom/google/protobuf/Proto2Schema;->setFieldPresent(Ljava/lang/Object;I)V

    move-object/from16 v12, v19

    .end local v19    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v12    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    move-object/from16 v4, v24

    .line 1241
    goto :goto_6

    .line 1243
    .end local v12    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v19    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_4
    invoke-static/range {v22 .. v22}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v4

    invoke-interface/range {p3 .. p3}, Lcom/google/protobuf/Reader;->readInt32()I

    move-result v6

    move-object/from16 v0, p2

    invoke-static {v0, v4, v5, v6}, Lcom/google/protobuf/UnsafeUtil;->putInt(Ljava/lang/Object;JI)V

    .line 1244
    const-wide/16 v4, 0x8

    add-long v4, v4, v20

    invoke-static {v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v4

    move-object/from16 v0, p2

    invoke-static {v0, v4}, Lcom/google/protobuf/Proto2Schema;->setFieldPresent(Ljava/lang/Object;I)V

    move-object/from16 v12, v19

    .end local v19    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v12    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    move-object/from16 v4, v24

    .line 1245
    goto/16 :goto_6

    .line 1247
    .end local v12    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v19    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_5
    invoke-static/range {v22 .. v22}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v4

    invoke-interface/range {p3 .. p3}, Lcom/google/protobuf/Reader;->readFixed64()J

    move-result-wide v10

    move-object/from16 v0, p2

    invoke-static {v0, v4, v5, v10, v11}, Lcom/google/protobuf/UnsafeUtil;->putLong(Ljava/lang/Object;JJ)V

    .line 1248
    const-wide/16 v4, 0x8

    add-long v4, v4, v20

    invoke-static {v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v4

    move-object/from16 v0, p2

    invoke-static {v0, v4}, Lcom/google/protobuf/Proto2Schema;->setFieldPresent(Ljava/lang/Object;I)V

    move-object/from16 v12, v19

    .end local v19    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v12    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    move-object/from16 v4, v24

    .line 1249
    goto/16 :goto_6

    .line 1251
    .end local v12    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v19    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_6
    invoke-static/range {v22 .. v22}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v4

    invoke-interface/range {p3 .. p3}, Lcom/google/protobuf/Reader;->readFixed32()I

    move-result v6

    move-object/from16 v0, p2

    invoke-static {v0, v4, v5, v6}, Lcom/google/protobuf/UnsafeUtil;->putInt(Ljava/lang/Object;JI)V

    .line 1252
    const-wide/16 v4, 0x8

    add-long v4, v4, v20

    invoke-static {v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v4

    move-object/from16 v0, p2

    invoke-static {v0, v4}, Lcom/google/protobuf/Proto2Schema;->setFieldPresent(Ljava/lang/Object;I)V

    move-object/from16 v12, v19

    .end local v19    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v12    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    move-object/from16 v4, v24

    .line 1253
    goto/16 :goto_6

    .line 1255
    .end local v12    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v19    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_7
    invoke-static/range {v22 .. v22}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v4

    invoke-interface/range {p3 .. p3}, Lcom/google/protobuf/Reader;->readBool()Z

    move-result v6

    move-object/from16 v0, p2

    invoke-static {v0, v4, v5, v6}, Lcom/google/protobuf/UnsafeUtil;->putBoolean(Ljava/lang/Object;JZ)V

    .line 1256
    const-wide/16 v4, 0x8

    add-long v4, v4, v20

    invoke-static {v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v4

    move-object/from16 v0, p2

    invoke-static {v0, v4}, Lcom/google/protobuf/Proto2Schema;->setFieldPresent(Ljava/lang/Object;I)V

    move-object/from16 v12, v19

    .end local v19    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v12    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    move-object/from16 v4, v24

    .line 1257
    goto/16 :goto_6

    .line 1259
    .end local v12    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v19    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_8
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v22

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/Proto2Schema;->readString(Ljava/lang/Object;ILcom/google/protobuf/Reader;)V

    .line 1260
    const-wide/16 v4, 0x8

    add-long v4, v4, v20

    invoke-static {v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v4

    move-object/from16 v0, p2

    invoke-static {v0, v4}, Lcom/google/protobuf/Proto2Schema;->setFieldPresent(Ljava/lang/Object;I)V

    move-object/from16 v12, v19

    .end local v19    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v12    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    move-object/from16 v4, v24

    .line 1261
    goto/16 :goto_6

    .line 1265
    .end local v12    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v19    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_9
    invoke-static/range {v22 .. v22}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v10

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/protobuf/Proto2Schema;->messageFieldClassMap:Lcom/google/protobuf/Int2ObjectHashMap;

    .line 1266
    invoke-virtual {v4, v7}, Lcom/google/protobuf/Int2ObjectHashMap;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-interface {v0, v4, v1}, Lcom/google/protobuf/Reader;->readMessage(Ljava/lang/Class;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v4

    .line 1263
    move-object/from16 v0, p2

    invoke-static {v0, v10, v11, v4}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1267
    const-wide/16 v4, 0x8

    add-long v4, v4, v20

    invoke-static {v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v4

    move-object/from16 v0, p2

    invoke-static {v0, v4}, Lcom/google/protobuf/Proto2Schema;->setFieldPresent(Ljava/lang/Object;I)V

    move-object/from16 v12, v19

    .end local v19    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v12    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    move-object/from16 v4, v24

    .line 1268
    goto/16 :goto_6

    .line 1270
    .end local v12    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v19    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_a
    invoke-static/range {v22 .. v22}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v4

    invoke-interface/range {p3 .. p3}, Lcom/google/protobuf/Reader;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-static {v0, v4, v5, v6}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1271
    const-wide/16 v4, 0x8

    add-long v4, v4, v20

    invoke-static {v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v4

    move-object/from16 v0, p2

    invoke-static {v0, v4}, Lcom/google/protobuf/Proto2Schema;->setFieldPresent(Ljava/lang/Object;I)V

    move-object/from16 v12, v19

    .end local v19    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v12    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    move-object/from16 v4, v24

    .line 1272
    goto/16 :goto_6

    .line 1274
    .end local v12    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v19    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_b
    invoke-static/range {v22 .. v22}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v4

    invoke-interface/range {p3 .. p3}, Lcom/google/protobuf/Reader;->readUInt32()I

    move-result v6

    move-object/from16 v0, p2

    invoke-static {v0, v4, v5, v6}, Lcom/google/protobuf/UnsafeUtil;->putInt(Ljava/lang/Object;JI)V

    .line 1275
    const-wide/16 v4, 0x8

    add-long v4, v4, v20

    invoke-static {v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v4

    move-object/from16 v0, p2

    invoke-static {v0, v4}, Lcom/google/protobuf/Proto2Schema;->setFieldPresent(Ljava/lang/Object;I)V

    move-object/from16 v12, v19

    .end local v19    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v12    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    move-object/from16 v4, v24

    .line 1276
    goto/16 :goto_6

    .line 1278
    .end local v12    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v19    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_c
    invoke-static/range {v22 .. v22}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v4

    invoke-interface/range {p3 .. p3}, Lcom/google/protobuf/Reader;->readEnum()I

    move-result v6

    move-object/from16 v0, p2

    invoke-static {v0, v4, v5, v6}, Lcom/google/protobuf/UnsafeUtil;->putInt(Ljava/lang/Object;JI)V

    .line 1279
    const-wide/16 v4, 0x8

    add-long v4, v4, v20

    invoke-static {v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v4

    move-object/from16 v0, p2

    invoke-static {v0, v4}, Lcom/google/protobuf/Proto2Schema;->setFieldPresent(Ljava/lang/Object;I)V

    move-object/from16 v12, v19

    .end local v19    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v12    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    move-object/from16 v4, v24

    .line 1280
    goto/16 :goto_6

    .line 1282
    .end local v12    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v19    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_d
    invoke-static/range {v22 .. v22}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v4

    invoke-interface/range {p3 .. p3}, Lcom/google/protobuf/Reader;->readSFixed32()I

    move-result v6

    move-object/from16 v0, p2

    invoke-static {v0, v4, v5, v6}, Lcom/google/protobuf/UnsafeUtil;->putInt(Ljava/lang/Object;JI)V

    .line 1283
    const-wide/16 v4, 0x8

    add-long v4, v4, v20

    invoke-static {v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v4

    move-object/from16 v0, p2

    invoke-static {v0, v4}, Lcom/google/protobuf/Proto2Schema;->setFieldPresent(Ljava/lang/Object;I)V

    move-object/from16 v12, v19

    .end local v19    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v12    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    move-object/from16 v4, v24

    .line 1284
    goto/16 :goto_6

    .line 1286
    .end local v12    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v19    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_e
    invoke-static/range {v22 .. v22}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v4

    invoke-interface/range {p3 .. p3}, Lcom/google/protobuf/Reader;->readSFixed64()J

    move-result-wide v10

    move-object/from16 v0, p2

    invoke-static {v0, v4, v5, v10, v11}, Lcom/google/protobuf/UnsafeUtil;->putLong(Ljava/lang/Object;JJ)V

    .line 1287
    const-wide/16 v4, 0x8

    add-long v4, v4, v20

    invoke-static {v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v4

    move-object/from16 v0, p2

    invoke-static {v0, v4}, Lcom/google/protobuf/Proto2Schema;->setFieldPresent(Ljava/lang/Object;I)V

    move-object/from16 v12, v19

    .end local v19    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v12    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    move-object/from16 v4, v24

    .line 1288
    goto/16 :goto_6

    .line 1290
    .end local v12    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v19    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_f
    invoke-static/range {v22 .. v22}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v4

    invoke-interface/range {p3 .. p3}, Lcom/google/protobuf/Reader;->readSInt32()I

    move-result v6

    move-object/from16 v0, p2

    invoke-static {v0, v4, v5, v6}, Lcom/google/protobuf/UnsafeUtil;->putInt(Ljava/lang/Object;JI)V

    .line 1291
    const-wide/16 v4, 0x8

    add-long v4, v4, v20

    invoke-static {v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v4

    move-object/from16 v0, p2

    invoke-static {v0, v4}, Lcom/google/protobuf/Proto2Schema;->setFieldPresent(Ljava/lang/Object;I)V

    move-object/from16 v12, v19

    .end local v19    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v12    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    move-object/from16 v4, v24

    .line 1292
    goto/16 :goto_6

    .line 1294
    .end local v12    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v19    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_10
    invoke-static/range {v22 .. v22}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v4

    invoke-interface/range {p3 .. p3}, Lcom/google/protobuf/Reader;->readSInt64()J

    move-result-wide v10

    move-object/from16 v0, p2

    invoke-static {v0, v4, v5, v10, v11}, Lcom/google/protobuf/UnsafeUtil;->putLong(Ljava/lang/Object;JJ)V

    .line 1295
    const-wide/16 v4, 0x8

    add-long v4, v4, v20

    invoke-static {v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v4

    move-object/from16 v0, p2

    invoke-static {v0, v4}, Lcom/google/protobuf/Proto2Schema;->setFieldPresent(Ljava/lang/Object;I)V

    move-object/from16 v12, v19

    .end local v19    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v12    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    move-object/from16 v4, v24

    .line 1296
    goto/16 :goto_6

    .line 1300
    .end local v12    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v19    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_11
    invoke-static/range {v22 .. v22}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v10

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/protobuf/Proto2Schema;->messageFieldClassMap:Lcom/google/protobuf/Int2ObjectHashMap;

    .line 1301
    invoke-virtual {v4, v7}, Lcom/google/protobuf/Int2ObjectHashMap;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-interface {v0, v4, v1}, Lcom/google/protobuf/Reader;->readGroup(Ljava/lang/Class;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v4

    .line 1298
    move-object/from16 v0, p2

    invoke-static {v0, v10, v11, v4}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1302
    const-wide/16 v4, 0x8

    add-long v4, v4, v20

    invoke-static {v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v4

    move-object/from16 v0, p2

    invoke-static {v0, v4}, Lcom/google/protobuf/Proto2Schema;->setFieldPresent(Ljava/lang/Object;I)V

    move-object/from16 v12, v19

    .end local v19    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v12    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    move-object/from16 v4, v24

    .line 1303
    goto/16 :goto_6

    .line 1305
    .end local v12    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v19    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_12
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/protobuf/Proto2Schema;->fieldInitializer:Lcom/google/protobuf/FieldInitializer;

    .line 1306
    invoke-static/range {v22 .. v22}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v10

    move-object/from16 v0, p2

    invoke-virtual {v4, v0, v10, v11}, Lcom/google/protobuf/FieldInitializer;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 1305
    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Lcom/google/protobuf/Reader;->readDoubleList(Ljava/util/List;)V

    move-object/from16 v12, v19

    .end local v19    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v12    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    move-object/from16 v4, v24

    .line 1307
    goto/16 :goto_6

    .line 1309
    .end local v12    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v19    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_13
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/protobuf/Proto2Schema;->fieldInitializer:Lcom/google/protobuf/FieldInitializer;

    .line 1310
    invoke-static/range {v22 .. v22}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v10

    move-object/from16 v0, p2

    invoke-virtual {v4, v0, v10, v11}, Lcom/google/protobuf/FieldInitializer;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 1309
    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Lcom/google/protobuf/Reader;->readFloatList(Ljava/util/List;)V

    move-object/from16 v12, v19

    .end local v19    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v12    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    move-object/from16 v4, v24

    .line 1311
    goto/16 :goto_6

    .line 1313
    .end local v12    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v19    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_14
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/protobuf/Proto2Schema;->fieldInitializer:Lcom/google/protobuf/FieldInitializer;

    .line 1314
    invoke-static/range {v22 .. v22}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v10

    move-object/from16 v0, p2

    invoke-virtual {v4, v0, v10, v11}, Lcom/google/protobuf/FieldInitializer;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 1313
    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Lcom/google/protobuf/Reader;->readInt64List(Ljava/util/List;)V

    move-object/from16 v12, v19

    .end local v19    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v12    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    move-object/from16 v4, v24

    .line 1315
    goto/16 :goto_6

    .line 1317
    .end local v12    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v19    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_15
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/protobuf/Proto2Schema;->fieldInitializer:Lcom/google/protobuf/FieldInitializer;

    .line 1318
    invoke-static/range {v22 .. v22}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v10

    move-object/from16 v0, p2

    invoke-virtual {v4, v0, v10, v11}, Lcom/google/protobuf/FieldInitializer;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 1317
    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Lcom/google/protobuf/Reader;->readUInt64List(Ljava/util/List;)V

    move-object/from16 v12, v19

    .end local v19    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v12    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    move-object/from16 v4, v24

    .line 1319
    goto/16 :goto_6

    .line 1321
    .end local v12    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v19    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_16
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/protobuf/Proto2Schema;->fieldInitializer:Lcom/google/protobuf/FieldInitializer;

    .line 1322
    invoke-static/range {v22 .. v22}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v10

    move-object/from16 v0, p2

    invoke-virtual {v4, v0, v10, v11}, Lcom/google/protobuf/FieldInitializer;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 1321
    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Lcom/google/protobuf/Reader;->readInt32List(Ljava/util/List;)V

    move-object/from16 v12, v19

    .end local v19    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v12    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    move-object/from16 v4, v24

    .line 1323
    goto/16 :goto_6

    .line 1325
    .end local v12    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v19    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_17
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/protobuf/Proto2Schema;->fieldInitializer:Lcom/google/protobuf/FieldInitializer;

    .line 1326
    invoke-static/range {v22 .. v22}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v10

    move-object/from16 v0, p2

    invoke-virtual {v4, v0, v10, v11}, Lcom/google/protobuf/FieldInitializer;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 1325
    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Lcom/google/protobuf/Reader;->readFixed64List(Ljava/util/List;)V

    move-object/from16 v12, v19

    .end local v19    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v12    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    move-object/from16 v4, v24

    .line 1327
    goto/16 :goto_6

    .line 1329
    .end local v12    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v19    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_18
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/protobuf/Proto2Schema;->fieldInitializer:Lcom/google/protobuf/FieldInitializer;

    .line 1330
    invoke-static/range {v22 .. v22}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v10

    move-object/from16 v0, p2

    invoke-virtual {v4, v0, v10, v11}, Lcom/google/protobuf/FieldInitializer;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 1329
    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Lcom/google/protobuf/Reader;->readFixed32List(Ljava/util/List;)V

    move-object/from16 v12, v19

    .end local v19    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v12    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    move-object/from16 v4, v24

    .line 1331
    goto/16 :goto_6

    .line 1333
    .end local v12    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v19    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_19
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/protobuf/Proto2Schema;->fieldInitializer:Lcom/google/protobuf/FieldInitializer;

    .line 1334
    invoke-static/range {v22 .. v22}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v10

    move-object/from16 v0, p2

    invoke-virtual {v4, v0, v10, v11}, Lcom/google/protobuf/FieldInitializer;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 1333
    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Lcom/google/protobuf/Reader;->readBoolList(Ljava/util/List;)V

    move-object/from16 v12, v19

    .end local v19    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v12    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    move-object/from16 v4, v24

    .line 1335
    goto/16 :goto_6

    .line 1337
    .end local v12    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v19    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_1a
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v22

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/Proto2Schema;->readStringList(Ljava/lang/Object;ILcom/google/protobuf/Reader;)V

    move-object/from16 v12, v19

    .end local v19    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v12    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    move-object/from16 v4, v24

    .line 1338
    goto/16 :goto_6

    .line 1342
    .end local v12    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v19    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_1b
    invoke-static/range {v22 .. v22}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/protobuf/Proto2Schema;->messageFieldClassMap:Lcom/google/protobuf/Int2ObjectHashMap;

    .line 1344
    invoke-virtual {v4, v7}, Lcom/google/protobuf/Int2ObjectHashMap;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Class;

    move-object/from16 v10, p0

    move-object/from16 v11, p2

    move-object/from16 v14, p3

    move-object/from16 v16, p4

    .line 1340
    invoke-virtual/range {v10 .. v16}, Lcom/google/protobuf/Proto2Schema;->readMessageList(Ljava/lang/Object;JLcom/google/protobuf/Reader;Ljava/lang/Class;Lcom/google/protobuf/ExtensionRegistryLite;)V

    move-object/from16 v12, v19

    .end local v19    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v12    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    move-object/from16 v4, v24

    .line 1346
    goto/16 :goto_6

    .line 1348
    .end local v12    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v19    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_1c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/protobuf/Proto2Schema;->fieldInitializer:Lcom/google/protobuf/FieldInitializer;

    .line 1349
    invoke-static/range {v22 .. v22}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v10

    move-object/from16 v0, p2

    invoke-virtual {v4, v0, v10, v11}, Lcom/google/protobuf/FieldInitializer;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 1348
    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Lcom/google/protobuf/Reader;->readBytesList(Ljava/util/List;)V

    move-object/from16 v12, v19

    .end local v19    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v12    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    move-object/from16 v4, v24

    .line 1350
    goto/16 :goto_6

    .line 1352
    .end local v12    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v19    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_1d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/protobuf/Proto2Schema;->fieldInitializer:Lcom/google/protobuf/FieldInitializer;

    .line 1353
    invoke-static/range {v22 .. v22}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v10

    move-object/from16 v0, p2

    invoke-virtual {v4, v0, v10, v11}, Lcom/google/protobuf/FieldInitializer;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 1352
    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Lcom/google/protobuf/Reader;->readUInt32List(Ljava/util/List;)V

    move-object/from16 v12, v19

    .end local v19    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v12    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    move-object/from16 v4, v24

    .line 1354
    goto/16 :goto_6

    .line 1356
    .end local v12    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v19    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_1e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/protobuf/Proto2Schema;->fieldInitializer:Lcom/google/protobuf/FieldInitializer;

    .line 1357
    invoke-static/range {v22 .. v22}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v10

    move-object/from16 v0, p2

    invoke-virtual {v4, v0, v10, v11}, Lcom/google/protobuf/FieldInitializer;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 1356
    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Lcom/google/protobuf/Reader;->readEnumList(Ljava/util/List;)V

    move-object/from16 v12, v19

    .end local v19    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v12    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    move-object/from16 v4, v24

    .line 1358
    goto/16 :goto_6

    .line 1360
    .end local v12    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v19    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_1f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/protobuf/Proto2Schema;->fieldInitializer:Lcom/google/protobuf/FieldInitializer;

    .line 1361
    invoke-static/range {v22 .. v22}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v10

    move-object/from16 v0, p2

    invoke-virtual {v4, v0, v10, v11}, Lcom/google/protobuf/FieldInitializer;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 1360
    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Lcom/google/protobuf/Reader;->readSFixed32List(Ljava/util/List;)V

    move-object/from16 v12, v19

    .end local v19    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v12    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    move-object/from16 v4, v24

    .line 1362
    goto/16 :goto_6

    .line 1364
    .end local v12    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v19    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_20
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/protobuf/Proto2Schema;->fieldInitializer:Lcom/google/protobuf/FieldInitializer;

    .line 1365
    invoke-static/range {v22 .. v22}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v10

    move-object/from16 v0, p2

    invoke-virtual {v4, v0, v10, v11}, Lcom/google/protobuf/FieldInitializer;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 1364
    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Lcom/google/protobuf/Reader;->readSFixed64List(Ljava/util/List;)V

    move-object/from16 v12, v19

    .end local v19    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v12    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    move-object/from16 v4, v24

    .line 1366
    goto/16 :goto_6

    .line 1368
    .end local v12    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v19    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_21
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/protobuf/Proto2Schema;->fieldInitializer:Lcom/google/protobuf/FieldInitializer;

    .line 1369
    invoke-static/range {v22 .. v22}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v10

    move-object/from16 v0, p2

    invoke-virtual {v4, v0, v10, v11}, Lcom/google/protobuf/FieldInitializer;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 1368
    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Lcom/google/protobuf/Reader;->readSInt32List(Ljava/util/List;)V

    move-object/from16 v12, v19

    .end local v19    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v12    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    move-object/from16 v4, v24

    .line 1370
    goto/16 :goto_6

    .line 1372
    .end local v12    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v19    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_22
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/protobuf/Proto2Schema;->fieldInitializer:Lcom/google/protobuf/FieldInitializer;

    .line 1373
    invoke-static/range {v22 .. v22}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v10

    move-object/from16 v0, p2

    invoke-virtual {v4, v0, v10, v11}, Lcom/google/protobuf/FieldInitializer;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 1372
    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Lcom/google/protobuf/Reader;->readSInt64List(Ljava/util/List;)V

    move-object/from16 v12, v19

    .end local v19    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v12    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    move-object/from16 v4, v24

    .line 1374
    goto/16 :goto_6

    .line 1376
    .end local v12    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v19    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_23
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/protobuf/Proto2Schema;->fieldInitializer:Lcom/google/protobuf/FieldInitializer;

    .line 1377
    invoke-static/range {v22 .. v22}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v10

    move-object/from16 v0, p2

    invoke-virtual {v4, v0, v10, v11}, Lcom/google/protobuf/FieldInitializer;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 1376
    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Lcom/google/protobuf/Reader;->readDoubleList(Ljava/util/List;)V

    move-object/from16 v12, v19

    .end local v19    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v12    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    move-object/from16 v4, v24

    .line 1378
    goto/16 :goto_6

    .line 1380
    .end local v12    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v19    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_24
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/protobuf/Proto2Schema;->fieldInitializer:Lcom/google/protobuf/FieldInitializer;

    .line 1381
    invoke-static/range {v22 .. v22}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v10

    move-object/from16 v0, p2

    invoke-virtual {v4, v0, v10, v11}, Lcom/google/protobuf/FieldInitializer;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 1380
    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Lcom/google/protobuf/Reader;->readFloatList(Ljava/util/List;)V

    move-object/from16 v12, v19

    .end local v19    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v12    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    move-object/from16 v4, v24

    .line 1382
    goto/16 :goto_6

    .line 1384
    .end local v12    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v19    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_25
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/protobuf/Proto2Schema;->fieldInitializer:Lcom/google/protobuf/FieldInitializer;

    .line 1385
    invoke-static/range {v22 .. v22}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v10

    move-object/from16 v0, p2

    invoke-virtual {v4, v0, v10, v11}, Lcom/google/protobuf/FieldInitializer;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 1384
    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Lcom/google/protobuf/Reader;->readInt64List(Ljava/util/List;)V

    move-object/from16 v12, v19

    .end local v19    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v12    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    move-object/from16 v4, v24

    .line 1386
    goto/16 :goto_6

    .line 1388
    .end local v12    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v19    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_26
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/protobuf/Proto2Schema;->fieldInitializer:Lcom/google/protobuf/FieldInitializer;

    .line 1389
    invoke-static/range {v22 .. v22}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v10

    move-object/from16 v0, p2

    invoke-virtual {v4, v0, v10, v11}, Lcom/google/protobuf/FieldInitializer;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 1388
    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Lcom/google/protobuf/Reader;->readUInt64List(Ljava/util/List;)V

    move-object/from16 v12, v19

    .end local v19    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v12    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    move-object/from16 v4, v24

    .line 1390
    goto/16 :goto_6

    .line 1392
    .end local v12    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v19    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_27
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/protobuf/Proto2Schema;->fieldInitializer:Lcom/google/protobuf/FieldInitializer;

    .line 1393
    invoke-static/range {v22 .. v22}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v10

    move-object/from16 v0, p2

    invoke-virtual {v4, v0, v10, v11}, Lcom/google/protobuf/FieldInitializer;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 1392
    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Lcom/google/protobuf/Reader;->readInt32List(Ljava/util/List;)V

    move-object/from16 v12, v19

    .end local v19    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v12    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    move-object/from16 v4, v24

    .line 1394
    goto/16 :goto_6

    .line 1396
    .end local v12    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v19    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_28
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/protobuf/Proto2Schema;->fieldInitializer:Lcom/google/protobuf/FieldInitializer;

    .line 1397
    invoke-static/range {v22 .. v22}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v10

    move-object/from16 v0, p2

    invoke-virtual {v4, v0, v10, v11}, Lcom/google/protobuf/FieldInitializer;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 1396
    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Lcom/google/protobuf/Reader;->readFixed64List(Ljava/util/List;)V

    move-object/from16 v12, v19

    .end local v19    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v12    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    move-object/from16 v4, v24

    .line 1398
    goto/16 :goto_6

    .line 1400
    .end local v12    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v19    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_29
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/protobuf/Proto2Schema;->fieldInitializer:Lcom/google/protobuf/FieldInitializer;

    .line 1401
    invoke-static/range {v22 .. v22}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v10

    move-object/from16 v0, p2

    invoke-virtual {v4, v0, v10, v11}, Lcom/google/protobuf/FieldInitializer;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 1400
    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Lcom/google/protobuf/Reader;->readFixed32List(Ljava/util/List;)V

    move-object/from16 v12, v19

    .end local v19    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v12    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    move-object/from16 v4, v24

    .line 1402
    goto/16 :goto_6

    .line 1404
    .end local v12    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v19    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_2a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/protobuf/Proto2Schema;->fieldInitializer:Lcom/google/protobuf/FieldInitializer;

    .line 1405
    invoke-static/range {v22 .. v22}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v10

    move-object/from16 v0, p2

    invoke-virtual {v4, v0, v10, v11}, Lcom/google/protobuf/FieldInitializer;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 1404
    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Lcom/google/protobuf/Reader;->readBoolList(Ljava/util/List;)V

    move-object/from16 v12, v19

    .end local v19    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v12    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    move-object/from16 v4, v24

    .line 1406
    goto/16 :goto_6

    .line 1408
    .end local v12    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v19    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_2b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/protobuf/Proto2Schema;->fieldInitializer:Lcom/google/protobuf/FieldInitializer;

    .line 1409
    invoke-static/range {v22 .. v22}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v10

    move-object/from16 v0, p2

    invoke-virtual {v4, v0, v10, v11}, Lcom/google/protobuf/FieldInitializer;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 1408
    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Lcom/google/protobuf/Reader;->readUInt32List(Ljava/util/List;)V

    move-object/from16 v12, v19

    .end local v19    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v12    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    move-object/from16 v4, v24

    .line 1410
    goto/16 :goto_6

    .line 1412
    .end local v12    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v19    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_2c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/protobuf/Proto2Schema;->fieldInitializer:Lcom/google/protobuf/FieldInitializer;

    .line 1413
    invoke-static/range {v22 .. v22}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v10

    move-object/from16 v0, p2

    invoke-virtual {v4, v0, v10, v11}, Lcom/google/protobuf/FieldInitializer;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 1412
    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Lcom/google/protobuf/Reader;->readEnumList(Ljava/util/List;)V

    move-object/from16 v12, v19

    .end local v19    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v12    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    move-object/from16 v4, v24

    .line 1414
    goto/16 :goto_6

    .line 1416
    .end local v12    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v19    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_2d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/protobuf/Proto2Schema;->fieldInitializer:Lcom/google/protobuf/FieldInitializer;

    .line 1417
    invoke-static/range {v22 .. v22}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v10

    move-object/from16 v0, p2

    invoke-virtual {v4, v0, v10, v11}, Lcom/google/protobuf/FieldInitializer;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 1416
    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Lcom/google/protobuf/Reader;->readSFixed32List(Ljava/util/List;)V

    move-object/from16 v12, v19

    .end local v19    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v12    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    move-object/from16 v4, v24

    .line 1418
    goto/16 :goto_6

    .line 1420
    .end local v12    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v19    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_2e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/protobuf/Proto2Schema;->fieldInitializer:Lcom/google/protobuf/FieldInitializer;

    .line 1421
    invoke-static/range {v22 .. v22}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v10

    move-object/from16 v0, p2

    invoke-virtual {v4, v0, v10, v11}, Lcom/google/protobuf/FieldInitializer;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 1420
    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Lcom/google/protobuf/Reader;->readSFixed64List(Ljava/util/List;)V

    move-object/from16 v12, v19

    .end local v19    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v12    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    move-object/from16 v4, v24

    .line 1422
    goto/16 :goto_6

    .line 1424
    .end local v12    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v19    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_2f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/protobuf/Proto2Schema;->fieldInitializer:Lcom/google/protobuf/FieldInitializer;

    .line 1425
    invoke-static/range {v22 .. v22}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v10

    move-object/from16 v0, p2

    invoke-virtual {v4, v0, v10, v11}, Lcom/google/protobuf/FieldInitializer;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 1424
    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Lcom/google/protobuf/Reader;->readSInt32List(Ljava/util/List;)V

    move-object/from16 v12, v19

    .end local v19    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v12    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    move-object/from16 v4, v24

    .line 1426
    goto/16 :goto_6

    .line 1428
    .end local v12    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v19    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_30
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/protobuf/Proto2Schema;->fieldInitializer:Lcom/google/protobuf/FieldInitializer;

    .line 1429
    invoke-static/range {v22 .. v22}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v10

    move-object/from16 v0, p2

    invoke-virtual {v4, v0, v10, v11}, Lcom/google/protobuf/FieldInitializer;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 1428
    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Lcom/google/protobuf/Reader;->readSInt64List(Ljava/util/List;)V

    move-object/from16 v12, v19

    .end local v19    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v12    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    move-object/from16 v4, v24

    .line 1430
    goto/16 :goto_6

    .line 1434
    .end local v12    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v19    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_31
    invoke-static/range {v22 .. v22}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/protobuf/Proto2Schema;->messageFieldClassMap:Lcom/google/protobuf/Int2ObjectHashMap;

    .line 1436
    invoke-virtual {v4, v7}, Lcom/google/protobuf/Int2ObjectHashMap;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Class;

    move-object/from16 v10, p0

    move-object/from16 v11, p2

    move-object/from16 v14, p3

    move-object/from16 v16, p4

    .line 1432
    invoke-virtual/range {v10 .. v16}, Lcom/google/protobuf/Proto2Schema;->readGroupList(Ljava/lang/Object;JLcom/google/protobuf/Reader;Ljava/lang/Class;Lcom/google/protobuf/ExtensionRegistryLite;)V

    move-object/from16 v12, v19

    .end local v19    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v12    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    move-object/from16 v4, v24

    .line 1438
    goto/16 :goto_6

    .line 1440
    .end local v12    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v19    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_32
    if-nez v19, :cond_13

    .line 1441
    new-instance v12, Lcom/google/protobuf/Int2ObjectHashMap;

    invoke-direct {v12}, Lcom/google/protobuf/Int2ObjectHashMap;-><init>()V
    :try_end_5
    .catch Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1443
    .end local v19    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v12    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :goto_7
    :try_start_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/protobuf/Proto2Schema;->mapFieldDefaultEntryMap:Lcom/google/protobuf/Int2ObjectHashMap;

    .line 1446
    invoke-virtual {v4, v7}, Lcom/google/protobuf/Int2ObjectHashMap;->get(I)Ljava/lang/Object;

    move-result-object v13

    move-object/from16 v10, p0

    move v11, v7

    move-object/from16 v14, p4

    move-object/from16 v15, p3

    .line 1443
    invoke-direct/range {v10 .. v15}, Lcom/google/protobuf/Proto2Schema;->mergeMap(ILcom/google/protobuf/Int2ObjectHashMap;Ljava/lang/Object;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protobuf/Reader;)V
    :try_end_6
    .catch Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-object/from16 v4, v24

    .line 1449
    goto/16 :goto_6

    .line 1452
    .end local v12    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v19    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_33
    :try_start_7
    invoke-static/range {v22 .. v22}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v4

    invoke-interface/range {p3 .. p3}, Lcom/google/protobuf/Reader;->readDouble()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    .line 1451
    move-object/from16 v0, p2

    invoke-static {v0, v4, v5, v6}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1453
    const-wide/16 v4, 0x8

    add-long v4, v4, v20

    invoke-static {v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v4

    move-object/from16 v0, p2

    invoke-static {v0, v7, v4}, Lcom/google/protobuf/Proto2Schema;->setOneofPresent(Ljava/lang/Object;II)V

    move-object/from16 v12, v19

    .end local v19    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v12    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    move-object/from16 v4, v24

    .line 1454
    goto/16 :goto_6

    .line 1457
    .end local v12    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v19    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_34
    invoke-static/range {v22 .. v22}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v4

    invoke-interface/range {p3 .. p3}, Lcom/google/protobuf/Reader;->readFloat()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    .line 1456
    move-object/from16 v0, p2

    invoke-static {v0, v4, v5, v6}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1458
    const-wide/16 v4, 0x8

    add-long v4, v4, v20

    invoke-static {v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v4

    move-object/from16 v0, p2

    invoke-static {v0, v7, v4}, Lcom/google/protobuf/Proto2Schema;->setOneofPresent(Ljava/lang/Object;II)V

    move-object/from16 v12, v19

    .end local v19    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v12    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    move-object/from16 v4, v24

    .line 1459
    goto/16 :goto_6

    .line 1462
    .end local v12    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v19    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_35
    invoke-static/range {v22 .. v22}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v4

    invoke-interface/range {p3 .. p3}, Lcom/google/protobuf/Reader;->readInt64()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 1461
    move-object/from16 v0, p2

    invoke-static {v0, v4, v5, v6}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1463
    const-wide/16 v4, 0x8

    add-long v4, v4, v20

    invoke-static {v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v4

    move-object/from16 v0, p2

    invoke-static {v0, v7, v4}, Lcom/google/protobuf/Proto2Schema;->setOneofPresent(Ljava/lang/Object;II)V

    move-object/from16 v12, v19

    .end local v19    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v12    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    move-object/from16 v4, v24

    .line 1464
    goto/16 :goto_6

    .line 1467
    .end local v12    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v19    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_36
    invoke-static/range {v22 .. v22}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v4

    invoke-interface/range {p3 .. p3}, Lcom/google/protobuf/Reader;->readUInt64()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 1466
    move-object/from16 v0, p2

    invoke-static {v0, v4, v5, v6}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1468
    const-wide/16 v4, 0x8

    add-long v4, v4, v20

    invoke-static {v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v4

    move-object/from16 v0, p2

    invoke-static {v0, v7, v4}, Lcom/google/protobuf/Proto2Schema;->setOneofPresent(Ljava/lang/Object;II)V

    move-object/from16 v12, v19

    .end local v19    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v12    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    move-object/from16 v4, v24

    .line 1469
    goto/16 :goto_6

    .line 1472
    .end local v12    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v19    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_37
    invoke-static/range {v22 .. v22}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v4

    invoke-interface/range {p3 .. p3}, Lcom/google/protobuf/Reader;->readInt32()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 1471
    move-object/from16 v0, p2

    invoke-static {v0, v4, v5, v6}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1473
    const-wide/16 v4, 0x8

    add-long v4, v4, v20

    invoke-static {v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v4

    move-object/from16 v0, p2

    invoke-static {v0, v7, v4}, Lcom/google/protobuf/Proto2Schema;->setOneofPresent(Ljava/lang/Object;II)V

    move-object/from16 v12, v19

    .end local v19    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v12    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    move-object/from16 v4, v24

    .line 1474
    goto/16 :goto_6

    .line 1477
    .end local v12    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v19    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_38
    invoke-static/range {v22 .. v22}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v4

    invoke-interface/range {p3 .. p3}, Lcom/google/protobuf/Reader;->readFixed64()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 1476
    move-object/from16 v0, p2

    invoke-static {v0, v4, v5, v6}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1478
    const-wide/16 v4, 0x8

    add-long v4, v4, v20

    invoke-static {v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v4

    move-object/from16 v0, p2

    invoke-static {v0, v7, v4}, Lcom/google/protobuf/Proto2Schema;->setOneofPresent(Ljava/lang/Object;II)V

    move-object/from16 v12, v19

    .end local v19    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v12    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    move-object/from16 v4, v24

    .line 1479
    goto/16 :goto_6

    .line 1482
    .end local v12    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v19    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_39
    invoke-static/range {v22 .. v22}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v4

    invoke-interface/range {p3 .. p3}, Lcom/google/protobuf/Reader;->readFixed32()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 1481
    move-object/from16 v0, p2

    invoke-static {v0, v4, v5, v6}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1483
    const-wide/16 v4, 0x8

    add-long v4, v4, v20

    invoke-static {v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v4

    move-object/from16 v0, p2

    invoke-static {v0, v7, v4}, Lcom/google/protobuf/Proto2Schema;->setOneofPresent(Ljava/lang/Object;II)V

    move-object/from16 v12, v19

    .end local v19    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v12    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    move-object/from16 v4, v24

    .line 1484
    goto/16 :goto_6

    .line 1487
    .end local v12    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v19    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_3a
    invoke-static/range {v22 .. v22}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v4

    invoke-interface/range {p3 .. p3}, Lcom/google/protobuf/Reader;->readBool()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 1486
    move-object/from16 v0, p2

    invoke-static {v0, v4, v5, v6}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1488
    const-wide/16 v4, 0x8

    add-long v4, v4, v20

    invoke-static {v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v4

    move-object/from16 v0, p2

    invoke-static {v0, v7, v4}, Lcom/google/protobuf/Proto2Schema;->setOneofPresent(Ljava/lang/Object;II)V

    move-object/from16 v12, v19

    .end local v19    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v12    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    move-object/from16 v4, v24

    .line 1489
    goto/16 :goto_6

    .line 1491
    .end local v12    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v19    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_3b
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v22

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/Proto2Schema;->readString(Ljava/lang/Object;ILcom/google/protobuf/Reader;)V

    .line 1492
    const-wide/16 v4, 0x8

    add-long v4, v4, v20

    invoke-static {v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v4

    move-object/from16 v0, p2

    invoke-static {v0, v7, v4}, Lcom/google/protobuf/Proto2Schema;->setOneofPresent(Ljava/lang/Object;II)V

    move-object/from16 v12, v19

    .end local v19    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v12    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    move-object/from16 v4, v24

    .line 1493
    goto/16 :goto_6

    .line 1497
    .end local v12    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v19    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_3c
    invoke-static/range {v22 .. v22}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v10

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/protobuf/Proto2Schema;->messageFieldClassMap:Lcom/google/protobuf/Int2ObjectHashMap;

    .line 1498
    invoke-virtual {v4, v7}, Lcom/google/protobuf/Int2ObjectHashMap;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-interface {v0, v4, v1}, Lcom/google/protobuf/Reader;->readMessage(Ljava/lang/Class;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v4

    .line 1495
    move-object/from16 v0, p2

    invoke-static {v0, v10, v11, v4}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1499
    const-wide/16 v4, 0x8

    add-long v4, v4, v20

    invoke-static {v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v4

    move-object/from16 v0, p2

    invoke-static {v0, v7, v4}, Lcom/google/protobuf/Proto2Schema;->setOneofPresent(Ljava/lang/Object;II)V

    move-object/from16 v12, v19

    .end local v19    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v12    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    move-object/from16 v4, v24

    .line 1500
    goto/16 :goto_6

    .line 1502
    .end local v12    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v19    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_3d
    invoke-static/range {v22 .. v22}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v4

    invoke-interface/range {p3 .. p3}, Lcom/google/protobuf/Reader;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-static {v0, v4, v5, v6}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1503
    const-wide/16 v4, 0x8

    add-long v4, v4, v20

    invoke-static {v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v4

    move-object/from16 v0, p2

    invoke-static {v0, v7, v4}, Lcom/google/protobuf/Proto2Schema;->setOneofPresent(Ljava/lang/Object;II)V

    move-object/from16 v12, v19

    .end local v19    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v12    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    move-object/from16 v4, v24

    .line 1504
    goto/16 :goto_6

    .line 1507
    .end local v12    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v19    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_3e
    invoke-static/range {v22 .. v22}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v4

    invoke-interface/range {p3 .. p3}, Lcom/google/protobuf/Reader;->readUInt32()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 1506
    move-object/from16 v0, p2

    invoke-static {v0, v4, v5, v6}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1508
    const-wide/16 v4, 0x8

    add-long v4, v4, v20

    invoke-static {v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v4

    move-object/from16 v0, p2

    invoke-static {v0, v7, v4}, Lcom/google/protobuf/Proto2Schema;->setOneofPresent(Ljava/lang/Object;II)V

    move-object/from16 v12, v19

    .end local v19    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v12    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    move-object/from16 v4, v24

    .line 1509
    goto/16 :goto_6

    .line 1512
    .end local v12    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v19    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_3f
    invoke-static/range {v22 .. v22}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v4

    invoke-interface/range {p3 .. p3}, Lcom/google/protobuf/Reader;->readEnum()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 1511
    move-object/from16 v0, p2

    invoke-static {v0, v4, v5, v6}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1513
    const-wide/16 v4, 0x8

    add-long v4, v4, v20

    invoke-static {v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v4

    move-object/from16 v0, p2

    invoke-static {v0, v7, v4}, Lcom/google/protobuf/Proto2Schema;->setOneofPresent(Ljava/lang/Object;II)V

    move-object/from16 v12, v19

    .end local v19    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v12    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    move-object/from16 v4, v24

    .line 1514
    goto/16 :goto_6

    .line 1517
    .end local v12    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v19    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_40
    invoke-static/range {v22 .. v22}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v4

    invoke-interface/range {p3 .. p3}, Lcom/google/protobuf/Reader;->readSFixed32()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 1516
    move-object/from16 v0, p2

    invoke-static {v0, v4, v5, v6}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1518
    const-wide/16 v4, 0x8

    add-long v4, v4, v20

    invoke-static {v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v4

    move-object/from16 v0, p2

    invoke-static {v0, v7, v4}, Lcom/google/protobuf/Proto2Schema;->setOneofPresent(Ljava/lang/Object;II)V

    move-object/from16 v12, v19

    .end local v19    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v12    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    move-object/from16 v4, v24

    .line 1519
    goto/16 :goto_6

    .line 1522
    .end local v12    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v19    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_41
    invoke-static/range {v22 .. v22}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v4

    invoke-interface/range {p3 .. p3}, Lcom/google/protobuf/Reader;->readSFixed64()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 1521
    move-object/from16 v0, p2

    invoke-static {v0, v4, v5, v6}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1523
    const-wide/16 v4, 0x8

    add-long v4, v4, v20

    invoke-static {v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v4

    move-object/from16 v0, p2

    invoke-static {v0, v7, v4}, Lcom/google/protobuf/Proto2Schema;->setOneofPresent(Ljava/lang/Object;II)V

    move-object/from16 v12, v19

    .end local v19    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v12    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    move-object/from16 v4, v24

    .line 1524
    goto/16 :goto_6

    .line 1527
    .end local v12    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v19    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_42
    invoke-static/range {v22 .. v22}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v4

    invoke-interface/range {p3 .. p3}, Lcom/google/protobuf/Reader;->readSInt32()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 1526
    move-object/from16 v0, p2

    invoke-static {v0, v4, v5, v6}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1528
    const-wide/16 v4, 0x8

    add-long v4, v4, v20

    invoke-static {v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v4

    move-object/from16 v0, p2

    invoke-static {v0, v7, v4}, Lcom/google/protobuf/Proto2Schema;->setOneofPresent(Ljava/lang/Object;II)V

    move-object/from16 v12, v19

    .end local v19    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v12    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    move-object/from16 v4, v24

    .line 1529
    goto/16 :goto_6

    .line 1532
    .end local v12    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v19    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_43
    invoke-static/range {v22 .. v22}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v4

    invoke-interface/range {p3 .. p3}, Lcom/google/protobuf/Reader;->readSInt64()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 1531
    move-object/from16 v0, p2

    invoke-static {v0, v4, v5, v6}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1533
    const-wide/16 v4, 0x8

    add-long v4, v4, v20

    invoke-static {v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v4

    move-object/from16 v0, p2

    invoke-static {v0, v7, v4}, Lcom/google/protobuf/Proto2Schema;->setOneofPresent(Ljava/lang/Object;II)V

    move-object/from16 v12, v19

    .end local v19    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v12    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    move-object/from16 v4, v24

    .line 1534
    goto/16 :goto_6

    .line 1538
    .end local v12    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v19    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_44
    invoke-static/range {v22 .. v22}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v10

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/protobuf/Proto2Schema;->messageFieldClassMap:Lcom/google/protobuf/Int2ObjectHashMap;

    .line 1539
    invoke-virtual {v4, v7}, Lcom/google/protobuf/Int2ObjectHashMap;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-interface {v0, v4, v1}, Lcom/google/protobuf/Reader;->readGroup(Ljava/lang/Class;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v4

    .line 1536
    move-object/from16 v0, p2

    invoke-static {v0, v10, v11, v4}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1540
    const-wide/16 v4, 0x8

    add-long v4, v4, v20

    invoke-static {v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v4

    move-object/from16 v0, p2

    invoke-static {v0, v7, v4}, Lcom/google/protobuf/Proto2Schema;->setOneofPresent(Ljava/lang/Object;II)V
    :try_end_7
    .catch Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-object/from16 v12, v19

    .end local v19    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v12    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    move-object/from16 v4, v24

    .line 1541
    goto/16 :goto_6

    .end local v12    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v19    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :cond_c
    move-object/from16 v12, v19

    .line 1548
    .end local v19    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v12    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto/16 :goto_2

    .line 1553
    .end local v12    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v19    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :catch_0
    move-exception v17

    move-object/from16 v12, v19

    .line 1556
    .end local v19    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v12    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .local v17, "e":Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;
    :goto_8
    if-nez v24, :cond_10

    .line 1557
    :try_start_8
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/UnknownFieldSchema;->newInstance()Ljava/lang/Object;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-result-object v23

    .restart local v23    # "unknownFields":Ljava/lang/Object;, "TUT;"
    move-object/from16 v4, v23

    .line 1559
    .end local v23    # "unknownFields":Ljava/lang/Object;, "TUT;"
    :goto_9
    :try_start_9
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v4, v1}, Lcom/google/protobuf/UnknownFieldSchema;->mergeOneFieldFrom(Ljava/lang/Object;Lcom/google/protobuf/Reader;)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    move-result v5

    if-nez v5, :cond_b

    .line 1566
    if-eqz v4, :cond_d

    .line 1567
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/google/protobuf/UnknownFieldSchema;->toImmutable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v4}, Lcom/google/protobuf/UnknownFieldSchema;->setToMessage(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1569
    :cond_d
    if-eqz v12, :cond_4

    .line 1570
    invoke-virtual {v12}, Lcom/google/protobuf/Int2ObjectHashMap;->entries()Ljava/lang/Iterable;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveEntry;

    .line 1571
    .restart local v18    # "entry":Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveEntry;, "Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveEntry<Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/protobuf/Proto2Schema;->positionStrategy:Lcom/google/protobuf/Proto2Schema$PositionStrategy;

    invoke-interface/range {v18 .. v18}, Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveEntry;->key()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/google/protobuf/Proto2Schema$PositionStrategy;->positionForFieldNumber(I)J

    move-result-wide v20

    .line 1573
    invoke-static/range {v20 .. v21}, Lcom/google/protobuf/Proto2Schema;->typeAndOffsetAt(J)I

    move-result v5

    invoke-static {v5}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v10

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/protobuf/Proto2Schema;->mapFieldSchema:Lcom/google/protobuf/MapFieldSchema;

    invoke-interface/range {v18 .. v18}, Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveEntry;->value()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/google/protobuf/MapFieldSchema;->toImmutable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 1572
    move-object/from16 v0, p2

    invoke-static {v0, v10, v11, v5}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_a

    .line 1566
    .end local v7    # "number":I
    .end local v12    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .end local v17    # "e":Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;
    .end local v18    # "entry":Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveEntry;, "Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveEntry<Ljava/lang/Object;>;"
    .end local v20    # "pos":J
    .end local v22    # "typeAndOffset":I
    .restart local v19    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :catchall_0
    move-exception v4

    move-object/from16 v12, v19

    .end local v19    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v12    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :goto_b
    if-eqz v24, :cond_e

    .line 1567
    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/google/protobuf/UnknownFieldSchema;->toImmutable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v5}, Lcom/google/protobuf/UnknownFieldSchema;->setToMessage(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1569
    :cond_e
    if-eqz v12, :cond_f

    .line 1570
    invoke-virtual {v12}, Lcom/google/protobuf/Int2ObjectHashMap;->entries()Ljava/lang/Iterable;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveEntry;

    .line 1571
    .restart local v18    # "entry":Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveEntry;, "Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveEntry<Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/protobuf/Proto2Schema;->positionStrategy:Lcom/google/protobuf/Proto2Schema$PositionStrategy;

    invoke-interface/range {v18 .. v18}, Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveEntry;->key()I

    move-result v8

    invoke-virtual {v6, v8}, Lcom/google/protobuf/Proto2Schema$PositionStrategy;->positionForFieldNumber(I)J

    move-result-wide v20

    .line 1573
    .restart local v20    # "pos":J
    invoke-static/range {v20 .. v21}, Lcom/google/protobuf/Proto2Schema;->typeAndOffsetAt(J)I

    move-result v6

    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v10

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/protobuf/Proto2Schema;->mapFieldSchema:Lcom/google/protobuf/MapFieldSchema;

    invoke-interface/range {v18 .. v18}, Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveEntry;->value()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v6, v8}, Lcom/google/protobuf/MapFieldSchema;->toImmutable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 1572
    move-object/from16 v0, p2

    invoke-static {v0, v10, v11, v6}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_c

    .line 1574
    .end local v18    # "entry":Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveEntry;, "Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveEntry<Ljava/lang/Object;>;"
    .end local v20    # "pos":J
    :cond_f
    throw v4

    .line 1566
    .restart local v7    # "number":I
    .restart local v20    # "pos":J
    .restart local v22    # "typeAndOffset":I
    :catchall_1
    move-exception v4

    goto :goto_b

    .end local v12    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v19    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :catchall_2
    move-exception v5

    move-object/from16 v12, v19

    .end local v19    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v12    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    move-object/from16 v24, v4

    move-object v4, v5

    goto :goto_b

    .restart local v17    # "e":Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;
    :catchall_3
    move-exception v5

    move-object/from16 v24, v4

    move-object v4, v5

    goto :goto_b

    .line 1553
    .end local v17    # "e":Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;
    :catch_1
    move-exception v17

    goto/16 :goto_8

    .end local v12    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v19    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :catch_2
    move-exception v17

    move-object/from16 v12, v19

    .end local v19    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v12    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    move-object/from16 v24, v4

    goto/16 :goto_8

    .restart local v17    # "e":Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;
    :cond_10
    move-object/from16 v4, v24

    goto/16 :goto_9

    .end local v12    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .end local v17    # "e":Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;
    .restart local v19    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :cond_11
    move-object/from16 v12, v19

    .end local v19    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v12    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto/16 :goto_6

    .end local v12    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v19    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :cond_12
    move-object/from16 v4, v24

    goto/16 :goto_4

    :cond_13
    move-object/from16 v12, v19

    .end local v19    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v12    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto/16 :goto_7

    .line 1225
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
        :pswitch_44
    .end packed-switch
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
    .line 1587
    .local p0, "this":Lcom/google/protobuf/Proto2Schema;, "Lcom/google/protobuf/Proto2Schema<TT;>;"
    .local p2, "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    invoke-virtual {p2, p1}, Lcom/google/protobuf/Int2ObjectHashMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 1588
    .local v0, "mapField":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 1589
    iget-object v1, p0, Lcom/google/protobuf/Proto2Schema;->mapFieldSchema:Lcom/google/protobuf/MapFieldSchema;

    invoke-interface {v1, p3}, Lcom/google/protobuf/MapFieldSchema;->newMapField(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1590
    invoke-virtual {p2, p1, v0}, Lcom/google/protobuf/Int2ObjectHashMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1593
    :cond_0
    iget-object v1, p0, Lcom/google/protobuf/Proto2Schema;->mapFieldSchema:Lcom/google/protobuf/MapFieldSchema;

    .line 1594
    invoke-interface {v1, v0}, Lcom/google/protobuf/MapFieldSchema;->forMutableMapData(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/google/protobuf/Proto2Schema;->mapFieldSchema:Lcom/google/protobuf/MapFieldSchema;

    .line 1595
    invoke-interface {v2, p3}, Lcom/google/protobuf/MapFieldSchema;->forMapMetadata(Ljava/lang/Object;)Lcom/google/protobuf/MapEntryLite$Metadata;

    move-result-object v2

    .line 1593
    invoke-interface {p5, v1, v2, p4}, Lcom/google/protobuf/Reader;->readMap(Ljava/util/Map;Lcom/google/protobuf/MapEntryLite$Metadata;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 1597
    return-void
.end method

.method static newLookupSchema(Ljava/lang/Class;Lcom/google/protobuf/MessageInfo;Lcom/google/protobuf/FieldInitializer;Lcom/google/protobuf/UnknownFieldSchema;Lcom/google/protobuf/ExtensionSchema;Lcom/google/protobuf/MapFieldSchema;)Lcom/google/protobuf/Proto2Schema;
    .locals 28
    .param p1, "messageInfo"    # Lcom/google/protobuf/MessageInfo;
    .param p2, "fieldInitializer"    # Lcom/google/protobuf/FieldInitializer;
    .param p4, "extensionSchema"    # Lcom/google/protobuf/ExtensionSchema;
    .param p5, "mapFieldSchema"    # Lcom/google/protobuf/MapFieldSchema;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/google/protobuf/MessageInfo;",
            "Lcom/google/protobuf/FieldInitializer;",
            "Lcom/google/protobuf/UnknownFieldSchema",
            "<*>;",
            "Lcom/google/protobuf/ExtensionSchema;",
            "Lcom/google/protobuf/MapFieldSchema;",
            ")",
            "Lcom/google/protobuf/Proto2Schema",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 191
    .local p0, "messageClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p3, "unknownFieldSchema":Lcom/google/protobuf/UnknownFieldSchema;, "Lcom/google/protobuf/UnknownFieldSchema<*>;"
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/MessageInfo;->getFields()Ljava/util/List;

    move-result-object v20

    .line 193
    .local v20, "fis":Ljava/util/List;, "Ljava/util/List<Lcom/google/protobuf/FieldInfo;>;"
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v22

    .line 194
    .local v22, "numFields":I
    mul-int/lit8 v19, v22, 0x10

    .line 195
    .local v19, "bufferLength":I
    add-int/lit8 v2, v19, 0x8

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 196
    .local v3, "buffer":Ljava/nio/ByteBuffer;
    invoke-static {v3}, Lcom/google/protobuf/UnsafeUtil;->addressOffset(Ljava/nio/ByteBuffer;)J

    move-result-wide v26

    .line 197
    .local v26, "tempAddress":J
    const-wide/16 v12, 0x7

    and-long v12, v12, v26

    const-wide/16 v14, 0x0

    cmp-long v2, v12, v14

    if-eqz v2, :cond_0

    .line 199
    const-wide/16 v12, -0x8

    and-long v12, v12, v26

    const-wide/16 v14, 0x8

    add-long v26, v12, v14

    .line 201
    :cond_0
    move-wide/from16 v4, v26

    .line 202
    .local v4, "address":J
    move/from16 v0, v19

    int-to-long v12, v0

    add-long v6, v4, v12

    .line 205
    .local v6, "limit":J
    move-wide/from16 v24, v4

    .line 206
    .local v24, "pos":J
    const/16 v21, 0x0

    .local v21, "i":I
    :goto_0
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v21

    if-ge v0, v2, :cond_1

    .line 207
    invoke-interface/range {v20 .. v21}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/FieldInfo;

    move-wide/from16 v0, v24

    invoke-static {v2, v0, v1}, Lcom/google/protobuf/Proto2Schema;->storeFieldData(Lcom/google/protobuf/FieldInfo;J)V

    .line 206
    add-int/lit8 v21, v21, 0x1

    const-wide/16 v12, 0x10

    add-long v24, v24, v12

    goto :goto_0

    .line 210
    :cond_1
    const/4 v9, -0x1

    .line 211
    .local v9, "minFieldNumber":I
    const/4 v10, -0x1

    .line 212
    .local v10, "maxFieldNumber":I
    if-lez v22, :cond_2

    .line 213
    const/4 v2, 0x0

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/FieldInfo;

    invoke-virtual {v2}, Lcom/google/protobuf/FieldInfo;->getFieldNumber()I

    move-result v9

    .line 214
    add-int/lit8 v2, v22, -0x1

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/FieldInfo;

    invoke-virtual {v2}, Lcom/google/protobuf/FieldInfo;->getFieldNumber()I

    move-result v10

    .line 216
    :cond_2
    new-instance v2, Lcom/google/protobuf/Proto2Schema;

    .line 220
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v8

    const/4 v11, 0x0

    .line 225
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/MessageInfo;->messageFieldClassMap()Lcom/google/protobuf/Int2ObjectHashMap;

    move-result-object v13

    .line 230
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/MessageInfo;->mapFieldDefaultEntryMap()Lcom/google/protobuf/Int2ObjectHashMap;

    move-result-object v18

    move-object/from16 v12, p0

    move-object/from16 v14, p2

    move-object/from16 v15, p3

    move-object/from16 v16, p4

    move-object/from16 v17, p5

    invoke-direct/range {v2 .. v18}, Lcom/google/protobuf/Proto2Schema;-><init>(Ljava/nio/ByteBuffer;JJIIIZLjava/lang/Class;Lcom/google/protobuf/Int2ObjectHashMap;Lcom/google/protobuf/FieldInitializer;Lcom/google/protobuf/UnknownFieldSchema;Lcom/google/protobuf/ExtensionSchema;Lcom/google/protobuf/MapFieldSchema;Lcom/google/protobuf/Int2ObjectHashMap;)V

    .line 216
    return-object v2
.end method

.method static newTableSchema(Ljava/lang/Class;Lcom/google/protobuf/MessageInfo;Lcom/google/protobuf/FieldInitializer;Lcom/google/protobuf/UnknownFieldSchema;Lcom/google/protobuf/ExtensionSchema;Lcom/google/protobuf/MapFieldSchema;)Lcom/google/protobuf/Proto2Schema;
    .locals 36
    .param p1, "messageInfo"    # Lcom/google/protobuf/MessageInfo;
    .param p2, "fieldInitializer"    # Lcom/google/protobuf/FieldInitializer;
    .param p4, "extensionSchema"    # Lcom/google/protobuf/ExtensionSchema;
    .param p5, "mapFieldSchema"    # Lcom/google/protobuf/MapFieldSchema;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/google/protobuf/MessageInfo;",
            "Lcom/google/protobuf/FieldInitializer;",
            "Lcom/google/protobuf/UnknownFieldSchema",
            "<*>;",
            "Lcom/google/protobuf/ExtensionSchema;",
            "Lcom/google/protobuf/MapFieldSchema;",
            ")",
            "Lcom/google/protobuf/Proto2Schema",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 120
    .local p0, "messageClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p3, "unknownFieldSchema":Lcom/google/protobuf/UnknownFieldSchema;, "Lcom/google/protobuf/UnknownFieldSchema<*>;"
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/MessageInfo;->getFields()Ljava/util/List;

    move-result-object v26

    .line 124
    .local v26, "fis":Ljava/util/List;, "Ljava/util/List<Lcom/google/protobuf/FieldInfo;>;"
    invoke-interface/range {v26 .. v26}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 125
    const/4 v11, 0x0

    .line 126
    .local v11, "minFieldNumber":I
    const/4 v12, 0x0

    .line 127
    .local v12, "maxFieldNumber":I
    const/16 v27, 0x0

    .line 135
    .local v27, "numEntries":I
    :goto_0
    mul-int/lit8 v22, v27, 0x10

    .line 136
    .local v22, "bufferLength":I
    add-int/lit8 v4, v22, 0x8

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 137
    .local v5, "buffer":Ljava/nio/ByteBuffer;
    invoke-static {v5}, Lcom/google/protobuf/UnsafeUtil;->addressOffset(Ljava/nio/ByteBuffer;)J

    move-result-wide v34

    .line 138
    .local v34, "tempAddress":J
    const-wide/16 v14, 0x7

    and-long v14, v14, v34

    const-wide/16 v16, 0x0

    cmp-long v4, v14, v16

    if-eqz v4, :cond_0

    .line 140
    const-wide/16 v14, -0x8

    and-long v14, v14, v34

    const-wide/16 v16, 0x8

    add-long v34, v14, v16

    .line 142
    :cond_0
    move-wide/from16 v6, v34

    .line 143
    .local v6, "address":J
    move/from16 v0, v22

    int-to-long v14, v0

    add-long v8, v6, v14

    .line 146
    .local v8, "limit":J
    const/16 v24, 0x0

    .line 147
    .local v24, "fieldIndex":I
    const/16 v21, 0x0

    .local v21, "bufferIndex":I
    :goto_1
    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    move-result v4

    move/from16 v0, v24

    if-ge v0, v4, :cond_4

    .line 148
    move-object/from16 v0, v26

    move/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/google/protobuf/FieldInfo;

    .line 149
    .local v23, "fi":Lcom/google/protobuf/FieldInfo;
    invoke-virtual/range {v23 .. v23}, Lcom/google/protobuf/FieldInfo;->getFieldNumber()I

    move-result v25

    .line 150
    .local v25, "fieldNumber":I
    sub-int v4, v25, v11

    shl-int/lit8 v4, v4, 0x4

    move/from16 v0, v21

    if-ge v0, v4, :cond_2

    .line 152
    move/from16 v0, v21

    int-to-long v14, v0

    add-long/2addr v14, v6

    const-wide/16 v16, 0x10

    add-long v30, v14, v16

    .line 153
    .local v30, "skipLimit":J
    move/from16 v0, v21

    int-to-long v14, v0

    add-long v32, v6, v14

    .local v32, "skipPos":J
    :goto_2
    cmp-long v4, v32, v30

    if-gez v4, :cond_3

    .line 154
    const-wide/16 v14, -0x1

    move-wide/from16 v0, v32

    invoke-static {v0, v1, v14, v15}, Lcom/google/protobuf/UnsafeUtil;->putLong(JJ)V

    .line 153
    const-wide/16 v14, 0x8

    add-long v32, v32, v14

    goto :goto_2

    .line 129
    .end local v5    # "buffer":Ljava/nio/ByteBuffer;
    .end local v6    # "address":J
    .end local v8    # "limit":J
    .end local v11    # "minFieldNumber":I
    .end local v12    # "maxFieldNumber":I
    .end local v21    # "bufferIndex":I
    .end local v22    # "bufferLength":I
    .end local v23    # "fi":Lcom/google/protobuf/FieldInfo;
    .end local v24    # "fieldIndex":I
    .end local v25    # "fieldNumber":I
    .end local v27    # "numEntries":I
    .end local v30    # "skipLimit":J
    .end local v32    # "skipPos":J
    .end local v34    # "tempAddress":J
    :cond_1
    const/4 v4, 0x0

    move-object/from16 v0, v26

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/FieldInfo;

    invoke-virtual {v4}, Lcom/google/protobuf/FieldInfo;->getFieldNumber()I

    move-result v11

    .line 130
    .restart local v11    # "minFieldNumber":I
    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, v26

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/FieldInfo;

    invoke-virtual {v4}, Lcom/google/protobuf/FieldInfo;->getFieldNumber()I

    move-result v12

    .line 131
    .restart local v12    # "maxFieldNumber":I
    sub-int v4, v12, v11

    add-int/lit8 v27, v4, 0x1

    .restart local v27    # "numEntries":I
    goto/16 :goto_0

    .line 161
    .restart local v5    # "buffer":Ljava/nio/ByteBuffer;
    .restart local v6    # "address":J
    .restart local v8    # "limit":J
    .restart local v21    # "bufferIndex":I
    .restart local v22    # "bufferLength":I
    .restart local v23    # "fi":Lcom/google/protobuf/FieldInfo;
    .restart local v24    # "fieldIndex":I
    .restart local v25    # "fieldNumber":I
    .restart local v34    # "tempAddress":J
    :cond_2
    move/from16 v0, v21

    int-to-long v14, v0

    add-long v28, v6, v14

    .line 162
    .local v28, "pos":J
    move-object/from16 v0, v23

    move-wide/from16 v1, v28

    invoke-static {v0, v1, v2}, Lcom/google/protobuf/Proto2Schema;->storeFieldData(Lcom/google/protobuf/FieldInfo;J)V

    .line 164
    add-int/lit8 v24, v24, 0x1

    .line 147
    .end local v28    # "pos":J
    :cond_3
    add-int/lit8 v21, v21, 0x10

    goto :goto_1

    .line 167
    .end local v23    # "fi":Lcom/google/protobuf/FieldInfo;
    .end local v25    # "fieldNumber":I
    :cond_4
    new-instance v4, Lcom/google/protobuf/Proto2Schema;

    .line 171
    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    move-result v10

    const/4 v13, 0x1

    .line 176
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/MessageInfo;->messageFieldClassMap()Lcom/google/protobuf/Int2ObjectHashMap;

    move-result-object v15

    .line 181
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/MessageInfo;->mapFieldDefaultEntryMap()Lcom/google/protobuf/Int2ObjectHashMap;

    move-result-object v20

    move-object/from16 v14, p0

    move-object/from16 v16, p2

    move-object/from16 v17, p3

    move-object/from16 v18, p4

    move-object/from16 v19, p5

    invoke-direct/range {v4 .. v20}, Lcom/google/protobuf/Proto2Schema;-><init>(Ljava/nio/ByteBuffer;JJIIIZLjava/lang/Class;Lcom/google/protobuf/Int2ObjectHashMap;Lcom/google/protobuf/FieldInitializer;Lcom/google/protobuf/UnknownFieldSchema;Lcom/google/protobuf/ExtensionSchema;Lcom/google/protobuf/MapFieldSchema;Lcom/google/protobuf/Int2ObjectHashMap;)V

    .line 167
    return-object v4
.end method

.method private static numberAt(J)I
    .locals 2
    .param p0, "pos"    # J

    .prologue
    .line 1716
    invoke-static {p0, p1}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v0

    return v0
.end method

.method private static offset(I)J
    .locals 2
    .param p0, "value"    # I

    .prologue
    .line 1740
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
    .line 1780
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
    .line 1764
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
    .line 1768
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
    .line 1772
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
    .line 1776
    .local p0, "message":Ljava/lang/Object;, "TT;"
    invoke-static {p0, p1, p2}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
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
    .line 1670
    .local p0, "this":Lcom/google/protobuf/Proto2Schema;, "Lcom/google/protobuf/Proto2Schema<TT;>;"
    invoke-static {p2}, Lcom/google/protobuf/Proto2Schema;->isEnforceUtf8(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1672
    invoke-static {p2}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v0

    invoke-interface {p3}, Lcom/google/protobuf/Reader;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1682
    :goto_0
    return-void

    .line 1673
    :cond_0
    iget-boolean v0, p0, Lcom/google/protobuf/Proto2Schema;->lite:Z

    if-eqz v0, :cond_1

    .line 1676
    invoke-static {p2}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v0

    invoke-interface {p3}, Lcom/google/protobuf/Reader;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_0

    .line 1680
    :cond_1
    invoke-static {p2}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

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
    .line 1685
    .local p0, "this":Lcom/google/protobuf/Proto2Schema;, "Lcom/google/protobuf/Proto2Schema<TT;>;"
    invoke-static {p2}, Lcom/google/protobuf/Proto2Schema;->isEnforceUtf8(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1686
    iget-object v0, p0, Lcom/google/protobuf/Proto2Schema;->fieldInitializer:Lcom/google/protobuf/FieldInitializer;

    .line 1687
    invoke-static {p2}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v2

    invoke-virtual {v0, p1, v2, v3}, Lcom/google/protobuf/FieldInitializer;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    .line 1686
    invoke-interface {p3, v0}, Lcom/google/protobuf/Reader;->readStringListRequireUtf8(Ljava/util/List;)V

    .line 1691
    :goto_0
    return-void

    .line 1689
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/Proto2Schema;->fieldInitializer:Lcom/google/protobuf/FieldInitializer;

    invoke-static {p2}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v2

    invoke-virtual {v0, p1, v2, v3}, Lcom/google/protobuf/FieldInitializer;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    invoke-interface {p3, v0}, Lcom/google/protobuf/Reader;->readStringList(Ljava/util/List;)V

    goto :goto_0
.end method

.method private static setFieldPresent(Ljava/lang/Object;I)V
    .locals 5
    .param p1, "presenceMaskAndOffset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;I)V"
        }
    .end annotation

    .prologue
    .line 1789
    .local p0, "message":Ljava/lang/Object;, "TT;"
    const/4 v3, 0x1

    ushr-int/lit8 v4, p1, 0x14

    shl-int v2, v3, v4

    .line 1790
    .local v2, "presenceMask":I
    const v3, 0xfffff

    and-int/2addr v3, p1

    int-to-long v0, v3

    .line 1794
    .local v0, "presenceFieldOffset":J
    invoke-static {p0, v0, v1}, Lcom/google/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v3

    or-int/2addr v3, v2

    .line 1791
    invoke-static {p0, v0, v1, v3}, Lcom/google/protobuf/UnsafeUtil;->putInt(Ljava/lang/Object;JI)V

    .line 1795
    return-void
.end method

.method private setMemoizedIsInitialized(Ljava/lang/Object;B)V
    .locals 2
    .param p2, "value"    # B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;B)V"
        }
    .end annotation

    .prologue
    .line 1810
    .local p0, "this":Lcom/google/protobuf/Proto2Schema;, "Lcom/google/protobuf/Proto2Schema<TT;>;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    iget-wide v0, p0, Lcom/google/protobuf/Proto2Schema;->memoizedIsInitializedOffset:J

    invoke-static {p1, v0, v1, p2}, Lcom/google/protobuf/UnsafeUtil;->putByte(Ljava/lang/Object;JB)V

    .line 1811
    return-void
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
    .line 1802
    .local p0, "message":Ljava/lang/Object;, "TT;"
    const v0, 0xfffff

    and-int/2addr v0, p2

    int-to-long v0, v0

    invoke-static {p0, v0, v1, p1}, Lcom/google/protobuf/UnsafeUtil;->putInt(Ljava/lang/Object;JI)V

    .line 1803
    return-void
.end method

.method private static storeFieldData(Lcom/google/protobuf/FieldInfo;J)V
    .locals 11
    .param p0, "fi"    # Lcom/google/protobuf/FieldInfo;
    .param p1, "pos"    # J

    .prologue
    const/4 v7, 0x0

    .line 239
    invoke-virtual {p0}, Lcom/google/protobuf/FieldInfo;->getOneof()Lcom/google/protobuf/OneofInfo;

    move-result-object v1

    .line 240
    .local v1, "oneof":Lcom/google/protobuf/OneofInfo;
    if-eqz v1, :cond_1

    .line 241
    invoke-virtual {p0}, Lcom/google/protobuf/FieldInfo;->getType()Lcom/google/protobuf/FieldType;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/protobuf/FieldType;->id()I

    move-result v6

    add-int/lit8 v5, v6, 0x33

    .line 242
    .local v5, "typeId":I
    invoke-virtual {v1}, Lcom/google/protobuf/OneofInfo;->getValueField()Ljava/lang/reflect/Field;

    move-result-object v6

    invoke-static {v6}, Lcom/google/protobuf/UnsafeUtil;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v8

    long-to-int v0, v8

    .line 243
    .local v0, "fieldOffset":I
    invoke-virtual {v1}, Lcom/google/protobuf/OneofInfo;->getCaseField()Ljava/lang/reflect/Field;

    move-result-object v6

    invoke-static {v6}, Lcom/google/protobuf/UnsafeUtil;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v8

    long-to-int v2, v8

    .line 244
    .local v2, "presenceFieldOffset":I
    const/4 v3, 0x0

    .line 258
    .local v3, "presenceMaskShift":I
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/FieldInfo;->getFieldNumber()I

    move-result v6

    invoke-static {p1, p2, v6}, Lcom/google/protobuf/UnsafeUtil;->putInt(JI)V

    .line 259
    const-wide/16 v8, 0x4

    add-long/2addr v8, p1

    .line 261
    invoke-virtual {p0}, Lcom/google/protobuf/FieldInfo;->isEnforceUtf8()Z

    move-result v6

    if-eqz v6, :cond_3

    const/high16 v6, 0x20000000

    .line 262
    :goto_1
    invoke-virtual {p0}, Lcom/google/protobuf/FieldInfo;->isRequired()Z

    move-result v10

    if-eqz v10, :cond_0

    const/high16 v7, 0x10000000

    :cond_0
    or-int/2addr v6, v7

    shl-int/lit8 v7, v5, 0x14

    or-int/2addr v6, v7

    or-int/2addr v6, v0

    .line 259
    invoke-static {v8, v9, v6}, Lcom/google/protobuf/UnsafeUtil;->putInt(JI)V

    .line 265
    const-wide/16 v6, 0x8

    add-long/2addr v6, p1

    shl-int/lit8 v8, v3, 0x14

    or-int/2addr v8, v2

    invoke-static {v6, v7, v8}, Lcom/google/protobuf/UnsafeUtil;->putInt(JI)V

    .line 266
    return-void

    .line 246
    .end local v0    # "fieldOffset":I
    .end local v2    # "presenceFieldOffset":I
    .end local v3    # "presenceMaskShift":I
    .end local v5    # "typeId":I
    :cond_1
    invoke-virtual {p0}, Lcom/google/protobuf/FieldInfo;->getType()Lcom/google/protobuf/FieldType;

    move-result-object v4

    .line 247
    .local v4, "type":Lcom/google/protobuf/FieldType;
    invoke-virtual {p0}, Lcom/google/protobuf/FieldInfo;->getField()Ljava/lang/reflect/Field;

    move-result-object v6

    invoke-static {v6}, Lcom/google/protobuf/UnsafeUtil;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v8

    long-to-int v0, v8

    .line 248
    .restart local v0    # "fieldOffset":I
    invoke-virtual {v4}, Lcom/google/protobuf/FieldType;->id()I

    move-result v5

    .line 249
    .restart local v5    # "typeId":I
    invoke-virtual {v4}, Lcom/google/protobuf/FieldType;->isList()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v4}, Lcom/google/protobuf/FieldType;->isMap()Z

    move-result v6

    if-nez v6, :cond_2

    .line 250
    invoke-virtual {p0}, Lcom/google/protobuf/FieldInfo;->getPresenceField()Ljava/lang/reflect/Field;

    move-result-object v6

    invoke-static {v6}, Lcom/google/protobuf/UnsafeUtil;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v8

    long-to-int v2, v8

    .line 251
    .restart local v2    # "presenceFieldOffset":I
    invoke-virtual {p0}, Lcom/google/protobuf/FieldInfo;->getPresenceMask()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v3

    .restart local v3    # "presenceMaskShift":I
    goto :goto_0

    .line 253
    .end local v2    # "presenceFieldOffset":I
    .end local v3    # "presenceMaskShift":I
    :cond_2
    const/4 v2, 0x0

    .line 254
    .restart local v2    # "presenceFieldOffset":I
    const/4 v3, 0x0

    .restart local v3    # "presenceMaskShift":I
    goto :goto_0

    .end local v4    # "type":Lcom/google/protobuf/FieldType;
    :cond_3
    move v6, v7

    .line 261
    goto :goto_1
.end method

.method private static type(I)I
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 1728
    const/high16 v0, 0xff00000

    and-int/2addr v0, p0

    ushr-int/lit8 v0, v0, 0x14

    return v0
.end method

.method private static typeAndOffsetAt(J)I
    .locals 2
    .param p0, "pos"    # J

    .prologue
    .line 1720
    const-wide/16 v0, 0x4

    add-long/2addr v0, p0

    invoke-static {v0, v1}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v0

    return v0
.end method

.method private writeFieldsInAscendingOrder(Ljava/lang/Object;Lcom/google/protobuf/Writer;)V
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
    .line 289
    .local p0, "this":Lcom/google/protobuf/Proto2Schema;, "Lcom/google/protobuf/Proto2Schema<TT;>;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    iget-wide v8, p0, Lcom/google/protobuf/Proto2Schema;->extensionsOffset:J

    const-wide/16 v10, -0x1

    cmp-long v7, v8, v10

    if-nez v7, :cond_0

    .line 290
    const/4 v1, 0x0

    .line 291
    .local v1, "extensions":Lcom/google/protobuf/FieldSet;
    :goto_0
    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 292
    .local v0, "extensionIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry;>;"
    :goto_1
    if-eqz v0, :cond_2

    .line 293
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    move-object v2, v7

    .line 294
    .local v2, "nextExtension":Ljava/util/Map$Entry;
    :goto_2
    iget-wide v4, p0, Lcom/google/protobuf/Proto2Schema;->address:J

    .local v4, "pos":J
    :goto_3
    iget-wide v8, p0, Lcom/google/protobuf/Proto2Schema;->limit:J

    cmp-long v7, v4, v8

    if-gez v7, :cond_6

    .line 295
    invoke-static {v4, v5}, Lcom/google/protobuf/Proto2Schema;->typeAndOffsetAt(J)I

    move-result v6

    .line 296
    .local v6, "typeAndOffset":I
    invoke-static {v4, v5}, Lcom/google/protobuf/Proto2Schema;->numberAt(J)I

    move-result v3

    .line 299
    .local v3, "number":I
    :goto_4
    if-eqz v2, :cond_4

    iget-object v7, p0, Lcom/google/protobuf/Proto2Schema;->extensionSchema:Lcom/google/protobuf/ExtensionSchema;

    invoke-virtual {v7, v2}, Lcom/google/protobuf/ExtensionSchema;->extensionNumber(Ljava/util/Map$Entry;)I

    move-result v7

    if-gt v7, v3, :cond_4

    .line 300
    iget-object v7, p0, Lcom/google/protobuf/Proto2Schema;->extensionSchema:Lcom/google/protobuf/ExtensionSchema;

    invoke-virtual {v7, p2, v2}, Lcom/google/protobuf/ExtensionSchema;->serializeExtension(Lcom/google/protobuf/Writer;Ljava/util/Map$Entry;)V

    .line 301
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    move-object v2, v7

    :goto_5
    goto :goto_4

    .line 290
    .end local v0    # "extensionIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry;>;"
    .end local v1    # "extensions":Lcom/google/protobuf/FieldSet;
    .end local v2    # "nextExtension":Ljava/util/Map$Entry;
    .end local v3    # "number":I
    .end local v4    # "pos":J
    .end local v6    # "typeAndOffset":I
    :cond_0
    iget-wide v8, p0, Lcom/google/protobuf/Proto2Schema;->extensionsOffset:J

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/protobuf/FieldSet;

    move-object v1, v7

    goto :goto_0

    .line 291
    .restart local v1    # "extensions":Lcom/google/protobuf/FieldSet;
    :cond_1
    invoke-virtual {v1}, Lcom/google/protobuf/FieldSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_1

    .line 293
    .restart local v0    # "extensionIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry;>;"
    :cond_2
    const/4 v2, 0x0

    goto :goto_2

    .line 301
    .restart local v2    # "nextExtension":Ljava/util/Map$Entry;
    .restart local v3    # "number":I
    .restart local v4    # "pos":J
    .restart local v6    # "typeAndOffset":I
    :cond_3
    const/4 v2, 0x0

    goto :goto_5

    .line 305
    :cond_4
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->type(I)I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 294
    :cond_5
    :goto_6
    const-wide/16 v8, 0x10

    add-long/2addr v4, v8

    goto :goto_3

    .line 307
    :pswitch_0
    const-wide/16 v8, 0x8

    add-long/2addr v8, v4

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v7

    invoke-static {p1, v7}, Lcom/google/protobuf/Proto2Schema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 308
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/Proto2Schema;->doubleAt(Ljava/lang/Object;J)D

    move-result-wide v8

    invoke-interface {p2, v3, v8, v9}, Lcom/google/protobuf/Writer;->writeDouble(ID)V

    goto :goto_6

    .line 312
    :pswitch_1
    const-wide/16 v8, 0x8

    add-long/2addr v8, v4

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v7

    invoke-static {p1, v7}, Lcom/google/protobuf/Proto2Schema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 313
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/Proto2Schema;->floatAt(Ljava/lang/Object;J)F

    move-result v7

    invoke-interface {p2, v3, v7}, Lcom/google/protobuf/Writer;->writeFloat(IF)V

    goto :goto_6

    .line 317
    :pswitch_2
    const-wide/16 v8, 0x8

    add-long/2addr v8, v4

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v7

    invoke-static {p1, v7}, Lcom/google/protobuf/Proto2Schema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 318
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/Proto2Schema;->longAt(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {p2, v3, v8, v9}, Lcom/google/protobuf/Writer;->writeInt64(IJ)V

    goto :goto_6

    .line 322
    :pswitch_3
    const-wide/16 v8, 0x8

    add-long/2addr v8, v4

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v7

    invoke-static {p1, v7}, Lcom/google/protobuf/Proto2Schema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 323
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/Proto2Schema;->longAt(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {p2, v3, v8, v9}, Lcom/google/protobuf/Writer;->writeUInt64(IJ)V

    goto :goto_6

    .line 327
    :pswitch_4
    const-wide/16 v8, 0x8

    add-long/2addr v8, v4

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v7

    invoke-static {p1, v7}, Lcom/google/protobuf/Proto2Schema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 328
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/Proto2Schema;->intAt(Ljava/lang/Object;J)I

    move-result v7

    invoke-interface {p2, v3, v7}, Lcom/google/protobuf/Writer;->writeInt32(II)V

    goto :goto_6

    .line 332
    :pswitch_5
    const-wide/16 v8, 0x8

    add-long/2addr v8, v4

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v7

    invoke-static {p1, v7}, Lcom/google/protobuf/Proto2Schema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 333
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/Proto2Schema;->longAt(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {p2, v3, v8, v9}, Lcom/google/protobuf/Writer;->writeFixed64(IJ)V

    goto/16 :goto_6

    .line 337
    :pswitch_6
    const-wide/16 v8, 0x8

    add-long/2addr v8, v4

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v7

    invoke-static {p1, v7}, Lcom/google/protobuf/Proto2Schema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 338
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/Proto2Schema;->intAt(Ljava/lang/Object;J)I

    move-result v7

    invoke-interface {p2, v3, v7}, Lcom/google/protobuf/Writer;->writeFixed32(II)V

    goto/16 :goto_6

    .line 342
    :pswitch_7
    const-wide/16 v8, 0x8

    add-long/2addr v8, v4

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v7

    invoke-static {p1, v7}, Lcom/google/protobuf/Proto2Schema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 343
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/Proto2Schema;->booleanAt(Ljava/lang/Object;J)Z

    move-result v7

    invoke-interface {p2, v3, v7}, Lcom/google/protobuf/Writer;->writeBool(IZ)V

    goto/16 :goto_6

    .line 347
    :pswitch_8
    const-wide/16 v8, 0x8

    add-long/2addr v8, v4

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v7

    invoke-static {p1, v7}, Lcom/google/protobuf/Proto2Schema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 348
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    invoke-direct {p0, v3, v7, p2}, Lcom/google/protobuf/Proto2Schema;->writeString(ILjava/lang/Object;Lcom/google/protobuf/Writer;)V

    goto/16 :goto_6

    .line 352
    :pswitch_9
    const-wide/16 v8, 0x8

    add-long/2addr v8, v4

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v7

    invoke-static {p1, v7}, Lcom/google/protobuf/Proto2Schema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 353
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {p2, v3, v7}, Lcom/google/protobuf/Writer;->writeMessage(ILjava/lang/Object;)V

    goto/16 :goto_6

    .line 357
    :pswitch_a
    const-wide/16 v8, 0x8

    add-long/2addr v8, v4

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v7

    invoke-static {p1, v7}, Lcom/google/protobuf/Proto2Schema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 359
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/protobuf/ByteString;

    .line 358
    invoke-interface {p2, v3, v7}, Lcom/google/protobuf/Writer;->writeBytes(ILcom/google/protobuf/ByteString;)V

    goto/16 :goto_6

    .line 363
    :pswitch_b
    const-wide/16 v8, 0x8

    add-long/2addr v8, v4

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v7

    invoke-static {p1, v7}, Lcom/google/protobuf/Proto2Schema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 364
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/Proto2Schema;->intAt(Ljava/lang/Object;J)I

    move-result v7

    invoke-interface {p2, v3, v7}, Lcom/google/protobuf/Writer;->writeUInt32(II)V

    goto/16 :goto_6

    .line 368
    :pswitch_c
    const-wide/16 v8, 0x8

    add-long/2addr v8, v4

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v7

    invoke-static {p1, v7}, Lcom/google/protobuf/Proto2Schema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 369
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/Proto2Schema;->intAt(Ljava/lang/Object;J)I

    move-result v7

    invoke-interface {p2, v3, v7}, Lcom/google/protobuf/Writer;->writeEnum(II)V

    goto/16 :goto_6

    .line 373
    :pswitch_d
    const-wide/16 v8, 0x8

    add-long/2addr v8, v4

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v7

    invoke-static {p1, v7}, Lcom/google/protobuf/Proto2Schema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 374
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/Proto2Schema;->intAt(Ljava/lang/Object;J)I

    move-result v7

    invoke-interface {p2, v3, v7}, Lcom/google/protobuf/Writer;->writeSFixed32(II)V

    goto/16 :goto_6

    .line 378
    :pswitch_e
    const-wide/16 v8, 0x8

    add-long/2addr v8, v4

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v7

    invoke-static {p1, v7}, Lcom/google/protobuf/Proto2Schema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 379
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/Proto2Schema;->longAt(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {p2, v3, v8, v9}, Lcom/google/protobuf/Writer;->writeSFixed64(IJ)V

    goto/16 :goto_6

    .line 383
    :pswitch_f
    const-wide/16 v8, 0x8

    add-long/2addr v8, v4

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v7

    invoke-static {p1, v7}, Lcom/google/protobuf/Proto2Schema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 384
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/Proto2Schema;->intAt(Ljava/lang/Object;J)I

    move-result v7

    invoke-interface {p2, v3, v7}, Lcom/google/protobuf/Writer;->writeSInt32(II)V

    goto/16 :goto_6

    .line 388
    :pswitch_10
    const-wide/16 v8, 0x8

    add-long/2addr v8, v4

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v7

    invoke-static {p1, v7}, Lcom/google/protobuf/Proto2Schema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 389
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/Proto2Schema;->longAt(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {p2, v3, v8, v9}, Lcom/google/protobuf/Writer;->writeSInt64(IJ)V

    goto/16 :goto_6

    .line 393
    :pswitch_11
    const-wide/16 v8, 0x8

    add-long/2addr v8, v4

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v7

    invoke-static {p1, v7}, Lcom/google/protobuf/Proto2Schema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 394
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {p2, v3, v7}, Lcom/google/protobuf/Writer;->writeGroup(ILjava/lang/Object;)V

    goto/16 :goto_6

    .line 399
    :pswitch_12
    invoke-static {v4, v5}, Lcom/google/protobuf/Proto2Schema;->numberAt(J)I

    move-result v8

    .line 400
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    const/4 v9, 0x0

    .line 398
    invoke-static {v8, v7, p2, v9}, Lcom/google/protobuf/SchemaUtil;->writeDoubleList(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_6

    .line 406
    :pswitch_13
    invoke-static {v4, v5}, Lcom/google/protobuf/Proto2Schema;->numberAt(J)I

    move-result v8

    .line 407
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    const/4 v9, 0x0

    .line 405
    invoke-static {v8, v7, p2, v9}, Lcom/google/protobuf/SchemaUtil;->writeFloatList(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_6

    .line 413
    :pswitch_14
    invoke-static {v4, v5}, Lcom/google/protobuf/Proto2Schema;->numberAt(J)I

    move-result v8

    .line 414
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    const/4 v9, 0x0

    .line 412
    invoke-static {v8, v7, p2, v9}, Lcom/google/protobuf/SchemaUtil;->writeInt64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_6

    .line 420
    :pswitch_15
    invoke-static {v4, v5}, Lcom/google/protobuf/Proto2Schema;->numberAt(J)I

    move-result v8

    .line 421
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    const/4 v9, 0x0

    .line 419
    invoke-static {v8, v7, p2, v9}, Lcom/google/protobuf/SchemaUtil;->writeUInt64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_6

    .line 427
    :pswitch_16
    invoke-static {v4, v5}, Lcom/google/protobuf/Proto2Schema;->numberAt(J)I

    move-result v8

    .line 428
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    const/4 v9, 0x0

    .line 426
    invoke-static {v8, v7, p2, v9}, Lcom/google/protobuf/SchemaUtil;->writeInt32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_6

    .line 434
    :pswitch_17
    invoke-static {v4, v5}, Lcom/google/protobuf/Proto2Schema;->numberAt(J)I

    move-result v8

    .line 435
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    const/4 v9, 0x0

    .line 433
    invoke-static {v8, v7, p2, v9}, Lcom/google/protobuf/SchemaUtil;->writeFixed64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_6

    .line 441
    :pswitch_18
    invoke-static {v4, v5}, Lcom/google/protobuf/Proto2Schema;->numberAt(J)I

    move-result v8

    .line 442
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    const/4 v9, 0x0

    .line 440
    invoke-static {v8, v7, p2, v9}, Lcom/google/protobuf/SchemaUtil;->writeFixed32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_6

    .line 448
    :pswitch_19
    invoke-static {v4, v5}, Lcom/google/protobuf/Proto2Schema;->numberAt(J)I

    move-result v8

    .line 449
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    const/4 v9, 0x0

    .line 447
    invoke-static {v8, v7, p2, v9}, Lcom/google/protobuf/SchemaUtil;->writeBoolList(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_6

    .line 455
    :pswitch_1a
    invoke-static {v4, v5}, Lcom/google/protobuf/Proto2Schema;->numberAt(J)I

    move-result v8

    .line 456
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 454
    invoke-static {v8, v7, p2}, Lcom/google/protobuf/SchemaUtil;->writeStringList(ILjava/util/List;Lcom/google/protobuf/Writer;)V

    goto/16 :goto_6

    .line 461
    :pswitch_1b
    invoke-static {v4, v5}, Lcom/google/protobuf/Proto2Schema;->numberAt(J)I

    move-result v8

    .line 462
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 460
    invoke-static {v8, v7, p2}, Lcom/google/protobuf/SchemaUtil;->writeMessageList(ILjava/util/List;Lcom/google/protobuf/Writer;)V

    goto/16 :goto_6

    .line 467
    :pswitch_1c
    invoke-static {v4, v5}, Lcom/google/protobuf/Proto2Schema;->numberAt(J)I

    move-result v8

    .line 468
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 466
    invoke-static {v8, v7, p2}, Lcom/google/protobuf/SchemaUtil;->writeBytesList(ILjava/util/List;Lcom/google/protobuf/Writer;)V

    goto/16 :goto_6

    .line 473
    :pswitch_1d
    invoke-static {v4, v5}, Lcom/google/protobuf/Proto2Schema;->numberAt(J)I

    move-result v8

    .line 474
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    const/4 v9, 0x0

    .line 472
    invoke-static {v8, v7, p2, v9}, Lcom/google/protobuf/SchemaUtil;->writeUInt32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_6

    .line 480
    :pswitch_1e
    invoke-static {v4, v5}, Lcom/google/protobuf/Proto2Schema;->numberAt(J)I

    move-result v8

    .line 481
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    const/4 v9, 0x0

    .line 479
    invoke-static {v8, v7, p2, v9}, Lcom/google/protobuf/SchemaUtil;->writeEnumList(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_6

    .line 487
    :pswitch_1f
    invoke-static {v4, v5}, Lcom/google/protobuf/Proto2Schema;->numberAt(J)I

    move-result v8

    .line 488
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    const/4 v9, 0x0

    .line 486
    invoke-static {v8, v7, p2, v9}, Lcom/google/protobuf/SchemaUtil;->writeSFixed32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_6

    .line 494
    :pswitch_20
    invoke-static {v4, v5}, Lcom/google/protobuf/Proto2Schema;->numberAt(J)I

    move-result v8

    .line 495
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    const/4 v9, 0x0

    .line 493
    invoke-static {v8, v7, p2, v9}, Lcom/google/protobuf/SchemaUtil;->writeSFixed64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_6

    .line 501
    :pswitch_21
    invoke-static {v4, v5}, Lcom/google/protobuf/Proto2Schema;->numberAt(J)I

    move-result v8

    .line 502
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    const/4 v9, 0x0

    .line 500
    invoke-static {v8, v7, p2, v9}, Lcom/google/protobuf/SchemaUtil;->writeSInt32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_6

    .line 508
    :pswitch_22
    invoke-static {v4, v5}, Lcom/google/protobuf/Proto2Schema;->numberAt(J)I

    move-result v8

    .line 509
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    const/4 v9, 0x0

    .line 507
    invoke-static {v8, v7, p2, v9}, Lcom/google/protobuf/SchemaUtil;->writeSInt64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_6

    .line 515
    :pswitch_23
    invoke-static {v4, v5}, Lcom/google/protobuf/Proto2Schema;->numberAt(J)I

    move-result v8

    .line 516
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    const/4 v9, 0x1

    .line 514
    invoke-static {v8, v7, p2, v9}, Lcom/google/protobuf/SchemaUtil;->writeDoubleList(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_6

    .line 522
    :pswitch_24
    invoke-static {v4, v5}, Lcom/google/protobuf/Proto2Schema;->numberAt(J)I

    move-result v8

    .line 523
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    const/4 v9, 0x1

    .line 521
    invoke-static {v8, v7, p2, v9}, Lcom/google/protobuf/SchemaUtil;->writeFloatList(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_6

    .line 529
    :pswitch_25
    invoke-static {v4, v5}, Lcom/google/protobuf/Proto2Schema;->numberAt(J)I

    move-result v8

    .line 530
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    const/4 v9, 0x1

    .line 528
    invoke-static {v8, v7, p2, v9}, Lcom/google/protobuf/SchemaUtil;->writeInt64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_6

    .line 536
    :pswitch_26
    invoke-static {v4, v5}, Lcom/google/protobuf/Proto2Schema;->numberAt(J)I

    move-result v8

    .line 537
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    const/4 v9, 0x1

    .line 535
    invoke-static {v8, v7, p2, v9}, Lcom/google/protobuf/SchemaUtil;->writeUInt64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_6

    .line 543
    :pswitch_27
    invoke-static {v4, v5}, Lcom/google/protobuf/Proto2Schema;->numberAt(J)I

    move-result v8

    .line 544
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    const/4 v9, 0x1

    .line 542
    invoke-static {v8, v7, p2, v9}, Lcom/google/protobuf/SchemaUtil;->writeInt32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_6

    .line 550
    :pswitch_28
    invoke-static {v4, v5}, Lcom/google/protobuf/Proto2Schema;->numberAt(J)I

    move-result v8

    .line 551
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    const/4 v9, 0x1

    .line 549
    invoke-static {v8, v7, p2, v9}, Lcom/google/protobuf/SchemaUtil;->writeFixed64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_6

    .line 557
    :pswitch_29
    invoke-static {v4, v5}, Lcom/google/protobuf/Proto2Schema;->numberAt(J)I

    move-result v8

    .line 558
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    const/4 v9, 0x1

    .line 556
    invoke-static {v8, v7, p2, v9}, Lcom/google/protobuf/SchemaUtil;->writeFixed32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_6

    .line 565
    :pswitch_2a
    invoke-static {v4, v5}, Lcom/google/protobuf/Proto2Schema;->numberAt(J)I

    move-result v8

    .line 566
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    const/4 v9, 0x1

    .line 564
    invoke-static {v8, v7, p2, v9}, Lcom/google/protobuf/SchemaUtil;->writeBoolList(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_6

    .line 572
    :pswitch_2b
    invoke-static {v4, v5}, Lcom/google/protobuf/Proto2Schema;->numberAt(J)I

    move-result v8

    .line 573
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    const/4 v9, 0x1

    .line 571
    invoke-static {v8, v7, p2, v9}, Lcom/google/protobuf/SchemaUtil;->writeUInt32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_6

    .line 579
    :pswitch_2c
    invoke-static {v4, v5}, Lcom/google/protobuf/Proto2Schema;->numberAt(J)I

    move-result v8

    .line 580
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    const/4 v9, 0x1

    .line 578
    invoke-static {v8, v7, p2, v9}, Lcom/google/protobuf/SchemaUtil;->writeEnumList(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_6

    .line 586
    :pswitch_2d
    invoke-static {v4, v5}, Lcom/google/protobuf/Proto2Schema;->numberAt(J)I

    move-result v8

    .line 587
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    const/4 v9, 0x1

    .line 585
    invoke-static {v8, v7, p2, v9}, Lcom/google/protobuf/SchemaUtil;->writeSFixed32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_6

    .line 593
    :pswitch_2e
    invoke-static {v4, v5}, Lcom/google/protobuf/Proto2Schema;->numberAt(J)I

    move-result v8

    .line 594
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    const/4 v9, 0x1

    .line 592
    invoke-static {v8, v7, p2, v9}, Lcom/google/protobuf/SchemaUtil;->writeSFixed64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_6

    .line 600
    :pswitch_2f
    invoke-static {v4, v5}, Lcom/google/protobuf/Proto2Schema;->numberAt(J)I

    move-result v8

    .line 601
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    const/4 v9, 0x1

    .line 599
    invoke-static {v8, v7, p2, v9}, Lcom/google/protobuf/SchemaUtil;->writeSInt32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_6

    .line 607
    :pswitch_30
    invoke-static {v4, v5}, Lcom/google/protobuf/Proto2Schema;->numberAt(J)I

    move-result v8

    .line 608
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    const/4 v9, 0x1

    .line 606
    invoke-static {v8, v7, p2, v9}, Lcom/google/protobuf/SchemaUtil;->writeSInt64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_6

    .line 614
    :pswitch_31
    invoke-static {v4, v5}, Lcom/google/protobuf/Proto2Schema;->numberAt(J)I

    move-result v8

    .line 615
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 613
    invoke-static {v8, v7, p2}, Lcom/google/protobuf/SchemaUtil;->writeGroupList(ILjava/util/List;Lcom/google/protobuf/Writer;)V

    goto/16 :goto_6

    .line 619
    :pswitch_32
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    invoke-direct {p0, p2, v3, v7}, Lcom/google/protobuf/Proto2Schema;->writeMapHelper(Lcom/google/protobuf/Writer;ILjava/lang/Object;)V

    goto/16 :goto_6

    .line 622
    :pswitch_33
    const-wide/16 v8, 0x8

    add-long/2addr v8, v4

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v7

    invoke-static {p1, v3, v7}, Lcom/google/protobuf/Proto2Schema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 623
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/Proto2Schema;->oneofDoubleAt(Ljava/lang/Object;J)D

    move-result-wide v8

    invoke-interface {p2, v3, v8, v9}, Lcom/google/protobuf/Writer;->writeDouble(ID)V

    goto/16 :goto_6

    .line 627
    :pswitch_34
    const-wide/16 v8, 0x8

    add-long/2addr v8, v4

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v7

    invoke-static {p1, v3, v7}, Lcom/google/protobuf/Proto2Schema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 628
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/Proto2Schema;->oneofFloatAt(Ljava/lang/Object;J)F

    move-result v7

    invoke-interface {p2, v3, v7}, Lcom/google/protobuf/Writer;->writeFloat(IF)V

    goto/16 :goto_6

    .line 632
    :pswitch_35
    const-wide/16 v8, 0x8

    add-long/2addr v8, v4

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v7

    invoke-static {p1, v3, v7}, Lcom/google/protobuf/Proto2Schema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 633
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/Proto2Schema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {p2, v3, v8, v9}, Lcom/google/protobuf/Writer;->writeInt64(IJ)V

    goto/16 :goto_6

    .line 637
    :pswitch_36
    const-wide/16 v8, 0x8

    add-long/2addr v8, v4

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v7

    invoke-static {p1, v3, v7}, Lcom/google/protobuf/Proto2Schema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 638
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/Proto2Schema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {p2, v3, v8, v9}, Lcom/google/protobuf/Writer;->writeUInt64(IJ)V

    goto/16 :goto_6

    .line 642
    :pswitch_37
    const-wide/16 v8, 0x8

    add-long/2addr v8, v4

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v7

    invoke-static {p1, v3, v7}, Lcom/google/protobuf/Proto2Schema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 643
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/Proto2Schema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v7

    invoke-interface {p2, v3, v7}, Lcom/google/protobuf/Writer;->writeInt32(II)V

    goto/16 :goto_6

    .line 647
    :pswitch_38
    const-wide/16 v8, 0x8

    add-long/2addr v8, v4

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v7

    invoke-static {p1, v3, v7}, Lcom/google/protobuf/Proto2Schema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 648
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/Proto2Schema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {p2, v3, v8, v9}, Lcom/google/protobuf/Writer;->writeFixed64(IJ)V

    goto/16 :goto_6

    .line 652
    :pswitch_39
    const-wide/16 v8, 0x8

    add-long/2addr v8, v4

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v7

    invoke-static {p1, v3, v7}, Lcom/google/protobuf/Proto2Schema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 653
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/Proto2Schema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v7

    invoke-interface {p2, v3, v7}, Lcom/google/protobuf/Writer;->writeFixed32(II)V

    goto/16 :goto_6

    .line 657
    :pswitch_3a
    const-wide/16 v8, 0x8

    add-long/2addr v8, v4

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v7

    invoke-static {p1, v3, v7}, Lcom/google/protobuf/Proto2Schema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 658
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/Proto2Schema;->oneofBooleanAt(Ljava/lang/Object;J)Z

    move-result v7

    invoke-interface {p2, v3, v7}, Lcom/google/protobuf/Writer;->writeBool(IZ)V

    goto/16 :goto_6

    .line 662
    :pswitch_3b
    const-wide/16 v8, 0x8

    add-long/2addr v8, v4

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v7

    invoke-static {p1, v3, v7}, Lcom/google/protobuf/Proto2Schema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 663
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    invoke-direct {p0, v3, v7, p2}, Lcom/google/protobuf/Proto2Schema;->writeString(ILjava/lang/Object;Lcom/google/protobuf/Writer;)V

    goto/16 :goto_6

    .line 667
    :pswitch_3c
    const-wide/16 v8, 0x8

    add-long/2addr v8, v4

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v7

    invoke-static {p1, v3, v7}, Lcom/google/protobuf/Proto2Schema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 668
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {p2, v3, v7}, Lcom/google/protobuf/Writer;->writeMessage(ILjava/lang/Object;)V

    goto/16 :goto_6

    .line 672
    :pswitch_3d
    const-wide/16 v8, 0x8

    add-long/2addr v8, v4

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v7

    invoke-static {p1, v3, v7}, Lcom/google/protobuf/Proto2Schema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 674
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/protobuf/ByteString;

    .line 673
    invoke-interface {p2, v3, v7}, Lcom/google/protobuf/Writer;->writeBytes(ILcom/google/protobuf/ByteString;)V

    goto/16 :goto_6

    .line 678
    :pswitch_3e
    const-wide/16 v8, 0x8

    add-long/2addr v8, v4

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v7

    invoke-static {p1, v3, v7}, Lcom/google/protobuf/Proto2Schema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 679
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/Proto2Schema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v7

    invoke-interface {p2, v3, v7}, Lcom/google/protobuf/Writer;->writeUInt32(II)V

    goto/16 :goto_6

    .line 683
    :pswitch_3f
    const-wide/16 v8, 0x8

    add-long/2addr v8, v4

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v7

    invoke-static {p1, v3, v7}, Lcom/google/protobuf/Proto2Schema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 684
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/Proto2Schema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v7

    invoke-interface {p2, v3, v7}, Lcom/google/protobuf/Writer;->writeEnum(II)V

    goto/16 :goto_6

    .line 688
    :pswitch_40
    const-wide/16 v8, 0x8

    add-long/2addr v8, v4

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v7

    invoke-static {p1, v3, v7}, Lcom/google/protobuf/Proto2Schema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 689
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/Proto2Schema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v7

    invoke-interface {p2, v3, v7}, Lcom/google/protobuf/Writer;->writeSFixed32(II)V

    goto/16 :goto_6

    .line 693
    :pswitch_41
    const-wide/16 v8, 0x8

    add-long/2addr v8, v4

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v7

    invoke-static {p1, v3, v7}, Lcom/google/protobuf/Proto2Schema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 694
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/Proto2Schema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {p2, v3, v8, v9}, Lcom/google/protobuf/Writer;->writeSFixed64(IJ)V

    goto/16 :goto_6

    .line 698
    :pswitch_42
    const-wide/16 v8, 0x8

    add-long/2addr v8, v4

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v7

    invoke-static {p1, v3, v7}, Lcom/google/protobuf/Proto2Schema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 699
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/Proto2Schema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v7

    invoke-interface {p2, v3, v7}, Lcom/google/protobuf/Writer;->writeSInt32(II)V

    goto/16 :goto_6

    .line 703
    :pswitch_43
    const-wide/16 v8, 0x8

    add-long/2addr v8, v4

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v7

    invoke-static {p1, v3, v7}, Lcom/google/protobuf/Proto2Schema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 704
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/Proto2Schema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {p2, v3, v8, v9}, Lcom/google/protobuf/Writer;->writeSInt64(IJ)V

    goto/16 :goto_6

    .line 708
    :pswitch_44
    const-wide/16 v8, 0x8

    add-long/2addr v8, v4

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v7

    invoke-static {p1, v3, v7}, Lcom/google/protobuf/Proto2Schema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 709
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {p2, v3, v7}, Lcom/google/protobuf/Writer;->writeGroup(ILjava/lang/Object;)V

    goto/16 :goto_6

    .line 717
    .end local v3    # "number":I
    .end local v6    # "typeAndOffset":I
    :cond_6
    :goto_7
    if-eqz v2, :cond_8

    .line 718
    iget-object v7, p0, Lcom/google/protobuf/Proto2Schema;->extensionSchema:Lcom/google/protobuf/ExtensionSchema;

    invoke-virtual {v7, p2, v2}, Lcom/google/protobuf/ExtensionSchema;->serializeExtension(Lcom/google/protobuf/Writer;Ljava/util/Map$Entry;)V

    .line 719
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    move-object v2, v7

    :goto_8
    goto :goto_7

    :cond_7
    const/4 v2, 0x0

    goto :goto_8

    .line 721
    :cond_8
    iget-object v7, p0, Lcom/google/protobuf/Proto2Schema;->unknownFieldSchema:Lcom/google/protobuf/UnknownFieldSchema;

    invoke-direct {p0, v7, p1, p2}, Lcom/google/protobuf/Proto2Schema;->writeUnknownInMessageTo(Lcom/google/protobuf/UnknownFieldSchema;Ljava/lang/Object;Lcom/google/protobuf/Writer;)V

    .line 722
    return-void

    .line 305
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
        :pswitch_44
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
    .line 726
    .local p0, "this":Lcom/google/protobuf/Proto2Schema;, "Lcom/google/protobuf/Proto2Schema<TT;>;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    iget-object v7, p0, Lcom/google/protobuf/Proto2Schema;->unknownFieldSchema:Lcom/google/protobuf/UnknownFieldSchema;

    invoke-direct {p0, v7, p1, p2}, Lcom/google/protobuf/Proto2Schema;->writeUnknownInMessageTo(Lcom/google/protobuf/UnknownFieldSchema;Ljava/lang/Object;Lcom/google/protobuf/Writer;)V

    .line 727
    iget-wide v8, p0, Lcom/google/protobuf/Proto2Schema;->extensionsOffset:J

    const-wide/16 v10, -0x1

    cmp-long v7, v8, v10

    if-nez v7, :cond_0

    .line 728
    const/4 v1, 0x0

    .line 729
    .local v1, "extensions":Lcom/google/protobuf/FieldSet;
    :goto_0
    if-nez v1, :cond_1

    .line 730
    const/4 v0, 0x0

    .line 731
    .local v0, "extensionIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry;>;"
    :goto_1
    if-eqz v0, :cond_2

    .line 732
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    move-object v2, v7

    .line 733
    .local v2, "nextExtension":Ljava/util/Map$Entry;
    :goto_2
    iget-wide v8, p0, Lcom/google/protobuf/Proto2Schema;->limit:J

    const-wide/16 v10, 0x10

    sub-long v4, v8, v10

    .local v4, "pos":J
    :goto_3
    iget-wide v8, p0, Lcom/google/protobuf/Proto2Schema;->address:J

    cmp-long v7, v4, v8

    if-ltz v7, :cond_6

    .line 734
    invoke-static {v4, v5}, Lcom/google/protobuf/Proto2Schema;->typeAndOffsetAt(J)I

    move-result v6

    .line 735
    .local v6, "typeAndOffset":I
    invoke-static {v4, v5}, Lcom/google/protobuf/Proto2Schema;->numberAt(J)I

    move-result v3

    .line 738
    .local v3, "number":I
    :goto_4
    if-eqz v2, :cond_4

    iget-object v7, p0, Lcom/google/protobuf/Proto2Schema;->extensionSchema:Lcom/google/protobuf/ExtensionSchema;

    invoke-virtual {v7, v2}, Lcom/google/protobuf/ExtensionSchema;->extensionNumber(Ljava/util/Map$Entry;)I

    move-result v7

    if-le v7, v3, :cond_4

    .line 739
    iget-object v7, p0, Lcom/google/protobuf/Proto2Schema;->extensionSchema:Lcom/google/protobuf/ExtensionSchema;

    invoke-virtual {v7, p2, v2}, Lcom/google/protobuf/ExtensionSchema;->serializeExtension(Lcom/google/protobuf/Writer;Ljava/util/Map$Entry;)V

    .line 740
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    move-object v2, v7

    :goto_5
    goto :goto_4

    .line 728
    .end local v0    # "extensionIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry;>;"
    .end local v1    # "extensions":Lcom/google/protobuf/FieldSet;
    .end local v2    # "nextExtension":Ljava/util/Map$Entry;
    .end local v3    # "number":I
    .end local v4    # "pos":J
    .end local v6    # "typeAndOffset":I
    :cond_0
    iget-wide v8, p0, Lcom/google/protobuf/Proto2Schema;->extensionsOffset:J

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/protobuf/FieldSet;

    move-object v1, v7

    goto :goto_0

    .line 730
    .restart local v1    # "extensions":Lcom/google/protobuf/FieldSet;
    :cond_1
    invoke-virtual {v1}, Lcom/google/protobuf/FieldSet;->descendingIterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_1

    .line 732
    .restart local v0    # "extensionIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry;>;"
    :cond_2
    const/4 v2, 0x0

    goto :goto_2

    .line 740
    .restart local v2    # "nextExtension":Ljava/util/Map$Entry;
    .restart local v3    # "number":I
    .restart local v4    # "pos":J
    .restart local v6    # "typeAndOffset":I
    :cond_3
    const/4 v2, 0x0

    goto :goto_5

    .line 744
    :cond_4
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->type(I)I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 733
    :cond_5
    :goto_6
    const-wide/16 v8, 0x10

    sub-long/2addr v4, v8

    goto :goto_3

    .line 746
    :pswitch_0
    const-wide/16 v8, 0x8

    add-long/2addr v8, v4

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v7

    invoke-static {p1, v7}, Lcom/google/protobuf/Proto2Schema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 747
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/Proto2Schema;->doubleAt(Ljava/lang/Object;J)D

    move-result-wide v8

    invoke-interface {p2, v3, v8, v9}, Lcom/google/protobuf/Writer;->writeDouble(ID)V

    goto :goto_6

    .line 751
    :pswitch_1
    const-wide/16 v8, 0x8

    add-long/2addr v8, v4

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v7

    invoke-static {p1, v7}, Lcom/google/protobuf/Proto2Schema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 752
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/Proto2Schema;->floatAt(Ljava/lang/Object;J)F

    move-result v7

    invoke-interface {p2, v3, v7}, Lcom/google/protobuf/Writer;->writeFloat(IF)V

    goto :goto_6

    .line 756
    :pswitch_2
    const-wide/16 v8, 0x8

    add-long/2addr v8, v4

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v7

    invoke-static {p1, v7}, Lcom/google/protobuf/Proto2Schema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 757
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/Proto2Schema;->longAt(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {p2, v3, v8, v9}, Lcom/google/protobuf/Writer;->writeInt64(IJ)V

    goto :goto_6

    .line 761
    :pswitch_3
    const-wide/16 v8, 0x8

    add-long/2addr v8, v4

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v7

    invoke-static {p1, v7}, Lcom/google/protobuf/Proto2Schema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 762
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/Proto2Schema;->longAt(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {p2, v3, v8, v9}, Lcom/google/protobuf/Writer;->writeUInt64(IJ)V

    goto :goto_6

    .line 766
    :pswitch_4
    const-wide/16 v8, 0x8

    add-long/2addr v8, v4

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v7

    invoke-static {p1, v7}, Lcom/google/protobuf/Proto2Schema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 767
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/Proto2Schema;->intAt(Ljava/lang/Object;J)I

    move-result v7

    invoke-interface {p2, v3, v7}, Lcom/google/protobuf/Writer;->writeInt32(II)V

    goto :goto_6

    .line 771
    :pswitch_5
    const-wide/16 v8, 0x8

    add-long/2addr v8, v4

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v7

    invoke-static {p1, v7}, Lcom/google/protobuf/Proto2Schema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 772
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/Proto2Schema;->longAt(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {p2, v3, v8, v9}, Lcom/google/protobuf/Writer;->writeFixed64(IJ)V

    goto/16 :goto_6

    .line 776
    :pswitch_6
    const-wide/16 v8, 0x8

    add-long/2addr v8, v4

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v7

    invoke-static {p1, v7}, Lcom/google/protobuf/Proto2Schema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 777
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/Proto2Schema;->intAt(Ljava/lang/Object;J)I

    move-result v7

    invoke-interface {p2, v3, v7}, Lcom/google/protobuf/Writer;->writeFixed32(II)V

    goto/16 :goto_6

    .line 781
    :pswitch_7
    const-wide/16 v8, 0x8

    add-long/2addr v8, v4

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v7

    invoke-static {p1, v7}, Lcom/google/protobuf/Proto2Schema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 782
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/Proto2Schema;->booleanAt(Ljava/lang/Object;J)Z

    move-result v7

    invoke-interface {p2, v3, v7}, Lcom/google/protobuf/Writer;->writeBool(IZ)V

    goto/16 :goto_6

    .line 786
    :pswitch_8
    const-wide/16 v8, 0x8

    add-long/2addr v8, v4

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v7

    invoke-static {p1, v7}, Lcom/google/protobuf/Proto2Schema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 787
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    invoke-direct {p0, v3, v7, p2}, Lcom/google/protobuf/Proto2Schema;->writeString(ILjava/lang/Object;Lcom/google/protobuf/Writer;)V

    goto/16 :goto_6

    .line 791
    :pswitch_9
    const-wide/16 v8, 0x8

    add-long/2addr v8, v4

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v7

    invoke-static {p1, v7}, Lcom/google/protobuf/Proto2Schema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 792
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {p2, v3, v7}, Lcom/google/protobuf/Writer;->writeMessage(ILjava/lang/Object;)V

    goto/16 :goto_6

    .line 796
    :pswitch_a
    const-wide/16 v8, 0x8

    add-long/2addr v8, v4

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v7

    invoke-static {p1, v7}, Lcom/google/protobuf/Proto2Schema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 798
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/protobuf/ByteString;

    .line 797
    invoke-interface {p2, v3, v7}, Lcom/google/protobuf/Writer;->writeBytes(ILcom/google/protobuf/ByteString;)V

    goto/16 :goto_6

    .line 802
    :pswitch_b
    const-wide/16 v8, 0x8

    add-long/2addr v8, v4

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v7

    invoke-static {p1, v7}, Lcom/google/protobuf/Proto2Schema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 803
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/Proto2Schema;->intAt(Ljava/lang/Object;J)I

    move-result v7

    invoke-interface {p2, v3, v7}, Lcom/google/protobuf/Writer;->writeUInt32(II)V

    goto/16 :goto_6

    .line 807
    :pswitch_c
    const-wide/16 v8, 0x8

    add-long/2addr v8, v4

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v7

    invoke-static {p1, v7}, Lcom/google/protobuf/Proto2Schema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 808
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/Proto2Schema;->intAt(Ljava/lang/Object;J)I

    move-result v7

    invoke-interface {p2, v3, v7}, Lcom/google/protobuf/Writer;->writeEnum(II)V

    goto/16 :goto_6

    .line 812
    :pswitch_d
    const-wide/16 v8, 0x8

    add-long/2addr v8, v4

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v7

    invoke-static {p1, v7}, Lcom/google/protobuf/Proto2Schema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 813
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/Proto2Schema;->intAt(Ljava/lang/Object;J)I

    move-result v7

    invoke-interface {p2, v3, v7}, Lcom/google/protobuf/Writer;->writeSFixed32(II)V

    goto/16 :goto_6

    .line 817
    :pswitch_e
    const-wide/16 v8, 0x8

    add-long/2addr v8, v4

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v7

    invoke-static {p1, v7}, Lcom/google/protobuf/Proto2Schema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 818
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/Proto2Schema;->longAt(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {p2, v3, v8, v9}, Lcom/google/protobuf/Writer;->writeSFixed64(IJ)V

    goto/16 :goto_6

    .line 822
    :pswitch_f
    const-wide/16 v8, 0x8

    add-long/2addr v8, v4

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v7

    invoke-static {p1, v7}, Lcom/google/protobuf/Proto2Schema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 823
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/Proto2Schema;->intAt(Ljava/lang/Object;J)I

    move-result v7

    invoke-interface {p2, v3, v7}, Lcom/google/protobuf/Writer;->writeSInt32(II)V

    goto/16 :goto_6

    .line 827
    :pswitch_10
    const-wide/16 v8, 0x8

    add-long/2addr v8, v4

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v7

    invoke-static {p1, v7}, Lcom/google/protobuf/Proto2Schema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 828
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/Proto2Schema;->longAt(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {p2, v3, v8, v9}, Lcom/google/protobuf/Writer;->writeSInt64(IJ)V

    goto/16 :goto_6

    .line 832
    :pswitch_11
    const-wide/16 v8, 0x8

    add-long/2addr v8, v4

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v7

    invoke-static {p1, v7}, Lcom/google/protobuf/Proto2Schema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 833
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {p2, v3, v7}, Lcom/google/protobuf/Writer;->writeGroup(ILjava/lang/Object;)V

    goto/16 :goto_6

    .line 838
    :pswitch_12
    invoke-static {v4, v5}, Lcom/google/protobuf/Proto2Schema;->numberAt(J)I

    move-result v8

    .line 839
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    const/4 v9, 0x0

    .line 837
    invoke-static {v8, v7, p2, v9}, Lcom/google/protobuf/SchemaUtil;->writeDoubleList(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_6

    .line 845
    :pswitch_13
    invoke-static {v4, v5}, Lcom/google/protobuf/Proto2Schema;->numberAt(J)I

    move-result v8

    .line 846
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    const/4 v9, 0x0

    .line 844
    invoke-static {v8, v7, p2, v9}, Lcom/google/protobuf/SchemaUtil;->writeFloatList(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_6

    .line 852
    :pswitch_14
    invoke-static {v4, v5}, Lcom/google/protobuf/Proto2Schema;->numberAt(J)I

    move-result v8

    .line 853
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    const/4 v9, 0x0

    .line 851
    invoke-static {v8, v7, p2, v9}, Lcom/google/protobuf/SchemaUtil;->writeInt64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_6

    .line 859
    :pswitch_15
    invoke-static {v4, v5}, Lcom/google/protobuf/Proto2Schema;->numberAt(J)I

    move-result v8

    .line 860
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    const/4 v9, 0x0

    .line 858
    invoke-static {v8, v7, p2, v9}, Lcom/google/protobuf/SchemaUtil;->writeUInt64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_6

    .line 866
    :pswitch_16
    invoke-static {v4, v5}, Lcom/google/protobuf/Proto2Schema;->numberAt(J)I

    move-result v8

    .line 867
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    const/4 v9, 0x0

    .line 865
    invoke-static {v8, v7, p2, v9}, Lcom/google/protobuf/SchemaUtil;->writeInt32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_6

    .line 873
    :pswitch_17
    invoke-static {v4, v5}, Lcom/google/protobuf/Proto2Schema;->numberAt(J)I

    move-result v8

    .line 874
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    const/4 v9, 0x0

    .line 872
    invoke-static {v8, v7, p2, v9}, Lcom/google/protobuf/SchemaUtil;->writeFixed64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_6

    .line 880
    :pswitch_18
    invoke-static {v4, v5}, Lcom/google/protobuf/Proto2Schema;->numberAt(J)I

    move-result v8

    .line 881
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    const/4 v9, 0x0

    .line 879
    invoke-static {v8, v7, p2, v9}, Lcom/google/protobuf/SchemaUtil;->writeFixed32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_6

    .line 887
    :pswitch_19
    invoke-static {v4, v5}, Lcom/google/protobuf/Proto2Schema;->numberAt(J)I

    move-result v8

    .line 888
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    const/4 v9, 0x0

    .line 886
    invoke-static {v8, v7, p2, v9}, Lcom/google/protobuf/SchemaUtil;->writeBoolList(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_6

    .line 894
    :pswitch_1a
    invoke-static {v4, v5}, Lcom/google/protobuf/Proto2Schema;->numberAt(J)I

    move-result v8

    .line 895
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 893
    invoke-static {v8, v7, p2}, Lcom/google/protobuf/SchemaUtil;->writeStringList(ILjava/util/List;Lcom/google/protobuf/Writer;)V

    goto/16 :goto_6

    .line 900
    :pswitch_1b
    invoke-static {v4, v5}, Lcom/google/protobuf/Proto2Schema;->numberAt(J)I

    move-result v8

    .line 901
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 899
    invoke-static {v8, v7, p2}, Lcom/google/protobuf/SchemaUtil;->writeMessageList(ILjava/util/List;Lcom/google/protobuf/Writer;)V

    goto/16 :goto_6

    .line 906
    :pswitch_1c
    invoke-static {v4, v5}, Lcom/google/protobuf/Proto2Schema;->numberAt(J)I

    move-result v8

    .line 907
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 905
    invoke-static {v8, v7, p2}, Lcom/google/protobuf/SchemaUtil;->writeBytesList(ILjava/util/List;Lcom/google/protobuf/Writer;)V

    goto/16 :goto_6

    .line 912
    :pswitch_1d
    invoke-static {v4, v5}, Lcom/google/protobuf/Proto2Schema;->numberAt(J)I

    move-result v8

    .line 913
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    const/4 v9, 0x0

    .line 911
    invoke-static {v8, v7, p2, v9}, Lcom/google/protobuf/SchemaUtil;->writeUInt32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_6

    .line 919
    :pswitch_1e
    invoke-static {v4, v5}, Lcom/google/protobuf/Proto2Schema;->numberAt(J)I

    move-result v8

    .line 920
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    const/4 v9, 0x0

    .line 918
    invoke-static {v8, v7, p2, v9}, Lcom/google/protobuf/SchemaUtil;->writeEnumList(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_6

    .line 926
    :pswitch_1f
    invoke-static {v4, v5}, Lcom/google/protobuf/Proto2Schema;->numberAt(J)I

    move-result v8

    .line 927
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    const/4 v9, 0x0

    .line 925
    invoke-static {v8, v7, p2, v9}, Lcom/google/protobuf/SchemaUtil;->writeSFixed32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_6

    .line 933
    :pswitch_20
    invoke-static {v4, v5}, Lcom/google/protobuf/Proto2Schema;->numberAt(J)I

    move-result v8

    .line 934
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    const/4 v9, 0x0

    .line 932
    invoke-static {v8, v7, p2, v9}, Lcom/google/protobuf/SchemaUtil;->writeSFixed64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_6

    .line 940
    :pswitch_21
    invoke-static {v4, v5}, Lcom/google/protobuf/Proto2Schema;->numberAt(J)I

    move-result v8

    .line 941
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    const/4 v9, 0x0

    .line 939
    invoke-static {v8, v7, p2, v9}, Lcom/google/protobuf/SchemaUtil;->writeSInt32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_6

    .line 947
    :pswitch_22
    invoke-static {v4, v5}, Lcom/google/protobuf/Proto2Schema;->numberAt(J)I

    move-result v8

    .line 948
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    const/4 v9, 0x0

    .line 946
    invoke-static {v8, v7, p2, v9}, Lcom/google/protobuf/SchemaUtil;->writeSInt64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_6

    .line 954
    :pswitch_23
    invoke-static {v4, v5}, Lcom/google/protobuf/Proto2Schema;->numberAt(J)I

    move-result v8

    .line 955
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    const/4 v9, 0x1

    .line 953
    invoke-static {v8, v7, p2, v9}, Lcom/google/protobuf/SchemaUtil;->writeDoubleList(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_6

    .line 961
    :pswitch_24
    invoke-static {v4, v5}, Lcom/google/protobuf/Proto2Schema;->numberAt(J)I

    move-result v8

    .line 962
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    const/4 v9, 0x1

    .line 960
    invoke-static {v8, v7, p2, v9}, Lcom/google/protobuf/SchemaUtil;->writeFloatList(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_6

    .line 968
    :pswitch_25
    invoke-static {v4, v5}, Lcom/google/protobuf/Proto2Schema;->numberAt(J)I

    move-result v8

    .line 969
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    const/4 v9, 0x1

    .line 967
    invoke-static {v8, v7, p2, v9}, Lcom/google/protobuf/SchemaUtil;->writeInt64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_6

    .line 975
    :pswitch_26
    invoke-static {v4, v5}, Lcom/google/protobuf/Proto2Schema;->numberAt(J)I

    move-result v8

    .line 976
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    const/4 v9, 0x1

    .line 974
    invoke-static {v8, v7, p2, v9}, Lcom/google/protobuf/SchemaUtil;->writeUInt64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_6

    .line 982
    :pswitch_27
    invoke-static {v4, v5}, Lcom/google/protobuf/Proto2Schema;->numberAt(J)I

    move-result v8

    .line 983
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    const/4 v9, 0x1

    .line 981
    invoke-static {v8, v7, p2, v9}, Lcom/google/protobuf/SchemaUtil;->writeInt32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_6

    .line 989
    :pswitch_28
    invoke-static {v4, v5}, Lcom/google/protobuf/Proto2Schema;->numberAt(J)I

    move-result v8

    .line 990
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    const/4 v9, 0x1

    .line 988
    invoke-static {v8, v7, p2, v9}, Lcom/google/protobuf/SchemaUtil;->writeFixed64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_6

    .line 996
    :pswitch_29
    invoke-static {v4, v5}, Lcom/google/protobuf/Proto2Schema;->numberAt(J)I

    move-result v8

    .line 997
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    const/4 v9, 0x1

    .line 995
    invoke-static {v8, v7, p2, v9}, Lcom/google/protobuf/SchemaUtil;->writeFixed32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_6

    .line 1004
    :pswitch_2a
    invoke-static {v4, v5}, Lcom/google/protobuf/Proto2Schema;->numberAt(J)I

    move-result v8

    .line 1005
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    const/4 v9, 0x1

    .line 1003
    invoke-static {v8, v7, p2, v9}, Lcom/google/protobuf/SchemaUtil;->writeBoolList(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_6

    .line 1011
    :pswitch_2b
    invoke-static {v4, v5}, Lcom/google/protobuf/Proto2Schema;->numberAt(J)I

    move-result v8

    .line 1012
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    const/4 v9, 0x1

    .line 1010
    invoke-static {v8, v7, p2, v9}, Lcom/google/protobuf/SchemaUtil;->writeUInt32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_6

    .line 1018
    :pswitch_2c
    invoke-static {v4, v5}, Lcom/google/protobuf/Proto2Schema;->numberAt(J)I

    move-result v8

    .line 1019
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    const/4 v9, 0x1

    .line 1017
    invoke-static {v8, v7, p2, v9}, Lcom/google/protobuf/SchemaUtil;->writeEnumList(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_6

    .line 1025
    :pswitch_2d
    invoke-static {v4, v5}, Lcom/google/protobuf/Proto2Schema;->numberAt(J)I

    move-result v8

    .line 1026
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    const/4 v9, 0x1

    .line 1024
    invoke-static {v8, v7, p2, v9}, Lcom/google/protobuf/SchemaUtil;->writeSFixed32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_6

    .line 1032
    :pswitch_2e
    invoke-static {v4, v5}, Lcom/google/protobuf/Proto2Schema;->numberAt(J)I

    move-result v8

    .line 1033
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    const/4 v9, 0x1

    .line 1031
    invoke-static {v8, v7, p2, v9}, Lcom/google/protobuf/SchemaUtil;->writeSFixed64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_6

    .line 1039
    :pswitch_2f
    invoke-static {v4, v5}, Lcom/google/protobuf/Proto2Schema;->numberAt(J)I

    move-result v8

    .line 1040
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    const/4 v9, 0x1

    .line 1038
    invoke-static {v8, v7, p2, v9}, Lcom/google/protobuf/SchemaUtil;->writeSInt32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_6

    .line 1046
    :pswitch_30
    invoke-static {v4, v5}, Lcom/google/protobuf/Proto2Schema;->numberAt(J)I

    move-result v8

    .line 1047
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    const/4 v9, 0x1

    .line 1045
    invoke-static {v8, v7, p2, v9}, Lcom/google/protobuf/SchemaUtil;->writeSInt64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_6

    .line 1053
    :pswitch_31
    invoke-static {v4, v5}, Lcom/google/protobuf/Proto2Schema;->numberAt(J)I

    move-result v8

    .line 1054
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 1052
    invoke-static {v8, v7, p2}, Lcom/google/protobuf/SchemaUtil;->writeGroupList(ILjava/util/List;Lcom/google/protobuf/Writer;)V

    goto/16 :goto_6

    .line 1058
    :pswitch_32
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    invoke-direct {p0, p2, v3, v7}, Lcom/google/protobuf/Proto2Schema;->writeMapHelper(Lcom/google/protobuf/Writer;ILjava/lang/Object;)V

    goto/16 :goto_6

    .line 1061
    :pswitch_33
    const-wide/16 v8, 0x8

    add-long/2addr v8, v4

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v7

    invoke-static {p1, v3, v7}, Lcom/google/protobuf/Proto2Schema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1062
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/Proto2Schema;->oneofDoubleAt(Ljava/lang/Object;J)D

    move-result-wide v8

    invoke-interface {p2, v3, v8, v9}, Lcom/google/protobuf/Writer;->writeDouble(ID)V

    goto/16 :goto_6

    .line 1066
    :pswitch_34
    const-wide/16 v8, 0x8

    add-long/2addr v8, v4

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v7

    invoke-static {p1, v3, v7}, Lcom/google/protobuf/Proto2Schema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1067
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/Proto2Schema;->oneofFloatAt(Ljava/lang/Object;J)F

    move-result v7

    invoke-interface {p2, v3, v7}, Lcom/google/protobuf/Writer;->writeFloat(IF)V

    goto/16 :goto_6

    .line 1071
    :pswitch_35
    const-wide/16 v8, 0x8

    add-long/2addr v8, v4

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v7

    invoke-static {p1, v3, v7}, Lcom/google/protobuf/Proto2Schema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1072
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/Proto2Schema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {p2, v3, v8, v9}, Lcom/google/protobuf/Writer;->writeInt64(IJ)V

    goto/16 :goto_6

    .line 1076
    :pswitch_36
    const-wide/16 v8, 0x8

    add-long/2addr v8, v4

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v7

    invoke-static {p1, v3, v7}, Lcom/google/protobuf/Proto2Schema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1077
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/Proto2Schema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {p2, v3, v8, v9}, Lcom/google/protobuf/Writer;->writeUInt64(IJ)V

    goto/16 :goto_6

    .line 1081
    :pswitch_37
    const-wide/16 v8, 0x8

    add-long/2addr v8, v4

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v7

    invoke-static {p1, v3, v7}, Lcom/google/protobuf/Proto2Schema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1082
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/Proto2Schema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v7

    invoke-interface {p2, v3, v7}, Lcom/google/protobuf/Writer;->writeInt32(II)V

    goto/16 :goto_6

    .line 1086
    :pswitch_38
    const-wide/16 v8, 0x8

    add-long/2addr v8, v4

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v7

    invoke-static {p1, v3, v7}, Lcom/google/protobuf/Proto2Schema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1087
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/Proto2Schema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {p2, v3, v8, v9}, Lcom/google/protobuf/Writer;->writeFixed64(IJ)V

    goto/16 :goto_6

    .line 1091
    :pswitch_39
    const-wide/16 v8, 0x8

    add-long/2addr v8, v4

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v7

    invoke-static {p1, v3, v7}, Lcom/google/protobuf/Proto2Schema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1092
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/Proto2Schema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v7

    invoke-interface {p2, v3, v7}, Lcom/google/protobuf/Writer;->writeFixed32(II)V

    goto/16 :goto_6

    .line 1096
    :pswitch_3a
    const-wide/16 v8, 0x8

    add-long/2addr v8, v4

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v7

    invoke-static {p1, v3, v7}, Lcom/google/protobuf/Proto2Schema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1097
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/Proto2Schema;->oneofBooleanAt(Ljava/lang/Object;J)Z

    move-result v7

    invoke-interface {p2, v3, v7}, Lcom/google/protobuf/Writer;->writeBool(IZ)V

    goto/16 :goto_6

    .line 1101
    :pswitch_3b
    const-wide/16 v8, 0x8

    add-long/2addr v8, v4

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v7

    invoke-static {p1, v3, v7}, Lcom/google/protobuf/Proto2Schema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1102
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    invoke-direct {p0, v3, v7, p2}, Lcom/google/protobuf/Proto2Schema;->writeString(ILjava/lang/Object;Lcom/google/protobuf/Writer;)V

    goto/16 :goto_6

    .line 1106
    :pswitch_3c
    const-wide/16 v8, 0x8

    add-long/2addr v8, v4

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v7

    invoke-static {p1, v3, v7}, Lcom/google/protobuf/Proto2Schema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1107
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {p2, v3, v7}, Lcom/google/protobuf/Writer;->writeMessage(ILjava/lang/Object;)V

    goto/16 :goto_6

    .line 1111
    :pswitch_3d
    const-wide/16 v8, 0x8

    add-long/2addr v8, v4

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v7

    invoke-static {p1, v3, v7}, Lcom/google/protobuf/Proto2Schema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1113
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/protobuf/ByteString;

    .line 1112
    invoke-interface {p2, v3, v7}, Lcom/google/protobuf/Writer;->writeBytes(ILcom/google/protobuf/ByteString;)V

    goto/16 :goto_6

    .line 1117
    :pswitch_3e
    const-wide/16 v8, 0x8

    add-long/2addr v8, v4

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v7

    invoke-static {p1, v3, v7}, Lcom/google/protobuf/Proto2Schema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1118
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/Proto2Schema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v7

    invoke-interface {p2, v3, v7}, Lcom/google/protobuf/Writer;->writeUInt32(II)V

    goto/16 :goto_6

    .line 1122
    :pswitch_3f
    const-wide/16 v8, 0x8

    add-long/2addr v8, v4

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v7

    invoke-static {p1, v3, v7}, Lcom/google/protobuf/Proto2Schema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1123
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/Proto2Schema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v7

    invoke-interface {p2, v3, v7}, Lcom/google/protobuf/Writer;->writeEnum(II)V

    goto/16 :goto_6

    .line 1127
    :pswitch_40
    const-wide/16 v8, 0x8

    add-long/2addr v8, v4

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v7

    invoke-static {p1, v3, v7}, Lcom/google/protobuf/Proto2Schema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1128
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/Proto2Schema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v7

    invoke-interface {p2, v3, v7}, Lcom/google/protobuf/Writer;->writeSFixed32(II)V

    goto/16 :goto_6

    .line 1132
    :pswitch_41
    const-wide/16 v8, 0x8

    add-long/2addr v8, v4

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v7

    invoke-static {p1, v3, v7}, Lcom/google/protobuf/Proto2Schema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1133
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/Proto2Schema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {p2, v3, v8, v9}, Lcom/google/protobuf/Writer;->writeSFixed64(IJ)V

    goto/16 :goto_6

    .line 1137
    :pswitch_42
    const-wide/16 v8, 0x8

    add-long/2addr v8, v4

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v7

    invoke-static {p1, v3, v7}, Lcom/google/protobuf/Proto2Schema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1138
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/Proto2Schema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v7

    invoke-interface {p2, v3, v7}, Lcom/google/protobuf/Writer;->writeSInt32(II)V

    goto/16 :goto_6

    .line 1142
    :pswitch_43
    const-wide/16 v8, 0x8

    add-long/2addr v8, v4

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v7

    invoke-static {p1, v3, v7}, Lcom/google/protobuf/Proto2Schema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1143
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/Proto2Schema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {p2, v3, v8, v9}, Lcom/google/protobuf/Writer;->writeSInt64(IJ)V

    goto/16 :goto_6

    .line 1147
    :pswitch_44
    const-wide/16 v8, 0x8

    add-long/2addr v8, v4

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v7

    invoke-static {p1, v3, v7}, Lcom/google/protobuf/Proto2Schema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1148
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {p2, v3, v7}, Lcom/google/protobuf/Writer;->writeGroup(ILjava/lang/Object;)V

    goto/16 :goto_6

    .line 1155
    .end local v3    # "number":I
    .end local v6    # "typeAndOffset":I
    :cond_6
    :goto_7
    if-eqz v2, :cond_8

    .line 1156
    iget-object v7, p0, Lcom/google/protobuf/Proto2Schema;->extensionSchema:Lcom/google/protobuf/ExtensionSchema;

    invoke-virtual {v7, p2, v2}, Lcom/google/protobuf/ExtensionSchema;->serializeExtension(Lcom/google/protobuf/Writer;Ljava/util/Map$Entry;)V

    .line 1157
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    move-object v2, v7

    :goto_8
    goto :goto_7

    :cond_7
    const/4 v2, 0x0

    goto :goto_8

    .line 1159
    :cond_8
    return-void

    .line 744
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
        :pswitch_44
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
    .line 1163
    .local p0, "this":Lcom/google/protobuf/Proto2Schema;, "Lcom/google/protobuf/Proto2Schema<TT;>;"
    iget-object v0, p0, Lcom/google/protobuf/Proto2Schema;->mapFieldSchema:Lcom/google/protobuf/MapFieldSchema;

    iget-object v1, p0, Lcom/google/protobuf/Proto2Schema;->mapFieldDefaultEntryMap:Lcom/google/protobuf/Int2ObjectHashMap;

    .line 1166
    invoke-virtual {v1, p2}, Lcom/google/protobuf/Int2ObjectHashMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/MapFieldSchema;->forMapMetadata(Ljava/lang/Object;)Lcom/google/protobuf/MapEntryLite$Metadata;

    move-result-object v0

    iget-object v1, p0, Lcom/google/protobuf/Proto2Schema;->mapFieldSchema:Lcom/google/protobuf/MapFieldSchema;

    .line 1167
    invoke-interface {v1, p3}, Lcom/google/protobuf/MapFieldSchema;->forMapData(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    .line 1163
    invoke-interface {p1, p2, v0, v1}, Lcom/google/protobuf/Writer;->writeMap(ILcom/google/protobuf/MapEntryLite$Metadata;Ljava/util/Map;)V

    .line 1168
    return-void
.end method

.method private writeString(ILjava/lang/Object;Lcom/google/protobuf/Writer;)V
    .locals 1
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "writer"    # Lcom/google/protobuf/Writer;

    .prologue
    .line 1662
    .local p0, "this":Lcom/google/protobuf/Proto2Schema;, "Lcom/google/protobuf/Proto2Schema<TT;>;"
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1663
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-interface {p3, p1, p2}, Lcom/google/protobuf/Writer;->writeString(ILjava/lang/String;)V

    .line 1667
    :goto_0
    return-void

    .line 1665
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_0
    check-cast p2, Lcom/google/protobuf/ByteString;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-interface {p3, p1, p2}, Lcom/google/protobuf/Writer;->writeBytes(ILcom/google/protobuf/ByteString;)V

    goto :goto_0
.end method

.method private writeUnknownInMessageTo(Lcom/google/protobuf/UnknownFieldSchema;Ljava/lang/Object;Lcom/google/protobuf/Writer;)V
    .locals 1
    .param p3, "writer"    # Lcom/google/protobuf/Writer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/UnknownFieldSchema",
            "<TUT;>;TT;",
            "Lcom/google/protobuf/Writer;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1172
    .local p0, "this":Lcom/google/protobuf/Proto2Schema;, "Lcom/google/protobuf/Proto2Schema<TT;>;"
    .local p1, "schema":Lcom/google/protobuf/UnknownFieldSchema;, "Lcom/google/protobuf/UnknownFieldSchema<TUT;>;"
    .local p2, "message":Ljava/lang/Object;, "TT;"
    invoke-virtual {p1, p2}, Lcom/google/protobuf/UnknownFieldSchema;->getFromMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0, p3}, Lcom/google/protobuf/UnknownFieldSchema;->writeTo(Ljava/lang/Object;Lcom/google/protobuf/Writer;)V

    .line 1173
    return-void
.end method


# virtual methods
.method public final isInitialized(Ljava/lang/Object;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 1603
    .local p0, "this":Lcom/google/protobuf/Proto2Schema;, "Lcom/google/protobuf/Proto2Schema<TT;>;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    invoke-direct {p0, p1}, Lcom/google/protobuf/Proto2Schema;->getMemoizedIsInitialized(Ljava/lang/Object;)B

    move-result v1

    .line 1604
    .local v1, "memoizedValue":B
    const/4 v6, -0x1

    if-eq v1, v6, :cond_1

    .line 1605
    if-eqz v1, :cond_0

    const/4 v6, 0x1

    .line 1658
    :goto_0
    return v6

    .line 1605
    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    .line 1607
    :cond_1
    const/4 v1, 0x1

    .line 1609
    iget-wide v4, p0, Lcom/google/protobuf/Proto2Schema;->address:J

    .local v4, "pos":J
    :goto_1
    iget-wide v6, p0, Lcom/google/protobuf/Proto2Schema;->limit:J

    cmp-long v6, v4, v6

    if-gez v6, :cond_4

    .line 1610
    invoke-static {v4, v5}, Lcom/google/protobuf/Proto2Schema;->numberAt(J)I

    move-result v0

    .line 1611
    .local v0, "fieldNumber":I
    const/4 v6, -0x1

    if-ne v0, v6, :cond_3

    .line 1609
    :cond_2
    :goto_2
    const-wide/16 v6, 0x10

    add-long/2addr v4, v6

    goto :goto_1

    .line 1615
    :cond_3
    invoke-static {v4, v5}, Lcom/google/protobuf/Proto2Schema;->typeAndOffsetAt(J)I

    move-result v3

    .line 1616
    .local v3, "typeAndOffset":I
    invoke-static {v3}, Lcom/google/protobuf/Proto2Schema;->isRequired(I)Z

    move-result v6

    if-eqz v6, :cond_5

    const-wide/16 v6, 0x8

    add-long/2addr v6, v4

    .line 1617
    invoke-static {v6, v7}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v6

    invoke-static {p1, v6}, Lcom/google/protobuf/Proto2Schema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v6

    if-nez v6, :cond_5

    .line 1618
    const/4 v1, 0x0

    .line 1657
    .end local v0    # "fieldNumber":I
    .end local v3    # "typeAndOffset":I
    :cond_4
    :goto_3
    invoke-direct {p0, p1, v1}, Lcom/google/protobuf/Proto2Schema;->setMemoizedIsInitialized(Ljava/lang/Object;B)V

    .line 1658
    if-eqz v1, :cond_7

    const/4 v6, 0x1

    goto :goto_0

    .line 1622
    .restart local v0    # "fieldNumber":I
    .restart local v3    # "typeAndOffset":I
    :cond_5
    invoke-static {v3}, Lcom/google/protobuf/Proto2Schema;->type(I)I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    goto :goto_2

    .line 1625
    :sswitch_0
    const-wide/16 v6, 0x8

    add-long/2addr v6, v4

    invoke-static {v6, v7}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v6

    invoke-static {p1, v6}, Lcom/google/protobuf/Proto2Schema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1626
    invoke-static {}, Lcom/google/protobuf/Protobuf;->getInstance()Lcom/google/protobuf/Protobuf;

    move-result-object v6

    .line 1627
    invoke-static {v3}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/protobuf/Protobuf;->isInitialized(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 1628
    const/4 v1, 0x0

    .line 1629
    goto :goto_3

    .line 1635
    :sswitch_1
    invoke-static {v3}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1636
    .local v2, "nestedMessage":Ljava/lang/Object;
    invoke-static {}, Lcom/google/protobuf/Protobuf;->getInstance()Lcom/google/protobuf/Protobuf;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/google/protobuf/Protobuf;->isInitialized(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 1637
    const/4 v1, 0x0

    .line 1638
    goto :goto_3

    .line 1644
    .end local v2    # "nestedMessage":Ljava/lang/Object;
    :sswitch_2
    const-wide/16 v6, 0x8

    add-long/2addr v6, v4

    invoke-static {v6, v7}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v6

    invoke-static {p1, v0, v6}, Lcom/google/protobuf/Proto2Schema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1645
    invoke-static {}, Lcom/google/protobuf/Protobuf;->getInstance()Lcom/google/protobuf/Protobuf;

    move-result-object v6

    .line 1646
    invoke-static {v3}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/protobuf/Protobuf;->isInitialized(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 1647
    const/4 v1, 0x0

    .line 1648
    goto :goto_3

    .line 1658
    .end local v0    # "fieldNumber":I
    .end local v3    # "typeAndOffset":I
    :cond_7
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 1622
    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0x11 -> :sswitch_0
        0x1b -> :sswitch_1
        0x31 -> :sswitch_1
        0x3c -> :sswitch_2
        0x44 -> :sswitch_2
    .end sparse-switch
.end method

.method public mergeFrom(Ljava/lang/Object;Lcom/google/protobuf/Reader;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 1
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
    .line 1178
    .local p0, "this":Lcom/google/protobuf/Proto2Schema;, "Lcom/google/protobuf/Proto2Schema<TT;>;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/google/protobuf/Proto2Schema;->unknownFieldSchema:Lcom/google/protobuf/UnknownFieldSchema;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/protobuf/Proto2Schema;->mergeFromHelper(Lcom/google/protobuf/UnknownFieldSchema;Ljava/lang/Object;Lcom/google/protobuf/Reader;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 1179
    return-void
.end method

.method public newInstance()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 271
    .local p0, "this":Lcom/google/protobuf/Proto2Schema;, "Lcom/google/protobuf/Proto2Schema<TT;>;"
    iget-object v0, p0, Lcom/google/protobuf/Proto2Schema;->defaultInstance:Lcom/google/protobuf/MessageLite;

    invoke-interface {v0}, Lcom/google/protobuf/MessageLite;->newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/protobuf/MessageLite$Builder;->buildPartial()Lcom/google/protobuf/MessageLite;

    move-result-object v0

    return-object v0
.end method

.method public readGroupList(Ljava/lang/Object;JLcom/google/protobuf/Reader;Ljava/lang/Class;Lcom/google/protobuf/ExtensionRegistryLite;)V
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
    .line 1711
    .local p0, "this":Lcom/google/protobuf/Proto2Schema;, "Lcom/google/protobuf/Proto2Schema<TT;>;"
    .local p5, "targetType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lcom/google/protobuf/Proto2Schema;->fieldInitializer:Lcom/google/protobuf/FieldInitializer;

    .line 1712
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/protobuf/FieldInitializer;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    .line 1711
    invoke-interface {p4, v0, p5, p6}, Lcom/google/protobuf/Reader;->readGroupList(Ljava/util/List;Ljava/lang/Class;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 1713
    return-void
.end method

.method public readMessageList(Ljava/lang/Object;JLcom/google/protobuf/Reader;Ljava/lang/Class;Lcom/google/protobuf/ExtensionRegistryLite;)V
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
    .line 1700
    .local p0, "this":Lcom/google/protobuf/Proto2Schema;, "Lcom/google/protobuf/Proto2Schema<TT;>;"
    .local p5, "targetType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lcom/google/protobuf/Proto2Schema;->fieldInitializer:Lcom/google/protobuf/FieldInitializer;

    .line 1701
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/protobuf/FieldInitializer;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    .line 1700
    invoke-interface {p4, v0, p5, p6}, Lcom/google/protobuf/Reader;->readMessageList(Ljava/util/List;Ljava/lang/Class;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 1702
    return-void
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
    .line 280
    .local p0, "this":Lcom/google/protobuf/Proto2Schema;, "Lcom/google/protobuf/Proto2Schema<TT;>;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    invoke-interface {p2}, Lcom/google/protobuf/Writer;->fieldOrder()Lcom/google/protobuf/Writer$FieldOrder;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/Writer$FieldOrder;->DESCENDING:Lcom/google/protobuf/Writer$FieldOrder;

    if-ne v0, v1, :cond_0

    .line 281
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/Proto2Schema;->writeFieldsInDescendingOrder(Ljava/lang/Object;Lcom/google/protobuf/Writer;)V

    .line 285
    :goto_0
    return-void

    .line 283
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/Proto2Schema;->writeFieldsInAscendingOrder(Ljava/lang/Object;Lcom/google/protobuf/Writer;)V

    goto :goto_0
.end method
