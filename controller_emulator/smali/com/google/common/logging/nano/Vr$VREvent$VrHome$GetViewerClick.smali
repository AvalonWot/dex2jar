.class public final Lcom/google/common/logging/nano/Vr$VREvent$VrHome$GetViewerClick;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Vr.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/logging/nano/Vr$VREvent$VrHome;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GetViewerClick"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/common/logging/nano/Vr$VREvent$VrHome$GetViewerClick;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$VrHome$GetViewerClick;


# instance fields
.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2635
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 2636
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$VrHome$GetViewerClick;->clear()Lcom/google/common/logging/nano/Vr$VREvent$VrHome$GetViewerClick;

    .line 2637
    return-void
.end method

.method public static emptyArray()[Lcom/google/common/logging/nano/Vr$VREvent$VrHome$GetViewerClick;
    .locals 2

    .prologue
    .line 2619
    sget-object v0, Lcom/google/common/logging/nano/Vr$VREvent$VrHome$GetViewerClick;->_emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$VrHome$GetViewerClick;

    if-nez v0, :cond_1

    .line 2620
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 2622
    :try_start_0
    sget-object v0, Lcom/google/common/logging/nano/Vr$VREvent$VrHome$GetViewerClick;->_emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$VrHome$GetViewerClick;

    if-nez v0, :cond_0

    .line 2623
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/common/logging/nano/Vr$VREvent$VrHome$GetViewerClick;

    sput-object v0, Lcom/google/common/logging/nano/Vr$VREvent$VrHome$GetViewerClick;->_emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$VrHome$GetViewerClick;

    .line 2625
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2627
    :cond_1
    sget-object v0, Lcom/google/common/logging/nano/Vr$VREvent$VrHome$GetViewerClick;->_emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$VrHome$GetViewerClick;

    return-object v0

    .line 2625
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent$VrHome$GetViewerClick;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2707
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$VrHome$GetViewerClick;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$VrHome$GetViewerClick;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/common/logging/nano/Vr$VREvent$VrHome$GetViewerClick;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent$VrHome$GetViewerClick;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/common/logging/nano/Vr$VREvent$VrHome$GetViewerClick;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 2701
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$VrHome$GetViewerClick;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$VrHome$GetViewerClick;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/nano/Vr$VREvent$VrHome$GetViewerClick;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/common/logging/nano/Vr$VREvent$VrHome$GetViewerClick;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2640
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrHome$GetViewerClick;->url:Ljava/lang/String;

    .line 2641
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrHome$GetViewerClick;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 2642
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrHome$GetViewerClick;->cachedSize:I

    .line 2643
    return-object p0
.end method

.method public clone()Lcom/google/common/logging/nano/Vr$VREvent$VrHome$GetViewerClick;
    .locals 3

    .prologue
    .line 2649
    :try_start_0
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->clone()Lcom/google/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/nano/Vr$VREvent$VrHome$GetViewerClick;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2653
    .local v0, "cloned":Lcom/google/common/logging/nano/Vr$VREvent$VrHome$GetViewerClick;
    return-object v0

    .line 2650
    .end local v0    # "cloned":Lcom/google/common/logging/nano/Vr$VREvent$VrHome$GetViewerClick;
    :catch_0
    move-exception v1

    .line 2651
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
    .line 2613
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$VrHome$GetViewerClick;->clone()Lcom/google/common/logging/nano/Vr$VREvent$VrHome$GetViewerClick;

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
    .line 2613
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$VrHome$GetViewerClick;->clone()Lcom/google/common/logging/nano/Vr$VREvent$VrHome$GetViewerClick;

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
    .line 2613
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$VrHome$GetViewerClick;->clone()Lcom/google/common/logging/nano/Vr$VREvent$VrHome$GetViewerClick;

    move-result-object v0

    return-object v0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 2668
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 2669
    .local v0, "size":I
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrHome$GetViewerClick;->url:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2670
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrHome$GetViewerClick;->url:Ljava/lang/String;

    .line 2671
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2673
    :cond_0
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent$VrHome$GetViewerClick;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2681
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 2682
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 2686
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2687
    :sswitch_0
    return-object p0

    .line 2692
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrHome$GetViewerClick;->url:Ljava/lang/String;

    goto :goto_0

    .line 2682
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
    .line 2613
    invoke-virtual {p0, p1}, Lcom/google/common/logging/nano/Vr$VREvent$VrHome$GetViewerClick;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent$VrHome$GetViewerClick;

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
    .line 2660
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrHome$GetViewerClick;->url:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2661
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrHome$GetViewerClick;->url:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2663
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 2664
    return-void
.end method