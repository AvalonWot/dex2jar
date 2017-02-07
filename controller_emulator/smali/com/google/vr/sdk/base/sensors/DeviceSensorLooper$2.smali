.class Lcom/google/vr/sdk/base/sensors/DeviceSensorLooper$2;
.super Landroid/os/HandlerThread;
.source "DeviceSensorLooper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/vr/sdk/base/sensors/DeviceSensorLooper;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/vr/sdk/base/sensors/DeviceSensorLooper;


# direct methods
.method constructor <init>(Lcom/google/vr/sdk/base/sensors/DeviceSensorLooper;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/vr/sdk/base/sensors/DeviceSensorLooper;
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/google/vr/sdk/base/sensors/DeviceSensorLooper$2;->this$0:Lcom/google/vr/sdk/base/sensors/DeviceSensorLooper;

    invoke-direct {p0, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onLooperPrepared()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 109
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 112
    .local v2, "handler":Landroid/os/Handler;
    iget-object v3, p0, Lcom/google/vr/sdk/base/sensors/DeviceSensorLooper$2;->this$0:Lcom/google/vr/sdk/base/sensors/DeviceSensorLooper;

    # getter for: Lcom/google/vr/sdk/base/sensors/DeviceSensorLooper;->sensorManager:Landroid/hardware/SensorManager;
    invoke-static {v3}, Lcom/google/vr/sdk/base/sensors/DeviceSensorLooper;->access$100(Lcom/google/vr/sdk/base/sensors/DeviceSensorLooper;)Landroid/hardware/SensorManager;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    .line 113
    .local v0, "accelerometer":Landroid/hardware/Sensor;
    iget-object v3, p0, Lcom/google/vr/sdk/base/sensors/DeviceSensorLooper$2;->this$0:Lcom/google/vr/sdk/base/sensors/DeviceSensorLooper;

    # getter for: Lcom/google/vr/sdk/base/sensors/DeviceSensorLooper;->sensorManager:Landroid/hardware/SensorManager;
    invoke-static {v3}, Lcom/google/vr/sdk/base/sensors/DeviceSensorLooper;->access$100(Lcom/google/vr/sdk/base/sensors/DeviceSensorLooper;)Landroid/hardware/SensorManager;

    move-result-object v3

    iget-object v4, p0, Lcom/google/vr/sdk/base/sensors/DeviceSensorLooper$2;->this$0:Lcom/google/vr/sdk/base/sensors/DeviceSensorLooper;

    # getter for: Lcom/google/vr/sdk/base/sensors/DeviceSensorLooper;->sensorEventListener:Landroid/hardware/SensorEventListener;
    invoke-static {v4}, Lcom/google/vr/sdk/base/sensors/DeviceSensorLooper;->access$200(Lcom/google/vr/sdk/base/sensors/DeviceSensorLooper;)Landroid/hardware/SensorEventListener;

    move-result-object v4

    invoke-virtual {v3, v4, v0, v5, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 122
    iget-object v3, p0, Lcom/google/vr/sdk/base/sensors/DeviceSensorLooper$2;->this$0:Lcom/google/vr/sdk/base/sensors/DeviceSensorLooper;

    # invokes: Lcom/google/vr/sdk/base/sensors/DeviceSensorLooper;->getUncalibratedGyro()Landroid/hardware/Sensor;
    invoke-static {v3}, Lcom/google/vr/sdk/base/sensors/DeviceSensorLooper;->access$300(Lcom/google/vr/sdk/base/sensors/DeviceSensorLooper;)Landroid/hardware/Sensor;

    move-result-object v1

    .line 123
    .local v1, "gyroscope":Landroid/hardware/Sensor;
    if-nez v1, :cond_0

    .line 124
    # getter for: Lcom/google/vr/sdk/base/sensors/DeviceSensorLooper;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/google/vr/sdk/base/sensors/DeviceSensorLooper;->access$400()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Uncalibrated gyroscope unavailable, default to regular gyroscope."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget-object v3, p0, Lcom/google/vr/sdk/base/sensors/DeviceSensorLooper$2;->this$0:Lcom/google/vr/sdk/base/sensors/DeviceSensorLooper;

    # getter for: Lcom/google/vr/sdk/base/sensors/DeviceSensorLooper;->sensorManager:Landroid/hardware/SensorManager;
    invoke-static {v3}, Lcom/google/vr/sdk/base/sensors/DeviceSensorLooper;->access$100(Lcom/google/vr/sdk/base/sensors/DeviceSensorLooper;)Landroid/hardware/SensorManager;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    .line 128
    :cond_0
    iget-object v3, p0, Lcom/google/vr/sdk/base/sensors/DeviceSensorLooper$2;->this$0:Lcom/google/vr/sdk/base/sensors/DeviceSensorLooper;

    # getter for: Lcom/google/vr/sdk/base/sensors/DeviceSensorLooper;->sensorManager:Landroid/hardware/SensorManager;
    invoke-static {v3}, Lcom/google/vr/sdk/base/sensors/DeviceSensorLooper;->access$100(Lcom/google/vr/sdk/base/sensors/DeviceSensorLooper;)Landroid/hardware/SensorManager;

    move-result-object v3

    iget-object v4, p0, Lcom/google/vr/sdk/base/sensors/DeviceSensorLooper$2;->this$0:Lcom/google/vr/sdk/base/sensors/DeviceSensorLooper;

    # getter for: Lcom/google/vr/sdk/base/sensors/DeviceSensorLooper;->sensorEventListener:Landroid/hardware/SensorEventListener;
    invoke-static {v4}, Lcom/google/vr/sdk/base/sensors/DeviceSensorLooper;->access$200(Lcom/google/vr/sdk/base/sensors/DeviceSensorLooper;)Landroid/hardware/SensorEventListener;

    move-result-object v4

    invoke-virtual {v3, v4, v1, v5, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 130
    return-void
.end method
