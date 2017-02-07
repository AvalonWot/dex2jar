.class public Lcom/google/vr/cardboard/TransitionView;
.super Landroid/widget/FrameLayout;
.source "TransitionView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/cardboard/TransitionView$TransitionListener;
    }
.end annotation


# static fields
.field public static final ALREADY_LANDSCAPE_LEFT_TRANSITION_DELAY_MS:I = 0x7d0

.field private static final LANDSCAPE_TOLERANCE_DEGREES:I = 0x5

.field private static final PORTRAIT_TOLERANCE_DEGREES:I = 0x2d

.field public static final TRANSITION_ANIMATION_DURATION_MS:I = 0x1f4

.field public static final TRANSITION_BACKGROUND_COLOR:I = -0xbaa59c

.field private static final VIEW_CORRECTION_ROTATION_DEGREES:I = 0x5a


# instance fields
.field private backButton:Landroid/widget/ImageButton;

.field private backButtonRunnable:Ljava/lang/Runnable;

.field private orientation:I

.field private orientationEventListener:Landroid/view/OrientationEventListener;

.field private rotationChecked:Z

.field private transitionListener:Lcom/google/vr/cardboard/TransitionView$TransitionListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 91
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 69
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/vr/cardboard/TransitionView;->orientation:I

    .line 92
    invoke-virtual {p0, p0}, Lcom/google/vr/cardboard/TransitionView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 93
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const v1, -0xbaa59c

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/google/vr/cardboard/TransitionView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 94
    sget v0, Lcom/google/vr/cardboard/R$layout;->transition_view:I

    invoke-direct {p0, v0}, Lcom/google/vr/cardboard/TransitionView;->inflateContentView(I)V

    .line 98
    const/16 v0, 0x8

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 99
    return-void
.end method

.method static synthetic access$000(Lcom/google/vr/cardboard/TransitionView;)Lcom/google/vr/cardboard/TransitionView$TransitionListener;
    .locals 1
    .param p0, "x0"    # Lcom/google/vr/cardboard/TransitionView;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/vr/cardboard/TransitionView;->transitionListener:Lcom/google/vr/cardboard/TransitionView$TransitionListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/vr/cardboard/TransitionView;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/google/vr/cardboard/TransitionView;
    .param p1, "x1"    # Z

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/google/vr/cardboard/TransitionView;->fadeOutAndRemove(Z)V

    return-void
.end method

