.class Lcom/google/vr/cardboard/TransitionView$3;
.super Landroid/view/OrientationEventListener;
.source "TransitionView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/vr/cardboard/TransitionView;->startOrientationMonitor()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/vr/cardboard/TransitionView;


# direct methods
.method constructor <init>(Lcom/google/vr/cardboard/TransitionView;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/vr/cardboard/TransitionView;
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 186
    iput-object p1, p0, Lcom/google/vr/cardboard/TransitionView$3;->this$0:Lcom/google/vr/cardboard/TransitionView;

    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 2
    .param p1, "orientation"    # I

    .prologue
    .line 189
    iget-object v0, p0, Lcom/google/vr/cardboard/TransitionView$3;->this$0:Lcom/google/vr/cardboard/TransitionView;

    # setter for: Lcom/google/vr/cardboard/TransitionView;->orientation:I
    invoke-static {v0, p1}, Lcom/google/vr/cardboard/TransitionView;->access$202(Lcom/google/vr/cardboard/TransitionView;I)I

    .line 191
    iget-object v0, p0, Lcom/google/vr/cardboard/TransitionView$3;->this$0:Lcom/google/vr/cardboard/TransitionView;

    # getter for: Lcom/google/vr/cardboard/TransitionView;->rotationChecked:Z
    invoke-static {v0}, Lcom/google/vr/cardboard/TransitionView;->access$300(Lcom/google/vr/cardboard/TransitionView;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 192
    iget-object v0, p0, Lcom/google/vr/cardboard/TransitionView$3;->this$0:Lcom/google/vr/cardboard/TransitionView;

    # invokes: Lcom/google/vr/cardboard/TransitionView;->rotateViewIfNeeded()V
    invoke-static {v0}, Lcom/google/vr/cardboard/TransitionView;->access$400(Lcom/google/vr/cardboard/TransitionView;)V

    .line 203
    :cond_0
    :goto_0
    return-void

    .line 196
    :cond_1
    # invokes: Lcom/google/vr/cardboard/TransitionView;->isLandscapeLeft(I)Z
    invoke-static {p1}, Lcom/google/vr/cardboard/TransitionView;->access$500(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 197
    iget-object v0, p0, Lcom/google/vr/cardboard/TransitionView$3;->this$0:Lcom/google/vr/cardboard/TransitionView;

    const/4 v1, 0x0

    # invokes: Lcom/google/vr/cardboard/TransitionView;->fadeOutAndRemove(Z)V
    invoke-static {v0, v1}, Lcom/google/vr/cardboard/TransitionView;->access$100(Lcom/google/vr/cardboard/TransitionView;Z)V

    goto :goto_0

    .line 198
    :cond_2
    # invokes: Lcom/google/vr/cardboard/TransitionView;->isLandscapeRight(I)Z
    invoke-static {p1}, Lcom/google/vr/cardboard/TransitionView;->access$600(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0
.end method
