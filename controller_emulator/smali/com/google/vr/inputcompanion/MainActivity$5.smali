.class Lcom/google/vr/inputcompanion/MainActivity$5;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/vr/inputcompanion/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/vr/inputcompanion/MainActivity;


# direct methods
.method constructor <init>(Lcom/google/vr/inputcompanion/MainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/vr/inputcompanion/MainActivity;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/google/vr/inputcompanion/MainActivity$5;->this$0:Lcom/google/vr/inputcompanion/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/google/vr/inputcompanion/MainActivity$5;->this$0:Lcom/google/vr/inputcompanion/MainActivity;

    # getter for: Lcom/google/vr/inputcompanion/MainActivity;->controllerSizeAdjuster:Lcom/google/vr/inputcompanion/ControllerSizeAdjuster;
    invoke-static {v0}, Lcom/google/vr/inputcompanion/MainActivity;->access$000(Lcom/google/vr/inputcompanion/MainActivity;)Lcom/google/vr/inputcompanion/ControllerSizeAdjuster;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/vr/inputcompanion/ControllerSizeAdjuster;->save()V

    .line 137
    iget-object v0, p0, Lcom/google/vr/inputcompanion/MainActivity$5;->this$0:Lcom/google/vr/inputcompanion/MainActivity;

    const/4 v1, 0x0

    # invokes: Lcom/google/vr/inputcompanion/MainActivity;->showAdjustSizeUi(Z)V
    invoke-static {v0, v1}, Lcom/google/vr/inputcompanion/MainActivity;->access$200(Lcom/google/vr/inputcompanion/MainActivity;Z)V

    .line 138
    return-void
.end method
