.class Lcom/google/vr/ndk/base/GvrSurfaceView$SimpleEGLConfigChooser;
.super Lcom/google/vr/ndk/base/GvrSurfaceView$ComponentSizeChooser;
.source "GvrSurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/ndk/base/GvrSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SimpleEGLConfigChooser"
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/vr/ndk/base/GvrSurfaceView;Z)V
    .locals 8
    .param p2, "withDepthBuffer"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v5, 0x0

    .line 979
    if-eqz p2, :cond_0

    const/16 v6, 0x10

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move v4, v2

    move v7, v5

    invoke-direct/range {v0 .. v7}, Lcom/google/vr/ndk/base/GvrSurfaceView$ComponentSizeChooser;-><init>(Lcom/google/vr/ndk/base/GvrSurfaceView;IIIIII)V

    .line 980
    return-void

    :cond_0
    move v6, v5

    .line 979
    goto :goto_0
.end method
