.class Lcom/google/vr/ndk/base/DaydreamApi$9;
.super Ljava/lang/Object;
.source "DaydreamApi.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/vr/ndk/base/DaydreamApi;->setInhibitSystemButtons(Landroid/content/ComponentName;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/vr/ndk/base/DaydreamApi;

.field final synthetic val$componentName:Landroid/content/ComponentName;

.field final synthetic val$shouldInhibit:Z


# direct methods
.method constructor <init>(Lcom/google/vr/ndk/base/DaydreamApi;ZLandroid/content/ComponentName;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/vr/ndk/base/DaydreamApi;

    .prologue
    .line 675
    iput-object p1, p0, Lcom/google/vr/ndk/base/DaydreamApi$9;->this$0:Lcom/google/vr/ndk/base/DaydreamApi;

    iput-boolean p2, p0, Lcom/google/vr/ndk/base/DaydreamApi$9;->val$shouldInhibit:Z

    iput-object p3, p0, Lcom/google/vr/ndk/base/DaydreamApi$9;->val$componentName:Landroid/content/ComponentName;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 679
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 680
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "OPTION_INHIBIT_SYSTEM_BUTTONS"

    iget-boolean v3, p0, Lcom/google/vr/ndk/base/DaydreamApi$9;->val$shouldInhibit:Z

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 681
    iget-object v2, p0, Lcom/google/vr/ndk/base/DaydreamApi$9;->this$0:Lcom/google/vr/ndk/base/DaydreamApi;

    # getter for: Lcom/google/vr/ndk/base/DaydreamApi;->vrCoreSdkService:Lcom/google/vr/vrcore/common/api/IVrCoreSdkService;
    invoke-static {v2}, Lcom/google/vr/ndk/base/DaydreamApi;->access$000(Lcom/google/vr/ndk/base/DaydreamApi;)Lcom/google/vr/vrcore/common/api/IVrCoreSdkService;

    move-result-object v2

    iget-object v3, p0, Lcom/google/vr/ndk/base/DaydreamApi$9;->val$componentName:Landroid/content/ComponentName;

    invoke-interface {v2, v3, v0}, Lcom/google/vr/vrcore/common/api/IVrCoreSdkService;->setClientOptions(Landroid/content/ComponentName;Landroid/os/Bundle;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 682
    # getter for: Lcom/google/vr/ndk/base/DaydreamApi;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/google/vr/ndk/base/DaydreamApi;->access$200()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Failed to set client options to inhibit system button."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 687
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-void

    .line 684
    :catch_0
    move-exception v1

    .line 685
    .local v1, "ex":Landroid/os/RemoteException;
    # getter for: Lcom/google/vr/ndk/base/DaydreamApi;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/google/vr/ndk/base/DaydreamApi;->access$200()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RemoteException while setting client options."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
