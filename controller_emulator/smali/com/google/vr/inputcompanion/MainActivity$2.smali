.class Lcom/google/vr/inputcompanion/MainActivity$2;
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
    .line 109
    iput-object p1, p0, Lcom/google/vr/inputcompanion/MainActivity$2;->this$0:Lcom/google/vr/inputcompanion/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 112
    iget-object v0, p0, Lcom/google/vr/inputcompanion/MainActivity$2;->this$0:Lcom/google/vr/inputcompanion/MainActivity;

    # getter for: Lcom/google/vr/inputcompanion/MainActivity;->controllerSizeAdjuster:Lcom/google/vr/inputcompanion/ControllerSizeAdjuster;
    invoke-static {v0}, Lcom/google/vr/inputcompanion/MainActivity;->access$000(Lcom/google/vr/inputcompanion/MainActivity;)Lcom/google/vr/inputcompanion/ControllerSizeAdjuster;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/vr/inputcompanion/ControllerSizeAdjuster;->increaseScale()V

    .line 113
    iget-object v0, p0, Lcom/google/vr/inputcompanion/MainActivity$2;->this$0:Lcom/google/vr/inputcompanion/MainActivity;

    # invokes: Lcom/google/vr/inputcompanion/MainActivity;->updateScaleDisplay()V
    invoke-static {v0}, Lcom/google/vr/inputcompanion/MainActivity;->access$100(Lcom/google/vr/inputcompanion/MainActivity;)V

    .line 114
    return-void
.end method
