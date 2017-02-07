.class Lcom/google/vr/inputcompanion/components/SensorsComponent$1;
.super Ljava/lang/Object;
.source "SensorsComponent.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/vr/inputcompanion/components/SensorsComponent;-><init>(Lcom/google/vr/inputcompanion/ClientConnection;Landroid/hardware/SensorManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$clientConnection:Lcom/google/vr/inputcompanion/ClientConnection;


# direct methods
.method constructor <init>(Lcom/google/vr/inputcompanion/ClientConnection;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/google/vr/inputcompanion/components/SensorsComponent$1;->val$clientConnection:Lcom/google/vr/inputcompanion/ClientConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 45
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 37
    invoke-static {p1}, Lcom/google/vr/inputcompanion/ProtoUtils;->sensorEventToProto(Landroid/hardware/SensorEvent;)Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;

    move-result-object v0

    .line 38
    .local v0, "proto":Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;
    if-nez v0, :cond_0

    .line 42
    :goto_0
    return-void

    .line 41
    :cond_0
    iget-object v1, p0, Lcom/google/vr/inputcompanion/components/SensorsComponent$1;->val$clientConnection:Lcom/google/vr/inputcompanion/ClientConnection;

    invoke-virtual {v1, v0}, Lcom/google/vr/inputcompanion/ClientConnection;->sendMessage(Lcom/google/protobuf/nano/MessageNano;)Z

    goto :goto_0
.end method
