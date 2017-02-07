.class Lcom/google/vr/sdk/base/sensors/DeviceSensorLooper$1;
.super Ljava/lang/Object;
.source "DeviceSensorLooper.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


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
.method constructor <init>(Lcom/google/vr/sdk/base/sensors/DeviceSensorLooper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/vr/sdk/base/sensors/DeviceSensorLooper;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/google/vr/sdk/base/sensors/DeviceSensorLooper$1;->this$0:Lcom/google/vr/sdk/base/sensors/DeviceSensorLooper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 4
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 98
    iget-object v1, p0, Lcom/google/vr/sdk/base/sensors/DeviceSensorLooper$1;->this$0:Lcom/google/vr/sdk/base/sensors/DeviceSensorLooper;

    # getter for: Lcom/google/vr/sdk/base/sensors/DeviceSensorLooper;->registeredListeners:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/google/vr/sdk/base/sensors/DeviceSensorLooper;->access$000(Lcom/google/vr/sdk/base/sensors/DeviceSensorLooper;)Ljava/util/ArrayList;

    move-result-object v2

    monitor-enter v2

    .line 99
    :try_start_0
    iget-object v1, p0, Lcom/google/vr/sdk/base/sensors/DeviceSensorLooper$1;->this$0:Lcom/google/vr/sdk/base/sensors/DeviceSensorLooper;

    # getter for: Lcom/google/vr/sdk/base/sensors/DeviceSensorLooper;->registeredListeners:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/google/vr/sdk/base/sensors/DeviceSensorLooper;->access$000(Lcom/google/vr/sdk/base/sensors/DeviceSensorLooper;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorEventListener;

    .line 100
    .local v0, "listener":Landroid/hardware/SensorEventListener;
    invoke-interface {v0, p1, p2}, Landroid/hardware/SensorEventListener;->onAccuracyChanged(Landroid/hardware/Sensor;I)V

    goto :goto_0

    .line 102
    .end local v0    # "listener":Landroid/hardware/SensorEventListener;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 103
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 89
    iget-object v1, p0, Lcom/google/vr/sdk/base/sensors/DeviceSensorLooper$1;->this$0:Lcom/google/vr/sdk/base/sensors/DeviceSensorLooper;

    # getter for: Lcom/google/vr/sdk/base/sensors/DeviceSensorLooper;->registeredListeners:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/google/vr/sdk/base/sensors/DeviceSensorLooper;->access$000(Lcom/google/vr/sdk/base/sensors/DeviceSensorLooper;)Ljava/util/ArrayList;

    move-result-object v2

    monitor-enter v2

    .line 90
    :try_start_0
    iget-object v1, p0, Lcom/google/vr/sdk/base/sensors/DeviceSensorLooper$1;->this$0:Lcom/google/vr/sdk/base/sensors/DeviceSensorLooper;

    # getter for: Lcom/google/vr/sdk/base/sensors/DeviceSensorLooper;->registeredListeners:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/google/vr/sdk/base/sensors/DeviceSensorLooper;->access$000(Lcom/google/vr/sdk/base/sensors/DeviceSensorLooper;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorEventListener;

    .line 91
    .local v0, "listener":Landroid/hardware/SensorEventListener;
    invoke-interface {v0, p1}, Landroid/hardware/SensorEventListener;->onSensorChanged(Landroid/hardware/SensorEvent;)V

    goto :goto_0

    .line 93
    .end local v0    # "listener":Landroid/hardware/SensorEventListener;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 94
    return-void
.end method
