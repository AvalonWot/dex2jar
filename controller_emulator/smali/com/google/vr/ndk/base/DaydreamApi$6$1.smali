.class Lcom/google/vr/ndk/base/DaydreamApi$6$1;
.super Ljava/lang/Object;
.source "DaydreamApi.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/vr/ndk/base/DaydreamApi$6;->onTransitionComplete()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/vr/ndk/base/DaydreamApi$6;


# direct methods
.method constructor <init>(Lcom/google/vr/ndk/base/DaydreamApi$6;)V
    .locals 0
    .param p1, "this$1"    # Lcom/google/vr/ndk/base/DaydreamApi$6;

    .prologue
    .line 520
    iput-object p1, p0, Lcom/google/vr/ndk/base/DaydreamApi$6$1;->this$1:Lcom/google/vr/ndk/base/DaydreamApi$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 524
    :try_start_0
    iget-object v0, p0, Lcom/google/vr/ndk/base/DaydreamApi$6$1;->this$1:Lcom/google/vr/ndk/base/DaydreamApi$6;

    iget-object v0, v0, Lcom/google/vr/ndk/base/DaydreamApi$6;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/vr/ndk/base/DaydreamApi$6$1;->this$1:Lcom/google/vr/ndk/base/DaydreamApi$6;

    iget-object v1, v1, Lcom/google/vr/ndk/base/DaydreamApi$6;->val$pendingIntent:Landroid/app/PendingIntent;

    .line 525
    invoke-virtual {v1}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v1

    iget-object v2, p0, Lcom/google/vr/ndk/base/DaydreamApi$6$1;->this$1:Lcom/google/vr/ndk/base/DaydreamApi$6;

    iget v2, v2, Lcom/google/vr/ndk/base/DaydreamApi$6;->val$requestCode:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 524
    invoke-virtual/range {v0 .. v6}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 529
    :goto_0
    return-void

    .line 526
    :catch_0
    move-exception v7

    .line 527
    .local v7, "e":Landroid/content/IntentSender$SendIntentException;
    # getter for: Lcom/google/vr/ndk/base/DaydreamApi;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/google/vr/ndk/base/DaydreamApi;->access$200()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x2b

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Exception while starting next VR activity: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
