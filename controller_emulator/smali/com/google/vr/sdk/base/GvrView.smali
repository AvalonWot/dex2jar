.class public Lcom/google/vr/sdk/base/GvrView;
.super Landroid/widget/FrameLayout;
.source "GvrView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/sdk/base/GvrView$StereoRenderer;,
        Lcom/google/vr/sdk/base/GvrView$Renderer;
    }
.end annotation


# instance fields
.field private cardboardViewApi:Lcom/google/vr/sdk/base/CardboardViewApi;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 238
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 239
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/base/GvrView;->init(Landroid/content/Context;)V

    .line 240
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 251
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 252
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/base/GvrView;->init(Landroid/content/Context;)V

    .line 253
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 810
    invoke-virtual {p0}, Lcom/google/vr/sdk/base/GvrView;->isInEditMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 828
    :goto_0
    return-void

    .line 816
    :cond_0
    invoke-static {p1}, Lcom/google/vr/cardboard/ContextUtils;->canGetActivity(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 817
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "An Activity Context is required for VR functionality."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 820
    :cond_1
    invoke-static {p1}, Lcom/google/vr/sdk/base/ImplementationSelector;->createCardboardViewApi(Landroid/content/Context;)Lcom/google/vr/sdk/base/CardboardViewApi;

    move-result-object v1

    iput-object v1, p0, Lcom/google/vr/sdk/base/GvrView;->cardboardViewApi:Lcom/google/vr/sdk/base/CardboardViewApi;

    .line 821
    iget-object v1, p0, Lcom/google/vr/sdk/base/GvrView;->cardboardViewApi:Lcom/google/vr/sdk/base/CardboardViewApi;

    invoke-interface {v1}, Lcom/google/vr/sdk/base/CardboardViewApi;->getRootView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/google/vr/sdk/base/GvrView;->addView(Landroid/view/View;I)V

    .line 825
    iget-object v1, p0, Lcom/google/vr/sdk/base/GvrView;->cardboardViewApi:Lcom/google/vr/sdk/base/CardboardViewApi;

    invoke-interface {v1}, Lcom/google/vr/sdk/base/CardboardViewApi;->getGvrSurfaceView()Lcom/google/vr/ndk/base/GvrSurfaceView;

    move-result-object v0

    .line 826
    .local v0, "gvrSurfaceView":Lcom/google/vr/ndk/base/GvrSurfaceView;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/vr/ndk/base/GvrSurfaceView;->setEGLContextClientVersion(I)V

    .line 827
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/vr/ndk/base/GvrSurfaceView;->setPreserveEGLContextOnPause(Z)V

    goto :goto_0
.end method


# virtual methods
.method public enableCardboardTriggerEmulation()V
    .locals 1

    .prologue
    .line 767
    iget-object v0, p0, Lcom/google/vr/sdk/base/GvrView;->cardboardViewApi:Lcom/google/vr/sdk/base/CardboardViewApi;

    invoke-interface {v0}, Lcom/google/vr/sdk/base/CardboardViewApi;->enableCardboardTriggerEmulation()V

    .line 768
    return-void
.end method

.method public getAsyncReprojectionEnabled()Z
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Lcom/google/vr/sdk/base/GvrView;->cardboardViewApi:Lcom/google/vr/sdk/base/CardboardViewApi;

    invoke-interface {v0}, Lcom/google/vr/sdk/base/CardboardViewApi;->getAsyncReprojectionEnabled()Z

    move-result v0

    return v0
.end method

.method public getCurrentEyeParams(Lcom/google/vr/sdk/base/HeadTransform;Lcom/google/vr/sdk/base/Eye;Lcom/google/vr/sdk/base/Eye;Lcom/google/vr/sdk/base/Eye;Lcom/google/vr/sdk/base/Eye;Lcom/google/vr/sdk/base/Eye;)V
    .locals 7
    .param p1, "head"    # Lcom/google/vr/sdk/base/HeadTransform;
    .param p2, "leftEye"    # Lcom/google/vr/sdk/base/Eye;
    .param p3, "rightEye"    # Lcom/google/vr/sdk/base/Eye;
    .param p4, "monocular"    # Lcom/google/vr/sdk/base/Eye;
    .param p5, "leftEyeNoDistortionCorrection"    # Lcom/google/vr/sdk/base/Eye;
    .param p6, "rightEyeNoDistortionCorrection"    # Lcom/google/vr/sdk/base/Eye;

    .prologue
    .line 313
    iget-object v0, p0, Lcom/google/vr/sdk/base/GvrView;->cardboardViewApi:Lcom/google/vr/sdk/base/CardboardViewApi;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/google/vr/sdk/base/CardboardViewApi;->getCurrentEyeParams(Lcom/google/vr/sdk/base/HeadTransform;Lcom/google/vr/sdk/base/Eye;Lcom/google/vr/sdk/base/Eye;Lcom/google/vr/sdk/base/Eye;Lcom/google/vr/sdk/base/Eye;Lcom/google/vr/sdk/base/Eye;)V

    .line 316
    return-void
.end method

.method public getDistortionCorrectionEnabled()Z
    .locals 1

    .prologue
    .line 601
    iget-object v0, p0, Lcom/google/vr/sdk/base/GvrView;->cardboardViewApi:Lcom/google/vr/sdk/base/CardboardViewApi;

    invoke-interface {v0}, Lcom/google/vr/sdk/base/CardboardViewApi;->getDistortionCorrectionEnabled()Z

    move-result v0

    return v0
.end method

.method public getGvrViewerParams()Lcom/google/vr/sdk/base/GvrViewerParams;
    .locals 1

    .prologue
    .line 543
    iget-object v0, p0, Lcom/google/vr/sdk/base/GvrView;->cardboardViewApi:Lcom/google/vr/sdk/base/CardboardViewApi;

    invoke-interface {v0}, Lcom/google/vr/sdk/base/CardboardViewApi;->getGvrViewerParams()Lcom/google/vr/sdk/base/GvrViewerParams;

    move-result-object v0

    return-object v0
.end method

.method public getHeadMountedDisplay()Lcom/google/vr/sdk/base/HeadMountedDisplay;
    .locals 1

    .prologue
    .line 432
    iget-object v0, p0, Lcom/google/vr/sdk/base/GvrView;->cardboardViewApi:Lcom/google/vr/sdk/base/CardboardViewApi;

    invoke-interface {v0}, Lcom/google/vr/sdk/base/CardboardViewApi;->getHeadMountedDisplay()Lcom/google/vr/sdk/base/HeadMountedDisplay;

    move-result-object v0

    return-object v0
.end method

.method public getInterpupillaryDistance()F
    .locals 1

    .prologue
    .line 581
    iget-object v0, p0, Lcom/google/vr/sdk/base/GvrView;->cardboardViewApi:Lcom/google/vr/sdk/base/CardboardViewApi;

    invoke-interface {v0}, Lcom/google/vr/sdk/base/CardboardViewApi;->getInterpupillaryDistance()F

    move-result v0

    return v0
.end method

.method public getNeckModelFactor()F
    .locals 1

    .prologue
    .line 458
    iget-object v0, p0, Lcom/google/vr/sdk/base/GvrView;->cardboardViewApi:Lcom/google/vr/sdk/base/CardboardViewApi;

    invoke-interface {v0}, Lcom/google/vr/sdk/base/CardboardViewApi;->getNeckModelFactor()F

    move-result v0

    return v0
.end method

.method public getScreenParams()Lcom/google/vr/sdk/base/ScreenParams;
    .locals 1

    .prologue
    .line 571
    iget-object v0, p0, Lcom/google/vr/sdk/base/GvrView;->cardboardViewApi:Lcom/google/vr/sdk/base/CardboardViewApi;

    invoke-interface {v0}, Lcom/google/vr/sdk/base/CardboardViewApi;->getScreenParams()Lcom/google/vr/sdk/base/ScreenParams;

    move-result-object v0

    return-object v0
.end method

.method public getStereoModeEnabled()Z
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Lcom/google/vr/sdk/base/GvrView;->cardboardViewApi:Lcom/google/vr/sdk/base/CardboardViewApi;

    invoke-interface {v0}, Lcom/google/vr/sdk/base/CardboardViewApi;->getStereoModeEnabled()Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 690
    iget-object v0, p0, Lcom/google/vr/sdk/base/GvrView;->cardboardViewApi:Lcom/google/vr/sdk/base/CardboardViewApi;

    invoke-interface {v0}, Lcom/google/vr/sdk/base/CardboardViewApi;->onPause()V

    .line 691
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 683
    iget-object v0, p0, Lcom/google/vr/sdk/base/GvrView;->cardboardViewApi:Lcom/google/vr/sdk/base/CardboardViewApi;

    invoke-interface {v0}, Lcom/google/vr/sdk/base/CardboardViewApi;->onResume()V

    .line 684
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 710
    iget-object v0, p0, Lcom/google/vr/sdk/base/GvrView;->cardboardViewApi:Lcom/google/vr/sdk/base/CardboardViewApi;

    invoke-interface {v0, p1}, Lcom/google/vr/sdk/base/CardboardViewApi;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 711
    const/4 v0, 0x1

    .line 713
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public queueEvent(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 778
    iget-object v0, p0, Lcom/google/vr/sdk/base/GvrView;->cardboardViewApi:Lcom/google/vr/sdk/base/CardboardViewApi;

    invoke-interface {v0}, Lcom/google/vr/sdk/base/CardboardViewApi;->getGvrSurfaceView()Lcom/google/vr/ndk/base/GvrSurfaceView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/vr/ndk/base/GvrSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    .line 779
    return-void
.end method

.method public recenterHeadTracker()V
    .locals 1

    .prologue
    .line 514
    iget-object v0, p0, Lcom/google/vr/sdk/base/GvrView;->cardboardViewApi:Lcom/google/vr/sdk/base/CardboardViewApi;

    invoke-interface {v0}, Lcom/google/vr/sdk/base/CardboardViewApi;->recenterHeadTracker()V

    .line 515
    return-void
.end method

.method public resetHeadTracker()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 497
    iget-object v0, p0, Lcom/google/vr/sdk/base/GvrView;->cardboardViewApi:Lcom/google/vr/sdk/base/CardboardViewApi;

    invoke-interface {v0}, Lcom/google/vr/sdk/base/CardboardViewApi;->resetHeadTracker()V

    .line 498
    return-void
.end method

.method public setAsyncReprojectionEnabled(Z)Z
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 363
    iget-object v0, p0, Lcom/google/vr/sdk/base/GvrView;->cardboardViewApi:Lcom/google/vr/sdk/base/CardboardViewApi;

    invoke-interface {v0, p1}, Lcom/google/vr/sdk/base/CardboardViewApi;->setAsyncReprojectionEnabled(Z)Z

    move-result v0

    return v0
.end method

.method public setDepthStencilFormat(I)V
    .locals 1
    .param p1, "format"    # I

    .prologue
    .line 676
    iget-object v0, p0, Lcom/google/vr/sdk/base/GvrView;->cardboardViewApi:Lcom/google/vr/sdk/base/CardboardViewApi;

    invoke-interface {v0, p1}, Lcom/google/vr/sdk/base/CardboardViewApi;->setDepthStencilFormat(I)V

    .line 677
    return-void
.end method

.method public setDistortionCorrectionEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 592
    iget-object v0, p0, Lcom/google/vr/sdk/base/GvrView;->cardboardViewApi:Lcom/google/vr/sdk/base/CardboardViewApi;

    invoke-interface {v0, p1}, Lcom/google/vr/sdk/base/CardboardViewApi;->setDistortionCorrectionEnabled(Z)V

    .line 593
    return-void
.end method

.method public setDistortionCorrectionScale(F)V
    .locals 1
    .param p1, "scale"    # F

    .prologue
    .line 643
    iget-object v0, p0, Lcom/google/vr/sdk/base/GvrView;->cardboardViewApi:Lcom/google/vr/sdk/base/CardboardViewApi;

    invoke-interface {v0, p1}, Lcom/google/vr/sdk/base/CardboardViewApi;->setDistortionCorrectionScale(F)V

    .line 644
    return-void
.end method

.method public setEGLConfigChooser(IIIIII)V
    .locals 7
    .param p1, "redSize"    # I
    .param p2, "greenSize"    # I
    .param p3, "blueSize"    # I
    .param p4, "alphaSize"    # I
    .param p5, "depthSize"    # I
    .param p6, "stencilSize"    # I

    .prologue
    .line 792
    iget-object v0, p0, Lcom/google/vr/sdk/base/GvrView;->cardboardViewApi:Lcom/google/vr/sdk/base/CardboardViewApi;

    .line 793
    invoke-interface {v0}, Lcom/google/vr/sdk/base/CardboardViewApi;->getGvrSurfaceView()Lcom/google/vr/ndk/base/GvrSurfaceView;

    move-result-object v0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    .line 794
    invoke-virtual/range {v0 .. v6}, Lcom/google/vr/ndk/base/GvrSurfaceView;->setEGLConfigChooser(IIIIII)V

    .line 795
    return-void
.end method

.method public setEGLContextClientVersion(I)V
    .locals 1
    .param p1, "version"    # I

    .prologue
    .line 806
    iget-object v0, p0, Lcom/google/vr/sdk/base/GvrView;->cardboardViewApi:Lcom/google/vr/sdk/base/CardboardViewApi;

    invoke-interface {v0}, Lcom/google/vr/sdk/base/CardboardViewApi;->getGvrSurfaceView()Lcom/google/vr/ndk/base/GvrSurfaceView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/vr/ndk/base/GvrSurfaceView;->setEGLContextClientVersion(I)V

    .line 807
    return-void
.end method

.method public setMultisampling(I)V
    .locals 1
    .param p1, "numSamples"    # I

    .prologue
    .line 661
    iget-object v0, p0, Lcom/google/vr/sdk/base/GvrView;->cardboardViewApi:Lcom/google/vr/sdk/base/CardboardViewApi;

    invoke-interface {v0, p1}, Lcom/google/vr/sdk/base/CardboardViewApi;->setMultisampling(I)V

    .line 662
    return-void
.end method

.method public setNeckModelEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 446
    iget-object v0, p0, Lcom/google/vr/sdk/base/GvrView;->cardboardViewApi:Lcom/google/vr/sdk/base/CardboardViewApi;

    invoke-interface {v0, p1}, Lcom/google/vr/sdk/base/CardboardViewApi;->setNeckModelEnabled(Z)V

    .line 447
    return-void
.end method

.method public setNeckModelFactor(F)V
    .locals 1
    .param p1, "factor"    # F

    .prologue
    .line 472
    iget-object v0, p0, Lcom/google/vr/sdk/base/GvrView;->cardboardViewApi:Lcom/google/vr/sdk/base/CardboardViewApi;

    invoke-interface {v0, p1}, Lcom/google/vr/sdk/base/CardboardViewApi;->setNeckModelFactor(F)V

    .line 473
    return-void
.end method

.method public setOnCardboardBackListener(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "listener"    # Ljava/lang/Runnable;

    .prologue
    .line 723
    iget-object v0, p0, Lcom/google/vr/sdk/base/GvrView;->cardboardViewApi:Lcom/google/vr/sdk/base/CardboardViewApi;

    invoke-interface {v0, p1}, Lcom/google/vr/sdk/base/CardboardViewApi;->setOnCardboardBackListener(Ljava/lang/Runnable;)V

    .line 724
    return-void
.end method

.method public setOnCardboardTriggerListener(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "listener"    # Ljava/lang/Runnable;

    .prologue
    .line 737
    iget-object v0, p0, Lcom/google/vr/sdk/base/GvrView;->cardboardViewApi:Lcom/google/vr/sdk/base/CardboardViewApi;

    invoke-interface {v0, p1}, Lcom/google/vr/sdk/base/CardboardViewApi;->setOnCardboardTriggerListener(Ljava/lang/Runnable;)V

    .line 738
    return-void
.end method

.method public setOnCloseButtonListener(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "listener"    # Ljava/lang/Runnable;

    .prologue
    .line 390
    iget-object v0, p0, Lcom/google/vr/sdk/base/GvrView;->cardboardViewApi:Lcom/google/vr/sdk/base/CardboardViewApi;

    invoke-interface {v0, p1}, Lcom/google/vr/sdk/base/CardboardViewApi;->setOnCloseButtonListener(Ljava/lang/Runnable;)V

    .line 391
    return-void
.end method

.method public setOnTransitionViewDoneListener(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "listener"    # Ljava/lang/Runnable;

    .prologue
    .line 420
    iget-object v0, p0, Lcom/google/vr/sdk/base/GvrView;->cardboardViewApi:Lcom/google/vr/sdk/base/CardboardViewApi;

    invoke-interface {v0, p1}, Lcom/google/vr/sdk/base/CardboardViewApi;->setOnTransitionViewDoneListener(Ljava/lang/Runnable;)V

    .line 421
    return-void
.end method

.method public setRenderer(Lcom/google/vr/sdk/base/GvrView$Renderer;)V
    .locals 2
    .param p1, "renderer"    # Lcom/google/vr/sdk/base/GvrView$Renderer;

    .prologue
    .line 264
    if-nez p1, :cond_0

    .line 265
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Renderer must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 267
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/base/GvrView;->cardboardViewApi:Lcom/google/vr/sdk/base/CardboardViewApi;

    invoke-interface {v0, p1}, Lcom/google/vr/sdk/base/CardboardViewApi;->setRenderer(Lcom/google/vr/sdk/base/GvrView$Renderer;)V

    .line 268
    return-void
.end method

.method public setRenderer(Lcom/google/vr/sdk/base/GvrView$StereoRenderer;)V
    .locals 2
    .param p1, "renderer"    # Lcom/google/vr/sdk/base/GvrView$StereoRenderer;

    .prologue
    .line 279
    if-nez p1, :cond_0

    .line 280
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "StereoRenderer must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 282
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/base/GvrView;->cardboardViewApi:Lcom/google/vr/sdk/base/CardboardViewApi;

    invoke-interface {v0, p1}, Lcom/google/vr/sdk/base/CardboardViewApi;->setRenderer(Lcom/google/vr/sdk/base/GvrView$StereoRenderer;)V

    .line 283
    return-void
.end method

.method public setStereoModeEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 336
    iget-object v0, p0, Lcom/google/vr/sdk/base/GvrView;->cardboardViewApi:Lcom/google/vr/sdk/base/CardboardViewApi;

    invoke-interface {v0, p1}, Lcom/google/vr/sdk/base/CardboardViewApi;->setStereoModeEnabled(Z)V

    .line 337
    return-void
.end method

.method public setTransitionViewEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 403
    iget-object v0, p0, Lcom/google/vr/sdk/base/GvrView;->cardboardViewApi:Lcom/google/vr/sdk/base/CardboardViewApi;

    invoke-interface {v0, p1}, Lcom/google/vr/sdk/base/CardboardViewApi;->setTransitionViewEnabled(Z)V

    .line 404
    return-void
.end method

.method public shutdown()V
    .locals 1

    .prologue
    .line 704
    iget-object v0, p0, Lcom/google/vr/sdk/base/GvrView;->cardboardViewApi:Lcom/google/vr/sdk/base/CardboardViewApi;

    invoke-interface {v0}, Lcom/google/vr/sdk/base/CardboardViewApi;->shutdown()V

    .line 705
    return-void
.end method

.method public undistortTexture(I)V
    .locals 1
    .param p1, "inputTexture"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 621
    iget-object v0, p0, Lcom/google/vr/sdk/base/GvrView;->cardboardViewApi:Lcom/google/vr/sdk/base/CardboardViewApi;

    invoke-interface {v0, p1}, Lcom/google/vr/sdk/base/CardboardViewApi;->undistortTexture(I)V

    .line 622
    return-void
.end method

.method public updateGvrViewerParams(Lcom/google/vr/sdk/base/GvrViewerParams;)V
    .locals 1
    .param p1, "gvrViewerParams"    # Lcom/google/vr/sdk/base/GvrViewerParams;

    .prologue
    .line 526
    iget-object v0, p0, Lcom/google/vr/sdk/base/GvrView;->cardboardViewApi:Lcom/google/vr/sdk/base/CardboardViewApi;

    invoke-interface {v0, p1}, Lcom/google/vr/sdk/base/CardboardViewApi;->updateGvrViewerParams(Lcom/google/vr/sdk/base/GvrViewerParams;)V

    .line 527
    return-void
.end method

.method public updateScreenParams(Lcom/google/vr/sdk/base/ScreenParams;)V
    .locals 1
    .param p1, "screenParams"    # Lcom/google/vr/sdk/base/ScreenParams;

    .prologue
    .line 556
    iget-object v0, p0, Lcom/google/vr/sdk/base/GvrView;->cardboardViewApi:Lcom/google/vr/sdk/base/CardboardViewApi;

    invoke-interface {v0, p1}, Lcom/google/vr/sdk/base/CardboardViewApi;->updateScreenParams(Lcom/google/vr/sdk/base/ScreenParams;)V

    .line 557
    return-void
.end method
