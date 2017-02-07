.class public final Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Vr.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/logging/nano/Vr$VREvent$SensorStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GyroscopeStats"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;


# instance fields
.field public bias:Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;

.field public lowerBound:Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;

.field public standardDeviation:Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;

.field public upperBound:Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4731
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 4732
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;->clear()Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;

    .line 4733
    return-void
.end method

.method public static emptyArray()[Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;
    .locals 2

    .prologue
    .line 4706
    sget-object v0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;->_emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;

    if-nez v0, :cond_1

    .line 4707
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 4709
    :try_start_0
    sget-object v0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;->_emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;

    if-nez v0, :cond_0

    .line 4710
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;

    sput-object v0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;->_emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;

    .line 4712
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4714
    :cond_1
    sget-object v0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;->_emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;

    return-object v0

    .line 4712
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4863
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 4857
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 4736
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;->bias:Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;

    .line 4737
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;->lowerBound:Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;

    .line 4738
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;->upperBound:Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;

    .line 4739
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;->standardDeviation:Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;

    .line 4740
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 4741
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;->cachedSize:I

    .line 4742
    return-object p0
.end method

.method public clone()Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;
    .locals 3

    .prologue
    .line 4748
    :try_start_0
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->clone()Lcom/google/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4752
    .local v0, "cloned":Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;->bias:Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;

    if-eqz v2, :cond_0

    .line 4753
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;->bias:Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;

    invoke-virtual {v2}, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;->clone()Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;

    move-result-object v2

    iput-object v2, v0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;->bias:Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;

    .line 4755
    :cond_0
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;->lowerBound:Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;

    if-eqz v2, :cond_1

    .line 4756
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;->lowerBound:Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;

    invoke-virtual {v2}, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;->clone()Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;

    move-result-object v2

    iput-object v2, v0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;->lowerBound:Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;

    .line 4758
    :cond_1
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;->upperBound:Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;

    if-eqz v2, :cond_2

    .line 4759
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;->upperBound:Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;

    invoke-virtual {v2}, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;->clone()Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;

    move-result-object v2

    iput-object v2, v0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;->upperBound:Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;

    .line 4761
    :cond_2
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;->standardDeviation:Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;

    if-eqz v2, :cond_3

    .line 4762
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;->standardDeviation:Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;

    invoke-virtual {v2}, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;->clone()Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;

    move-result-object v2

    iput-object v2, v0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;->standardDeviation:Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;

    .line 4764
    :cond_3
    return-object v0

    .line 4749
    .end local v0    # "cloned":Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;
    :catch_0
    move-exception v1

    .line 4750
    .local v1, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/nano/ExtendableMessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 4700
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;->clone()Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;

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
    .line 4700
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;->clone()Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;

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
    .line 4700
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;->clone()Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;

    move-result-object v0

    return-object v0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 4788
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 4789
    .local v0, "size":I
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;->bias:Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;

    if-eqz v1, :cond_0

    .line 4790
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;->bias:Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;

    .line 4791
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4793
    :cond_0
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;->lowerBound:Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;

    if-eqz v1, :cond_1

    .line 4794
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;->lowerBound:Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;

    .line 4795
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4797
    :cond_1
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;->upperBound:Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;

    if-eqz v1, :cond_2

    .line 4798
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;->upperBound:Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;

    .line 4799
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4801
    :cond_2
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;->standardDeviation:Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;

    if-eqz v1, :cond_3

    .line 4802
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;->standardDeviation:Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;

    .line 4803
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4805
    :cond_3
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4813
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 4814
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 4818
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4819
    :sswitch_0
    return-object p0

    .line 4824
    :sswitch_1
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;->bias:Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;

    if-nez v1, :cond_1

    .line 4825
    new-instance v1, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;

    invoke-direct {v1}, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;-><init>()V

    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;->bias:Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;

    .line 4827
    :cond_1
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;->bias:Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 4831
    :sswitch_2
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;->lowerBound:Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;

    if-nez v1, :cond_2

    .line 4832
    new-instance v1, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;

    invoke-direct {v1}, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;-><init>()V

    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;->lowerBound:Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;

    .line 4834
    :cond_2
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;->lowerBound:Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 4838
    :sswitch_3
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;->upperBound:Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;

    if-nez v1, :cond_3

    .line 4839
    new-instance v1, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;

    invoke-direct {v1}, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;-><init>()V

    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;->upperBound:Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;

    .line 4841
    :cond_3
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;->upperBound:Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 4845
    :sswitch_4
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;->standardDeviation:Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;

    if-nez v1, :cond_4

    .line 4846
    new-instance v1, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;

    invoke-direct {v1}, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;-><init>()V

    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;->standardDeviation:Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;

    .line 4848
    :cond_4
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;->standardDeviation:Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 4814
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
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
    .line 4700
    invoke-virtual {p0, p1}, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;

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
    .line 4771
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;->bias:Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;

    if-eqz v0, :cond_0

    .line 4772
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;->bias:Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 4774
    :cond_0
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;->lowerBound:Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;

    if-eqz v0, :cond_1

    .line 4775
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;->lowerBound:Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 4777
    :cond_1
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;->upperBound:Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;

    if-eqz v0, :cond_2

    .line 4778
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;->upperBound:Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 4780
    :cond_2
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;->standardDeviation:Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;

    if-eqz v0, :cond_3

    .line 4781
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;->standardDeviation:Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 4783
    :cond_3
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 4784
    return-void
.end method
