.class public Lcom/google/vr/inputcompanion/components/SensorsComponent;
.super Ljava/lang/Object;
.source "SensorsComponent.java"

# interfaces
.implements Lcom/google/vr/inputcompanion/components/InputComponent;


# instance fields
.field private final eventHandler:Landroid/os/Handler;

.field private final sensorEventListener:Landroid/hardware/SensorEventListener;

.field private final sensorManager:Landroid/hardware/SensorManager;


# direct methods
.method public constructor <init>(Landroid/hardware/SensorManager;Landroid/os/Handler;Landroid/hardware/SensorEventListener;)V
    .locals 0
    .param p1, "sensorManager"    # Landroid/hardware/SensorManager;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "listener"    # Landroid/hardware/SensorEventListener;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/google/vr/inputcompanion/components/SensorsComponent;->sensorManager:Landroid/hardware/SensorManager;

    .line 52
    iput-object p2, p0, Lcom/google/vr/inputcompanion/components/SensorsComponent;->eventHandler:Landroid/os/Handler;

    .line 53
    iput-object p3, p0, Lcom/google/vr/inputcompanion/components/SensorsComponent;->sensorEventListener:Landroid/hardware/SensorEventListener;

    .line 54
    return-void
.end method

.method public constructor <init>(Lcom/google/vr/inputcompanion/ClientConnection;Landroid/hardware/SensorManager;)V
    .locals 2
    .param p1, "clientConnection"    # Lcom/google/vr/inputcompanion/ClientConnection;
    .param p2, "sensorManager"    # Landroid/hardware/SensorManager;

    .prologue
    .line 34
    invoke-virtual {p1}, Lcom/google/vr/inputcompanion/ClientConnection;->getWriteHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/vr/inputcompanion/components/SensorsComponent$1;

    invoke-direct {v1, p1}, Lcom/google/vr/inputcompanion/components/SensorsComponent$1;-><init>(Lcom/google/vr/inputcompanion/ClientConnection;)V

    invoke-direct {p0, p2, v0, v1}, Lcom/google/vr/inputcompanion/components/SensorsComponent;-><init>(Landroid/hardware/SensorManager;Landroid/os/Handler;Landroid/hardware/SensorEventListener;)V

    .line 47
    return-void
.end method


# virtual methods
.method public start()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 58
    iget-object v0, p0, Lcom/google/vr/inputcompanion/components/SensorsComponent;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/google/vr/inputcompanion/components/SensorsComponent;->sensorEventListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/google/vr/inputcompanion/components/SensorsComponent;->sensorManager:Landroid/hardware/SensorManager;

    const/4 v3, 0x4

    .line 60
    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    iget-object v3, p0, Lcom/google/vr/inputcompanion/components/SensorsComponent;->eventHandler:Landroid/os/Handler;

    .line 58
    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 62
    iget-object v0, p0, Lcom/google/vr/inputcompanion/components/SensorsComponent;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/google/vr/inputcompanion/components/SensorsComponent;->sensorEventListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/google/vr/inputcompanion/components/SensorsComponent;->sensorManager:Landroid/hardware/SensorManager;

    const/4 v3, 0x1

    .line 64
    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    iget-object v3, p0, Lcom/google/vr/inputcompanion/components/SensorsComponent;->eventHandler:Landroid/os/Handler;

    .line 62
    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 66
    iget-object v0, p0, Lcom/google/vr/inputcompanion/components/SensorsComponent;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/google/vr/inputcompanion/components/SensorsComponent;->sensorEventListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/google/vr/inputcompanion/components/SensorsComponent;->sensorManager:Landroid/hardware/SensorManager;

    const/16 v3, 0xe

    .line 68
    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    iget-object v3, p0, Lcom/google/vr/inputcompanion/components/SensorsComponent;->eventHandler:Landroid/os/Handler;

    .line 66
    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 70
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/vr/inputcompanion/components/SensorsComponent;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/google/vr/inputcompanion/components/SensorsComponent;->sensorEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 75
    return-void
.end method
