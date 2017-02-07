.class Lcom/google/vr/inputcompanion/TouchpadView$1;
.super Ljava/lang/Object;
.source "TouchpadView.java"

# interfaces
.implements Landroid/view/GestureDetector$OnDoubleTapListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/vr/inputcompanion/TouchpadView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/vr/inputcompanion/TouchpadView;


# direct methods
.method constructor <init>(Lcom/google/vr/inputcompanion/TouchpadView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/vr/inputcompanion/TouchpadView;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/google/vr/inputcompanion/TouchpadView$1;->this$0:Lcom/google/vr/inputcompanion/TouchpadView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 89
    const/4 v0, 0x0

    return v0
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 63
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 64
    .local v0, "action":I
    iget-object v3, p0, Lcom/google/vr/inputcompanion/TouchpadView$1;->this$0:Lcom/google/vr/inputcompanion/TouchpadView;

    # getter for: Lcom/google/vr/inputcompanion/TouchpadView;->clickButtonDown:Z
    invoke-static {v3}, Lcom/google/vr/inputcompanion/TouchpadView;->access$000(Lcom/google/vr/inputcompanion/TouchpadView;)Z

    move-result v3

    if-nez v3, :cond_1

    if-nez v0, :cond_1

    .line 66
    iget-object v2, p0, Lcom/google/vr/inputcompanion/TouchpadView$1;->this$0:Lcom/google/vr/inputcompanion/TouchpadView;

    # setter for: Lcom/google/vr/inputcompanion/TouchpadView;->clickButtonDown:Z
    invoke-static {v2, v1}, Lcom/google/vr/inputcompanion/TouchpadView;->access$002(Lcom/google/vr/inputcompanion/TouchpadView;Z)Z

    .line 67
    iget-object v2, p0, Lcom/google/vr/inputcompanion/TouchpadView$1;->this$0:Lcom/google/vr/inputcompanion/TouchpadView;

    # getter for: Lcom/google/vr/inputcompanion/TouchpadView;->touchpadListener:Lcom/google/vr/inputcompanion/TouchpadView$TouchpadListener;
    invoke-static {v2}, Lcom/google/vr/inputcompanion/TouchpadView;->access$100(Lcom/google/vr/inputcompanion/TouchpadView;)Lcom/google/vr/inputcompanion/TouchpadView$TouchpadListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 68
    iget-object v2, p0, Lcom/google/vr/inputcompanion/TouchpadView$1;->this$0:Lcom/google/vr/inputcompanion/TouchpadView;

    # getter for: Lcom/google/vr/inputcompanion/TouchpadView;->touchpadListener:Lcom/google/vr/inputcompanion/TouchpadView$TouchpadListener;
    invoke-static {v2}, Lcom/google/vr/inputcompanion/TouchpadView;->access$100(Lcom/google/vr/inputcompanion/TouchpadView;)Lcom/google/vr/inputcompanion/TouchpadView$TouchpadListener;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/google/vr/inputcompanion/TouchpadView$TouchpadListener;->onClickButtonStateChanged(Z)V

    .line 79
    :cond_0
    :goto_0
    return v1

    .line 71
    :cond_1
    iget-object v3, p0, Lcom/google/vr/inputcompanion/TouchpadView$1;->this$0:Lcom/google/vr/inputcompanion/TouchpadView;

    # getter for: Lcom/google/vr/inputcompanion/TouchpadView;->clickButtonDown:Z
    invoke-static {v3}, Lcom/google/vr/inputcompanion/TouchpadView;->access$000(Lcom/google/vr/inputcompanion/TouchpadView;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-ne v0, v1, :cond_2

    .line 73
    iget-object v3, p0, Lcom/google/vr/inputcompanion/TouchpadView$1;->this$0:Lcom/google/vr/inputcompanion/TouchpadView;

    # setter for: Lcom/google/vr/inputcompanion/TouchpadView;->clickButtonDown:Z
    invoke-static {v3, v2}, Lcom/google/vr/inputcompanion/TouchpadView;->access$002(Lcom/google/vr/inputcompanion/TouchpadView;Z)Z

    .line 74
    iget-object v3, p0, Lcom/google/vr/inputcompanion/TouchpadView$1;->this$0:Lcom/google/vr/inputcompanion/TouchpadView;

    # getter for: Lcom/google/vr/inputcompanion/TouchpadView;->touchpadListener:Lcom/google/vr/inputcompanion/TouchpadView$TouchpadListener;
    invoke-static {v3}, Lcom/google/vr/inputcompanion/TouchpadView;->access$100(Lcom/google/vr/inputcompanion/TouchpadView;)Lcom/google/vr/inputcompanion/TouchpadView$TouchpadListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 75
    iget-object v3, p0, Lcom/google/vr/inputcompanion/TouchpadView$1;->this$0:Lcom/google/vr/inputcompanion/TouchpadView;

    # getter for: Lcom/google/vr/inputcompanion/TouchpadView;->touchpadListener:Lcom/google/vr/inputcompanion/TouchpadView$TouchpadListener;
    invoke-static {v3}, Lcom/google/vr/inputcompanion/TouchpadView;->access$100(Lcom/google/vr/inputcompanion/TouchpadView;)Lcom/google/vr/inputcompanion/TouchpadView$TouchpadListener;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/google/vr/inputcompanion/TouchpadView$TouchpadListener;->onClickButtonStateChanged(Z)V

    goto :goto_0

    :cond_2
    move v1, v2

    .line 79
    goto :goto_0
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 84
    const/4 v0, 0x0

    return v0
.end method
