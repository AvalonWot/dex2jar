.class public final Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;
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
    name = "Keyboard"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;,
        Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardTextEntry;,
        Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardTextType;,
        Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardInputType;,
        Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEventType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;


# instance fields
.field public keyboardEvents:[Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9314
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 9315
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;->clear()Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;

    .line 9316
    return-void
.end method

.method public static emptyArray()[Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;
    .locals 2

    .prologue
    .line 9298
    sget-object v0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;->_emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;

    if-nez v0, :cond_1

    .line 9299
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 9301
    :try_start_0
    sget-object v0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;->_emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;

    if-nez v0, :cond_0

    .line 9302
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;

    sput-object v0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;->_emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;

    .line 9304
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9306
    :cond_1
    sget-object v0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;->_emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;

    return-object v0

    .line 9304
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9420
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 9414
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;
    .locals 1

    .prologue
    .line 9319
    invoke-static {}, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->emptyArray()[Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;->keyboardEvents:[Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;

    .line 9320
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 9321
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;->cachedSize:I

    .line 9322
    return-object p0
.end method

.method public clone()Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;
    .locals 5

    .prologue
    .line 9328
    :try_start_0
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->clone()Lcom/google/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9332
    .local v0, "cloned":Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;->keyboardEvents:[Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;->keyboardEvents:[Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;

    array-length v3, v3

    if-lez v3, :cond_1

    .line 9333
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;->keyboardEvents:[Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;

    array-length v3, v3

    new-array v3, v3, [Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;

    iput-object v3, v0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;->keyboardEvents:[Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;

    .line 9334
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;->keyboardEvents:[Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 9335
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;->keyboardEvents:[Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;

    aget-object v3, v3, v2

    if-eqz v3, :cond_0

    .line 9336
    iget-object v3, v0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;->keyboardEvents:[Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;

    iget-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;->keyboardEvents:[Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;

    move-result-object v4

    aput-object v4, v3, v2

    .line 9334
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 9329
    .end local v0    # "cloned":Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;
    .end local v2    # "i":I
    :catch_0
    move-exception v1

    .line 9330
    .local v1, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 9340
    .end local v1    # "e":Ljava/lang/CloneNotSupportedException;
    .restart local v0    # "cloned":Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;
    :cond_1
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
    .line 8781
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;

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
    .line 8781
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;

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
    .line 8781
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;

    move-result-object v0

    return-object v0
.end method

.method protected computeSerializedSize()I
    .locals 4

    .prologue
    .line 9360
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v2

    .line 9361
    .local v2, "size":I
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;->keyboardEvents:[Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;->keyboardEvents:[Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;

    array-length v3, v3

    if-lez v3, :cond_1

    .line 9362
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;->keyboardEvents:[Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 9363
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;->keyboardEvents:[Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;

    aget-object v0, v3, v1

    .line 9364
    .local v0, "element":Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;
    if-eqz v0, :cond_0

    .line 9365
    const/4 v3, 0x2

    .line 9366
    invoke-static {v3, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 9362
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 9370
    .end local v0    # "element":Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;
    .end local v1    # "i":I
    :cond_1
    return v2
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;
    .locals 6
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 9378
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 9379
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 9383
    invoke-super {p0, p1, v3}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 9384
    :sswitch_0
    return-object p0

    .line 9389
    :sswitch_1
    const/16 v5, 0x12

    .line 9390
    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 9391
    .local v0, "arrayLength":I
    iget-object v5, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;->keyboardEvents:[Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;

    if-nez v5, :cond_2

    move v1, v4

    .line 9392
    .local v1, "i":I
    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;

    .line 9394
    .local v2, "newArray":[Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;
    if-eqz v1, :cond_1

    .line 9395
    iget-object v5, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;->keyboardEvents:[Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 9397
    :cond_1
    :goto_2
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_3

    .line 9398
    new-instance v5, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;

    invoke-direct {v5}, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;-><init>()V

    aput-object v5, v2, v1

    .line 9399
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 9400
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 9397
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 9391
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;
    :cond_2
    iget-object v5, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;->keyboardEvents:[Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;

    array-length v1, v5

    goto :goto_1

    .line 9403
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;
    :cond_3
    new-instance v5, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;

    invoke-direct {v5}, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;-><init>()V

    aput-object v5, v2, v1

    .line 9404
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 9405
    iput-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;->keyboardEvents:[Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;

    goto :goto_0

    .line 9379
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x12 -> :sswitch_1
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
    .line 8781
    invoke-virtual {p0, p1}, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3
    .param p1, "output"    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9347
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;->keyboardEvents:[Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;->keyboardEvents:[Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;

    array-length v2, v2

    if-lez v2, :cond_1

    .line 9348
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;->keyboardEvents:[Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 9349
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;->keyboardEvents:[Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;

    aget-object v0, v2, v1

    .line 9350
    .local v0, "element":Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;
    if-eqz v0, :cond_0

    .line 9351
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 9348
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 9355
    .end local v0    # "element":Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;
    .end local v1    # "i":I
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 9356
    return-void
.end method
