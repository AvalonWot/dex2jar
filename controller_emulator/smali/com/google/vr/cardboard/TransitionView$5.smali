.class Lcom/google/vr/cardboard/TransitionView$5;
.super Ljava/lang/Object;
.source "TransitionView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/vr/cardboard/TransitionView;->updateBackButtonVisibility()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/vr/cardboard/TransitionView;


# direct methods
.method constructor <init>(Lcom/google/vr/cardboard/TransitionView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/vr/cardboard/TransitionView;

    .prologue
    .line 378
    iput-object p1, p0, Lcom/google/vr/cardboard/TransitionView$5;->this$0:Lcom/google/vr/cardboard/TransitionView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 381
    iget-object v0, p0, Lcom/google/vr/cardboard/TransitionView$5;->this$0:Lcom/google/vr/cardboard/TransitionView;

    # getter for: Lcom/google/vr/cardboard/TransitionView;->backButtonRunnable:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/google/vr/cardboard/TransitionView;->access$700(Lcom/google/vr/cardboard/TransitionView;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 382
    return-void
.end method
