.class public Lcom/google/vrtoolkit/cardboard/ScreenOnFlagHelper;
.super Ljava/lang/Object;
.source "ScreenOnFlagHelper.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# static fields
.field private static final DEBUG:Z = false

.field private static final IDLE_TIMEOUT_MS:J = 0x7530L

.field private static final NUM_SAMPLES:I = 0x78

.field private static final SAMPLE_INTERVAL_MS:J = 0xfaL

.field private static final SENSOR_THRESHOLD:F = 0.2f

.field private static final TAG:Ljava/lang/String; = "ScreenOnFlagHelper"


# instance fields
.field private activity:Landroid/app/Activity;

.field private isFlagSet:Z

.field private lastSampleTimestamp:J

.field private screenAlwaysOn:Z

.field private sensor:Landroid/hardware/Sensor;

.field private sensorManager:Landroid/hardware/SensorManager;

.field private sensorStats:Lcom/google/vrtoolkit/cardboard/SensorReadingStats;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v3, 0x0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-boolean v3, p0, Lcom/google/vrtoolkit/cardboard/ScreenOnFlagHelper;->screenAlwaysOn:Z

    .line 76
    new-instance v0, Lcom/google/vrtoolkit/cardboard/SensorReadingStats;

    const/16 v1, 0x78

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/google/vrtoolkit/cardboard/SensorReadingStats;-><init>(II)V

    iput-object v0, p0, Lcom/google/vrtoolkit/cardboard/ScreenOnFlagHelper;->sensorStats:Lcom/google/vrtoolkit/cardboard/SensorReadingStats;

    .line 80
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/vrtoolkit/cardboard/ScreenOnFlagHelper;->lastSampleTimestamp:J

    .line 83
    iput-boolean v3, p0, Lcom/google/vrtoolkit/cardboard/ScreenOnFlagHelper;->isFlagSet:Z

    .line 89
    iput-object p1, p0, Lcom/google/vrtoolkit/cardboard/ScreenOnFlagHelper;->activity:Landroid/app/Activity;

    .line 90
    return-void
.end method

.method private setKeepScreenOnFlag(Z)V
    .locals 2
    .param p1, "on"    # Z

    .prologue
    const/16 v1, 0x80

    .line 213
    iget-boolean v0, p0, Lcom/google/vrtoolkit/cardboard/ScreenOnFlagHelper;->isFlagSet:Z

    if-ne p1, v0, :cond_0

    .line 225
    :goto_0
    return-void

    .line 219
    :cond_0
    if-eqz p1, :cond_1

    .line 220
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/ScreenOnFlagHelper;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 224
    :goto_1
    iput-boolean p1, p0, Lcom/google/vrtoolkit/cardboard/ScreenOnFlagHelper;->isFlagSet:Z

    goto :goto_0

    .line 222
    :cond_1
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/ScreenOnFlagHelper;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_1
.end method