.method static synthetic access$202(Lcom/google/vr/cardboard/TransitionView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/google/vr/cardboard/TransitionView;
    .param p1, "x1"    # I

    .prologue
    .line 27
    iput p1, p0, Lcom/google/vr/cardboard/TransitionView;->orientation:I

    return p1
.end method

.method static synthetic access$300(Lcom/google/vr/cardboard/TransitionView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/vr/cardboard/TransitionView;

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/google/vr/cardboard/TransitionView;->rotationChecked:Z

    return v0
.end method

.method static synthetic access$400(Lcom/google/vr/cardboard/TransitionView;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/vr/cardboard/TransitionView;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/google/vr/cardboard/TransitionView;->rotateViewIfNeeded()V

    return-void
.end method

.method static synthetic access$500(I)Z
    .locals 1
    .param p0, "x0"    # I

    .prologue
    .line 27
    invoke-static {p0}, Lcom/google/vr/cardboard/TransitionView;->isLandscapeLeft(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(I)Z
    .locals 1
    .param p0, "x0"    # I

    .prologue
    .line 27
    invoke-static {p0}, Lcom/google/vr/cardboard/TransitionView;->isLandscapeRight(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/google/vr/cardboard/TransitionView;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/google/vr/cardboard/TransitionView;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/vr/cardboard/TransitionView;->backButtonRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method private fadeOutAndRemove(Z)V
    .locals 6
    .param p1, "delay"    # Z

    .prologue
    .line 310
    invoke-direct {p0}, Lcom/google/vr/cardboard/TransitionView;->stopOrientationMonitor()V

    .line 312
    invoke-virtual {p0}, Lcom/google/vr/cardboard/TransitionView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    .line 313
    .local v0, "existingFadeOut":Landroid/view/animation/Animation;
    if-eqz v0, :cond_2

    .line 316
    if-nez p1, :cond_0

    invoke-virtual {v0}, Landroid/view/animation/Animation;->getStartOffset()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 353
    :cond_0
    :goto_0
    return-void

    .line 321
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 322
    invoke-virtual {p0}, Lcom/google/vr/cardboard/TransitionView;->clearAnimation()V

    .line 325
    :cond_2
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 326
    .local v1, "newFadeOut":Landroid/view/animation/Animation;
    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 327
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 328
    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 329
    if-eqz p1, :cond_3

    .line 330
    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 333
    :cond_3
    new-instance v2, Lcom/google/vr/cardboard/TransitionView$4;

    invoke-direct {v2, p0}, Lcom/google/vr/cardboard/TransitionView$4;-><init>(Lcom/google/vr/cardboard/TransitionView;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 352
    invoke-virtual {p0, v1}, Lcom/google/vr/cardboard/TransitionView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method private inflateContentView(I)V
    .locals 4
    .param p1, "layoutId"    # I

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/google/vr/cardboard/TransitionView;->removeAllViews()V

    .line 104
    invoke-virtual {p0}, Lcom/google/vr/cardboard/TransitionView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, p1, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 105
    sget v2, Lcom/google/vr/cardboard/R$id;->transition_switch_action:I

    invoke-virtual {p0, v2}, Lcom/google/vr/cardboard/TransitionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 106
    .local v0, "switchActionView":Landroid/view/View;
    new-instance v2, Lcom/google/vr/cardboard/TransitionView$1;

    invoke-direct {v2, p0}, Lcom/google/vr/cardboard/TransitionView$1;-><init>(Lcom/google/vr/cardboard/TransitionView;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    sget v2, Lcom/google/vr/cardboard/R$id;->transition_icon:I

    invoke-virtual {p0, v2}, Lcom/google/vr/cardboard/TransitionView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 119
    .local v1, "transitionIcon":Landroid/widget/ImageView;
    new-instance v2, Lcom/google/vr/cardboard/TransitionView$2;

    invoke-direct {v2, p0}, Lcom/google/vr/cardboard/TransitionView$2;-><init>(Lcom/google/vr/cardboard/TransitionView;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    invoke-direct {p0}, Lcom/google/vr/cardboard/TransitionView;->updateBackButtonVisibility()V

    .line 131
    invoke-virtual {p0}, Lcom/google/vr/cardboard/TransitionView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 132
    sget v2, Lcom/google/vr/cardboard/R$id;->transition_bottom_frame:I

    invoke-virtual {p0, v2}, Lcom/google/vr/cardboard/TransitionView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 134
    :cond_0
    return-void
.end method

.method private static isLandscapeLeft(I)Z
    .locals 2
    .param p0, "orientationDegrees"    # I

    .prologue
    .line 396
    add-int/lit16 v0, p0, -0x10e

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isLandscapeRight(I)Z
    .locals 2
    .param p0, "orientationDegrees"    # I

    .prologue
    .line 400
    add-int/lit8 v0, p0, -0x5a

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isPortrait(I)Z
    .locals 2
    .param p0, "orientationDegrees"    # I

    .prologue
    .line 392
    add-int/lit16 v0, p0, -0xb4

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/16 v1, 0x87

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private rotateViewIfNeeded()V
    .locals 10

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 240
    invoke-virtual {p0}, Lcom/google/vr/cardboard/TransitionView;->getWidth()I

    move-result v8

    if-lez v8, :cond_0

    invoke-virtual {p0}, Lcom/google/vr/cardboard/TransitionView;->getHeight()I

    move-result v8

    if-lez v8, :cond_0

    iget v8, p0, Lcom/google/vr/cardboard/TransitionView;->orientation:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_0

    iget-object v8, p0, Lcom/google/vr/cardboard/TransitionView;->orientationEventListener:Landroid/view/OrientationEventListener;

    if-eqz v8, :cond_0

    iget-boolean v8, p0, Lcom/google/vr/cardboard/TransitionView;->rotationChecked:Z

    if-eqz v8, :cond_1

    .line 306
    :cond_0
    :goto_0
    return-void

    .line 246
    :cond_1
    invoke-virtual {p0}, Lcom/google/vr/cardboard/TransitionView;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Lcom/google/vr/cardboard/TransitionView;->getHeight()I

    move-result v9

    if-ge v8, v9, :cond_4

    move v5, v6

    .line 247
    .local v5, "viewPortrait":Z
    :goto_1
    iget v8, p0, Lcom/google/vr/cardboard/TransitionView;->orientation:I

    invoke-static {v8}, Lcom/google/vr/cardboard/TransitionView;->isPortrait(I)Z

    move-result v0

    .line 251
    .local v0, "devicePortrait":Z
    if-eq v5, v0, :cond_3

    .line 252
    sget v8, Lcom/google/vr/cardboard/R$id;->transition_frame:I

    invoke-virtual {p0, v8}, Lcom/google/vr/cardboard/TransitionView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 253
    .local v1, "frame":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 254
    .local v3, "frameWidth":I
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 259
    .local v2, "frameHeight":I
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x11

    if-lt v8, v9, :cond_2

    .line 260
    invoke-virtual {p0}, Lcom/google/vr/cardboard/TransitionView;->getLayoutDirection()I

    move-result v8

    if-ne v8, v6, :cond_2

    .line 261
    int-to-float v8, v2

    invoke-virtual {v1}, Landroid/view/View;->getPivotX()F

    move-result v9

    sub-float/2addr v8, v9

    invoke-virtual {v1, v8}, Landroid/view/View;->setPivotX(F)V

    .line 262
    int-to-float v8, v3

    invoke-virtual {v1}, Landroid/view/View;->getPivotY()F

    move-result v9

    sub-float/2addr v8, v9

    invoke-virtual {v1, v8}, Landroid/view/View;->setPivotY(F)V

    .line 268
    :cond_2
    if-eqz v5, :cond_5

    .line 271
    const/high16 v8, 0x42b40000    # 90.0f

    invoke-virtual {v1, v8}, Landroid/view/View;->setRotation(F)V

    .line 278
    :goto_2
    sub-int v8, v3, v2

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    invoke-virtual {v1, v8}, Landroid/view/View;->setTranslationX(F)V

    .line 279
    sub-int v8, v2, v3

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    invoke-virtual {v1, v8}, Landroid/view/View;->setTranslationY(F)V

    .line 280
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 281
    .local v4, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    iput v3, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 282
    iput v2, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 284
    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 287
    .end local v1    # "frame":Landroid/view/View;
    .end local v2    # "frameHeight":I
    .end local v3    # "frameWidth":I
    .end local v4    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    :cond_3
    if-nez v0, :cond_6

    .line 292
    sget v7, Lcom/google/vr/cardboard/R$id;->transition_bottom_frame:I

    invoke-virtual {p0, v7}, Lcom/google/vr/cardboard/TransitionView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 299
    :goto_3
    iput-boolean v6, p0, Lcom/google/vr/cardboard/TransitionView;->rotationChecked:Z

    .line 303
    iget v7, p0, Lcom/google/vr/cardboard/TransitionView;->orientation:I

    invoke-static {v7}, Lcom/google/vr/cardboard/TransitionView;->isLandscapeLeft(I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 304
    invoke-direct {p0, v6}, Lcom/google/vr/cardboard/TransitionView;->fadeOutAndRemove(Z)V

    goto :goto_0

    .end local v0    # "devicePortrait":Z
    .end local v5    # "viewPortrait":Z
    :cond_4
    move v5, v7

    .line 246
    goto :goto_1

    .line 275
    .restart local v0    # "devicePortrait":Z
    .restart local v1    # "frame":Landroid/view/View;
    .restart local v2    # "frameHeight":I
    .restart local v3    # "frameWidth":I
    .restart local v5    # "viewPortrait":Z
    :cond_5
    const/high16 v8, -0x3d4c0000    # -90.0f

    invoke-virtual {v1, v8}, Landroid/view/View;->setRotation(F)V

    goto :goto_2

    .line 294
    .end local v1    # "frame":Landroid/view/View;
    .end local v2    # "frameHeight":I
    .end local v3    # "frameWidth":I
    :cond_6
    sget v8, Lcom/google/vr/cardboard/R$id;->transition_bottom_frame:I

    invoke-virtual {p0, v8}, Lcom/google/vr/cardboard/TransitionView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3
.end method

.method private startOrientationMonitor()V
    .locals 2

    .prologue
    .line 182
    iget-object v0, p0, Lcom/google/vr/cardboard/TransitionView;->orientationEventListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_0

    .line 206
    :goto_0
    return-void

    .line 186
    :cond_0
    new-instance v0, Lcom/google/vr/cardboard/TransitionView$3;

    invoke-virtual {p0}, Lcom/google/vr/cardboard/TransitionView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/vr/cardboard/TransitionView$3;-><init>(Lcom/google/vr/cardboard/TransitionView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/vr/cardboard/TransitionView;->orientationEventListener:Landroid/view/OrientationEventListener;

    .line 205
    iget-object v0, p0, Lcom/google/vr/cardboard/TransitionView;->orientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    goto :goto_0
.end method

.method private stopOrientationMonitor()V
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/google/vr/cardboard/TransitionView;->orientationEventListener:Landroid/view/OrientationEventListener;

    if-nez v0, :cond_0

    .line 216
    :goto_0
    return-void

    .line 213
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/vr/cardboard/TransitionView;->orientation:I

    .line 214
    iget-object v0, p0, Lcom/google/vr/cardboard/TransitionView;->orientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    .line 215
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/vr/cardboard/TransitionView;->orientationEventListener:Landroid/view/OrientationEventListener;

    goto :goto_0
.end method

.method private updateBackButtonVisibility()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 367
    sget v1, Lcom/google/vr/cardboard/R$id;->transition_frame:I

    invoke-virtual {p0, v1}, Lcom/google/vr/cardboard/TransitionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 368
    .local v0, "frame":Landroid/view/ViewGroup;
    sget v1, Lcom/google/vr/cardboard/R$id;->back_button:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/google/vr/cardboard/TransitionView;->backButton:Landroid/widget/ImageButton;

    .line 370
    iget-object v1, p0, Lcom/google/vr/cardboard/TransitionView;->backButtonRunnable:Ljava/lang/Runnable;

    if-nez v1, :cond_0

    .line 371
    iget-object v1, p0, Lcom/google/vr/cardboard/TransitionView;->backButton:Landroid/widget/ImageButton;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 372
    iget-object v1, p0, Lcom/google/vr/cardboard/TransitionView;->backButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 373
    iget-object v1, p0, Lcom/google/vr/cardboard/TransitionView;->backButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 385
    :goto_0
    return-void

    .line 375
    :cond_0
    iget-object v1, p0, Lcom/google/vr/cardboard/TransitionView;->backButton:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/google/vr/cardboard/TransitionView;->backButtonRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 376
    iget-object v1, p0, Lcom/google/vr/cardboard/TransitionView;->backButton:Landroid/widget/ImageButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 377
    iget-object v1, p0, Lcom/google/vr/cardboard/TransitionView;->backButton:Landroid/widget/ImageButton;

    new-instance v2, Lcom/google/vr/cardboard/TransitionView$5;

    invoke-direct {v2, p0}, Lcom/google/vr/cardboard/TransitionView$5;-><init>(Lcom/google/vr/cardboard/TransitionView;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 220
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 221
    iget-object v0, p0, Lcom/google/vr/cardboard/TransitionView;->orientationEventListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/google/vr/cardboard/TransitionView;->orientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    .line 225
    :cond_0
    invoke-direct {p0}, Lcom/google/vr/cardboard/TransitionView;->rotateViewIfNeeded()V

    .line 226
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/google/vr/cardboard/TransitionView;->orientationEventListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_0

    .line 231
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/vr/cardboard/TransitionView;->orientation:I

    .line 232
    iget-object v0, p0, Lcom/google/vr/cardboard/TransitionView;->orientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    .line 234
    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 235
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 359
    const/4 v0, 0x1

    return v0
.end method

.method public setBackButtonListener(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 156
    iput-object p1, p0, Lcom/google/vr/cardboard/TransitionView;->backButtonRunnable:Ljava/lang/Runnable;

    .line 157
    invoke-direct {p0}, Lcom/google/vr/cardboard/TransitionView;->updateBackButtonVisibility()V

    .line 158
    return-void
.end method

.method public setTransitionListener(Lcom/google/vr/cardboard/TransitionView$TransitionListener;)V
    .locals 0
    .param p1, "transitionListener"    # Lcom/google/vr/cardboard/TransitionView$TransitionListener;

    .prologue
    .line 178
    iput-object p1, p0, Lcom/google/vr/cardboard/TransitionView;->transitionListener:Lcom/google/vr/cardboard/TransitionView$TransitionListener;

    .line 179
    return-void
.end method

.method public setViewerName(Ljava/lang/String;)V
    .locals 5
    .param p1, "viewerName"    # Ljava/lang/String;

    .prologue
    .line 140
    sget v1, Lcom/google/vr/cardboard/R$id;->transition_text:I

    invoke-virtual {p0, v1}, Lcom/google/vr/cardboard/TransitionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 141
    .local v0, "transitionText":Landroid/widget/TextView;
    if-eqz p1, :cond_0

    .line 142
    invoke-virtual {p0}, Lcom/google/vr/cardboard/TransitionView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/google/vr/cardboard/R$string;->place_your_viewer_into_viewer_format:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    :goto_0
    return-void

    .line 145
    :cond_0
    invoke-virtual {p0}, Lcom/google/vr/cardboard/TransitionView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/google/vr/cardboard/R$string;->place_your_phone_into_cardboard:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 162
    invoke-virtual {p0}, Lcom/google/vr/cardboard/TransitionView;->getVisibility()I

    move-result v0

    .line 163
    .local v0, "previousVisibility":I
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 165
    if-eq v0, p1, :cond_0

    .line 166
    if-nez p1, :cond_1

    .line 167
    invoke-direct {p0}, Lcom/google/vr/cardboard/TransitionView;->startOrientationMonitor()V

    .line 172
    :cond_0
    :goto_0
    return-void

    .line 169
    :cond_1
    invoke-direct {p0}, Lcom/google/vr/cardboard/TransitionView;->stopOrientationMonitor()V

    goto :goto_0
.end method
