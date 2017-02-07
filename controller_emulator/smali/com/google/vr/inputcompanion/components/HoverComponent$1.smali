.class Lcom/google/vr/inputcompanion/components/HoverComponent$1;
.super Ljava/lang/Object;
.source "HoverComponent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/vr/inputcompanion/components/HoverComponent;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/vr/inputcompanion/components/HoverComponent;

.field final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Lcom/google/vr/inputcompanion/components/HoverComponent;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/vr/inputcompanion/components/HoverComponent;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/google/vr/inputcompanion/components/HoverComponent$1;->this$0:Lcom/google/vr/inputcompanion/components/HoverComponent;

    iput-object p2, p0, Lcom/google/vr/inputcompanion/components/HoverComponent$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/vr/inputcompanion/components/HoverComponent$1;->this$0:Lcom/google/vr/inputcompanion/components/HoverComponent;

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v1

    # setter for: Lcom/google/vr/inputcompanion/components/HoverComponent;->frameStartScheduler:Landroid/view/Choreographer;
    invoke-static {v0, v1}, Lcom/google/vr/inputcompanion/components/HoverComponent;->access$002(Lcom/google/vr/inputcompanion/components/HoverComponent;Landroid/view/Choreographer;)Landroid/view/Choreographer;

    .line 48
    iget-object v0, p0, Lcom/google/vr/inputcompanion/components/HoverComponent$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 49
    return-void
.end method
