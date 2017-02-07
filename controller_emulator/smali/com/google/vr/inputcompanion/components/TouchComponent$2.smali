.class Lcom/google/vr/inputcompanion/components/TouchComponent$2;
.super Ljava/lang/Object;
.source "TouchComponent.java"

# interfaces
.implements Landroid/view/View$OnHoverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/vr/inputcompanion/components/TouchComponent;-><init>(Lcom/google/vr/inputcompanion/ClientConnection;Landroid/content/Context;Lcom/google/vr/inputcompanion/TouchpadView;Landroid/os/Vibrator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$clientConnection:Lcom/google/vr/inputcompanion/ClientConnection;

.field final synthetic val$screenSize:Landroid/graphics/Point;


# direct methods
.method constructor <init>(Lcom/google/vr/inputcompanion/components/TouchComponent;Landroid/graphics/Point;Lcom/google/vr/inputcompanion/ClientConnection;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/vr/inputcompanion/components/TouchComponent;

    .prologue
    .line 75
    iput-object p2, p0, Lcom/google/vr/inputcompanion/components/TouchComponent$2;->val$screenSize:Landroid/graphics/Point;

    iput-object p3, p0, Lcom/google/vr/inputcompanion/components/TouchComponent$2;->val$clientConnection:Lcom/google/vr/inputcompanion/ClientConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 78
    iget-object v1, p0, Lcom/google/vr/inputcompanion/components/TouchComponent$2;->val$screenSize:Landroid/graphics/Point;

    invoke-static {p2, v1}, Lcom/google/vr/inputcompanion/ProtoUtils;->motionToProto(Landroid/view/MotionEvent;Landroid/graphics/Point;)Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;

    move-result-object v0

    .line 79
    .local v0, "proto":Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;
    iget-object v1, p0, Lcom/google/vr/inputcompanion/components/TouchComponent$2;->val$clientConnection:Lcom/google/vr/inputcompanion/ClientConnection;

    invoke-virtual {v1, v0}, Lcom/google/vr/inputcompanion/ClientConnection;->sendMessage(Lcom/google/protobuf/nano/MessageNano;)Z

    .line 80
    const/4 v1, 0x1

    return v1
.end method
