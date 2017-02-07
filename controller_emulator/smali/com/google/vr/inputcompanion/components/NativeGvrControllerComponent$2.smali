.class Lcom/google/vr/inputcompanion/components/NativeGvrControllerComponent$2;
.super Ljava/lang/Object;
.source "NativeGvrControllerComponent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/vr/inputcompanion/components/NativeGvrControllerComponent;->stop()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/vr/inputcompanion/components/NativeGvrControllerComponent;


# direct methods
.method constructor <init>(Lcom/google/vr/inputcompanion/components/NativeGvrControllerComponent;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/vr/inputcompanion/components/NativeGvrControllerComponent;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/google/vr/inputcompanion/components/NativeGvrControllerComponent$2;->this$0:Lcom/google/vr/inputcompanion/components/NativeGvrControllerComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/google/vr/inputcompanion/components/NativeGvrControllerComponent$2;->this$0:Lcom/google/vr/inputcompanion/components/NativeGvrControllerComponent;

    # getter for: Lcom/google/vr/inputcompanion/components/NativeGvrControllerComponent;->statusView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/google/vr/inputcompanion/components/NativeGvrControllerComponent;->access$100(Lcom/google/vr/inputcompanion/components/NativeGvrControllerComponent;)Landroid/widget/TextView;

    move-result-object v0

    sget v1, Lcom/google/vr/inputcompanion/R$string;->gvr_controller_shutdown:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 129
    iget-object v0, p0, Lcom/google/vr/inputcompanion/components/NativeGvrControllerComponent$2;->this$0:Lcom/google/vr/inputcompanion/components/NativeGvrControllerComponent;

    # getter for: Lcom/google/vr/inputcompanion/components/NativeGvrControllerComponent;->stateGraphicView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/google/vr/inputcompanion/components/NativeGvrControllerComponent;->access$200(Lcom/google/vr/inputcompanion/components/NativeGvrControllerComponent;)Landroid/widget/ImageView;

    move-result-object v0

    sget v1, Lcom/google/vr/inputcompanion/R$mipmap;->gvr_state_waiting_for_desktop:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 130
    return-void
.end method
