.class public interface abstract Lcom/google/vr/sdk/base/CardboardViewApi;
.super Ljava/lang/Object;
.source "CardboardViewApi.java"


# virtual methods
.method public abstract enableCardboardTriggerEmulation()V
.end method

.method public abstract getAsyncReprojectionEnabled()Z
.end method

.method public abstract getCurrentEyeParams(Lcom/google/vr/sdk/base/HeadTransform;Lcom/google/vr/sdk/base/Eye;Lcom/google/vr/sdk/base/Eye;Lcom/google/vr/sdk/base/Eye;Lcom/google/vr/sdk/base/Eye;Lcom/google/vr/sdk/base/Eye;)V
.end method

.method public abstract getDistortionCorrectionEnabled()Z
.end method

.method public abstract getGvrSurfaceView()Lcom/google/vr/ndk/base/GvrSurfaceView;
.end method

.method public abstract getGvrViewerParams()Lcom/google/vr/sdk/base/GvrViewerParams;
.end method

.method public abstract getHeadMountedDisplay()Lcom/google/vr/sdk/base/HeadMountedDisplay;
.end method

.method public abstract getInterpupillaryDistance()F
.end method

.method public abstract getNeckModelFactor()F
.end method

.method public abstract getRootView()Landroid/view/View;
.end method

.method public abstract getScreenParams()Lcom/google/vr/sdk/base/ScreenParams;
.end method

.method public abstract getStereoModeEnabled()Z
.end method

.method public abstract onPause()V
.end method

.method public abstract onResume()V
.end method

.method public abstract onTouchEvent(Landroid/view/MotionEvent;)Z
.end method

.method public abstract recenterHeadTracker()V
.end method

.method public abstract resetHeadTracker()V
.end method

.method public abstract setAsyncReprojectionEnabled(Z)Z
.end method

.method public abstract setDepthStencilFormat(I)V
.end method

.method public abstract setDistortionCorrectionEnabled(Z)V
.end method

.method public abstract setDistortionCorrectionScale(F)V
.end method

.method public abstract setMultisampling(I)V
.end method

.method public abstract setNeckModelEnabled(Z)V
.end method

.method public abstract setNeckModelFactor(F)V
.end method

.method public abstract setOnCardboardBackListener(Ljava/lang/Runnable;)V
.end method

.method public abstract setOnCardboardTriggerListener(Ljava/lang/Runnable;)V
.end method

.method public abstract setOnCloseButtonListener(Ljava/lang/Runnable;)V
.end method

.method public abstract setOnTransitionViewDoneListener(Ljava/lang/Runnable;)V
.end method

.method public abstract setRenderer(Lcom/google/vr/sdk/base/GvrView$Renderer;)V
.end method

.method public abstract setRenderer(Lcom/google/vr/sdk/base/GvrView$StereoRenderer;)V
.end method

.method public abstract setStereoModeEnabled(Z)V
.end method

.method public abstract setTransitionViewEnabled(Z)V
.end method

.method public abstract shutdown()V
.end method

.method public abstract undistortTexture(I)V
.end method

.method public abstract updateGvrViewerParams(Lcom/google/vr/sdk/base/GvrViewerParams;)V
.end method

.method public abstract updateScreenParams(Lcom/google/vr/sdk/base/ScreenParams;)V
.end method
