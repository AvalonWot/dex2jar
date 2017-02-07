.class public final Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$AccelerometerEvent;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Protos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AccelerometerEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$AccelerometerEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$AccelerometerEvent;


# instance fields
.field private bitField0_:I

.field private timestamp_:J

.field private x_:F

.field private y_:F

.field private z_:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 675
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 676
    invoke-virtual {p0}, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$AccelerometerEvent;->clear()Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$AccelerometerEvent;

    .line 677
    return-void
.end method

.method public static emptyArray()[Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$AccelerometerEvent;
    .locals 2

    .prologue
    .line 584
    sget-object v0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$AccelerometerEvent;->_emptyArray:[Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$AccelerometerEvent;

    if-nez v0, :cond_1

    .line 585
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 587
    :try_start_0
    sget-object v0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$AccelerometerEvent;->_emptyArray:[Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$AccelerometerEvent;

    if-nez v0, :cond_0

    .line 588
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$AccelerometerEvent;

    sput-object v0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$AccelerometerEvent;->_emptyArray:[Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$AccelerometerEvent;

    .line 590
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 592
    :cond_1
    sget-object v0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$AccelerometerEvent;->_emptyArray:[Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$AccelerometerEvent;

    return-object v0

    .line 590
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$AccelerometerEvent;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 777
    new-instance v0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$AccelerometerEvent;

    invoke-direct {v0}, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$AccelerometerEvent;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$AccelerometerEvent;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$AccelerometerEvent;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$AccelerometerEvent;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 771
    new-instance v0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$AccelerometerEvent;

    invoke-direct {v0}, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$AccelerometerEvent;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$AccelerometerEvent;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$AccelerometerEvent;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 680
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$AccelerometerEvent;->bitField0_:I

    .line 681
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$AccelerometerEvent;->timestamp_:J

    .line 682
    iput v2, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$AccelerometerEvent;->x_:F

    .line 683
    iput v2, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$AccelerometerEvent;->y_:F

    .line 684
    iput v2, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$AccelerometerEvent;->z_:F

    .line 685
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$AccelerometerEvent;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 686
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$AccelerometerEvent;->cachedSize:I

    .line 687
    return-object p0
.end method

.method public clearTimestamp()Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$AccelerometerEvent;
    .locals 2

    .prologue
    .line 611
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$AccelerometerEvent;->timestamp_:J

    .line 612
    iget v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$AccelerometerEvent;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$AccelerometerEvent;->bitField0_:I

    .line 613
    return-object p0
.end method

.method public clearX()Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$AccelerometerEvent;
    .locals 1

    .prologue
    .line 630
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$AccelerometerEvent;->x_:F

    .line 631
    iget v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$AccelerometerEvent;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$AccelerometerEvent;->bitField0_:I

    .line 632
    return-object p0
.end method

.method public clearY()Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$AccelerometerEvent;
    .locals 1

    .prologue
    .line 649
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$AccelerometerEvent;->y_:F

    .line 650
    iget v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$AccelerometerEvent;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$AccelerometerEvent;->bitField0_:I

    .line 651
    return-object p0
.end method

.method public clearZ()Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$AccelerometerEvent;
    .locals 1

    .prologue
    .line 668
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$AccelerometerEvent;->z_:F

    .line 669
    iget v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$AccelerometerEvent;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$AccelerometerEvent;->bitField0_:I

    .line 670
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 4

    .prologue
    .line 710
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 711
    .local v0, "size":I
    iget v1, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$AccelerometerEvent;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 712
    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$AccelerometerEvent;->timestamp_:J

    .line 713
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 715
    :cond_0
    iget v1, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$AccelerometerEvent;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 716
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$AccelerometerEvent;->x_:F

    .line 717
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 719
    :cond_1
    iget v1, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$AccelerometerEvent;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 720
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$AccelerometerEvent;->y_:F

    .line 721
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 723
    :cond_2
    iget v1, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$AccelerometerEvent;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 724
    const/4 v1, 0x4

    iget v2, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$AccelerometerEvent;->z_:F

    .line 725
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 727
    :cond_3
    return v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 600
    iget-wide v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$AccelerometerEvent;->timestamp_:J

    return-wide v0
.end method

.method public getX()F
    .locals 1

    .prologue
    .line 619
    iget v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$AccelerometerEvent;->x_:F

    return v0
.end method

.method public getY()F
    .locals 1

    .prologue
    .line 638
    iget v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$AccelerometerEvent;->y_:F

    return v0
.end method

.method public getZ()F
    .locals 1

    .prologue
    .line 657
    iget v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$AccelerometerEvent;->z_:F

    return v0
.end method

.method public hasTimestamp()Z
    .locals 1

    .prologue
    .line 608
    iget v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$AccelerometerEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasX()Z
    .locals 1

    .prologue
    .line 627
    iget v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$AccelerometerEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasY()Z
    .locals 1

    .prologue
    .line 646
    iget v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$AccelerometerEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasZ()Z
    .locals 1

    .prologue
    .line 665
    iget v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$AccelerometerEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

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
    .line 578
    invoke-virtual {p0, p1}, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$AccelerometerEvent;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$AccelerometerEvent;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$AccelerometerEvent;
    .locals 4
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 735
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 736
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 740
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 741
    :sswitch_0
    return-object p0

    .line 746
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$AccelerometerEvent;->timestamp_:J

    .line 747
    iget v1, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$AccelerometerEvent;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$AccelerometerEvent;->bitField0_:I

    goto :goto_0

    .line 751
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$AccelerometerEvent;->x_:F

    .line 752
    iget v1, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$AccelerometerEvent;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$AccelerometerEvent;->bitField0_:I

    goto :goto_0

    .line 756
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$AccelerometerEvent;->y_:F

    .line 757
    iget v1, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$AccelerometerEvent;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$AccelerometerEvent;->bitField0_:I

    goto :goto_0

    .line 761
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$AccelerometerEvent;->z_:F

    .line 762
    iget v1, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$AccelerometerEvent;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$AccelerometerEvent;->bitField0_:I

    goto :goto_0

    .line 736
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x15 -> :sswitch_2
        0x1d -> :sswitch_3
        0x25 -> :sswitch_4
    .end sparse-switch
.end method

.method public setTimestamp(J)Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$AccelerometerEvent;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 603
    iput-wide p1, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$AccelerometerEvent;->timestamp_:J

    .line 604
    iget v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$AccelerometerEvent;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$AccelerometerEvent;->bitField0_:I

    .line 605
    return-object p0
.end method

.method public setX(F)Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$AccelerometerEvent;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 622
    iput p1, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$AccelerometerEvent;->x_:F

    .line 623
    iget v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$AccelerometerEvent;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$AccelerometerEvent;->bitField0_:I

    .line 624
    return-object p0
.end method

.method public setY(F)Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$AccelerometerEvent;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 641
    iput p1, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$AccelerometerEvent;->y_:F

    .line 642
    iget v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$AccelerometerEvent;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$AccelerometerEvent;->bitField0_:I

    .line 643
    return-object p0
.end method

.method public setZ(F)Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$AccelerometerEvent;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 660
    iput p1, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$AccelerometerEvent;->z_:F

    .line 661
    iget v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$AccelerometerEvent;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$AccelerometerEvent;->bitField0_:I

    .line 662
    return-object p0
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
    .line 693
    iget v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$AccelerometerEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 694
    const/4 v0, 0x1

    iget-wide v2, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$AccelerometerEvent;->timestamp_:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 696
    :cond_0
    iget v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$AccelerometerEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 697
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$AccelerometerEvent;->x_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 699
    :cond_1
    iget v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$AccelerometerEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 700
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$AccelerometerEvent;->y_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 702
    :cond_2
    iget v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$AccelerometerEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 703
    const/4 v0, 0x4

    iget v1, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$AccelerometerEvent;->z_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 705
    :cond_3
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 706
    return-void
.end method
