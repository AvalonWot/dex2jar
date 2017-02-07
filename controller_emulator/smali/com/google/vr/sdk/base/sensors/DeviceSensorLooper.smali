.class public Lcom/google/vr/sdk/base/sensors/DeviceSensorLooper;
.super Ljava/lang/Object;
.source "DeviceSensorLooper.java"

# interfaces
.implements Lcom/google/vr/sdk/base/sensors/SensorEventProvider;


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private isRunning:Z

.field private final registeredListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/SensorEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private sensorEventListener:Landroid/hardware/SensorEventListener;

.field private sensorLooper:Landroid/os/Looper;

.field private sensorManager:Landroid/hardware/SensorManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lcom/google/vr/sdk/base/sensors/DeviceSensorLooper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/vr/sdk/base/sensors/DeviceSensorLooper;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/hardware/SensorManager;)V
    .locals 1
    .param p1, "sensorManager"    # Landroid/hardware/SensorManager;

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/vr/sdk/base/sensors/DeviceSensorLooper;->registeredListeners:Ljava/util/ArrayList;

    .line 63
    iput-object p1, p0, Lcom/google/vr/sdk/base/sensors/DeviceSensorLooper;->sensorManager:Landroid/hardware/SensorManager;

    .line 64
    return-void
.end method

.method static synthetic access$000(Lcom/google/vr/sdk/base/sensors/DeviceSensorLooper;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/google/vr/sdk/base/sensors/DeviceSensorLooper;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/vr/sdk/base/sensors/DeviceSensorLooper;->registeredListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/vr/sdk/base/sensors/DeviceSensorLooper;)Landroid/hardware/SensorManager;
    .locals 1
    .param p0, "x0"    # Lcom/google/vr/sdk/base/sensors/DeviceSensorLooper;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/vr/sdk/base/sensors/DeviceSensorLooper;->sensorManager:Landroid/hardware/SensorManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/vr/sdk/base/sensors/DeviceSensorLooper;)Landroid/hardware/SensorEventListener;
    .locals 1
    .param p0, "x0"    # Lcom/google/vr/sdk/base/sensors/DeviceSensorLooper;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/vr/sdk/base/sensors/DeviceSensorLooper;->sensorEventListener:Landroid/hardware/SensorEventListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/vr/sdk/base/sensors/DeviceSensorLooper;)Landroid/hardware/Sensor;
    .locals 1
    .param p0, "x0"    # Lcom/google/vr/sdk/base/sensors/DeviceSensorLooper;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/google/vr/sdk/base/sensors/DeviceSensorLooper;->getUncalibratedGyro()Landroid/hardware/Sensor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/google/vr/sdk/base/sensors/DeviceSensorLooper;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method private getUncalibratedGyro()Landroid/hardware/Sensor;
    .locals 2

    .prologue
    .line 69
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "HTC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    const/4 v0, 0x0

    .line 72
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/base/sensors/DeviceSensorLooper;->sensorManager:Landroid/hardware/SensorManager;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public registerListener(Landroid/hardware/SensorEventListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/hardware/SensorEventListener;

    .prologue
    .line 158
    iget-object v1, p0, Lcom/google/vr/sdk/base/sensors/DeviceSensorLooper;->registeredListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 159
    :try_start_0
    iget-object v0, p0, Lcom/google/vr/sdk/base/sensors/DeviceSensorLooper;->registeredListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    monitor-exit v1

    .line 161
    return-void

    .line 160
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public start()V
    .locals 2

    .prologue
    .line 80
    iget-boolean v1, p0, Lcom/google/vr/sdk/base/sensors/DeviceSensorLooper;->isRunning:Z

    if-eqz v1, :cond_0

    .line 136
    :goto_0
    return-void

    .line 85
    :cond_0
    new-instance v1, Lcom/google/vr/sdk/base/sensors/DeviceSensorLooper$1;

    invoke-direct {v1, p0}, Lcom/google/vr/sdk/base/sensors/DeviceSensorLooper$1;-><init>(Lcom/google/vr/sdk/base/sensors/DeviceSensorLooper;)V

    iput-object v1, p0, Lcom/google/vr/sdk/base/sensors/DeviceSensorLooper;->sensorEventListener:Landroid/hardware/SensorEventListener;

    .line 106
    new-instance v0, Lcom/google/vr/sdk/base/sensors/DeviceSensorLooper$2;

    const-string v1, "sensor"

    invoke-direct {v0, p0, v1}, Lcom/google/vr/sdk/base/sensors/DeviceSensorLooper$2;-><init>(Lcom/google/vr/sdk/base/sensors/DeviceSensorLooper;Ljava/lang/String;)V

    .line 133
    .local v0, "sensorThread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 134
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Lcom/google/vr/sdk/base/sensors/DeviceSensorLooper;->sensorLooper:Landroid/os/Looper;

    .line 135
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/vr/sdk/base/sensors/DeviceSensorLooper;->isRunning:Z

    goto :goto_0
.end method

.method public stop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 143
    iget-boolean v0, p0, Lcom/google/vr/sdk/base/sensors/DeviceSensorLooper;->isRunning:Z

    if-nez v0, :cond_0

    .line 154
    :goto_0
    return-void

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/base/sensors/DeviceSensorLooper;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/google/vr/sdk/base/sensors/DeviceSensorLooper;->sensorEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 149
    iput-object v2, p0, Lcom/google/vr/sdk/base/sensors/DeviceSensorLooper;->sensorEventListener:Landroid/hardware/SensorEventListener;

    .line 151
    iget-object v0, p0, Lcom/google/vr/sdk/base/sensors/DeviceSensorLooper;->sensorLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 152
    iput-object v2, p0, Lcom/google/vr/sdk/base/sensors/DeviceSensorLooper;->sensorLooper:Landroid/os/Looper;

    .line 153
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/vr/sdk/base/sensors/DeviceSensorLooper;->isRunning:Z

    goto :goto_0
.end method

.method public unregisterListener(Landroid/hardware/SensorEventListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/hardware/SensorEventListener;

    .prologue
    .line 165
    iget-object v1, p0, Lcom/google/vr/sdk/base/sensors/DeviceSensorLooper;->registeredListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 166
    :try_start_0
    iget-object v0, p0, Lcom/google/vr/sdk/base/sensors/DeviceSensorLooper;->registeredListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 167
    monitor-exit v1

    .line 168
    return-void

    .line 167
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
