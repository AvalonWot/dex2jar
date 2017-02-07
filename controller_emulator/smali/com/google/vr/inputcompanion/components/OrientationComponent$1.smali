.class Lcom/google/vr/inputcompanion/components/OrientationComponent$1;
.super Ljava/lang/Object;
.source "OrientationComponent.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/inputcompanion/components/OrientationComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final quaternion:[F

.field final synthetic this$0:Lcom/google/vr/inputcompanion/components/OrientationComponent;


# direct methods
.method constructor <init>(Lcom/google/vr/inputcompanion/components/OrientationComponent;)V
    .locals 1
    .param p1, "this$0"    # Lcom/google/vr/inputcompanion/components/OrientationComponent;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/google/vr/inputcompanion/components/OrientationComponent$1;->this$0:Lcom/google/vr/inputcompanion/components/OrientationComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/google/vr/inputcompanion/components/OrientationComponent$1;->quaternion:[F

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 64
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 44
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 55
    :goto_0
    :pswitch_0
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 61
    :goto_1
    return-void

    .line 46
    :pswitch_1
    iget-object v0, p0, Lcom/google/vr/inputcompanion/components/OrientationComponent$1;->this$0:Lcom/google/vr/inputcompanion/components/OrientationComponent;

    # getter for: Lcom/google/vr/inputcompanion/components/OrientationComponent;->sensorFusionJni:Lcom/google/vr/inputcompanion/SensorFusionJni;
    invoke-static {v0}, Lcom/google/vr/inputcompanion/components/OrientationComponent;->access$000(Lcom/google/vr/inputcompanion/components/OrientationComponent;)Lcom/google/vr/inputcompanion/SensorFusionJni;

    move-result-object v0

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    iget-wide v2, p1, Landroid/hardware/SensorEvent;->timestamp:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/vr/inputcompanion/SensorFusionJni;->addGyroMeasurement([FJ)V

    goto :goto_0

    .line 49
    :pswitch_2
    iget-object v0, p0, Lcom/google/vr/inputcompanion/components/OrientationComponent$1;->this$0:Lcom/google/vr/inputcompanion/components/OrientationComponent;

    # getter for: Lcom/google/vr/inputcompanion/components/OrientationComponent;->sensorFusionJni:Lcom/google/vr/inputcompanion/SensorFusionJni;
    invoke-static {v0}, Lcom/google/vr/inputcompanion/components/OrientationComponent;->access$000(Lcom/google/vr/inputcompanion/components/OrientationComponent;)Lcom/google/vr/inputcompanion/SensorFusionJni;

    move-result-object v0

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    iget-wide v2, p1, Landroid/hardware/SensorEvent;->timestamp:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/vr/inputcompanion/SensorFusionJni;->addAccelMeasurement([FJ)V

    goto :goto_0

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/google/vr/inputcompanion/components/OrientationComponent$1;->this$0:Lcom/google/vr/inputcompanion/components/OrientationComponent;

    # getter for: Lcom/google/vr/inputcompanion/components/OrientationComponent;->sensorFusionJni:Lcom/google/vr/inputcompanion/SensorFusionJni;
    invoke-static {v0}, Lcom/google/vr/inputcompanion/components/OrientationComponent;->access$000(Lcom/google/vr/inputcompanion/components/OrientationComponent;)Lcom/google/vr/inputcompanion/SensorFusionJni;

    move-result-object v0

    iget-object v1, p0, Lcom/google/vr/inputcompanion/components/OrientationComponent$1;->quaternion:[F

    invoke-virtual {v0, v1}, Lcom/google/vr/inputcompanion/SensorFusionJni;->getOrientation([F)V

    .line 60
    iget-object v0, p0, Lcom/google/vr/inputcompanion/components/OrientationComponent$1;->this$0:Lcom/google/vr/inputcompanion/components/OrientationComponent;

    # getter for: Lcom/google/vr/inputcompanion/components/OrientationComponent;->orientationListener:Lcom/google/vr/inputcompanion/components/OrientationComponent$OrientationListener;
    invoke-static {v0}, Lcom/google/vr/inputcompanion/components/OrientationComponent;->access$100(Lcom/google/vr/inputcompanion/components/OrientationComponent;)Lcom/google/vr/inputcompanion/components/OrientationComponent$OrientationListener;

    move-result-object v0

    iget-wide v2, p1, Landroid/hardware/SensorEvent;->timestamp:J

    iget-object v1, p0, Lcom/google/vr/inputcompanion/components/OrientationComponent$1;->quaternion:[F

    invoke-interface {v0, v2, v3, v1}, Lcom/google/vr/inputcompanion/components/OrientationComponent$OrientationListener;->onOrientationEvent(J[F)V

    goto :goto_1

    .line 44
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
