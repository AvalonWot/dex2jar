.class public Lcom/google/vr/sdk/base/sensors/internal/GyroscopeBiasEstimator;
.super Ljava/lang/Object;
.source "GyroscopeBiasEstimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/sdk/base/sensors/internal/GyroscopeBiasEstimator$IsStaticCounter;
    }
.end annotation


# static fields
.field private static final ACCEL_DIFF_STATIC_THRESHOLD:F = 0.5f

.field private static final ACCEL_LOWPASS_FREQ:F = 1.0f

.field private static final GYRO_BIAS_LOWPASS_FREQ:F = 0.15f

.field private static final GYRO_DIFF_STATIC_THRESHOLD:F = 0.008f

.field private static final GYRO_FOR_BIAS_THRESHOLD:F = 0.35f

.field private static final GYRO_LOWPASS_FREQ:F = 10.0f

.field private static final IS_STATIC_NUM_FRAMES_THRESHOLD:I = 0xa

.field private static final NUM_GYRO_BIAS_SAMPLES_INITIAL_SMOOTHING:I = 0x64

.field private static final NUM_GYRO_BIAS_SAMPLES_THRESHOLD:I = 0x1e


# instance fields
.field private accelLowPass:Lcom/google/vr/sdk/base/sensors/internal/LowPassFilter;

.field private gyroBiasLowPass:Lcom/google/vr/sdk/base/sensors/internal/LowPassFilter;

.field private gyroLowPass:Lcom/google/vr/sdk/base/sensors/internal/LowPassFilter;

.field private isAccelStatic:Lcom/google/vr/sdk/base/sensors/internal/GyroscopeBiasEstimator$IsStaticCounter;

.field private isGyroStatic:Lcom/google/vr/sdk/base/sensors/internal/GyroscopeBiasEstimator$IsStaticCounter;

.field private smoothedAccelDiff:Lcom/google/vr/sdk/base/sensors/internal/Vector3d;

.field private smoothedGyroDiff:Lcom/google/vr/sdk/base/sensors/internal/Vector3d;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    invoke-virtual {p0}, Lcom/google/vr/sdk/base/sensors/internal/GyroscopeBiasEstimator;->reset()V

    .line 62
    return-void
.end method

.method private updateGyroBias(Lcom/google/vr/sdk/base/sensors/internal/Vector3d;J)V
    .locals 10
    .param p1, "gyro"    # Lcom/google/vr/sdk/base/sensors/internal/Vector3d;
    .param p2, "sensorTimestampNs"    # J

    .prologue
    const-wide v8, 0x3fd6666660000000L    # 0.3499999940395355

    .line 141
    invoke-virtual {p1}, Lcom/google/vr/sdk/base/sensors/internal/Vector3d;->length()D

    move-result-wide v0

    cmpl-double v0, v0, v8

    if-ltz v0, :cond_0

    .line 151
    :goto_0
    return-void

    .line 147
    :cond_0
    const-wide/16 v0, 0x0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p1}, Lcom/google/vr/sdk/base/sensors/internal/Vector3d;->length()D

    move-result-wide v6

    div-double/2addr v6, v8

    sub-double/2addr v2, v6

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    .line 148
    .local v4, "updateWeight":D
    mul-double/2addr v4, v4

    .line 149
    iget-object v0, p0, Lcom/google/vr/sdk/base/sensors/internal/GyroscopeBiasEstimator;->gyroBiasLowPass:Lcom/google/vr/sdk/base/sensors/internal/LowPassFilter;

    iget-object v1, p0, Lcom/google/vr/sdk/base/sensors/internal/GyroscopeBiasEstimator;->gyroLowPass:Lcom/google/vr/sdk/base/sensors/internal/LowPassFilter;

    invoke-virtual {v1}, Lcom/google/vr/sdk/base/sensors/internal/LowPassFilter;->getFilteredData()Lcom/google/vr/sdk/base/sensors/internal/Vector3d;

    move-result-object v1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/vr/sdk/base/sensors/internal/LowPassFilter;->addWeightedSample(Lcom/google/vr/sdk/base/sensors/internal/Vector3d;JD)V

    goto :goto_0
.end method


