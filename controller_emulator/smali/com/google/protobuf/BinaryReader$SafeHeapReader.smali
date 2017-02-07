.class final Lcom/google/protobuf/BinaryReader$SafeHeapReader;
.super Lcom/google/protobuf/BinaryReader;
.source "BinaryReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/BinaryReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SafeHeapReader"
.end annotation


# instance fields
.field private final buffer:[B

.field private final bufferIsImmutable:Z

.field private endGroupTag:I

.field private final initialPos:I

.field private limit:I

.field private pos:I

.field private tag:I


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;Z)V
    .locals 2
    .param p1, "bytebuf"    # Ljava/nio/ByteBuffer;
    .param p2, "bufferIsImmutable"    # Z

    .prologue
    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/protobuf/BinaryReader;-><init>(Lcom/google/protobuf/BinaryReader$1;)V

    .line 69
    iput-boolean p2, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->bufferIsImmutable:Z

    .line 70
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->buffer:[B

    .line 71
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    iput v0, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->initialPos:I

    .line 72
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->limit:I

    .line 73
    return-void
.end method

.method private isAtEnd()Z
    .locals 2

    .prologue
    .line 76
    iget v0, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    iget v1, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->limit:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private readByte()B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1545
    iget v0, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    iget v1, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->limit:I

    if-ne v0, v1, :cond_0

    .line 1546
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 1548
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->buffer:[B

    iget v1, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    aget-byte v0, v0, v1

    return v0
.end method

.method private readField(Lcom/google/protobuf/WireFormat$FieldType;Ljava/lang/Class;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .locals 2
    .param p1, "fieldType"    # Lcom/google/protobuf/WireFormat$FieldType;
    .param p3, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/WireFormat$FieldType;",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1386
    .local p2, "messageType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Lcom/google/protobuf/BinaryReader$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    invoke-virtual {p1}, Lcom/google/protobuf/WireFormat$FieldType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1422
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "unsupported field type."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1388
    :pswitch_0
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readBool()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1420
    :goto_0
    return-object v0

    .line 1390
    :pswitch_1
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    goto :goto_0

    .line 1392
    :pswitch_2
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0

    .line 1394
    :pswitch_3
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readEnum()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 1396
    :pswitch_4
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readFixed32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 1398
    :pswitch_5
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readFixed64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 1400
    :pswitch_6
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readFloat()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0

    .line 1402
    :pswitch_7
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 1404
    :pswitch_8
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readInt64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 1406
    :pswitch_9
    invoke-virtual {p0, p2, p3}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readMessage(Ljava/lang/Class;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 1408
    :pswitch_a
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readSFixed32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 1410
    :pswitch_b
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readSFixed64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 1412
    :pswitch_c
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readSInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 1414
    :pswitch_d
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readSInt64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 1416
    :pswitch_e
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1418
    :pswitch_f
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readUInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 1420
    :pswitch_10
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readUInt64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto/16 :goto_0

    .line 1386
    nop

    :pswitch_data_0
    .packed-switch 0x1
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
    .end packed-switch
.end method

.method private readGroup(Lcom/google/protobuf/Schema;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .locals 4
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/Schema",
            "<TT;>;",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 243
    .local p1, "schema":Lcom/google/protobuf/Schema;, "Lcom/google/protobuf/Schema<TT;>;"
    iget v1, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->endGroupTag:I

    .line 244
    .local v1, "prevEndGroupTag":I
    iget v2, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    .line 245
    invoke-static {v2}, Lcom/google/protobuf/BinaryProtocolUtil;->getFieldNumber(I)I

    move-result v2

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lcom/google/protobuf/BinaryProtocolUtil;->tagFor(IB)I

    move-result v2

    iput v2, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->endGroupTag:I

    .line 249
    :try_start_0
    invoke-interface {p1}, Lcom/google/protobuf/Schema;->newInstance()Ljava/lang/Object;

    move-result-object v0

    .line 250
    .local v0, "message":Ljava/lang/Object;, "TT;"
    invoke-interface {p1, v0, p0, p2}, Lcom/google/protobuf/Schema;->mergeFrom(Ljava/lang/Object;Lcom/google/protobuf/Reader;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 252
    iget v2, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    iget v3, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->endGroupTag:I

    if-eq v2, v3, :cond_0

    .line 253
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->parseFailure()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v2

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 258
    .end local v0    # "message":Ljava/lang/Object;, "TT;"
    :catchall_0
    move-exception v2

    iput v1, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->endGroupTag:I

    throw v2

    .restart local v0    # "message":Ljava/lang/Object;, "TT;"
    :cond_0
    iput v1, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->endGroupTag:I

    .line 255
    return-object v0
.end method

.method private readLittleEndian32()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1552
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->requireBytes(I)V

    .line 1553
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readLittleEndian32_NoCheck()I

    move-result v0

    return v0
.end method

.method private readLittleEndian32_NoCheck()I
    .locals 4

    .prologue
    .line 1562
    iget v1, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 1563
    .local v1, "p":I
    iget-object v0, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->buffer:[B

    .line 1564
    .local v0, "buffer":[B
    add-int/lit8 v2, v1, 0x4

    iput v2, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 1565
    aget-byte v2, v0, v1

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v3, v1, 0x1

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v3, v1, 0x2

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    add-int/lit8 v3, v1, 0x3

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    or-int/2addr v2, v3

    return v2
.end method

.method private readLittleEndian64()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1557
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->requireBytes(I)V

    .line 1558
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readLittleEndian64_NoCheck()J

    move-result-wide v0

    return-wide v0
.end method

.method private readLittleEndian64_NoCheck()J
    .locals 10

    .prologue
    const-wide/16 v8, 0xff

    .line 1572
    iget v1, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 1573
    .local v1, "p":I
    iget-object v0, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->buffer:[B

    .line 1574
    .local v0, "buffer":[B
    add-int/lit8 v2, v1, 0x8

    iput v2, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 1575
    aget-byte v2, v0, v1

    int-to-long v2, v2

    and-long/2addr v2, v8

    add-int/lit8 v4, v1, 0x1

    aget-byte v4, v0, v4

    int-to-long v4, v4

    and-long/2addr v4, v8

    const/16 v6, 0x8

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    add-int/lit8 v4, v1, 0x2

    aget-byte v4, v0, v4

    int-to-long v4, v4

    and-long/2addr v4, v8

    const/16 v6, 0x10

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    add-int/lit8 v4, v1, 0x3

    aget-byte v4, v0, v4

    int-to-long v4, v4

    and-long/2addr v4, v8

    const/16 v6, 0x18

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    add-int/lit8 v4, v1, 0x4

    aget-byte v4, v0, v4

    int-to-long v4, v4

    and-long/2addr v4, v8

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    add-int/lit8 v4, v1, 0x5

    aget-byte v4, v0, v4

    int-to-long v4, v4

    and-long/2addr v4, v8

    const/16 v6, 0x28

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    add-int/lit8 v4, v1, 0x6

    aget-byte v4, v0, v4

    int-to-long v4, v4

    and-long/2addr v4, v8

    const/16 v6, 0x30

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    add-int/lit8 v4, v1, 0x7

    aget-byte v4, v0, v4

    int-to-long v4, v4

    and-long/2addr v4, v8

    const/16 v6, 0x38

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    return-wide v2
.end method

.method private readMessage(Lcom/google/protobuf/Schema;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .locals 5
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/Schema",
            "<TT;>;",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 211
    .local p1, "schema":Lcom/google/protobuf/Schema;, "Lcom/google/protobuf/Schema<TT;>;"
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v3

    .line 212
    .local v3, "size":I
    invoke-direct {p0, v3}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->requireBytes(I)V

    .line 215
    iget v2, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->limit:I

    .line 216
    .local v2, "prevLimit":I
    iget v4, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int v1, v4, v3

    .line 217
    .local v1, "newLimit":I
    iput v1, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->limit:I

    .line 221
    :try_start_0
    invoke-interface {p1}, Lcom/google/protobuf/Schema;->newInstance()Ljava/lang/Object;

    move-result-object v0

    .line 222
    .local v0, "message":Ljava/lang/Object;, "TT;"
    invoke-interface {p1, v0, p0, p2}, Lcom/google/protobuf/Schema;->mergeFrom(Ljava/lang/Object;Lcom/google/protobuf/Reader;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 224
    iget v4, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-eq v4, v1, :cond_0

    .line 225
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->parseFailure()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 230
    .end local v0    # "message":Ljava/lang/Object;, "TT;"
    :catchall_0
    move-exception v4

    iput v2, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->limit:I

    throw v4

    .restart local v0    # "message":Ljava/lang/Object;, "TT;"
    :cond_0
    iput v2, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->limit:I

    .line 227
    return-object v0
.end method

.method private readVarint32()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1429
    iget v0, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 1431
    .local v0, "i":I
    iget v4, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->limit:I

    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ne v4, v5, :cond_0

    .line 1432
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    throw v4

    .line 1436
    :cond_0
    iget-object v4, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->buffer:[B

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    aget-byte v2, v4, v0

    .local v2, "x":I
    if-ltz v2, :cond_1

    .line 1437
    iput v1, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    move v0, v1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    move v4, v2

    .line 1461
    :goto_0
    return v4

    .line 1439
    .end local v0    # "i":I
    .restart local v1    # "i":I
    :cond_1
    iget v4, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->limit:I

    sub-int/2addr v4, v1

    const/16 v5, 0x9

    if-ge v4, v5, :cond_2

    .line 1440
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint64SlowPath()J

    move-result-wide v4

    long-to-int v4, v4

    move v0, v1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto :goto_0

    .line 1441
    .end local v0    # "i":I
    .restart local v1    # "i":I
    :cond_2
    iget-object v4, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->buffer:[B

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    aget-byte v4, v4, v1

    shl-int/lit8 v4, v4, 0x7

    xor-int/2addr v2, v4

    if-gez v2, :cond_4

    .line 1442
    xor-int/lit8 v2, v2, -0x80

    .line 1460
    :cond_3
    :goto_1
    iput v0, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    move v4, v2

    .line 1461
    goto :goto_0

    .line 1443
    :cond_4
    iget-object v4, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->buffer:[B

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    aget-byte v4, v4, v0

    shl-int/lit8 v4, v4, 0xe

    xor-int/2addr v2, v4

    if-ltz v2, :cond_5

    .line 1444
    xor-int/lit16 v2, v2, 0x3f80

    move v0, v1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto :goto_1

    .line 1445
    .end local v0    # "i":I
    .restart local v1    # "i":I
    :cond_5
    iget-object v4, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->buffer:[B

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    aget-byte v4, v4, v1

    shl-int/lit8 v4, v4, 0x15

    xor-int/2addr v2, v4

    if-gez v2, :cond_6

    .line 1446
    const v4, -0x1fc080

    xor-int/2addr v2, v4

    goto :goto_1

    .line 1448
    :cond_6
    iget-object v4, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->buffer:[B

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    aget-byte v3, v4, v0

    .line 1449
    .local v3, "y":I
    shl-int/lit8 v4, v3, 0x1c

    xor-int/2addr v2, v4

    .line 1450
    const v4, 0xfe03f80

    xor-int/2addr v2, v4

    .line 1451
    if-gez v3, :cond_7

    iget-object v4, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->buffer:[B

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    aget-byte v4, v4, v1

    if-gez v4, :cond_3

    iget-object v4, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->buffer:[B

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    aget-byte v4, v4, v0

    if-gez v4, :cond_7

    iget-object v4, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->buffer:[B

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    aget-byte v4, v4, v1

    if-gez v4, :cond_3

    iget-object v4, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->buffer:[B

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    aget-byte v4, v4, v0

    if-gez v4, :cond_7

    iget-object v4, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->buffer:[B

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    aget-byte v4, v4, v1

    if-gez v4, :cond_3

    .line 1457
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->malformedVarint()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    throw v4

    .end local v0    # "i":I
    .restart local v1    # "i":I
    :cond_7
    move v0, v1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto :goto_1
.end method

.method private readVarint64SlowPath()J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1533
    const-wide/16 v2, 0x0

    .line 1534
    .local v2, "result":J
    const/4 v1, 0x0

    .local v1, "shift":I
    :goto_0
    const/16 v4, 0x40

    if-ge v1, v4, :cond_1

    .line 1535
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readByte()B

    move-result v0

    .line 1536
    .local v0, "b":B
    and-int/lit8 v4, v0, 0x7f

    int-to-long v4, v4

    shl-long/2addr v4, v1

    or-long/2addr v2, v4

    .line 1537
    and-int/lit16 v4, v0, 0x80

    if-nez v4, :cond_0

    .line 1538
    return-wide v2

    .line 1534
    :cond_0
    add-int/lit8 v1, v1, 0x7

    goto :goto_0

    .line 1541
    .end local v0    # "b":B
    :cond_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->malformedVarint()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    throw v4
.end method

.method private requireBytes(I)V
    .locals 2
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1630
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->limit:I

    iget v1, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    sub-int/2addr v0, v1

    if-le p1, v0, :cond_1

    .line 1631
    :cond_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 1633
    :cond_1
    return-void
.end method

.method private requireWireType(I)V
    .locals 1
    .param p1, "requiredWireType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1636
    iget v0, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v0}, Lcom/google/protobuf/BinaryProtocolUtil;->getWireType(I)I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 1637
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0

    .line 1639
    :cond_0
    return-void
.end method

.method private skipBytes(I)V
    .locals 1
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1609
    invoke-direct {p0, p1}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->requireBytes(I)V

    .line 1611
    iget v0, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 1612
    return-void
.end method

.method private skipGroup()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1615
    iget v0, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->endGroupTag:I

    .line 1616
    .local v0, "prevEndGroupTag":I
    iget v1, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    .line 1617
    invoke-static {v1}, Lcom/google/protobuf/BinaryProtocolUtil;->getFieldNumber(I)I

    move-result v1

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/google/protobuf/BinaryProtocolUtil;->tagFor(IB)I

    move-result v1

    iput v1, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->endGroupTag:I

    .line 1619
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->getFieldNumber()I

    move-result v1

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->skipField()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1623
    :cond_1
    iget v1, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    iget v2, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->endGroupTag:I

    if-eq v1, v2, :cond_2

    .line 1624
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->parseFailure()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 1626
    :cond_2
    iput v0, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->endGroupTag:I

    .line 1627
    return-void
.end method

.method private skipVarint()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v6, 0xa

    .line 1586
    iget v4, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->limit:I

    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    sub-int/2addr v4, v5

    if-lt v4, v6, :cond_1

    .line 1587
    iget-object v0, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->buffer:[B

    .line 1588
    .local v0, "buffer":[B
    iget v2, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 1589
    .local v2, "p":I
    const/4 v1, 0x0

    .local v1, "i":I
    move v3, v2

    .end local v2    # "p":I
    .local v3, "p":I
    :goto_0
    if-ge v1, v6, :cond_1

    .line 1590
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "p":I
    .restart local v2    # "p":I
    aget-byte v4, v0, v3

    if-ltz v4, :cond_0

    .line 1591
    iput v2, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 1597
    .end local v0    # "buffer":[B
    .end local v1    # "i":I
    .end local v2    # "p":I
    :goto_1
    return-void

    .line 1589
    .restart local v0    # "buffer":[B
    .restart local v1    # "i":I
    .restart local v2    # "p":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    move v3, v2

    .end local v2    # "p":I
    .restart local v3    # "p":I
    goto :goto_0

    .line 1596
    .end local v0    # "buffer":[B
    .end local v1    # "i":I
    .end local v3    # "p":I
    :cond_1
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->skipVarintSlowPath()V

    goto :goto_1
.end method

.method private skipVarintSlowPath()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1600
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    .line 1601
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readByte()B

    move-result v1

    if-ltz v1, :cond_0

    .line 1602
    return-void

    .line 1600
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1605
    :cond_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->malformedVarint()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1
.end method

.method private verifyPackedFixed32Length(I)V
    .locals 1
    .param p1, "bytes"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1650
    invoke-direct {p0, p1}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->requireBytes(I)V

    .line 1651
    and-int/lit8 v0, p1, 0x3

    if-eqz v0, :cond_0

    .line 1653
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->parseFailure()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 1655
    :cond_0
    return-void
.end method

.method private verifyPackedFixed64Length(I)V
    .locals 1
    .param p1, "bytes"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1642
    invoke-direct {p0, p1}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->requireBytes(I)V

    .line 1643
    and-int/lit8 v0, p1, 0x7

    if-eqz v0, :cond_0

    .line 1645
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->parseFailure()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 1647
    :cond_0
    return-void
.end method


# virtual methods
.method public getFieldNumber()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const v0, 0x7fffffff

    .line 86
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 93
    :cond_0
    :goto_0
    return v0

    .line 89
    :cond_1
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v1

    iput v1, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    .line 90
    iget v1, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    iget v2, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->endGroupTag:I

    if-eq v1, v2, :cond_0

    .line 93
    iget v0, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v0}, Lcom/google/protobuf/BinaryProtocolUtil;->getFieldNumber(I)I

    move-result v0

    goto :goto_0
.end method

.method public getTag()I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    return v0
.end method

.method public getTotalBytesRead()I
    .locals 2

    .prologue
    .line 81
    iget v0, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    iget v1, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->initialPos:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public readBool()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 172
    invoke-direct {p0, v0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->requireWireType(I)V

    .line 173
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public readBoolList(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 759
    instance-of v5, p1, Lcom/google/protobuf/BooleanArrayList;

    if-eqz v5, :cond_4

    move-object v3, p1

    .line 760
    check-cast v3, Lcom/google/protobuf/BooleanArrayList;

    .line 761
    .local v3, "plist":Lcom/google/protobuf/BooleanArrayList;
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v5}, Lcom/google/protobuf/BinaryProtocolUtil;->getWireType(I)I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 786
    :pswitch_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v5

    throw v5

    .line 763
    :pswitch_1
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    .line 764
    .local v0, "bytes":I
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int v1, v5, v0

    .line 765
    .local v1, "fieldEndPos":I
    :goto_0
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v5, v1, :cond_2

    .line 766
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v5

    if-eqz v5, :cond_0

    move v5, v6

    :goto_1
    invoke-virtual {v3, v5}, Lcom/google/protobuf/BooleanArrayList;->addBoolean(Z)V

    goto :goto_0

    :cond_0
    move v5, v7

    goto :goto_1

    .line 771
    .end local v0    # "bytes":I
    .end local v1    # "fieldEndPos":I
    :cond_1
    :pswitch_2
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readBool()Z

    move-result v5

    invoke-virtual {v3, v5}, Lcom/google/protobuf/BooleanArrayList;->addBoolean(Z)V

    .line 773
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 817
    .end local v3    # "plist":Lcom/google/protobuf/BooleanArrayList;
    :cond_2
    :goto_2
    return-void

    .line 776
    .restart local v3    # "plist":Lcom/google/protobuf/BooleanArrayList;
    :cond_3
    iget v4, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 777
    .local v4, "prevPos":I
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v2

    .line 778
    .local v2, "nextTag":I
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v2, v5, :cond_1

    .line 781
    iput v4, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    goto :goto_2

    .line 789
    .end local v2    # "nextTag":I
    .end local v3    # "plist":Lcom/google/protobuf/BooleanArrayList;
    .end local v4    # "prevPos":I
    :cond_4
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v5}, Lcom/google/protobuf/BinaryProtocolUtil;->getWireType(I)I

    move-result v5

    packed-switch v5, :pswitch_data_1

    .line 814
    :pswitch_3
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v5

    throw v5

    .line 791
    :pswitch_4
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    .line 792
    .restart local v0    # "bytes":I
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int v1, v5, v0

    .line 793
    .restart local v1    # "fieldEndPos":I
    :goto_3
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v5, v1, :cond_2

    .line 794
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v5

    if-eqz v5, :cond_5

    move v5, v6

    :goto_4
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    move v5, v7

    goto :goto_4

    .line 799
    .end local v0    # "bytes":I
    .end local v1    # "fieldEndPos":I
    :cond_6
    :pswitch_5
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readBool()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 801
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v5

    if-nez v5, :cond_2

    .line 804
    iget v4, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 805
    .restart local v4    # "prevPos":I
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v2

    .line 806
    .restart local v2    # "nextTag":I
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v2, v5, :cond_6

    .line 809
    iput v4, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    goto :goto_2

    .line 761
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 789
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public readBytes()Lcom/google/protobuf/ByteString;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 264
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->requireWireType(I)V

    .line 265
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v1

    .line 266
    .local v1, "size":I
    if-nez v1, :cond_0

    .line 267
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    .line 276
    :goto_0
    return-object v0

    .line 270
    :cond_0
    invoke-direct {p0, v1}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->requireBytes(I)V

    .line 271
    iget-boolean v2, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->bufferIsImmutable:Z

    if-eqz v2, :cond_1

    .line 273
    iget-object v2, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->buffer:[B

    iget v3, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    invoke-static {v2, v3, v1}, Lcom/google/protobuf/ByteString;->wrap([BII)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 275
    .local v0, "bytes":Lcom/google/protobuf/ByteString;
    :goto_1
    iget v2, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    goto :goto_0

    .line 274
    .end local v0    # "bytes":Lcom/google/protobuf/ByteString;
    :cond_1
    iget-object v2, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->buffer:[B

    iget v3, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    invoke-static {v2, v3, v1}, Lcom/google/protobuf/ByteString;->copyFrom([BII)Lcom/google/protobuf/ByteString;

    move-result-object v0

    goto :goto_1
.end method

.method public readBytesList(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/protobuf/ByteString;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 927
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Lcom/google/protobuf/ByteString;>;"
    iget v2, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v2}, Lcom/google/protobuf/BinaryProtocolUtil;->getWireType(I)I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 928
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v2

    throw v2

    .line 932
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 934
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 943
    :goto_0
    return-void

    .line 937
    :cond_1
    iget v1, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 938
    .local v1, "prevPos":I
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    .line 939
    .local v0, "nextTag":I
    iget v2, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v0, v2, :cond_0

    .line 942
    iput v1, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    goto :goto_0
.end method

.method public readDouble()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 130
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->requireWireType(I)V

    .line 131
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readLittleEndian64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public readDoubleList(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 317
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    instance-of v5, p1, Lcom/google/protobuf/DoubleArrayList;

    if-eqz v5, :cond_3

    move-object v3, p1

    .line 318
    check-cast v3, Lcom/google/protobuf/DoubleArrayList;

    .line 319
    .local v3, "plist":Lcom/google/protobuf/DoubleArrayList;
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v5}, Lcom/google/protobuf/BinaryProtocolUtil;->getWireType(I)I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 345
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v5

    throw v5

    .line 321
    :pswitch_0
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    .line 322
    .local v0, "bytes":I
    invoke-direct {p0, v0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->verifyPackedFixed64Length(I)V

    .line 323
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int v1, v5, v0

    .line 324
    .local v1, "fieldEndPos":I
    :goto_0
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v5, v1, :cond_1

    .line 325
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readLittleEndian64_NoCheck()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Lcom/google/protobuf/DoubleArrayList;->addDouble(D)V

    goto :goto_0

    .line 330
    .end local v0    # "bytes":I
    .end local v1    # "fieldEndPos":I
    :cond_0
    :pswitch_1
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readDouble()D

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Lcom/google/protobuf/DoubleArrayList;->addDouble(D)V

    .line 332
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 377
    .end local v3    # "plist":Lcom/google/protobuf/DoubleArrayList;
    :cond_1
    :goto_1
    return-void

    .line 335
    .restart local v3    # "plist":Lcom/google/protobuf/DoubleArrayList;
    :cond_2
    iget v4, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 336
    .local v4, "prevPos":I
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v2

    .line 337
    .local v2, "nextTag":I
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v2, v5, :cond_0

    .line 340
    iput v4, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    goto :goto_1

    .line 348
    .end local v2    # "nextTag":I
    .end local v3    # "plist":Lcom/google/protobuf/DoubleArrayList;
    .end local v4    # "prevPos":I
    :cond_3
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v5}, Lcom/google/protobuf/BinaryProtocolUtil;->getWireType(I)I

    move-result v5

    packed-switch v5, :pswitch_data_1

    .line 374
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v5

    throw v5

    .line 350
    :pswitch_2
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    .line 351
    .restart local v0    # "bytes":I
    invoke-direct {p0, v0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->verifyPackedFixed64Length(I)V

    .line 352
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int v1, v5, v0

    .line 353
    .restart local v1    # "fieldEndPos":I
    :goto_2
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v5, v1, :cond_1

    .line 354
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readLittleEndian64_NoCheck()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 359
    .end local v0    # "bytes":I
    .end local v1    # "fieldEndPos":I
    :cond_4
    :pswitch_3
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readDouble()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 361
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v5

    if-nez v5, :cond_1

    .line 364
    iget v4, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 365
    .restart local v4    # "prevPos":I
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v2

    .line 366
    .restart local v2    # "nextTag":I
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v2, v5, :cond_4

    .line 369
    iput v4, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    goto :goto_1

    .line 319
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 348
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public readEnum()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 287
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->requireWireType(I)V

    .line 288
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    return v0
.end method

.method public readEnumList(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1012
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    instance-of v5, p1, Lcom/google/protobuf/IntArrayList;

    if-eqz v5, :cond_3

    move-object v3, p1

    .line 1013
    check-cast v3, Lcom/google/protobuf/IntArrayList;

    .line 1014
    .local v3, "plist":Lcom/google/protobuf/IntArrayList;
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v5}, Lcom/google/protobuf/BinaryProtocolUtil;->getWireType(I)I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 1039
    :pswitch_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v5

    throw v5

    .line 1016
    :pswitch_1
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    .line 1017
    .local v0, "bytes":I
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int v1, v5, v0

    .line 1018
    .local v1, "fieldEndPos":I
    :goto_0
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v5, v1, :cond_1

    .line 1019
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/google/protobuf/IntArrayList;->addInt(I)V

    goto :goto_0

    .line 1024
    .end local v0    # "bytes":I
    .end local v1    # "fieldEndPos":I
    :cond_0
    :pswitch_2
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readEnum()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/google/protobuf/IntArrayList;->addInt(I)V

    .line 1026
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1070
    .end local v3    # "plist":Lcom/google/protobuf/IntArrayList;
    :cond_1
    :goto_1
    return-void

    .line 1029
    .restart local v3    # "plist":Lcom/google/protobuf/IntArrayList;
    :cond_2
    iget v4, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 1030
    .local v4, "prevPos":I
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v2

    .line 1031
    .local v2, "nextTag":I
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v2, v5, :cond_0

    .line 1034
    iput v4, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    goto :goto_1

    .line 1042
    .end local v2    # "nextTag":I
    .end local v3    # "plist":Lcom/google/protobuf/IntArrayList;
    .end local v4    # "prevPos":I
    :cond_3
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v5}, Lcom/google/protobuf/BinaryProtocolUtil;->getWireType(I)I

    move-result v5

    packed-switch v5, :pswitch_data_1

    .line 1067
    :pswitch_3
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v5

    throw v5

    .line 1044
    :pswitch_4
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    .line 1045
    .restart local v0    # "bytes":I
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int v1, v5, v0

    .line 1046
    .restart local v1    # "fieldEndPos":I
    :goto_2
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v5, v1, :cond_1

    .line 1047
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1052
    .end local v0    # "bytes":I
    .end local v1    # "fieldEndPos":I
    :cond_4
    :pswitch_5
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readEnum()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1054
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1057
    iget v4, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 1058
    .restart local v4    # "prevPos":I
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v2

    .line 1059
    .restart local v2    # "nextTag":I
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v2, v5, :cond_4

    .line 1062
    iput v4, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    goto :goto_1

    .line 1014
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 1042
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public readFixed32()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 166
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->requireWireType(I)V

    .line 167
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readLittleEndian32()I

    move-result v0

    return v0
.end method

.method public readFixed32List(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 695
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    instance-of v5, p1, Lcom/google/protobuf/IntArrayList;

    if-eqz v5, :cond_3

    move-object v3, p1

    .line 696
    check-cast v3, Lcom/google/protobuf/IntArrayList;

    .line 697
    .local v3, "plist":Lcom/google/protobuf/IntArrayList;
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v5}, Lcom/google/protobuf/BinaryProtocolUtil;->getWireType(I)I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 723
    :pswitch_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v5

    throw v5

    .line 699
    :pswitch_1
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    .line 700
    .local v0, "bytes":I
    invoke-direct {p0, v0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->verifyPackedFixed32Length(I)V

    .line 701
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int v1, v5, v0

    .line 702
    .local v1, "fieldEndPos":I
    :goto_0
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v5, v1, :cond_1

    .line 703
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readLittleEndian32_NoCheck()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/google/protobuf/IntArrayList;->addInt(I)V

    goto :goto_0

    .line 708
    .end local v0    # "bytes":I
    .end local v1    # "fieldEndPos":I
    :cond_0
    :pswitch_2
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readFixed32()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/google/protobuf/IntArrayList;->addInt(I)V

    .line 710
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 755
    .end local v3    # "plist":Lcom/google/protobuf/IntArrayList;
    :cond_1
    :goto_1
    return-void

    .line 713
    .restart local v3    # "plist":Lcom/google/protobuf/IntArrayList;
    :cond_2
    iget v4, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 714
    .local v4, "prevPos":I
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v2

    .line 715
    .local v2, "nextTag":I
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v2, v5, :cond_0

    .line 718
    iput v4, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    goto :goto_1

    .line 726
    .end local v2    # "nextTag":I
    .end local v3    # "plist":Lcom/google/protobuf/IntArrayList;
    .end local v4    # "prevPos":I
    :cond_3
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v5}, Lcom/google/protobuf/BinaryProtocolUtil;->getWireType(I)I

    move-result v5

    packed-switch v5, :pswitch_data_1

    .line 752
    :pswitch_3
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v5

    throw v5

    .line 728
    :pswitch_4
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    .line 729
    .restart local v0    # "bytes":I
    invoke-direct {p0, v0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->verifyPackedFixed32Length(I)V

    .line 730
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int v1, v5, v0

    .line 731
    .restart local v1    # "fieldEndPos":I
    :goto_2
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v5, v1, :cond_1

    .line 732
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readLittleEndian32_NoCheck()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 737
    .end local v0    # "bytes":I
    .end local v1    # "fieldEndPos":I
    :cond_4
    :pswitch_5
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readFixed32()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 739
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v5

    if-nez v5, :cond_1

    .line 742
    iget v4, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 743
    .restart local v4    # "prevPos":I
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v2

    .line 744
    .restart local v2    # "nextTag":I
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v2, v5, :cond_4

    .line 747
    iput v4, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    goto :goto_1

    .line 697
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 726
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method public readFixed64()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 160
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->requireWireType(I)V

    .line 161
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readLittleEndian64()J

    move-result-wide v0

    return-wide v0
.end method

.method public readFixed64List(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 631
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    instance-of v5, p1, Lcom/google/protobuf/LongArrayList;

    if-eqz v5, :cond_3

    move-object v3, p1

    .line 632
    check-cast v3, Lcom/google/protobuf/LongArrayList;

    .line 633
    .local v3, "plist":Lcom/google/protobuf/LongArrayList;
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v5}, Lcom/google/protobuf/BinaryProtocolUtil;->getWireType(I)I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 659
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v5

    throw v5

    .line 635
    :pswitch_0
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    .line 636
    .local v0, "bytes":I
    invoke-direct {p0, v0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->verifyPackedFixed64Length(I)V

    .line 637
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int v1, v5, v0

    .line 638
    .local v1, "fieldEndPos":I
    :goto_0
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v5, v1, :cond_1

    .line 639
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readLittleEndian64_NoCheck()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Lcom/google/protobuf/LongArrayList;->addLong(J)V

    goto :goto_0

    .line 644
    .end local v0    # "bytes":I
    .end local v1    # "fieldEndPos":I
    :cond_0
    :pswitch_1
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readFixed64()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Lcom/google/protobuf/LongArrayList;->addLong(J)V

    .line 646
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 691
    .end local v3    # "plist":Lcom/google/protobuf/LongArrayList;
    :cond_1
    :goto_1
    return-void

    .line 649
    .restart local v3    # "plist":Lcom/google/protobuf/LongArrayList;
    :cond_2
    iget v4, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 650
    .local v4, "prevPos":I
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v2

    .line 651
    .local v2, "nextTag":I
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v2, v5, :cond_0

    .line 654
    iput v4, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    goto :goto_1

    .line 662
    .end local v2    # "nextTag":I
    .end local v3    # "plist":Lcom/google/protobuf/LongArrayList;
    .end local v4    # "prevPos":I
    :cond_3
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v5}, Lcom/google/protobuf/BinaryProtocolUtil;->getWireType(I)I

    move-result v5

    packed-switch v5, :pswitch_data_1

    .line 688
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v5

    throw v5

    .line 664
    :pswitch_2
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    .line 665
    .restart local v0    # "bytes":I
    invoke-direct {p0, v0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->verifyPackedFixed64Length(I)V

    .line 666
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int v1, v5, v0

    .line 667
    .restart local v1    # "fieldEndPos":I
    :goto_2
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v5, v1, :cond_1

    .line 668
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readLittleEndian64_NoCheck()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 673
    .end local v0    # "bytes":I
    .end local v1    # "fieldEndPos":I
    :cond_4
    :pswitch_3
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readFixed64()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 675
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v5

    if-nez v5, :cond_1

    .line 678
    iget v4, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 679
    .restart local v4    # "prevPos":I
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v2

    .line 680
    .restart local v2    # "nextTag":I
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v2, v5, :cond_4

    .line 683
    iput v4, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    goto :goto_1

    .line 633
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 662
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public readFloat()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 136
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->requireWireType(I)V

    .line 137
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readLittleEndian32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public readFloatList(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 381
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    instance-of v5, p1, Lcom/google/protobuf/FloatArrayList;

    if-eqz v5, :cond_3

    move-object v3, p1

    .line 382
    check-cast v3, Lcom/google/protobuf/FloatArrayList;

    .line 383
    .local v3, "plist":Lcom/google/protobuf/FloatArrayList;
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v5}, Lcom/google/protobuf/BinaryProtocolUtil;->getWireType(I)I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 409
    :pswitch_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v5

    throw v5

    .line 385
    :pswitch_1
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    .line 386
    .local v0, "bytes":I
    invoke-direct {p0, v0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->verifyPackedFixed32Length(I)V

    .line 387
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int v1, v5, v0

    .line 388
    .local v1, "fieldEndPos":I
    :goto_0
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v5, v1, :cond_1

    .line 389
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readLittleEndian32_NoCheck()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v5

    invoke-virtual {v3, v5}, Lcom/google/protobuf/FloatArrayList;->addFloat(F)V

    goto :goto_0

    .line 394
    .end local v0    # "bytes":I
    .end local v1    # "fieldEndPos":I
    :cond_0
    :pswitch_2
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readFloat()F

    move-result v5

    invoke-virtual {v3, v5}, Lcom/google/protobuf/FloatArrayList;->addFloat(F)V

    .line 396
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 441
    .end local v3    # "plist":Lcom/google/protobuf/FloatArrayList;
    :cond_1
    :goto_1
    return-void

    .line 399
    .restart local v3    # "plist":Lcom/google/protobuf/FloatArrayList;
    :cond_2
    iget v4, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 400
    .local v4, "prevPos":I
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v2

    .line 401
    .local v2, "nextTag":I
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v2, v5, :cond_0

    .line 404
    iput v4, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    goto :goto_1

    .line 412
    .end local v2    # "nextTag":I
    .end local v3    # "plist":Lcom/google/protobuf/FloatArrayList;
    .end local v4    # "prevPos":I
    :cond_3
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v5}, Lcom/google/protobuf/BinaryProtocolUtil;->getWireType(I)I

    move-result v5

    packed-switch v5, :pswitch_data_1

    .line 438
    :pswitch_3
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v5

    throw v5

    .line 414
    :pswitch_4
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    .line 415
    .restart local v0    # "bytes":I
    invoke-direct {p0, v0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->verifyPackedFixed32Length(I)V

    .line 416
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int v1, v5, v0

    .line 417
    .restart local v1    # "fieldEndPos":I
    :goto_2
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v5, v1, :cond_1

    .line 418
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readLittleEndian32_NoCheck()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 423
    .end local v0    # "bytes":I
    .end local v1    # "fieldEndPos":I
    :cond_4
    :pswitch_5
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readFloat()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 425
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v5

    if-nez v5, :cond_1

    .line 428
    iget v4, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 429
    .restart local v4    # "prevPos":I
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v2

    .line 430
    .restart local v2    # "nextTag":I
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v2, v5, :cond_4

    .line 433
    iput v4, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    goto :goto_1

    .line 383
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 412
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method public readGroup(Ljava/lang/Class;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .locals 1
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 237
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->requireWireType(I)V

    .line 238
    invoke-static {}, Lcom/google/protobuf/Protobuf;->getInstance()Lcom/google/protobuf/Protobuf;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Protobuf;->schemaFor(Ljava/lang/Class;)Lcom/google/protobuf/Schema;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readGroup(Lcom/google/protobuf/Schema;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readGroupList(Ljava/util/List;Ljava/lang/Class;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 6
    .param p3, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;",
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
    .line 902
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p2, "targetType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget v4, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v4}, Lcom/google/protobuf/BinaryProtocolUtil;->getWireType(I)I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_0

    .line 903
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v4

    throw v4

    .line 906
    :cond_0
    invoke-static {}, Lcom/google/protobuf/Protobuf;->getInstance()Lcom/google/protobuf/Protobuf;

    move-result-object v4

    invoke-virtual {v4, p2}, Lcom/google/protobuf/Protobuf;->schemaFor(Ljava/lang/Class;)Lcom/google/protobuf/Schema;

    move-result-object v3

    .line 907
    .local v3, "schema":Lcom/google/protobuf/Schema;, "Lcom/google/protobuf/Schema<TT;>;"
    iget v0, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    .line 909
    .local v0, "listTag":I
    :cond_1
    invoke-direct {p0, v3, p3}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readGroup(Lcom/google/protobuf/Schema;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 911
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 920
    :goto_0
    return-void

    .line 914
    :cond_2
    iget v2, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 915
    .local v2, "prevPos":I
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v1

    .line 916
    .local v1, "nextTag":I
    if-eq v1, v0, :cond_1

    .line 919
    iput v2, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    goto :goto_0
.end method

.method public readInt32()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 154
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->requireWireType(I)V

    .line 155
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    return v0
.end method

.method public readInt32List(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 569
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    instance-of v5, p1, Lcom/google/protobuf/IntArrayList;

    if-eqz v5, :cond_3

    move-object v3, p1

    .line 570
    check-cast v3, Lcom/google/protobuf/IntArrayList;

    .line 571
    .local v3, "plist":Lcom/google/protobuf/IntArrayList;
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v5}, Lcom/google/protobuf/BinaryProtocolUtil;->getWireType(I)I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 596
    :pswitch_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v5

    throw v5

    .line 573
    :pswitch_1
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    .line 574
    .local v0, "bytes":I
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int v1, v5, v0

    .line 575
    .local v1, "fieldEndPos":I
    :goto_0
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v5, v1, :cond_1

    .line 576
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/google/protobuf/IntArrayList;->addInt(I)V

    goto :goto_0

    .line 581
    .end local v0    # "bytes":I
    .end local v1    # "fieldEndPos":I
    :cond_0
    :pswitch_2
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readInt32()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/google/protobuf/IntArrayList;->addInt(I)V

    .line 583
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 627
    .end local v3    # "plist":Lcom/google/protobuf/IntArrayList;
    :cond_1
    :goto_1
    return-void

    .line 586
    .restart local v3    # "plist":Lcom/google/protobuf/IntArrayList;
    :cond_2
    iget v4, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 587
    .local v4, "prevPos":I
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v2

    .line 588
    .local v2, "nextTag":I
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v2, v5, :cond_0

    .line 591
    iput v4, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    goto :goto_1

    .line 599
    .end local v2    # "nextTag":I
    .end local v3    # "plist":Lcom/google/protobuf/IntArrayList;
    .end local v4    # "prevPos":I
    :cond_3
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v5}, Lcom/google/protobuf/BinaryProtocolUtil;->getWireType(I)I

    move-result v5

    packed-switch v5, :pswitch_data_1

    .line 624
    :pswitch_3
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v5

    throw v5

    .line 601
    :pswitch_4
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    .line 602
    .restart local v0    # "bytes":I
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int v1, v5, v0

    .line 603
    .restart local v1    # "fieldEndPos":I
    :goto_2
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v5, v1, :cond_1

    .line 604
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 609
    .end local v0    # "bytes":I
    .end local v1    # "fieldEndPos":I
    :cond_4
    :pswitch_5
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readInt32()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 611
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v5

    if-nez v5, :cond_1

    .line 614
    iget v4, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 615
    .restart local v4    # "prevPos":I
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v2

    .line 616
    .restart local v2    # "nextTag":I
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v2, v5, :cond_4

    .line 619
    iput v4, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    goto :goto_1

    .line 571
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 599
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public readInt64()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 148
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->requireWireType(I)V

    .line 149
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint64()J

    move-result-wide v0

    return-wide v0
.end method

.method public readInt64List(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 507
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    instance-of v5, p1, Lcom/google/protobuf/LongArrayList;

    if-eqz v5, :cond_3

    move-object v3, p1

    .line 508
    check-cast v3, Lcom/google/protobuf/LongArrayList;

    .line 509
    .local v3, "plist":Lcom/google/protobuf/LongArrayList;
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v5}, Lcom/google/protobuf/BinaryProtocolUtil;->getWireType(I)I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 534
    :pswitch_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v5

    throw v5

    .line 511
    :pswitch_1
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    .line 512
    .local v0, "bytes":I
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int v1, v5, v0

    .line 513
    .local v1, "fieldEndPos":I
    :goto_0
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v5, v1, :cond_1

    .line 514
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint64()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Lcom/google/protobuf/LongArrayList;->addLong(J)V

    goto :goto_0

    .line 519
    .end local v0    # "bytes":I
    .end local v1    # "fieldEndPos":I
    :cond_0
    :pswitch_2
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readInt64()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Lcom/google/protobuf/LongArrayList;->addLong(J)V

    .line 521
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 565
    .end local v3    # "plist":Lcom/google/protobuf/LongArrayList;
    :cond_1
    :goto_1
    return-void

    .line 524
    .restart local v3    # "plist":Lcom/google/protobuf/LongArrayList;
    :cond_2
    iget v4, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 525
    .local v4, "prevPos":I
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v2

    .line 526
    .local v2, "nextTag":I
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v2, v5, :cond_0

    .line 529
    iput v4, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    goto :goto_1

    .line 537
    .end local v2    # "nextTag":I
    .end local v3    # "plist":Lcom/google/protobuf/LongArrayList;
    .end local v4    # "prevPos":I
    :cond_3
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v5}, Lcom/google/protobuf/BinaryProtocolUtil;->getWireType(I)I

    move-result v5

    packed-switch v5, :pswitch_data_1

    .line 562
    :pswitch_3
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v5

    throw v5

    .line 539
    :pswitch_4
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    .line 540
    .restart local v0    # "bytes":I
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int v1, v5, v0

    .line 541
    .restart local v1    # "fieldEndPos":I
    :goto_2
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v5, v1, :cond_1

    .line 542
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint64()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 547
    .end local v0    # "bytes":I
    .end local v1    # "fieldEndPos":I
    :cond_4
    :pswitch_5
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readInt64()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 549
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v5

    if-nez v5, :cond_1

    .line 552
    iget v4, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 553
    .restart local v4    # "prevPos":I
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v2

    .line 554
    .restart local v2    # "nextTag":I
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v2, v5, :cond_4

    .line 557
    iput v4, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    goto :goto_1

    .line 509
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 537
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public readMap(Ljava/util/Map;Lcom/google/protobuf/MapEntryLite$Metadata;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 10
    .param p3, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TK;TV;>;",
            "Lcom/google/protobuf/MapEntryLite$Metadata",
            "<TK;TV;>;",
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
    .line 1331
    .local p1, "target":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .local p2, "metadata":Lcom/google/protobuf/MapEntryLite$Metadata;, "Lcom/google/protobuf/MapEntryLite$Metadata<TK;TV;>;"
    const/4 v7, 0x2

    invoke-direct {p0, v7}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->requireWireType(I)V

    .line 1332
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v5

    .line 1333
    .local v5, "size":I
    invoke-direct {p0, v5}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->requireBytes(I)V

    .line 1336
    iget v4, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->limit:I

    .line 1337
    .local v4, "prevLimit":I
    iget v7, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int v2, v7, v5

    .line 1338
    .local v2, "newLimit":I
    iput v2, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->limit:I

    .line 1341
    :try_start_0
    iget-object v1, p2, Lcom/google/protobuf/MapEntryLite$Metadata;->defaultKey:Ljava/lang/Object;

    .line 1342
    .local v1, "key":Ljava/lang/Object;, "TK;"
    iget-object v6, p2, Lcom/google/protobuf/MapEntryLite$Metadata;->defaultValue:Ljava/lang/Object;

    .line 1344
    .local v6, "value":Ljava/lang/Object;, "TV;"
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->getFieldNumber()I

    move-result v3

    .line 1345
    .local v3, "number":I
    const v7, 0x7fffffff

    if-ne v3, v7, :cond_1

    .line 1374
    invoke-interface {p1, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1377
    iput v4, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->limit:I

    .line 1379
    return-void

    .line 1349
    :cond_1
    packed-switch v3, :pswitch_data_0

    .line 1362
    :try_start_1
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->skipField()Z

    move-result v7

    if-nez v7, :cond_0

    .line 1363
    new-instance v7, Lcom/google/protobuf/InvalidProtocolBufferException;

    const-string v8, "Unable to parse map entry."

    invoke-direct {v7, v8}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1367
    :catch_0
    move-exception v0

    .line 1369
    .local v0, "ignore":Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;
    :try_start_2
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->skipField()Z

    move-result v7

    if-nez v7, :cond_0

    .line 1370
    new-instance v7, Lcom/google/protobuf/InvalidProtocolBufferException;

    const-string v8, "Unable to parse map entry."

    invoke-direct {v7, v8}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1377
    .end local v0    # "ignore":Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;
    .end local v1    # "key":Ljava/lang/Object;, "TK;"
    .end local v3    # "number":I
    .end local v6    # "value":Ljava/lang/Object;, "TV;"
    :catchall_0
    move-exception v7

    iput v4, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->limit:I

    throw v7

    .line 1351
    .restart local v1    # "key":Ljava/lang/Object;, "TK;"
    .restart local v3    # "number":I
    .restart local v6    # "value":Ljava/lang/Object;, "TV;"
    :pswitch_0
    :try_start_3
    iget-object v7, p2, Lcom/google/protobuf/MapEntryLite$Metadata;->keyType:Lcom/google/protobuf/WireFormat$FieldType;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {p0, v7, v8, v9}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readField(Lcom/google/protobuf/WireFormat$FieldType;Ljava/lang/Class;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v1

    .line 1352
    goto :goto_0

    .line 1354
    :pswitch_1
    iget-object v7, p2, Lcom/google/protobuf/MapEntryLite$Metadata;->valueType:Lcom/google/protobuf/WireFormat$FieldType;

    iget-object v8, p2, Lcom/google/protobuf/MapEntryLite$Metadata;->defaultValue:Ljava/lang/Object;

    .line 1358
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    .line 1356
    invoke-direct {p0, v7, v8, p3}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readField(Lcom/google/protobuf/WireFormat$FieldType;Ljava/lang/Class;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    :try_end_3
    .catch Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v6

    .line 1360
    goto :goto_0

    .line 1349
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public readMessage(Ljava/lang/Class;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .locals 1
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 205
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->requireWireType(I)V

    .line 206
    invoke-static {}, Lcom/google/protobuf/Protobuf;->getInstance()Lcom/google/protobuf/Protobuf;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Protobuf;->schemaFor(Ljava/lang/Class;)Lcom/google/protobuf/Schema;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readMessage(Lcom/google/protobuf/Schema;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readMessageList(Ljava/util/List;Ljava/lang/Class;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 6
    .param p3, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;",
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
    .line 875
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p2, "targetType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget v4, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v4}, Lcom/google/protobuf/BinaryProtocolUtil;->getWireType(I)I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    .line 876
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v4

    throw v4

    .line 879
    :cond_0
    invoke-static {}, Lcom/google/protobuf/Protobuf;->getInstance()Lcom/google/protobuf/Protobuf;

    move-result-object v4

    invoke-virtual {v4, p2}, Lcom/google/protobuf/Protobuf;->schemaFor(Ljava/lang/Class;)Lcom/google/protobuf/Schema;

    move-result-object v3

    .line 880
    .local v3, "schema":Lcom/google/protobuf/Schema;, "Lcom/google/protobuf/Schema<TT;>;"
    iget v0, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    .line 882
    .local v0, "listTag":I
    :cond_1
    invoke-direct {p0, v3, p3}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readMessage(Lcom/google/protobuf/Schema;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 884
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 893
    :goto_0
    return-void

    .line 887
    :cond_2
    iget v2, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 888
    .local v2, "prevPos":I
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v1

    .line 889
    .local v1, "nextTag":I
    if-eq v1, v0, :cond_1

    .line 892
    iput v2, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    goto :goto_0
.end method

.method public readSFixed32()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 293
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->requireWireType(I)V

    .line 294
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readLittleEndian32()I

    move-result v0

    return v0
.end method

.method public readSFixed32List(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1074
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    instance-of v5, p1, Lcom/google/protobuf/IntArrayList;

    if-eqz v5, :cond_3

    move-object v3, p1

    .line 1075
    check-cast v3, Lcom/google/protobuf/IntArrayList;

    .line 1076
    .local v3, "plist":Lcom/google/protobuf/IntArrayList;
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v5}, Lcom/google/protobuf/BinaryProtocolUtil;->getWireType(I)I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 1102
    :pswitch_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v5

    throw v5

    .line 1078
    :pswitch_1
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    .line 1079
    .local v0, "bytes":I
    invoke-direct {p0, v0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->verifyPackedFixed32Length(I)V

    .line 1080
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int v1, v5, v0

    .line 1081
    .local v1, "fieldEndPos":I
    :goto_0
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v5, v1, :cond_1

    .line 1082
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readLittleEndian32_NoCheck()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/google/protobuf/IntArrayList;->addInt(I)V

    goto :goto_0

    .line 1087
    .end local v0    # "bytes":I
    .end local v1    # "fieldEndPos":I
    :cond_0
    :pswitch_2
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readSFixed32()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/google/protobuf/IntArrayList;->addInt(I)V

    .line 1089
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1134
    .end local v3    # "plist":Lcom/google/protobuf/IntArrayList;
    :cond_1
    :goto_1
    return-void

    .line 1092
    .restart local v3    # "plist":Lcom/google/protobuf/IntArrayList;
    :cond_2
    iget v4, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 1093
    .local v4, "prevPos":I
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v2

    .line 1094
    .local v2, "nextTag":I
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v2, v5, :cond_0

    .line 1097
    iput v4, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    goto :goto_1

    .line 1105
    .end local v2    # "nextTag":I
    .end local v3    # "plist":Lcom/google/protobuf/IntArrayList;
    .end local v4    # "prevPos":I
    :cond_3
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v5}, Lcom/google/protobuf/BinaryProtocolUtil;->getWireType(I)I

    move-result v5

    packed-switch v5, :pswitch_data_1

    .line 1131
    :pswitch_3
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v5

    throw v5

    .line 1107
    :pswitch_4
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    .line 1108
    .restart local v0    # "bytes":I
    invoke-direct {p0, v0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->verifyPackedFixed32Length(I)V

    .line 1109
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int v1, v5, v0

    .line 1110
    .restart local v1    # "fieldEndPos":I
    :goto_2
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v5, v1, :cond_1

    .line 1111
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readLittleEndian32_NoCheck()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1116
    .end local v0    # "bytes":I
    .end local v1    # "fieldEndPos":I
    :cond_4
    :pswitch_5
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readSFixed32()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1118
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1121
    iget v4, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 1122
    .restart local v4    # "prevPos":I
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v2

    .line 1123
    .restart local v2    # "nextTag":I
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v2, v5, :cond_4

    .line 1126
    iput v4, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    goto :goto_1

    .line 1076
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 1105
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method public readSFixed64()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 299
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->requireWireType(I)V

    .line 300
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readLittleEndian64()J

    move-result-wide v0

    return-wide v0
.end method

.method public readSFixed64List(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1138
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    instance-of v5, p1, Lcom/google/protobuf/LongArrayList;

    if-eqz v5, :cond_3

    move-object v3, p1

    .line 1139
    check-cast v3, Lcom/google/protobuf/LongArrayList;

    .line 1140
    .local v3, "plist":Lcom/google/protobuf/LongArrayList;
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v5}, Lcom/google/protobuf/BinaryProtocolUtil;->getWireType(I)I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 1166
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v5

    throw v5

    .line 1142
    :pswitch_0
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    .line 1143
    .local v0, "bytes":I
    invoke-direct {p0, v0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->verifyPackedFixed64Length(I)V

    .line 1144
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int v1, v5, v0

    .line 1145
    .local v1, "fieldEndPos":I
    :goto_0
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v5, v1, :cond_1

    .line 1146
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readLittleEndian64_NoCheck()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Lcom/google/protobuf/LongArrayList;->addLong(J)V

    goto :goto_0

    .line 1151
    .end local v0    # "bytes":I
    .end local v1    # "fieldEndPos":I
    :cond_0
    :pswitch_1
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readSFixed64()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Lcom/google/protobuf/LongArrayList;->addLong(J)V

    .line 1153
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1198
    .end local v3    # "plist":Lcom/google/protobuf/LongArrayList;
    :cond_1
    :goto_1
    return-void

    .line 1156
    .restart local v3    # "plist":Lcom/google/protobuf/LongArrayList;
    :cond_2
    iget v4, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 1157
    .local v4, "prevPos":I
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v2

    .line 1158
    .local v2, "nextTag":I
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v2, v5, :cond_0

    .line 1161
    iput v4, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    goto :goto_1

    .line 1169
    .end local v2    # "nextTag":I
    .end local v3    # "plist":Lcom/google/protobuf/LongArrayList;
    .end local v4    # "prevPos":I
    :cond_3
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v5}, Lcom/google/protobuf/BinaryProtocolUtil;->getWireType(I)I

    move-result v5

    packed-switch v5, :pswitch_data_1

    .line 1195
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v5

    throw v5

    .line 1171
    :pswitch_2
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    .line 1172
    .restart local v0    # "bytes":I
    invoke-direct {p0, v0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->verifyPackedFixed64Length(I)V

    .line 1173
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int v1, v5, v0

    .line 1174
    .restart local v1    # "fieldEndPos":I
    :goto_2
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v5, v1, :cond_1

    .line 1175
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readLittleEndian64_NoCheck()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1180
    .end local v0    # "bytes":I
    .end local v1    # "fieldEndPos":I
    :cond_4
    :pswitch_3
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readSFixed64()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1182
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1185
    iget v4, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 1186
    .restart local v4    # "prevPos":I
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v2

    .line 1187
    .restart local v2    # "nextTag":I
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v2, v5, :cond_4

    .line 1190
    iput v4, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    goto :goto_1

    .line 1140
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 1169
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public readSInt32()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 305
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->requireWireType(I)V

    .line 306
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    invoke-static {v0}, Lcom/google/protobuf/BinaryProtocolUtil;->decodeZigZag32(I)I

    move-result v0

    return v0
.end method

.method public readSInt32List(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1202
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    instance-of v5, p1, Lcom/google/protobuf/IntArrayList;

    if-eqz v5, :cond_3

    move-object v3, p1

    .line 1203
    check-cast v3, Lcom/google/protobuf/IntArrayList;

    .line 1204
    .local v3, "plist":Lcom/google/protobuf/IntArrayList;
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v5}, Lcom/google/protobuf/BinaryProtocolUtil;->getWireType(I)I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 1229
    :pswitch_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v5

    throw v5

    .line 1206
    :pswitch_1
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    .line 1207
    .local v0, "bytes":I
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int v1, v5, v0

    .line 1208
    .local v1, "fieldEndPos":I
    :goto_0
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v5, v1, :cond_1

    .line 1209
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v5

    invoke-static {v5}, Lcom/google/protobuf/BinaryProtocolUtil;->decodeZigZag32(I)I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/google/protobuf/IntArrayList;->addInt(I)V

    goto :goto_0

    .line 1214
    .end local v0    # "bytes":I
    .end local v1    # "fieldEndPos":I
    :cond_0
    :pswitch_2
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readSInt32()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/google/protobuf/IntArrayList;->addInt(I)V

    .line 1216
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1260
    .end local v3    # "plist":Lcom/google/protobuf/IntArrayList;
    :cond_1
    :goto_1
    return-void

    .line 1219
    .restart local v3    # "plist":Lcom/google/protobuf/IntArrayList;
    :cond_2
    iget v4, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 1220
    .local v4, "prevPos":I
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v2

    .line 1221
    .local v2, "nextTag":I
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v2, v5, :cond_0

    .line 1224
    iput v4, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    goto :goto_1

    .line 1232
    .end local v2    # "nextTag":I
    .end local v3    # "plist":Lcom/google/protobuf/IntArrayList;
    .end local v4    # "prevPos":I
    :cond_3
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v5}, Lcom/google/protobuf/BinaryProtocolUtil;->getWireType(I)I

    move-result v5

    packed-switch v5, :pswitch_data_1

    .line 1257
    :pswitch_3
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v5

    throw v5

    .line 1234
    :pswitch_4
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    .line 1235
    .restart local v0    # "bytes":I
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int v1, v5, v0

    .line 1236
    .restart local v1    # "fieldEndPos":I
    :goto_2
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v5, v1, :cond_1

    .line 1237
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v5

    invoke-static {v5}, Lcom/google/protobuf/BinaryProtocolUtil;->decodeZigZag32(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1242
    .end local v0    # "bytes":I
    .end local v1    # "fieldEndPos":I
    :cond_4
    :pswitch_5
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readSInt32()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1244
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1247
    iget v4, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 1248
    .restart local v4    # "prevPos":I
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v2

    .line 1249
    .restart local v2    # "nextTag":I
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v2, v5, :cond_4

    .line 1252
    iput v4, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    goto :goto_1

    .line 1204
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 1232
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public readSInt64()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 311
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->requireWireType(I)V

    .line 312
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint64()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/protobuf/BinaryProtocolUtil;->decodeZigZag64(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public readSInt64List(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1264
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    instance-of v5, p1, Lcom/google/protobuf/LongArrayList;

    if-eqz v5, :cond_3

    move-object v3, p1

    .line 1265
    check-cast v3, Lcom/google/protobuf/LongArrayList;

    .line 1266
    .local v3, "plist":Lcom/google/protobuf/LongArrayList;
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v5}, Lcom/google/protobuf/BinaryProtocolUtil;->getWireType(I)I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 1291
    :pswitch_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v5

    throw v5

    .line 1268
    :pswitch_1
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    .line 1269
    .local v0, "bytes":I
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int v1, v5, v0

    .line 1270
    .local v1, "fieldEndPos":I
    :goto_0
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v5, v1, :cond_1

    .line 1271
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint64()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/google/protobuf/BinaryProtocolUtil;->decodeZigZag64(J)J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Lcom/google/protobuf/LongArrayList;->addLong(J)V

    goto :goto_0

    .line 1276
    .end local v0    # "bytes":I
    .end local v1    # "fieldEndPos":I
    :cond_0
    :pswitch_2
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readSInt64()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Lcom/google/protobuf/LongArrayList;->addLong(J)V

    .line 1278
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1322
    .end local v3    # "plist":Lcom/google/protobuf/LongArrayList;
    :cond_1
    :goto_1
    return-void

    .line 1281
    .restart local v3    # "plist":Lcom/google/protobuf/LongArrayList;
    :cond_2
    iget v4, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 1282
    .local v4, "prevPos":I
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v2

    .line 1283
    .local v2, "nextTag":I
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v2, v5, :cond_0

    .line 1286
    iput v4, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    goto :goto_1

    .line 1294
    .end local v2    # "nextTag":I
    .end local v3    # "plist":Lcom/google/protobuf/LongArrayList;
    .end local v4    # "prevPos":I
    :cond_3
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v5}, Lcom/google/protobuf/BinaryProtocolUtil;->getWireType(I)I

    move-result v5

    packed-switch v5, :pswitch_data_1

    .line 1319
    :pswitch_3
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v5

    throw v5

    .line 1296
    :pswitch_4
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    .line 1297
    .restart local v0    # "bytes":I
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int v1, v5, v0

    .line 1298
    .restart local v1    # "fieldEndPos":I
    :goto_2
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v5, v1, :cond_1

    .line 1299
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint64()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/google/protobuf/BinaryProtocolUtil;->decodeZigZag64(J)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1304
    .end local v0    # "bytes":I
    .end local v1    # "fieldEndPos":I
    :cond_4
    :pswitch_5
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readSInt64()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1306
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1309
    iget v4, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 1310
    .restart local v4    # "prevPos":I
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v2

    .line 1311
    .restart local v2    # "nextTag":I
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v2, v5, :cond_4

    .line 1314
    iput v4, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    goto :goto_1

    .line 1266
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 1294
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public readString()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 178
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readStringInternal(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readStringInternal(Z)Ljava/lang/String;
    .locals 5
    .param p1, "requireUtf8"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 187
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->requireWireType(I)V

    .line 188
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v1

    .line 189
    .local v1, "size":I
    if-nez v1, :cond_0

    .line 190
    const-string v0, ""

    .line 199
    :goto_0
    return-object v0

    .line 193
    :cond_0
    invoke-direct {p0, v1}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->requireBytes(I)V

    .line 194
    if-eqz p1, :cond_1

    iget-object v2, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->buffer:[B

    iget v3, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    iget v4, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v4, v1

    invoke-static {v2, v3, v4}, Lcom/google/protobuf/Utf8;->isValidUtf8([BII)Z

    move-result v2

    if-nez v2, :cond_1

    .line 195
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidUtf8()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v2

    throw v2

    .line 197
    :cond_1
    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->buffer:[B

    iget v3, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    sget-object v4, Lcom/google/protobuf/Internal;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v2, v3, v1, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 198
    .local v0, "result":Ljava/lang/String;
    iget v2, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    goto :goto_0
.end method

.method public readStringList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 821
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readStringListInternal(Ljava/util/List;Z)V

    .line 822
    return-void
.end method

.method public readStringListInternal(Ljava/util/List;Z)V
    .locals 5
    .param p2, "requireUtf8"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 831
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget v3, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v3}, Lcom/google/protobuf/BinaryProtocolUtil;->getWireType(I)I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    .line 832
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v3

    throw v3

    .line 835
    :cond_0
    instance-of v3, p1, Lcom/google/protobuf/LazyStringList;

    if-eqz v3, :cond_4

    if-nez p2, :cond_4

    move-object v0, p1

    .line 836
    check-cast v0, Lcom/google/protobuf/LazyStringList;

    .line 838
    .local v0, "lazyList":Lcom/google/protobuf/LazyStringList;
    :cond_1
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    .line 840
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 865
    .end local v0    # "lazyList":Lcom/google/protobuf/LazyStringList;
    :cond_2
    :goto_0
    return-void

    .line 843
    .restart local v0    # "lazyList":Lcom/google/protobuf/LazyStringList;
    :cond_3
    iget v2, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 844
    .local v2, "prevPos":I
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v1

    .line 845
    .local v1, "nextTag":I
    iget v3, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v1, v3, :cond_1

    .line 848
    iput v2, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    goto :goto_0

    .line 854
    .end local v0    # "lazyList":Lcom/google/protobuf/LazyStringList;
    .end local v1    # "nextTag":I
    .end local v2    # "prevPos":I
    :cond_4
    invoke-virtual {p0, p2}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readStringInternal(Z)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 856
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v3

    if-nez v3, :cond_2

    .line 859
    iget v2, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 860
    .restart local v2    # "prevPos":I
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v1

    .line 861
    .restart local v1    # "nextTag":I
    iget v3, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v1, v3, :cond_4

    .line 864
    iput v2, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    goto :goto_0
.end method

.method public readStringListRequireUtf8(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 826
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readStringListInternal(Ljava/util/List;Z)V

    .line 827
    return-void
.end method

.method public readStringRequireUtf8()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 183
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readStringInternal(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readUInt32()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 281
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->requireWireType(I)V

    .line 282
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    return v0
.end method

.method public readUInt32List(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 950
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    instance-of v5, p1, Lcom/google/protobuf/IntArrayList;

    if-eqz v5, :cond_3

    move-object v3, p1

    .line 951
    check-cast v3, Lcom/google/protobuf/IntArrayList;

    .line 952
    .local v3, "plist":Lcom/google/protobuf/IntArrayList;
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v5}, Lcom/google/protobuf/BinaryProtocolUtil;->getWireType(I)I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 977
    :pswitch_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v5

    throw v5

    .line 954
    :pswitch_1
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    .line 955
    .local v0, "bytes":I
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int v1, v5, v0

    .line 956
    .local v1, "fieldEndPos":I
    :goto_0
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v5, v1, :cond_1

    .line 957
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/google/protobuf/IntArrayList;->addInt(I)V

    goto :goto_0

    .line 962
    .end local v0    # "bytes":I
    .end local v1    # "fieldEndPos":I
    :cond_0
    :pswitch_2
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readUInt32()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/google/protobuf/IntArrayList;->addInt(I)V

    .line 964
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1008
    .end local v3    # "plist":Lcom/google/protobuf/IntArrayList;
    :cond_1
    :goto_1
    return-void

    .line 967
    .restart local v3    # "plist":Lcom/google/protobuf/IntArrayList;
    :cond_2
    iget v4, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 968
    .local v4, "prevPos":I
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v2

    .line 969
    .local v2, "nextTag":I
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v2, v5, :cond_0

    .line 972
    iput v4, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    goto :goto_1

    .line 980
    .end local v2    # "nextTag":I
    .end local v3    # "plist":Lcom/google/protobuf/IntArrayList;
    .end local v4    # "prevPos":I
    :cond_3
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v5}, Lcom/google/protobuf/BinaryProtocolUtil;->getWireType(I)I

    move-result v5

    packed-switch v5, :pswitch_data_1

    .line 1005
    :pswitch_3
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v5

    throw v5

    .line 982
    :pswitch_4
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    .line 983
    .restart local v0    # "bytes":I
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int v1, v5, v0

    .line 984
    .restart local v1    # "fieldEndPos":I
    :goto_2
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v5, v1, :cond_1

    .line 985
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 990
    .end local v0    # "bytes":I
    .end local v1    # "fieldEndPos":I
    :cond_4
    :pswitch_5
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readUInt32()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 992
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v5

    if-nez v5, :cond_1

    .line 995
    iget v4, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 996
    .restart local v4    # "prevPos":I
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v2

    .line 997
    .restart local v2    # "nextTag":I
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v2, v5, :cond_4

    .line 1000
    iput v4, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    goto :goto_1

    .line 952
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 980
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public readUInt64()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 142
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->requireWireType(I)V

    .line 143
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint64()J

    move-result-wide v0

    return-wide v0
.end method

.method public readUInt64List(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 445
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    instance-of v5, p1, Lcom/google/protobuf/LongArrayList;

    if-eqz v5, :cond_3

    move-object v3, p1

    .line 446
    check-cast v3, Lcom/google/protobuf/LongArrayList;

    .line 447
    .local v3, "plist":Lcom/google/protobuf/LongArrayList;
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v5}, Lcom/google/protobuf/BinaryProtocolUtil;->getWireType(I)I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 472
    :pswitch_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v5

    throw v5

    .line 449
    :pswitch_1
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    .line 450
    .local v0, "bytes":I
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int v1, v5, v0

    .line 451
    .local v1, "fieldEndPos":I
    :goto_0
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v5, v1, :cond_1

    .line 452
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint64()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Lcom/google/protobuf/LongArrayList;->addLong(J)V

    goto :goto_0

    .line 457
    .end local v0    # "bytes":I
    .end local v1    # "fieldEndPos":I
    :cond_0
    :pswitch_2
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readUInt64()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Lcom/google/protobuf/LongArrayList;->addLong(J)V

    .line 459
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 503
    .end local v3    # "plist":Lcom/google/protobuf/LongArrayList;
    :cond_1
    :goto_1
    return-void

    .line 462
    .restart local v3    # "plist":Lcom/google/protobuf/LongArrayList;
    :cond_2
    iget v4, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 463
    .local v4, "prevPos":I
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v2

    .line 464
    .local v2, "nextTag":I
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v2, v5, :cond_0

    .line 467
    iput v4, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    goto :goto_1

    .line 475
    .end local v2    # "nextTag":I
    .end local v3    # "plist":Lcom/google/protobuf/LongArrayList;
    .end local v4    # "prevPos":I
    :cond_3
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v5}, Lcom/google/protobuf/BinaryProtocolUtil;->getWireType(I)I

    move-result v5

    packed-switch v5, :pswitch_data_1

    .line 500
    :pswitch_3
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v5

    throw v5

    .line 477
    :pswitch_4
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    .line 478
    .restart local v0    # "bytes":I
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int v1, v5, v0

    .line 479
    .restart local v1    # "fieldEndPos":I
    :goto_2
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v5, v1, :cond_1

    .line 480
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint64()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 485
    .end local v0    # "bytes":I
    .end local v1    # "fieldEndPos":I
    :cond_4
    :pswitch_5
    invoke-virtual {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readUInt64()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 487
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v5

    if-nez v5, :cond_1

    .line 490
    iget v4, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 491
    .restart local v4    # "prevPos":I
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v2

    .line 492
    .restart local v2    # "nextTag":I
    iget v5, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v2, v5, :cond_4

    .line 495
    iput v4, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    goto :goto_1

    .line 447
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 475
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public readVarint64()J
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v12, 0x0

    .line 1476
    iget v1, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 1478
    .local v1, "i":I
    iget v6, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->limit:I

    if-ne v6, v1, :cond_0

    .line 1479
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v6

    throw v6

    .line 1482
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->buffer:[B

    .line 1485
    .local v0, "buffer":[B
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    aget-byte v3, v0, v1

    .local v3, "y":I
    if-ltz v3, :cond_1

    .line 1486
    iput v2, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    .line 1487
    int-to-long v4, v3

    move v1, v2

    .line 1529
    .end local v2    # "i":I
    .restart local v1    # "i":I
    :goto_0
    return-wide v4

    .line 1488
    .end local v1    # "i":I
    .restart local v2    # "i":I
    :cond_1
    iget v6, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->limit:I

    sub-int/2addr v6, v2

    const/16 v7, 0x9

    if-ge v6, v7, :cond_2

    .line 1489
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint64SlowPath()J

    move-result-wide v4

    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_0

    .line 1490
    .end local v1    # "i":I
    .restart local v2    # "i":I
    :cond_2
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    aget-byte v6, v0, v2

    shl-int/lit8 v6, v6, 0x7

    xor-int/2addr v3, v6

    if-gez v3, :cond_4

    .line 1491
    xor-int/lit8 v6, v3, -0x80

    int-to-long v4, v6

    .line 1528
    .local v4, "x":J
    :cond_3
    :goto_1
    iput v1, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->pos:I

    goto :goto_0

    .line 1492
    .end local v4    # "x":J
    :cond_4
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    aget-byte v6, v0, v1

    shl-int/lit8 v6, v6, 0xe

    xor-int/2addr v3, v6

    if-ltz v3, :cond_5

    .line 1493
    xor-int/lit16 v6, v3, 0x3f80

    int-to-long v4, v6

    .restart local v4    # "x":J
    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_1

    .line 1494
    .end local v1    # "i":I
    .end local v4    # "x":J
    .restart local v2    # "i":I
    :cond_5
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    aget-byte v6, v0, v2

    shl-int/lit8 v6, v6, 0x15

    xor-int/2addr v3, v6

    if-gez v3, :cond_6

    .line 1495
    const v6, -0x1fc080

    xor-int/2addr v6, v3

    int-to-long v4, v6

    .restart local v4    # "x":J
    goto :goto_1

    .line 1496
    .end local v4    # "x":J
    :cond_6
    int-to-long v6, v3

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    aget-byte v8, v0, v1

    int-to-long v8, v8

    const/16 v10, 0x1c

    shl-long/2addr v8, v10

    xor-long v4, v6, v8

    .restart local v4    # "x":J
    cmp-long v6, v4, v12

    if-ltz v6, :cond_7

    .line 1497
    const-wide/32 v6, 0xfe03f80

    xor-long/2addr v4, v6

    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_1

    .line 1498
    .end local v1    # "i":I
    .restart local v2    # "i":I
    :cond_7
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    aget-byte v6, v0, v2

    int-to-long v6, v6

    const/16 v8, 0x23

    shl-long/2addr v6, v8

    xor-long/2addr v4, v6

    cmp-long v6, v4, v12

    if-gez v6, :cond_8

    .line 1499
    const-wide v6, -0x7f01fc080L

    xor-long/2addr v4, v6

    goto :goto_1

    .line 1500
    :cond_8
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    aget-byte v6, v0, v1

    int-to-long v6, v6

    const/16 v8, 0x2a

    shl-long/2addr v6, v8

    xor-long/2addr v4, v6

    cmp-long v6, v4, v12

    if-ltz v6, :cond_9

    .line 1501
    const-wide v6, 0x3f80fe03f80L

    xor-long/2addr v4, v6

    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_1

    .line 1502
    .end local v1    # "i":I
    .restart local v2    # "i":I
    :cond_9
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    aget-byte v6, v0, v2

    int-to-long v6, v6

    const/16 v8, 0x31

    shl-long/2addr v6, v8

    xor-long/2addr v4, v6

    cmp-long v6, v4, v12

    if-gez v6, :cond_a

    .line 1503
    const-wide v6, -0x1fc07f01fc080L

    xor-long/2addr v4, v6

    goto :goto_1

    .line 1512
    :cond_a
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    aget-byte v6, v0, v1

    int-to-long v6, v6

    const/16 v8, 0x38

    shl-long/2addr v6, v8

    xor-long/2addr v4, v6

    .line 1513
    const-wide v6, 0xfe03f80fe03f80L

    xor-long/2addr v4, v6

    .line 1522
    cmp-long v6, v4, v12

    if-gez v6, :cond_b

    .line 1523
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    aget-byte v6, v0, v2

    int-to-long v6, v6

    cmp-long v6, v6, v12

    if-gez v6, :cond_3

    .line 1524
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->malformedVarint()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v6

    throw v6

    .end local v1    # "i":I
    .restart local v2    # "i":I
    :cond_b
    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto/16 :goto_1
.end method

.method public skipField()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 103
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    iget v2, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->endGroupTag:I

    if-ne v1, v2, :cond_1

    .line 104
    :cond_0
    const/4 v0, 0x0

    .line 122
    :goto_0
    return v0

    .line 107
    :cond_1
    iget v1, p0, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v1}, Lcom/google/protobuf/BinaryProtocolUtil;->getWireType(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 124
    :pswitch_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0

    .line 109
    :pswitch_1
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->skipVarint()V

    goto :goto_0

    .line 112
    :pswitch_2
    const/16 v1, 0x8

    invoke-direct {p0, v1}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->skipBytes(I)V

    goto :goto_0

    .line 115
    :pswitch_3
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->skipBytes(I)V

    goto :goto_0

    .line 118
    :pswitch_4
    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->skipBytes(I)V

    goto :goto_0

    .line 121
    :pswitch_5
    invoke-direct {p0}, Lcom/google/protobuf/BinaryReader$SafeHeapReader;->skipGroup()V

    goto :goto_0

    .line 107
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
