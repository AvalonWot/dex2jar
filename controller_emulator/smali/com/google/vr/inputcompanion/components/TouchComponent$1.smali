.class Lcom/google/vr/inputcompanion/components/TouchComponent$1;
.super Ljava/lang/Object;
.source "TouchComponent.java"

# interfaces
.implements Lcom/google/vr/inputcompanion/TouchpadView$TouchpadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/vr/inputcompanion/components/TouchComponent;-><init>(Lcom/google/vr/inputcompanion/ClientConnection;Landroid/content/Context;Lcom/google/vr/inputcompanion/TouchpadView;Landroid/os/Vibrator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/vr/inputcompanion/components/TouchComponent;

.field final synthetic val$clientConnection:Lcom/google/vr/inputcompanion/ClientConnection;

.field final synthetic val$screenSize:Landroid/graphics/Point;

.field final synthetic val$vibrator:Landroid/os/Vibrator;


# direct methods
.method constructor <init>(Lcom/google/vr/inputcompanion/components/TouchComponent;Landroid/os/Vibrator;Landroid/graphics/Point;Lcom/google/vr/inputcompanion/ClientConnection;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/vr/inputcompanion/components/TouchComponent;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/google/vr/inputcompanion/components/TouchComponent$1;->this$0:Lcom/google/vr/inputcompanion/components/TouchComponent;

    iput-object p2, p0, Lcom/google/vr/inputcompanion/components/TouchComponent$1;->val$vibrator:Landroid/os/Vibrator;

    iput-object p3, p0, Lcom/google/vr/inputcompanion/components/TouchComponent$1;->val$screenSize:Landroid/graphics/Point;

    iput-object p4, p0, Lcom/google/vr/inputcompanion/components/TouchComponent$1;->val$clientConnection:Lcom/google/vr/inputcompanion/ClientConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClickButtonStateChanged(Z)V
    .locals 2
    .param p1, "down"    # Z

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/vr/inputcompanion/components/TouchComponent$1;->this$0:Lcom/google/vr/inputcompanion/components/TouchComponent;

    # setter for: Lcom/google/vr/inputcompanion/components/TouchComponent;->clickButtonDown:Z
    invoke-static {v0, p1}, Lcom/google/vr/inputcompanion/components/TouchComponent;->access$202(Lcom/google/vr/inputcompanion/components/TouchComponent;Z)Z

    .line 71
    iget-object v0, p0, Lcom/google/vr/inputcompanion/components/TouchComponent$1;->val$clientConnection:Lcom/google/vr/inputcompanion/ClientConnection;

    const/16 v1, 0x42

    invoke-static {v1, p1}, Lcom/google/vr/inputcompanion/ProtoUtils;->keyToProto(IZ)Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/vr/inputcompanion/ClientConnection;->sendMessage(Lcom/google/protobuf/nano/MessageNano;)Z

    .line 72
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 54
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 55
    .local v0, "action":I
    iget-object v2, p0, Lcom/google/vr/inputcompanion/components/TouchComponent$1;->this$0:Lcom/google/vr/inputcompanion/components/TouchComponent;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    # setter for: Lcom/google/vr/inputcompanion/components/TouchComponent;->lastTouchX:F
    invoke-static {v2, v3}, Lcom/google/vr/inputcompanion/components/TouchComponent;->access$002(Lcom/google/vr/inputcompanion/components/TouchComponent;F)F

    .line 56
    iget-object v2, p0, Lcom/google/vr/inputcompanion/components/TouchComponent$1;->this$0:Lcom/google/vr/inputcompanion/components/TouchComponent;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    # setter for: Lcom/google/vr/inputcompanion/components/TouchComponent;->lastTouchY:F
    invoke-static {v2, v3}, Lcom/google/vr/inputcompanion/components/TouchComponent;->access$102(Lcom/google/vr/inputcompanion/components/TouchComponent;F)F

    .line 58
    iget-object v2, p0, Lcom/google/vr/inputcompanion/components/TouchComponent$1;->val$vibrator:Landroid/os/Vibrator;

    if-eqz v2, :cond_1

    .line 59
    if-eqz v0, :cond_0

    const/4 v2, 0x5

    if-ne v0, v2, :cond_1

    .line 60
    :cond_0
    iget-object v2, p0, Lcom/google/vr/inputcompanion/components/TouchComponent$1;->val$vibrator:Landroid/os/Vibrator;

    const-wide/16 v4, 0x10

    invoke-virtual {v2, v4, v5}, Landroid/os/Vibrator;->vibrate(J)V

    .line 64
    :cond_1
    iget-object v2, p0, Lcom/google/vr/inputcompanion/components/TouchComponent$1;->val$screenSize:Landroid/graphics/Point;

    invoke-static {p1, v2}, Lcom/google/vr/inputcompanion/ProtoUtils;->motionToProto(Landroid/view/MotionEvent;Landroid/graphics/Point;)Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;

    move-result-object v1

    .line 65
    .local v1, "proto":Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;
    iget-object v2, p0, Lcom/google/vr/inputcompanion/components/TouchComponent$1;->val$clientConnection:Lcom/google/vr/inputcompanion/ClientConnection;

    invoke-virtual {v2, v1}, Lcom/google/vr/inputcompanion/ClientConnection;->sendMessage(Lcom/google/protobuf/nano/MessageNano;)Z

    .line 66
    return-void
.end method
