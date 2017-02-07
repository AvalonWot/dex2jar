.class public final Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$ShareStart;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Vr.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ShareStart"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$ShareStart$OriginScreen;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$ShareStart;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$ShareStart;


# instance fields
.field public numPhotos:Ljava/lang/Integer;

.field public originScreen:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1526
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 1527
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$ShareStart;->clear()Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$ShareStart;

    .line 1528
    return-void
.end method

.method public static emptyArray()[Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$ShareStart;
    .locals 2

    .prologue
    .line 1507
    sget-object v0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$ShareStart;->_emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$ShareStart;

    if-nez v0, :cond_1

    .line 1508
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 1510
    :try_start_0
    sget-object v0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$ShareStart;->_emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$ShareStart;

    if-nez v0, :cond_0

    .line 1511
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$ShareStart;

    sput-object v0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$ShareStart;->_emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$ShareStart;

    .line 1513
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1515
    :cond_1
    sget-object v0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$ShareStart;->_emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$ShareStart;

    return-object v0

    .line 1513
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$ShareStart;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1616
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$ShareStart;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$ShareStart;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$ShareStart;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$ShareStart;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$ShareStart;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 1610
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$ShareStart;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$ShareStart;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$ShareStart;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$ShareStart;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1531
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$ShareStart;->numPhotos:Ljava/lang/Integer;

    .line 1532
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$ShareStart;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 1533
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$ShareStart;->cachedSize:I

    .line 1534
    return-object p0
.end method

.method public clone()Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$ShareStart;
    .locals 3

    .prologue
    .line 1540
    :try_start_0
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->clone()Lcom/google/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$ShareStart;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1544
    .local v0, "cloned":Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$ShareStart;
    return-object v0

    .line 1541
    .end local v0    # "cloned":Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$ShareStart;
    :catch_0
    move-exception v1

    .line 1542
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
    .line 1494
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$ShareStart;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$ShareStart;

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
    .line 1494
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$ShareStart;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$ShareStart;

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
    .line 1494
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$ShareStart;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$ShareStart;

    move-result-object v0

    return-object v0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 1562
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 1563
    .local v0, "size":I
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$ShareStart;->originScreen:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 1564
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$ShareStart;->originScreen:Ljava/lang/Integer;

    .line 1565
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1567
    :cond_0
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$ShareStart;->numPhotos:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 1568
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$ShareStart;->numPhotos:Ljava/lang/Integer;

    .line 1569
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1571
    :cond_1
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$ShareStart;
    .locals 3
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1579
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 1580
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 1584
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1585
    :sswitch_0
    return-object p0

    .line 1590
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    .line 1591
    .local v1, "value":I
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 1595
    :pswitch_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$ShareStart;->originScreen:Ljava/lang/Integer;

    goto :goto_0

    .line 1601
    .end local v1    # "value":I
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$ShareStart;->numPhotos:Ljava/lang/Integer;

    goto :goto_0

    .line 1580
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch

    .line 1591
    :pswitch_data_0
    .packed-switch 0x0
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
    .line 1494
    invoke-virtual {p0, p1}, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$ShareStart;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$ShareStart;

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
    .line 1551
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$ShareStart;->originScreen:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 1552
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$ShareStart;->originScreen:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1554
    :cond_0
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$ShareStart;->numPhotos:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 1555
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$ShareStart;->numPhotos:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1557
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 1558
    return-void
.end method
