.class Lcom/google/protobuf/UnknownFieldSetLiteSchema;
.super Lcom/google/protobuf/UnknownFieldSchema;
.source "UnknownFieldSetLiteSchema.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/UnknownFieldSchema",
        "<",
        "Lcom/google/protobuf/UnknownFieldSetLite;",
        ">;"
    }
.end annotation


# static fields
.field private static final LITE_UNKNOWN_FIELD_COUNT_OFFSET:J

.field private static final LITE_UNKNOWN_FIELD_OBJECTS_OFFSET:J

.field private static final LITE_UNKNOWN_FIELD_OFFSET:J

.field private static final LITE_UNKNOWN_FIELD_TAGS_OFFSET:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 8
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSetLiteSchema;->unknownFieldLiteOffset()J

    move-result-wide v0

    sput-wide v0, Lcom/google/protobuf/UnknownFieldSetLiteSchema;->LITE_UNKNOWN_FIELD_OFFSET:J

    .line 9
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSetLiteSchema;->unknownFieldLiteCountOffset()J

    move-result-wide v0

    sput-wide v0, Lcom/google/protobuf/UnknownFieldSetLiteSchema;->LITE_UNKNOWN_FIELD_COUNT_OFFSET:J

    .line 10
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSetLiteSchema;->unknownFieldLiteTagsOffset()J

    move-result-wide v0

    sput-wide v0, Lcom/google/protobuf/UnknownFieldSetLiteSchema;->LITE_UNKNOWN_FIELD_TAGS_OFFSET:J

    .line 11
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSetLiteSchema;->unknownFieldLiteObjectsOffset()J

    move-result-wide v0

    sput-wide v0, Lcom/google/protobuf/UnknownFieldSetLiteSchema;->LITE_UNKNOWN_FIELD_OBJECTS_OFFSET:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/google/protobuf/UnknownFieldSchema;-><init>()V

    return-void
.end method

.method private static unknownFieldLiteCountOffset()J
    .locals 4

    .prologue
    .line 15
    :try_start_0
    const-class v1, Lcom/google/protobuf/UnknownFieldSetLite;

    const-string v2, "count"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 16
    .local v0, "field":Ljava/lang/reflect/Field;
    invoke-static {v0}, Lcom/google/protobuf/UnsafeUtil;->objectFieldOffset(Ljava/lang/reflect/Field;)J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 20
    :goto_0
    return-wide v2

    .line 17
    :catch_0
    move-exception v1

    .line 20
    const-wide/16 v2, -0x1

    goto :goto_0
.end method

.method private static unknownFieldLiteObjectsOffset()J
    .locals 4

    .prologue
    .line 35
    :try_start_0
    const-class v1, Lcom/google/protobuf/UnknownFieldSetLite;

    const-string v2, "objects"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 36
    .local v0, "field":Ljava/lang/reflect/Field;
    invoke-static {v0}, Lcom/google/protobuf/UnsafeUtil;->objectFieldOffset(Ljava/lang/reflect/Field;)J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 40
    :goto_0
    return-wide v2

    .line 37
    :catch_0
    move-exception v1

    .line 40
    const-wide/16 v2, -0x1

    goto :goto_0
.end method

.method private static unknownFieldLiteOffset()J
    .locals 4

    .prologue
    .line 45
    :try_start_0
    const-class v1, Lcom/google/protobuf/GeneratedMessageLite;

    const-string v2, "unknownFields"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 46
    .local v0, "field":Ljava/lang/reflect/Field;
    invoke-static {v0}, Lcom/google/protobuf/UnsafeUtil;->objectFieldOffset(Ljava/lang/reflect/Field;)J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 50
    :goto_0
    return-wide v2

    .line 47
    :catch_0
    move-exception v1

    .line 50
    const-wide/16 v2, -0x1

    goto :goto_0
.end method

.method private static unknownFieldLiteTagsOffset()J
    .locals 4

    .prologue
    .line 25
    :try_start_0
    const-class v1, Lcom/google/protobuf/UnknownFieldSetLite;

    const-string v2, "tags"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 26
    .local v0, "field":Ljava/lang/reflect/Field;
    invoke-static {v0}, Lcom/google/protobuf/UnsafeUtil;->objectFieldOffset(Ljava/lang/reflect/Field;)J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 30
    :goto_0
    return-wide v2

    .line 27
    :catch_0
    move-exception v1

    .line 30
    const-wide/16 v2, -0x1

    goto :goto_0
