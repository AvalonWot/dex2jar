.class Lcom/google/vr/inputcompanion/MainActivity$8;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/google/vr/inputcompanion/InputCompanionServer$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/vr/inputcompanion/MainActivity;->startCapturingTouchAndSensors(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/vr/inputcompanion/MainActivity;

.field final synthetic val$statusView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/google/vr/inputcompanion/MainActivity;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/vr/inputcompanion/MainActivity;

    .prologue
    .line 276
    iput-object p1, p0, Lcom/google/vr/inputcompanion/MainActivity$8;->this$0:Lcom/google/vr/inputcompanion/MainActivity;

    iput-object p2, p0, Lcom/google/vr/inputcompanion/MainActivity$8;->val$statusView:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInputCompanionServerFinished()V
    .locals 3

    .prologue
    .line 279
    iget-object v0, p0, Lcom/google/vr/inputcompanion/MainActivity$8;->val$statusView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/vr/inputcompanion/MainActivity$8;->this$0:Lcom/google/vr/inputcompanion/MainActivity;

    sget v2, Lcom/google/vr/inputcompanion/R$string;->status_disconnected:I

    invoke-virtual {v1, v2}, Lcom/google/vr/inputcompanion/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 280
    iget-object v0, p0, Lcom/google/vr/inputcompanion/MainActivity$8;->val$statusView:Landroid/widget/TextView;

    sget v1, Lcom/google/vr/inputcompanion/R$drawable;->disconnected_status_background:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 281
    return-void
.end method
