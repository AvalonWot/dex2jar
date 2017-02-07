.class public Lcom/google/vr/sdk/base/sensors/HeadTracker;
.super Ljava/lang/Object;
.source "HeadTracker.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# static fields
.field private static final DEFAULT_NECK_HORIZONTAL_OFFSET:F = 0.08f

.field private static final DEFAULT_NECK_MODEL_FACTOR:F = 1.0f

.field private static final DEFAULT_NECK_VERTICAL_OFFSET:F = 0.075f

.field private static final PREDICTION_TIME_IN_SECONDS:F = 0.058f


# instance fields
.field private clock:Lcom/google/vr/sdk/base/sensors/Clock;

.field private final display:Landroid/view/Display;

.field private displayRotation:F

.field private final ekfToHeadTracker:[F

.field private volatile firstGyroValue:Z

.field private final gyroBias:Lcom/google/vr/sdk/base/sensors/internal/Vector3d;

.field private gyroBiasEstimator:Lcom/google/vr/sdk/base/sensors/internal/GyroscopeBiasEstimator;

.field private final gyroBiasEstimatorMutex:Ljava/lang/Object;

.field private initialSystemGyroBias:[F

.field private final latestAcc:Lcom/google/vr/sdk/base/sensors/internal/Vector3d;

.field private final latestGyro:Lcom/google/vr/sdk/base/sensors/internal/Vector3d;

.field private latestGyroEventClockTimeNs:J

.field private neckModelFactor:F

.field private final neckModelFactorMutex:Ljava/lang/Object;

.field private final neckModelTranslation:[F

.field private sensorEventProvider:Lcom/google/vr/sdk/base/sensors/SensorEventProvider;

.field private final sensorToDisplay:[F

.field private final tmpHeadView:[F

.field private final tmpHeadView2:[F

.field private final tracker:Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;

.field private volatile tracking:Z


# direct methods
.method public constructor <init>(Lcom/google/vr/sdk/base/sensors/SensorEventProvider;Lcom/google/vr/sdk/base/sensors/Clock;Landroid/view/Display;)V
    .locals 2
    .param p1, "sensorEventProvider"    # Lcom/google/vr/sdk/base/sensors/SensorEventProvider;
    .param p2, "clock"    # Lcom/google/vr/sdk/base/sensors/Clock;
    .param p3, "display"    # Landroid/view/Display;

    .prologue
    const/16 v1, 0x10

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/google/vr/sdk/base/sensors/HeadTracker;->ekfToHeadTracker:[F

    .line 62
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/google/vr/sdk/base/sensors/HeadTracker;->sensorToDisplay:[F

    .line 64
    const/high16 v0, 0x7fc00000    # NaNf

    iput v0, p0, Lcom/google/vr/sdk/base/sensors/HeadTracker;->displayRotation:F

    .line 66
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/google/vr/sdk/base/sensors/HeadTracker;->neckModelTranslation:[F

    .line 68
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/google/vr/sdk/base/sensors/HeadTracker;->tmpHeadView:[F

    .line 69
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/google/vr/sdk/base/sensors/HeadTracker;->tmpHeadView2:[F

    .line 71
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/google/vr/sdk/base/sensors/HeadTracker;->neckModelFactor:F

    .line 74
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/vr/sdk/base/sensors/HeadTracker;->neckModelFactorMutex:Ljava/lang/Object;

    .line 82
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/vr/sdk/base/sensors/HeadTracker;->gyroBiasEstimatorMutex:Ljava/lang/Object;

    .line 100
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/vr/sdk/base/sensors/HeadTracker;->firstGyroValue:Z

    .line 106
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/google/vr/sdk/base/sensors/HeadTracker;->initialSystemGyroBias:[F

    .line 109
    new-instance v0, Lcom/google/vr/sdk/base/sensors/internal/Vector3d;

    invoke-direct {v0}, Lcom/google/vr/sdk/base/sensors/internal/Vector3d;-><init>()V

    iput-object v0, p0, Lcom/google/vr/sdk/base/sensors/HeadTracker;->gyroBias:Lcom/google/vr/sdk/base/sensors/internal/Vector3d;

    .line 112
    new-instance v0, Lcom/google/vr/sdk/base/sensors/internal/Vector3d;

    invoke-direct {v0}, Lcom/google/vr/sdk/base/sensors/internal/Vector3d;-><init>()V

    iput-object v0, p0, Lcom/google/vr/sdk/base/sensors/HeadTracker;->latestGyro:Lcom/google/vr/sdk/base/sensors/internal/Vector3d;

    .line 115
    new-instance v0, Lcom/google/vr/sdk/base/sensors/internal/Vector3d;

    invoke-direct {v0}, Lcom/google/vr/sdk/base/sensors/internal/Vector3d;-><init>()V

    iput-object v0, p0, Lcom/google/vr/sdk/base/sensors/HeadTracker;->latestAcc:Lcom/google/vr/sdk/base/sensors/internal/Vector3d;

    .line 143
    iput-object p2, p0, Lcom/google/vr/sdk/base/sensors/HeadTracker;->clock:Lcom/google/vr/sdk/base/sensors/Clock;

    .line 144
    iput-object p1, p0, Lcom/google/vr/sdk/base/sensors/HeadTracker;->sensorEventProvider:Lcom/google/vr/sdk/base/sensors/SensorEventProvider;

    .line 146
    new-instance v0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;

    invoke-direct {v0}, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;-><init>()V

    iput-object v0, p0, Lcom/google/vr/sdk/base/sensors/HeadTracker;->tracker:Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;

    .line 147
    iput-object p3, p0, Lcom/google/vr/sdk/base/sensors/HeadTracker;->display:Landroid/view/Display;

    .line 149
    new-instance v0, Lcom/google/vr/sdk/base/sensors/internal/GyroscopeBiasEstimator;

    invoke-direct {v0}, Lcom/google/vr/sdk/base/sensors/internal/GyroscopeBiasEstimator;-><init>()V

    iput-object v0, p0, Lcom/google/vr/sdk/base/sensors/HeadTracker;->gyroBiasEstimator:Lcom/google/vr/sdk/base/sensors/internal/GyroscopeBiasEstimator;

    .line 152
    iget-object v0, p0, Lcom/google/vr/sdk/base/sensors/HeadTracker;->neckModelTranslation:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 153
    return-void
.end method

.method public static createFromContext(Landroid/content/Context;)Lcom/google/vr/sdk/base/sensors/HeadTracker;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 125
    const-string v2, "sensor"

    .line 126
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    .line 127
    .local v1, "sensorManager":Landroid/hardware/SensorManager;
    const-string v2, "window"

    .line 128
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 129
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 131
    .local v0, "display":Landroid/view/Display;
    new-instance v2, Lcom/google/vr/sdk/base/sensors/HeadTracker;

    new-instance v3, Lcom/google/vr/sdk/base/sensors/DeviceSensorLooper;

    invoke-direct {v3, v1}, Lcom/google/vr/sdk/base/sensors/DeviceSensorLooper;-><init>(Landroid/hardware/SensorManager;)V

    new-instance v4, Lcom/google/vr/sdk/base/sensors/SystemClock;

    invoke-direct {v4}, Lcom/google/vr/sdk/base/sensors/SystemClock;-><init>()V

    invoke-direct {v2, v3, v4, v0}, Lcom/google/vr/sdk/base/sensors/HeadTracker;-><init>(Lcom/google/vr/sdk/base/sensors/SensorEventProvider;Lcom/google/vr/sdk/base/sensors/Clock;Landroid/view/Display;)V

    return-object v2
.end method


# virtual methods
.method getCurrentPoseForTest()Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;
    .locals 2

    .prologue
    .line 378
    new-instance v0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    iget-object v1, p0, Lcom/google/vr/sdk/base/sensors/HeadTracker;->tracker:Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;

    invoke-virtual {v1}, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->getRotationMatrix()Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;-><init>(Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;)V

    return-object v0
.end method

.method public getLastHeadView([FI)V
    .locals 14
    .param p1, "headView"    # [F
    .param p2, "offset"    # I

    .prologue
    .line 311
    add-int/lit8 v0, p2, 0x10

    array-length v1, p1

    if-le v0, v1, :cond_0

    .line 312
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Not enough space to write the result"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 316
    :cond_0
    const/4 v9, 0x0

    .line 317
    .local v9, "rotation":F
    iget-object v0, p0, Lcom/google/vr/sdk/base/sensors/HeadTracker;->display:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 331
    :goto_0
    iget v0, p0, Lcom/google/vr/sdk/base/sensors/HeadTracker;->displayRotation:F

    cmpl-float v0, v9, v0

    if-eqz v0, :cond_1

    .line 332
    iput v9, p0, Lcom/google/vr/sdk/base/sensors/HeadTracker;->displayRotation:F

    .line 333
    iget-object v0, p0, Lcom/google/vr/sdk/base/sensors/HeadTracker;->sensorToDisplay:[F

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    neg-float v4, v9

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/Matrix;->setRotateEulerM([FIFFF)V

    .line 334
    iget-object v0, p0, Lcom/google/vr/sdk/base/sensors/HeadTracker;->ekfToHeadTracker:[F

    const/4 v1, 0x0

    const/high16 v2, -0x3d4c0000    # -90.0f

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3, v9}, Landroid/opengl/Matrix;->setRotateEulerM([FIFFF)V

    .line 338
    :cond_1
    iget-object v1, p0, Lcom/google/vr/sdk/base/sensors/HeadTracker;->tracker:Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;

    monitor-enter v1

    .line 339
    :try_start_0
    iget-object v0, p0, Lcom/google/vr/sdk/base/sensors/HeadTracker;->tracker:Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;

    invoke-virtual {v0}, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->isReady()Z

    move-result v0

    if-nez v0, :cond_2

    .line 340
    monitor-exit v1

    .line 370
    :goto_1
    return-void

    .line 319
    :pswitch_0
    const/4 v9, 0x0

    .line 320
    goto :goto_0

    .line 322
    :pswitch_1
    const/high16 v9, 0x42b40000    # 90.0f

    .line 323
    goto :goto_0

    .line 325
    :pswitch_2
    const/high16 v9, 0x43340000    # 180.0f

    .line 326
    goto :goto_0

    .line 328
    :pswitch_3
    const/high16 v9, 0x43870000    # 270.0f

    goto :goto_0

    .line 342
    :cond_2
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v2, p0, Lcom/google/vr/sdk/base/sensors/HeadTracker;->clock:Lcom/google/vr/sdk/base/sensors/Clock;

    .line 343
    invoke-interface {v2}, Lcom/google/vr/sdk/base/sensors/Clock;->nanoTime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/vr/sdk/base/sensors/HeadTracker;->latestGyroEventClockTimeNs:J

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v2

    long-to-double v10, v2

    .line 344
    .local v10, "secondsSinceLastGyroEvent":D
    const-wide v2, 0x3fadb22d00000000L    # 0.057999998331069946

    add-double v12, v10, v2

    .line 345
    .local v12, "secondsToPredictForward":D
    iget-object v0, p0, Lcom/google/vr/sdk/base/sensors/HeadTracker;->tracker:Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;

    invoke-virtual {v0, v12, v13}, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->getPredictedGLMatrix(D)[D

    move-result-object v8

    .line 346
    .local v8, "mat":[D
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2
    array-length v0, p1

    if-ge v7, v0, :cond_3

    .line 347
    iget-object v0, p0, Lcom/google/vr/sdk/base/sensors/HeadTracker;->tmpHeadView:[F

    aget-wide v2, v8, v7

    double-to-float v2, v2

    aput v2, v0, v7

    .line 346
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 349
    :cond_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 352
    iget-object v0, p0, Lcom/google/vr/sdk/base/sensors/HeadTracker;->tmpHeadView2:[F

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/vr/sdk/base/sensors/HeadTracker;->sensorToDisplay:[F

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/vr/sdk/base/sensors/HeadTracker;->tmpHeadView:[F

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 355
    iget-object v2, p0, Lcom/google/vr/sdk/base/sensors/HeadTracker;->tmpHeadView2:[F

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/vr/sdk/base/sensors/HeadTracker;->ekfToHeadTracker:[F

    const/4 v5, 0x0

    move-object v0, p1

    move/from16 v1, p2

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 362
    iget-object v0, p0, Lcom/google/vr/sdk/base/sensors/HeadTracker;->neckModelTranslation:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 363
    iget-object v0, p0, Lcom/google/vr/sdk/base/sensors/HeadTracker;->neckModelTranslation:[F

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget v3, p0, Lcom/google/vr/sdk/base/sensors/HeadTracker;->neckModelFactor:F

    neg-float v3, v3

    const v4, 0x3d99999a    # 0.075f

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/google/vr/sdk/base/sensors/HeadTracker;->neckModelFactor:F

    const v5, 0x3da3d70a    # 0.08f

    mul-float/2addr v4, v5

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 367
    iget-object v0, p0, Lcom/google/vr/sdk/base/sensors/HeadTracker;->tmpHeadView:[F

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/vr/sdk/base/sensors/HeadTracker;->neckModelTranslation:[F

    const/4 v3, 0x0

    move-object v4, p1

    move/from16 v5, p2

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 368
    iget-object v2, p0, Lcom/google/vr/sdk/base/sensors/HeadTracker;->tmpHeadView:[F

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v0, p0, Lcom/google/vr/sdk/base/sensors/HeadTracker;->neckModelFactor:F

    const v1, 0x3d99999a    # 0.075f

    mul-float v5, v0, v1

    const/4 v6, 0x0

    move-object v0, p1

    move/from16 v1, p2

    invoke-static/range {v0 .. v6}, Landroid/opengl/Matrix;->translateM([FI[FIFFF)V

    goto/16 :goto_1

    .line 349
    .end local v7    # "i":I
    .end local v8    # "mat":[D
    .end local v10    # "secondsSinceLastGyroEvent":D
    .end local v12    # "secondsToPredictForward":D
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 317
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getNeckModelFactor()F
    .locals 2

    .prologue
    .line 283
    iget-object v1, p0, Lcom/google/vr/sdk/base/sensors/HeadTracker;->neckModelFactorMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 284
    :try_start_0
    iget v0, p0, Lcom/google/vr/sdk/base/sensors/HeadTracker;->neckModelFactor:F

    monitor-exit v1

    return v0

    .line 285
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 220
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 9
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/16 v2, 0x10

    const/4 v3, 0x4

    const/4 v7, 0x2

    const/4 v5, 0x1

    const/4 v8, 0x0

    .line 162
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    if-ne v0, v5, :cond_2

    .line 163
    iget-object v1, p0, Lcom/google/vr/sdk/base/sensors/HeadTracker;->latestAcc:Lcom/google/vr/sdk/base/sensors/internal/Vector3d;

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v8

    float-to-double v2, v0

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v5

    float-to-double v4, v0

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v7

    float-to-double v6, v0

    invoke-virtual/range {v1 .. v7}, Lcom/google/vr/sdk/base/sensors/internal/Vector3d;->set(DDD)V

    .line 164
    iget-object v0, p0, Lcom/google/vr/sdk/base/sensors/HeadTracker;->tracker:Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;

    iget-object v1, p0, Lcom/google/vr/sdk/base/sensors/HeadTracker;->latestAcc:Lcom/google/vr/sdk/base/sensors/internal/Vector3d;

    iget-wide v2, p1, Landroid/hardware/SensorEvent;->timestamp:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->processAcc(Lcom/google/vr/sdk/base/sensors/internal/Vector3d;J)V

    .line 166
    iget-object v1, p0, Lcom/google/vr/sdk/base/sensors/HeadTracker;->gyroBiasEstimatorMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 167
    :try_start_0
    iget-object v0, p0, Lcom/google/vr/sdk/base/sensors/HeadTracker;->gyroBiasEstimator:Lcom/google/vr/sdk/base/sensors/internal/GyroscopeBiasEstimator;

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/google/vr/sdk/base/sensors/HeadTracker;->gyroBiasEstimator:Lcom/google/vr/sdk/base/sensors/internal/GyroscopeBiasEstimator;

    iget-object v2, p0, Lcom/google/vr/sdk/base/sensors/HeadTracker;->latestAcc:Lcom/google/vr/sdk/base/sensors/internal/Vector3d;

    iget-wide v4, p1, Landroid/hardware/SensorEvent;->timestamp:J

    invoke-virtual {v0, v2, v4, v5}, Lcom/google/vr/sdk/base/sensors/internal/GyroscopeBiasEstimator;->processAccelerometer(Lcom/google/vr/sdk/base/sensors/internal/Vector3d;J)V

    .line 170
    :cond_0
    monitor-exit v1

    .line 215
    :cond_1
    :goto_0
    return-void

    .line 170
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 171
    :cond_2
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    if-eq v0, v3, :cond_3

    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    .line 172
    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 179
    :cond_3
    iget-object v0, p0, Lcom/google/vr/sdk/base/sensors/HeadTracker;->clock:Lcom/google/vr/sdk/base/sensors/Clock;

    invoke-interface {v0}, Lcom/google/vr/sdk/base/sensors/Clock;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/vr/sdk/base/sensors/HeadTracker;->latestGyroEventClockTimeNs:J

    .line 186
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    if-ne v0, v2, :cond_6

    .line 187
    iget-boolean v0, p0, Lcom/google/vr/sdk/base/sensors/HeadTracker;->firstGyroValue:Z

    if-eqz v0, :cond_4

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    array-length v0, v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_4

    .line 189
    iget-object v0, p0, Lcom/google/vr/sdk/base/sensors/HeadTracker;->initialSystemGyroBias:[F

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x3

    aget v1, v1, v2

    aput v1, v0, v8

    .line 190
    iget-object v0, p0, Lcom/google/vr/sdk/base/sensors/HeadTracker;->initialSystemGyroBias:[F

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v3

    aput v1, v0, v5

    .line 191
    iget-object v0, p0, Lcom/google/vr/sdk/base/sensors/HeadTracker;->initialSystemGyroBias:[F

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x5

    aget v1, v1, v2

    aput v1, v0, v7

    .line 193
    :cond_4
    iget-object v1, p0, Lcom/google/vr/sdk/base/sensors/HeadTracker;->latestGyro:Lcom/google/vr/sdk/base/sensors/internal/Vector3d;

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v8

    iget-object v2, p0, Lcom/google/vr/sdk/base/sensors/HeadTracker;->initialSystemGyroBias:[F

    aget v2, v2, v8

    sub-float/2addr v0, v2

    float-to-double v2, v0

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v5

    iget-object v4, p0, Lcom/google/vr/sdk/base/sensors/HeadTracker;->initialSystemGyroBias:[F

    aget v4, v4, v5

    sub-float/2addr v0, v4

    float-to-double v4, v0

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v7

    iget-object v6, p0, Lcom/google/vr/sdk/base/sensors/HeadTracker;->initialSystemGyroBias:[F

    aget v6, v6, v7

    sub-float/2addr v0, v6

    float-to-double v6, v0

    invoke-virtual/range {v1 .. v7}, Lcom/google/vr/sdk/base/sensors/internal/Vector3d;->set(DDD)V

    .line 202
    :goto_1
    iput-boolean v8, p0, Lcom/google/vr/sdk/base/sensors/HeadTracker;->firstGyroValue:Z

    .line 204
    iget-object v1, p0, Lcom/google/vr/sdk/base/sensors/HeadTracker;->gyroBiasEstimatorMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 205
    :try_start_1
    iget-object v0, p0, Lcom/google/vr/sdk/base/sensors/HeadTracker;->gyroBiasEstimator:Lcom/google/vr/sdk/base/sensors/internal/GyroscopeBiasEstimator;

    if-eqz v0, :cond_5

    .line 206
    iget-object v0, p0, Lcom/google/vr/sdk/base/sensors/HeadTracker;->gyroBiasEstimator:Lcom/google/vr/sdk/base/sensors/internal/GyroscopeBiasEstimator;

    iget-object v2, p0, Lcom/google/vr/sdk/base/sensors/HeadTracker;->latestGyro:Lcom/google/vr/sdk/base/sensors/internal/Vector3d;

    iget-wide v4, p1, Landroid/hardware/SensorEvent;->timestamp:J

    invoke-virtual {v0, v2, v4, v5}, Lcom/google/vr/sdk/base/sensors/internal/GyroscopeBiasEstimator;->processGyroscope(Lcom/google/vr/sdk/base/sensors/internal/Vector3d;J)V

    .line 209
    iget-object v0, p0, Lcom/google/vr/sdk/base/sensors/HeadTracker;->gyroBiasEstimator:Lcom/google/vr/sdk/base/sensors/internal/GyroscopeBiasEstimator;

    iget-object v2, p0, Lcom/google/vr/sdk/base/sensors/HeadTracker;->gyroBias:Lcom/google/vr/sdk/base/sensors/internal/Vector3d;

    invoke-virtual {v0, v2}, Lcom/google/vr/sdk/base/sensors/internal/GyroscopeBiasEstimator;->getGyroBias(Lcom/google/vr/sdk/base/sensors/internal/Vector3d;)V

    .line 210
    iget-object v0, p0, Lcom/google/vr/sdk/base/sensors/HeadTracker;->latestGyro:Lcom/google/vr/sdk/base/sensors/internal/Vector3d;

    iget-object v2, p0, Lcom/google/vr/sdk/base/sensors/HeadTracker;->gyroBias:Lcom/google/vr/sdk/base/sensors/internal/Vector3d;

    iget-object v3, p0, Lcom/google/vr/sdk/base/sensors/HeadTracker;->latestGyro:Lcom/google/vr/sdk/base/sensors/internal/Vector3d;

    invoke-static {v0, v2, v3}, Lcom/google/vr/sdk/base/sensors/internal/Vector3d;->sub(Lcom/google/vr/sdk/base/sensors/internal/Vector3d;Lcom/google/vr/sdk/base/sensors/internal/Vector3d;Lcom/google/vr/sdk/base/sensors/internal/Vector3d;)V

    .line 212
    :cond_5
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 213
    iget-object v0, p0, Lcom/google/vr/sdk/base/sensors/HeadTracker;->tracker:Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;

    iget-object v1, p0, Lcom/google/vr/sdk/base/sensors/HeadTracker;->latestGyro:Lcom/google/vr/sdk/base/sensors/internal/Vector3d;

    iget-wide v2, p1, Landroid/hardware/SensorEvent;->timestamp:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->processGyro(Lcom/google/vr/sdk/base/sensors/internal/Vector3d;J)V

    goto/16 :goto_0

    .line 199
    :cond_6
    iget-object v1, p0, Lcom/google/vr/sdk/base/sensors/HeadTracker;->latestGyro:Lcom/google/vr/sdk/base/sensors/internal/Vector3d;

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v8

    float-to-double v2, v0

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v5

    float-to-double v4, v0

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v7

    float-to-double v6, v0

    invoke-virtual/range {v1 .. v7}, Lcom/google/vr/sdk/base/sensors/internal/Vector3d;->set(DDD)V

    goto :goto_1

    .line 212
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public resetTracker()V
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/google/vr/sdk/base/sensors/HeadTracker;->tracker:Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;

    invoke-virtual {v0}, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->reset()V

    .line 249
    return-void
.end method

.method setGyroBiasEstimator(Lcom/google/vr/sdk/base/sensors/internal/GyroscopeBiasEstimator;)V
    .locals 2
    .param p1, "estimator"    # Lcom/google/vr/sdk/base/sensors/internal/GyroscopeBiasEstimator;

    .prologue
    .line 385
    iget-object v1, p0, Lcom/google/vr/sdk/base/sensors/HeadTracker;->gyroBiasEstimatorMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 386
    :try_start_0
    iput-object p1, p0, Lcom/google/vr/sdk/base/sensors/HeadTracker;->gyroBiasEstimator:Lcom/google/vr/sdk/base/sensors/internal/GyroscopeBiasEstimator;

    .line 387
    monitor-exit v1

    .line 388
    return-void

    .line 387
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setNeckModelEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 270
    if-eqz p1, :cond_0

    .line 271
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/google/vr/sdk/base/sensors/HeadTracker;->setNeckModelFactor(F)V

    .line 275
    :goto_0
    return-void

    .line 273
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/vr/sdk/base/sensors/HeadTracker;->setNeckModelFactor(F)V

    goto :goto_0
.end method

.method public setNeckModelFactor(F)V
    .locals 3
    .param p1, "factor"    # F

    .prologue
    .line 294
    iget-object v1, p0, Lcom/google/vr/sdk/base/sensors/HeadTracker;->neckModelFactorMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 295
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    .line 296
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "factor should be within [0.0, 1.0]"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 299
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 298
    :cond_1
    :try_start_1
    iput p1, p0, Lcom/google/vr/sdk/base/sensors/HeadTracker;->neckModelFactor:F

    .line 299
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 300
    return-void
.end method

.method public startTracking()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 226
    iget-boolean v0, p0, Lcom/google/vr/sdk/base/sensors/HeadTracker;->tracking:Z

    if-eqz v0, :cond_0

    .line 241
    :goto_0
    return-void

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/base/sensors/HeadTracker;->tracker:Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;

    invoke-virtual {v0}, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->reset()V

    .line 231
    iget-object v1, p0, Lcom/google/vr/sdk/base/sensors/HeadTracker;->gyroBiasEstimatorMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 232
    :try_start_0
    iget-object v0, p0, Lcom/google/vr/sdk/base/sensors/HeadTracker;->gyroBiasEstimator:Lcom/google/vr/sdk/base/sensors/internal/GyroscopeBiasEstimator;

    if-eqz v0, :cond_1

    .line 233
    iget-object v0, p0, Lcom/google/vr/sdk/base/sensors/HeadTracker;->gyroBiasEstimator:Lcom/google/vr/sdk/base/sensors/internal/GyroscopeBiasEstimator;

    invoke-virtual {v0}, Lcom/google/vr/sdk/base/sensors/internal/GyroscopeBiasEstimator;->reset()V

    .line 235
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 237
    iput-boolean v2, p0, Lcom/google/vr/sdk/base/sensors/HeadTracker;->firstGyroValue:Z

    .line 238
    iget-object v0, p0, Lcom/google/vr/sdk/base/sensors/HeadTracker;->sensorEventProvider:Lcom/google/vr/sdk/base/sensors/SensorEventProvider;

    invoke-interface {v0, p0}, Lcom/google/vr/sdk/base/sensors/SensorEventProvider;->registerListener(Landroid/hardware/SensorEventListener;)V

    .line 239
    iget-object v0, p0, Lcom/google/vr/sdk/base/sensors/HeadTracker;->sensorEventProvider:Lcom/google/vr/sdk/base/sensors/SensorEventProvider;

    invoke-interface {v0}, Lcom/google/vr/sdk/base/sensors/SensorEventProvider;->start()V

    .line 240
    iput-boolean v2, p0, Lcom/google/vr/sdk/base/sensors/HeadTracker;->tracking:Z

    goto :goto_0

    .line 235
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public stopTracking()V
    .locals 1

    .prologue
    .line 255
    iget-boolean v0, p0, Lcom/google/vr/sdk/base/sensors/HeadTracker;->tracking:Z

    if-nez v0, :cond_0

    .line 262
    :goto_0
    return-void

    .line 259
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/base/sensors/HeadTracker;->sensorEventProvider:Lcom/google/vr/sdk/base/sensors/SensorEventProvider;

    invoke-interface {v0, p0}, Lcom/google/vr/sdk/base/sensors/SensorEventProvider;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 260
    iget-object v0, p0, Lcom/google/vr/sdk/base/sensors/HeadTracker;->sensorEventProvider:Lcom/google/vr/sdk/base/sensors/SensorEventProvider;

    invoke-interface {v0}, Lcom/google/vr/sdk/base/sensors/SensorEventProvider;->stop()V

    .line 261
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/vr/sdk/base/sensors/HeadTracker;->tracking:Z

    goto :goto_0
.end method
