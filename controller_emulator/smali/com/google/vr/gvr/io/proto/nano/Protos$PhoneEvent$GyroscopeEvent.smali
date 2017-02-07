.class public final Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$GyroscopeEvent;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Protos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GyroscopeEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$GyroscopeEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$GyroscopeEvent;


# instance fields
.field private bitField0_:I

.field private timestamp_:J

.field private x_:F

.field private y_:F

.field private z_:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 472
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 473
    invoke-virtual {p0}, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$GyroscopeEvent;->clear()Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$GyroscopeEvent;

    .line 474
    return-void
.end method

.method public static emptyArray()[Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$GyroscopeEvent;
    .locals 2

    .prologue
    .line 381
    sget-object v0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$GyroscopeEvent;->_emptyArray:[Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$GyroscopeEvent;

    if-nez v0, :cond_1

    .line 382
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 384
    :try_start_0
    sget-object v0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$GyroscopeEvent;->_emptyArray:[Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$GyroscopeEvent;

    if-nez v0, :cond_0

    .line 385
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$GyroscopeEvent;

    sput-object v0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$GyroscopeEvent;->_emptyArray:[Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$GyroscopeEvent;

    .line 387
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 389
    :cond_1
    sget-object v0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$GyroscopeEvent;->_emptyArray:[Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$GyroscopeEvent;

    return-object v0

    .line 387
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$GyroscopeEvent;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 574
    new-instance v0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$GyroscopeEvent;

    invoke-direct {v0}, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$GyroscopeEvent;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$GyroscopeEvent;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$GyroscopeEvent;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$GyroscopeEvent;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 568
    new-instance v0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$GyroscopeEvent;

    invoke-direct {v0}, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$GyroscopeEvent;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$GyroscopeEvent;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$GyroscopeEvent;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 477
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$GyroscopeEvent;->bitField0_:I

    .line 478
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$GyroscopeEvent;->timestamp_:J

    .line 479
    iput v2, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$GyroscopeEvent;->x_:F

    .line 480
    iput v2, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$GyroscopeEvent;->y_:F

    .line 481
    iput v2, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$GyroscopeEvent;->z_:F

    .line 482
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$GyroscopeEvent;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 483
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$GyroscopeEvent;->cachedSize:I

    .line 484
    return-object p0
.end method

.method public clearTimestamp()Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$GyroscopeEvent;
    .locals 2

    .prologue
    .line 408
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$GyroscopeEvent;->timestamp_:J

    .line 409
    iget v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$GyroscopeEvent;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$GyroscopeEvent;->bitField0_:I

    .line 410
    return-object p0
.end method

.method public clearX()Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$GyroscopeEvent;
    .locals 1

    .prologue
    .line 427
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$GyroscopeEvent;->x_:F

    .line 428
    iget v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$GyroscopeEvent;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$GyroscopeEvent;->bitField0_:I

    .line 429
    return-object p0
.end method

.method public clearY()Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$GyroscopeEvent;
    .locals 1

    .prologue
    .line 446
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$GyroscopeEvent;->y_:F

    .line 447
    iget v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$GyroscopeEvent;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$GyroscopeEvent;->bitField0_:I

    .line 448
    return-object p0
.end method

.method public clearZ()Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$GyroscopeEvent;
    .locals 1

    .prologue
    .line 465
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$GyroscopeEvent;->z_:F

    .line 466
    iget v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$GyroscopeEvent;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$GyroscopeEvent;->bitField0_:I

    .line 467
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 4

    .prologue
    .line 507
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 508
    .local v0, "size":I
    iget v1, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$GyroscopeEvent;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 509
    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$GyroscopeEvent;->timestamp_:J

    .line 510
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 512
    :cond_0
    iget v1, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$GyroscopeEvent;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 513
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$GyroscopeEvent;->x_:F

    .line 514
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 516
    :cond_1
    iget v1, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$GyroscopeEvent;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 517
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$GyroscopeEvent;->y_:F

    .line 518
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 520
    :cond_2
    iget v1, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$GyroscopeEvent;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 521
    const/4 v1, 0x4

    iget v2, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$GyroscopeEvent;->z_:F

    .line 522
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 524
    :cond_3
    return v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 397
    iget-wide v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$GyroscopeEvent;->timestamp_:J

    return-wide v0
.end method

.method public getX()F
    .locals 1

    .prologue
    .line 416
    iget v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$GyroscopeEvent;->x_:F

    return v0
.end method

.method public getY()F
    .locals 1

    .prologue
    .line 435
    iget v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$GyroscopeEvent;->y_:F

    return v0
.end method

.method public getZ()F
    .locals 1

    .prologue
    .line 454
    iget v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$GyroscopeEvent;->z_:F

    return v0
.end method

.method public hasTimestamp()Z
    .locals 1

    .prologue
    .line 405
    iget v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$GyroscopeEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasX()Z
    .locals 1

    .prologue
    .line 424
    iget v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$GyroscopeEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasY()Z
    .locals 1

    .prologue
    .line 443
    iget v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$GyroscopeEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasZ()Z
    .locals 1

    .prologue
    .line 462
    iget v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$GyroscopeEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

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
    .line 375
    invoke-virtual {p0, p1}, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$GyroscopeEvent;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$GyroscopeEvent;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$GyroscopeEvent;
    .locals 4
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 532
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 533
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 537
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 538
    :sswitch_0
    return-object p0

    .line 543
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$GyroscopeEvent;->timestamp_:J

    .line 544
    iget v1, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$GyroscopeEvent;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$GyroscopeEvent;->bitField0_:I

    goto :goto_0

    .line 548
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$GyroscopeEvent;->x_:F

    .line 549
    iget v1, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$GyroscopeEvent;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$GyroscopeEvent;->bitField0_:I

    goto :goto_0

    .line 553
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$GyroscopeEvent;->y_:F

    .line 554
    iget v1, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$GyroscopeEvent;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$GyroscopeEvent;->bitField0_:I

    goto :goto_0

    .line 558
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$GyroscopeEvent;->z_:F

    .line 559
    iget v1, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$GyroscopeEvent;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$GyroscopeEvent;->bitField0_:I

    goto :goto_0

    .line 533
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x15 -> :sswitch_2
        0x1d -> :sswitch_3
        0x25 -> :sswitch_4
    .end sparse-switch
.end method

.method public setTimestamp(J)Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$GyroscopeEvent;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 400
    iput-wide p1, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$GyroscopeEvent;->timestamp_:J

    .line 401
    iget v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$GyroscopeEvent;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$GyroscopeEvent;->bitField0_:I

    .line 402
    return-object p0
.end method

.method public setX(F)Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$GyroscopeEvent;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 419
    iput p1, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$GyroscopeEvent;->x_:F

    .line 420
    iget v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$GyroscopeEvent;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$GyroscopeEvent;->bitField0_:I

    .line 421
    return-object p0
.end method

.method public setY(F)Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$GyroscopeEvent;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 438
    iput p1, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$GyroscopeEvent;->y_:F

    .line 439
    iget v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$GyroscopeEvent;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$GyroscopeEvent;->bitField0_:I

    .line 440
    return-object p0
.end method

.method public setZ(F)Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$GyroscopeEvent;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 457
    iput p1, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$GyroscopeEvent;->z_:F

    .line 458
    iget v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$GyroscopeEvent;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$GyroscopeEvent;->bitField0_:I

    .line 459
    return-object p0
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
    .line 490
    iget v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$GyroscopeEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 491
    const/4 v0, 0x1

    iget-wide v2, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$GyroscopeEvent;->timestamp_:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 493
    :cond_0
    iget v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$GyroscopeEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 494
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$GyroscopeEvent;->x_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 496
    :cond_1
    iget v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$GyroscopeEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 497
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$GyroscopeEvent;->y_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 499
    :cond_2
    iget v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$GyroscopeEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 500
    const/4 v0, 0x4

    iget v1, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$GyroscopeEvent;->z_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 502
    :cond_3
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 503
    return-void
.end method