# virtual methods
.method public getGyroBias(Lcom/google/vr/sdk/base/sensors/internal/Vector3d;)V
    .locals 8
    .param p1, "result"    # Lcom/google/vr/sdk/base/sensors/internal/Vector3d;

    .prologue
    .line 117
    iget-object v2, p0, Lcom/google/vr/sdk/base/sensors/internal/GyroscopeBiasEstimator;->gyroBiasLowPass:Lcom/google/vr/sdk/base/sensors/internal/LowPassFilter;

    invoke-virtual {v2}, Lcom/google/vr/sdk/base/sensors/internal/LowPassFilter;->getNumSamples()I

    move-result v2

    const/16 v3, 0x1e

    if-ge v2, v3, :cond_0

    .line 118
    invoke-virtual {p1}, Lcom/google/vr/sdk/base/sensors/internal/Vector3d;->setZero()V

    .line 129
    :goto_0
    return-void

    .line 120
    :cond_0
    iget-object v2, p0, Lcom/google/vr/sdk/base/sensors/internal/GyroscopeBiasEstimator;->gyroBiasLowPass:Lcom/google/vr/sdk/base/sensors/internal/LowPassFilter;

    invoke-virtual {v2}, Lcom/google/vr/sdk/base/sensors/internal/LowPassFilter;->getFilteredData()Lcom/google/vr/sdk/base/sensors/internal/Vector3d;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/google/vr/sdk/base/sensors/internal/Vector3d;->set(Lcom/google/vr/sdk/base/sensors/internal/Vector3d;)V

    .line 124
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    iget-object v4, p0, Lcom/google/vr/sdk/base/sensors/internal/GyroscopeBiasEstimator;->gyroBiasLowPass:Lcom/google/vr/sdk/base/sensors/internal/LowPassFilter;

    .line 125
    invoke-virtual {v4}, Lcom/google/vr/sdk/base/sensors/internal/LowPassFilter;->getNumSamples()I

    move-result v4

    add-int/lit8 v4, v4, -0x1e

    int-to-double v4, v4

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    div-double/2addr v4, v6

    .line 124
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    .line 127
    .local v0, "rampUpRatio":D
    invoke-virtual {p1, v0, v1}, Lcom/google/vr/sdk/base/sensors/internal/Vector3d;->scale(D)V

    goto :goto_0
.end method

