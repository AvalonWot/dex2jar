.class Lcom/google/vr/cardboard/UiLayer$2;
.super Ljava/lang/Object;
.source "UiLayer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/vr/cardboard/UiLayer;->initializeViewsWithLayoutId(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/vr/cardboard/UiLayer;


# direct methods
.method constructor <init>(Lcom/google/vr/cardboard/UiLayer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/vr/cardboard/UiLayer;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/google/vr/cardboard/UiLayer$2;->this$0:Lcom/google/vr/cardboard/UiLayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 112
    iget-object v1, p0, Lcom/google/vr/cardboard/UiLayer$2;->this$0:Lcom/google/vr/cardboard/UiLayer;

    # getter for: Lcom/google/vr/cardboard/UiLayer;->settingsButtonRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/google/vr/cardboard/UiLayer;->access$100(Lcom/google/vr/cardboard/UiLayer;)Ljava/lang/Runnable;

    move-result-object v0

    .line 113
    .local v0, "runnable":Ljava/lang/Runnable;
    if-eqz v0, :cond_0

    .line 114
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 116
    :cond_0
    return-void
.end method
