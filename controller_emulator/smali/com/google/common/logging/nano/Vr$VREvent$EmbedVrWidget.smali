.class public final Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget;
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
    name = "EmbedVrWidget"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget$Video;,
        Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget$Pano;,
        Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget$ViewMode;,
        Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget$StereoFormat;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget;


# instance fields
.field public errorMsg:Ljava/lang/String;

.field public pano:Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget$Pano;

.field public video:Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget$Video;

.field public viewMode:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5636
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 5637
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget;->clear()Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget;

    .line 5638
    return-void
.end method

.method public static emptyArray()[Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget;
    .locals 2

    .prologue
    .line 5611
    sget-object v0, Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget;->_emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget;

    if-nez v0, :cond_1

    .line 5612
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 5614
    :try_start_0
    sget-object v0, Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget;->_emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget;

    if-nez v0, :cond_0

    .line 5615
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget;

    sput-object v0, Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget;->_emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget;

    .line 5617
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5619
    :cond_1
    sget-object v0, Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget;->_emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget;

    return-object v0

    .line 5617
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5763
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 5757
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 5641
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget;->pano:Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget$Pano;

    .line 5642
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget;->video:Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget$Video;

    .line 5643
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget;->errorMsg:Ljava/lang/String;

    .line 5644
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 5645
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget;->cachedSize:I

    .line 5646
    return-object p0
.end method

.method public clone()Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget;
    .locals 3

    .prologue
    .line 5652
    :try_start_0
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->clone()Lcom/google/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5656
    .local v0, "cloned":Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget;
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget;->pano:Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget$Pano;

    if-eqz v2, :cond_0

    .line 5657
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget;->pano:Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget$Pano;

    invoke-virtual {v2}, Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget$Pano;->clone()Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget$Pano;

    move-result-object v2

    iput-object v2, v0, Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget;->pano:Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget$Pano;

    .line 5659
    :cond_0
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget;->video:Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget$Video;

    if-eqz v2, :cond_1

    .line 5660
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget;->video:Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget$Video;

    invoke-virtual {v2}, Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget$Video;->clone()Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget$Video;

    move-result-object v2

    iput-object v2, v0, Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget;->video:Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget$Video;

    .line 5662
    :cond_1
    return-object v0

    .line 5653
    .end local v0    # "cloned":Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget;
    :catch_0
    move-exception v1

    .line 5654
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
    .line 5307
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget;->clone()Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget;

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
    .line 5307
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget;->clone()Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget;

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
    .line 5307
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget;->clone()Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget;

    move-result-object v0

    return-object v0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 5686
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 5687
    .local v0, "size":I
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget;->viewMode:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 5688
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget;->viewMode:Ljava/lang/Integer;

    .line 5689
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5691
    :cond_0
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget;->pano:Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget$Pano;

    if-eqz v1, :cond_1

    .line 5692
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget;->pano:Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget$Pano;

    .line 5693
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5695
    :cond_1
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget;->video:Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget$Video;

    if-eqz v1, :cond_2

    .line 5696
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget;->video:Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget$Video;

    .line 5697
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5699
    :cond_2
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget;->errorMsg:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 5700
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget;->errorMsg:Ljava/lang/String;

    .line 5701
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5703
    :cond_3
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget;
    .locals 3
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5711
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 5712
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 5716
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5717
    :sswitch_0
    return-object p0

    .line 5722
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    .line 5723
    .local v1, "value":I
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 5728
    :pswitch_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget;->viewMode:Ljava/lang/Integer;

    goto :goto_0

    .line 5734
    .end local v1    # "value":I
    :sswitch_2
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget;->pano:Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget$Pano;

    if-nez v2, :cond_1

    .line 5735
    new-instance v2, Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget$Pano;

    invoke-direct {v2}, Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget$Pano;-><init>()V

    iput-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget;->pano:Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget$Pano;

    .line 5737
    :cond_1
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget;->pano:Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget$Pano;

    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 5741
    :sswitch_3
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget;->video:Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget$Video;

    if-nez v2, :cond_2

    .line 5742
    new-instance v2, Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget$Video;

    invoke-direct {v2}, Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget$Video;-><init>()V

    iput-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget;->video:Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget$Video;

    .line 5744
    :cond_2
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget;->video:Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget$Video;

    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 5748
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget;->errorMsg:Ljava/lang/String;

    goto :goto_0

    .line 5712
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
    .end sparse-switch

    .line 5723
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
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
    .line 5307
    invoke-virtual {p0, p1}, Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget;

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
    .line 5669
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget;->viewMode:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 5670
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget;->viewMode:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 5672
    :cond_0
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget;->pano:Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget$Pano;

    if-eqz v0, :cond_1

    .line 5673
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget;->pano:Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget$Pano;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 5675
    :cond_1
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget;->video:Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget$Video;

    if-eqz v0, :cond_2

    .line 5676
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget;->video:Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget$Video;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 5678
    :cond_2
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget;->errorMsg:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 5679
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget;->errorMsg:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 5681
    :cond_3
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 5682
    return-void
.end method