.end method


# virtual methods
.method public addFixed32(Lcom/google/protobuf/UnknownFieldSetLite;II)V
    .locals 2
    .param p1, "fields"    # Lcom/google/protobuf/UnknownFieldSetLite;
    .param p2, "number"    # I
    .param p3, "value"    # I

    .prologue
    .line 67
    const/4 v0, 0x5

    .line 68
    invoke-static {p2, v0}, Lcom/google/protobuf/BinaryProtocolUtil;->tagFor(IB)I

    move-result v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 67
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/UnknownFieldSetLite;->storeField(ILjava/lang/Object;)V

    .line 69
    return-void
.end method

.method public bridge synthetic addFixed32(Ljava/lang/Object;II)V
    .locals 0

    .prologue
    .line 5
    check-cast p1, Lcom/google/protobuf/UnknownFieldSetLite;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/UnknownFieldSetLiteSchema;->addFixed32(Lcom/google/protobuf/UnknownFieldSetLite;II)V

    return-void
.end method

.method public addFixed64(Lcom/google/protobuf/UnknownFieldSetLite;IJ)V
    .locals 3
    .param p1, "fields"    # Lcom/google/protobuf/UnknownFieldSetLite;
    .param p2, "number"    # I
    .param p3, "value"    # J

    .prologue
    .line 73
    const/4 v0, 0x1

    .line 74
    invoke-static {p2, v0}, Lcom/google/protobuf/BinaryProtocolUtil;->tagFor(IB)I

    move-result v0

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 73
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/UnknownFieldSetLite;->storeField(ILjava/lang/Object;)V

    .line 75
    return-void
.end method

.method public bridge synthetic addFixed64(Ljava/lang/Object;IJ)V
    .locals 1

    .prologue
    .line 5
    check-cast p1, Lcom/google/protobuf/UnknownFieldSetLite;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/protobuf/UnknownFieldSetLiteSchema;->addFixed64(Lcom/google/protobuf/UnknownFieldSetLite;IJ)V

    return-void
.end method

.method public addGroup(Lcom/google/protobuf/UnknownFieldSetLite;ILcom/google/protobuf/UnknownFieldSetLite;)V
    .locals 1
    .param p1, "fields"    # Lcom/google/protobuf/UnknownFieldSetLite;
    .param p2, "number"    # I
    .param p3, "subFieldSet"    # Lcom/google/protobuf/UnknownFieldSetLite;

    .prologue
    .line 85
    const/4 v0, 0x3

    .line 86
    invoke-static {p2, v0}, Lcom/google/protobuf/BinaryProtocolUtil;->tagFor(IB)I

    move-result v0

    .line 85
    invoke-virtual {p1, v0, p3}, Lcom/google/protobuf/UnknownFieldSetLite;->storeField(ILjava/lang/Object;)V

    .line 87
    return-void
.end method