.method public processAccelerometer(Lcom/google/vr/sdk/base/sensors/internal/Vector3d;J)V
    .locals 6
    .param p1, "accel"    # Lcom/google/vr/sdk/base/sensors/internal/Vector3d;
    .param p2, "sensorTimestampNs"    # J

    .prologue
    .line 107
    iget-object v0, p0, Lcom/google/vr/sdk/base/sensors/internal/GyroscopeBiasEstimator;->accelLowPass:Lcom/google/vr/sdk/base/sensors/internal/LowPassFilter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/vr/sdk/base/sensors/internal/LowPassFilter;->addSample(Lcom/google/vr/sdk/base/sensors/internal/Vector3d;J)V

    .line 108
    iget-object v0, p0, Lcom/google/vr/sdk/base/sensors/internal/GyroscopeBiasEstimator;->accelLowPass:Lcom/google/vr/sdk/base/sensors/internal/LowPassFilter;

    invoke-virtual {v0}, Lcom/google/vr/sdk/base/sensors/internal/LowPassFilter;->getFilteredData()Lcom/google/vr/sdk/base/sensors/internal/Vector3d;

    move-result-object v0

    iget-object v1, p0, Lcom/google/vr/sdk/base/sensors/internal/GyroscopeBiasEstimator;->smoothedAccelDiff:Lcom/google/vr/sdk/base/sensors/internal/Vector3d;

    invoke-static {p1, v0, v1}, Lcom/google/vr/sdk/base/sensors/internal/Vector3d;->sub(Lcom/google/vr/sdk/base/sensors/internal/Vector3d;Lcom/google/vr/sdk/base/sensors/internal/Vector3d;Lcom/google/vr/sdk/base/sensors/internal/Vector3d;)V

    .line 109
    iget-object v1, p0, Lcom/google/vr/sdk/base/sensors/internal/GyroscopeBiasEstimator;->isAccelStatic:Lcom/google/vr/sdk/base/sensors/internal/GyroscopeBiasEstimator$IsStaticCounter;

    iget-object v0, p0, Lcom/google/vr/sdk/base/sensors/internal/GyroscopeBiasEstimator;->smoothedAccelDiff:Lcom/google/vr/sdk/base/sensors/internal/Vector3d;

    invoke-virtual {v0}, Lcom/google/vr/sdk/base/sensors/internal/Vector3d;->length()D

    move-result-wide v2

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    cmpg-double v0, v2, v4

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/google/vr/sdk/base/sensors/internal/GyroscopeBiasEstimator$IsStaticCounter;->appendFrame(Z)V

    .line 110
    return-void

    .line 109
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public processGyroscope(Lcom/google/vr/sdk/base/sensors/internal/Vector3d;J)V
    .locals 6
    .param p1, "gyro"    # Lcom/google/vr/sdk/base/sensors/internal/Vector3d;
    .param p2, "sensorTimestampNs"    # J

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/vr/sdk/base/sensors/internal/GyroscopeBiasEstimator;->gyroLowPass:Lcom/google/vr/sdk/base/sensors/internal/LowPassFilter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/vr/sdk/base/sensors/internal/LowPassFilter;->addSample(Lcom/google/vr/sdk/base/sensors/internal/Vector3d;J)V

    .line 87
    iget-object v0, p0, Lcom/google/vr/sdk/base/sensors/internal/GyroscopeBiasEstimator;->gyroLowPass:Lcom/google/vr/sdk/base/sensors/internal/LowPassFilter;

    invoke-virtual {v0}, Lcom/google/vr/sdk/base/sensors/internal/LowPassFilter;->getFilteredData()Lcom/google/vr/sdk/base/sensors/internal/Vector3d;

    move-result-object v0

    iget-object v1, p0, Lcom/google/vr/sdk/base/sensors/internal/GyroscopeBiasEstimator;->smoothedGyroDiff:Lcom/google/vr/sdk/base/sensors/internal/Vector3d;

    invoke-static {p1, v0, v1}, Lcom/google/vr/sdk/base/sensors/internal/Vector3d;->sub(Lcom/google/vr/sdk/base/sensors/internal/Vector3d;Lcom/google/vr/sdk/base/sensors/internal/Vector3d;Lcom/google/vr/sdk/base/sensors/internal/Vector3d;)V

    .line 89
    iget-object v1, p0, Lcom/google/vr/sdk/base/sensors/internal/GyroscopeBiasEstimator;->isGyroStatic:Lcom/google/vr/sdk/base/sensors/internal/GyroscopeBiasEstimator$IsStaticCounter;

    iget-object v0, p0, Lcom/google/vr/sdk/base/sensors/internal/GyroscopeBiasEstimator;->smoothedGyroDiff:Lcom/google/vr/sdk/base/sensors/internal/Vector3d;

    invoke-virtual {v0}, Lcom/google/vr/sdk/base/sensors/internal/Vector3d;->length()D

    move-result-wide v2

    const-wide v4, 0x3f80624de0000000L    # 0.00800000037997961

    cmpg-double v0, v2, v4

    if-gez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/google/vr/sdk/base/sensors/internal/GyroscopeBiasEstimator$IsStaticCounter;->appendFrame(Z)V

    .line 93
    iget-object v0, p0, Lcom/google/vr/sdk/base/sensors/internal/GyroscopeBiasEstimator;->isGyroStatic:Lcom/google/vr/sdk/base/sensors/internal/GyroscopeBiasEstimator$IsStaticCounter;

    invoke-virtual {v0}, Lcom/google/vr/sdk/base/sensors/internal/GyroscopeBiasEstimator$IsStaticCounter;->isRecentlyStatic()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/vr/sdk/base/sensors/internal/GyroscopeBiasEstimator;->isAccelStatic:Lcom/google/vr/sdk/base/sensors/internal/GyroscopeBiasEstimator$IsStaticCounter;

    invoke-virtual {v0}, Lcom/google/vr/sdk/base/sensors/internal/GyroscopeBiasEstimator$IsStaticCounter;->isRecentlyStatic()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    invoke-direct {p0, p1, p2, p3}, Lcom/google/vr/sdk/base/sensors/internal/GyroscopeBiasEstimator;->updateGyroBias(Lcom/google/vr/sdk/base/sensors/internal/Vector3d;J)V

    .line 96
    :cond_0
    return-void

    .line 89
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reset()V
    .locals 4

    .prologue
    const/16 v1, 0xa

    .line 68
    new-instance v0, Lcom/google/vr/sdk/base/sensors/internal/Vector3d;

    invoke-direct {v0}, Lcom/google/vr/sdk/base/sensors/internal/Vector3d;-><init>()V

    iput-object v0, p0, Lcom/google/vr/sdk/base/sensors/internal/GyroscopeBiasEstimator;->smoothedGyroDiff:Lcom/google/vr/sdk/base/sensors/internal/Vector3d;

    .line 69
    new-instance v0, Lcom/google/vr/sdk/base/sensors/internal/Vector3d;

    invoke-direct {v0}, Lcom/google/vr/sdk/base/sensors/internal/Vector3d;-><init>()V

    iput-object v0, p0, Lcom/google/vr/sdk/base/sensors/internal/GyroscopeBiasEstimator;->smoothedAccelDiff:Lcom/google/vr/sdk/base/sensors/internal/Vector3d;

    .line 70
    new-instance v0, Lcom/google/vr/sdk/base/sensors/internal/LowPassFilter;

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-direct {v0, v2, v3}, Lcom/google/vr/sdk/base/sensors/internal/LowPassFilter;-><init>(D)V

    iput-object v0, p0, Lcom/google/vr/sdk/base/sensors/internal/GyroscopeBiasEstimator;->accelLowPass:Lcom/google/vr/sdk/base/sensors/internal/LowPassFilter;

    .line 71
    new-instance v0, Lcom/google/vr/sdk/base/sensors/internal/LowPassFilter;

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    invoke-direct {v0, v2, v3}, Lcom/google/vr/sdk/base/sensors/internal/LowPassFilter;-><init>(D)V

    iput-object v0, p0, Lcom/google/vr/sdk/base/sensors/internal/GyroscopeBiasEstimator;->gyroLowPass:Lcom/google/vr/sdk/base/sensors/internal/LowPassFilter;

    .line 72
    new-instance v0, Lcom/google/vr/sdk/base/sensors/internal/LowPassFilter;

    const-wide v2, 0x3fc3333340000000L    # 0.15000000596046448

    invoke-direct {v0, v2, v3}, Lcom/google/vr/sdk/base/sensors/internal/LowPassFilter;-><init>(D)V

    iput-object v0, p0, Lcom/google/vr/sdk/base/sensors/internal/GyroscopeBiasEstimator;->gyroBiasLowPass:Lcom/google/vr/sdk/base/sensors/internal/LowPassFilter;

    .line 73
    new-instance v0, Lcom/google/vr/sdk/base/sensors/internal/GyroscopeBiasEstimator$IsStaticCounter;

    invoke-direct {v0, v1}, Lcom/google/vr/sdk/base/sensors/internal/GyroscopeBiasEstimator$IsStaticCounter;-><init>(I)V

    iput-object v0, p0, Lcom/google/vr/sdk/base/sensors/internal/GyroscopeBiasEstimator;->isAccelStatic:Lcom/google/vr/sdk/base/sensors/internal/GyroscopeBiasEstimator$IsStaticCounter;

    .line 74
    new-instance v0, Lcom/google/vr/sdk/base/sensors/internal/GyroscopeBiasEstimator$IsStaticCounter;

    invoke-direct {v0, v1}, Lcom/google/vr/sdk/base/sensors/internal/GyroscopeBiasEstimator$IsStaticCounter;-><init>(I)V

    iput-object v0, p0, Lcom/google/vr/sdk/base/sensors/internal/GyroscopeBiasEstimator;->isGyroStatic:Lcom/google/vr/sdk/base/sensors/internal/GyroscopeBiasEstimator$IsStaticCounter;

    .line 75
    return-void
.end method
