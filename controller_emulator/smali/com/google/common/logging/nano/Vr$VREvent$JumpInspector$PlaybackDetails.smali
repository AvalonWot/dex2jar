.class public final Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PlaybackDetails;
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
    name = "PlaybackDetails"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PlaybackDetails$PlaybackMode;,
        Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PlaybackDetails$PlaybackEngine;,
        Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PlaybackDetails$PlaybackState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PlaybackDetails;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PlaybackDetails;


# instance fields
.field public imagePlayback:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$ImagePlaybackDetails;

.field public playbackDurationSeconds:Ljava/lang/Long;

.field public playbackEngine:Ljava/lang/Integer;

.field public playbackState:Ljava/lang/Integer;

.field public videoPlayback:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoPlaybackDetails;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11442
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 11443
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PlaybackDetails;->clear()Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PlaybackDetails;

    .line 11444
    return-void
.end method

.method public static emptyArray()[Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PlaybackDetails;
    .locals 2

    .prologue
    .line 11414
    sget-object v0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PlaybackDetails;->_emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PlaybackDetails;

    if-nez v0, :cond_1

    .line 11415
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 11417
    :try_start_0
    sget-object v0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PlaybackDetails;->_emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PlaybackDetails;

    if-nez v0, :cond_0

    .line 11418
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PlaybackDetails;

    sput-object v0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PlaybackDetails;->_emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PlaybackDetails;

    .line 11420
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11422
    :cond_1
    sget-object v0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PlaybackDetails;->_emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PlaybackDetails;

    return-object v0

    .line 11420
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PlaybackDetails;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 11587
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PlaybackDetails;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PlaybackDetails;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PlaybackDetails;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PlaybackDetails;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PlaybackDetails;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 11581
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PlaybackDetails;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PlaybackDetails;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PlaybackDetails;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PlaybackDetails;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 11447
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PlaybackDetails;->playbackDurationSeconds:Ljava/lang/Long;

    .line 11448
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PlaybackDetails;->videoPlayback:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoPlaybackDetails;

    .line 11449
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PlaybackDetails;->imagePlayback:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$ImagePlaybackDetails;

    .line 11450
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PlaybackDetails;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 11451
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PlaybackDetails;->cachedSize:I

    .line 11452
    return-object p0
.end method

.method public clone()Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PlaybackDetails;
    .locals 3

    .prologue
    .line 11458
    :try_start_0
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->clone()Lcom/google/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PlaybackDetails;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11462
    .local v0, "cloned":Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PlaybackDetails;
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PlaybackDetails;->videoPlayback:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoPlaybackDetails;

    if-eqz v2, :cond_0

    .line 11463
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PlaybackDetails;->videoPlayback:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoPlaybackDetails;

    invoke-virtual {v2}, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoPlaybackDetails;->clone()Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoPlaybackDetails;

    move-result-object v2

    iput-object v2, v0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PlaybackDetails;->videoPlayback:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoPlaybackDetails;

    .line 11465
    :cond_0
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PlaybackDetails;->imagePlayback:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$ImagePlaybackDetails;

    if-eqz v2, :cond_1

    .line 11466
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PlaybackDetails;->imagePlayback:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$ImagePlaybackDetails;

    invoke-virtual {v2}, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$ImagePlaybackDetails;->clone()Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$ImagePlaybackDetails;

    move-result-object v2

    iput-object v2, v0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PlaybackDetails;->imagePlayback:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$ImagePlaybackDetails;

    .line 11468
    :cond_1
    return-object v0

    .line 11459
    .end local v0    # "cloned":Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PlaybackDetails;
    :catch_0
    move-exception v1

    .line 11460
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
    .line 11386
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PlaybackDetails;->clone()Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PlaybackDetails;

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
    .line 11386
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PlaybackDetails;->clone()Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PlaybackDetails;

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
    .line 11386
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PlaybackDetails;->clone()Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PlaybackDetails;

    move-result-object v0

    return-object v0
.end method

.method protected computeSerializedSize()I
    .locals 4

    .prologue
    .line 11495
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 11496
    .local v0, "size":I
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PlaybackDetails;->playbackState:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 11497
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PlaybackDetails;->playbackState:Ljava/lang/Integer;

    .line 11498
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 11500
    :cond_0
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PlaybackDetails;->playbackDurationSeconds:Ljava/lang/Long;

    if-eqz v1, :cond_1

    .line 11501
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PlaybackDetails;->playbackDurationSeconds:Ljava/lang/Long;

    .line 11502
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 11504
    :cond_1
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PlaybackDetails;->playbackEngine:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    .line 11505
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PlaybackDetails;->playbackEngine:Ljava/lang/Integer;

    .line 11506
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 11508
    :cond_2
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PlaybackDetails;->videoPlayback:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoPlaybackDetails;

    if-eqz v1, :cond_3

    .line 11509
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PlaybackDetails;->videoPlayback:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoPlaybackDetails;

    .line 11510
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 11512
    :cond_3
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PlaybackDetails;->imagePlayback:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$ImagePlaybackDetails;

    if-eqz v1, :cond_4

    .line 11513
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PlaybackDetails;->imagePlayback:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$ImagePlaybackDetails;

    .line 11514
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 11516
    :cond_4
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PlaybackDetails;
    .locals 4
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 11524
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 11525
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 11529
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 11530
    :sswitch_0
    return-object p0

    .line 11535
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    .line 11536
    .local v1, "value":I
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 11541
    :pswitch_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PlaybackDetails;->playbackState:Ljava/lang/Integer;

    goto :goto_0

    .line 11547
    .end local v1    # "value":I
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PlaybackDetails;->playbackDurationSeconds:Ljava/lang/Long;

    goto :goto_0

    .line 11551
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    .line 11552
    .restart local v1    # "value":I
    packed-switch v1, :pswitch_data_1

    goto :goto_0

    .line 11556
    :pswitch_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PlaybackDetails;->playbackEngine:Ljava/lang/Integer;

    goto :goto_0

    .line 11562
    .end local v1    # "value":I
    :sswitch_4
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PlaybackDetails;->videoPlayback:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoPlaybackDetails;

    if-nez v2, :cond_1

    .line 11563
    new-instance v2, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoPlaybackDetails;

    invoke-direct {v2}, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoPlaybackDetails;-><init>()V

    iput-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PlaybackDetails;->videoPlayback:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoPlaybackDetails;

    .line 11565
    :cond_1
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PlaybackDetails;->videoPlayback:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoPlaybackDetails;

    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 11569
    :sswitch_5
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PlaybackDetails;->imagePlayback:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$ImagePlaybackDetails;

    if-nez v2, :cond_2

    .line 11570
    new-instance v2, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$ImagePlaybackDetails;

    invoke-direct {v2}, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$ImagePlaybackDetails;-><init>()V

    iput-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PlaybackDetails;->imagePlayback:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$ImagePlaybackDetails;

    .line 11572
    :cond_2
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PlaybackDetails;->imagePlayback:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$ImagePlaybackDetails;

    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 11525
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
    .end sparse-switch

    .line 11536
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 11552
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
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
    .line 11386
    invoke-virtual {p0, p1}, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PlaybackDetails;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PlaybackDetails;

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
    .line 11475
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PlaybackDetails;->playbackState:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 11476
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PlaybackDetails;->playbackState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 11478
    :cond_0
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PlaybackDetails;->playbackDurationSeconds:Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 11479
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PlaybackDetails;->playbackDurationSeconds:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 11481
    :cond_1
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PlaybackDetails;->playbackEngine:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 11482
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PlaybackDetails;->playbackEngine:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 11484
    :cond_2
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PlaybackDetails;->videoPlayback:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoPlaybackDetails;

    if-eqz v0, :cond_3

    .line 11485
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PlaybackDetails;->videoPlayback:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoPlaybackDetails;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 11487
    :cond_3
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PlaybackDetails;->imagePlayback:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$ImagePlaybackDetails;

    if-eqz v0, :cond_4

    .line 11488
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PlaybackDetails;->imagePlayback:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$ImagePlaybackDetails;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 11490
    :cond_4
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 11491
    return-void
.end method
