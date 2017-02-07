.class public Lcom/google/vr/inputcompanion/BaseActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "BaseActivity.java"


# instance fields
.field private setSystemVisibilityListener:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/vr/inputcompanion/BaseActivity;->setSystemVisibilityListener:Z

    return-void
.end method


# virtual methods
.method protected setFullscreenMode()V
    .locals 2

    .prologue
    .line 18
    invoke-virtual {p0}, Lcom/google/vr/inputcompanion/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x1706

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 26
    iget-boolean v0, p0, Lcom/google/vr/inputcompanion/BaseActivity;->setSystemVisibilityListener:Z

    if-nez v0, :cond_0

    .line 27
    invoke-virtual {p0}, Lcom/google/vr/inputcompanion/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/google/vr/inputcompanion/BaseActivity$1;

    invoke-direct {v1, p0}, Lcom/google/vr/inputcompanion/BaseActivity$1;-><init>(Lcom/google/vr/inputcompanion/BaseActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/vr/inputcompanion/BaseActivity;->setSystemVisibilityListener:Z

    .line 36
    :cond_0
    return-void
.end method
