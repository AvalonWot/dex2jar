.class public final Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Vr.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VideoDetails"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;


# instance fields
.field public audioBitRate:Ljava/lang/Integer;

.field public audioChannelCount:Ljava/lang/Integer;

.field public audioCodec:Ljava/lang/Integer;

.field public framesPerSecond:Ljava/lang/Double;

.field public mediaLengthSeconds:Ljava/lang/Long;

.field public resolution:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$Resolution;

.field public sampleRate:Ljava/lang/Integer;

.field public sphericalMetadata:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$SphericalMetadata;

.field public usedMonoFilename:Ljava/lang/Boolean;

.field public usedWalleFilename:Ljava/lang/Boolean;

.field public usedWallyFilename:Ljava/lang/Boolean;

.field public videoBitRate:Ljava/lang/Integer;

.field public videoCodec:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10595
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 10596
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->clear()Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;

    .line 10597
    return-void
.end method

.method public static emptyArray()[Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;
    .locals 2

    .prologue
    .line 10543
    sget-object v0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->_emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;

    if-nez v0, :cond_1

    .line 10544
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 10546
    :try_start_0
    sget-object v0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->_emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;

    if-nez v0, :cond_0

    .line 10547
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;

    sput-object v0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->_emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;

    .line 10549
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10551
    :cond_1
    sget-object v0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->_emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;

    return-object v0

    .line 10549
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10839
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 10833
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 10600
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->mediaLengthSeconds:Ljava/lang/Long;

    .line 10601
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->resolution:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$Resolution;

    .line 10602
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->framesPerSecond:Ljava/lang/Double;

    .line 10603
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->sampleRate:Ljava/lang/Integer;

    .line 10604
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->videoBitRate:Ljava/lang/Integer;

    .line 10605
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->audioBitRate:Ljava/lang/Integer;

    .line 10606
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->sphericalMetadata:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$SphericalMetadata;

    .line 10607
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->audioChannelCount:Ljava/lang/Integer;

    .line 10608
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->usedMonoFilename:Ljava/lang/Boolean;

    .line 10609
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->usedWalleFilename:Ljava/lang/Boolean;

    .line 10610
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->usedWallyFilename:Ljava/lang/Boolean;

    .line 10611
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 10612
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->cachedSize:I

    .line 10613
    return-object p0
.end method

.method public clone()Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;
    .locals 3

    .prologue
    .line 10619
    :try_start_0
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->clone()Lcom/google/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10623
    .local v0, "cloned":Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->resolution:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$Resolution;

    if-eqz v2, :cond_0

    .line 10624
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->resolution:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$Resolution;

    invoke-virtual {v2}, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$Resolution;->clone()Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$Resolution;

    move-result-object v2

    iput-object v2, v0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->resolution:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$Resolution;

    .line 10626
    :cond_0
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->sphericalMetadata:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$SphericalMetadata;

    if-eqz v2, :cond_1

    .line 10627
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->sphericalMetadata:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$SphericalMetadata;

    invoke-virtual {v2}, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$SphericalMetadata;->clone()Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$SphericalMetadata;

    move-result-object v2

    iput-object v2, v0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->sphericalMetadata:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$SphericalMetadata;

    .line 10629
    :cond_1
    return-object v0

    .line 10620
    .end local v0    # "cloned":Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;
    :catch_0
    move-exception v1

    .line 10621
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
    .line 10537
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->clone()Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;

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
    .line 10537
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->clone()Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;

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
    .line 10537
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->clone()Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;

    move-result-object v0

    return-object v0
.end method

.method protected computeSerializedSize()I
    .locals 4

    .prologue
    .line 10680
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 10681
    .local v0, "size":I
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->mediaLengthSeconds:Ljava/lang/Long;

    if-eqz v1, :cond_0

    .line 10682
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->mediaLengthSeconds:Ljava/lang/Long;

    .line 10683
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 10685
    :cond_0
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->resolution:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$Resolution;

    if-eqz v1, :cond_1

    .line 10686
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->resolution:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$Resolution;

    .line 10687
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10689
    :cond_1
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->framesPerSecond:Ljava/lang/Double;

    if-eqz v1, :cond_2

    .line 10690
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->framesPerSecond:Ljava/lang/Double;

    .line 10691
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeDoubleSize(ID)I

    move-result v1

    add-int/2addr v0, v1

    .line 10693
    :cond_2
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->sampleRate:Ljava/lang/Integer;

    if-eqz v1, :cond_3

    .line 10694
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->sampleRate:Ljava/lang/Integer;

    .line 10695
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 10697
    :cond_3
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->videoBitRate:Ljava/lang/Integer;

    if-eqz v1, :cond_4

    .line 10698
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->videoBitRate:Ljava/lang/Integer;

    .line 10699
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 10701
    :cond_4
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->audioBitRate:Ljava/lang/Integer;

    if-eqz v1, :cond_5

    .line 10702
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->audioBitRate:Ljava/lang/Integer;

    .line 10703
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 10705
    :cond_5
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->videoCodec:Ljava/lang/Integer;

    if-eqz v1, :cond_6

    .line 10706
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->videoCodec:Ljava/lang/Integer;

    .line 10707
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 10709
    :cond_6
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->audioCodec:Ljava/lang/Integer;

    if-eqz v1, :cond_7

    .line 10710
    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->audioCodec:Ljava/lang/Integer;

    .line 10711
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 10713
    :cond_7
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->sphericalMetadata:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$SphericalMetadata;

    if-eqz v1, :cond_8

    .line 10714
    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->sphericalMetadata:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$SphericalMetadata;

    .line 10715
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10717
    :cond_8
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->audioChannelCount:Ljava/lang/Integer;

    if-eqz v1, :cond_9

    .line 10718
    const/16 v1, 0xa

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->audioChannelCount:Ljava/lang/Integer;

    .line 10719
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 10721
    :cond_9
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->usedMonoFilename:Ljava/lang/Boolean;

    if-eqz v1, :cond_a

    .line 10722
    const/16 v1, 0xb

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->usedMonoFilename:Ljava/lang/Boolean;

    .line 10723
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 10725
    :cond_a
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->usedWalleFilename:Ljava/lang/Boolean;

    if-eqz v1, :cond_b

    .line 10726
    const/16 v1, 0xc

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->usedWalleFilename:Ljava/lang/Boolean;

    .line 10727
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 10729
    :cond_b
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->usedWallyFilename:Ljava/lang/Boolean;

    if-eqz v1, :cond_c

    .line 10730
    const/16 v1, 0xd

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->usedWallyFilename:Ljava/lang/Boolean;

    .line 10731
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 10733
    :cond_c
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;
    .locals 4
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10741
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 10742
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 10746
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 10747
    :sswitch_0
    return-object p0

    .line 10752
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->mediaLengthSeconds:Ljava/lang/Long;

    goto :goto_0

    .line 10756
    :sswitch_2
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->resolution:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$Resolution;

    if-nez v2, :cond_1

    .line 10757
    new-instance v2, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$Resolution;

    invoke-direct {v2}, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$Resolution;-><init>()V

    iput-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->resolution:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$Resolution;

    .line 10759
    :cond_1
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->resolution:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$Resolution;

    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 10763
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readDouble()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iput-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->framesPerSecond:Ljava/lang/Double;

    goto :goto_0

    .line 10767
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->sampleRate:Ljava/lang/Integer;

    goto :goto_0

    .line 10771
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->videoBitRate:Ljava/lang/Integer;

    goto :goto_0

    .line 10775
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->audioBitRate:Ljava/lang/Integer;

    goto :goto_0

    .line 10779
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    .line 10780
    .local v1, "value":I
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 10786
    :pswitch_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->videoCodec:Ljava/lang/Integer;

    goto :goto_0

    .line 10792
    .end local v1    # "value":I
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    .line 10793
    .restart local v1    # "value":I
    packed-switch v1, :pswitch_data_1

    goto :goto_0

    .line 10799
    :pswitch_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->audioCodec:Ljava/lang/Integer;

    goto :goto_0

    .line 10805
    .end local v1    # "value":I
    :sswitch_9
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->sphericalMetadata:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$SphericalMetadata;

    if-nez v2, :cond_2

    .line 10806
    new-instance v2, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$SphericalMetadata;

    invoke-direct {v2}, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$SphericalMetadata;-><init>()V

    iput-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->sphericalMetadata:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$SphericalMetadata;

    .line 10808
    :cond_2
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->sphericalMetadata:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$SphericalMetadata;

    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 10812
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->audioChannelCount:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 10816
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->usedMonoFilename:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 10820
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->usedWalleFilename:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 10824
    :sswitch_d
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->usedWallyFilename:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 10742
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x19 -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
        0x38 -> :sswitch_7
        0x40 -> :sswitch_8
        0x4a -> :sswitch_9
        0x50 -> :sswitch_a
        0x58 -> :sswitch_b
        0x60 -> :sswitch_c
        0x68 -> :sswitch_d
    .end sparse-switch

    .line 10780
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 10793
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
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
    .line 10537
    invoke-virtual {p0, p1}, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;

    move-result-object v0

    return-object v0
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
    .line 10636
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->mediaLengthSeconds:Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 10637
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->mediaLengthSeconds:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 10639
    :cond_0
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->resolution:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$Resolution;

    if-eqz v0, :cond_1

    .line 10640
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->resolution:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$Resolution;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 10642
    :cond_1
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->framesPerSecond:Ljava/lang/Double;

    if-eqz v0, :cond_2

    .line 10643
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->framesPerSecond:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeDouble(ID)V

    .line 10645
    :cond_2
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->sampleRate:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    .line 10646
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->sampleRate:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 10648
    :cond_3
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->videoBitRate:Ljava/lang/Integer;

    if-eqz v0, :cond_4

    .line 10649
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->videoBitRate:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 10651
    :cond_4
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->audioBitRate:Ljava/lang/Integer;

    if-eqz v0, :cond_5

    .line 10652
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->audioBitRate:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 10654
    :cond_5
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->videoCodec:Ljava/lang/Integer;

    if-eqz v0, :cond_6

    .line 10655
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->videoCodec:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 10657
    :cond_6
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->audioCodec:Ljava/lang/Integer;

    if-eqz v0, :cond_7

    .line 10658
    const/16 v0, 0x8

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->audioCodec:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 10660
    :cond_7
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->sphericalMetadata:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$SphericalMetadata;

    if-eqz v0, :cond_8

    .line 10661
    const/16 v0, 0x9

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->sphericalMetadata:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$SphericalMetadata;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 10663
    :cond_8
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->audioChannelCount:Ljava/lang/Integer;

    if-eqz v0, :cond_9

    .line 10664
    const/16 v0, 0xa

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->audioChannelCount:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 10666
    :cond_9
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->usedMonoFilename:Ljava/lang/Boolean;

    if-eqz v0, :cond_a

    .line 10667
    const/16 v0, 0xb

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->usedMonoFilename:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 10669
    :cond_a
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->usedWalleFilename:Ljava/lang/Boolean;

    if-eqz v0, :cond_b

    .line 10670
    const/16 v0, 0xc

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->usedWalleFilename:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 10672
    :cond_b
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->usedWallyFilename:Ljava/lang/Boolean;

    if-eqz v0, :cond_c

    .line 10673
    const/16 v0, 0xd

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->usedWallyFilename:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 10675
    :cond_c
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 10676
    return-void
.end method
