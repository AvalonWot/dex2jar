.class Lcom/google/vr/inputcompanion/components/HoverComponent$2;
.super Ljava/lang/Object;
.source "HoverComponent.java"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/vr/inputcompanion/components/HoverComponent;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/vr/inputcompanion/components/HoverComponent;


# direct methods
.method constructor <init>(Lcom/google/vr/inputcompanion/components/HoverComponent;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/vr/inputcompanion/components/HoverComponent;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/google/vr/inputcompanion/components/HoverComponent$2;->this$0:Lcom/google/vr/inputcompanion/components/HoverComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doFrame(J)V
    .locals 5
    .param p1, "frameTimeNanos"    # J

    .prologue
    .line 60
    iget-object v2, p0, Lcom/google/vr/inputcompanion/components/HoverComponent$2;->this$0:Lcom/google/vr/inputcompanion/components/HoverComponent;

    .line 61
    # getter for: Lcom/google/vr/inputcompanion/components/HoverComponent;->provider:Lcom/google/vr/inputcompanion/fogale/HoverHeatmapProvider;
    invoke-static {v2}, Lcom/google/vr/inputcompanion/components/HoverComponent;->access$100(Lcom/google/vr/inputcompanion/components/HoverComponent;)Lcom/google/vr/inputcompanion/fogale/HoverHeatmapProvider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/vr/inputcompanion/fogale/HoverHeatmapProvider;->getLatestHeatmap()[F

    move-result-object v2

    iget-object v3, p0, Lcom/google/vr/inputcompanion/components/HoverComponent$2;->this$0:Lcom/google/vr/inputcompanion/components/HoverComponent;

    # getter for: Lcom/google/vr/inputcompanion/components/HoverComponent;->provider:Lcom/google/vr/inputcompanion/fogale/HoverHeatmapProvider;
    invoke-static {v3}, Lcom/google/vr/inputcompanion/components/HoverComponent;->access$100(Lcom/google/vr/inputcompanion/components/HoverComponent;)Lcom/google/vr/inputcompanion/fogale/HoverHeatmapProvider;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/vr/inputcompanion/fogale/HoverHeatmapProvider;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/google/vr/inputcompanion/components/HoverComponent$2;->this$0:Lcom/google/vr/inputcompanion/components/HoverComponent;

    # getter for: Lcom/google/vr/inputcompanion/components/HoverComponent;->provider:Lcom/google/vr/inputcompanion/fogale/HoverHeatmapProvider;
    invoke-static {v4}, Lcom/google/vr/inputcompanion/components/HoverComponent;->access$100(Lcom/google/vr/inputcompanion/components/HoverComponent;)Lcom/google/vr/inputcompanion/fogale/HoverHeatmapProvider;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/vr/inputcompanion/fogale/HoverHeatmapProvider;->getHeight()I

    move-result v4

    .line 60
    invoke-static {v2, v3, v4}, Lcom/google/vr/inputcompanion/ProtoUtils;->hoverHeatmapToProto([FII)Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;

    move-result-object v0

    .line 62
    .local v0, "proto":Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;
    const/4 v1, 0x0

    .line 63
    .local v1, "success":Z
    if-eqz v0, :cond_0

    .line 64
    iget-object v2, p0, Lcom/google/vr/inputcompanion/components/HoverComponent$2;->this$0:Lcom/google/vr/inputcompanion/components/HoverComponent;

    # getter for: Lcom/google/vr/inputcompanion/components/HoverComponent;->clientConnection:Lcom/google/vr/inputcompanion/ClientConnection;
    invoke-static {v2}, Lcom/google/vr/inputcompanion/components/HoverComponent;->access$200(Lcom/google/vr/inputcompanion/components/HoverComponent;)Lcom/google/vr/inputcompanion/ClientConnection;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/vr/inputcompanion/ClientConnection;->sendMessage(Lcom/google/protobuf/nano/MessageNano;)Z

    move-result v1

    .line 66
    :cond_0
    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/google/vr/inputcompanion/components/HoverComponent$2;->this$0:Lcom/google/vr/inputcompanion/components/HoverComponent;

    # getter for: Lcom/google/vr/inputcompanion/components/HoverComponent;->shouldStop:Z
    invoke-static {v2}, Lcom/google/vr/inputcompanion/components/HoverComponent;->access$300(Lcom/google/vr/inputcompanion/components/HoverComponent;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 67
    iget-object v2, p0, Lcom/google/vr/inputcompanion/components/HoverComponent$2;->this$0:Lcom/google/vr/inputcompanion/components/HoverComponent;

    # getter for: Lcom/google/vr/inputcompanion/components/HoverComponent;->frameStartScheduler:Landroid/view/Choreographer;
    invoke-static {v2}, Lcom/google/vr/inputcompanion/components/HoverComponent;->access$000(Lcom/google/vr/inputcompanion/components/HoverComponent;)Landroid/view/Choreographer;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 69
    :cond_1
    return-void
.end method
