.class public final Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "DescriptorProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/nano/DescriptorProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EnumDescriptorProto"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;


# instance fields
.field public name:Ljava/lang/String;

.field public options:Lcom/google/protobuf/nano/DescriptorProtos$EnumOptions;

.field public value:[Lcom/google/protobuf/nano/DescriptorProtos$EnumValueDescriptorProto;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1609
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 1610
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;->name:Ljava/lang/String;

    .line 1611
    invoke-static {}, Lcom/google/protobuf/nano/DescriptorProtos$EnumValueDescriptorProto;->emptyArray()[Lcom/google/protobuf/nano/DescriptorProtos$EnumValueDescriptorProto;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;->value:[Lcom/google/protobuf/nano/DescriptorProtos$EnumValueDescriptorProto;

    .line 1612
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;->cachedSize:I

    .line 1613
    return-void
.end method

.method public static emptyArray()[Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;
    .locals 2

    .prologue
    .line 1587
    sget-object v0, Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;

    if-nez v0, :cond_1

    .line 1588
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 1590
    :try_start_0
    sget-object v0, Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;

    if-nez v0, :cond_0

    .line 1591
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;

    sput-object v0, Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;

    .line 1593
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1595
    :cond_1
    sget-object v0, Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;

    return-object v0

    .line 1593
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1716
    new-instance v0, Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;

    invoke-direct {v0}, Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 1710
    new-instance v0, Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;

    invoke-direct {v0}, Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;

    return-object v0
.end method


# virtual methods
.method protected computeSerializedSize()I
    .locals 5

    .prologue
    .line 1637
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v2

    .line 1638
    .local v2, "size":I
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;->name:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 1639
    const/4 v3, 0x1

    iget-object v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;->name:Ljava/lang/String;

    .line 1640
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1642
    :cond_0
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;->value:[Lcom/google/protobuf/nano/DescriptorProtos$EnumValueDescriptorProto;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;->value:[Lcom/google/protobuf/nano/DescriptorProtos$EnumValueDescriptorProto;

    array-length v3, v3

    if-lez v3, :cond_2

    .line 1643
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;->value:[Lcom/google/protobuf/nano/DescriptorProtos$EnumValueDescriptorProto;

    array-length v3, v3

    if-ge v1, v3, :cond_2

    .line 1644
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;->value:[Lcom/google/protobuf/nano/DescriptorProtos$EnumValueDescriptorProto;

    aget-object v0, v3, v1

    .line 1645
    .local v0, "element":Lcom/google/protobuf/nano/DescriptorProtos$EnumValueDescriptorProto;
    if-eqz v0, :cond_1

    .line 1646
    const/4 v3, 0x2

    .line 1647
    invoke-static {v3, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1643
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1651
    .end local v0    # "element":Lcom/google/protobuf/nano/DescriptorProtos$EnumValueDescriptorProto;
    .end local v1    # "i":I
    :cond_2
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;->options:Lcom/google/protobuf/nano/DescriptorProtos$EnumOptions;

    if-eqz v3, :cond_3

    .line 1652
    const/4 v3, 0x3

    iget-object v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;->options:Lcom/google/protobuf/nano/DescriptorProtos$EnumOptions;

    .line 1653
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1655
    :cond_3
    return v2
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;
    .locals 6
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1663
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 1664
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 1668
    invoke-super {p0, p1, v3}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1669
    :sswitch_0
    return-object p0

    .line 1674
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;->name:Ljava/lang/String;

    goto :goto_0

    .line 1678
    :sswitch_2
    const/16 v5, 0x12

    .line 1679
    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 1680
    .local v0, "arrayLength":I
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;->value:[Lcom/google/protobuf/nano/DescriptorProtos$EnumValueDescriptorProto;

    if-nez v5, :cond_2

    move v1, v4

    .line 1681
    .local v1, "i":I
    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/protobuf/nano/DescriptorProtos$EnumValueDescriptorProto;

    .line 1683
    .local v2, "newArray":[Lcom/google/protobuf/nano/DescriptorProtos$EnumValueDescriptorProto;
    if-eqz v1, :cond_1

    .line 1684
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;->value:[Lcom/google/protobuf/nano/DescriptorProtos$EnumValueDescriptorProto;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1686
    :cond_1
    :goto_2
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_3

    .line 1687
    new-instance v5, Lcom/google/protobuf/nano/DescriptorProtos$EnumValueDescriptorProto;

    invoke-direct {v5}, Lcom/google/protobuf/nano/DescriptorProtos$EnumValueDescriptorProto;-><init>()V

    aput-object v5, v2, v1

    .line 1688
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 1689
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1686
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1680
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/protobuf/nano/DescriptorProtos$EnumValueDescriptorProto;
    :cond_2
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;->value:[Lcom/google/protobuf/nano/DescriptorProtos$EnumValueDescriptorProto;

    array-length v1, v5

    goto :goto_1

    .line 1692
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/protobuf/nano/DescriptorProtos$EnumValueDescriptorProto;
    :cond_3
    new-instance v5, Lcom/google/protobuf/nano/DescriptorProtos$EnumValueDescriptorProto;

    invoke-direct {v5}, Lcom/google/protobuf/nano/DescriptorProtos$EnumValueDescriptorProto;-><init>()V

    aput-object v5, v2, v1

    .line 1693
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 1694
    iput-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;->value:[Lcom/google/protobuf/nano/DescriptorProtos$EnumValueDescriptorProto;

    goto :goto_0

    .line 1698
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/protobuf/nano/DescriptorProtos$EnumValueDescriptorProto;
    :sswitch_3
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;->options:Lcom/google/protobuf/nano/DescriptorProtos$EnumOptions;

    if-nez v5, :cond_4

    .line 1699
    new-instance v5, Lcom/google/protobuf/nano/DescriptorProtos$EnumOptions;

    invoke-direct {v5}, Lcom/google/protobuf/nano/DescriptorProtos$EnumOptions;-><init>()V

    iput-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;->options:Lcom/google/protobuf/nano/DescriptorProtos$EnumOptions;

    .line 1701
    :cond_4
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;->options:Lcom/google/protobuf/nano/DescriptorProtos$EnumOptions;

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 1664
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
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
    .line 1581
    invoke-virtual {p0, p1}, Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4
    .param p1, "output"    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1618
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;->name:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1619
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;->name:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1621
    :cond_0
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;->value:[Lcom/google/protobuf/nano/DescriptorProtos$EnumValueDescriptorProto;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;->value:[Lcom/google/protobuf/nano/DescriptorProtos$EnumValueDescriptorProto;

    array-length v2, v2

    if-lez v2, :cond_2

    .line 1622
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;->value:[Lcom/google/protobuf/nano/DescriptorProtos$EnumValueDescriptorProto;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 1623
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;->value:[Lcom/google/protobuf/nano/DescriptorProtos$EnumValueDescriptorProto;

    aget-object v0, v2, v1

    .line 1624
    .local v0, "element":Lcom/google/protobuf/nano/DescriptorProtos$EnumValueDescriptorProto;
    if-eqz v0, :cond_1

    .line 1625
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 1622
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1629
    .end local v0    # "element":Lcom/google/protobuf/nano/DescriptorProtos$EnumValueDescriptorProto;
    .end local v1    # "i":I
    :cond_2
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;->options:Lcom/google/protobuf/nano/DescriptorProtos$EnumOptions;

    if-eqz v2, :cond_3

    .line 1630
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;->options:Lcom/google/protobuf/nano/DescriptorProtos$EnumOptions;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 1632
    :cond_3
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 1633
    return-void
.end method
