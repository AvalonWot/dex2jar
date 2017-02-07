.class public Lcom/google/vr/inputcompanion/ControllerSizeAdjuster;
.super Ljava/lang/Object;
.source "ControllerSizeAdjuster.java"


# static fields
.field static final MAX_SCALE:F = 1.15f
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final MIN_SCALE:F = 0.85f
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final SCALE_CHANGE_INCREMENT:F = 0.01f
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final SP_KEY_CONTROLLER_SCALE:Ljava/lang/String; = "controller_scale"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private currentScale:F

.field private sharedPreferences:Landroid/content/SharedPreferences;

.field private targetView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "targetView"    # Landroid/view/View;

    .prologue
    .line 23
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/vr/inputcompanion/ControllerSizeAdjuster;-><init>(Landroid/content/Context;Landroid/view/View;Landroid/content/SharedPreferences;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Landroid/content/SharedPreferences;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "targetView"    # Landroid/view/View;
    .param p3, "sharedPreferences"    # Landroid/content/SharedPreferences;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/google/vr/inputcompanion/ControllerSizeAdjuster;->currentScale:F

    .line 28
    iput-object p2, p0, Lcom/google/vr/inputcompanion/ControllerSizeAdjuster;->targetView:Landroid/view/View;

    .line 29
    if-eqz p3, :cond_0

    .line 30
    .end local p3    # "sharedPreferences":Landroid/content/SharedPreferences;
    :goto_0
    iput-object p3, p0, Lcom/google/vr/inputcompanion/ControllerSizeAdjuster;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 31
    invoke-virtual {p0}, Lcom/google/vr/inputcompanion/ControllerSizeAdjuster;->load()V

    .line 32
    return-void

    .line 30
    .restart local p3    # "sharedPreferences":Landroid/content/SharedPreferences;
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p3

    goto :goto_0
.end method

.method private updateView()V
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/vr/inputcompanion/ControllerSizeAdjuster;->targetView:Landroid/view/View;

    iget v1, p0, Lcom/google/vr/inputcompanion/ControllerSizeAdjuster;->currentScale:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 59
    iget-object v0, p0, Lcom/google/vr/inputcompanion/ControllerSizeAdjuster;->targetView:Landroid/view/View;

    iget v1, p0, Lcom/google/vr/inputcompanion/ControllerSizeAdjuster;->currentScale:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 60
    return-void
.end method


# virtual methods
.method public decreaseScale()V
    .locals 2

    .prologue
    .line 44
    iget v0, p0, Lcom/google/vr/inputcompanion/ControllerSizeAdjuster;->currentScale:F

    const v1, 0x3c23d70a    # 0.01f

    sub-float/2addr v0, v1

    const v1, 0x3f59999a    # 0.85f

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/google/vr/inputcompanion/ControllerSizeAdjuster;->currentScale:F

    .line 45
    invoke-direct {p0}, Lcom/google/vr/inputcompanion/ControllerSizeAdjuster;->updateView()V

    .line 46
    return-void
.end method

.method public getCurrentScale()F
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/google/vr/inputcompanion/ControllerSizeAdjuster;->currentScale:F

    return v0
.end method

.method public increaseScale()V
    .locals 2

    .prologue
    .line 39
    iget v0, p0, Lcom/google/vr/inputcompanion/ControllerSizeAdjuster;->currentScale:F

    const v1, 0x3c23d70a    # 0.01f

    add-float/2addr v0, v1

    const v1, 0x3f933333    # 1.15f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/google/vr/inputcompanion/ControllerSizeAdjuster;->currentScale:F

    .line 40
    invoke-direct {p0}, Lcom/google/vr/inputcompanion/ControllerSizeAdjuster;->updateView()V

    .line 41
    return-void
.end method

.method public load()V
    .locals 3

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/vr/inputcompanion/ControllerSizeAdjuster;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "controller_scale"

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/google/vr/inputcompanion/ControllerSizeAdjuster;->currentScale:F

    .line 54
    invoke-direct {p0}, Lcom/google/vr/inputcompanion/ControllerSizeAdjuster;->updateView()V

    .line 55
    return-void
.end method

.method public save()V
    .locals 3

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/vr/inputcompanion/ControllerSizeAdjuster;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "controller_scale"

    iget v2, p0, Lcom/google/vr/inputcompanion/ControllerSizeAdjuster;->currentScale:F

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 50
    return-void
.end method
