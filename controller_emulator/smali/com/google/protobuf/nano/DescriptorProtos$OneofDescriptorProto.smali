.class public final Lcom/google/protobuf/nano/DescriptorProtos$OneofDescriptorProto;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "DescriptorProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/nano/DescriptorProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OneofDescriptorProto"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/protobuf/nano/DescriptorProtos$OneofDescriptorProto;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$OneofDescriptorProto;


# instance fields
.field public name:Ljava/lang/String;

.field public options:Lcom/google/protobuf/nano/DescriptorProtos$OneofOptions;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1508
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 1509
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$OneofDescriptorProto;->name:Ljava/lang/String;

    .line 1510
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$OneofDescriptorProto;->cachedSize:I

    .line 1511
    return-void
.end method

.method public static emptyArray()[Lcom/google/protobuf/nano/DescriptorProtos$OneofDescriptorProto;
    .locals 2

    .prologue
    .line 1489
    sget-object v0, Lcom/google/protobuf/nano/DescriptorProtos$OneofDescriptorProto;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$OneofDescriptorProto;

    if-nez v0, :cond_1

    .line 1490
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 1492
    :try_start_0
    sget-object v0, Lcom/google/protobuf/nano/DescriptorProtos$OneofDescriptorProto;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$OneofDescriptorProto;

    if-nez v0, :cond_0

    .line 1493
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/protobuf/nano/DescriptorProtos$OneofDescriptorProto;

    sput-object v0, Lcom/google/protobuf/nano/DescriptorProtos$OneofDescriptorProto;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$OneofDescriptorProto;

    .line 1495
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1497
    :cond_1
    sget-object v0, Lcom/google/protobuf/nano/DescriptorProtos$OneofDescriptorProto;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$OneofDescriptorProto;

    return-object v0

    .line 1495
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$OneofDescriptorProto;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1577
    new-instance v0, Lcom/google/protobuf/nano/DescriptorProtos$OneofDescriptorProto;

    invoke-direct {v0}, Lcom/google/protobuf/nano/DescriptorProtos$OneofDescriptorProto;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/protobuf/nano/DescriptorProtos$OneofDescriptorProto;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$OneofDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/protobuf/nano/DescriptorProtos$OneofDescriptorProto;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 1571
    new-instance v0, Lcom/google/protobuf/nano/DescriptorProtos$OneofDescriptorProto;

    invoke-direct {v0}, Lcom/google/protobuf/nano/DescriptorProtos$OneofDescriptorProto;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/nano/DescriptorProtos$OneofDescriptorProto;

    return-object v0
.end method


# virtual methods
.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 1527
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 1528
    .local v0, "size":I
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$OneofDescriptorProto;->name:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1529
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$OneofDescriptorProto;->name:Ljava/lang/String;

    .line 1530
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1532
    :cond_0
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$OneofDescriptorProto;->options:Lcom/google/protobuf/nano/DescriptorProtos$OneofOptions;

    if-eqz v1, :cond_1

    .line 1533
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$OneofDescriptorProto;->options:Lcom/google/protobuf/nano/DescriptorProtos$OneofOptions;

    .line 1534
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1536
    :cond_1
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$OneofDescriptorProto;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1544
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 1545
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 1549
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1550
    :sswitch_0
    return-object p0

    .line 1555
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$OneofDescriptorProto;->name:Ljava/lang/String;

    goto :goto_0

    .line 1559
    :sswitch_2
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$OneofDescriptorProto;->options:Lcom/google/protobuf/nano/DescriptorProtos$OneofOptions;

    if-nez v1, :cond_1

    .line 1560
    new-instance v1, Lcom/google/protobuf/nano/DescriptorProtos$OneofOptions;

    invoke-direct {v1}, Lcom/google/protobuf/nano/DescriptorProtos$OneofOptions;-><init>()V

    iput-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$OneofDescriptorProto;->options:Lcom/google/protobuf/nano/DescriptorProtos$OneofOptions;

    .line 1562
    :cond_1
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$OneofDescriptorProto;->options:Lcom/google/protobuf/nano/DescriptorProtos$OneofOptions;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 1545
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1483
    invoke-virtual {p0, p1}, Lcom/google/protobuf/nano/DescriptorProtos$OneofDescriptorProto;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$OneofDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2
    .param p1, "output"    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1516
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$OneofDescriptorProto;->name:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1517
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$OneofDescriptorProto;->name:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1519
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$OneofDescriptorProto;->options:Lcom/google/protobuf/nano/DescriptorProtos$OneofOptions;

    if-eqz v0, :cond_1

    .line 1520
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$OneofDescriptorProto;->options:Lcom/google/protobuf/nano/DescriptorProtos$OneofOptions;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 1522
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 1523
    return-void
.end method
