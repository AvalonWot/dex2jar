.class public final Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;
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
    name = "Lullaby"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/logging/nano/Vr$VREvent$Lullaby$LoadTime;,
        Lcom/google/common/logging/nano/Vr$VREvent$Lullaby$UiElement;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;


# instance fields
.field public contentId:Ljava/lang/String;

.field public index:Ljava/lang/Integer;

.field public loadTime:Lcom/google/common/logging/nano/Vr$VREvent$Lullaby$LoadTime;

.field public uiElement:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9633
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 9634
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;->clear()Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;

    .line 9635
    return-void
.end method

.method public static emptyArray()[Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;
    .locals 2

    .prologue
    .line 9608
    sget-object v0, Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;->_emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;

    if-nez v0, :cond_1

    .line 9609
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 9611
    :try_start_0
    sget-object v0, Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;->_emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;

    if-nez v0, :cond_0

    .line 9612
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;

    sput-object v0, Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;->_emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;

    .line 9614
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9616
    :cond_1
    sget-object v0, Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;->_emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;

    return-object v0

    .line 9614
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9782
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 9776
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 9638
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;->index:Ljava/lang/Integer;

    .line 9639
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;->contentId:Ljava/lang/String;

    .line 9640
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;->loadTime:Lcom/google/common/logging/nano/Vr$VREvent$Lullaby$LoadTime;

    .line 9641
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 9642
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;->cachedSize:I

    .line 9643
    return-object p0
.end method

.method public clone()Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;
    .locals 3

    .prologue
    .line 9649
    :try_start_0
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->clone()Lcom/google/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9653
    .local v0, "cloned":Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;->loadTime:Lcom/google/common/logging/nano/Vr$VREvent$Lullaby$LoadTime;

    if-eqz v2, :cond_0

    .line 9654
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;->loadTime:Lcom/google/common/logging/nano/Vr$VREvent$Lullaby$LoadTime;

    invoke-virtual {v2}, Lcom/google/common/logging/nano/Vr$VREvent$Lullaby$LoadTime;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Lullaby$LoadTime;

    move-result-object v2

    iput-object v2, v0, Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;->loadTime:Lcom/google/common/logging/nano/Vr$VREvent$Lullaby$LoadTime;

    .line 9656
    :cond_0
    return-object v0

    .line 9650
    .end local v0    # "cloned":Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;
    :catch_0
    move-exception v1

    .line 9651
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
    .line 9424
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;

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
    .line 9424
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;

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
    .line 9424
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;

    move-result-object v0

    return-object v0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 9680
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 9681
    .local v0, "size":I
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;->uiElement:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 9682
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;->uiElement:Ljava/lang/Integer;

    .line 9683
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 9685
    :cond_0
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;->index:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 9686
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;->index:Ljava/lang/Integer;

    .line 9687
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 9689
    :cond_1
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;->contentId:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 9690
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;->contentId:Ljava/lang/String;

    .line 9691
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9693
    :cond_2
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;->loadTime:Lcom/google/common/logging/nano/Vr$VREvent$Lullaby$LoadTime;

    if-eqz v1, :cond_3

    .line 9694
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;->loadTime:Lcom/google/common/logging/nano/Vr$VREvent$Lullaby$LoadTime;

    .line 9695
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9697
    :cond_3
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;
    .locals 3
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9705
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 9706
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 9710
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 9711
    :sswitch_0
    return-object p0

    .line 9716
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    .line 9717
    .local v1, "value":I
    sparse-switch v1, :sswitch_data_1

    goto :goto_0

    .line 9750
    :sswitch_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;->uiElement:Ljava/lang/Integer;

    goto :goto_0

    .line 9756
    .end local v1    # "value":I
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;->index:Ljava/lang/Integer;

    goto :goto_0

    .line 9760
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;->contentId:Ljava/lang/String;

    goto :goto_0

    .line 9764
    :sswitch_5
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;->loadTime:Lcom/google/common/logging/nano/Vr$VREvent$Lullaby$LoadTime;

    if-nez v2, :cond_1

    .line 9765
    new-instance v2, Lcom/google/common/logging/nano/Vr$VREvent$Lullaby$LoadTime;

    invoke-direct {v2}, Lcom/google/common/logging/nano/Vr$VREvent$Lullaby$LoadTime;-><init>()V

    iput-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;->loadTime:Lcom/google/common/logging/nano/Vr$VREvent$Lullaby$LoadTime;

    .line 9767
    :cond_1
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;->loadTime:Lcom/google/common/logging/nano/Vr$VREvent$Lullaby$LoadTime;

    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 9706
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_3
        0x1a -> :sswitch_4
        0x22 -> :sswitch_5
    .end sparse-switch

    .line 9717
    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_2
        0x1 -> :sswitch_2
        0x3e8 -> :sswitch_2
        0x3e9 -> :sswitch_2
        0x3ea -> :sswitch_2
        0x3eb -> :sswitch_2
        0x3ec -> :sswitch_2
        0x3ed -> :sswitch_2
        0x3ee -> :sswitch_2
        0x3ef -> :sswitch_2
        0x7d0 -> :sswitch_2
        0x7d1 -> :sswitch_2
        0x7d2 -> :sswitch_2
        0x7d3 -> :sswitch_2
        0x7d4 -> :sswitch_2
        0x7d5 -> :sswitch_2
        0x7d6 -> :sswitch_2
        0x7d7 -> :sswitch_2
        0x7d8 -> :sswitch_2
        0x7d9 -> :sswitch_2
        0x7da -> :sswitch_2
        0x7db -> :sswitch_2
        0x7dc -> :sswitch_2
        0x7dd -> :sswitch_2
        0x7de -> :sswitch_2
        0x7df -> :sswitch_2
        0x7e0 -> :sswitch_2
        0x7e1 -> :sswitch_2
        0x7e2 -> :sswitch_2
        0x7e3 -> :sswitch_2
        0x7e4 -> :sswitch_2
        0x7e5 -> :sswitch_2
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
    .line 9424
    invoke-virtual {p0, p1}, Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;

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
    .line 9663
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;->uiElement:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 9664
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;->uiElement:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 9666
    :cond_0
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;->index:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 9667
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;->index:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 9669
    :cond_1
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;->contentId:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 9670
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;->contentId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 9672
    :cond_2
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;->loadTime:Lcom/google/common/logging/nano/Vr$VREvent$Lullaby$LoadTime;

    if-eqz v0, :cond_3

    .line 9673
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;->loadTime:Lcom/google/common/logging/nano/Vr$VREvent$Lullaby$LoadTime;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 9675
    :cond_3
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 9676
    return-void
.end method
