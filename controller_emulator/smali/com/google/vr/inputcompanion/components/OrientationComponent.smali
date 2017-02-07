.class public Lcom/google/vr/inputcompanion/components/OrientationComponent;
.super Ljava/lang/Object;
.source "OrientationComponent.java"

# interfaces
.implements Lcom/google/vr/inputcompanion/components/InputComponent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/inputcompanion/components/OrientationComponent$SensorProvider;,
        Lcom/google/vr/inputcompanion/components/OrientationComponent$OrientationListener;
    }
.end annotation


# instance fields
.field private final orientationListener:Lcom/google/vr/inputcompanion/components/OrientationComponent$OrientationListener;

.field private final sensorEventListener:Landroid/hardware/SensorEventListener;

.field private final sensorFusionJni:Lcom/google/vr/inputcompanion/SensorFusionJni;

.field private final sensorProvider:Lcom/google/vr/inputcompanion/components/OrientationComponent$SensorProvider;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Landroid/content/Context;Lcom/google/vr/inputcompanion/SensorFusionJni;Lcom/google/vr/inputcompanion/components/OrientationComponent$OrientationListener;)V
    .locals 2
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "sensorFusion"    # Lcom/google/vr/inputcompanion/SensorFusionJni;
    .param p4, "listener"    # Lcom/google/vr/inputcompanion/components/OrientationComponent$OrientationListener;

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Lcom/google/vr/inputcompanion/components/OrientationComponent$1;

    invoke-direct {v0, p0}, Lcom/google/vr/inputcompanion/components/OrientationComponent$1;-><init>(Lcom/google/vr/inputcompanion/components/OrientationComponent;)V

    iput-object v0, p0, Lcom/google/vr/inputcompanion/components/OrientationComponent;->sensorEventListener:Landroid/hardware/SensorEventListener;

    .line 95
    iput-object p4, p0, Lcom/google/vr/inputcompanion/components/OrientationComponent;->orientationListener:Lcom/google/vr/inputcompanion/components/OrientationComponent$OrientationListener;

    .line 96
    new-instance v1, Lcom/google/vr/inputcompanion/components/OrientationComponent$SensorProvider;

    const-string v0, "sensor"

    .line 97
    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    invoke-direct {v1, v0, p1}, Lcom/google/vr/inputcompanion/components/OrientationComponent$SensorProvider;-><init>(Landroid/hardware/SensorManager;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/google/vr/inputcompanion/components/OrientationComponent;->sensorProvider:Lcom/google/vr/inputcompanion/components/OrientationComponent$SensorProvider;

    .line 98
    iput-object p3, p0, Lcom/google/vr/inputcompanion/components/OrientationComponent;->sensorFusionJni:Lcom/google/vr/inputcompanion/SensorFusionJni;

    .line 99
    return-void
.end method

.method public constructor <init>(Lcom/google/vr/inputcompanion/ClientConnection;Landroid/content/Context;Lcom/google/vr/inputcompanion/SensorFusionJni;)V
    .locals 2
    .param p1, "clientConnection"    # Lcom/google/vr/inputcompanion/ClientConnection;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "sensorFusion"    # Lcom/google/vr/inputcompanion/SensorFusionJni;

    .prologue
    .line 75
    invoke-virtual {p1}, Lcom/google/vr/inputcompanion/ClientConnection;->getWriteHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/vr/inputcompanion/components/OrientationComponent$2;

    invoke-direct {v1, p1}, Lcom/google/vr/inputcompanion/components/OrientationComponent$2;-><init>(Lcom/google/vr/inputcompanion/ClientConnection;)V

    invoke-direct {p0, v0, p2, p3, v1}, Lcom/google/vr/inputcompanion/components/OrientationComponent;-><init>(Landroid/os/Handler;Landroid/content/Context;Lcom/google/vr/inputcompanion/SensorFusionJni;Lcom/google/vr/inputcompanion/components/OrientationComponent$OrientationListener;)V

    .line 85
    return-void
.end method

.method static synthetic access$000(Lcom/google/vr/inputcompanion/components/OrientationComponent;)Lcom/google/vr/inputcompanion/SensorFusionJni;
    .locals 1
    .param p0, "x0"    # Lcom/google/vr/inputcompanion/components/OrientationComponent;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/google/vr/inputcompanion/components/OrientationComponent;->sensorFusionJni:Lcom/google/vr/inputcompanion/SensorFusionJni;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/vr/inputcompanion/components/OrientationComponent;)Lcom/google/vr/inputcompanion/components/OrientationComponent$OrientationListener;
    .locals 1
    .param p0, "x0"    # Lcom/google/vr/inputcompanion/components/OrientationComponent;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/google/vr/inputcompanion/components/OrientationComponent;->orientationListener:Lcom/google/vr/inputcompanion/components/OrientationComponent$OrientationListener;

    return-object v0
.end method


# virtual methods
.method public start()V
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/vr/inputcompanion/components/OrientationComponent;->sensorFusionJni:Lcom/google/vr/inputcompanion/SensorFusionJni;

    invoke-virtual {v0}, Lcom/google/vr/inputcompanion/SensorFusionJni;->init()V

    .line 104
    iget-object v0, p0, Lcom/google/vr/inputcompanion/components/OrientationComponent;->sensorProvider:Lcom/google/vr/inputcompanion/components/OrientationComponent$SensorProvider;

    iget-object v1, p0, Lcom/google/vr/inputcompanion/components/OrientationComponent;->sensorEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Lcom/google/vr/inputcompanion/components/OrientationComponent$SensorProvider;->registerListener(Landroid/hardware/SensorEventListener;)V

    .line 105
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/google/vr/inputcompanion/components/OrientationComponent;->sensorProvider:Lcom/google/vr/inputcompanion/components/OrientationComponent$SensorProvider;

    iget-object v1, p0, Lcom/google/vr/inputcompanion/components/OrientationComponent;->sensorEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Lcom/google/vr/inputcompanion/components/OrientationComponent$SensorProvider;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 110
    iget-object v0, p0, Lcom/google/vr/inputcompanion/components/OrientationComponent;->sensorFusionJni:Lcom/google/vr/inputcompanion/SensorFusionJni;

    invoke-virtual {v0}, Lcom/google/vr/inputcompanion/SensorFusionJni;->deInit()V

    .line 111
    return-void
.end method
