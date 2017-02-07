.class public final Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Vr.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Actor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor$ControllerState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;


# instance fields
.field public controllerStates:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor$ControllerState;

.field public startFromHeadTransform:Lcom/google/common/logging/nano/Vr$VREvent$Transform;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7756
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 7757
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;->clear()Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;

    .line 7758
    return-void
.end method

.method public static emptyArray()[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;
    .locals 2

    .prologue
    .line 7737
    sget-object v0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;->_emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;

    if-nez v0, :cond_1

    .line 7738
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 7740
    :try_start_0
    sget-object v0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;->_emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;

    if-nez v0, :cond_0

    .line 7741
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;

    sput-object v0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;->_emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;

    .line 7743
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7745
    :cond_1
    sget-object v0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;->_emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;

    return-object v0

    .line 7743
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7880
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 7874
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 7761
    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;->startFromHeadTransform:Lcom/google/common/logging/nano/Vr$VREvent$Transform;

    .line 7762
    invoke-static {}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor$ControllerState;->emptyArray()[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor$ControllerState;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;->controllerStates:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor$ControllerState;

    .line 7763
    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 7764
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;->cachedSize:I

    .line 7765
    return-object p0
.end method

.method public clone()Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;
    .locals 5

    .prologue
    .line 7771
    :try_start_0
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->clone()Lcom/google/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7775
    .local v0, "cloned":Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;->startFromHeadTransform:Lcom/google/common/logging/nano/Vr$VREvent$Transform;

    if-eqz v3, :cond_0

    .line 7776
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;->startFromHeadTransform:Lcom/google/common/logging/nano/Vr$VREvent$Transform;

    invoke-virtual {v3}, Lcom/google/common/logging/nano/Vr$VREvent$Transform;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Transform;

    move-result-object v3

    iput-object v3, v0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;->startFromHeadTransform:Lcom/google/common/logging/nano/Vr$VREvent$Transform;

    .line 7778
    :cond_0
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;->controllerStates:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor$ControllerState;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;->controllerStates:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor$ControllerState;

    array-length v3, v3

    if-lez v3, :cond_2

    .line 7779
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;->controllerStates:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor$ControllerState;

    array-length v3, v3

    new-array v3, v3, [Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor$ControllerState;

    iput-object v3, v0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;->controllerStates:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor$ControllerState;

    .line 7780
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;->controllerStates:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor$ControllerState;

    array-length v3, v3

    if-ge v2, v3, :cond_2

    .line 7781
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;->controllerStates:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor$ControllerState;

    aget-object v3, v3, v2

    if-eqz v3, :cond_1

    .line 7782
    iget-object v3, v0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;->controllerStates:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor$ControllerState;

    iget-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;->controllerStates:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor$ControllerState;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor$ControllerState;->clone()Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor$ControllerState;

    move-result-object v4

    aput-object v4, v3, v2

    .line 7780
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7772
    .end local v0    # "cloned":Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;
    .end local v2    # "i":I
    :catch_0
    move-exception v1

    .line 7773
    .local v1, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 7786
    .end local v1    # "e":Ljava/lang/CloneNotSupportedException;
    .restart local v0    # "cloned":Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;
    :cond_2
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
    .line 7599
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;->clone()Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;

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
    .line 7599
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;->clone()Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;

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
    .line 7599
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;->clone()Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;

    move-result-object v0

    return-object v0
.end method

.method protected computeSerializedSize()I
    .locals 5

    .prologue
    .line 7809
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v2

    .line 7810
    .local v2, "size":I
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;->startFromHeadTransform:Lcom/google/common/logging/nano/Vr$VREvent$Transform;

    if-eqz v3, :cond_0

    .line 7811
    const/4 v3, 0x2

    iget-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;->startFromHeadTransform:Lcom/google/common/logging/nano/Vr$VREvent$Transform;

    .line 7812
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 7814
    :cond_0
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;->controllerStates:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor$ControllerState;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;->controllerStates:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor$ControllerState;

    array-length v3, v3

    if-lez v3, :cond_2

    .line 7815
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;->controllerStates:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor$ControllerState;

    array-length v3, v3

    if-ge v1, v3, :cond_2

    .line 7816
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;->controllerStates:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor$ControllerState;

    aget-object v0, v3, v1

    .line 7817
    .local v0, "element":Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor$ControllerState;
    if-eqz v0, :cond_1

    .line 7818
    const/4 v3, 0x3

    .line 7819
    invoke-static {v3, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 7815
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7823
    .end local v0    # "element":Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor$ControllerState;
    .end local v1    # "i":I
    :cond_2
    return v2
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;
    .locals 6
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 7831
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 7832
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 7836
    invoke-super {p0, p1, v3}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 7837
    :sswitch_0
    return-object p0

    .line 7842
    :sswitch_1
    iget-object v5, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;->startFromHeadTransform:Lcom/google/common/logging/nano/Vr$VREvent$Transform;

    if-nez v5, :cond_1

    .line 7843
    new-instance v5, Lcom/google/common/logging/nano/Vr$VREvent$Transform;

    invoke-direct {v5}, Lcom/google/common/logging/nano/Vr$VREvent$Transform;-><init>()V

    iput-object v5, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;->startFromHeadTransform:Lcom/google/common/logging/nano/Vr$VREvent$Transform;

    .line 7845
    :cond_1
    iget-object v5, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;->startFromHeadTransform:Lcom/google/common/logging/nano/Vr$VREvent$Transform;

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 7849
    :sswitch_2
    const/16 v5, 0x1a

    .line 7850
    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 7851
    .local v0, "arrayLength":I
    iget-object v5, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;->controllerStates:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor$ControllerState;

    if-nez v5, :cond_3

    move v1, v4

    .line 7852
    .local v1, "i":I
    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor$ControllerState;

    .line 7854
    .local v2, "newArray":[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor$ControllerState;
    if-eqz v1, :cond_2

    .line 7855
    iget-object v5, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;->controllerStates:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor$ControllerState;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7857
    :cond_2
    :goto_2
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_4

    .line 7858
    new-instance v5, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor$ControllerState;

    invoke-direct {v5}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor$ControllerState;-><init>()V

    aput-object v5, v2, v1

    .line 7859
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 7860
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 7857
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 7851
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor$ControllerState;
    :cond_3
    iget-object v5, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;->controllerStates:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor$ControllerState;

    array-length v1, v5

    goto :goto_1

    .line 7863
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor$ControllerState;
    :cond_4
    new-instance v5, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor$ControllerState;

    invoke-direct {v5}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor$ControllerState;-><init>()V

    aput-object v5, v2, v1

    .line 7864
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 7865
    iput-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;->controllerStates:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor$ControllerState;

    goto :goto_0

    .line 7832
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x12 -> :sswitch_1
        0x1a -> :sswitch_2
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
    .line 7599
    invoke-virtual {p0, p1}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;

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
    .line 7793
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;->startFromHeadTransform:Lcom/google/common/logging/nano/Vr$VREvent$Transform;

    if-eqz v2, :cond_0

    .line 7794
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;->startFromHeadTransform:Lcom/google/common/logging/nano/Vr$VREvent$Transform;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 7796
    :cond_0
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;->controllerStates:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor$ControllerState;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;->controllerStates:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor$ControllerState;

    array-length v2, v2

    if-lez v2, :cond_2

    .line 7797
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;->controllerStates:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor$ControllerState;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 7798
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;->controllerStates:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor$ControllerState;

    aget-object v0, v2, v1

    .line 7799
    .local v0, "element":Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor$ControllerState;
    if-eqz v0, :cond_1

    .line 7800
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 7797
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7804
    .end local v0    # "element":Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor$ControllerState;
    .end local v1    # "i":I
    :cond_2
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 7805
    return-void
.end method
