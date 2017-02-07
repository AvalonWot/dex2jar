.class public final Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Protos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/gvr/io/proto/nano/Protos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PhoneEvent"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$PositionEvent;,
        Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$KeyEvent;,
        Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$OrientationEvent;,
        Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$DepthMapEvent;,
        Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$AccelerometerEvent;,
        Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$GyroscopeEvent;,
        Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent;,
        Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$Type;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;


# instance fields
.field public accelerometerEvent:Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$AccelerometerEvent;

.field private bitField0_:I

.field public depthMapEvent:Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$DepthMapEvent;

.field public gyroscopeEvent:Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$GyroscopeEvent;

.field public keyEvent:Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$KeyEvent;

.field public motionEvent:Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent;

.field public orientationEvent:Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$OrientationEvent;

.field public posEvent:Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$PositionEvent;

.field private type_:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1639
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 1640
    invoke-virtual {p0}, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;->clear()Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;

    .line 1641
    return-void
.end method

.method public static emptyArray()[Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;
    .locals 2

    .prologue
    .line 1584
    sget-object v0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;->_emptyArray:[Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;

    if-nez v0, :cond_1

    .line 1585
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 1587
    :try_start_0
    sget-object v0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;->_emptyArray:[Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;

    if-nez v0, :cond_0

    .line 1588
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;

    sput-object v0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;->_emptyArray:[Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;

    .line 1590
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1592
    :cond_1
    sget-object v0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;->_emptyArray:[Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;

    return-object v0

    .line 1590
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1818
    new-instance v0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;

    invoke-direct {v0}, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 1812
    new-instance v0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;

    invoke-direct {v0}, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1644
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;->bitField0_:I

    .line 1645
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;->type_:I

    .line 1646
    iput-object v1, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;->motionEvent:Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent;

    .line 1647
    iput-object v1, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;->gyroscopeEvent:Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$GyroscopeEvent;

    .line 1648
    iput-object v1, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;->accelerometerEvent:Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$AccelerometerEvent;

    .line 1649
    iput-object v1, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;->depthMapEvent:Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$DepthMapEvent;

    .line 1650
    iput-object v1, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;->orientationEvent:Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$OrientationEvent;

    .line 1651
    iput-object v1, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;->keyEvent:Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$KeyEvent;

    .line 1652
    iput-object v1, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;->posEvent:Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$PositionEvent;

    .line 1653
    iput-object v1, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 1654
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;->cachedSize:I

    .line 1655
    return-object p0
.end method

.method public clearType()Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;
    .locals 1

    .prologue
    .line 1611
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;->type_:I

    .line 1612
    iget v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;->bitField0_:I

    .line 1613
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 1690
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 1691
    .local v0, "size":I
    iget v1, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 1692
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;->type_:I

    .line 1693
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1695
    :cond_0
    iget-object v1, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;->motionEvent:Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent;

    if-eqz v1, :cond_1

    .line 1696
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;->motionEvent:Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent;

    .line 1697
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1699
    :cond_1
    iget-object v1, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;->gyroscopeEvent:Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$GyroscopeEvent;

    if-eqz v1, :cond_2

    .line 1700
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;->gyroscopeEvent:Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$GyroscopeEvent;

    .line 1701
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1703
    :cond_2
    iget-object v1, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;->accelerometerEvent:Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$AccelerometerEvent;

    if-eqz v1, :cond_3

    .line 1704
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;->accelerometerEvent:Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$AccelerometerEvent;

    .line 1705
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1707
    :cond_3
    iget-object v1, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;->depthMapEvent:Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$DepthMapEvent;

    if-eqz v1, :cond_4

    .line 1708
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;->depthMapEvent:Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$DepthMapEvent;

    .line 1709
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1711
    :cond_4
    iget-object v1, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;->orientationEvent:Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$OrientationEvent;

    if-eqz v1, :cond_5

    .line 1712
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;->orientationEvent:Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$OrientationEvent;

    .line 1713
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1715
    :cond_5
    iget-object v1, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;->keyEvent:Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$KeyEvent;

    if-eqz v1, :cond_6

    .line 1716
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;->keyEvent:Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$KeyEvent;

    .line 1717
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1719
    :cond_6
    iget-object v1, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;->posEvent:Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$PositionEvent;

    if-eqz v1, :cond_7

    .line 1720
    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;->posEvent:Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$PositionEvent;

    .line 1721
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1723
    :cond_7
    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 1600
    iget v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;->type_:I

    return v0
.end method

.method public hasType()Z
    .locals 1

    .prologue
    .line 1608
    iget v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10
    invoke-virtual {p0, p1}, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;
    .locals 3
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1731
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 1732
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 1736
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1737
    :sswitch_0
    return-object p0

    .line 1742
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    .line 1743
    .local v1, "value":I
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 1751
    :pswitch_0
    iput v1, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;->type_:I

    .line 1752
    iget v2, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;->bitField0_:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;->bitField0_:I

    goto :goto_0

    .line 1758
    .end local v1    # "value":I
    :sswitch_2
    iget-object v2, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;->motionEvent:Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent;

    if-nez v2, :cond_1

    .line 1759
    new-instance v2, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent;

    invoke-direct {v2}, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent;-><init>()V

    iput-object v2, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;->motionEvent:Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent;

    .line 1761
    :cond_1
    iget-object v2, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;->motionEvent:Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent;

    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 1765
    :sswitch_3
    iget-object v2, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;->gyroscopeEvent:Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$GyroscopeEvent;

    if-nez v2, :cond_2

    .line 1766
    new-instance v2, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$GyroscopeEvent;

    invoke-direct {v2}, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$GyroscopeEvent;-><init>()V

    iput-object v2, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;->gyroscopeEvent:Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$GyroscopeEvent;

    .line 1768
    :cond_2
    iget-object v2, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;->gyroscopeEvent:Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$GyroscopeEvent;

    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 1772
    :sswitch_4
    iget-object v2, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;->accelerometerEvent:Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$AccelerometerEvent;

    if-nez v2, :cond_3

    .line 1773
    new-instance v2, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$AccelerometerEvent;

    invoke-direct {v2}, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$AccelerometerEvent;-><init>()V

    iput-object v2, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;->accelerometerEvent:Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$AccelerometerEvent;

    .line 1775
    :cond_3
    iget-object v2, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;->accelerometerEvent:Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$AccelerometerEvent;

    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 1779
    :sswitch_5
    iget-object v2, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;->depthMapEvent:Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$DepthMapEvent;

    if-nez v2, :cond_4

    .line 1780
    new-instance v2, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$DepthMapEvent;

    invoke-direct {v2}, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$DepthMapEvent;-><init>()V

    iput-object v2, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;->depthMapEvent:Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$DepthMapEvent;

    .line 1782
    :cond_4
    iget-object v2, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;->depthMapEvent:Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$DepthMapEvent;

    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 1786
    :sswitch_6
    iget-object v2, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;->orientationEvent:Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$OrientationEvent;

    if-nez v2, :cond_5

    .line 1787
    new-instance v2, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$OrientationEvent;

    invoke-direct {v2}, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$OrientationEvent;-><init>()V

    iput-object v2, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;->orientationEvent:Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$OrientationEvent;

    .line 1789
    :cond_5
    iget-object v2, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;->orientationEvent:Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$OrientationEvent;

    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 1793
    :sswitch_7
    iget-object v2, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;->keyEvent:Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$KeyEvent;

    if-nez v2, :cond_6

    .line 1794
    new-instance v2, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$KeyEvent;

    invoke-direct {v2}, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$KeyEvent;-><init>()V

    iput-object v2, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;->keyEvent:Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$KeyEvent;

    .line 1796
    :cond_6
    iget-object v2, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;->keyEvent:Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$KeyEvent;

    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1800
    :sswitch_8
    iget-object v2, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;->posEvent:Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$PositionEvent;

    if-nez v2, :cond_7

    .line 1801
    new-instance v2, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$PositionEvent;

    invoke-direct {v2}, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$PositionEvent;-><init>()V

    iput-object v2, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;->posEvent:Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$PositionEvent;

    .line 1803
    :cond_7
    iget-object v2, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;->posEvent:Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$PositionEvent;

    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1732
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
    .end sparse-switch

    .line 1743
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setType(I)Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1603
    iput p1, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;->type_:I

    .line 1604
    iget v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;->bitField0_:I

    .line 1605
    return-object p0
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
    .line 1661
    iget v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 1662
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;->type_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1664
    :cond_0
    iget-object v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;->motionEvent:Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent;

    if-eqz v0, :cond_1

    .line 1665
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;->motionEvent:Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 1667
    :cond_1
    iget-object v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;->gyroscopeEvent:Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$GyroscopeEvent;

    if-eqz v0, :cond_2

    .line 1668
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;->gyroscopeEvent:Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$GyroscopeEvent;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 1670
    :cond_2
    iget-object v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;->accelerometerEvent:Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$AccelerometerEvent;

    if-eqz v0, :cond_3

    .line 1671
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;->accelerometerEvent:Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$AccelerometerEvent;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 1673
    :cond_3
    iget-object v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;->depthMapEvent:Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$DepthMapEvent;

    if-eqz v0, :cond_4

    .line 1674
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;->depthMapEvent:Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$DepthMapEvent;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 1676
    :cond_4
    iget-object v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;->orientationEvent:Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$OrientationEvent;

    if-eqz v0, :cond_5

    .line 1677
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;->orientationEvent:Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$OrientationEvent;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 1679
    :cond_5
    iget-object v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;->keyEvent:Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$KeyEvent;

    if-eqz v0, :cond_6

    .line 1680
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;->keyEvent:Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$KeyEvent;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 1682
    :cond_6
    iget-object v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;->posEvent:Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$PositionEvent;

    if-eqz v0, :cond_7

    .line 1683
    const/16 v0, 0x8

    iget-object v1, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;->posEvent:Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$PositionEvent;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 1685
    :cond_7
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 1686
    return-void
.end method
