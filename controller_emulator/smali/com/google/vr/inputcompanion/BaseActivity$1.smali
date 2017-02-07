.class Lcom/google/vr/inputcompanion/BaseActivity$1;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/vr/inputcompanion/BaseActivity;->setFullscreenMode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/vr/inputcompanion/BaseActivity;


# direct methods
.method constructor <init>(Lcom/google/vr/inputcompanion/BaseActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/vr/inputcompanion/BaseActivity;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/google/vr/inputcompanion/BaseActivity$1;->this$0:Lcom/google/vr/inputcompanion/BaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSystemUiVisibilityChange(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/vr/inputcompanion/BaseActivity$1;->this$0:Lcom/google/vr/inputcompanion/BaseActivity;

    invoke-virtual {v0}, Lcom/google/vr/inputcompanion/BaseActivity;->setFullscreenMode()V

    .line 32
    return-void
.end method
