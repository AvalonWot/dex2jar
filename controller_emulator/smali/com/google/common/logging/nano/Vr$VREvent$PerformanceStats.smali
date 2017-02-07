.class public final Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;
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
    name = "PerformanceStats"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats$ThermalEventFlags;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;


# instance fields
.field public appRenderTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

.field public averageFps:Ljava/lang/Integer;

.field public batteryShutdownTemperature:[F

.field public batteryThrottlingTemperature:[F

.field public consecutiveDroppedFrames:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

.field public cpuShutdownTemperature:[F

.field public cpuThrottlingTemperature:[F

.field public frameTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

.field public gpuShutdownTemperature:[F

.field public gpuThrottlingTemperature:[F

.field public memoryConsumptionKilobytes:Ljava/lang/Integer;

.field public postFrameTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

.field public presentTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

.field public scanlineRacingVsyncOvershootUs:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

.field public shutdownSkinTemperatureCelsius:Ljava/lang/Float;

.field public thermalEventFlags:Ljava/lang/Integer;

.field public throttleSkinTemperatureCelsius:Ljava/lang/Float;

.field public timeSeriesData:Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData;

.field public totalRenderTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

.field public vrMaxSkinTemperatureCelsius:Ljava/lang/Float;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3811
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 3812
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->clear()Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;

    .line 3813
    return-void
.end method

.method public static emptyArray()[Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;
    .locals 2

    .prologue
    .line 3738
    sget-object v0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->_emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;

    if-nez v0, :cond_1

    .line 3739
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 3741
    :try_start_0
    sget-object v0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->_emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;

    if-nez v0, :cond_0

    .line 3742
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;

    sput-object v0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->_emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;

    .line 3744
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3746
    :cond_1
    sget-object v0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->_emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;

    return-object v0

    .line 3744
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4565
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 4559
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3816
    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->averageFps:Ljava/lang/Integer;

    .line 3817
    invoke-static {}, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;->emptyArray()[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->frameTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    .line 3818
    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->memoryConsumptionKilobytes:Ljava/lang/Integer;

    .line 3819
    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->throttleSkinTemperatureCelsius:Ljava/lang/Float;

    .line 3820
    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->vrMaxSkinTemperatureCelsius:Ljava/lang/Float;

    .line 3821
    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->shutdownSkinTemperatureCelsius:Ljava/lang/Float;

    .line 3822
    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->timeSeriesData:Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData;

    .line 3823
    invoke-static {}, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;->emptyArray()[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->appRenderTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    .line 3824
    invoke-static {}, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;->emptyArray()[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->presentTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    .line 3825
    invoke-static {}, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;->emptyArray()[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->totalRenderTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    .line 3826
    invoke-static {}, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;->emptyArray()[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->postFrameTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    .line 3827
    invoke-static {}, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;->emptyArray()[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->consecutiveDroppedFrames:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    .line 3828
    invoke-static {}, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;->emptyArray()[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->scanlineRacingVsyncOvershootUs:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    .line 3829
    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->thermalEventFlags:Ljava/lang/Integer;

    .line 3830
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_FLOAT_ARRAY:[F

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->cpuThrottlingTemperature:[F

    .line 3831
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_FLOAT_ARRAY:[F

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->gpuThrottlingTemperature:[F

    .line 3832
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_FLOAT_ARRAY:[F

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->batteryThrottlingTemperature:[F

    .line 3833
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_FLOAT_ARRAY:[F

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->cpuShutdownTemperature:[F

    .line 3834
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_FLOAT_ARRAY:[F

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->gpuShutdownTemperature:[F

    .line 3835
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_FLOAT_ARRAY:[F

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->batteryShutdownTemperature:[F

    .line 3836
    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 3837
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->cachedSize:I

    .line 3838
    return-object p0
.end method

.method public clone()Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;
    .locals 5

    .prologue
    .line 3844
    :try_start_0
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->clone()Lcom/google/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3848
    .local v0, "cloned":Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->frameTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->frameTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v3, v3

    if-lez v3, :cond_1

    .line 3849
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->frameTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v3, v3

    new-array v3, v3, [Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    iput-object v3, v0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->frameTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    .line 3850
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->frameTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 3851
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->frameTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    aget-object v3, v3, v2

    if-eqz v3, :cond_0

    .line 3852
    iget-object v3, v0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->frameTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    iget-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->frameTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;->clone()Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    move-result-object v4

    aput-object v4, v3, v2

    .line 3850
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3845
    .end local v0    # "cloned":Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;
    .end local v2    # "i":I
    :catch_0
    move-exception v1

    .line 3846
    .local v1, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 3856
    .end local v1    # "e":Ljava/lang/CloneNotSupportedException;
    .restart local v0    # "cloned":Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;
    :cond_1
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->timeSeriesData:Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData;

    if-eqz v3, :cond_2

    .line 3857
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->timeSeriesData:Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData;

    invoke-virtual {v3}, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData;->clone()Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData;

    move-result-object v3

    iput-object v3, v0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->timeSeriesData:Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData;

    .line 3859
    :cond_2
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->appRenderTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->appRenderTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v3, v3

    if-lez v3, :cond_4

    .line 3860
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->appRenderTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v3, v3

    new-array v3, v3, [Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    iput-object v3, v0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->appRenderTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    .line 3861
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->appRenderTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v3, v3

    if-ge v2, v3, :cond_4

    .line 3862
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->appRenderTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    aget-object v3, v3, v2

    if-eqz v3, :cond_3

    .line 3863
    iget-object v3, v0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->appRenderTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    iget-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->appRenderTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;->clone()Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    move-result-object v4

    aput-object v4, v3, v2

    .line 3861
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3867
    .end local v2    # "i":I
    :cond_4
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->presentTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->presentTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v3, v3

    if-lez v3, :cond_6

    .line 3868
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->presentTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v3, v3

    new-array v3, v3, [Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    iput-object v3, v0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->presentTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    .line 3869
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_2
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->presentTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v3, v3

    if-ge v2, v3, :cond_6

    .line 3870
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->presentTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    aget-object v3, v3, v2

    if-eqz v3, :cond_5

    .line 3871
    iget-object v3, v0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->presentTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    iget-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->presentTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;->clone()Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    move-result-object v4

    aput-object v4, v3, v2

    .line 3869
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 3875
    .end local v2    # "i":I
    :cond_6
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->totalRenderTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->totalRenderTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v3, v3

    if-lez v3, :cond_8

    .line 3876
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->totalRenderTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v3, v3

    new-array v3, v3, [Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    iput-object v3, v0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->totalRenderTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    .line 3877
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_3
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->totalRenderTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v3, v3

    if-ge v2, v3, :cond_8

    .line 3878
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->totalRenderTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    aget-object v3, v3, v2

    if-eqz v3, :cond_7

    .line 3879
    iget-object v3, v0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->totalRenderTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    iget-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->totalRenderTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;->clone()Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    move-result-object v4

    aput-object v4, v3, v2

    .line 3877
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 3883
    .end local v2    # "i":I
    :cond_8
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->postFrameTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->postFrameTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v3, v3

    if-lez v3, :cond_a

    .line 3884
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->postFrameTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v3, v3

    new-array v3, v3, [Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    iput-object v3, v0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->postFrameTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    .line 3885
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_4
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->postFrameTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v3, v3

    if-ge v2, v3, :cond_a

    .line 3886
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->postFrameTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    aget-object v3, v3, v2

    if-eqz v3, :cond_9

    .line 3887
    iget-object v3, v0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->postFrameTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    iget-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->postFrameTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;->clone()Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    move-result-object v4

    aput-object v4, v3, v2

    .line 3885
    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 3891
    .end local v2    # "i":I
    :cond_a
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->consecutiveDroppedFrames:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    if-eqz v3, :cond_c

    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->consecutiveDroppedFrames:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v3, v3

    if-lez v3, :cond_c

    .line 3892
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->consecutiveDroppedFrames:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v3, v3

    new-array v3, v3, [Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    iput-object v3, v0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->consecutiveDroppedFrames:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    .line 3893
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_5
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->consecutiveDroppedFrames:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v3, v3

    if-ge v2, v3, :cond_c

    .line 3894
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->consecutiveDroppedFrames:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    aget-object v3, v3, v2

    if-eqz v3, :cond_b

    .line 3895
    iget-object v3, v0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->consecutiveDroppedFrames:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    iget-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->consecutiveDroppedFrames:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;->clone()Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    move-result-object v4

    aput-object v4, v3, v2

    .line 3893
    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 3899
    .end local v2    # "i":I
    :cond_c
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->scanlineRacingVsyncOvershootUs:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    if-eqz v3, :cond_e

    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->scanlineRacingVsyncOvershootUs:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v3, v3

    if-lez v3, :cond_e

    .line 3900
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->scanlineRacingVsyncOvershootUs:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v3, v3

    new-array v3, v3, [Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    iput-object v3, v0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->scanlineRacingVsyncOvershootUs:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    .line 3901
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_6
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->scanlineRacingVsyncOvershootUs:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v3, v3

    if-ge v2, v3, :cond_e

    .line 3902
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->scanlineRacingVsyncOvershootUs:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    aget-object v3, v3, v2

    if-eqz v3, :cond_d

    .line 3903
    iget-object v3, v0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->scanlineRacingVsyncOvershootUs:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    iget-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->scanlineRacingVsyncOvershootUs:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;->clone()Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    move-result-object v4

    aput-object v4, v3, v2

    .line 3901
    :cond_d
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 3907
    .end local v2    # "i":I
    :cond_e
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->cpuThrottlingTemperature:[F

    if-eqz v3, :cond_f

    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->cpuThrottlingTemperature:[F

    array-length v3, v3

    if-lez v3, :cond_f

    .line 3908
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->cpuThrottlingTemperature:[F

    invoke-virtual {v3}, [F->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [F

    iput-object v3, v0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->cpuThrottlingTemperature:[F

    .line 3910
    :cond_f
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->gpuThrottlingTemperature:[F

    if-eqz v3, :cond_10

    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->gpuThrottlingTemperature:[F

    array-length v3, v3

    if-lez v3, :cond_10

    .line 3911
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->gpuThrottlingTemperature:[F

    invoke-virtual {v3}, [F->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [F

    iput-object v3, v0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->gpuThrottlingTemperature:[F

    .line 3913
    :cond_10
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->batteryThrottlingTemperature:[F

    if-eqz v3, :cond_11

    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->batteryThrottlingTemperature:[F

    array-length v3, v3

    if-lez v3, :cond_11

    .line 3914
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->batteryThrottlingTemperature:[F

    invoke-virtual {v3}, [F->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [F

    iput-object v3, v0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->batteryThrottlingTemperature:[F

    .line 3916
    :cond_11
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->cpuShutdownTemperature:[F

    if-eqz v3, :cond_12

    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->cpuShutdownTemperature:[F

    array-length v3, v3

    if-lez v3, :cond_12

    .line 3917
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->cpuShutdownTemperature:[F

    invoke-virtual {v3}, [F->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [F

    iput-object v3, v0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->cpuShutdownTemperature:[F

    .line 3919
    :cond_12
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->gpuShutdownTemperature:[F

    if-eqz v3, :cond_13

    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->gpuShutdownTemperature:[F

    array-length v3, v3

    if-lez v3, :cond_13

    .line 3920
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->gpuShutdownTemperature:[F

    invoke-virtual {v3}, [F->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [F

    iput-object v3, v0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->gpuShutdownTemperature:[F

    .line 3922
    :cond_13
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->batteryShutdownTemperature:[F

    if-eqz v3, :cond_14

    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->batteryShutdownTemperature:[F

    array-length v3, v3

    if-lez v3, :cond_14

    .line 3923
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->batteryShutdownTemperature:[F

    invoke-virtual {v3}, [F->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [F

    iput-object v3, v0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->batteryShutdownTemperature:[F

    .line 3925
    :cond_14
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
    .line 3725
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->clone()Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;

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
    .line 3725
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->clone()Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;

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
    .line 3725
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->clone()Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;

    move-result-object v0

    return-object v0
.end method

.method protected computeSerializedSize()I
    .locals 6

    .prologue
    .line 4044
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v3

    .line 4045
    .local v3, "size":I
    iget-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->averageFps:Ljava/lang/Integer;

    if-eqz v4, :cond_0

    .line 4046
    const/4 v4, 0x1

    iget-object v5, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->averageFps:Ljava/lang/Integer;

    .line 4047
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 4049
    :cond_0
    iget-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->frameTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->frameTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v4, v4

    if-lez v4, :cond_2

    .line 4050
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->frameTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v4, v4

    if-ge v2, v4, :cond_2

    .line 4051
    iget-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->frameTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    aget-object v1, v4, v2

    .line 4052
    .local v1, "element":Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;
    if-eqz v1, :cond_1

    .line 4053
    const/4 v4, 0x2

    .line 4054
    invoke-static {v4, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v3, v4

    .line 4050
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4058
    .end local v1    # "element":Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;
    .end local v2    # "i":I
    :cond_2
    iget-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->memoryConsumptionKilobytes:Ljava/lang/Integer;

    if-eqz v4, :cond_3

    .line 4059
    const/4 v4, 0x3

    iget-object v5, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->memoryConsumptionKilobytes:Ljava/lang/Integer;

    .line 4060
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 4062
    :cond_3
    iget-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->throttleSkinTemperatureCelsius:Ljava/lang/Float;

    if-eqz v4, :cond_4

    .line 4063
    const/4 v4, 0x4

    iget-object v5, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->throttleSkinTemperatureCelsius:Ljava/lang/Float;

    .line 4064
    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v4

    add-int/2addr v3, v4

    .line 4066
    :cond_4
    iget-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->vrMaxSkinTemperatureCelsius:Ljava/lang/Float;

    if-eqz v4, :cond_5

    .line 4067
    const/4 v4, 0x5

    iget-object v5, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->vrMaxSkinTemperatureCelsius:Ljava/lang/Float;

    .line 4068
    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v4

    add-int/2addr v3, v4

    .line 4070
    :cond_5
    iget-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->shutdownSkinTemperatureCelsius:Ljava/lang/Float;

    if-eqz v4, :cond_6

    .line 4071
    const/4 v4, 0x6

    iget-object v5, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->shutdownSkinTemperatureCelsius:Ljava/lang/Float;

    .line 4072
    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v4

    add-int/2addr v3, v4

    .line 4074
    :cond_6
    iget-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->timeSeriesData:Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData;

    if-eqz v4, :cond_7

    .line 4075
    const/4 v4, 0x7

    iget-object v5, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->timeSeriesData:Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData;

    .line 4076
    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v3, v4

    .line 4078
    :cond_7
    iget-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->appRenderTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->appRenderTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v4, v4

    if-lez v4, :cond_9

    .line 4079
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    iget-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->appRenderTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v4, v4

    if-ge v2, v4, :cond_9

    .line 4080
    iget-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->appRenderTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    aget-object v1, v4, v2

    .line 4081
    .restart local v1    # "element":Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;
    if-eqz v1, :cond_8

    .line 4082
    const/16 v4, 0x8

    .line 4083
    invoke-static {v4, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v3, v4

    .line 4079
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 4087
    .end local v1    # "element":Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;
    .end local v2    # "i":I
    :cond_9
    iget-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->presentTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    if-eqz v4, :cond_b

    iget-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->presentTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v4, v4

    if-lez v4, :cond_b

    .line 4088
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_2
    iget-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->presentTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v4, v4

    if-ge v2, v4, :cond_b

    .line 4089
    iget-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->presentTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    aget-object v1, v4, v2

    .line 4090
    .restart local v1    # "element":Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;
    if-eqz v1, :cond_a

    .line 4091
    const/16 v4, 0x9

    .line 4092
    invoke-static {v4, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v3, v4

    .line 4088
    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 4096
    .end local v1    # "element":Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;
    .end local v2    # "i":I
    :cond_b
    iget-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->totalRenderTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    if-eqz v4, :cond_d

    iget-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->totalRenderTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v4, v4

    if-lez v4, :cond_d

    .line 4097
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_3
    iget-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->totalRenderTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v4, v4

    if-ge v2, v4, :cond_d

    .line 4098
    iget-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->totalRenderTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    aget-object v1, v4, v2

    .line 4099
    .restart local v1    # "element":Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;
    if-eqz v1, :cond_c

    .line 4100
    const/16 v4, 0xa

    .line 4101
    invoke-static {v4, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v3, v4

    .line 4097
    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 4105
    .end local v1    # "element":Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;
    .end local v2    # "i":I
    :cond_d
    iget-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->postFrameTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    if-eqz v4, :cond_f

    iget-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->postFrameTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v4, v4

    if-lez v4, :cond_f

    .line 4106
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_4
    iget-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->postFrameTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v4, v4

    if-ge v2, v4, :cond_f

    .line 4107
    iget-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->postFrameTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    aget-object v1, v4, v2

    .line 4108
    .restart local v1    # "element":Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;
    if-eqz v1, :cond_e

    .line 4109
    const/16 v4, 0xb

    .line 4110
    invoke-static {v4, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v3, v4

    .line 4106
    :cond_e
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 4114
    .end local v1    # "element":Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;
    .end local v2    # "i":I
    :cond_f
    iget-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->consecutiveDroppedFrames:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    if-eqz v4, :cond_11

    iget-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->consecutiveDroppedFrames:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v4, v4

    if-lez v4, :cond_11

    .line 4115
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_5
    iget-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->consecutiveDroppedFrames:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v4, v4

    if-ge v2, v4, :cond_11

    .line 4116
    iget-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->consecutiveDroppedFrames:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    aget-object v1, v4, v2

    .line 4117
    .restart local v1    # "element":Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;
    if-eqz v1, :cond_10

    .line 4118
    const/16 v4, 0xc

    .line 4119
    invoke-static {v4, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v3, v4

    .line 4115
    :cond_10
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 4123
    .end local v1    # "element":Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;
    .end local v2    # "i":I
    :cond_11
    iget-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->scanlineRacingVsyncOvershootUs:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    if-eqz v4, :cond_13

    iget-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->scanlineRacingVsyncOvershootUs:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v4, v4

    if-lez v4, :cond_13

    .line 4124
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_6
    iget-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->scanlineRacingVsyncOvershootUs:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v4, v4

    if-ge v2, v4, :cond_13

    .line 4125
    iget-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->scanlineRacingVsyncOvershootUs:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    aget-object v1, v4, v2

    .line 4126
    .restart local v1    # "element":Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;
    if-eqz v1, :cond_12

    .line 4127
    const/16 v4, 0xd

    .line 4128
    invoke-static {v4, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v3, v4

    .line 4124
    :cond_12
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 4132
    .end local v1    # "element":Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;
    .end local v2    # "i":I
    :cond_13
    iget-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->thermalEventFlags:Ljava/lang/Integer;

    if-eqz v4, :cond_14

    .line 4133
    const/16 v4, 0xe

    iget-object v5, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->thermalEventFlags:Ljava/lang/Integer;

    .line 4134
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 4136
    :cond_14
    iget-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->cpuThrottlingTemperature:[F

    if-eqz v4, :cond_15

    iget-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->cpuThrottlingTemperature:[F

    array-length v4, v4

    if-lez v4, :cond_15

    .line 4137
    iget-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->cpuThrottlingTemperature:[F

    array-length v4, v4

    mul-int/lit8 v0, v4, 0x4

    .line 4138
    .local v0, "dataSize":I
    add-int/2addr v3, v0

    .line 4139
    iget-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->cpuThrottlingTemperature:[F

    array-length v4, v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    .line 4141
    .end local v0    # "dataSize":I
    :cond_15
    iget-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->gpuThrottlingTemperature:[F

    if-eqz v4, :cond_16

    iget-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->gpuThrottlingTemperature:[F

    array-length v4, v4

    if-lez v4, :cond_16

    .line 4142
    iget-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->gpuThrottlingTemperature:[F

    array-length v4, v4

    mul-int/lit8 v0, v4, 0x4

    .line 4143
    .restart local v0    # "dataSize":I
    add-int/2addr v3, v0

    .line 4144
    iget-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->gpuThrottlingTemperature:[F

    array-length v4, v4

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    .line 4146
    .end local v0    # "dataSize":I
    :cond_16
    iget-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->batteryThrottlingTemperature:[F

    if-eqz v4, :cond_17

    iget-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->batteryThrottlingTemperature:[F

    array-length v4, v4

    if-lez v4, :cond_17

    .line 4147
    iget-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->batteryThrottlingTemperature:[F

    array-length v4, v4

    mul-int/lit8 v0, v4, 0x4

    .line 4148
    .restart local v0    # "dataSize":I
    add-int/2addr v3, v0

    .line 4149
    iget-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->batteryThrottlingTemperature:[F

    array-length v4, v4

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    .line 4151
    .end local v0    # "dataSize":I
    :cond_17
    iget-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->cpuShutdownTemperature:[F

    if-eqz v4, :cond_18

    iget-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->cpuShutdownTemperature:[F

    array-length v4, v4

    if-lez v4, :cond_18

    .line 4152
    iget-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->cpuShutdownTemperature:[F

    array-length v4, v4

    mul-int/lit8 v0, v4, 0x4

    .line 4153
    .restart local v0    # "dataSize":I
    add-int/2addr v3, v0

    .line 4154
    iget-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->cpuShutdownTemperature:[F

    array-length v4, v4

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    .line 4156
    .end local v0    # "dataSize":I
    :cond_18
    iget-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->gpuShutdownTemperature:[F

    if-eqz v4, :cond_19

    iget-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->gpuShutdownTemperature:[F

    array-length v4, v4

    if-lez v4, :cond_19

    .line 4157
    iget-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->gpuShutdownTemperature:[F

    array-length v4, v4

    mul-int/lit8 v0, v4, 0x4

    .line 4158
    .restart local v0    # "dataSize":I
    add-int/2addr v3, v0

    .line 4159
    iget-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->gpuShutdownTemperature:[F

    array-length v4, v4

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    .line 4161
    .end local v0    # "dataSize":I
    :cond_19
    iget-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->batteryShutdownTemperature:[F

    if-eqz v4, :cond_1a

    iget-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->batteryShutdownTemperature:[F

    array-length v4, v4

    if-lez v4, :cond_1a

    .line 4162
    iget-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->batteryShutdownTemperature:[F

    array-length v4, v4

    mul-int/lit8 v0, v4, 0x4

    .line 4163
    .restart local v0    # "dataSize":I
    add-int/2addr v3, v0

    .line 4164
    iget-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->batteryShutdownTemperature:[F

    array-length v4, v4

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    .line 4166
    .end local v0    # "dataSize":I
    :cond_1a
    return v3
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;
    .locals 8
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 4174
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v5

    .line 4175
    .local v5, "tag":I
    sparse-switch v5, :sswitch_data_0

    .line 4179
    invoke-super {p0, p1, v5}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v7

    if-nez v7, :cond_0

    .line 4180
    :sswitch_0
    return-object p0

    .line 4185
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iput-object v7, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->averageFps:Ljava/lang/Integer;

    goto :goto_0

    .line 4189
    :sswitch_2
    const/16 v7, 0x12

    .line 4190
    invoke-static {p1, v7}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 4191
    .local v0, "arrayLength":I
    iget-object v7, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->frameTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    if-nez v7, :cond_2

    move v1, v6

    .line 4192
    .local v1, "i":I
    :goto_1
    add-int v7, v1, v0

    new-array v4, v7, [Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    .line 4194
    .local v4, "newArray":[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;
    if-eqz v1, :cond_1

    .line 4195
    iget-object v7, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->frameTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    invoke-static {v7, v6, v4, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4197
    :cond_1
    :goto_2
    array-length v7, v4

    add-int/lit8 v7, v7, -0x1

    if-ge v1, v7, :cond_3

    .line 4198
    new-instance v7, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    invoke-direct {v7}, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;-><init>()V

    aput-object v7, v4, v1

    .line 4199
    aget-object v7, v4, v1

    invoke-virtual {p1, v7}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 4200
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 4197
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 4191
    .end local v1    # "i":I
    .end local v4    # "newArray":[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;
    :cond_2
    iget-object v7, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->frameTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v1, v7

    goto :goto_1

    .line 4203
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;
    :cond_3
    new-instance v7, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    invoke-direct {v7}, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;-><init>()V

    aput-object v7, v4, v1

    .line 4204
    aget-object v7, v4, v1

    invoke-virtual {p1, v7}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 4205
    iput-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->frameTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    goto :goto_0

    .line 4209
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v4    # "newArray":[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iput-object v7, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->memoryConsumptionKilobytes:Ljava/lang/Integer;

    goto :goto_0

    .line 4213
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    iput-object v7, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->throttleSkinTemperatureCelsius:Ljava/lang/Float;

    goto :goto_0

    .line 4217
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    iput-object v7, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->vrMaxSkinTemperatureCelsius:Ljava/lang/Float;

    goto :goto_0

    .line 4221
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    iput-object v7, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->shutdownSkinTemperatureCelsius:Ljava/lang/Float;

    goto/16 :goto_0

    .line 4225
    :sswitch_7
    iget-object v7, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->timeSeriesData:Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData;

    if-nez v7, :cond_4

    .line 4226
    new-instance v7, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData;

    invoke-direct {v7}, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData;-><init>()V

    iput-object v7, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->timeSeriesData:Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData;

    .line 4228
    :cond_4
    iget-object v7, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->timeSeriesData:Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData;

    invoke-virtual {p1, v7}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 4232
    :sswitch_8
    const/16 v7, 0x42

    .line 4233
    invoke-static {p1, v7}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 4234
    .restart local v0    # "arrayLength":I
    iget-object v7, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->appRenderTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    if-nez v7, :cond_6

    move v1, v6

    .line 4235
    .restart local v1    # "i":I
    :goto_3
    add-int v7, v1, v0

    new-array v4, v7, [Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    .line 4237
    .restart local v4    # "newArray":[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;
    if-eqz v1, :cond_5

    .line 4238
    iget-object v7, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->appRenderTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    invoke-static {v7, v6, v4, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4240
    :cond_5
    :goto_4
    array-length v7, v4

    add-int/lit8 v7, v7, -0x1

    if-ge v1, v7, :cond_7

    .line 4241
    new-instance v7, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    invoke-direct {v7}, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;-><init>()V

    aput-object v7, v4, v1

    .line 4242
    aget-object v7, v4, v1

    invoke-virtual {p1, v7}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 4243
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 4240
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 4234
    .end local v1    # "i":I
    .end local v4    # "newArray":[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;
    :cond_6
    iget-object v7, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->appRenderTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v1, v7

    goto :goto_3

    .line 4246
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;
    :cond_7
    new-instance v7, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    invoke-direct {v7}, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;-><init>()V

    aput-object v7, v4, v1

    .line 4247
    aget-object v7, v4, v1

    invoke-virtual {p1, v7}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 4248
    iput-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->appRenderTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    goto/16 :goto_0

    .line 4252
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v4    # "newArray":[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;
    :sswitch_9
    const/16 v7, 0x4a

    .line 4253
    invoke-static {p1, v7}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 4254
    .restart local v0    # "arrayLength":I
    iget-object v7, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->presentTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    if-nez v7, :cond_9

    move v1, v6

    .line 4255
    .restart local v1    # "i":I
    :goto_5
    add-int v7, v1, v0

    new-array v4, v7, [Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    .line 4257
    .restart local v4    # "newArray":[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;
    if-eqz v1, :cond_8

    .line 4258
    iget-object v7, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->presentTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    invoke-static {v7, v6, v4, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4260
    :cond_8
    :goto_6
    array-length v7, v4

    add-int/lit8 v7, v7, -0x1

    if-ge v1, v7, :cond_a

    .line 4261
    new-instance v7, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    invoke-direct {v7}, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;-><init>()V

    aput-object v7, v4, v1

    .line 4262
    aget-object v7, v4, v1

    invoke-virtual {p1, v7}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 4263
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 4260
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 4254
    .end local v1    # "i":I
    .end local v4    # "newArray":[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;
    :cond_9
    iget-object v7, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->presentTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v1, v7

    goto :goto_5

    .line 4266
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;
    :cond_a
    new-instance v7, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    invoke-direct {v7}, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;-><init>()V

    aput-object v7, v4, v1

    .line 4267
    aget-object v7, v4, v1

    invoke-virtual {p1, v7}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 4268
    iput-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->presentTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    goto/16 :goto_0

    .line 4272
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v4    # "newArray":[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;
    :sswitch_a
    const/16 v7, 0x52

    .line 4273
    invoke-static {p1, v7}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 4274
    .restart local v0    # "arrayLength":I
    iget-object v7, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->totalRenderTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    if-nez v7, :cond_c

    move v1, v6

    .line 4275
    .restart local v1    # "i":I
    :goto_7
    add-int v7, v1, v0

    new-array v4, v7, [Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    .line 4277
    .restart local v4    # "newArray":[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;
    if-eqz v1, :cond_b

    .line 4278
    iget-object v7, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->totalRenderTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    invoke-static {v7, v6, v4, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4280
    :cond_b
    :goto_8
    array-length v7, v4

    add-int/lit8 v7, v7, -0x1

    if-ge v1, v7, :cond_d

    .line 4281
    new-instance v7, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    invoke-direct {v7}, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;-><init>()V

    aput-object v7, v4, v1

    .line 4282
    aget-object v7, v4, v1

    invoke-virtual {p1, v7}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 4283
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 4280
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 4274
    .end local v1    # "i":I
    .end local v4    # "newArray":[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;
    :cond_c
    iget-object v7, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->totalRenderTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v1, v7

    goto :goto_7

    .line 4286
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;
    :cond_d
    new-instance v7, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    invoke-direct {v7}, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;-><init>()V

    aput-object v7, v4, v1

    .line 4287
    aget-object v7, v4, v1

    invoke-virtual {p1, v7}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 4288
    iput-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->totalRenderTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    goto/16 :goto_0

    .line 4292
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v4    # "newArray":[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;
    :sswitch_b
    const/16 v7, 0x5a

    .line 4293
    invoke-static {p1, v7}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 4294
    .restart local v0    # "arrayLength":I
    iget-object v7, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->postFrameTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    if-nez v7, :cond_f

    move v1, v6

    .line 4295
    .restart local v1    # "i":I
    :goto_9
    add-int v7, v1, v0

    new-array v4, v7, [Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    .line 4297
    .restart local v4    # "newArray":[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;
    if-eqz v1, :cond_e

    .line 4298
    iget-object v7, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->postFrameTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    invoke-static {v7, v6, v4, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4300
    :cond_e
    :goto_a
    array-length v7, v4

    add-int/lit8 v7, v7, -0x1

    if-ge v1, v7, :cond_10

    .line 4301
    new-instance v7, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    invoke-direct {v7}, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;-><init>()V

    aput-object v7, v4, v1

    .line 4302
    aget-object v7, v4, v1

    invoke-virtual {p1, v7}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 4303
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 4300
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 4294
    .end local v1    # "i":I
    .end local v4    # "newArray":[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;
    :cond_f
    iget-object v7, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->postFrameTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v1, v7

    goto :goto_9

    .line 4306
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;
    :cond_10
    new-instance v7, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    invoke-direct {v7}, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;-><init>()V

    aput-object v7, v4, v1

    .line 4307
    aget-object v7, v4, v1

    invoke-virtual {p1, v7}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 4308
    iput-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->postFrameTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    goto/16 :goto_0

    .line 4312
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v4    # "newArray":[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;
    :sswitch_c
    const/16 v7, 0x62

    .line 4313
    invoke-static {p1, v7}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 4314
    .restart local v0    # "arrayLength":I
    iget-object v7, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->consecutiveDroppedFrames:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    if-nez v7, :cond_12

    move v1, v6

    .line 4315
    .restart local v1    # "i":I
    :goto_b
    add-int v7, v1, v0

    new-array v4, v7, [Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    .line 4317
    .restart local v4    # "newArray":[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;
    if-eqz v1, :cond_11

    .line 4318
    iget-object v7, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->consecutiveDroppedFrames:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    invoke-static {v7, v6, v4, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4320
    :cond_11
    :goto_c
    array-length v7, v4

    add-int/lit8 v7, v7, -0x1

    if-ge v1, v7, :cond_13

    .line 4321
    new-instance v7, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    invoke-direct {v7}, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;-><init>()V

    aput-object v7, v4, v1

    .line 4322
    aget-object v7, v4, v1

    invoke-virtual {p1, v7}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 4323
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 4320
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 4314
    .end local v1    # "i":I
    .end local v4    # "newArray":[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;
    :cond_12
    iget-object v7, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->consecutiveDroppedFrames:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v1, v7

    goto :goto_b

    .line 4326
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;
    :cond_13
    new-instance v7, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    invoke-direct {v7}, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;-><init>()V

    aput-object v7, v4, v1

    .line 4327
    aget-object v7, v4, v1

    invoke-virtual {p1, v7}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 4328
    iput-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->consecutiveDroppedFrames:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    goto/16 :goto_0

    .line 4332
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v4    # "newArray":[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;
    :sswitch_d
    const/16 v7, 0x6a

    .line 4333
    invoke-static {p1, v7}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 4334
    .restart local v0    # "arrayLength":I
    iget-object v7, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->scanlineRacingVsyncOvershootUs:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    if-nez v7, :cond_15

    move v1, v6

    .line 4335
    .restart local v1    # "i":I
    :goto_d
    add-int v7, v1, v0

    new-array v4, v7, [Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    .line 4337
    .restart local v4    # "newArray":[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;
    if-eqz v1, :cond_14

    .line 4338
    iget-object v7, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->scanlineRacingVsyncOvershootUs:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    invoke-static {v7, v6, v4, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4340
    :cond_14
    :goto_e
    array-length v7, v4

    add-int/lit8 v7, v7, -0x1

    if-ge v1, v7, :cond_16

    .line 4341
    new-instance v7, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    invoke-direct {v7}, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;-><init>()V

    aput-object v7, v4, v1

    .line 4342
    aget-object v7, v4, v1

    invoke-virtual {p1, v7}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 4343
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 4340
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 4334
    .end local v1    # "i":I
    .end local v4    # "newArray":[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;
    :cond_15
    iget-object v7, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->scanlineRacingVsyncOvershootUs:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v1, v7

    goto :goto_d

    .line 4346
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;
    :cond_16
    new-instance v7, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    invoke-direct {v7}, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;-><init>()V

    aput-object v7, v4, v1

    .line 4347
    aget-object v7, v4, v1

    invoke-virtual {p1, v7}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 4348
    iput-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->scanlineRacingVsyncOvershootUs:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    goto/16 :goto_0

    .line 4352
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v4    # "newArray":[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iput-object v7, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->thermalEventFlags:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 4356
    :sswitch_f
    const/16 v7, 0x7d

    .line 4357
    invoke-static {p1, v7}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 4358
    .restart local v0    # "arrayLength":I
    iget-object v7, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->cpuThrottlingTemperature:[F

    if-nez v7, :cond_18

    move v1, v6

    .line 4359
    .restart local v1    # "i":I
    :goto_f
    add-int v7, v1, v0

    new-array v4, v7, [F

    .line 4360
    .local v4, "newArray":[F
    if-eqz v1, :cond_17

    .line 4361
    iget-object v7, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->cpuThrottlingTemperature:[F

    invoke-static {v7, v6, v4, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4363
    :cond_17
    :goto_10
    array-length v7, v4

    add-int/lit8 v7, v7, -0x1

    if-ge v1, v7, :cond_19

    .line 4364
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v7

    aput v7, v4, v1

    .line 4365
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 4363
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 4358
    .end local v1    # "i":I
    .end local v4    # "newArray":[F
    :cond_18
    iget-object v7, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->cpuThrottlingTemperature:[F

    array-length v1, v7

    goto :goto_f

    .line 4368
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[F
    :cond_19
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v7

    aput v7, v4, v1

    .line 4369
    iput-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->cpuThrottlingTemperature:[F

    goto/16 :goto_0

    .line 4373
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v4    # "newArray":[F
    :sswitch_10
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v2

    .line 4374
    .local v2, "length":I
    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v3

    .line 4375
    .local v3, "limit":I
    div-int/lit8 v0, v2, 0x4

    .line 4376
    .restart local v0    # "arrayLength":I
    iget-object v7, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->cpuThrottlingTemperature:[F

    if-nez v7, :cond_1b

    move v1, v6

    .line 4377
    .restart local v1    # "i":I
    :goto_11
    add-int v7, v1, v0

    new-array v4, v7, [F

    .line 4378
    .restart local v4    # "newArray":[F
    if-eqz v1, :cond_1a

    .line 4379
    iget-object v7, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->cpuThrottlingTemperature:[F

    invoke-static {v7, v6, v4, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4381
    :cond_1a
    :goto_12
    array-length v7, v4

    if-ge v1, v7, :cond_1c

    .line 4382
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v7

    aput v7, v4, v1

    .line 4381
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 4376
    .end local v1    # "i":I
    .end local v4    # "newArray":[F
    :cond_1b
    iget-object v7, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->cpuThrottlingTemperature:[F

    array-length v1, v7

    goto :goto_11

    .line 4384
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[F
    :cond_1c
    iput-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->cpuThrottlingTemperature:[F

    .line 4385
    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto/16 :goto_0

    .line 4389
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "length":I
    .end local v3    # "limit":I
    .end local v4    # "newArray":[F
    :sswitch_11
    const/16 v7, 0x85

    .line 4390
    invoke-static {p1, v7}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 4391
    .restart local v0    # "arrayLength":I
    iget-object v7, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->gpuThrottlingTemperature:[F

    if-nez v7, :cond_1e

    move v1, v6

    .line 4392
    .restart local v1    # "i":I
    :goto_13
    add-int v7, v1, v0

    new-array v4, v7, [F

    .line 4393
    .restart local v4    # "newArray":[F
    if-eqz v1, :cond_1d

    .line 4394
    iget-object v7, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->gpuThrottlingTemperature:[F

    invoke-static {v7, v6, v4, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4396
    :cond_1d
    :goto_14
    array-length v7, v4

    add-int/lit8 v7, v7, -0x1

    if-ge v1, v7, :cond_1f

    .line 4397
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v7

    aput v7, v4, v1

    .line 4398
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 4396
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 4391
    .end local v1    # "i":I
    .end local v4    # "newArray":[F
    :cond_1e
    iget-object v7, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->gpuThrottlingTemperature:[F

    array-length v1, v7

    goto :goto_13

    .line 4401
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[F
    :cond_1f
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v7

    aput v7, v4, v1

    .line 4402
    iput-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->gpuThrottlingTemperature:[F

    goto/16 :goto_0

    .line 4406
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v4    # "newArray":[F
    :sswitch_12
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v2

    .line 4407
    .restart local v2    # "length":I
    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v3

    .line 4408
    .restart local v3    # "limit":I
    div-int/lit8 v0, v2, 0x4

    .line 4409
    .restart local v0    # "arrayLength":I
    iget-object v7, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->gpuThrottlingTemperature:[F

    if-nez v7, :cond_21

    move v1, v6

    .line 4410
    .restart local v1    # "i":I
    :goto_15
    add-int v7, v1, v0

    new-array v4, v7, [F

    .line 4411
    .restart local v4    # "newArray":[F
    if-eqz v1, :cond_20

    .line 4412
    iget-object v7, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->gpuThrottlingTemperature:[F

    invoke-static {v7, v6, v4, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4414
    :cond_20
    :goto_16
    array-length v7, v4

    if-ge v1, v7, :cond_22

    .line 4415
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v7

    aput v7, v4, v1

    .line 4414
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 4409
    .end local v1    # "i":I
    .end local v4    # "newArray":[F
    :cond_21
    iget-object v7, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->gpuThrottlingTemperature:[F

    array-length v1, v7

    goto :goto_15

    .line 4417
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[F
    :cond_22
    iput-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->gpuThrottlingTemperature:[F

    .line 4418
    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto/16 :goto_0

    .line 4422
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "length":I
    .end local v3    # "limit":I
    .end local v4    # "newArray":[F
    :sswitch_13
    const/16 v7, 0x8d

    .line 4423
    invoke-static {p1, v7}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 4424
    .restart local v0    # "arrayLength":I
    iget-object v7, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->batteryThrottlingTemperature:[F

    if-nez v7, :cond_24

    move v1, v6

    .line 4425
    .restart local v1    # "i":I
    :goto_17
    add-int v7, v1, v0

    new-array v4, v7, [F

    .line 4426
    .restart local v4    # "newArray":[F
    if-eqz v1, :cond_23

    .line 4427
    iget-object v7, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->batteryThrottlingTemperature:[F

    invoke-static {v7, v6, v4, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4429
    :cond_23
    :goto_18
    array-length v7, v4

    add-int/lit8 v7, v7, -0x1

    if-ge v1, v7, :cond_25

    .line 4430
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v7

    aput v7, v4, v1

    .line 4431
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 4429
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 4424
    .end local v1    # "i":I
    .end local v4    # "newArray":[F
    :cond_24
    iget-object v7, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->batteryThrottlingTemperature:[F

    array-length v1, v7

    goto :goto_17

    .line 4434
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[F
    :cond_25
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v7

    aput v7, v4, v1

    .line 4435
    iput-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->batteryThrottlingTemperature:[F

    goto/16 :goto_0

    .line 4439
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v4    # "newArray":[F
    :sswitch_14
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v2

    .line 4440
    .restart local v2    # "length":I
    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v3

    .line 4441
    .restart local v3    # "limit":I
    div-int/lit8 v0, v2, 0x4

    .line 4442
    .restart local v0    # "arrayLength":I
    iget-object v7, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->batteryThrottlingTemperature:[F

    if-nez v7, :cond_27

    move v1, v6

    .line 4443
    .restart local v1    # "i":I
    :goto_19
    add-int v7, v1, v0

    new-array v4, v7, [F

    .line 4444
    .restart local v4    # "newArray":[F
    if-eqz v1, :cond_26

    .line 4445
    iget-object v7, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->batteryThrottlingTemperature:[F

    invoke-static {v7, v6, v4, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4447
    :cond_26
    :goto_1a
    array-length v7, v4

    if-ge v1, v7, :cond_28

    .line 4448
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v7

    aput v7, v4, v1

    .line 4447
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    .line 4442
    .end local v1    # "i":I
    .end local v4    # "newArray":[F
    :cond_27
    iget-object v7, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->batteryThrottlingTemperature:[F

    array-length v1, v7

    goto :goto_19

    .line 4450
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[F
    :cond_28
    iput-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->batteryThrottlingTemperature:[F

    .line 4451
    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto/16 :goto_0

    .line 4455
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "length":I
    .end local v3    # "limit":I
    .end local v4    # "newArray":[F
    :sswitch_15
    const/16 v7, 0x95

    .line 4456
    invoke-static {p1, v7}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 4457
    .restart local v0    # "arrayLength":I
    iget-object v7, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->cpuShutdownTemperature:[F

    if-nez v7, :cond_2a

    move v1, v6

    .line 4458
    .restart local v1    # "i":I
    :goto_1b
    add-int v7, v1, v0

    new-array v4, v7, [F

    .line 4459
    .restart local v4    # "newArray":[F
    if-eqz v1, :cond_29

    .line 4460
    iget-object v7, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->cpuShutdownTemperature:[F

    invoke-static {v7, v6, v4, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4462
    :cond_29
    :goto_1c
    array-length v7, v4

    add-int/lit8 v7, v7, -0x1

    if-ge v1, v7, :cond_2b

    .line 4463
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v7

    aput v7, v4, v1

    .line 4464
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 4462
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    .line 4457
    .end local v1    # "i":I
    .end local v4    # "newArray":[F
    :cond_2a
    iget-object v7, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->cpuShutdownTemperature:[F

    array-length v1, v7

    goto :goto_1b

    .line 4467
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[F
    :cond_2b
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v7

    aput v7, v4, v1

    .line 4468
    iput-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->cpuShutdownTemperature:[F

    goto/16 :goto_0

    .line 4472
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v4    # "newArray":[F
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v2

    .line 4473
    .restart local v2    # "length":I
    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v3

    .line 4474
    .restart local v3    # "limit":I
    div-int/lit8 v0, v2, 0x4

    .line 4475
    .restart local v0    # "arrayLength":I
    iget-object v7, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->cpuShutdownTemperature:[F

    if-nez v7, :cond_2d

    move v1, v6

    .line 4476
    .restart local v1    # "i":I
    :goto_1d
    add-int v7, v1, v0

    new-array v4, v7, [F

    .line 4477
    .restart local v4    # "newArray":[F
    if-eqz v1, :cond_2c

    .line 4478
    iget-object v7, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->cpuShutdownTemperature:[F

    invoke-static {v7, v6, v4, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4480
    :cond_2c
    :goto_1e
    array-length v7, v4

    if-ge v1, v7, :cond_2e

    .line 4481
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v7

    aput v7, v4, v1

    .line 4480
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    .line 4475
    .end local v1    # "i":I
    .end local v4    # "newArray":[F
    :cond_2d
    iget-object v7, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->cpuShutdownTemperature:[F

    array-length v1, v7

    goto :goto_1d

    .line 4483
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[F
    :cond_2e
    iput-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->cpuShutdownTemperature:[F

    .line 4484
    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto/16 :goto_0

    .line 4488
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "length":I
    .end local v3    # "limit":I
    .end local v4    # "newArray":[F
    :sswitch_17
    const/16 v7, 0x9d

    .line 4489
    invoke-static {p1, v7}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 4490
    .restart local v0    # "arrayLength":I
    iget-object v7, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->gpuShutdownTemperature:[F

    if-nez v7, :cond_30

    move v1, v6

    .line 4491
    .restart local v1    # "i":I
    :goto_1f
    add-int v7, v1, v0

    new-array v4, v7, [F

    .line 4492
    .restart local v4    # "newArray":[F
    if-eqz v1, :cond_2f

    .line 4493
    iget-object v7, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->gpuShutdownTemperature:[F

    invoke-static {v7, v6, v4, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4495
    :cond_2f
    :goto_20
    array-length v7, v4

    add-int/lit8 v7, v7, -0x1

    if-ge v1, v7, :cond_31

    .line 4496
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v7

    aput v7, v4, v1

    .line 4497
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 4495
    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    .line 4490
    .end local v1    # "i":I
    .end local v4    # "newArray":[F
    :cond_30
    iget-object v7, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->gpuShutdownTemperature:[F

    array-length v1, v7

    goto :goto_1f

    .line 4500
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[F
    :cond_31
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v7

    aput v7, v4, v1

    .line 4501
    iput-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->gpuShutdownTemperature:[F

    goto/16 :goto_0

    .line 4505
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v4    # "newArray":[F
    :sswitch_18
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v2

    .line 4506
    .restart local v2    # "length":I
    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v3

    .line 4507
    .restart local v3    # "limit":I
    div-int/lit8 v0, v2, 0x4

    .line 4508
    .restart local v0    # "arrayLength":I
    iget-object v7, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->gpuShutdownTemperature:[F

    if-nez v7, :cond_33

    move v1, v6

    .line 4509
    .restart local v1    # "i":I
    :goto_21
    add-int v7, v1, v0

    new-array v4, v7, [F

    .line 4510
    .restart local v4    # "newArray":[F
    if-eqz v1, :cond_32

    .line 4511
    iget-object v7, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->gpuShutdownTemperature:[F

    invoke-static {v7, v6, v4, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4513
    :cond_32
    :goto_22
    array-length v7, v4

    if-ge v1, v7, :cond_34

    .line 4514
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v7

    aput v7, v4, v1

    .line 4513
    add-int/lit8 v1, v1, 0x1

    goto :goto_22

    .line 4508
    .end local v1    # "i":I
    .end local v4    # "newArray":[F
    :cond_33
    iget-object v7, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->gpuShutdownTemperature:[F

    array-length v1, v7

    goto :goto_21

    .line 4516
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[F
    :cond_34
    iput-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->gpuShutdownTemperature:[F

    .line 4517
    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto/16 :goto_0

    .line 4521
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "length":I
    .end local v3    # "limit":I
    .end local v4    # "newArray":[F
    :sswitch_19
    const/16 v7, 0xa5

    .line 4522
    invoke-static {p1, v7}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 4523
    .restart local v0    # "arrayLength":I
    iget-object v7, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->batteryShutdownTemperature:[F

    if-nez v7, :cond_36

    move v1, v6

    .line 4524
    .restart local v1    # "i":I
    :goto_23
    add-int v7, v1, v0

    new-array v4, v7, [F

    .line 4525
    .restart local v4    # "newArray":[F
    if-eqz v1, :cond_35

    .line 4526
    iget-object v7, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->batteryShutdownTemperature:[F

    invoke-static {v7, v6, v4, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4528
    :cond_35
    :goto_24
    array-length v7, v4

    add-int/lit8 v7, v7, -0x1

    if-ge v1, v7, :cond_37

    .line 4529
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v7

    aput v7, v4, v1

    .line 4530
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 4528
    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    .line 4523
    .end local v1    # "i":I
    .end local v4    # "newArray":[F
    :cond_36
    iget-object v7, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->batteryShutdownTemperature:[F

    array-length v1, v7

    goto :goto_23

    .line 4533
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[F
    :cond_37
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v7

    aput v7, v4, v1

    .line 4534
    iput-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->batteryShutdownTemperature:[F

    goto/16 :goto_0

    .line 4538
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v4    # "newArray":[F
    :sswitch_1a
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v2

    .line 4539
    .restart local v2    # "length":I
    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v3

    .line 4540
    .restart local v3    # "limit":I
    div-int/lit8 v0, v2, 0x4

    .line 4541
    .restart local v0    # "arrayLength":I
    iget-object v7, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->batteryShutdownTemperature:[F

    if-nez v7, :cond_39

    move v1, v6

    .line 4542
    .restart local v1    # "i":I
    :goto_25
    add-int v7, v1, v0

    new-array v4, v7, [F

    .line 4543
    .restart local v4    # "newArray":[F
    if-eqz v1, :cond_38

    .line 4544
    iget-object v7, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->batteryShutdownTemperature:[F

    invoke-static {v7, v6, v4, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4546
    :cond_38
    :goto_26
    array-length v7, v4

    if-ge v1, v7, :cond_3a

    .line 4547
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v7

    aput v7, v4, v1

    .line 4546
    add-int/lit8 v1, v1, 0x1

    goto :goto_26

    .line 4541
    .end local v1    # "i":I
    .end local v4    # "newArray":[F
    :cond_39
    iget-object v7, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->batteryShutdownTemperature:[F

    array-length v1, v7

    goto :goto_25

    .line 4549
    .restart local v1    # "i":I
    .restart local v4    # "newArray":[F
    :cond_3a
    iput-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->batteryShutdownTemperature:[F

    .line 4550
    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto/16 :goto_0

    .line 4175
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x25 -> :sswitch_4
        0x2d -> :sswitch_5
        0x35 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
        0x4a -> :sswitch_9
        0x52 -> :sswitch_a
        0x5a -> :sswitch_b
        0x62 -> :sswitch_c
        0x6a -> :sswitch_d
        0x70 -> :sswitch_e
        0x7a -> :sswitch_10
        0x7d -> :sswitch_f
        0x82 -> :sswitch_12
        0x85 -> :sswitch_11
        0x8a -> :sswitch_14
        0x8d -> :sswitch_13
        0x92 -> :sswitch_16
        0x95 -> :sswitch_15
        0x9a -> :sswitch_18
        0x9d -> :sswitch_17
        0xa2 -> :sswitch_1a
        0xa5 -> :sswitch_19
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
    .line 3725
    invoke-virtual {p0, p1}, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;

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
    .line 3932
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->averageFps:Ljava/lang/Integer;

    if-eqz v2, :cond_0

    .line 3933
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->averageFps:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3935
    :cond_0
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->frameTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->frameTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v2, v2

    if-lez v2, :cond_2

    .line 3936
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->frameTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 3937
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->frameTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    aget-object v0, v2, v1

    .line 3938
    .local v0, "element":Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;
    if-eqz v0, :cond_1

    .line 3939
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 3936
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3943
    .end local v0    # "element":Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;
    .end local v1    # "i":I
    :cond_2
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->memoryConsumptionKilobytes:Ljava/lang/Integer;

    if-eqz v2, :cond_3

    .line 3944
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->memoryConsumptionKilobytes:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3946
    :cond_3
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->throttleSkinTemperatureCelsius:Ljava/lang/Float;

    if-eqz v2, :cond_4

    .line 3947
    const/4 v2, 0x4

    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->throttleSkinTemperatureCelsius:Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 3949
    :cond_4
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->vrMaxSkinTemperatureCelsius:Ljava/lang/Float;

    if-eqz v2, :cond_5

    .line 3950
    const/4 v2, 0x5

    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->vrMaxSkinTemperatureCelsius:Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 3952
    :cond_5
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->shutdownSkinTemperatureCelsius:Ljava/lang/Float;

    if-eqz v2, :cond_6

    .line 3953
    const/4 v2, 0x6

    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->shutdownSkinTemperatureCelsius:Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 3955
    :cond_6
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->timeSeriesData:Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData;

    if-eqz v2, :cond_7

    .line 3956
    const/4 v2, 0x7

    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->timeSeriesData:Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 3958
    :cond_7
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->appRenderTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->appRenderTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v2, v2

    if-lez v2, :cond_9

    .line 3959
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->appRenderTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v2, v2

    if-ge v1, v2, :cond_9

    .line 3960
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->appRenderTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    aget-object v0, v2, v1

    .line 3961
    .restart local v0    # "element":Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;
    if-eqz v0, :cond_8

    .line 3962
    const/16 v2, 0x8

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 3959
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3966
    .end local v0    # "element":Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;
    .end local v1    # "i":I
    :cond_9
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->presentTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->presentTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v2, v2

    if-lez v2, :cond_b

    .line 3967
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->presentTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v2, v2

    if-ge v1, v2, :cond_b

    .line 3968
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->presentTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    aget-object v0, v2, v1

    .line 3969
    .restart local v0    # "element":Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;
    if-eqz v0, :cond_a

    .line 3970
    const/16 v2, 0x9

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 3967
    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 3974
    .end local v0    # "element":Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;
    .end local v1    # "i":I
    :cond_b
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->totalRenderTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->totalRenderTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v2, v2

    if-lez v2, :cond_d

    .line 3975
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_3
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->totalRenderTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v2, v2

    if-ge v1, v2, :cond_d

    .line 3976
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->totalRenderTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    aget-object v0, v2, v1

    .line 3977
    .restart local v0    # "element":Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;
    if-eqz v0, :cond_c

    .line 3978
    const/16 v2, 0xa

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 3975
    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 3982
    .end local v0    # "element":Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;
    .end local v1    # "i":I
    :cond_d
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->postFrameTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->postFrameTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v2, v2

    if-lez v2, :cond_f

    .line 3983
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_4
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->postFrameTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v2, v2

    if-ge v1, v2, :cond_f

    .line 3984
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->postFrameTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    aget-object v0, v2, v1

    .line 3985
    .restart local v0    # "element":Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;
    if-eqz v0, :cond_e

    .line 3986
    const/16 v2, 0xb

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 3983
    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 3990
    .end local v0    # "element":Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;
    .end local v1    # "i":I
    :cond_f
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->consecutiveDroppedFrames:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->consecutiveDroppedFrames:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v2, v2

    if-lez v2, :cond_11

    .line 3991
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_5
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->consecutiveDroppedFrames:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v2, v2

    if-ge v1, v2, :cond_11

    .line 3992
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->consecutiveDroppedFrames:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    aget-object v0, v2, v1

    .line 3993
    .restart local v0    # "element":Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;
    if-eqz v0, :cond_10

    .line 3994
    const/16 v2, 0xc

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 3991
    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 3998
    .end local v0    # "element":Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;
    .end local v1    # "i":I
    :cond_11
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->scanlineRacingVsyncOvershootUs:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    if-eqz v2, :cond_13

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->scanlineRacingVsyncOvershootUs:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v2, v2

    if-lez v2, :cond_13

    .line 3999
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_6
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->scanlineRacingVsyncOvershootUs:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v2, v2

    if-ge v1, v2, :cond_13

    .line 4000
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->scanlineRacingVsyncOvershootUs:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    aget-object v0, v2, v1

    .line 4001
    .restart local v0    # "element":Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;
    if-eqz v0, :cond_12

    .line 4002
    const/16 v2, 0xd

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 3999
    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 4006
    .end local v0    # "element":Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;
    .end local v1    # "i":I
    :cond_13
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->thermalEventFlags:Ljava/lang/Integer;

    if-eqz v2, :cond_14

    .line 4007
    const/16 v2, 0xe

    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->thermalEventFlags:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 4009
    :cond_14
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->cpuThrottlingTemperature:[F

    if-eqz v2, :cond_15

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->cpuThrottlingTemperature:[F

    array-length v2, v2

    if-lez v2, :cond_15

    .line 4010
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_7
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->cpuThrottlingTemperature:[F

    array-length v2, v2

    if-ge v1, v2, :cond_15

    .line 4011
    const/16 v2, 0xf

    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->cpuThrottlingTemperature:[F

    aget v3, v3, v1

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 4010
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 4014
    .end local v1    # "i":I
    :cond_15
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->gpuThrottlingTemperature:[F

    if-eqz v2, :cond_16

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->gpuThrottlingTemperature:[F

    array-length v2, v2

    if-lez v2, :cond_16

    .line 4015
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_8
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->gpuThrottlingTemperature:[F

    array-length v2, v2

    if-ge v1, v2, :cond_16

    .line 4016
    const/16 v2, 0x10

    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->gpuThrottlingTemperature:[F

    aget v3, v3, v1

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 4015
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 4019
    .end local v1    # "i":I
    :cond_16
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->batteryThrottlingTemperature:[F

    if-eqz v2, :cond_17

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->batteryThrottlingTemperature:[F

    array-length v2, v2

    if-lez v2, :cond_17

    .line 4020
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_9
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->batteryThrottlingTemperature:[F

    array-length v2, v2

    if-ge v1, v2, :cond_17

    .line 4021
    const/16 v2, 0x11

    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->batteryThrottlingTemperature:[F

    aget v3, v3, v1

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 4020
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 4024
    .end local v1    # "i":I
    :cond_17
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->cpuShutdownTemperature:[F

    if-eqz v2, :cond_18

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->cpuShutdownTemperature:[F

    array-length v2, v2

    if-lez v2, :cond_18

    .line 4025
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_a
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->cpuShutdownTemperature:[F

    array-length v2, v2

    if-ge v1, v2, :cond_18

    .line 4026
    const/16 v2, 0x12

    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->cpuShutdownTemperature:[F

    aget v3, v3, v1

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 4025
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 4029
    .end local v1    # "i":I
    :cond_18
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->gpuShutdownTemperature:[F

    if-eqz v2, :cond_19

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->gpuShutdownTemperature:[F

    array-length v2, v2

    if-lez v2, :cond_19

    .line 4030
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_b
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->gpuShutdownTemperature:[F

    array-length v2, v2

    if-ge v1, v2, :cond_19

    .line 4031
    const/16 v2, 0x13

    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->gpuShutdownTemperature:[F

    aget v3, v3, v1

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 4030
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 4034
    .end local v1    # "i":I
    :cond_19
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->batteryShutdownTemperature:[F

    if-eqz v2, :cond_1a

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->batteryShutdownTemperature:[F

    array-length v2, v2

    if-lez v2, :cond_1a

    .line 4035
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_c
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->batteryShutdownTemperature:[F

    array-length v2, v2

    if-ge v1, v2, :cond_1a

    .line 4036
    const/16 v2, 0x14

    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->batteryShutdownTemperature:[F

    aget v3, v3, v1

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 4035
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 4039
    .end local v1    # "i":I
    :cond_1a
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 4040
    return-void
.end method
