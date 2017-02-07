.class Lcom/google/vr/ndk/base/VrCoreSdkClient$1;
.super Ljava/lang/Object;
.source "VrCoreSdkClient.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/ndk/base/VrCoreSdkClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/vr/ndk/base/VrCoreSdkClient;


# direct methods
.method constructor <init>(Lcom/google/vr/ndk/base/VrCoreSdkClient;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/vr/ndk/base/VrCoreSdkClient;

    .prologue
    .line 357
    iput-object p1, p0, Lcom/google/vr/ndk/base/VrCoreSdkClient$1;->this$0:Lcom/google/vr/ndk/base/VrCoreSdkClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 9
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 363
    invoke-static {p2}, Lcom/google/vr/vrcore/common/api/IVrCoreSdkService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/vr/vrcore/common/api/IVrCoreSdkService;

    move-result-object v4

    .line 365
    .local v4, "service":Lcom/google/vr/vrcore/common/api/IVrCoreSdkService;
    const/16 v5, 0xa

    :try_start_0
    invoke-interface {v4, v5}, Lcom/google/vr/vrcore/common/api/IVrCoreSdkService;->initialize(I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 366
    const-string v5, "VrCoreSdkClient"

    const-string v6, "Failed to initialize VrCore SDK Service."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    iget-object v5, p0, Lcom/google/vr/ndk/base/VrCoreSdkClient$1;->this$0:Lcom/google/vr/ndk/base/VrCoreSdkClient;

    # invokes: Lcom/google/vr/ndk/base/VrCoreSdkClient;->handleBindFailed()V
    invoke-static {v5}, Lcom/google/vr/ndk/base/VrCoreSdkClient;->access$000(Lcom/google/vr/ndk/base/VrCoreSdkClient;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 435
    :goto_0
    return-void

    .line 370
    :catch_0
    move-exception v0

    .line 371
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v5, "VrCoreSdkClient"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x29

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "Failed to initialize VrCore SDK Service: "

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    iget-object v5, p0, Lcom/google/vr/ndk/base/VrCoreSdkClient$1;->this$0:Lcom/google/vr/ndk/base/VrCoreSdkClient;

    # invokes: Lcom/google/vr/ndk/base/VrCoreSdkClient;->handleBindFailed()V
    invoke-static {v5}, Lcom/google/vr/ndk/base/VrCoreSdkClient;->access$000(Lcom/google/vr/ndk/base/VrCoreSdkClient;)V

    goto :goto_0

    .line 375
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_0
    iget-object v5, p0, Lcom/google/vr/ndk/base/VrCoreSdkClient$1;->this$0:Lcom/google/vr/ndk/base/VrCoreSdkClient;

    # setter for: Lcom/google/vr/ndk/base/VrCoreSdkClient;->vrCoreSdkService:Lcom/google/vr/vrcore/common/api/IVrCoreSdkService;
    invoke-static {v5, v4}, Lcom/google/vr/ndk/base/VrCoreSdkClient;->access$102(Lcom/google/vr/ndk/base/VrCoreSdkClient;Lcom/google/vr/vrcore/common/api/IVrCoreSdkService;)Lcom/google/vr/vrcore/common/api/IVrCoreSdkService;

    .line 383
    :try_start_1
    iget-object v5, p0, Lcom/google/vr/ndk/base/VrCoreSdkClient$1;->this$0:Lcom/google/vr/ndk/base/VrCoreSdkClient;

    iget-object v6, p0, Lcom/google/vr/ndk/base/VrCoreSdkClient$1;->this$0:Lcom/google/vr/ndk/base/VrCoreSdkClient;

    # getter for: Lcom/google/vr/ndk/base/VrCoreSdkClient;->vrCoreSdkService:Lcom/google/vr/vrcore/common/api/IVrCoreSdkService;
    invoke-static {v6}, Lcom/google/vr/ndk/base/VrCoreSdkClient;->access$100(Lcom/google/vr/ndk/base/VrCoreSdkClient;)Lcom/google/vr/vrcore/common/api/IVrCoreSdkService;

    move-result-object v6

    invoke-interface {v6}, Lcom/google/vr/vrcore/common/api/IVrCoreSdkService;->getDaydreamManager()Lcom/google/vr/vrcore/common/api/IDaydreamManager;

    move-result-object v6

    # setter for: Lcom/google/vr/ndk/base/VrCoreSdkClient;->daydreamManager:Lcom/google/vr/vrcore/common/api/IDaydreamManager;
    invoke-static {v5, v6}, Lcom/google/vr/ndk/base/VrCoreSdkClient;->access$202(Lcom/google/vr/ndk/base/VrCoreSdkClient;Lcom/google/vr/vrcore/common/api/IDaydreamManager;)Lcom/google/vr/vrcore/common/api/IDaydreamManager;

    .line 385
    iget-object v5, p0, Lcom/google/vr/ndk/base/VrCoreSdkClient$1;->this$0:Lcom/google/vr/ndk/base/VrCoreSdkClient;

    # getter for: Lcom/google/vr/ndk/base/VrCoreSdkClient;->daydreamManager:Lcom/google/vr/vrcore/common/api/IDaydreamManager;
    invoke-static {v5}, Lcom/google/vr/ndk/base/VrCoreSdkClient;->access$200(Lcom/google/vr/ndk/base/VrCoreSdkClient;)Lcom/google/vr/vrcore/common/api/IDaydreamManager;

    move-result-object v5

    if-nez v5, :cond_1

    .line 386
    const-string v5, "VrCoreSdkClient"

    const-string v6, "Failed to obtain DaydreamManager from VrCore SDK Service."

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    iget-object v5, p0, Lcom/google/vr/ndk/base/VrCoreSdkClient$1;->this$0:Lcom/google/vr/ndk/base/VrCoreSdkClient;

    # invokes: Lcom/google/vr/ndk/base/VrCoreSdkClient;->handleNoDaydreamManager()V
    invoke-static {v5}, Lcom/google/vr/ndk/base/VrCoreSdkClient;->access$300(Lcom/google/vr/ndk/base/VrCoreSdkClient;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 391
    :catch_1
    move-exception v0

    .line 392
    .restart local v0    # "ex":Landroid/os/RemoteException;
    const-string v5, "VrCoreSdkClient"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x39

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "Failed to obtain DaydreamManager from VrCore SDK Service:"

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    iget-object v5, p0, Lcom/google/vr/ndk/base/VrCoreSdkClient$1;->this$0:Lcom/google/vr/ndk/base/VrCoreSdkClient;

    # invokes: Lcom/google/vr/ndk/base/VrCoreSdkClient;->handleNoDaydreamManager()V
    invoke-static {v5}, Lcom/google/vr/ndk/base/VrCoreSdkClient;->access$300(Lcom/google/vr/ndk/base/VrCoreSdkClient;)V

    goto/16 :goto_0

    .line 390
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_1
    :try_start_2
    iget-object v5, p0, Lcom/google/vr/ndk/base/VrCoreSdkClient$1;->this$0:Lcom/google/vr/ndk/base/VrCoreSdkClient;

    # getter for: Lcom/google/vr/ndk/base/VrCoreSdkClient;->daydreamManager:Lcom/google/vr/vrcore/common/api/IDaydreamManager;
    invoke-static {v5}, Lcom/google/vr/ndk/base/VrCoreSdkClient;->access$200(Lcom/google/vr/ndk/base/VrCoreSdkClient;)Lcom/google/vr/vrcore/common/api/IDaydreamManager;

    move-result-object v5

    iget-object v6, p0, Lcom/google/vr/ndk/base/VrCoreSdkClient$1;->this$0:Lcom/google/vr/ndk/base/VrCoreSdkClient;

    # getter for: Lcom/google/vr/ndk/base/VrCoreSdkClient;->componentName:Landroid/content/ComponentName;
    invoke-static {v6}, Lcom/google/vr/ndk/base/VrCoreSdkClient;->access$400(Lcom/google/vr/ndk/base/VrCoreSdkClient;)Landroid/content/ComponentName;

    move-result-object v6

    iget-object v7, p0, Lcom/google/vr/ndk/base/VrCoreSdkClient$1;->this$0:Lcom/google/vr/ndk/base/VrCoreSdkClient;

    # getter for: Lcom/google/vr/ndk/base/VrCoreSdkClient;->daydreamListener:Lcom/google/vr/ndk/base/VrCoreSdkClient$DaydreamListenerImpl;
    invoke-static {v7}, Lcom/google/vr/ndk/base/VrCoreSdkClient;->access$500(Lcom/google/vr/ndk/base/VrCoreSdkClient;)Lcom/google/vr/ndk/base/VrCoreSdkClient$DaydreamListenerImpl;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lcom/google/vr/vrcore/common/api/IDaydreamManager;->registerListener(Landroid/content/ComponentName;Lcom/google/vr/vrcore/common/api/IDaydreamListener;)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 399
    const/4 v1, 0x0

    .line 403
    .local v1, "headTrackingState":Lcom/google/vr/vrcore/common/api/HeadTrackingState;
    :try_start_3
    iget-object v5, p0, Lcom/google/vr/ndk/base/VrCoreSdkClient$1;->this$0:Lcom/google/vr/ndk/base/VrCoreSdkClient;

    invoke-virtual {v5}, Lcom/google/vr/ndk/base/VrCoreSdkClient;->getHeadTrackingState()Lcom/google/vr/vrcore/common/api/HeadTrackingState;

    move-result-object v3

    .line 407
    .local v3, "s":Lcom/google/vr/vrcore/common/api/HeadTrackingState;
    iget-object v5, p0, Lcom/google/vr/ndk/base/VrCoreSdkClient$1;->this$0:Lcom/google/vr/ndk/base/VrCoreSdkClient;

    # getter for: Lcom/google/vr/ndk/base/VrCoreSdkClient;->daydreamManager:Lcom/google/vr/vrcore/common/api/IDaydreamManager;
    invoke-static {v5}, Lcom/google/vr/ndk/base/VrCoreSdkClient;->access$200(Lcom/google/vr/ndk/base/VrCoreSdkClient;)Lcom/google/vr/vrcore/common/api/IDaydreamManager;

    move-result-object v5

    iget-object v6, p0, Lcom/google/vr/ndk/base/VrCoreSdkClient$1;->this$0:Lcom/google/vr/ndk/base/VrCoreSdkClient;

    # getter for: Lcom/google/vr/ndk/base/VrCoreSdkClient;->componentName:Landroid/content/ComponentName;
    invoke-static {v6}, Lcom/google/vr/ndk/base/VrCoreSdkClient;->access$400(Lcom/google/vr/ndk/base/VrCoreSdkClient;)Landroid/content/ComponentName;

    move-result-object v6

    invoke-interface {v5, v6, v3}, Lcom/google/vr/vrcore/common/api/IDaydreamManager;->prepareVr(Landroid/content/ComponentName;Lcom/google/vr/vrcore/common/api/HeadTrackingState;)I

    move-result v2

    .local v2, "result":I
    const/4 v5, 0x2

    if-ne v2, v5, :cond_2

    .line 409
    const-string v5, "VrCoreSdkClient"

    const-string v6, "Daydream VR preparation failed, closing VR session."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    iget-object v5, p0, Lcom/google/vr/ndk/base/VrCoreSdkClient$1;->this$0:Lcom/google/vr/ndk/base/VrCoreSdkClient;

    # invokes: Lcom/google/vr/ndk/base/VrCoreSdkClient;->handlePrepareVrFailed()V
    invoke-static {v5}, Lcom/google/vr/ndk/base/VrCoreSdkClient;->access$600(Lcom/google/vr/ndk/base/VrCoreSdkClient;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 433
    iget-object v5, p0, Lcom/google/vr/ndk/base/VrCoreSdkClient$1;->this$0:Lcom/google/vr/ndk/base/VrCoreSdkClient;

    # invokes: Lcom/google/vr/ndk/base/VrCoreSdkClient;->resumeTracking(Lcom/google/vr/vrcore/common/api/HeadTrackingState;)V
    invoke-static {v5, v1}, Lcom/google/vr/ndk/base/VrCoreSdkClient;->access$700(Lcom/google/vr/ndk/base/VrCoreSdkClient;Lcom/google/vr/vrcore/common/api/HeadTrackingState;)V

    goto/16 :goto_0

    .line 415
    :cond_2
    if-nez v2, :cond_3

    .line 416
    move-object v1, v3

    .line 433
    :cond_3
    iget-object v5, p0, Lcom/google/vr/ndk/base/VrCoreSdkClient$1;->this$0:Lcom/google/vr/ndk/base/VrCoreSdkClient;

    # invokes: Lcom/google/vr/ndk/base/VrCoreSdkClient;->resumeTracking(Lcom/google/vr/vrcore/common/api/HeadTrackingState;)V
    invoke-static {v5, v1}, Lcom/google/vr/ndk/base/VrCoreSdkClient;->access$700(Lcom/google/vr/ndk/base/VrCoreSdkClient;Lcom/google/vr/vrcore/common/api/HeadTrackingState;)V

    goto/16 :goto_0

    .line 429
    .end local v2    # "result":I
    .end local v3    # "s":Lcom/google/vr/vrcore/common/api/HeadTrackingState;
    :catch_2
    move-exception v0

    .line 430
    .restart local v0    # "ex":Landroid/os/RemoteException;
    :try_start_4
    const-string v5, "VrCoreSdkClient"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x3d

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "Error while registering listener with the VrCore SDK Service:"

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 433
    iget-object v5, p0, Lcom/google/vr/ndk/base/VrCoreSdkClient$1;->this$0:Lcom/google/vr/ndk/base/VrCoreSdkClient;

    # invokes: Lcom/google/vr/ndk/base/VrCoreSdkClient;->resumeTracking(Lcom/google/vr/vrcore/common/api/HeadTrackingState;)V
    invoke-static {v5, v1}, Lcom/google/vr/ndk/base/VrCoreSdkClient;->access$700(Lcom/google/vr/ndk/base/VrCoreSdkClient;Lcom/google/vr/vrcore/common/api/HeadTrackingState;)V

    goto/16 :goto_0

    .end local v0    # "ex":Landroid/os/RemoteException;
    :catchall_0
    move-exception v5

    iget-object v6, p0, Lcom/google/vr/ndk/base/VrCoreSdkClient$1;->this$0:Lcom/google/vr/ndk/base/VrCoreSdkClient;

    # invokes: Lcom/google/vr/ndk/base/VrCoreSdkClient;->resumeTracking(Lcom/google/vr/vrcore/common/api/HeadTrackingState;)V
    invoke-static {v6, v1}, Lcom/google/vr/ndk/base/VrCoreSdkClient;->access$700(Lcom/google/vr/ndk/base/VrCoreSdkClient;Lcom/google/vr/vrcore/common/api/HeadTrackingState;)V

    throw v5
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    const/4 v1, 0x0

    .line 442
    iget-object v0, p0, Lcom/google/vr/ndk/base/VrCoreSdkClient$1;->this$0:Lcom/google/vr/ndk/base/VrCoreSdkClient;

    # setter for: Lcom/google/vr/ndk/base/VrCoreSdkClient;->vrCoreSdkService:Lcom/google/vr/vrcore/common/api/IVrCoreSdkService;
    invoke-static {v0, v1}, Lcom/google/vr/ndk/base/VrCoreSdkClient;->access$102(Lcom/google/vr/ndk/base/VrCoreSdkClient;Lcom/google/vr/vrcore/common/api/IVrCoreSdkService;)Lcom/google/vr/vrcore/common/api/IVrCoreSdkService;

    .line 443
    iget-object v0, p0, Lcom/google/vr/ndk/base/VrCoreSdkClient$1;->this$0:Lcom/google/vr/ndk/base/VrCoreSdkClient;

    # setter for: Lcom/google/vr/ndk/base/VrCoreSdkClient;->daydreamManager:Lcom/google/vr/vrcore/common/api/IDaydreamManager;
    invoke-static {v0, v1}, Lcom/google/vr/ndk/base/VrCoreSdkClient;->access$202(Lcom/google/vr/ndk/base/VrCoreSdkClient;Lcom/google/vr/vrcore/common/api/IDaydreamManager;)Lcom/google/vr/vrcore/common/api/IDaydreamManager;

    .line 444
    return-void
.end method
