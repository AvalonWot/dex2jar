.class public final Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoPlaybackDetails;
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
    name = "VideoPlaybackDetails"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoPlaybackDetails;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoPlaybackDetails;


# instance fields
.field public droppedFramesCount:Ljava/lang/Integer;

.field public playbackMode:Ljava/lang/Integer;

.field public usedExternalSync:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11619
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 11620
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoPlaybackDetails;->clear()Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoPlaybackDetails;

    .line 11621
    return-void
.end method

.method public static emptyArray()[Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoPlaybackDetails;
    .locals 2

    .prologue
    .line 11597
    sget-object v0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoPlaybackDetails;->_emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoPlaybackDetails;

    if-nez v0, :cond_1

    .line 11598
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 11600
    :try_start_0
    sget-object v0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoPlaybackDetails;->_emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoPlaybackDetails;

    if-nez v0, :cond_0

    .line 11601
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoPlaybackDetails;

    sput-object v0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoPlaybackDetails;->_emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoPlaybackDetails;

    .line 11603
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11605
    :cond_1
    sget-object v0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoPlaybackDetails;->_emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoPlaybackDetails;

    return-object v0

    .line 11603
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoPlaybackDetails;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 11721
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoPlaybackDetails;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoPlaybackDetails;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoPlaybackDetails;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoPlaybackDetails;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoPlaybackDetails;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 11715
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoPlaybackDetails;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoPlaybackDetails;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoPlaybackDetails;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoPlaybackDetails;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 11624
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoPlaybackDetails;->usedExternalSync:Ljava/lang/Boolean;

    .line 11625
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoPlaybackDetails;->droppedFramesCount:Ljava/lang/Integer;

    .line 11626
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoPlaybackDetails;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 11627
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoPlaybackDetails;->cachedSize:I

    .line 11628
    return-object p0
.end method

.method public clone()Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoPlaybackDetails;
    .locals 3

    .prologue
    .line 11634
    :try_start_0
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->clone()Lcom/google/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoPlaybackDetails;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11638
    .local v0, "cloned":Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoPlaybackDetails;
    return-object v0

    .line 11635
    .end local v0    # "cloned":Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoPlaybackDetails;
    :catch_0
    move-exception v1

    .line 11636
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
    .line 11591
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoPlaybackDetails;->clone()Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoPlaybackDetails;

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
    .line 11591
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoPlaybackDetails;->clone()Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoPlaybackDetails;

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
    .line 11591
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoPlaybackDetails;->clone()Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoPlaybackDetails;

    move-result-object v0

    return-object v0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 11659
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 11660
    .local v0, "size":I
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoPlaybackDetails;->playbackMode:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 11661
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoPlaybackDetails;->playbackMode:Ljava/lang/Integer;

    .line 11662
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 11664
    :cond_0
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoPlaybackDetails;->usedExternalSync:Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    .line 11665
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoPlaybackDetails;->usedExternalSync:Ljava/lang/Boolean;

    .line 11666
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 11668
    :cond_1
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoPlaybackDetails;->droppedFramesCount:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    .line 11669
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoPlaybackDetails;->droppedFramesCount:Ljava/lang/Integer;

    .line 11670
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 11672
    :cond_2
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoPlaybackDetails;
    .locals 3
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 11680
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 11681
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 11685
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 11686
    :sswitch_0
    return-object p0

    .line 11691
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    .line 11692
    .local v1, "value":I
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 11696
    :pswitch_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoPlaybackDetails;->playbackMode:Ljava/lang/Integer;

    goto :goto_0

    .line 11702
    .end local v1    # "value":I
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoPlaybackDetails;->usedExternalSync:Ljava/lang/Boolean;

    goto :goto_0

    .line 11706
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoPlaybackDetails;->droppedFramesCount:Ljava/lang/Integer;

    goto :goto_0

    .line 11681
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
    .end sparse-switch

    .line 11692
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 11591
    invoke-virtual {p0, p1}, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoPlaybackDetails;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoPlaybackDetails;

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
    .line 11645
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoPlaybackDetails;->playbackMode:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 11646
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoPlaybackDetails;->playbackMode:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 11648
    :cond_0
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoPlaybackDetails;->usedExternalSync:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 11649
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoPlaybackDetails;->usedExternalSync:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 11651
    :cond_1
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoPlaybackDetails;->droppedFramesCount:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 11652
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoPlaybackDetails;->droppedFramesCount:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 11654
    :cond_2
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 11655
    return-void
.end method
