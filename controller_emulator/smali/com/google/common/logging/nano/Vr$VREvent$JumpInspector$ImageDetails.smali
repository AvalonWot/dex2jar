.class public final Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$ImageDetails;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Vr.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ImageDetails"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$ImageDetails;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$ImageDetails;


# instance fields
.field public resolution:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$Resolution;

.field public usedMonoFilename:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10868
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 10869
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$ImageDetails;->clear()Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$ImageDetails;

    .line 10870
    return-void
.end method

.method public static emptyArray()[Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$ImageDetails;
    .locals 2

    .prologue
    .line 10849
    sget-object v0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$ImageDetails;->_emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$ImageDetails;

    if-nez v0, :cond_1

    .line 10850
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 10852
    :try_start_0
    sget-object v0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$ImageDetails;->_emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$ImageDetails;

    if-nez v0, :cond_0

    .line 10853
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$ImageDetails;

    sput-object v0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$ImageDetails;->_emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$ImageDetails;

    .line 10855
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10857
    :cond_1
    sget-object v0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$ImageDetails;->_emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$ImageDetails;

    return-object v0

    .line 10855
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$ImageDetails;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10958
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$ImageDetails;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$ImageDetails;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$ImageDetails;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$ImageDetails;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$ImageDetails;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 10952
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$ImageDetails;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$ImageDetails;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$ImageDetails;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$ImageDetails;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 10873
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$ImageDetails;->resolution:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$Resolution;

    .line 10874
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$ImageDetails;->usedMonoFilename:Ljava/lang/Boolean;

    .line 10875
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$ImageDetails;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 10876
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$ImageDetails;->cachedSize:I

    .line 10877
    return-object p0
.end method

.method public clone()Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$ImageDetails;
    .locals 3

    .prologue
    .line 10883
    :try_start_0
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->clone()Lcom/google/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$ImageDetails;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10887
    .local v0, "cloned":Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$ImageDetails;
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$ImageDetails;->resolution:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$Resolution;

    if-eqz v2, :cond_0

    .line 10888
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$ImageDetails;->resolution:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$Resolution;

    invoke-virtual {v2}, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$Resolution;->clone()Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$Resolution;

    move-result-object v2

    iput-object v2, v0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$ImageDetails;->resolution:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$Resolution;

    .line 10890
    :cond_0
    return-object v0

    .line 10884
    .end local v0    # "cloned":Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$ImageDetails;
    :catch_0
    move-exception v1

    .line 10885
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
    .line 10843
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$ImageDetails;->clone()Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$ImageDetails;

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
    .line 10843
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$ImageDetails;->clone()Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$ImageDetails;

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
    .line 10843
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$ImageDetails;->clone()Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$ImageDetails;

    move-result-object v0

    return-object v0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 10908
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 10909
    .local v0, "size":I
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$ImageDetails;->resolution:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$Resolution;

    if-eqz v1, :cond_0

    .line 10910
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$ImageDetails;->resolution:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$Resolution;

    .line 10911
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10913
    :cond_0
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$ImageDetails;->usedMonoFilename:Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    .line 10914
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$ImageDetails;->usedMonoFilename:Ljava/lang/Boolean;

    .line 10915
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 10917
    :cond_1
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$ImageDetails;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10925
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 10926
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 10930
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 10931
    :sswitch_0
    return-object p0

    .line 10936
    :sswitch_1
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$ImageDetails;->resolution:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$Resolution;

    if-nez v1, :cond_1

    .line 10937
    new-instance v1, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$Resolution;

    invoke-direct {v1}, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$Resolution;-><init>()V

    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$ImageDetails;->resolution:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$Resolution;

    .line 10939
    :cond_1
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$ImageDetails;->resolution:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$Resolution;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 10943
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$ImageDetails;->usedMonoFilename:Ljava/lang/Boolean;

    goto :goto_0

    .line 10926
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
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
    .line 10843
    invoke-virtual {p0, p1}, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$ImageDetails;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$ImageDetails;

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
    .line 10897
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$ImageDetails;->resolution:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$Resolution;

    if-eqz v0, :cond_0

    .line 10898
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$ImageDetails;->resolution:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$Resolution;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 10900
    :cond_0
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$ImageDetails;->usedMonoFilename:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 10901
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$ImageDetails;->usedMonoFilename:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 10903
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 10904
    return-void
.end method