.method public bridge synthetic addGroup(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 5
    check-cast p1, Lcom/google/protobuf/UnknownFieldSetLite;

    check-cast p3, Lcom/google/protobuf/UnknownFieldSetLite;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/UnknownFieldSetLiteSchema;->addGroup(Lcom/google/protobuf/UnknownFieldSetLite;ILcom/google/protobuf/UnknownFieldSetLite;)V

    return-void
.end method

.method public addLengthDelimited(Lcom/google/protobuf/UnknownFieldSetLite;ILcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "fields"    # Lcom/google/protobuf/UnknownFieldSetLite;
    .param p2, "number"    # I
    .param p3, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 79
    const/4 v0, 0x2

    .line 80
    invoke-static {p2, v0}, Lcom/google/protobuf/BinaryProtocolUtil;->tagFor(IB)I

    move-result v0

    .line 79
    invoke-virtual {p1, v0, p3}, Lcom/google/protobuf/UnknownFieldSetLite;->storeField(ILjava/lang/Object;)V

    .line 81
    return-void
.end method

.method public bridge synthetic addLengthDelimited(Ljava/lang/Object;ILcom/google/protobuf/ByteString;)V
    .locals 0

    .prologue
    .line 5
    check-cast p1, Lcom/google/protobuf/UnknownFieldSetLite;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/UnknownFieldSetLiteSchema;->addLengthDelimited(Lcom/google/protobuf/UnknownFieldSetLite;ILcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public addVarint(Lcom/google/protobuf/UnknownFieldSetLite;IJ)V
    .locals 3
    .param p1, "fields"    # Lcom/google/protobuf/UnknownFieldSetLite;
    .param p2, "number"    # I
    .param p3, "value"    # J

    .prologue
    .line 62
    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/google/protobuf/BinaryProtocolUtil;->tagFor(IB)I

    move-result v0

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/UnknownFieldSetLite;->storeField(ILjava/lang/Object;)V

    .line 63
    return-void
.end method

.method public bridge synthetic addVarint(Ljava/lang/Object;IJ)V
    .locals 1

    .prologue
    .line 5
    check-cast p1, Lcom/google/protobuf/UnknownFieldSetLite;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/protobuf/UnknownFieldSetLiteSchema;->addVarint(Lcom/google/protobuf/UnknownFieldSetLite;IJ)V

    return-void
.end method

.method public getFromMessage(Ljava/lang/Object;)Lcom/google/protobuf/UnknownFieldSetLite;
    .locals 2
    .param p1, "message"    # Ljava/lang/Object;

    .prologue
    .line 102
    sget-wide v0, Lcom/google/protobuf/UnknownFieldSetLiteSchema;->LITE_UNKNOWN_FIELD_OFFSET:J

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/UnknownFieldSetLite;

    return-object v0
.end method

.method public bridge synthetic getFromMessage(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 5
    invoke-virtual {p0, p1}, Lcom/google/protobuf/UnknownFieldSetLiteSchema;->getFromMessage(Ljava/lang/Object;)Lcom/google/protobuf/UnknownFieldSetLite;

    move-result-object v0

    return-object v0
.end method

.method public newInstance()Lcom/google/protobuf/UnknownFieldSetLite;
    .locals 1

    .prologue
    .line 57
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSetLite;->newInstance()Lcom/google/protobuf/UnknownFieldSetLite;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 5
    invoke-virtual {p0}, Lcom/google/protobuf/UnknownFieldSetLiteSchema;->newInstance()Lcom/google/protobuf/UnknownFieldSetLite;

    move-result-object v0

    return-object v0
.end method

.method public setToMessage(Ljava/lang/Object;Lcom/google/protobuf/UnknownFieldSetLite;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "fields"    # Lcom/google/protobuf/UnknownFieldSetLite;

    .prologue
    .line 97
    sget-wide v0, Lcom/google/protobuf/UnknownFieldSetLiteSchema;->LITE_UNKNOWN_FIELD_OFFSET:J

    invoke-static {p1, v0, v1, p2}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 98
    return-void
.end method

.method public bridge synthetic setToMessage(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 5
    check-cast p2, Lcom/google/protobuf/UnknownFieldSetLite;

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/UnknownFieldSetLiteSchema;->setToMessage(Ljava/lang/Object;Lcom/google/protobuf/UnknownFieldSetLite;)V

    return-void
.end method

.method public toImmutable(Lcom/google/protobuf/UnknownFieldSetLite;)Lcom/google/protobuf/UnknownFieldSetLite;
    .locals 0
    .param p1, "fields"    # Lcom/google/protobuf/UnknownFieldSetLite;

    .prologue
    .line 91
    invoke-virtual {p1}, Lcom/google/protobuf/UnknownFieldSetLite;->makeImmutable()V

    .line 92
    return-object p1
.end method

.method public bridge synthetic toImmutable(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 5
    check-cast p1, Lcom/google/protobuf/UnknownFieldSetLite;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/UnknownFieldSetLiteSchema;->toImmutable(Lcom/google/protobuf/UnknownFieldSetLite;)Lcom/google/protobuf/UnknownFieldSetLite;

    move-result-object v0

    return-object v0
.end method

.method writeAsMessageSetTo(Lcom/google/protobuf/UnknownFieldSetLite;Lcom/google/protobuf/Writer;)V
    .locals 0
    .param p1, "fields"    # Lcom/google/protobuf/UnknownFieldSetLite;
    .param p2, "writer"    # Lcom/google/protobuf/Writer;

    .prologue
    .line 143
    invoke-virtual {p1, p2}, Lcom/google/protobuf/UnknownFieldSetLite;->writeAsMessageSetTo(Lcom/google/protobuf/Writer;)V

    .line 144
    return-void
.end method

.method bridge synthetic writeAsMessageSetTo(Ljava/lang/Object;Lcom/google/protobuf/Writer;)V
    .locals 0

    .prologue
    .line 5
    check-cast p1, Lcom/google/protobuf/UnknownFieldSetLite;

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/UnknownFieldSetLiteSchema;->writeAsMessageSetTo(Lcom/google/protobuf/UnknownFieldSetLite;Lcom/google/protobuf/Writer;)V

    return-void
.end method

.method public writeTo(Lcom/google/protobuf/UnknownFieldSetLite;Lcom/google/protobuf/Writer;)V
    .locals 8
    .param p1, "fields"    # Lcom/google/protobuf/UnknownFieldSetLite;
    .param p2, "writer"    # Lcom/google/protobuf/Writer;

    .prologue
    .line 107
    sget-wide v6, Lcom/google/protobuf/UnknownFieldSetLiteSchema;->LITE_UNKNOWN_FIELD_COUNT_OFFSET:J

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v0

    .line 108
    .local v0, "count":I
    if-nez v0, :cond_1

    .line 139
    :cond_0
    return-void

    .line 112
    :cond_1
    sget-wide v6, Lcom/google/protobuf/UnknownFieldSetLiteSchema;->LITE_UNKNOWN_FIELD_TAGS_OFFSET:J

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [I

    .line 113
    .local v5, "tags":[I
    sget-wide v6, Lcom/google/protobuf/UnknownFieldSetLiteSchema;->LITE_UNKNOWN_FIELD_OBJECTS_OFFSET:J

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    .line 115
    .local v3, "objects":[Ljava/lang/Object;
    add-int/lit8 v2, v0, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_0

    .line 116
    aget v4, v5, v2

    .line 117
    .local v4, "tag":I
    invoke-static {v4}, Lcom/google/protobuf/BinaryProtocolUtil;->getFieldNumber(I)I

    move-result v1

    .line 118
    .local v1, "fieldNumber":I
    invoke-static {v4}, Lcom/google/protobuf/BinaryProtocolUtil;->getWireType(I)I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 136
    :pswitch_0
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 120
    :pswitch_1
    aget-object v6, v3, v2

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-interface {p2, v1, v6, v7}, Lcom/google/protobuf/Writer;->writeInt64(IJ)V

    .line 115
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 123
    :pswitch_2
    aget-object v6, v3, v2

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {p2, v1, v6}, Lcom/google/protobuf/Writer;->writeFixed32(II)V

    goto :goto_1

    .line 126
    :pswitch_3
    aget-object v6, v3, v2

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-interface {p2, v1, v6, v7}, Lcom/google/protobuf/Writer;->writeFixed64(IJ)V

    goto :goto_1

    .line 129
    :pswitch_4
    aget-object v6, v3, v2

    check-cast v6, Lcom/google/protobuf/ByteString;

    invoke-interface {p2, v1, v6}, Lcom/google/protobuf/Writer;->writeBytes(ILcom/google/protobuf/ByteString;)V

    goto :goto_1

    .line 132
    :pswitch_5
    aget-object v6, v3, v2

    invoke-interface {p2, v1, v6}, Lcom/google/protobuf/Writer;->writeGroup(ILjava/lang/Object;)V

    goto :goto_1

    .line 118
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public bridge synthetic writeTo(Ljava/lang/Object;Lcom/google/protobuf/Writer;)V
    .locals 0

    .prologue
    .line 5
    check-cast p1, Lcom/google/protobuf/UnknownFieldSetLite;

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/UnknownFieldSetLiteSchema;->writeTo(Lcom/google/protobuf/UnknownFieldSetLite;Lcom/google/protobuf/Writer;)V

    return-void
.end method
