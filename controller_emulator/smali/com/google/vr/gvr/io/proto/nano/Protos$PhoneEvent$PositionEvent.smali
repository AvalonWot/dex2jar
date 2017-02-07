.class public final Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$PositionEvent;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Protos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PositionEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$PositionEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$PositionEvent;


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
    .line 1475
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 1476
    invoke-virtual {p0}, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$PositionEvent;->clear()Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$PositionEvent;

    .line 1477
    return-void
.end method

.method public static emptyArray()[Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$PositionEvent;
    .locals 2

    .prologue
    .line 1384
    sget-object v0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$PositionEvent;->_emptyArray:[Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$PositionEvent;

    if-nez v0, :cond_1

    .line 1385
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 1387
    :try_start_0
    sget-object v0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$PositionEvent;->_emptyArray:[Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$PositionEvent;

    if-nez v0, :cond_0

    .line 1388
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$PositionEvent;

    sput-object v0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$PositionEvent;->_emptyArray:[Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$PositionEvent;

    .line 1390
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1392
    :cond_1
    sget-object v0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$PositionEvent;->_emptyArray:[Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$PositionEvent;

    return-object v0

    .line 1390
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$PositionEvent;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1577
    new-instance v0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$PositionEvent;

    invoke-direct {v0}, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$PositionEvent;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$PositionEvent;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$PositionEvent;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$PositionEvent;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 1571
    new-instance v0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$PositionEvent;

    invoke-direct {v0}, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$PositionEvent;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$PositionEvent;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$PositionEvent;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1480
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$PositionEvent;->bitField0_:I

    .line 1481
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$PositionEvent;->timestamp_:J

    .line 1482
    iput v2, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$PositionEvent;->x_:F

    .line 1483
    iput v2, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$PositionEvent;->y_:F

    .line 1484
    iput v2, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$PositionEvent;->z_:F

    .line 1485
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$PositionEvent;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 1486
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$PositionEvent;->cachedSize:I

    .line 1487
    return-object p0
.end method

.method public clearTimestamp()Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$PositionEvent;
    .locals 2

    .prologue
    .line 1411
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$PositionEvent;->timestamp_:J

    .line 1412
    iget v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$PositionEvent;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$PositionEvent;->bitField0_:I

    .line 1413
    return-object p0
.end method

.method public clearX()Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$PositionEvent;
    .locals 1

    .prologue
    .line 1430
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$PositionEvent;->x_:F

    .line 1431
    iget v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$PositionEvent;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$PositionEvent;->bitField0_:I

    .line 1432
    return-object p0
.end method

.method public clearY()Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$PositionEvent;
    .locals 1

    .prologue
    .line 1449
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$PositionEvent;->y_:F

    .line 1450
    iget v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$PositionEvent;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$PositionEvent;->bitField0_:I

    .line 1451
    return-object p0
.end method

.method public clearZ()Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$PositionEvent;
    .locals 1

    .prologue
    .line 1468
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$PositionEvent;->z_:F

    .line 1469
    iget v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$PositionEvent;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$PositionEvent;->bitField0_:I

    .line 1470
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 4

    .prologue
    .line 1510
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 1511
    .local v0, "size":I
    iget v1, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$PositionEvent;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 1512
    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$PositionEvent;->timestamp_:J

    .line 1513
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1515
    :cond_0
    iget v1, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$PositionEvent;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 1516
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$PositionEvent;->x_:F

    .line 1517
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 1519
    :cond_1
    iget v1, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$PositionEvent;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 1520
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$PositionEvent;->y_:F

    .line 1521
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 1523
    :cond_2
    iget v1, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$PositionEvent;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 1524
    const/4 v1, 0x4

    iget v2, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$PositionEvent;->z_:F

    .line 1525
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 1527
    :cond_3
    return v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 1400
    iget-wide v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$PositionEvent;->timestamp_:J

    return-wide v0
.end method

.method public getX()F
    .locals 1

    .prologue
    .line 1419
    iget v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$PositionEvent;->x_:F

    return v0
.end method

.method public getY()F
    .locals 1

    .prologue
    .line 1438
    iget v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$PositionEvent;->y_:F

    return v0
.end method

.method public getZ()F
    .locals 1

    .prologue
    .line 1457
    iget v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$PositionEvent;->z_:F

    return v0
.end method

.method public hasTimestamp()Z
    .locals 1

    .prologue
    .line 1408
    iget v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$PositionEvent;->bitField0_:I

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
    .line 1427
    iget v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$PositionEvent;->bitField0_:I

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
    .line 1446
    iget v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$PositionEvent;->bitField0_:I

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
    .line 1465
    iget v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$PositionEvent;->bitField0_:I

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
    .line 1378
    invoke-virtual {p0, p1}, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$PositionEvent;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$PositionEvent;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$PositionEvent;
    .locals 4
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1535
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 1536
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 1540
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1541
    :sswitch_0
    return-object p0

    .line 1546
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$PositionEvent;->timestamp_:J

    .line 1547
    iget v1, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$PositionEvent;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$PositionEvent;->bitField0_:I

    goto :goto_0

    .line 1551
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$PositionEvent;->x_:F

    .line 1552
    iget v1, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$PositionEvent;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$PositionEvent;->bitField0_:I

    goto :goto_0

    .line 1556
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$PositionEvent;->y_:F

    .line 1557
    iget v1, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$PositionEvent;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$PositionEvent;->bitField0_:I

    goto :goto_0

    .line 1561
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$PositionEvent;->z_:F

    .line 1562
    iget v1, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$PositionEvent;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$PositionEvent;->bitField0_:I

    goto :goto_0

    .line 1536
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x15 -> :sswitch_2
        0x1d -> :sswitch_3
        0x25 -> :sswitch_4
    .end sparse-switch
.end method

.method public setTimestamp(J)Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$PositionEvent;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 1403
    iput-wide p1, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$PositionEvent;->timestamp_:J

    .line 1404
    iget v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$PositionEvent;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$PositionEvent;->bitField0_:I

    .line 1405
    return-object p0
.end method

.method public setX(F)Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$PositionEvent;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 1422
    iput p1, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$PositionEvent;->x_:F

    .line 1423
    iget v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$PositionEvent;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$PositionEvent;->bitField0_:I

    .line 1424
    return-object p0
.end method

.method public setY(F)Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$PositionEvent;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 1441
    iput p1, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$PositionEvent;->y_:F

    .line 1442
    iget v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$PositionEvent;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$PositionEvent;->bitField0_:I

    .line 1443
    return-object p0
.end method

.method public setZ(F)Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$PositionEvent;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 1460
    iput p1, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$PositionEvent;->z_:F

    .line 1461
    iget v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$PositionEvent;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$PositionEvent;->bitField0_:I

    .line 1462
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
    .line 1493
    iget v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$PositionEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 1494
    const/4 v0, 0x1

    iget-wide v2, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$PositionEvent;->timestamp_:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 1496
    :cond_0
    iget v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$PositionEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 1497
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$PositionEvent;->x_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 1499
    :cond_1
    iget v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$PositionEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 1500
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$PositionEvent;->y_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 1502
    :cond_2
    iget v0, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$PositionEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 1503
    const/4 v0, 0x4

    iget v1, p0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$PositionEvent;->z_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 1505
    :cond_3
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 1506
    return-void
.end method
