.class public final Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Vr.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/logging/nano/Vr$VREvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TimeSeriesData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData;


# instance fields
.field public timeIntervalData:[Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;

.field public timeIntervalSeconds:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3603
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 3604
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData;->clear()Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData;

    .line 3605
    return-void
.end method

.method public static emptyArray()[Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData;
    .locals 2

    .prologue
    .line 3584
    sget-object v0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData;->_emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData;

    if-nez v0, :cond_1

    .line 3585
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 3587
    :try_start_0
    sget-object v0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData;->_emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData;

    if-nez v0, :cond_0

    .line 3588
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData;

    sput-object v0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData;->_emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData;

    .line 3590
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3592
    :cond_1
    sget-object v0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData;->_emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData;

    return-object v0

    .line 3590
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3721
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 3715
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3608
    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData;->timeIntervalSeconds:Ljava/lang/Integer;

    .line 3609
    invoke-static {}, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->emptyArray()[Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData;->timeIntervalData:[Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;

    .line 3610
    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 3611
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData;->cachedSize:I

    .line 3612
    return-object p0
.end method

.method public clone()Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData;
    .locals 5

    .prologue
    .line 3618
    :try_start_0
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->clone()Lcom/google/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3622
    .local v0, "cloned":Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData;
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData;->timeIntervalData:[Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData;->timeIntervalData:[Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;

    array-length v3, v3

    if-lez v3, :cond_1

    .line 3623
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData;->timeIntervalData:[Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;

    array-length v3, v3

    new-array v3, v3, [Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;

    iput-object v3, v0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData;->timeIntervalData:[Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;

    .line 3624
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData;->timeIntervalData:[Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 3625
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData;->timeIntervalData:[Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;

    aget-object v3, v3, v2

    if-eqz v3, :cond_0

    .line 3626
    iget-object v3, v0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData;->timeIntervalData:[Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;

    iget-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData;->timeIntervalData:[Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->clone()Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;

    move-result-object v4

    aput-object v4, v3, v2

    .line 3624
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3619
    .end local v0    # "cloned":Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData;
    .end local v2    # "i":I
    :catch_0
    move-exception v1

    .line 3620
    .local v1, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 3630
    .end local v1    # "e":Ljava/lang/CloneNotSupportedException;
    .restart local v0    # "cloned":Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData;
    :cond_1
    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/nano/ExtendableMessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 3255
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData;->clone()Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 3255
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData;->clone()Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 3255
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData;->clone()Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData;

    move-result-object v0

    return-object v0
.end method

.method protected computeSerializedSize()I
    .locals 5

    .prologue
    .line 3653
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v2

    .line 3654
    .local v2, "size":I
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData;->timeIntervalSeconds:Ljava/lang/Integer;

    if-eqz v3, :cond_0

    .line 3655
    const/4 v3, 0x1

    iget-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData;->timeIntervalSeconds:Ljava/lang/Integer;

    .line 3656
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 3658
    :cond_0
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData;->timeIntervalData:[Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData;->timeIntervalData:[Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;

    array-length v3, v3

    if-lez v3, :cond_2

    .line 3659
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData;->timeIntervalData:[Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;

    array-length v3, v3

    if-ge v1, v3, :cond_2

    .line 3660
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData;->timeIntervalData:[Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;

    aget-object v0, v3, v1

    .line 3661
    .local v0, "element":Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;
    if-eqz v0, :cond_1

    .line 3662
    const/4 v3, 0x2

    .line 3663
    invoke-static {v3, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 3659
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3667
    .end local v0    # "element":Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;
    .end local v1    # "i":I
    :cond_2
    return v2
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData;
    .locals 6
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 3675
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 3676
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 3680
    invoke-super {p0, p1, v3}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 3681
    :sswitch_0
    return-object p0

    .line 3686
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData;->timeIntervalSeconds:Ljava/lang/Integer;

    goto :goto_0

    .line 3690
    :sswitch_2
    const/16 v5, 0x12

    .line 3691
    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 3692
    .local v0, "arrayLength":I
    iget-object v5, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData;->timeIntervalData:[Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;

    if-nez v5, :cond_2

    move v1, v4

    .line 3693
    .local v1, "i":I
    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;

    .line 3695
    .local v2, "newArray":[Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;
    if-eqz v1, :cond_1

    .line 3696
    iget-object v5, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData;->timeIntervalData:[Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3698
    :cond_1
    :goto_2
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_3

    .line 3699
    new-instance v5, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;

    invoke-direct {v5}, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;-><init>()V

    aput-object v5, v2, v1

    .line 3700
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 3701
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 3698
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 3692
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;
    :cond_2
    iget-object v5, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData;->timeIntervalData:[Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;

    array-length v1, v5

    goto :goto_1

    .line 3704
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;
    :cond_3
    new-instance v5, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;

    invoke-direct {v5}, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;-><init>()V

    aput-object v5, v2, v1

    .line 3705
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 3706
    iput-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData;->timeIntervalData:[Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;

    goto :goto_0

    .line 3676
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
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
    .line 3255
    invoke-virtual {p0, p1}, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData;

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
    .line 3637
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData;->timeIntervalSeconds:Ljava/lang/Integer;

    if-eqz v2, :cond_0

    .line 3638
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData;->timeIntervalSeconds:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3640
    :cond_0
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData;->timeIntervalData:[Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData;->timeIntervalData:[Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;

    array-length v2, v2

    if-lez v2, :cond_2

    .line 3641
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData;->timeIntervalData:[Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 3642
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData;->timeIntervalData:[Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;

    aget-object v0, v2, v1

    .line 3643
    .local v0, "element":Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;
    if-eqz v0, :cond_1

    .line 3644
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 3641
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3648
    .end local v0    # "element":Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;
    .end local v1    # "i":I
    :cond_2
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 3649
    return-void
.end method
