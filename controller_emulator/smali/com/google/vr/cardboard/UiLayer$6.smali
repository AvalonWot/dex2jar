.class Lcom/google/vr/cardboard/UiLayer$6;
.super Ljava/lang/Object;
.source "UiLayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/vr/cardboard/UiLayer;->setBackButtonListener(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/vr/cardboard/UiLayer;

.field final synthetic val$runnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/google/vr/cardboard/UiLayer;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/vr/cardboard/UiLayer;

    .prologue
    .line 230
    iput-object p1, p0, Lcom/google/vr/cardboard/UiLayer$6;->this$0:Lcom/google/vr/cardboard/UiLayer;

    iput-object p2, p0, Lcom/google/vr/cardboard/UiLayer$6;->val$runnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 233
    iget-object v1, p0, Lcom/google/vr/cardboard/UiLayer$6;->val$runnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 234
    .local v0, "visible":Z
    :goto_0
    iget-object v1, p0, Lcom/google/vr/cardboard/UiLayer$6;->this$0:Lcom/google/vr/cardboard/UiLayer;

    # getter for: Lcom/google/vr/cardboard/UiLayer;->backButton:Landroid/widget/ImageButton;
    invoke-static {v1}, Lcom/google/vr/cardboard/UiLayer;->access$600(Lcom/google/vr/cardboard/UiLayer;)Landroid/widget/ImageButton;

    move-result-object v1

    # invokes: Lcom/google/vr/cardboard/UiLayer;->computeVisibility(Z)I
    invoke-static {v0}, Lcom/google/vr/cardboard/UiLayer;->access$300(Z)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 235
    iget-object v1, p0, Lcom/google/vr/cardboard/UiLayer$6;->this$0:Lcom/google/vr/cardboard/UiLayer;

    # getter for: Lcom/google/vr/cardboard/UiLayer;->transitionView:Lcom/google/vr/cardboard/TransitionView;
    invoke-static {v1}, Lcom/google/vr/cardboard/UiLayer;->access$700(Lcom/google/vr/cardboard/UiLayer;)Lcom/google/vr/cardboard/TransitionView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 236
    iget-object v1, p0, Lcom/google/vr/cardboard/UiLayer$6;->this$0:Lcom/google/vr/cardboard/UiLayer;

    # getter for: Lcom/google/vr/cardboard/UiLayer;->transitionView:Lcom/google/vr/cardboard/TransitionView;
    invoke-static {v1}, Lcom/google/vr/cardboard/UiLayer;->access$700(Lcom/google/vr/cardboard/UiLayer;)Lcom/google/vr/cardboard/TransitionView;

    move-result-object v1

    iget-object v2, p0, Lcom/google/vr/cardboard/UiLayer$6;->val$runnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/google/vr/cardboard/TransitionView;->setBackButtonListener(Ljava/lang/Runnable;)V

    .line 238
    :cond_0
    return-void

    .line 233
    .end local v0    # "visible":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
