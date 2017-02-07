.class public final Lcom/google/common/logging/nano/Vr$VREvent$SensorStats;
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
    name = "SensorStats"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;,
        Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/common/logging/nano/Vr$VREvent$SensorStats;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$SensorStats;


# instance fields
.field public gyroscopeStats:Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4886
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 4887
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats;->clear()Lcom/google/common/logging/nano/Vr$VREvent$SensorStats;

    .line 4888
    return-void
.end method

.method public static emptyArray()[Lcom/google/common/logging/nano/Vr$VREvent$SensorStats;
    .locals 2

    .prologue
    .line 4870
    sget-object v0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats;->_emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$SensorStats;

    if-nez v0, :cond_1

    .line 4871
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 4873
    :try_start_0
    sget-object v0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats;->_emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$SensorStats;

    if-nez v0, :cond_0

    .line 4874
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/common/logging/nano/Vr$VREvent$SensorStats;

    sput-object v0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats;->_emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$SensorStats;

    .line 4876
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4878
    :cond_1
    sget-object v0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats;->_emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$SensorStats;

    return-object v0

    .line 4876
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent$SensorStats;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4964
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent$SensorStats;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/common/logging/nano/Vr$VREvent$SensorStats;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 4958
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/common/logging/nano/Vr$VREvent$SensorStats;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 4891
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats;->gyroscopeStats:Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;

    .line 4892
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 4893
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats;->cachedSize:I

    .line 4894
    return-object p0
.end method

.method public clone()Lcom/google/common/logging/nano/Vr$VREvent$SensorStats;
    .locals 3

    .prologue
    .line 4900
    :try_start_0
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->clone()Lcom/google/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4904
    .local v0, "cloned":Lcom/google/common/logging/nano/Vr$VREvent$SensorStats;
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats;->gyroscopeStats:Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;

    if-eqz v2, :cond_0

    .line 4905
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats;->gyroscopeStats:Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;

    invoke-virtual {v2}, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;->clone()Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;

    move-result-object v2

    iput-object v2, v0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats;->gyroscopeStats:Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;

    .line 4907
    :cond_0
    return-object v0

    .line 4901
    .end local v0    # "cloned":Lcom/google/common/logging/nano/Vr$VREvent$SensorStats;
    :catch_0
    move-exception v1

    .line 4902
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
    .line 4569
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats;->clone()Lcom/google/common/logging/nano/Vr$VREvent$SensorStats;

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
    .line 4569
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats;->clone()Lcom/google/common/logging/nano/Vr$VREvent$SensorStats;

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
    .line 4569
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats;->clone()Lcom/google/common/logging/nano/Vr$VREvent$SensorStats;

    move-result-object v0

    return-object v0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 4922
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 4923
    .local v0, "size":I
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats;->gyroscopeStats:Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;

    if-eqz v1, :cond_0

    .line 4924
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats;->gyroscopeStats:Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;

    .line 4925
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4927
    :cond_0
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent$SensorStats;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4935
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 4936
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 4940
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4941
    :sswitch_0
    return-object p0

    .line 4946
    :sswitch_1
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats;->gyroscopeStats:Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;

    if-nez v1, :cond_1

    .line 4947
    new-instance v1, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;

    invoke-direct {v1}, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;-><init>()V

    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats;->gyroscopeStats:Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;

    .line 4949
    :cond_1
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats;->gyroscopeStats:Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 4936
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
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
    .line 4569
    invoke-virtual {p0, p1}, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent$SensorStats;

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
    .line 4914
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats;->gyroscopeStats:Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;

    if-eqz v0, :cond_0

    .line 4915
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats;->gyroscopeStats:Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$GyroscopeStats;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 4917
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 4918
    return-void
.end method
