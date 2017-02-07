.class public final Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Vr.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TimeIntervalData"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;


# instance fields
.field public batteryLevel:Ljava/lang/Integer;

.field public batteryLevelDelta:Ljava/lang/Integer;

.field public batteryTemperature:[F

.field public cpuTemperature:[F

.field public edsThreadFrameDropCount:Ljava/lang/Integer;

.field public gpuTemperature:[F

.field public intervalStartTimeSeconds:Ljava/lang/Integer;

.field public skinTemperature:Ljava/lang/Float;

.field public thermalWarningsShown:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3304
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 3305
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->clear()Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;

    .line 3306
    return-void
.end method

.method public static emptyArray()[Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;
    .locals 2

    .prologue
    .line 3264
    sget-object v0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->_emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;

    if-nez v0, :cond_1

    .line 3265
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 3267
    :try_start_0
    sget-object v0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->_emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;

    if-nez v0, :cond_0

    .line 3268
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;

    sput-object v0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->_emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;

    .line 3270
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3272
    :cond_1
    sget-object v0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->_emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;

    return-object v0

    .line 3270
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3577
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 3571
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3309
    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->intervalStartTimeSeconds:Ljava/lang/Integer;

    .line 3310
    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->skinTemperature:Ljava/lang/Float;

    .line 3311
    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->edsThreadFrameDropCount:Ljava/lang/Integer;

    .line 3312
    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->batteryLevel:Ljava/lang/Integer;

    .line 3313
    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->batteryLevelDelta:Ljava/lang/Integer;

    .line 3314
    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->thermalWarningsShown:Ljava/lang/Integer;

    .line 3315
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_FLOAT_ARRAY:[F

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->cpuTemperature:[F

    .line 3316
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_FLOAT_ARRAY:[F

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->gpuTemperature:[F

    .line 3317
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_FLOAT_ARRAY:[F

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->batteryTemperature:[F

    .line 3318
    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 3319
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->cachedSize:I

    .line 3320
    return-object p0
.end method

.method public clone()Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;
    .locals 3

    .prologue
    .line 3326
    :try_start_0
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->clone()Lcom/google/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3330
    .local v0, "cloned":Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->cpuTemperature:[F

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->cpuTemperature:[F

    array-length v2, v2

    if-lez v2, :cond_0

    .line 3331
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->cpuTemperature:[F

    invoke-virtual {v2}, [F->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [F

    iput-object v2, v0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->cpuTemperature:[F

    .line 3333
    :cond_0
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->gpuTemperature:[F

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->gpuTemperature:[F

    array-length v2, v2

    if-lez v2, :cond_1

    .line 3334
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->gpuTemperature:[F

    invoke-virtual {v2}, [F->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [F

    iput-object v2, v0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->gpuTemperature:[F

    .line 3336
    :cond_1
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->batteryTemperature:[F

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->batteryTemperature:[F

    array-length v2, v2

    if-lez v2, :cond_2

    .line 3337
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->batteryTemperature:[F

    invoke-virtual {v2}, [F->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [F

    iput-object v2, v0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->batteryTemperature:[F

    .line 3339
    :cond_2
    return-object v0

    .line 3327
    .end local v0    # "cloned":Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;
    :catch_0
    move-exception v1

    .line 3328
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
    .line 3258
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->clone()Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;

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
    .line 3258
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->clone()Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;

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
    .line 3258
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->clone()Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;

    move-result-object v0

    return-object v0
.end method

.method protected computeSerializedSize()I
    .locals 4

    .prologue
    .line 3384
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v1

    .line 3385
    .local v1, "size":I
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->intervalStartTimeSeconds:Ljava/lang/Integer;

    if-eqz v2, :cond_0

    .line 3386
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->intervalStartTimeSeconds:Ljava/lang/Integer;

    .line 3387
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v1, v2

    .line 3389
    :cond_0
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->skinTemperature:Ljava/lang/Float;

    if-eqz v2, :cond_1

    .line 3390
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->skinTemperature:Ljava/lang/Float;

    .line 3391
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v2

    add-int/2addr v1, v2

    .line 3393
    :cond_1
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->edsThreadFrameDropCount:Ljava/lang/Integer;

    if-eqz v2, :cond_2

    .line 3394
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->edsThreadFrameDropCount:Ljava/lang/Integer;

    .line 3395
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v1, v2

    .line 3397
    :cond_2
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->batteryLevel:Ljava/lang/Integer;

    if-eqz v2, :cond_3

    .line 3398
    const/4 v2, 0x4

    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->batteryLevel:Ljava/lang/Integer;

    .line 3399
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v1, v2

    .line 3401
    :cond_3
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->batteryLevelDelta:Ljava/lang/Integer;

    if-eqz v2, :cond_4

    .line 3402
    const/4 v2, 0x5

    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->batteryLevelDelta:Ljava/lang/Integer;

    .line 3403
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v1, v2

    .line 3405
    :cond_4
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->thermalWarningsShown:Ljava/lang/Integer;

    if-eqz v2, :cond_5

    .line 3406
    const/4 v2, 0x6

    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->thermalWarningsShown:Ljava/lang/Integer;

    .line 3407
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v1, v2

    .line 3409
    :cond_5
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->cpuTemperature:[F

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->cpuTemperature:[F

    array-length v2, v2

    if-lez v2, :cond_6

    .line 3410
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->cpuTemperature:[F

    array-length v2, v2

    mul-int/lit8 v0, v2, 0x4

    .line 3411
    .local v0, "dataSize":I
    add-int/2addr v1, v0

    .line 3412
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->cpuTemperature:[F

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x1

    add-int/2addr v1, v2

    .line 3414
    .end local v0    # "dataSize":I
    :cond_6
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->gpuTemperature:[F

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->gpuTemperature:[F

    array-length v2, v2

    if-lez v2, :cond_7

    .line 3415
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->gpuTemperature:[F

    array-length v2, v2

    mul-int/lit8 v0, v2, 0x4

    .line 3416
    .restart local v0    # "dataSize":I
    add-int/2addr v1, v0

    .line 3417
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->gpuTemperature:[F

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x1

    add-int/2addr v1, v2

    .line 3419
    .end local v0    # "dataSize":I
    :cond_7
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->batteryTemperature:[F

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->batteryTemperature:[F

    array-length v2, v2

    if-lez v2, :cond_8

    .line 3420
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->batteryTemperature:[F

    array-length v2, v2

    mul-int/lit8 v0, v2, 0x4

    .line 3421
    .restart local v0    # "dataSize":I
    add-int/2addr v1, v0

    .line 3422
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->batteryTemperature:[F

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x1

    add-int/2addr v1, v2

    .line 3424
    .end local v0    # "dataSize":I
    :cond_8
    return v1
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;
    .locals 8
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 3432
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v5

    .line 3433
    .local v5, "tag":I
    sparse-switch v5, :sswitch_data_0

    .line 3437
    invoke-super {p0, p1, v5}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v7

    if-nez v7, :cond_0

    .line 3438
    :sswitch_0
    return-object p0

    .line 3443
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iput-object v7, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->intervalStartTimeSeconds:Ljava/lang/Integer;

    goto :goto_0

    .line 3447
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    iput-object v7, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->skinTemperature:Ljava/lang/Float;

    goto :goto_0

    .line 3451
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iput-object v7, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->edsThreadFrameDropCount:Ljava/lang/Integer;

    goto :goto_0

    .line 3455
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iput-object v7, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->batteryLevel:Ljava/lang/Integer;

    goto :goto_0

    .line 3459
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iput-object v7, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->batteryLevelDelta:Ljava/lang/Integer;

    goto :goto_0

    .line 3463
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iput-object v7, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->thermalWarningsShown:Ljava/lang/Integer;

    goto :goto_0

    .line 3467
    :sswitch_7
    const/16 v7, 0x3d

    .line 3468
    invoke-static {p1, v7}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 3469
    .local v0, "arrayLength":I
    iget-object v7, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->cpuTemperature:[F

    if-nez v7, :cond_2

    move v1, v6

    .line 3470
    .local v1, "i":I
    :goto_1
    add-int v7, v1, v0

    new-array v4, v7, [F

    .line 3471
    .local v4, "newArray":[F
    if-eqz v1, :cond_1

    .line 3472
    iget-object v7, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->cpuTemperature:[F

    invoke-static {v7, v6, v4, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3474
    :cond_1
    :goto_2
    array-length v7, v4

    add-int/lit8 v7, v7, -0x1

    if-ge v1, v7, :cond_3

    .line 3475
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v7

    aput v7, v4, v1

    .line 3476
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 3474
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 3469
    .end local v1    # "i":I
    .end local v4    # "newArray":[F
    :cond_2
    iget-object v7, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->cpuTemperature:[F

    array-length v1, v7

    goto :goto_1

    .line 3479
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[F
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v7

    aput v7, v4, v1

    .line 3480
    iput-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->cpuTemperature:[F

    goto/16 :goto_0

    .line 3484
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v4    # "newArray":[F
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v2

    .line 3485
    .local v2, "length":I
    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v3

    .line 3486
    .local v3, "limit":I
    div-int/lit8 v0, v2, 0x4

    .line 3487
    .restart local v0    # "arrayLength":I
    iget-object v7, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->cpuTemperature:[F

    if-nez v7, :cond_5

    move v1, v6

    .line 3488
    .restart local v1    # "i":I
    :goto_3
    add-int v7, v1, v0

    new-array v4, v7, [F

    .line 3489
    .restart local v4    # "newArray":[F
    if-eqz v1, :cond_4

    .line 3490
    iget-object v7, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->cpuTemperature:[F

    invoke-static {v7, v6, v4, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3492
    :cond_4
    :goto_4
    array-length v7, v4

    if-ge v1, v7, :cond_6

    .line 3493
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v7

    aput v7, v4, v1

    .line 3492
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 3487
    .end local v1    # "i":I
    .end local v4    # "newArray":[F
    :cond_5
    iget-object v7, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->cpuTemperature:[F

    array-length v1, v7

    goto :goto_3

    .line 3495
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[F
    :cond_6
    iput-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->cpuTemperature:[F

    .line 3496
    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto/16 :goto_0

    .line 3500
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "length":I
    .end local v3    # "limit":I
    .end local v4    # "newArray":[F
    :sswitch_9
    const/16 v7, 0x45

    .line 3501
    invoke-static {p1, v7}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 3502
    .restart local v0    # "arrayLength":I
    iget-object v7, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->gpuTemperature:[F

    if-nez v7, :cond_8

    move v1, v6

    .line 3503
    .restart local v1    # "i":I
    :goto_5
    add-int v7, v1, v0

    new-array v4, v7, [F

    .line 3504
    .restart local v4    # "newArray":[F
    if-eqz v1, :cond_7

    .line 3505
    iget-object v7, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->gpuTemperature:[F

    invoke-static {v7, v6, v4, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3507
    :cond_7
    :goto_6
    array-length v7, v4

    add-int/lit8 v7, v7, -0x1

    if-ge v1, v7, :cond_9

    .line 3508
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v7

    aput v7, v4, v1

    .line 3509
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 3507
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 3502
    .end local v1    # "i":I
    .end local v4    # "newArray":[F
    :cond_8
    iget-object v7, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->gpuTemperature:[F

    array-length v1, v7

    goto :goto_5

    .line 3512
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[F
    :cond_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v7

    aput v7, v4, v1

    .line 3513
    iput-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->gpuTemperature:[F

    goto/16 :goto_0

    .line 3517
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v4    # "newArray":[F
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v2

    .line 3518
    .restart local v2    # "length":I
    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v3

    .line 3519
    .restart local v3    # "limit":I
    div-int/lit8 v0, v2, 0x4

    .line 3520
    .restart local v0    # "arrayLength":I
    iget-object v7, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->gpuTemperature:[F

    if-nez v7, :cond_b

    move v1, v6

    .line 3521
    .restart local v1    # "i":I
    :goto_7
    add-int v7, v1, v0

    new-array v4, v7, [F

    .line 3522
    .restart local v4    # "newArray":[F
    if-eqz v1, :cond_a

    .line 3523
    iget-object v7, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->gpuTemperature:[F

    invoke-static {v7, v6, v4, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3525
    :cond_a
    :goto_8
    array-length v7, v4

    if-ge v1, v7, :cond_c

    .line 3526
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v7

    aput v7, v4, v1

    .line 3525
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 3520
    .end local v1    # "i":I
    .end local v4    # "newArray":[F
    :cond_b
    iget-object v7, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->gpuTemperature:[F

    array-length v1, v7

    goto :goto_7

    .line 3528
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[F
    :cond_c
    iput-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->gpuTemperature:[F

    .line 3529
    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto/16 :goto_0

    .line 3533
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "length":I
    .end local v3    # "limit":I
    .end local v4    # "newArray":[F
    :sswitch_b
    const/16 v7, 0x4d

    .line 3534
    invoke-static {p1, v7}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 3535
    .restart local v0    # "arrayLength":I
    iget-object v7, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->batteryTemperature:[F

    if-nez v7, :cond_e

    move v1, v6

    .line 3536
    .restart local v1    # "i":I
    :goto_9
    add-int v7, v1, v0

    new-array v4, v7, [F

    .line 3537
    .restart local v4    # "newArray":[F
    if-eqz v1, :cond_d

    .line 3538
    iget-object v7, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->batteryTemperature:[F

    invoke-static {v7, v6, v4, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3540
    :cond_d
    :goto_a
    array-length v7, v4

    add-int/lit8 v7, v7, -0x1

    if-ge v1, v7, :cond_f

    .line 3541
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v7

    aput v7, v4, v1

    .line 3542
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 3540
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 3535
    .end local v1    # "i":I
    .end local v4    # "newArray":[F
    :cond_e
    iget-object v7, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->batteryTemperature:[F

    array-length v1, v7

    goto :goto_9

    .line 3545
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[F
    :cond_f
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v7

    aput v7, v4, v1

    .line 3546
    iput-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->batteryTemperature:[F

    goto/16 :goto_0

    .line 3550
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v4    # "newArray":[F
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v2

    .line 3551
    .restart local v2    # "length":I
    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v3

    .line 3552
    .restart local v3    # "limit":I
    div-int/lit8 v0, v2, 0x4

    .line 3553
    .restart local v0    # "arrayLength":I
    iget-object v7, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->batteryTemperature:[F

    if-nez v7, :cond_11

    move v1, v6

    .line 3554
    .restart local v1    # "i":I
    :goto_b
    add-int v7, v1, v0

    new-array v4, v7, [F

    .line 3555
    .restart local v4    # "newArray":[F
    if-eqz v1, :cond_10

    .line 3556
    iget-object v7, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->batteryTemperature:[F

    invoke-static {v7, v6, v4, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3558
    :cond_10
    :goto_c
    array-length v7, v4

    if-ge v1, v7, :cond_12

    .line 3559
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v7

    aput v7, v4, v1

    .line 3558
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 3553
    .end local v1    # "i":I
    .end local v4    # "newArray":[F
    :cond_11
    iget-object v7, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->batteryTemperature:[F

    array-length v1, v7

    goto :goto_b

    .line 3561
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[F
    :cond_12
    iput-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->batteryTemperature:[F

    .line 3562
    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto/16 :goto_0

    .line 3433
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x15 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
        0x3a -> :sswitch_8
        0x3d -> :sswitch_7
        0x42 -> :sswitch_a
        0x45 -> :sswitch_9
        0x4a -> :sswitch_c
        0x4d -> :sswitch_b
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
    .line 3258
    invoke-virtual {p0, p1}, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;

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
    .line 3346
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->intervalStartTimeSeconds:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 3347
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->intervalStartTimeSeconds:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3349
    :cond_0
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->skinTemperature:Ljava/lang/Float;

    if-eqz v1, :cond_1

    .line 3350
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->skinTemperature:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 3352
    :cond_1
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->edsThreadFrameDropCount:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    .line 3353
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->edsThreadFrameDropCount:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3355
    :cond_2
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->batteryLevel:Ljava/lang/Integer;

    if-eqz v1, :cond_3

    .line 3356
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->batteryLevel:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3358
    :cond_3
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->batteryLevelDelta:Ljava/lang/Integer;

    if-eqz v1, :cond_4

    .line 3359
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->batteryLevelDelta:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3361
    :cond_4
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->thermalWarningsShown:Ljava/lang/Integer;

    if-eqz v1, :cond_5

    .line 3362
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->thermalWarningsShown:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3364
    :cond_5
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->cpuTemperature:[F

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->cpuTemperature:[F

    array-length v1, v1

    if-lez v1, :cond_6

    .line 3365
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->cpuTemperature:[F

    array-length v1, v1

    if-ge v0, v1, :cond_6

    .line 3366
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->cpuTemperature:[F

    aget v2, v2, v0

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 3365
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3369
    .end local v0    # "i":I
    :cond_6
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->gpuTemperature:[F

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->gpuTemperature:[F

    array-length v1, v1

    if-lez v1, :cond_7

    .line 3370
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->gpuTemperature:[F

    array-length v1, v1

    if-ge v0, v1, :cond_7

    .line 3371
    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->gpuTemperature:[F

    aget v2, v2, v0

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 3370
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3374
    .end local v0    # "i":I
    :cond_7
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->batteryTemperature:[F

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->batteryTemperature:[F

    array-length v1, v1

    if-lez v1, :cond_8

    .line 3375
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->batteryTemperature:[F

    array-length v1, v1

    if-ge v0, v1, :cond_8

    .line 3376
    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->batteryTemperature:[F

    aget v2, v2, v0

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 3375
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 3379
    .end local v0    # "i":I
    :cond_8
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 3380
    return-void
.end method
