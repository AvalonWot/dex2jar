.class Lcom/google/vr/inputcompanion/components/OrientationComponent$2;
.super Ljava/lang/Object;
.source "OrientationComponent.java"

# interfaces
.implements Lcom/google/vr/inputcompanion/components/OrientationComponent$OrientationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/vr/inputcompanion/components/OrientationComponent;-><init>(Lcom/google/vr/inputcompanion/ClientConnection;Landroid/content/Context;Lcom/google/vr/inputcompanion/SensorFusionJni;)V
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
    .line 76
    iput-object p1, p0, Lcom/google/vr/inputcompanion/components/OrientationComponent$2;->val$clientConnection:Lcom/google/vr/inputcompanion/ClientConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOrientationEvent(J[F)V
    .locals 3
    .param p1, "timestampNs"    # J
    .param p3, "quaternion"    # [F

    .prologue
    .line 79
    invoke-static {p1, p2, p3}, Lcom/google/vr/inputcompanion/ProtoUtils;->orientationToProto(J[F)Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;

    move-result-object v0

    .line 80
    .local v0, "proto":Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;
    if-eqz v0, :cond_0

    .line 81
    iget-object v1, p0, Lcom/google/vr/inputcompanion/components/OrientationComponent$2;->val$clientConnection:Lcom/google/vr/inputcompanion/ClientConnection;

    invoke-virtual {v1, v0}, Lcom/google/vr/inputcompanion/ClientConnection;->sendMessage(Lcom/google/protobuf/nano/MessageNano;)Z

    .line 83
    :cond_0
    return-void
.end method