.method private updateFlag()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 192
    iget-boolean v2, p0, Lcom/google/vrtoolkit/cardboard/ScreenOnFlagHelper;->screenAlwaysOn:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/vrtoolkit/cardboard/ScreenOnFlagHelper;->sensorStats:Lcom/google/vrtoolkit/cardboard/SensorReadingStats;

    invoke-virtual {v2}, Lcom/google/vrtoolkit/cardboard/SensorReadingStats;->statsAvailable()Z

    move-result v2

    if-nez v2, :cond_1

    .line 193
    :cond_0
    invoke-direct {p0, v1}, Lcom/google/vrtoolkit/cardboard/ScreenOnFlagHelper;->setKeepScreenOnFlag(Z)V

    .line 206
    :goto_0
    return-void

    .line 198
    :cond_1
    iget-object v2, p0, Lcom/google/vrtoolkit/cardboard/ScreenOnFlagHelper;->sensorStats:Lcom/google/vrtoolkit/cardboard/SensorReadingStats;

    invoke-virtual {v2}, Lcom/google/vrtoolkit/cardboard/SensorReadingStats;->getMaxAbsoluteDeviation()F

    move-result v0

    .line 205
    .local v0, "maxAbsDev":F
    const v2, 0x3e4ccccd    # 0.2f

    cmpl-float v2, v0, v2

    if-lez v2, :cond_2

    :goto_1
    invoke-direct {p0, v1}, Lcom/google/vrtoolkit/cardboard/ScreenOnFlagHelper;->setKeepScreenOnFlag(Z)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 157
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 6
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 162
    iget-wide v2, p1, Landroid/hardware/SensorEvent;->timestamp:J

    iget-wide v4, p0, Lcom/google/vrtoolkit/cardboard/ScreenOnFlagHelper;->lastSampleTimestamp:J

    sub-long/2addr v2, v4

    const-wide/32 v4, 0xf4240

    div-long v0, v2, v4

    .line 163
    .local v0, "deltaMs":J
    const-wide/16 v2, 0xfa

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 183
    :goto_0
    return-void

    .line 170
    :cond_0
    iget-object v2, p0, Lcom/google/vrtoolkit/cardboard/ScreenOnFlagHelper;->sensorStats:Lcom/google/vrtoolkit/cardboard/SensorReadingStats;

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-virtual {v2, v3}, Lcom/google/vrtoolkit/cardboard/SensorReadingStats;->addSample([F)V

    .line 171
    iget-wide v2, p1, Landroid/hardware/SensorEvent;->timestamp:J

    iput-wide v2, p0, Lcom/google/vrtoolkit/cardboard/ScreenOnFlagHelper;->lastSampleTimestamp:J

    .line 182
    invoke-direct {p0}, Lcom/google/vrtoolkit/cardboard/ScreenOnFlagHelper;->updateFlag()V

    goto :goto_0
.end method

.method public setScreenAlwaysOn(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 108
    iput-boolean p1, p0, Lcom/google/vrtoolkit/cardboard/ScreenOnFlagHelper;->screenAlwaysOn:Z

    .line 109
    invoke-direct {p0}, Lcom/google/vrtoolkit/cardboard/ScreenOnFlagHelper;->updateFlag()V

    .line 110
    return-void
.end method

.method setSensorManager(Landroid/hardware/SensorManager;)V
    .locals 0
    .param p1, "sensorManager"    # Landroid/hardware/SensorManager;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/google/vrtoolkit/cardboard/ScreenOnFlagHelper;->sensorManager:Landroid/hardware/SensorManager;

    .line 99
    return-void
.end method

.method public start()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 119
    iget-object v1, p0, Lcom/google/vrtoolkit/cardboard/ScreenOnFlagHelper;->sensorManager:Landroid/hardware/SensorManager;

    if-nez v1, :cond_0

    .line 120
    iget-object v1, p0, Lcom/google/vrtoolkit/cardboard/ScreenOnFlagHelper;->activity:Landroid/app/Activity;

    const-string v2, "sensor"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    iput-object v1, p0, Lcom/google/vrtoolkit/cardboard/ScreenOnFlagHelper;->sensorManager:Landroid/hardware/SensorManager;

    .line 123
    :cond_0
    iget-object v1, p0, Lcom/google/vrtoolkit/cardboard/ScreenOnFlagHelper;->sensor:Landroid/hardware/Sensor;

    if-nez v1, :cond_1

    .line 124
    iget-object v1, p0, Lcom/google/vrtoolkit/cardboard/ScreenOnFlagHelper;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v1, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, Lcom/google/vrtoolkit/cardboard/ScreenOnFlagHelper;->sensor:Landroid/hardware/Sensor;

    .line 129
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/vrtoolkit/cardboard/ScreenOnFlagHelper;->isFlagSet:Z

    .line 133
    invoke-direct {p0, v3}, Lcom/google/vrtoolkit/cardboard/ScreenOnFlagHelper;->setKeepScreenOnFlag(Z)V

    .line 136
    iget-object v1, p0, Lcom/google/vrtoolkit/cardboard/ScreenOnFlagHelper;->sensorStats:Lcom/google/vrtoolkit/cardboard/SensorReadingStats;

    invoke-virtual {v1}, Lcom/google/vrtoolkit/cardboard/SensorReadingStats;->reset()V

    .line 139
    const v0, 0x3d090

    .line 140
    .local v0, "intervalMicros":I
    iget-object v1, p0, Lcom/google/vrtoolkit/cardboard/ScreenOnFlagHelper;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/google/vrtoolkit/cardboard/ScreenOnFlagHelper;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v1, p0, v2, v0}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 141
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/ScreenOnFlagHelper;->sensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/ScreenOnFlagHelper;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 153
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/vrtoolkit/cardboard/ScreenOnFlagHelper;->setKeepScreenOnFlag(Z)V

    .line 154
    return-void
.end method
