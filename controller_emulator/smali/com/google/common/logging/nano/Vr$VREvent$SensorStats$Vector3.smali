.class public final Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;
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
    name = "Vector3"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;


# instance fields
.field public x:Ljava/lang/Float;

.field public y:Ljava/lang/Float;

.field public z:Ljava/lang/Float;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4600
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 4601
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;->clear()Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;

    .line 4602
    return-void
.end method

.method public static emptyArray()[Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;
    .locals 2

    .prologue
    .line 4578
    sget-object v0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;->_emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;

    if-nez v0, :cond_1

    .line 4579
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 4581
    :try_start_0
    sget-object v0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;->_emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;

    if-nez v0, :cond_0

    .line 4582
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;

    sput-object v0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;->_emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;

    .line 4584
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4586
    :cond_1
    sget-object v0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;->_emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;

    return-object v0

    .line 4584
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4696
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 4690
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 4605
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;->x:Ljava/lang/Float;

    .line 4606
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;->y:Ljava/lang/Float;

    .line 4607
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;->z:Ljava/lang/Float;

    .line 4608
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 4609
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;->cachedSize:I

    .line 4610
    return-object p0
.end method

.method public clone()Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;
    .locals 3

    .prologue
    .line 4616
    :try_start_0
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->clone()Lcom/google/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4620
    .local v0, "cloned":Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;
    return-object v0

    .line 4617
    .end local v0    # "cloned":Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;
    :catch_0
    move-exception v1

    .line 4618
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
    .line 4572
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;->clone()Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;

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
    .line 4572
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;->clone()Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;

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
    .line 4572
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;->clone()Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;

    move-result-object v0

    return-object v0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 4641
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 4642
    .local v0, "size":I
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;->x:Ljava/lang/Float;

    if-eqz v1, :cond_0

    .line 4643
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;->x:Ljava/lang/Float;

    .line 4644
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 4646
    :cond_0
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;->y:Ljava/lang/Float;

    if-eqz v1, :cond_1

    .line 4647
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;->y:Ljava/lang/Float;

    .line 4648
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 4650
    :cond_1
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;->z:Ljava/lang/Float;

    if-eqz v1, :cond_2

    .line 4651
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;->z:Ljava/lang/Float;

    .line 4652
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 4654
    :cond_2
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4662
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 4663
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 4667
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4668
    :sswitch_0
    return-object p0

    .line 4673
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;->x:Ljava/lang/Float;

    goto :goto_0

    .line 4677
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;->y:Ljava/lang/Float;

    goto :goto_0

    .line 4681
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;->z:Ljava/lang/Float;

    goto :goto_0

    .line 4663
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xd -> :sswitch_1
        0x15 -> :sswitch_2
        0x1d -> :sswitch_3
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
    .line 4572
    invoke-virtual {p0, p1}, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;

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
    .line 4627
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;->x:Ljava/lang/Float;

    if-eqz v0, :cond_0

    .line 4628
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;->x:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 4630
    :cond_0
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;->y:Ljava/lang/Float;

    if-eqz v0, :cond_1

    .line 4631
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;->y:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 4633
    :cond_1
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;->z:Ljava/lang/Float;

    if-eqz v0, :cond_2

    .line 4634
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats$Vector3;->z:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 4636
    :cond_2
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 4637
    return-void
.end method
