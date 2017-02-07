.class Lcom/google/vr/inputcompanion/components/OrientationComponent$SensorProvider;
.super Ljava/lang/Object;
.source "OrientationComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/inputcompanion/components/OrientationComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SensorProvider"
.end annotation


# instance fields
.field private final handler:Landroid/os/Handler;

.field private final sensorManager:Landroid/hardware/SensorManager;


# direct methods
.method constructor <init>(Landroid/hardware/SensorManager;Landroid/os/Handler;)V
    .locals 0
    .param p1, "sensorManager"    # Landroid/hardware/SensorManager;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    iput-object p1, p0, Lcom/google/vr/inputcompanion/components/OrientationComponent$SensorProvider;->sensorManager:Landroid/hardware/SensorManager;

    .line 126
    iput-object p2, p0, Lcom/google/vr/inputcompanion/components/OrientationComponent$SensorProvider;->handler:Landroid/os/Handler;

    .line 127
    return-void
.end method


# virtual methods
.method public registerListener(Landroid/hardware/SensorEventListener;)V
    .locals 4
    .param p1, "listener"    # Landroid/hardware/SensorEventListener;

    .prologue
    const/4 v3, 0x0

    .line 130
    iget-object v0, p0, Lcom/google/vr/inputcompanion/components/OrientationComponent$SensorProvider;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/google/vr/inputcompanion/components/OrientationComponent$SensorProvider;->sensorManager:Landroid/hardware/SensorManager;

    const/4 v2, 0x4

    .line 132
    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iget-object v2, p0, Lcom/google/vr/inputcompanion/components/OrientationComponent$SensorProvider;->handler:Landroid/os/Handler;

    .line 130
    invoke-virtual {v0, p1, v1, v3, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 134
    iget-object v0, p0, Lcom/google/vr/inputcompanion/components/OrientationComponent$SensorProvider;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/google/vr/inputcompanion/components/OrientationComponent$SensorProvider;->sensorManager:Landroid/hardware/SensorManager;

    const/4 v2, 0x1

    .line 136
    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iget-object v2, p0, Lcom/google/vr/inputcompanion/components/OrientationComponent$SensorProvider;->handler:Landroid/os/Handler;

    .line 134
    invoke-virtual {v0, p1, v1, v3, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 138
    return-void
.end method

.method public unregisterListener(Landroid/hardware/SensorEventListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/hardware/SensorEventListener;

    .prologue
    .line 141
    iget-object v0, p0, Lcom/google/vr/inputcompanion/components/OrientationComponent$SensorProvider;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 142
    return-void
.end method
