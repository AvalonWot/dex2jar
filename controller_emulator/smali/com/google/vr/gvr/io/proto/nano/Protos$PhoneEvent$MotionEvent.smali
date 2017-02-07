.class public final Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Protos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MotionEvent"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent$Pointer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent;


# instance fields
.field private action_:I

.field private bitField0_:I

.field public pointers:[Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent$Pointer;

.field private timestamp_:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 257
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 258
    invoke-virtual {p0}, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent;->clear()Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent;

    .line 259
    return-void
.end method

.method public static emptyArray()[Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent;
    .locals 2

    .prologue
    .line 201
    sget-object v0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent;->_emptyArray:[Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent;

    if-nez v0, :cond_1

    .line 202
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 204
    :try_start_0
    sget-object v0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent;->_emptyArray:[Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent;

    if-nez v0, :cond_0

    .line 205
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent;

    sput-object v0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent;->_emptyArray:[Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent;

    .line 207
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 209
    :cond_1
    sget-object v0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent;->_emptyArray:[Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent;

    return-object v0

    .line 207
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 371
    new-instance v0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent;

    invoke-direct {v0}, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 365
    new-instance v0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent;

    invoke-direct {v0}, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 262
    iput v2, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent;->bitField0_:I

    .line 263
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent;->timestamp_:J

    .line 264
    iput v2, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent;->action_:I

    .line 265
    invoke-static {}, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent$Pointer;->emptyArray()[Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent$Pointer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent;->pointers:[Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent$Pointer;

    .line 266
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 267
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent;->cachedSize:I

    .line 268
    return-object p0
.end method

.method public clearAction()Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent;
    .locals 1

    .prologue
    .line 247
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent;->action_:I

    .line 248
    iget v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent;->bitField0_:I

    .line 249
    return-object p0
.end method

.method public clearTimestamp()Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent;
    .locals 2

    .prologue
    .line 228
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent;->timestamp_:J

    .line 229
    iget v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent;->bitField0_:I

    .line 230
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 6

    .prologue
    .line 293
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v2

    .line 294
    .local v2, "size":I
    iget v3, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    .line 295
    const/4 v3, 0x1

    iget-wide v4, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent;->timestamp_:J

    .line 296
    invoke-static {v3, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v2, v3

    .line 298
    :cond_0
    iget v3, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_1

    .line 299
    const/4 v3, 0x2

    iget v4, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent;->action_:I

    .line 300
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 302
    :cond_1
    iget-object v3, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent;->pointers:[Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent$Pointer;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent;->pointers:[Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent$Pointer;

    array-length v3, v3

    if-lez v3, :cond_3

    .line 303
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent;->pointers:[Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent$Pointer;

    array-length v3, v3

    if-ge v1, v3, :cond_3

    .line 304
    iget-object v3, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent;->pointers:[Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent$Pointer;

    aget-object v0, v3, v1

    .line 305
    .local v0, "element":Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent$Pointer;
    if-eqz v0, :cond_2

    .line 306
    const/4 v3, 0x3

    .line 307
    invoke-static {v3, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 303
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 311
    .end local v0    # "element":Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent$Pointer;
    .end local v1    # "i":I
    :cond_3
    return v2
.end method

.method public getAction()I
    .locals 1

    .prologue
    .line 236
    iget v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent;->action_:I

    return v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 217
    iget-wide v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent;->timestamp_:J

    return-wide v0
.end method

.method public hasAction()Z
    .locals 1

    .prologue
    .line 244
    iget v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTimestamp()Z
    .locals 1

    .prologue
    .line 225
    iget v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 24
    invoke-virtual {p0, p1}, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent;
    .locals 8
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 319
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 320
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 324
    invoke-super {p0, p1, v3}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 325
    :sswitch_0
    return-object p0

    .line 330
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent;->timestamp_:J

    .line 331
    iget v5, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent;->bitField0_:I

    goto :goto_0

    .line 335
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent;->action_:I

    .line 336
    iget v5, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent;->bitField0_:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent;->bitField0_:I

    goto :goto_0

    .line 340
    :sswitch_3
    const/16 v5, 0x1a

    .line 341
    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 342
    .local v0, "arrayLength":I
    iget-object v5, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent;->pointers:[Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent$Pointer;

    if-nez v5, :cond_2

    move v1, v4

    .line 343
    .local v1, "i":I
    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent$Pointer;

    .line 345
    .local v2, "newArray":[Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent$Pointer;
    if-eqz v1, :cond_1

    .line 346
    iget-object v5, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent;->pointers:[Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent$Pointer;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 348
    :cond_1
    :goto_2
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_3

    .line 349
    new-instance v5, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent$Pointer;

    invoke-direct {v5}, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent$Pointer;-><init>()V

    aput-object v5, v2, v1

    .line 350
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 351
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 348
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 342
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent$Pointer;
    :cond_2
    iget-object v5, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent;->pointers:[Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent$Pointer;

    array-length v1, v5

    goto :goto_1

    .line 354
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent$Pointer;
    :cond_3
    new-instance v5, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent$Pointer;

    invoke-direct {v5}, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent$Pointer;-><init>()V

    aput-object v5, v2, v1

    .line 355
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 356
    iput-object v2, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent;->pointers:[Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent$Pointer;

    goto :goto_0

    .line 320
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method public setAction(I)Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 239
    iput p1, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent;->action_:I

    .line 240
    iget v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent;->bitField0_:I

    .line 241
    return-object p0
.end method

.method public setTimestamp(J)Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 220
    iput-wide p1, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent;->timestamp_:J

    .line 221
    iget v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent;->bitField0_:I

    .line 222
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 6
    .param p1, "output"    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 274
    iget v2, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 275
    const/4 v2, 0x1

    iget-wide v4, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent;->timestamp_:J

    invoke-virtual {p1, v2, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 277
    :cond_0
    iget v2, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1

    .line 278
    const/4 v2, 0x2

    iget v3, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent;->action_:I

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 280
    :cond_1
    iget-object v2, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent;->pointers:[Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent$Pointer;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent;->pointers:[Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent$Pointer;

    array-length v2, v2

    if-lez v2, :cond_3

    .line 281
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent;->pointers:[Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent$Pointer;

    array-length v2, v2

    if-ge v1, v2, :cond_3

    .line 282
    iget-object v2, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent;->pointers:[Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent$Pointer;

    aget-object v0, v2, v1

    .line 283
    .local v0, "element":Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent$Pointer;
    if-eqz v0, :cond_2

    .line 284
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 281
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 288
    .end local v0    # "element":Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent$Pointer;
    .end local v1    # "i":I
    :cond_3
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 289
    return-void
.end method
