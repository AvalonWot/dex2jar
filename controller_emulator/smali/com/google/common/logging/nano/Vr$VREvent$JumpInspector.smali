.class public final Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;
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
    name = "JumpInspector"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PickerDetails;,
        Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$ImagePlaybackDetails;,
        Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoPlaybackDetails;,
        Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PlaybackDetails;,
        Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$SphericalMetadata;,
        Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$Resolution;,
        Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$AudioDetails;,
        Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$ImageDetails;,
        Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;,
        Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$MediaDetails;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;


# instance fields
.field public mediaDetails:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$MediaDetails;

.field public pickerEvent:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PickerDetails;

.field public playbackDetails:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PlaybackDetails;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11967
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 11968
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;->clear()Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;

    .line 11969
    return-void
.end method

.method public static emptyArray()[Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;
    .locals 2

    .prologue
    .line 11945
    sget-object v0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;->_emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;

    if-nez v0, :cond_1

    .line 11946
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 11948
    :try_start_0
    sget-object v0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;->_emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;

    if-nez v0, :cond_0

    .line 11949
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;

    sput-object v0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;->_emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;

    .line 11951
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11953
    :cond_1
    sget-object v0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;->_emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;

    return-object v0

    .line 11951
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 12081
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 12075
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 11972
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;->mediaDetails:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$MediaDetails;

    .line 11973
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;->playbackDetails:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PlaybackDetails;

    .line 11974
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;->pickerEvent:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PickerDetails;

    .line 11975
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 11976
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;->cachedSize:I

    .line 11977
    return-object p0
.end method

.method public clone()Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;
    .locals 3

    .prologue
    .line 11983
    :try_start_0
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->clone()Lcom/google/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11987
    .local v0, "cloned":Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;->mediaDetails:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$MediaDetails;

    if-eqz v2, :cond_0

    .line 11988
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;->mediaDetails:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$MediaDetails;

    invoke-virtual {v2}, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$MediaDetails;->clone()Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$MediaDetails;

    move-result-object v2

    iput-object v2, v0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;->mediaDetails:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$MediaDetails;

    .line 11990
    :cond_0
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;->playbackDetails:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PlaybackDetails;

    if-eqz v2, :cond_1

    .line 11991
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;->playbackDetails:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PlaybackDetails;

    invoke-virtual {v2}, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PlaybackDetails;->clone()Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PlaybackDetails;

    move-result-object v2

    iput-object v2, v0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;->playbackDetails:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PlaybackDetails;

    .line 11993
    :cond_1
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;->pickerEvent:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PickerDetails;

    if-eqz v2, :cond_2

    .line 11994
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;->pickerEvent:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PickerDetails;

    invoke-virtual {v2}, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PickerDetails;->clone()Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PickerDetails;

    move-result-object v2

    iput-object v2, v0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;->pickerEvent:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PickerDetails;

    .line 11996
    :cond_2
    return-object v0

    .line 11984
    .end local v0    # "cloned":Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;
    :catch_0
    move-exception v1

    .line 11985
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
    .line 10355
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;->clone()Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;

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
    .line 10355
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;->clone()Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;

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
    .line 10355
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;->clone()Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;

    move-result-object v0

    return-object v0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 12017
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 12018
    .local v0, "size":I
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;->mediaDetails:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$MediaDetails;

    if-eqz v1, :cond_0

    .line 12019
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;->mediaDetails:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$MediaDetails;

    .line 12020
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 12022
    :cond_0
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;->playbackDetails:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PlaybackDetails;

    if-eqz v1, :cond_1

    .line 12023
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;->playbackDetails:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PlaybackDetails;

    .line 12024
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 12026
    :cond_1
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;->pickerEvent:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PickerDetails;

    if-eqz v1, :cond_2

    .line 12027
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;->pickerEvent:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PickerDetails;

    .line 12028
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 12030
    :cond_2
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 12038
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 12039
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 12043
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 12044
    :sswitch_0
    return-object p0

    .line 12049
    :sswitch_1
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;->mediaDetails:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$MediaDetails;

    if-nez v1, :cond_1

    .line 12050
    new-instance v1, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$MediaDetails;

    invoke-direct {v1}, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$MediaDetails;-><init>()V

    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;->mediaDetails:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$MediaDetails;

    .line 12052
    :cond_1
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;->mediaDetails:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$MediaDetails;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 12056
    :sswitch_2
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;->playbackDetails:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PlaybackDetails;

    if-nez v1, :cond_2

    .line 12057
    new-instance v1, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PlaybackDetails;

    invoke-direct {v1}, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PlaybackDetails;-><init>()V

    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;->playbackDetails:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PlaybackDetails;

    .line 12059
    :cond_2
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;->playbackDetails:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PlaybackDetails;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 12063
    :sswitch_3
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;->pickerEvent:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PickerDetails;

    if-nez v1, :cond_3

    .line 12064
    new-instance v1, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PickerDetails;

    invoke-direct {v1}, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PickerDetails;-><init>()V

    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;->pickerEvent:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PickerDetails;

    .line 12066
    :cond_3
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;->pickerEvent:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PickerDetails;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 12039
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
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
    .line 10355
    invoke-virtual {p0, p1}, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;

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
    .line 12003
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;->mediaDetails:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$MediaDetails;

    if-eqz v0, :cond_0

    .line 12004
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;->mediaDetails:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$MediaDetails;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 12006
    :cond_0
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;->playbackDetails:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PlaybackDetails;

    if-eqz v0, :cond_1

    .line 12007
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;->playbackDetails:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PlaybackDetails;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 12009
    :cond_1
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;->pickerEvent:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PickerDetails;

    if-eqz v0, :cond_2

    .line 12010
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;->pickerEvent:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PickerDetails;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 12012
    :cond_2
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 12013
    return-void
.end method
