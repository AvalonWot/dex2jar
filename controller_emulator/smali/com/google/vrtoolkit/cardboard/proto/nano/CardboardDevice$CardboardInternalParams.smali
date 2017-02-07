.class public final Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "CardboardDevice.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CardboardInternalParams"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams$OrientationType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;


# instance fields
.field private accelerometer_:Ljava/lang/String;

.field private bitField0_:I

.field public eyeOrientations:[I

.field private gyroscope_:Ljava/lang/String;

.field private screenCenterToLensDistance_:F

.field private xPpiOverride_:F

.field private yPpiOverride_:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 677
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 678
    invoke-virtual {p0}, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->clear()Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;

    .line 679
    return-void
.end method

.method public static emptyArray()[Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;
    .locals 2

    .prologue
    .line 558
    sget-object v0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->_emptyArray:[Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;

    if-nez v0, :cond_1

    .line 559
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 561
    :try_start_0
    sget-object v0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->_emptyArray:[Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;

    if-nez v0, :cond_0

    .line 562
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;

    sput-object v0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->_emptyArray:[Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;

    .line 564
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 566
    :cond_1
    sget-object v0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->_emptyArray:[Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;

    return-object v0

    .line 564
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 917
    new-instance v0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;

    invoke-direct {v0}, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 911
    new-instance v0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;

    invoke-direct {v0}, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 682
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->bitField0_:I

    .line 683
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->eyeOrientations:[I

    .line 684
    iput v1, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->screenCenterToLensDistance_:F

    .line 685
    iput v1, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->xPpiOverride_:F

    .line 686
    iput v1, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->yPpiOverride_:F

    .line 687
    const-string v0, ""

    iput-object v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->accelerometer_:Ljava/lang/String;

    .line 688
    const-string v0, ""

    iput-object v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->gyroscope_:Ljava/lang/String;

    .line 689
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 690
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->cachedSize:I

    .line 691
    return-object p0
.end method

.method public clearAccelerometer()Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;
    .locals 1

    .prologue
    .line 648
    const-string v0, ""

    iput-object v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->accelerometer_:Ljava/lang/String;

    .line 649
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->bitField0_:I

    .line 650
    return-object p0
.end method

.method public clearGyroscope()Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;
    .locals 1

    .prologue
    .line 670
    const-string v0, ""

    iput-object v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->gyroscope_:Ljava/lang/String;

    .line 671
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->bitField0_:I

    .line 672
    return-object p0
.end method

.method public clearScreenCenterToLensDistance()Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;
    .locals 1

    .prologue
    .line 588
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->screenCenterToLensDistance_:F

    .line 589
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->bitField0_:I

    .line 590
    return-object p0
.end method

.method public clearXPpiOverride()Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;
    .locals 1

    .prologue
    .line 607
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->xPpiOverride_:F

    .line 608
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->bitField0_:I

    .line 609
    return-object p0
.end method

.method public clearYPpiOverride()Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;
    .locals 1

    .prologue
    .line 626
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->yPpiOverride_:F

    .line 627
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->bitField0_:I

    .line 628
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/nano/ExtendableMessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 540
    invoke-virtual {p0}, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->clone()Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;

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
    .line 540
    invoke-virtual {p0}, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->clone()Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;
    .locals 3

    .prologue
    .line 697
    :try_start_0
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->clone()Lcom/google/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 701
    .local v0, "cloned":Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;
    iget-object v2, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->eyeOrientations:[I

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->eyeOrientations:[I

    array-length v2, v2

    if-lez v2, :cond_0

    .line 702
    iget-object v2, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->eyeOrientations:[I

    invoke-virtual {v2}, [I->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    iput-object v2, v0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->eyeOrientations:[I

    .line 704
    :cond_0
    return-object v0

    .line 698
    .end local v0    # "cloned":Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;
    :catch_0
    move-exception v1

    .line 699
    .local v1, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 540
    invoke-virtual {p0}, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->clone()Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;

    move-result-object v0

    return-object v0
.end method

.method protected computeSerializedSize()I
    .locals 6

    .prologue
    .line 744
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v3

    .line 745
    .local v3, "size":I
    iget-object v4, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->eyeOrientations:[I

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->eyeOrientations:[I

    array-length v4, v4

    if-lez v4, :cond_1

    .line 746
    const/4 v0, 0x0

    .line 747
    .local v0, "dataSize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v4, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->eyeOrientations:[I

    array-length v4, v4

    if-ge v2, v4, :cond_0

    .line 748
    iget-object v4, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->eyeOrientations:[I

    aget v1, v4, v2

    .line 750
    .local v1, "element":I
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v4

    add-int/2addr v0, v4

    .line 747
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 752
    .end local v1    # "element":I
    :cond_0
    add-int/2addr v3, v0

    .line 753
    add-int/lit8 v3, v3, 0x1

    .line 755
    invoke-static {v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeRawVarint32Size(I)I

    move-result v4

    add-int/2addr v3, v4

    .line 757
    .end local v0    # "dataSize":I
    .end local v2    # "i":I
    :cond_1
    iget v4, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_2

    .line 758
    const/4 v4, 0x2

    iget v5, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->screenCenterToLensDistance_:F

    .line 759
    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v4

    add-int/2addr v3, v4

    .line 761
    :cond_2
    iget v4, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->bitField0_:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_3

    .line 762
    const/4 v4, 0x3

    iget v5, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->xPpiOverride_:F

    .line 763
    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v4

    add-int/2addr v3, v4

    .line 765
    :cond_3
    iget v4, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->bitField0_:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_4

    .line 766
    const/4 v4, 0x4

    iget v5, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->yPpiOverride_:F

    .line 767
    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v4

    add-int/2addr v3, v4

    .line 769
    :cond_4
    iget v4, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->bitField0_:I

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_5

    .line 770
    const/4 v4, 0x5

    iget-object v5, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->accelerometer_:Ljava/lang/String;

    .line 771
    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 773
    :cond_5
    iget v4, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->bitField0_:I

    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_6

    .line 774
    const/4 v4, 0x6

    iget-object v5, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->gyroscope_:Ljava/lang/String;

    .line 775
    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 777
    :cond_6
    return v3
.end method

.method public getAccelerometer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 634
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->accelerometer_:Ljava/lang/String;

    return-object v0
.end method

.method public getGyroscope()Ljava/lang/String;
    .locals 1

    .prologue
    .line 656
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->gyroscope_:Ljava/lang/String;

    return-object v0
.end method

.method public getScreenCenterToLensDistance()F
    .locals 1

    .prologue
    .line 577
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->screenCenterToLensDistance_:F

    return v0
.end method

.method public getXPpiOverride()F
    .locals 1

    .prologue
    .line 596
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->xPpiOverride_:F

    return v0
.end method

.method public getYPpiOverride()F
    .locals 1

    .prologue
    .line 615
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->yPpiOverride_:F

    return v0
.end method

.method public hasAccelerometer()Z
    .locals 1

    .prologue
    .line 645
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasGyroscope()Z
    .locals 1

    .prologue
    .line 667
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasScreenCenterToLensDistance()Z
    .locals 1

    .prologue
    .line 585
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasXPpiOverride()Z
    .locals 1

    .prologue
    .line 604
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasYPpiOverride()Z
    .locals 1

    .prologue
    .line 623
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

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
    .line 540
    invoke-virtual {p0, p1}, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;
    .locals 18
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 785
    :cond_0
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v10

    .line 786
    .local v10, "tag":I
    sparse-switch v10, :sswitch_data_0

    .line 790
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-super {v0, v1, v10}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v15

    if-nez v15, :cond_0

    .line 791
    :sswitch_0
    return-object p0

    .line 796
    :sswitch_1
    const/16 v15, 0x8

    .line 797
    move-object/from16 v0, p1

    invoke-static {v0, v15}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v6

    .line 798
    .local v6, "length":I
    new-array v13, v6, [I

    .line 799
    .local v13, "validValues":[I
    const/4 v11, 0x0

    .line 800
    .local v11, "validCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    move v12, v11

    .end local v11    # "validCount":I
    .local v12, "validCount":I
    :goto_1
    if-ge v4, v6, :cond_2

    .line 801
    if-eqz v4, :cond_1

    .line 802
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 804
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v14

    .line 805
    .local v14, "value":I
    packed-switch v14, :pswitch_data_0

    move v11, v12

    .line 800
    .end local v12    # "validCount":I
    .restart local v11    # "validCount":I
    :goto_2
    add-int/lit8 v4, v4, 0x1

    move v12, v11

    .end local v11    # "validCount":I
    .restart local v12    # "validCount":I
    goto :goto_1

    .line 814
    :pswitch_0
    add-int/lit8 v11, v12, 0x1

    .end local v12    # "validCount":I
    .restart local v11    # "validCount":I
    aput v14, v13, v12

    goto :goto_2

    .line 818
    .end local v11    # "validCount":I
    .end local v14    # "value":I
    .restart local v12    # "validCount":I
    :cond_2
    if-eqz v12, :cond_0

    .line 819
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->eyeOrientations:[I

    if-nez v15, :cond_3

    const/4 v4, 0x0

    .line 820
    :goto_3
    if-nez v4, :cond_4

    array-length v15, v13

    if-ne v12, v15, :cond_4

    .line 821
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->eyeOrientations:[I

    goto :goto_0

    .line 819
    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->eyeOrientations:[I

    array-length v4, v15

    goto :goto_3

    .line 823
    :cond_4
    add-int v15, v4, v12

    new-array v8, v15, [I

    .line 824
    .local v8, "newArray":[I
    if-eqz v4, :cond_5

    .line 825
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->eyeOrientations:[I

    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v15, v0, v8, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 827
    :cond_5
    const/4 v15, 0x0

    invoke-static {v13, v15, v8, v4, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 828
    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->eyeOrientations:[I

    goto :goto_0

    .line 834
    .end local v4    # "i":I
    .end local v6    # "length":I
    .end local v8    # "newArray":[I
    .end local v12    # "validCount":I
    .end local v13    # "validValues":[I
    :sswitch_2
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v3

    .line 835
    .local v3, "bytes":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v7

    .line 837
    .local v7, "limit":I
    const/4 v2, 0x0

    .line 838
    .local v2, "arrayLength":I
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v9

    .line 839
    .local v9, "startPos":I
    :goto_4
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getBytesUntilLimit()I

    move-result v15

    if-lez v15, :cond_6

    .line 840
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v15

    packed-switch v15, :pswitch_data_1

    goto :goto_4

    .line 849
    :pswitch_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 853
    :cond_6
    if-eqz v2, :cond_a

    .line 854
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 855
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->eyeOrientations:[I

    if-nez v15, :cond_8

    const/4 v4, 0x0

    .line 856
    .restart local v4    # "i":I
    :goto_5
    add-int v15, v4, v2

    new-array v8, v15, [I

    .line 857
    .restart local v8    # "newArray":[I
    if-eqz v4, :cond_7

    .line 858
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->eyeOrientations:[I

    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v15, v0, v8, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 860
    :cond_7
    :goto_6
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getBytesUntilLimit()I

    move-result v15

    if-lez v15, :cond_9

    .line 861
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v14

    .line 862
    .restart local v14    # "value":I
    packed-switch v14, :pswitch_data_2

    goto :goto_6

    .line 871
    :pswitch_2
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "i":I
    .local v5, "i":I
    aput v14, v8, v4

    move v4, v5

    .end local v5    # "i":I
    .restart local v4    # "i":I
    goto :goto_6

    .line 855
    .end local v4    # "i":I
    .end local v8    # "newArray":[I
    .end local v14    # "value":I
    :cond_8
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->eyeOrientations:[I

    array-length v4, v15

    goto :goto_5

    .line 875
    .restart local v4    # "i":I
    .restart local v8    # "newArray":[I
    :cond_9
    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->eyeOrientations:[I

    .line 877
    .end local v4    # "i":I
    .end local v8    # "newArray":[I
    :cond_a
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto/16 :goto_0

    .line 881
    .end local v2    # "arrayLength":I
    .end local v3    # "bytes":I
    .end local v7    # "limit":I
    .end local v9    # "startPos":I
    :sswitch_3
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->screenCenterToLensDistance_:F

    .line 882
    move-object/from16 v0, p0

    iget v15, v0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->bitField0_:I

    or-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    iput v15, v0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->bitField0_:I

    goto/16 :goto_0

    .line 886
    :sswitch_4
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->xPpiOverride_:F

    .line 887
    move-object/from16 v0, p0

    iget v15, v0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->bitField0_:I

    or-int/lit8 v15, v15, 0x2

    move-object/from16 v0, p0

    iput v15, v0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->bitField0_:I

    goto/16 :goto_0

    .line 891
    :sswitch_5
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->yPpiOverride_:F

    .line 892
    move-object/from16 v0, p0

    iget v15, v0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->bitField0_:I

    or-int/lit8 v15, v15, 0x4

    move-object/from16 v0, p0

    iput v15, v0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->bitField0_:I

    goto/16 :goto_0

    .line 896
    :sswitch_6
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->accelerometer_:Ljava/lang/String;

    .line 897
    move-object/from16 v0, p0

    iget v15, v0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->bitField0_:I

    or-int/lit8 v15, v15, 0x8

    move-object/from16 v0, p0

    iput v15, v0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->bitField0_:I

    goto/16 :goto_0

    .line 901
    :sswitch_7
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->gyroscope_:Ljava/lang/String;

    .line 902
    move-object/from16 v0, p0

    iget v15, v0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->bitField0_:I

    or-int/lit8 v15, v15, 0x10

    move-object/from16 v0, p0

    iput v15, v0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->bitField0_:I

    goto/16 :goto_0

    .line 786
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0xa -> :sswitch_2
        0x15 -> :sswitch_3
        0x1d -> :sswitch_4
        0x25 -> :sswitch_5
        0x2a -> :sswitch_6
        0x32 -> :sswitch_7
    .end sparse-switch

    .line 805
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
    .end packed-switch

    .line 840
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 862
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public setAccelerometer(Ljava/lang/String;)Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 637
    if-nez p1, :cond_0

    .line 638
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 640
    :cond_0
    iput-object p1, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->accelerometer_:Ljava/lang/String;

    .line 641
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->bitField0_:I

    .line 642
    return-object p0
.end method

.method public setGyroscope(Ljava/lang/String;)Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 659
    if-nez p1, :cond_0

    .line 660
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 662
    :cond_0
    iput-object p1, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->gyroscope_:Ljava/lang/String;

    .line 663
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->bitField0_:I

    .line 664
    return-object p0
.end method

.method public setScreenCenterToLensDistance(F)Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 580
    iput p1, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->screenCenterToLensDistance_:F

    .line 581
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->bitField0_:I

    .line 582
    return-object p0
.end method

.method public setXPpiOverride(F)Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 599
    iput p1, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->xPpiOverride_:F

    .line 600
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->bitField0_:I

    .line 601
    return-object p0
.end method

.method public setYPpiOverride(F)Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 618
    iput p1, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->yPpiOverride_:F

    .line 619
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->bitField0_:I

    .line 620
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 5
    .param p1, "output"    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 711
    iget-object v3, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->eyeOrientations:[I

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->eyeOrientations:[I

    array-length v3, v3

    if-lez v3, :cond_1

    .line 712
    const/4 v0, 0x0

    .line 713
    .local v0, "dataSize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->eyeOrientations:[I

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 714
    iget-object v3, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->eyeOrientations:[I

    aget v1, v3, v2

    .line 716
    .local v1, "element":I
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v3

    add-int/2addr v0, v3

    .line 713
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 718
    .end local v1    # "element":I
    :cond_0
    const/16 v3, 0xa

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    .line 719
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    .line 720
    const/4 v2, 0x0

    :goto_1
    iget-object v3, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->eyeOrientations:[I

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 721
    iget-object v3, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->eyeOrientations:[I

    aget v3, v3, v2

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    .line 720
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 724
    .end local v0    # "dataSize":I
    .end local v2    # "i":I
    :cond_1
    iget v3, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_2

    .line 725
    const/4 v3, 0x2

    iget v4, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->screenCenterToLensDistance_:F

    invoke-virtual {p1, v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 727
    :cond_2
    iget v3, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_3

    .line 728
    const/4 v3, 0x3

    iget v4, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->xPpiOverride_:F

    invoke-virtual {p1, v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 730
    :cond_3
    iget v3, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_4

    .line 731
    const/4 v3, 0x4

    iget v4, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->yPpiOverride_:F

    invoke-virtual {p1, v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 733
    :cond_4
    iget v3, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_5

    .line 734
    const/4 v3, 0x5

    iget-object v4, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->accelerometer_:Ljava/lang/String;

    invoke-virtual {p1, v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 736
    :cond_5
    iget v3, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->bitField0_:I

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_6

    .line 737
    const/4 v3, 0x6

    iget-object v4, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->gyroscope_:Ljava/lang/String;

    invoke-virtual {p1, v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 739
    :cond_6
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 740
    return-void
.end method
