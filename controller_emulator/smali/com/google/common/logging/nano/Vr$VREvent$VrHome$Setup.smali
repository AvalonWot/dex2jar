.class public final Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup;
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
    name = "Setup"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup$StepStateChange;,
        Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup$View;,
        Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup$Step;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup;


# instance fields
.field public stepStateChange:Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup$StepStateChange;

.field public view:Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup$View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2513
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 2514
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup;->clear()Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup;

    .line 2515
    return-void
.end method

.method public static emptyArray()[Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup;
    .locals 2

    .prologue
    .line 2494
    sget-object v0, Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup;->_emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup;

    if-nez v0, :cond_1

    .line 2495
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 2497
    :try_start_0
    sget-object v0, Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup;->_emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup;

    if-nez v0, :cond_0

    .line 2498
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup;

    sput-object v0, Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup;->_emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup;

    .line 2500
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2502
    :cond_1
    sget-object v0, Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup;->_emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup;

    return-object v0

    .line 2500
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2609
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 2603
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2518
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup;->view:Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup$View;

    .line 2519
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup;->stepStateChange:Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup$StepStateChange;

    .line 2520
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 2521
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup;->cachedSize:I

    .line 2522
    return-object p0
.end method

.method public clone()Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup;
    .locals 3

    .prologue
    .line 2528
    :try_start_0
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->clone()Lcom/google/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2532
    .local v0, "cloned":Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup;
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup;->view:Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup$View;

    if-eqz v2, :cond_0

    .line 2533
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup;->view:Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup$View;

    invoke-virtual {v2}, Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup$View;->clone()Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup$View;

    move-result-object v2

    iput-object v2, v0, Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup;->view:Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup$View;

    .line 2535
    :cond_0
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup;->stepStateChange:Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup$StepStateChange;

    if-eqz v2, :cond_1

    .line 2536
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup;->stepStateChange:Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup$StepStateChange;

    invoke-virtual {v2}, Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup$StepStateChange;->clone()Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup$StepStateChange;

    move-result-object v2

    iput-object v2, v0, Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup;->stepStateChange:Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup$StepStateChange;

    .line 2538
    :cond_1
    return-object v0

    .line 2529
    .end local v0    # "cloned":Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup;
    :catch_0
    move-exception v1

    .line 2530
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
    .line 2185
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup;->clone()Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup;

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
    .line 2185
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup;->clone()Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup;

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
    .line 2185
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup;->clone()Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup;

    move-result-object v0

    return-object v0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 2556
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 2557
    .local v0, "size":I
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup;->view:Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup$View;

    if-eqz v1, :cond_0

    .line 2558
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup;->view:Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup$View;

    .line 2559
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2561
    :cond_0
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup;->stepStateChange:Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup$StepStateChange;

    if-eqz v1, :cond_1

    .line 2562
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup;->stepStateChange:Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup$StepStateChange;

    .line 2563
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2565
    :cond_1
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2573
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 2574
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 2578
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2579
    :sswitch_0
    return-object p0

    .line 2584
    :sswitch_1
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup;->view:Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup$View;

    if-nez v1, :cond_1

    .line 2585
    new-instance v1, Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup$View;

    invoke-direct {v1}, Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup$View;-><init>()V

    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup;->view:Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup$View;

    .line 2587
    :cond_1
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup;->view:Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup$View;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 2591
    :sswitch_2
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup;->stepStateChange:Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup$StepStateChange;

    if-nez v1, :cond_2

    .line 2592
    new-instance v1, Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup$StepStateChange;

    invoke-direct {v1}, Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup$StepStateChange;-><init>()V

    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup;->stepStateChange:Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup$StepStateChange;

    .line 2594
    :cond_2
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup;->stepStateChange:Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup$StepStateChange;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 2574
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
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
    .line 2185
    invoke-virtual {p0, p1}, Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup;

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
    .line 2545
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup;->view:Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup$View;

    if-eqz v0, :cond_0

    .line 2546
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup;->view:Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup$View;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 2548
    :cond_0
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup;->stepStateChange:Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup$StepStateChange;

    if-eqz v0, :cond_1

    .line 2549
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup;->stepStateChange:Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup$StepStateChange;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 2551
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 2552
    return-void
.end method
