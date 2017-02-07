.class Lcom/google/vr/inputcompanion/MainActivity$9$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/vr/inputcompanion/MainActivity$9;->onConnect(Lcom/google/vr/inputcompanion/ClientConnection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/vr/inputcompanion/MainActivity$9;


# direct methods
.method constructor <init>(Lcom/google/vr/inputcompanion/MainActivity$9;)V
    .locals 0
    .param p1, "this$1"    # Lcom/google/vr/inputcompanion/MainActivity$9;

    .prologue
    .line 297
    iput-object p1, p0, Lcom/google/vr/inputcompanion/MainActivity$9$1;->this$1:Lcom/google/vr/inputcompanion/MainActivity$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 300
    iget-object v0, p0, Lcom/google/vr/inputcompanion/MainActivity$9$1;->this$1:Lcom/google/vr/inputcompanion/MainActivity$9;

    iget-object v1, v0, Lcom/google/vr/inputcompanion/MainActivity$9;->val$statusView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/google/vr/inputcompanion/MainActivity$9$1;->this$1:Lcom/google/vr/inputcompanion/MainActivity$9;

    iget-object v2, v0, Lcom/google/vr/inputcompanion/MainActivity$9;->this$0:Lcom/google/vr/inputcompanion/MainActivity;

    iget-object v0, p0, Lcom/google/vr/inputcompanion/MainActivity$9$1;->this$1:Lcom/google/vr/inputcompanion/MainActivity$9;

    # getter for: Lcom/google/vr/inputcompanion/MainActivity$9;->existingConnection:Lcom/google/vr/inputcompanion/ClientConnection;
    invoke-static {v0}, Lcom/google/vr/inputcompanion/MainActivity$9;->access$500(Lcom/google/vr/inputcompanion/MainActivity$9;)Lcom/google/vr/inputcompanion/ClientConnection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/vr/inputcompanion/ClientConnection;->isBluetooth()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 301
    sget v0, Lcom/google/vr/inputcompanion/R$string;->status_connected_bluetooth:I

    .line 300
    :goto_0
    invoke-virtual {v2, v0}, Lcom/google/vr/inputcompanion/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 302
    iget-object v0, p0, Lcom/google/vr/inputcompanion/MainActivity$9$1;->this$1:Lcom/google/vr/inputcompanion/MainActivity$9;

    iget-object v0, v0, Lcom/google/vr/inputcompanion/MainActivity$9;->val$statusView:Landroid/widget/TextView;

    sget v1, Lcom/google/vr/inputcompanion/R$drawable;->connected_status_background:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 303
    return-void

    .line 301
    :cond_0
    sget v0, Lcom/google/vr/inputcompanion/R$string;->status_connected_network:I

    goto :goto_0
.end method
