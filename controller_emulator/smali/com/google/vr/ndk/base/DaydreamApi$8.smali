.class Lcom/google/vr/ndk/base/DaydreamApi$8;
.super Ljava/lang/Object;
.source "DaydreamApi.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/vr/ndk/base/DaydreamApi;->exitFromVr(Landroid/app/Activity;ILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/vr/ndk/base/DaydreamApi;

.field final synthetic val$onFailureRunnable:Ljava/lang/Runnable;

.field final synthetic val$pendingVrExitIntent:Landroid/app/PendingIntent;


# direct methods
.method constructor <init>(Lcom/google/vr/ndk/base/DaydreamApi;Ljava/lang/Runnable;Landroid/app/PendingIntent;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/vr/ndk/base/DaydreamApi;

    .prologue
    .line 636
    iput-object p1, p0, Lcom/google/vr/ndk/base/DaydreamApi$8;->this$0:Lcom/google/vr/ndk/base/DaydreamApi;

    iput-object p2, p0, Lcom/google/vr/ndk/base/DaydreamApi$8;->val$onFailureRunnable:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/google/vr/ndk/base/DaydreamApi$8;->val$pendingVrExitIntent:Landroid/app/PendingIntent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 639
    iget-object v1, p0, Lcom/google/vr/ndk/base/DaydreamApi$8;->this$0:Lcom/google/vr/ndk/base/DaydreamApi;

    # getter for: Lcom/google/vr/ndk/base/DaydreamApi;->daydreamManager:Lcom/google/vr/vrcore/common/api/IDaydreamManager;
    invoke-static {v1}, Lcom/google/vr/ndk/base/DaydreamApi;->access$100(Lcom/google/vr/ndk/base/DaydreamApi;)Lcom/google/vr/vrcore/common/api/IDaydreamManager;

    move-result-object v1

    if-nez v1, :cond_1

    .line 640
    # getter for: Lcom/google/vr/ndk/base/DaydreamApi;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/google/vr/ndk/base/DaydreamApi;->access$200()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed to exit VR: Daydream service unavailable."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    iget-object v1, p0, Lcom/google/vr/ndk/base/DaydreamApi$8;->val$onFailureRunnable:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 653
    :cond_0
    :goto_0
    return-void

    .line 645
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/google/vr/ndk/base/DaydreamApi$8;->this$0:Lcom/google/vr/ndk/base/DaydreamApi;

    # getter for: Lcom/google/vr/ndk/base/DaydreamApi;->daydreamManager:Lcom/google/vr/vrcore/common/api/IDaydreamManager;
    invoke-static {v1}, Lcom/google/vr/ndk/base/DaydreamApi;->access$100(Lcom/google/vr/ndk/base/DaydreamApi;)Lcom/google/vr/vrcore/common/api/IDaydreamManager;

    move-result-object v1

    iget-object v2, p0, Lcom/google/vr/ndk/base/DaydreamApi$8;->val$pendingVrExitIntent:Landroid/app/PendingIntent;

    invoke-interface {v1, v2}, Lcom/google/vr/vrcore/common/api/IDaydreamManager;->exitFromVr(Landroid/app/PendingIntent;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 646
    # getter for: Lcom/google/vr/ndk/base/DaydreamApi;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/google/vr/ndk/base/DaydreamApi;->access$200()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed to exit VR: Invalid request."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    iget-object v1, p0, Lcom/google/vr/ndk/base/DaydreamApi$8;->val$onFailureRunnable:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 649
    :catch_0
    move-exception v0

    .line 650
    .local v0, "ex":Landroid/os/RemoteException;
    # getter for: Lcom/google/vr/ndk/base/DaydreamApi;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/google/vr/ndk/base/DaydreamApi;->access$200()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x31

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Failed to exit VR: RemoteException while exiting:"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    iget-object v1, p0, Lcom/google/vr/ndk/base/DaydreamApi$8;->val$onFailureRunnable:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method
