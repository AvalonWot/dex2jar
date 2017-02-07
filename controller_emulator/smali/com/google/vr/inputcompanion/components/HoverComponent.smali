.class public Lcom/google/vr/inputcompanion/components/HoverComponent;
.super Ljava/lang/Object;
.source "HoverComponent.java"

# interfaces
.implements Lcom/google/vr/inputcompanion/components/InputComponent;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final clientConnection:Lcom/google/vr/inputcompanion/ClientConnection;

.field private frameStartScheduler:Landroid/view/Choreographer;

.field private final provider:Lcom/google/vr/inputcompanion/fogale/HoverHeatmapProvider;

.field private volatile shouldStop:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/google/vr/inputcompanion/components/HoverComponent;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/vr/inputcompanion/components/HoverComponent;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/vr/inputcompanion/ClientConnection;)V
    .locals 1
    .param p1, "clientConnection"    # Lcom/google/vr/inputcompanion/ClientConnection;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/google/vr/inputcompanion/components/HoverComponent;->clientConnection:Lcom/google/vr/inputcompanion/ClientConnection;

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/vr/inputcompanion/components/HoverComponent;->shouldStop:Z

    .line 29
    invoke-static {}, Lcom/google/vr/inputcompanion/fogale/HoverHeatmapProvider;->create()Lcom/google/vr/inputcompanion/fogale/HoverHeatmapProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vr/inputcompanion/components/HoverComponent;->provider:Lcom/google/vr/inputcompanion/fogale/HoverHeatmapProvider;

    .line 30
    return-void
.end method

.method static synthetic access$000(Lcom/google/vr/inputcompanion/components/HoverComponent;)Landroid/view/Choreographer;
    .locals 1
    .param p0, "x0"    # Lcom/google/vr/inputcompanion/components/HoverComponent;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/google/vr/inputcompanion/components/HoverComponent;->frameStartScheduler:Landroid/view/Choreographer;

    return-object v0
.end method

.method static synthetic access$002(Lcom/google/vr/inputcompanion/components/HoverComponent;Landroid/view/Choreographer;)Landroid/view/Choreographer;
    .locals 0
    .param p0, "x0"    # Lcom/google/vr/inputcompanion/components/HoverComponent;
    .param p1, "x1"    # Landroid/view/Choreographer;

    .prologue
    .line 16
    iput-object p1, p0, Lcom/google/vr/inputcompanion/components/HoverComponent;->frameStartScheduler:Landroid/view/Choreographer;

    return-object p1
.end method

.method static synthetic access$100(Lcom/google/vr/inputcompanion/components/HoverComponent;)Lcom/google/vr/inputcompanion/fogale/HoverHeatmapProvider;
    .locals 1
    .param p0, "x0"    # Lcom/google/vr/inputcompanion/components/HoverComponent;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/google/vr/inputcompanion/components/HoverComponent;->provider:Lcom/google/vr/inputcompanion/fogale/HoverHeatmapProvider;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/vr/inputcompanion/components/HoverComponent;)Lcom/google/vr/inputcompanion/ClientConnection;
    .locals 1
    .param p0, "x0"    # Lcom/google/vr/inputcompanion/components/HoverComponent;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/google/vr/inputcompanion/components/HoverComponent;->clientConnection:Lcom/google/vr/inputcompanion/ClientConnection;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/vr/inputcompanion/components/HoverComponent;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/vr/inputcompanion/components/HoverComponent;

    .prologue
    .line 16
    iget-boolean v0, p0, Lcom/google/vr/inputcompanion/components/HoverComponent;->shouldStop:Z

    return v0
.end method


# virtual methods
.method public start()V
    .locals 6

    .prologue
    .line 34
    iget-object v2, p0, Lcom/google/vr/inputcompanion/components/HoverComponent;->provider:Lcom/google/vr/inputcompanion/fogale/HoverHeatmapProvider;

    if-nez v2, :cond_0

    .line 35
    sget-object v2, Lcom/google/vr/inputcompanion/components/HoverComponent;->TAG:Ljava/lang/String;

    const-string v3, "Unable to create a HoverHeatmapProvider."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :goto_0
    return-void

    .line 43
    :cond_0
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 44
    .local v1, "latch":Ljava/util/concurrent/CountDownLatch;
    iget-object v2, p0, Lcom/google/vr/inputcompanion/components/HoverComponent;->clientConnection:Lcom/google/vr/inputcompanion/ClientConnection;

    invoke-virtual {v2}, Lcom/google/vr/inputcompanion/ClientConnection;->getWriteHandler()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/google/vr/inputcompanion/components/HoverComponent$1;

    invoke-direct {v3, p0, v1}, Lcom/google/vr/inputcompanion/components/HoverComponent$1;-><init>(Lcom/google/vr/inputcompanion/components/HoverComponent;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 52
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    :goto_1
    iget-object v2, p0, Lcom/google/vr/inputcompanion/components/HoverComponent;->frameStartScheduler:Landroid/view/Choreographer;

    new-instance v3, Lcom/google/vr/inputcompanion/components/HoverComponent$2;

    invoke-direct {v3, p0}, Lcom/google/vr/inputcompanion/components/HoverComponent$2;-><init>(Lcom/google/vr/inputcompanion/components/HoverComponent;)V

    invoke-virtual {v2, v3}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    goto :goto_0

    .line 53
    :catch_0
    move-exception v0

    .line 54
    .local v0, "e":Ljava/lang/InterruptedException;
    sget-object v2, Lcom/google/vr/inputcompanion/components/HoverComponent;->TAG:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x35

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Interrupted while waiting for write thread to start: "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/vr/inputcompanion/components/HoverComponent;->shouldStop:Z

    .line 76
    return-void
.end method
