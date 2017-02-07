.class public final Lcom/google/common/logging/nano/Vr$VREvent$VrCore;
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
    name = "VrCore"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;,
        Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Permission;,
        Lcom/google/common/logging/nano/Vr$VREvent$VrCore$ErrorCode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/common/logging/nano/Vr$VREvent$VrCore;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$VrCore;


# instance fields
.field public clientApiVersion:Ljava/lang/Integer;

.field public controller:Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;

.field public errorCode:Ljava/lang/Integer;

.field public foregroundApplication:Lcom/google/common/logging/nano/Vr$VREvent$Application;

.field public permission:Ljava/lang/Integer;

.field public previousForegroundApplication:Lcom/google/common/logging/nano/Vr$VREvent$Application;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6542
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 6543
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->clear()Lcom/google/common/logging/nano/Vr$VREvent$VrCore;

    .line 6544
    return-void
.end method

.method public static emptyArray()[Lcom/google/common/logging/nano/Vr$VREvent$VrCore;
    .locals 2

    .prologue
    .line 6511
    sget-object v0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->_emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$VrCore;

    if-nez v0, :cond_1

    .line 6512
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 6514
    :try_start_0
    sget-object v0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->_emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$VrCore;

    if-nez v0, :cond_0

    .line 6515
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/common/logging/nano/Vr$VREvent$VrCore;

    sput-object v0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->_emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$VrCore;

    .line 6517
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6519
    :cond_1
    sget-object v0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->_emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$VrCore;

    return-object v0

    .line 6517
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent$VrCore;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6761
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent$VrCore;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/common/logging/nano/Vr$VREvent$VrCore;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 6755
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/common/logging/nano/Vr$VREvent$VrCore;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 6547
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->foregroundApplication:Lcom/google/common/logging/nano/Vr$VREvent$Application;

    .line 6548
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->clientApiVersion:Ljava/lang/Integer;

    .line 6549
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->previousForegroundApplication:Lcom/google/common/logging/nano/Vr$VREvent$Application;

    .line 6550
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->controller:Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;

    .line 6551
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 6552
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->cachedSize:I

    .line 6553
    return-object p0
.end method

.method public clone()Lcom/google/common/logging/nano/Vr$VREvent$VrCore;
    .locals 3

    .prologue
    .line 6559
    :try_start_0
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->clone()Lcom/google/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6563
    .local v0, "cloned":Lcom/google/common/logging/nano/Vr$VREvent$VrCore;
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->foregroundApplication:Lcom/google/common/logging/nano/Vr$VREvent$Application;

    if-eqz v2, :cond_0

    .line 6564
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->foregroundApplication:Lcom/google/common/logging/nano/Vr$VREvent$Application;

    invoke-virtual {v2}, Lcom/google/common/logging/nano/Vr$VREvent$Application;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Application;

    move-result-object v2

    iput-object v2, v0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->foregroundApplication:Lcom/google/common/logging/nano/Vr$VREvent$Application;

    .line 6566
    :cond_0
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->previousForegroundApplication:Lcom/google/common/logging/nano/Vr$VREvent$Application;

    if-eqz v2, :cond_1

    .line 6567
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->previousForegroundApplication:Lcom/google/common/logging/nano/Vr$VREvent$Application;

    invoke-virtual {v2}, Lcom/google/common/logging/nano/Vr$VREvent$Application;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Application;

    move-result-object v2

    iput-object v2, v0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->previousForegroundApplication:Lcom/google/common/logging/nano/Vr$VREvent$Application;

    .line 6569
    :cond_1
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->controller:Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;

    if-eqz v2, :cond_2

    .line 6570
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->controller:Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;

    invoke-virtual {v2}, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->clone()Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;

    move-result-object v2

    iput-object v2, v0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->controller:Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;

    .line 6572
    :cond_2
    return-object v0

    .line 6560
    .end local v0    # "cloned":Lcom/google/common/logging/nano/Vr$VREvent$VrCore;
    :catch_0
    move-exception v1

    .line 6561
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
    .line 6113
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->clone()Lcom/google/common/logging/nano/Vr$VREvent$VrCore;

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
    .line 6113
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->clone()Lcom/google/common/logging/nano/Vr$VREvent$VrCore;

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
    .line 6113
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->clone()Lcom/google/common/logging/nano/Vr$VREvent$VrCore;

    move-result-object v0

    return-object v0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 6602
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 6603
    .local v0, "size":I
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->errorCode:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 6604
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->errorCode:Ljava/lang/Integer;

    .line 6605
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6607
    :cond_0
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->permission:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 6608
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->permission:Ljava/lang/Integer;

    .line 6609
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6611
    :cond_1
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->foregroundApplication:Lcom/google/common/logging/nano/Vr$VREvent$Application;

    if-eqz v1, :cond_2

    .line 6612
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->foregroundApplication:Lcom/google/common/logging/nano/Vr$VREvent$Application;

    .line 6613
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6615
    :cond_2
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->clientApiVersion:Ljava/lang/Integer;

    if-eqz v1, :cond_3

    .line 6616
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->clientApiVersion:Ljava/lang/Integer;

    .line 6617
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6619
    :cond_3
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->previousForegroundApplication:Lcom/google/common/logging/nano/Vr$VREvent$Application;

    if-eqz v1, :cond_4

    .line 6620
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->previousForegroundApplication:Lcom/google/common/logging/nano/Vr$VREvent$Application;

    .line 6621
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6623
    :cond_4
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->controller:Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;

    if-eqz v1, :cond_5

    .line 6624
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->controller:Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;

    .line 6625
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6627
    :cond_5
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent$VrCore;
    .locals 3
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6635
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 6636
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 6640
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 6641
    :sswitch_0
    return-object p0

    .line 6646
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    .line 6647
    .local v1, "value":I
    sparse-switch v1, :sswitch_data_1

    goto :goto_0

    .line 6702
    :sswitch_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->errorCode:Ljava/lang/Integer;

    goto :goto_0

    .line 6708
    .end local v1    # "value":I
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    .line 6709
    .restart local v1    # "value":I
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 6719
    :pswitch_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->permission:Ljava/lang/Integer;

    goto :goto_0

    .line 6725
    .end local v1    # "value":I
    :sswitch_4
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->foregroundApplication:Lcom/google/common/logging/nano/Vr$VREvent$Application;

    if-nez v2, :cond_1

    .line 6726
    new-instance v2, Lcom/google/common/logging/nano/Vr$VREvent$Application;

    invoke-direct {v2}, Lcom/google/common/logging/nano/Vr$VREvent$Application;-><init>()V

    iput-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->foregroundApplication:Lcom/google/common/logging/nano/Vr$VREvent$Application;

    .line 6728
    :cond_1
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->foregroundApplication:Lcom/google/common/logging/nano/Vr$VREvent$Application;

    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 6732
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->clientApiVersion:Ljava/lang/Integer;

    goto :goto_0

    .line 6736
    :sswitch_6
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->previousForegroundApplication:Lcom/google/common/logging/nano/Vr$VREvent$Application;

    if-nez v2, :cond_2

    .line 6737
    new-instance v2, Lcom/google/common/logging/nano/Vr$VREvent$Application;

    invoke-direct {v2}, Lcom/google/common/logging/nano/Vr$VREvent$Application;-><init>()V

    iput-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->previousForegroundApplication:Lcom/google/common/logging/nano/Vr$VREvent$Application;

    .line 6739
    :cond_2
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->previousForegroundApplication:Lcom/google/common/logging/nano/Vr$VREvent$Application;

    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 6743
    :sswitch_7
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->controller:Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;

    if-nez v2, :cond_3

    .line 6744
    new-instance v2, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;

    invoke-direct {v2}, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;-><init>()V

    iput-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->controller:Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;

    .line 6746
    :cond_3
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->controller:Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;

    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 6636
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_3
        0x1a -> :sswitch_4
        0x20 -> :sswitch_5
        0x2a -> :sswitch_6
        0x32 -> :sswitch_7
    .end sparse-switch

    .line 6647
    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_2
        0x1 -> :sswitch_2
        0x65 -> :sswitch_2
        0x66 -> :sswitch_2
        0x67 -> :sswitch_2
        0x68 -> :sswitch_2
        0x69 -> :sswitch_2
        0x6a -> :sswitch_2
        0x6b -> :sswitch_2
        0x6c -> :sswitch_2
        0x6d -> :sswitch_2
        0x6e -> :sswitch_2
        0x6f -> :sswitch_2
        0x70 -> :sswitch_2
        0x71 -> :sswitch_2
        0x72 -> :sswitch_2
        0x73 -> :sswitch_2
        0x74 -> :sswitch_2
        0x75 -> :sswitch_2
        0x76 -> :sswitch_2
        0x77 -> :sswitch_2
        0x78 -> :sswitch_2
        0x79 -> :sswitch_2
        0x7a -> :sswitch_2
        0x7b -> :sswitch_2
        0x7c -> :sswitch_2
        0x7d -> :sswitch_2
        0x7e -> :sswitch_2
        0x7f -> :sswitch_2
        0x97 -> :sswitch_2
        0x98 -> :sswitch_2
        0x99 -> :sswitch_2
        0xb0 -> :sswitch_2
        0xb1 -> :sswitch_2
        0xb2 -> :sswitch_2
        0xb3 -> :sswitch_2
        0xb4 -> :sswitch_2
        0xb5 -> :sswitch_2
        0xb6 -> :sswitch_2
        0xb7 -> :sswitch_2
        0xb8 -> :sswitch_2
        0xb9 -> :sswitch_2
        0xba -> :sswitch_2
        0xbb -> :sswitch_2
        0xbc -> :sswitch_2
        0xbd -> :sswitch_2
        0xbe -> :sswitch_2
        0xbf -> :sswitch_2
        0xc9 -> :sswitch_2
        0xca -> :sswitch_2
        0xcb -> :sswitch_2
        0x12d -> :sswitch_2
        0x191 -> :sswitch_2
        0x192 -> :sswitch_2
    .end sparse-switch

    .line 6709
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
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
    .line 6113
    invoke-virtual {p0, p1}, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent$VrCore;

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
    .line 6579
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->errorCode:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 6580
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->errorCode:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 6582
    :cond_0
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->permission:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 6583
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->permission:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 6585
    :cond_1
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->foregroundApplication:Lcom/google/common/logging/nano/Vr$VREvent$Application;

    if-eqz v0, :cond_2

    .line 6586
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->foregroundApplication:Lcom/google/common/logging/nano/Vr$VREvent$Application;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 6588
    :cond_2
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->clientApiVersion:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    .line 6589
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->clientApiVersion:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 6591
    :cond_3
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->previousForegroundApplication:Lcom/google/common/logging/nano/Vr$VREvent$Application;

    if-eqz v0, :cond_4

    .line 6592
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->previousForegroundApplication:Lcom/google/common/logging/nano/Vr$VREvent$Application;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 6594
    :cond_4
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->controller:Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;

    if-eqz v0, :cond_5

    .line 6595
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->controller:Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 6597
    :cond_5
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 6598
    return-void
.end method
