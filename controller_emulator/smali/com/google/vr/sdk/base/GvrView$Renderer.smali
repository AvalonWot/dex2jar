.class public interface abstract Lcom/google/vr/sdk/base/GvrView$Renderer;
.super Ljava/lang/Object;
.source "GvrView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/sdk/base/GvrView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Renderer"
.end annotation


# virtual methods
.method public abstract onDrawFrame(Lcom/google/vr/sdk/base/HeadTransform;Lcom/google/vr/sdk/base/Eye;Lcom/google/vr/sdk/base/Eye;)V
    .annotation build Lcom/google/vr/cardboard/UsedByNative;
    .end annotation
.end method

.method public abstract onFinishFrame(Lcom/google/vr/sdk/base/Viewport;)V
    .annotation build Lcom/google/vr/cardboard/UsedByNative;
    .end annotation
.end method

.method public abstract onRendererShutdown()V
.end method

.method public abstract onSurfaceChanged(II)V
.end method

.method public abstract onSurfaceCreated(Ljavax/microedition/khronos/egl/EGLConfig;)V
.end method
