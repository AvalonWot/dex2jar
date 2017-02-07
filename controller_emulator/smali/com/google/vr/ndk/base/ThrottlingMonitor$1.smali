.class Lcom/google/vr/ndk/base/ThrottlingMonitor$1;
.super Ljava/lang/Object;
.source "ThrottlingMonitor.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/ndk/base/ThrottlingMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/vr/ndk/base/ThrottlingMonitor;


# direct methods
.method constructor <init>(Lcom/google/vr/ndk/base/ThrottlingMonitor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/vr/ndk/base/ThrottlingMonitor;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/google/vr/ndk/base/ThrottlingMonitor$1;->this$0:Lcom/google/vr/ndk/base/ThrottlingMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 47
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 48
    .local v1, "pending":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/vr/ndk/base/ThrottlingMonitor$SetupCallback;>;"
    iget-object v2, p0, Lcom/google/vr/ndk/base/ThrottlingMonitor$1;->this$0:Lcom/google/vr/ndk/base/ThrottlingMonitor;

    # getter for: Lcom/google/vr/ndk/base/ThrottlingMonitor;->lock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/google/vr/ndk/base/ThrottlingMonitor;->access$000(Lcom/google/vr/ndk/base/ThrottlingMonitor;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 49
    :try_start_0
    iget-object v2, p0, Lcom/google/vr/ndk/base/ThrottlingMonitor$1;->this$0:Lcom/google/vr/ndk/base/ThrottlingMonitor;

    invoke-static {p2}, Lcom/google/vr/vrcore/performance/api/IPerformanceService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/vr/vrcore/performance/api/IPerformanceService;

    move-result-object v4

    # setter for: Lcom/google/vr/ndk/base/ThrottlingMonitor;->perfService:Lcom/google/vr/vrcore/performance/api/IPerformanceService;
    invoke-static {v2, v4}, Lcom/google/vr/ndk/base/ThrottlingMonitor;->access$102(Lcom/google/vr/ndk/base/ThrottlingMonitor;Lcom/google/vr/vrcore/performance/api/IPerformanceService;)Lcom/google/vr/vrcore/performance/api/IPerformanceService;

    .line 50
    iget-object v2, p0, Lcom/google/vr/ndk/base/ThrottlingMonitor$1;->this$0:Lcom/google/vr/ndk/base/ThrottlingMonitor;

    # getter for: Lcom/google/vr/ndk/base/ThrottlingMonitor;->setupCallbacks:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/google/vr/ndk/base/ThrottlingMonitor;->access$200(Lcom/google/vr/ndk/base/ThrottlingMonitor;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 51
    iget-object v2, p0, Lcom/google/vr/ndk/base/ThrottlingMonitor$1;->this$0:Lcom/google/vr/ndk/base/ThrottlingMonitor;

    # getter for: Lcom/google/vr/ndk/base/ThrottlingMonitor;->setupCallbacks:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/google/vr/ndk/base/ThrottlingMonitor;->access$200(Lcom/google/vr/ndk/base/ThrottlingMonitor;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 52
    iget-object v2, p0, Lcom/google/vr/ndk/base/ThrottlingMonitor$1;->this$0:Lcom/google/vr/ndk/base/ThrottlingMonitor;

    # getter for: Lcom/google/vr/ndk/base/ThrottlingMonitor;->lock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/google/vr/ndk/base/ThrottlingMonitor;->access$000(Lcom/google/vr/ndk/base/ThrottlingMonitor;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 53
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/vr/ndk/base/ThrottlingMonitor$SetupCallback;

    .line 56
    .local v0, "c":Lcom/google/vr/ndk/base/ThrottlingMonitor$SetupCallback;
    invoke-interface {v0}, Lcom/google/vr/ndk/base/ThrottlingMonitor$SetupCallback;->onInitialized()V

    goto :goto_0

    .line 53
    .end local v0    # "c":Lcom/google/vr/ndk/base/ThrottlingMonitor$SetupCallback;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 58
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/vr/ndk/base/ThrottlingMonitor$1;->this$0:Lcom/google/vr/ndk/base/ThrottlingMonitor;

    # getter for: Lcom/google/vr/ndk/base/ThrottlingMonitor;->lock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/google/vr/ndk/base/ThrottlingMonitor;->access$000(Lcom/google/vr/ndk/base/ThrottlingMonitor;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 63
    :try_start_0
    iget-object v0, p0, Lcom/google/vr/ndk/base/ThrottlingMonitor$1;->this$0:Lcom/google/vr/ndk/base/ThrottlingMonitor;

    const/4 v2, 0x0

    # setter for: Lcom/google/vr/ndk/base/ThrottlingMonitor;->perfService:Lcom/google/vr/vrcore/performance/api/IPerformanceService;
    invoke-static {v0, v2}, Lcom/google/vr/ndk/base/ThrottlingMonitor;->access$102(Lcom/google/vr/ndk/base/ThrottlingMonitor;Lcom/google/vr/vrcore/performance/api/IPerformanceService;)Lcom/google/vr/vrcore/performance/api/IPerformanceService;

    .line 64
    iget-object v0, p0, Lcom/google/vr/ndk/base/ThrottlingMonitor$1;->this$0:Lcom/google/vr/ndk/base/ThrottlingMonitor;

    # getter for: Lcom/google/vr/ndk/base/ThrottlingMonitor;->lock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/google/vr/ndk/base/ThrottlingMonitor;->access$000(Lcom/google/vr/ndk/base/ThrottlingMonitor;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 65
    monitor-exit v1

    .line 66
    return-void

    .line 65
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
