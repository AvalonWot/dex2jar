.class public Lcom/google/vr/sdk/base/CardboardViewNativeImpl;
.super Ljava/lang/Object;
.source "CardboardViewNativeImpl.java"

# interfaces
.implements Lcom/google/vr/cardboard/CardboardGLSurfaceView$DetachListener;
.implements Lcom/google/vr/sdk/base/CardboardViewApi;


# annotations
.annotation build Lcom/google/vr/cardboard/UsedByNative;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/sdk/base/CardboardViewNativeImpl$RendererHelper;,
        Lcom/google/vr/sdk/base/CardboardViewNativeImpl$PresentationListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private volatile cardboardBackListener:Ljava/lang/Runnable;

.field private cardboardTriggerCount:I

.field private volatile cardboardTriggerListener:Ljava/lang/Runnable;

.field private final context:Landroid/content/Context;

.field private volatile distortionCorrectionEnabled:Z

.field private final glSurfaceView:Lcom/google/vr/cardboard/CardboardGLSurfaceView;

.field private final gvrApi:Lcom/google/vr/ndk/base/GvrApi;

.field private final gvrLayout:Lcom/google/vr/ndk/base/GvrLayout;

.field private final hmdManager:Lcom/google/vr/sdk/base/HeadMountedDisplayManager;

.field private nativeCardboardView:J

.field private final rendererHelper:Lcom/google/vr/sdk/base/CardboardViewNativeImpl$RendererHelper;

.field private shutdownLatch:Ljava/util/concurrent/CountDownLatch;

.field private stereoMode:Z

.field private transitionDoneListener:Ljava/lang/Runnable;

.field private final uiLayout:Lcom/google/vr/ndk/base/GvrUiLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const-class v0, Lcom/google/vr/sdk/base/CardboardViewNativeImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/vr/sdk/base/CardboardViewNativeImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x0

    const/4 v6, 0x1

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const/4 v5, 0x0

    iput v5, p0, Lcom/google/vr/sdk/base/CardboardViewNativeImpl;->cardboardTriggerCount:I

    .line 76
    iput-boolean v6, p0, Lcom/google/vr/sdk/base/CardboardViewNativeImpl;->stereoMode:Z

    .line 77
    iput-boolean v6, p0, Lcom/google/vr/sdk/base/CardboardViewNativeImpl;->distortionCorrectionEnabled:Z

    .line 82
    iput-object p1, p0, Lcom/google/vr/sdk/base/CardboardViewNativeImpl;->context:Landroid/content/Context;

    .line 83
    new-instance v5, Lcom/google/vr/sdk/base/HeadMountedDisplayManager;

    invoke-direct {v5, p1}, Lcom/google/vr/sdk/base/HeadMountedDisplayManager;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/google/vr/sdk/base/CardboardViewNativeImpl;->hmdManager:Lcom/google/vr/sdk/base/HeadMountedDisplayManager;

    .line 89
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v6, ".NativeProxy"

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 90
    .local v3, "proxyClassName":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 91
    .local v2, "proxyClass":Ljava/lang/Class;
    const-string v5, "PROXY_LIBRARY"

    invoke-virtual {v2, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 92
    .local v4, "proxyLibField":Ljava/lang/reflect/Field;
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    .end local v2    # "proxyClass":Ljava/lang/Class;
    .end local v3    # "proxyClassName":Ljava/lang/String;
    .end local v4    # "proxyLibField":Ljava/lang/reflect/Field;
    .local v1, "nativeLibrary":Ljava/lang/String;
    :goto_0
    sget-object v6, Lcom/google/vr/sdk/base/CardboardViewNativeImpl;->TAG:Ljava/lang/String;

    const-string v7, "Loading native library "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v7, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_1
    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 101
    sget-object v5, Lcom/google/vr/sdk/base/CardboardViewNativeImpl;->TAG:Ljava/lang/String;

    const-string v6, "Native library loaded"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/google/vr/sdk/base/CardboardViewNativeImpl;->nativeSetApplicationState(Ljava/lang/ClassLoader;Landroid/content/Context;)J

    .line 106
    new-instance v5, Lcom/google/vr/cardboard/CardboardGLSurfaceView;

    invoke-direct {v5, p1, p0}, Lcom/google/vr/cardboard/CardboardGLSurfaceView;-><init>(Landroid/content/Context;Lcom/google/vr/cardboard/CardboardGLSurfaceView$DetachListener;)V

    iput-object v5, p0, Lcom/google/vr/sdk/base/CardboardViewNativeImpl;->glSurfaceView:Lcom/google/vr/cardboard/CardboardGLSurfaceView;

    .line 107
    new-instance v5, Lcom/google/vr/ndk/base/GvrLayout;

    invoke-direct {v5, p1}, Lcom/google/vr/ndk/base/GvrLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/google/vr/sdk/base/CardboardViewNativeImpl;->gvrLayout:Lcom/google/vr/ndk/base/GvrLayout;

    .line 108
    iget-object v5, p0, Lcom/google/vr/sdk/base/CardboardViewNativeImpl;->gvrLayout:Lcom/google/vr/ndk/base/GvrLayout;

    iget-object v6, p0, Lcom/google/vr/sdk/base/CardboardViewNativeImpl;->glSurfaceView:Lcom/google/vr/cardboard/CardboardGLSurfaceView;

    invoke-virtual {v5, v6}, Lcom/google/vr/ndk/base/GvrLayout;->setPresentationView(Landroid/view/View;)V

    .line 109
    iget-object v5, p0, Lcom/google/vr/sdk/base/CardboardViewNativeImpl;->gvrLayout:Lcom/google/vr/ndk/base/GvrLayout;

    new-instance v6, Lcom/google/vr/sdk/base/CardboardViewNativeImpl$PresentationListener;

    invoke-direct {v6, p0, v9}, Lcom/google/vr/sdk/base/CardboardViewNativeImpl$PresentationListener;-><init>(Lcom/google/vr/sdk/base/CardboardViewNativeImpl;Lcom/google/vr/sdk/base/CardboardViewNativeImpl$1;)V

    invoke-virtual {v5, v6}, Lcom/google/vr/ndk/base/GvrLayout;->addPresentationListener(Lcom/google/vr/ndk/base/GvrLayout$PresentationListener;)V

    .line 111
    new-instance v5, Lcom/google/vr/sdk/base/CardboardViewNativeImpl$RendererHelper;

    invoke-direct {v5, p0}, Lcom/google/vr/sdk/base/CardboardViewNativeImpl$RendererHelper;-><init>(Lcom/google/vr/sdk/base/CardboardViewNativeImpl;)V

    iput-object v5, p0, Lcom/google/vr/sdk/base/CardboardViewNativeImpl;->rendererHelper:Lcom/google/vr/sdk/base/CardboardViewNativeImpl$RendererHelper;

    .line 112
    iget-object v5, p0, Lcom/google/vr/sdk/base/CardboardViewNativeImpl;->gvrLayout:Lcom/google/vr/ndk/base/GvrLayout;

    invoke-virtual {v5}, Lcom/google/vr/ndk/base/GvrLayout;->getUiLayout()Lcom/google/vr/ndk/base/GvrUiLayout;

    move-result-object v5

    iput-object v5, p0, Lcom/google/vr/sdk/base/CardboardViewNativeImpl;->uiLayout:Lcom/google/vr/ndk/base/GvrUiLayout;

    .line 113
    iget-object v5, p0, Lcom/google/vr/sdk/base/CardboardViewNativeImpl;->gvrLayout:Lcom/google/vr/ndk/base/GvrLayout;

    invoke-virtual {v5}, Lcom/google/vr/ndk/base/GvrLayout;->getGvrApi()Lcom/google/vr/ndk/base/GvrApi;

    move-result-object v5

    iput-object v5, p0, Lcom/google/vr/sdk/base/CardboardViewNativeImpl;->gvrApi:Lcom/google/vr/ndk/base/GvrApi;

    .line 114
    iget-object v5, p0, Lcom/google/vr/sdk/base/CardboardViewNativeImpl;->gvrApi:Lcom/google/vr/ndk/base/GvrApi;

    invoke-virtual {v5}, Lcom/google/vr/ndk/base/GvrApi;->getNativeGvrContext()J

    move-result-wide v6

    invoke-direct {p0, v6, v7}, Lcom/google/vr/sdk/base/CardboardViewNativeImpl;->nativeInit(J)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/google/vr/sdk/base/CardboardViewNativeImpl;->nativeCardboardView:J

    .line 115
    return-void

    .line 94
    .end local v1    # "nativeLibrary":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 95
    .local v0, "e":Ljava/lang/Exception;
    sget-object v5, Lcom/google/vr/sdk/base/CardboardViewNativeImpl;->TAG:Ljava/lang/String;

    const-string v6, "NativeProxy not found"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    const-string v1, "gvr"

    .restart local v1    # "nativeLibrary":Ljava/lang/String;
    goto :goto_0

    .line 99
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1
.end method

.method static synthetic access$100(Lcom/google/vr/sdk/base/CardboardViewNativeImpl;)J
    .locals 2
    .param p0, "x0"    # Lcom/google/vr/sdk/base/CardboardViewNativeImpl;

    .prologue
    .line 54
    iget-wide v0, p0, Lcom/google/vr/sdk/base/CardboardViewNativeImpl;->nativeCardboardView:J

    return-wide v0
.end method

.method static synthetic access$1000(Lcom/google/vr/sdk/base/CardboardViewNativeImpl;J[B)V
    .locals 1
    .param p0, "x0"    # Lcom/google/vr/sdk/base/CardboardViewNativeImpl;
    .param p1, "x1"    # J
    .param p3, "x2"    # [B

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3}, Lcom/google/vr/sdk/base/CardboardViewNativeImpl;->nativeSetGvrViewerParams(J[B)V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/vr/sdk/base/CardboardViewNativeImpl;)Lcom/google/vr/sdk/base/CardboardViewNativeImpl$RendererHelper;
    .locals 1
    .param p0, "x0"    # Lcom/google/vr/sdk/base/CardboardViewNativeImpl;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/vr/sdk/base/CardboardViewNativeImpl;->rendererHelper:Lcom/google/vr/sdk/base/CardboardViewNativeImpl$RendererHelper;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/google/vr/sdk/base/CardboardViewNativeImpl;JIIFFF)V
    .locals 1
    .param p0, "x0"    # Lcom/google/vr/sdk/base/CardboardViewNativeImpl;
    .param p1, "x1"    # J
    .param p3, "x2"    # I
    .param p4, "x3"    # I
    .param p5, "x4"    # F
    .param p6, "x5"    # F
    .param p7, "x6"    # F

    .prologue
    .line 54
    invoke-direct/range {p0 .. p7}, Lcom/google/vr/sdk/base/CardboardViewNativeImpl;->nativeSetScreenParams(JIIFFF)V

    return-void
.end method

.method static synthetic access$1300(Lcom/google/vr/sdk/base/CardboardViewNativeImpl;)Lcom/google/vr/ndk/base/GvrApi;
    .locals 1
    .param p0, "x0"    # Lcom/google/vr/sdk/base/CardboardViewNativeImpl;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/vr/sdk/base/CardboardViewNativeImpl;->gvrApi:Lcom/google/vr/ndk/base/GvrApi;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/google/vr/sdk/base/CardboardViewNativeImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/vr/sdk/base/CardboardViewNativeImpl;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/google/vr/sdk/base/CardboardViewNativeImpl;->reconnectSensors()V

    return-void
.end method

.method static synthetic access$1500(Lcom/google/vr/sdk/base/CardboardViewNativeImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/vr/sdk/base/CardboardViewNativeImpl;

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/google/vr/sdk/base/CardboardViewNativeImpl;->stereoMode:Z

    return v0
.end method

.method static synthetic access$1600(Lcom/google/vr/sdk/base/CardboardViewNativeImpl;JLcom/google/vr/sdk/base/GvrView$Renderer;)V
    .locals 1
    .param p0, "x0"    # Lcom/google/vr/sdk/base/CardboardViewNativeImpl;
    .param p1, "x1"    # J
    .param p3, "x2"    # Lcom/google/vr/sdk/base/GvrView$Renderer;

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3}, Lcom/google/vr/sdk/base/CardboardViewNativeImpl;->nativeSetRenderer(JLcom/google/vr/sdk/base/GvrView$Renderer;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/google/vr/sdk/base/CardboardViewNativeImpl;JLcom/google/vr/sdk/base/GvrView$StereoRenderer;)V
    .locals 1
    .param p0, "x0"    # Lcom/google/vr/sdk/base/CardboardViewNativeImpl;
    .param p1, "x1"    # J
    .param p3, "x2"    # Lcom/google/vr/sdk/base/GvrView$StereoRenderer;

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3}, Lcom/google/vr/sdk/base/CardboardViewNativeImpl;->nativeSetStereoRenderer(JLcom/google/vr/sdk/base/GvrView$StereoRenderer;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/vr/sdk/base/CardboardViewNativeImpl;JI)V
    .locals 1
    .param p0, "x0"    # Lcom/google/vr/sdk/base/CardboardViewNativeImpl;
    .param p1, "x1"    # J
    .param p3, "x2"    # I

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3}, Lcom/google/vr/sdk/base/CardboardViewNativeImpl;->nativeLogEvent(JI)V

    return-void
.end method

.method static synthetic access$2200(Lcom/google/vr/sdk/base/CardboardViewNativeImpl;)Ljava/util/concurrent/CountDownLatch;
    .locals 1
    .param p0, "x0"    # Lcom/google/vr/sdk/base/CardboardViewNativeImpl;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/vr/sdk/base/CardboardViewNativeImpl;->shutdownLatch:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/google/vr/sdk/base/CardboardViewNativeImpl;Ljava/lang/Runnable;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/vr/sdk/base/CardboardViewNativeImpl;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/base/CardboardViewNativeImpl;->queueEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/google/vr/sdk/base/CardboardViewNativeImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/vr/sdk/base/CardboardViewNativeImpl;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/google/vr/sdk/base/CardboardViewNativeImpl;->checkNativeCardboardView()V

    return-void
.end method

.method static synthetic access$2500(Lcom/google/vr/sdk/base/CardboardViewNativeImpl;)Lcom/google/vr/ndk/base/GvrLayout;
    .locals 1
    .param p0, "x0"    # Lcom/google/vr/sdk/base/CardboardViewNativeImpl;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/vr/sdk/base/CardboardViewNativeImpl;->gvrLayout:Lcom/google/vr/ndk/base/GvrLayout;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/google/vr/sdk/base/CardboardViewNativeImpl;JZ)V
    .locals 1
    .param p0, "x0"    # Lcom/google/vr/sdk/base/CardboardViewNativeImpl;
    .param p1, "x1"    # J
    .param p3, "x2"    # Z

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3}, Lcom/google/vr/sdk/base/CardboardViewNativeImpl;->nativeSetStereoModeEnabled(JZ)V

    return-void
.end method

.method static synthetic access$2900(Lcom/google/vr/sdk/base/CardboardViewNativeImpl;JLcom/google/vr/sdk/base/HeadTransform;Lcom/google/vr/sdk/base/Eye;Lcom/google/vr/sdk/base/Eye;Lcom/google/vr/sdk/base/Eye;Lcom/google/vr/sdk/base/Eye;Lcom/google/vr/sdk/base/Eye;)V
    .locals 1
    .param p0, "x0"    # Lcom/google/vr/sdk/base/CardboardViewNativeImpl;
    .param p1, "x1"    # J
    .param p3, "x2"    # Lcom/google/vr/sdk/base/HeadTransform;
    .param p4, "x3"    # Lcom/google/vr/sdk/base/Eye;
    .param p5, "x4"    # Lcom/google/vr/sdk/base/Eye;
    .param p6, "x5"    # Lcom/google/vr/sdk/base/Eye;
    .param p7, "x6"    # Lcom/google/vr/sdk/base/Eye;
    .param p8, "x7"    # Lcom/google/vr/sdk/base/Eye;

    .prologue
    .line 54
    invoke-direct/range {p0 .. p8}, Lcom/google/vr/sdk/base/CardboardViewNativeImpl;->nativeGetCurrentEyeParams(JLcom/google/vr/sdk/base/HeadTransform;Lcom/google/vr/sdk/base/Eye;Lcom/google/vr/sdk/base/Eye;Lcom/google/vr/sdk/base/Eye;Lcom/google/vr/sdk/base/Eye;Lcom/google/vr/sdk/base/Eye;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/vr/sdk/base/CardboardViewNativeImpl;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/google/vr/sdk/base/CardboardViewNativeImpl;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/vr/sdk/base/CardboardViewNativeImpl;->transitionDoneListener:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$3000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/google/vr/sdk/base/CardboardViewNativeImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/google/vr/sdk/base/CardboardViewNativeImpl;J)V
    .locals 1
    .param p0, "x0"    # Lcom/google/vr/sdk/base/CardboardViewNativeImpl;
    .param p1, "x1"    # J

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/google/vr/sdk/base/CardboardViewNativeImpl;->nativeOnDrawFrame(J)V

    return-void
.end method

.method static synthetic access$3200(Lcom/google/vr/sdk/base/CardboardViewNativeImpl;JII)V
    .locals 1
    .param p0, "x0"    # Lcom/google/vr/sdk/base/CardboardViewNativeImpl;
    .param p1, "x1"    # J
    .param p3, "x2"    # I
    .param p4, "x3"    # I

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/vr/sdk/base/CardboardViewNativeImpl;->nativeOnSurfaceChanged(JII)V

    return-void
.end method

.method static synthetic access$3300(Lcom/google/vr/sdk/base/CardboardViewNativeImpl;J)V
    .locals 1
    .param p0, "x0"    # Lcom/google/vr/sdk/base/CardboardViewNativeImpl;
    .param p1, "x1"    # J

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/google/vr/sdk/base/CardboardViewNativeImpl;->nativeOnSurfaceCreated(J)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/vr/sdk/base/CardboardViewNativeImpl;JZ)V
    .locals 1
    .param p0, "x0"    # Lcom/google/vr/sdk/base/CardboardViewNativeImpl;
    .param p1, "x1"    # J
    .param p3, "x2"    # Z

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3}, Lcom/google/vr/sdk/base/CardboardViewNativeImpl;->nativeSetDistortionCorrectionEnabled(JZ)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/vr/sdk/base/CardboardViewNativeImpl;JI)V
    .locals 1
    .param p0, "x0"    # Lcom/google/vr/sdk/base/CardboardViewNativeImpl;
    .param p1, "x1"    # J
    .param p3, "x2"    # I

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3}, Lcom/google/vr/sdk/base/CardboardViewNativeImpl;->nativeUndistortTexture(JI)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/vr/sdk/base/CardboardViewNativeImpl;JF)V
    .locals 1
    .param p0, "x0"    # Lcom/google/vr/sdk/base/CardboardViewNativeImpl;
    .param p1, "x1"    # J
    .param p3, "x2"    # F

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3}, Lcom/google/vr/sdk/base/CardboardViewNativeImpl;->nativeSetDistortionCorrectionScale(JF)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/vr/sdk/base/CardboardViewNativeImpl;JI)V
    .locals 1
    .param p0, "x0"    # Lcom/google/vr/sdk/base/CardboardViewNativeImpl;
    .param p1, "x1"    # J
    .param p3, "x2"    # I

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3}, Lcom/google/vr/sdk/base/CardboardViewNativeImpl;->nativeSetMultisampling(JI)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/vr/sdk/base/CardboardViewNativeImpl;JI)V
    .locals 1
    .param p0, "x0"    # Lcom/google/vr/sdk/base/CardboardViewNativeImpl;
    .param p1, "x1"    # J
    .param p3, "x2"    # I

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3}, Lcom/google/vr/sdk/base/CardboardViewNativeImpl;->nativeSetDepthStencilFormat(JI)V

    return-void
.end method

.method static synthetic access$900(Lcom/google/vr/sdk/base/CardboardViewNativeImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/vr/sdk/base/CardboardViewNativeImpl;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/google/vr/sdk/base/CardboardViewNativeImpl;->onCardboardTrigger()V

    return-void
.end method

.method private checkNativeCardboardView()V
    .locals 4

    .prologue
    .line 502
    iget-wide v0, p0, Lcom/google/vr/sdk/base/CardboardViewNativeImpl;->nativeCardboardView:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 503
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "GvrView has already been shut down."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 505
    :cond_0
    return-void
.end method

.method private static getDefaultDisplay(Landroid/content/Context;)Landroid/view/Display;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 736
    const-string v1, "window"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 737
    .local v0, "windowManager":Landroid/view/WindowManager;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    return-object v1
.end method

.method private native nativeDestroy(J)V
.end method

.method private native nativeGetCurrentEyeParams(JLcom/google/vr/sdk/base/HeadTransform;Lcom/google/vr/sdk/base/Eye;Lcom/google/vr/sdk/base/Eye;Lcom/google/vr/sdk/base/Eye;Lcom/google/vr/sdk/base/Eye;Lcom/google/vr/sdk/base/Eye;)V
.end method

.method private native nativeGetNeckModelFactor(J)F
.end method

.method private native nativeInit(J)J
.end method

.method private native nativeLogEvent(JI)V
.end method

.method private native nativeOnDrawFrame(J)V
.end method

.method private native nativeOnSurfaceChanged(JII)V
.end method

.method private native nativeOnSurfaceCreated(J)V
.end method

.method private static native nativeSetApplicationState(Ljava/lang/ClassLoader;Landroid/content/Context;)J
.end method

.method private native nativeSetDepthStencilFormat(JI)V
.end method

.method private native nativeSetDistortionCorrectionEnabled(JZ)V
.end method

.method private native nativeSetDistortionCorrectionScale(JF)V
.end method

.method private native nativeSetGvrViewerParams(J[B)V
.end method

.method private native nativeSetMultisampling(JI)V
.end method

.method private native nativeSetNeckModelEnabled(JZ)V
.end method

.method private native nativeSetNeckModelFactor(JF)V
.end method

.method private native nativeSetRenderer(JLcom/google/vr/sdk/base/GvrView$Renderer;)V
.end method

.method private native nativeSetScreenParams(JIIFFF)V
.end method

.method private native nativeSetStereoModeEnabled(JZ)V
.end method

.method private native nativeSetStereoRenderer(JLcom/google/vr/sdk/base/GvrView$StereoRenderer;)V
.end method

.method private native nativeUndistortTexture(JI)V
.end method

.method private onCardboardBack()V
    .locals 0
    .annotation build Lcom/google/vr/cardboard/UsedByNative;
    .end annotation

    .prologue
    .line 457
    invoke-direct {p0}, Lcom/google/vr/sdk/base/CardboardViewNativeImpl;->runOnCardboardBackListener()V

    .line 458
    return-void
.end method

.method private onCardboardTrigger()V
    .locals 1
    .annotation build Lcom/google/vr/cardboard/UsedByNative;
    .end annotation

    .prologue
    .line 449
    iget-object v0, p0, Lcom/google/vr/sdk/base/CardboardViewNativeImpl;->cardboardTriggerListener:Ljava/lang/Runnable;

    .line 450
    .local v0, "listener":Ljava/lang/Runnable;
    if-eqz v0, :cond_0

    .line 451
    invoke-static {v0}, Lcom/google/vr/cardboard/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 453
    :cond_0
    return-void
.end method

.method private queueEvent(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 462
    iget-object v0, p0, Lcom/google/vr/sdk/base/CardboardViewNativeImpl;->glSurfaceView:Lcom/google/vr/cardboard/CardboardGLSurfaceView;

    invoke-virtual {v0, p1}, Lcom/google/vr/cardboard/CardboardGLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    .line 463
    return-void
.end method

.method private reconnectSensors()V
    .locals 1

    .prologue
    .line 492
    new-instance v0, Lcom/google/vr/sdk/base/CardboardViewNativeImpl$10;

    invoke-direct {v0, p0}, Lcom/google/vr/sdk/base/CardboardViewNativeImpl$10;-><init>(Lcom/google/vr/sdk/base/CardboardViewNativeImpl;)V

    invoke-direct {p0, v0}, Lcom/google/vr/sdk/base/CardboardViewNativeImpl;->queueEvent(Ljava/lang/Runnable;)V

    .line 499
    return-void
.end method

.method private runOnCardboardBackListener()V
    .locals 1

    .prologue
    .line 441
    iget-object v0, p0, Lcom/google/vr/sdk/base/CardboardViewNativeImpl;->cardboardBackListener:Ljava/lang/Runnable;

    .line 442
    .local v0, "listener":Ljava/lang/Runnable;
    if-eqz v0, :cond_0

    .line 443
    invoke-static {v0}, Lcom/google/vr/cardboard/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 445
    :cond_0
    return-void
.end method

.method private setGvrViewerParams(Lcom/google/vr/sdk/base/GvrViewerParams;)V
    .locals 3
    .param p1, "newParams"    # Lcom/google/vr/sdk/base/GvrViewerParams;

    .prologue
    .line 466
    new-instance v0, Lcom/google/vr/sdk/base/GvrViewerParams;

    invoke-direct {v0, p1}, Lcom/google/vr/sdk/base/GvrViewerParams;-><init>(Lcom/google/vr/sdk/base/GvrViewerParams;)V

    .line 467
    .local v0, "deviceParams":Lcom/google/vr/sdk/base/GvrViewerParams;
    iget-object v1, p0, Lcom/google/vr/sdk/base/CardboardViewNativeImpl;->uiLayout:Lcom/google/vr/ndk/base/GvrUiLayout;

    invoke-virtual {v0}, Lcom/google/vr/sdk/base/GvrViewerParams;->getModel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/vr/ndk/base/GvrUiLayout;->setViewerName(Ljava/lang/String;)V

    .line 468
    new-instance v1, Lcom/google/vr/sdk/base/CardboardViewNativeImpl$8;

    invoke-direct {v1, p0, p1}, Lcom/google/vr/sdk/base/CardboardViewNativeImpl$8;-><init>(Lcom/google/vr/sdk/base/CardboardViewNativeImpl;Lcom/google/vr/sdk/base/GvrViewerParams;)V

    invoke-direct {p0, v1}, Lcom/google/vr/sdk/base/CardboardViewNativeImpl;->queueEvent(Ljava/lang/Runnable;)V

    .line 475
    return-void
.end method

.method private setScreenParams(Lcom/google/vr/sdk/base/ScreenParams;)V
    .locals 2
    .param p1, "newParams"    # Lcom/google/vr/sdk/base/ScreenParams;

    .prologue
    .line 478
    new-instance v0, Lcom/google/vr/sdk/base/ScreenParams;

    invoke-direct {v0, p1}, Lcom/google/vr/sdk/base/ScreenParams;-><init>(Lcom/google/vr/sdk/base/ScreenParams;)V

    .line 479
    .local v0, "screenParams":Lcom/google/vr/sdk/base/ScreenParams;
    new-instance v1, Lcom/google/vr/sdk/base/CardboardViewNativeImpl$9;

    invoke-direct {v1, p0, v0}, Lcom/google/vr/sdk/base/CardboardViewNativeImpl$9;-><init>(Lcom/google/vr/sdk/base/CardboardViewNativeImpl;Lcom/google/vr/sdk/base/ScreenParams;)V

    invoke-direct {p0, v1}, Lcom/google/vr/sdk/base/CardboardViewNativeImpl;->queueEvent(Ljava/lang/Runnable;)V

    .line 489
    return-void
.end method

.method private updateTransitionListener()V
    .locals 2

    .prologue
    .line 210
    iget-object v0, p0, Lcom/google/vr/sdk/base/CardboardViewNativeImpl;->uiLayout:Lcom/google/vr/ndk/base/GvrUiLayout;

    invoke-virtual {v0}, Lcom/google/vr/ndk/base/GvrUiLayout;->getUiLayer()Lcom/google/vr/cardboard/UiLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/vr/cardboard/UiLayer;->getTransitionViewEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/google/vr/sdk/base/CardboardViewNativeImpl;->uiLayout:Lcom/google/vr/ndk/base/GvrUiLayout;

    invoke-virtual {v0}, Lcom/google/vr/ndk/base/GvrUiLayout;->getUiLayer()Lcom/google/vr/cardboard/UiLayer;

    move-result-object v0

    new-instance v1, Lcom/google/vr/sdk/base/CardboardViewNativeImpl$1;

    invoke-direct {v1, p0}, Lcom/google/vr/sdk/base/CardboardViewNativeImpl$1;-><init>(Lcom/google/vr/sdk/base/CardboardViewNativeImpl;)V

    invoke-virtual {v0, v1}, Lcom/google/vr/cardboard/UiLayer;->setTransitionViewListener(Lcom/google/vr/cardboard/TransitionView$TransitionListener;)V

    .line 243
    :goto_0
    return-void

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/base/CardboardViewNativeImpl;->uiLayout:Lcom/google/vr/ndk/base/GvrUiLayout;

    invoke-virtual {v0}, Lcom/google/vr/ndk/base/GvrUiLayout;->getUiLayer()Lcom/google/vr/cardboard/UiLayer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/vr/cardboard/UiLayer;->setTransitionViewListener(Lcom/google/vr/cardboard/TransitionView$TransitionListener;)V

    goto :goto_0
.end method


# virtual methods
.method public enableCardboardTriggerEmulation()V
    .locals 2

    .prologue
    .line 416
    iget-object v0, p0, Lcom/google/vr/sdk/base/CardboardViewNativeImpl;->gvrLayout:Lcom/google/vr/ndk/base/GvrLayout;

    new-instance v1, Lcom/google/vr/sdk/base/CardboardViewNativeImpl$7;

    invoke-direct {v1, p0}, Lcom/google/vr/sdk/base/CardboardViewNativeImpl$7;-><init>(Lcom/google/vr/sdk/base/CardboardViewNativeImpl;)V

    invoke-virtual {v0, v1}, Lcom/google/vr/ndk/base/GvrLayout;->enableCardboardTriggerEmulation(Ljava/lang/Runnable;)Z

    .line 423
    return-void
.end method

.method protected finalize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 120
    :try_start_0
    iget-wide v0, p0, Lcom/google/vr/sdk/base/CardboardViewNativeImpl;->nativeCardboardView:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 122
    sget-object v0, Lcom/google/vr/sdk/base/CardboardViewNativeImpl;->TAG:Ljava/lang/String;

    const-string v1, "GvrView.shutdown() should be called to ensure resource cleanup"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget-wide v0, p0, Lcom/google/vr/sdk/base/CardboardViewNativeImpl;->nativeCardboardView:J

    invoke-direct {p0, v0, v1}, Lcom/google/vr/sdk/base/CardboardViewNativeImpl;->nativeDestroy(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 128
    return-void

    .line 126
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getAsyncReprojectionEnabled()Z
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/google/vr/sdk/base/CardboardViewNativeImpl;->gvrLayout:Lcom/google/vr/ndk/base/GvrLayout;

    invoke-virtual {v0}, Lcom/google/vr/ndk/base/GvrLayout;->getGvrApi()Lcom/google/vr/ndk/base/GvrApi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/vr/ndk/base/GvrApi;->getAsyncReprojectionEnabled()Z

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
    .line 166
    iget-object v0, p0, Lcom/google/vr/sdk/base/CardboardViewNativeImpl;->rendererHelper:Lcom/google/vr/sdk/base/CardboardViewNativeImpl$RendererHelper;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/google/vr/sdk/base/CardboardViewNativeImpl$RendererHelper;->getCurrentEyeParams(Lcom/google/vr/sdk/base/HeadTransform;Lcom/google/vr/sdk/base/Eye;Lcom/google/vr/sdk/base/Eye;Lcom/google/vr/sdk/base/Eye;Lcom/google/vr/sdk/base/Eye;Lcom/google/vr/sdk/base/Eye;)V

    .line 169
    return-void
.end method

.method public getDistortionCorrectionEnabled()Z
    .locals 1

    .prologue
    .line 318
    iget-boolean v0, p0, Lcom/google/vr/sdk/base/CardboardViewNativeImpl;->distortionCorrectionEnabled:Z

    return v0
.end method

.method public getGvrSurfaceView()Lcom/google/vr/ndk/base/GvrSurfaceView;
    .locals 1

    .prologue
    .line 437
    iget-object v0, p0, Lcom/google/vr/sdk/base/CardboardViewNativeImpl;->glSurfaceView:Lcom/google/vr/cardboard/CardboardGLSurfaceView;

    return-object v0
.end method

.method public getGvrViewerParams()Lcom/google/vr/sdk/base/GvrViewerParams;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/google/vr/sdk/base/CardboardViewNativeImpl;->hmdManager:Lcom/google/vr/sdk/base/HeadMountedDisplayManager;

    invoke-virtual {v0}, Lcom/google/vr/sdk/base/HeadMountedDisplayManager;->getHeadMountedDisplay()Lcom/google/vr/sdk/base/HeadMountedDisplay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/vr/sdk/base/HeadMountedDisplay;->getGvrViewerParams()Lcom/google/vr/sdk/base/GvrViewerParams;

    move-result-object v0

    return-object v0
.end method

.method public getHeadMountedDisplay()Lcom/google/vr/sdk/base/HeadMountedDisplay;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/google/vr/sdk/base/CardboardViewNativeImpl;->hmdManager:Lcom/google/vr/sdk/base/HeadMountedDisplayManager;

    invoke-virtual {v0}, Lcom/google/vr/sdk/base/HeadMountedDisplayManager;->getHeadMountedDisplay()Lcom/google/vr/sdk/base/HeadMountedDisplay;

    move-result-object v0

    return-object v0
.end method

.method public getInterpupillaryDistance()F
    .locals 1

    .prologue
    .line 301
    invoke-virtual {p0}, Lcom/google/vr/sdk/base/CardboardViewNativeImpl;->getGvrViewerParams()Lcom/google/vr/sdk/base/GvrViewerParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/vr/sdk/base/GvrViewerParams;->getInterLensDistance()F

    move-result v0

    return v0
.end method

.method public getNeckModelFactor()F
    .locals 2

    .prologue
    .line 257
    iget-wide v0, p0, Lcom/google/vr/sdk/base/CardboardViewNativeImpl;->nativeCardboardView:J

    invoke-direct {p0, v0, v1}, Lcom/google/vr/sdk/base/CardboardViewNativeImpl;->nativeGetNeckModelFactor(J)F

    move-result v0

    return v0
.end method

.method public getRootView()Landroid/view/View;
    .locals 1

    .prologue
    .line 432
    iget-object v0, p0, Lcom/google/vr/sdk/base/CardboardViewNativeImpl;->gvrLayout:Lcom/google/vr/ndk/base/GvrLayout;

    return-object v0
.end method

.method public getScreenParams()Lcom/google/vr/sdk/base/ScreenParams;
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/google/vr/sdk/base/CardboardViewNativeImpl;->hmdManager:Lcom/google/vr/sdk/base/HeadMountedDisplayManager;

    invoke-virtual {v0}, Lcom/google/vr/sdk/base/HeadMountedDisplayManager;->getHeadMountedDisplay()Lcom/google/vr/sdk/base/HeadMountedDisplay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/vr/sdk/base/HeadMountedDisplay;->getScreenParams()Lcom/google/vr/sdk/base/ScreenParams;

    move-result-object v0

    return-object v0
.end method

.method public getStereoModeEnabled()Z
    .locals 1

    .prologue
    .line 179
    iget-boolean v0, p0, Lcom/google/vr/sdk/base/CardboardViewNativeImpl;->stereoMode:Z

    return v0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 384
    invoke-direct {p0}, Lcom/google/vr/sdk/base/CardboardViewNativeImpl;->checkNativeCardboardView()V

    .line 385
    iget-object v0, p0, Lcom/google/vr/sdk/base/CardboardViewNativeImpl;->gvrApi:Lcom/google/vr/ndk/base/GvrApi;

    invoke-virtual {v0}, Lcom/google/vr/ndk/base/GvrApi;->pauseTracking()V

    .line 386
    iget-object v0, p0, Lcom/google/vr/sdk/base/CardboardViewNativeImpl;->hmdManager:Lcom/google/vr/sdk/base/HeadMountedDisplayManager;

    invoke-virtual {v0}, Lcom/google/vr/sdk/base/HeadMountedDisplayManager;->onPause()V

    .line 387
    iget-object v0, p0, Lcom/google/vr/sdk/base/CardboardViewNativeImpl;->glSurfaceView:Lcom/google/vr/cardboard/CardboardGLSurfaceView;

    invoke-virtual {v0}, Lcom/google/vr/cardboard/CardboardGLSurfaceView;->onPause()V

    .line 388
    iget-object v0, p0, Lcom/google/vr/sdk/base/CardboardViewNativeImpl;->gvrLayout:Lcom/google/vr/ndk/base/GvrLayout;

    invoke-virtual {v0}, Lcom/google/vr/ndk/base/GvrLayout;->onPause()V

    .line 389
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 372
    invoke-direct {p0}, Lcom/google/vr/sdk/base/CardboardViewNativeImpl;->checkNativeCardboardView()V

    .line 373
    iget-object v0, p0, Lcom/google/vr/sdk/base/CardboardViewNativeImpl;->gvrLayout:Lcom/google/vr/ndk/base/GvrLayout;

    invoke-virtual {v0}, Lcom/google/vr/ndk/base/GvrLayout;->onResume()V

    .line 374
    iget-object v0, p0, Lcom/google/vr/sdk/base/CardboardViewNativeImpl;->glSurfaceView:Lcom/google/vr/cardboard/CardboardGLSurfaceView;

    invoke-virtual {v0}, Lcom/google/vr/cardboard/CardboardGLSurfaceView;->onResume()V

    .line 376
    iget-object v0, p0, Lcom/google/vr/sdk/base/CardboardViewNativeImpl;->hmdManager:Lcom/google/vr/sdk/base/HeadMountedDisplayManager;

    invoke-virtual {v0}, Lcom/google/vr/sdk/base/HeadMountedDisplayManager;->onResume()V

    .line 377
    invoke-virtual {p0}, Lcom/google/vr/sdk/base/CardboardViewNativeImpl;->getScreenParams()Lcom/google/vr/sdk/base/ScreenParams;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/vr/sdk/base/CardboardViewNativeImpl;->setScreenParams(Lcom/google/vr/sdk/base/ScreenParams;)V

    .line 378
    invoke-virtual {p0}, Lcom/google/vr/sdk/base/CardboardViewNativeImpl;->getGvrViewerParams()Lcom/google/vr/sdk/base/GvrViewerParams;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/vr/sdk/base/CardboardViewNativeImpl;->setGvrViewerParams(Lcom/google/vr/sdk/base/GvrViewerParams;)V

    .line 379
    iget-object v0, p0, Lcom/google/vr/sdk/base/CardboardViewNativeImpl;->gvrApi:Lcom/google/vr/ndk/base/GvrApi;

    invoke-virtual {v0}, Lcom/google/vr/ndk/base/GvrApi;->resumeTracking()V

    .line 380
    return-void
.end method

.method public onSurfaceViewDetachedFromWindow()V
    .locals 5

    .prologue
    .line 134
    iget-object v1, p0, Lcom/google/vr/sdk/base/CardboardViewNativeImpl;->shutdownLatch:Ljava/util/concurrent/CountDownLatch;

    if-nez v1, :cond_0

    .line 135
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v1, p0, Lcom/google/vr/sdk/base/CardboardViewNativeImpl;->shutdownLatch:Ljava/util/concurrent/CountDownLatch;

    .line 136
    iget-object v1, p0, Lcom/google/vr/sdk/base/CardboardViewNativeImpl;->rendererHelper:Lcom/google/vr/sdk/base/CardboardViewNativeImpl$RendererHelper;

    invoke-virtual {v1}, Lcom/google/vr/sdk/base/CardboardViewNativeImpl$RendererHelper;->shutdown()V

    .line 138
    :try_start_0
    iget-object v1, p0, Lcom/google/vr/sdk/base/CardboardViewNativeImpl;->shutdownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/vr/sdk/base/CardboardViewNativeImpl;->shutdownLatch:Ljava/util/concurrent/CountDownLatch;

    .line 145
    :cond_0
    return-void

    .line 139
    :catch_0
    move-exception v0

    .line 140
    .local v0, "e":Ljava/lang/InterruptedException;
    sget-object v2, Lcom/google/vr/sdk/base/CardboardViewNativeImpl;->TAG:Ljava/lang/String;

    const-string v3, "Interrupted during shutdown: "

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 402
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/vr/sdk/base/CardboardViewNativeImpl;->cardboardTriggerListener:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 403
    invoke-direct {p0}, Lcom/google/vr/sdk/base/CardboardViewNativeImpl;->onCardboardTrigger()V

    .line 404
    const/4 v0, 0x1

    .line 406
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public recenterHeadTracker()V
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/google/vr/sdk/base/CardboardViewNativeImpl;->gvrApi:Lcom/google/vr/ndk/base/GvrApi;

    invoke-virtual {v0}, Lcom/google/vr/ndk/base/GvrApi;->recenterTracking()V

    .line 273
    return-void
.end method

.method public resetHeadTracker()V
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/google/vr/sdk/base/CardboardViewNativeImpl;->gvrApi:Lcom/google/vr/ndk/base/GvrApi;

    invoke-virtual {v0}, Lcom/google/vr/ndk/base/GvrApi;->resetTracking()V

    .line 268
    return-void
.end method

.method public setAsyncReprojectionEnabled(Z)Z
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 184
    iget-object v0, p0, Lcom/google/vr/sdk/base/CardboardViewNativeImpl;->gvrLayout:Lcom/google/vr/ndk/base/GvrLayout;

    invoke-virtual {v0, p1}, Lcom/google/vr/ndk/base/GvrLayout;->setAsyncReprojectionEnabled(Z)Z

    move-result v0

    return v0
.end method

.method public setDepthStencilFormat(I)V
    .locals 2
    .param p1, "format"    # I

    .prologue
    .line 357
    invoke-direct {p0}, Lcom/google/vr/sdk/base/CardboardViewNativeImpl;->checkNativeCardboardView()V

    .line 358
    invoke-static {p1}, Lcom/google/vr/ndk/base/BufferSpec;->isValidDepthStencilFormat(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 359
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid depth-stencil format."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 361
    :cond_0
    new-instance v0, Lcom/google/vr/sdk/base/CardboardViewNativeImpl$6;

    invoke-direct {v0, p0, p1}, Lcom/google/vr/sdk/base/CardboardViewNativeImpl$6;-><init>(Lcom/google/vr/sdk/base/CardboardViewNativeImpl;I)V

    invoke-direct {p0, v0}, Lcom/google/vr/sdk/base/CardboardViewNativeImpl;->queueEvent(Ljava/lang/Runnable;)V

    .line 368
    return-void
.end method

.method public setDistortionCorrectionEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 306
    invoke-direct {p0}, Lcom/google/vr/sdk/base/CardboardViewNativeImpl;->checkNativeCardboardView()V

    .line 307
    iput-boolean p1, p0, Lcom/google/vr/sdk/base/CardboardViewNativeImpl;->distortionCorrectionEnabled:Z

    .line 308
    new-instance v0, Lcom/google/vr/sdk/base/CardboardViewNativeImpl$2;

    invoke-direct {v0, p0, p1}, Lcom/google/vr/sdk/base/CardboardViewNativeImpl$2;-><init>(Lcom/google/vr/sdk/base/CardboardViewNativeImpl;Z)V

    invoke-direct {p0, v0}, Lcom/google/vr/sdk/base/CardboardViewNativeImpl;->queueEvent(Ljava/lang/Runnable;)V

    .line 314
    return-void
.end method

.method public setDistortionCorrectionScale(F)V
    .locals 1
    .param p1, "scale"    # F

    .prologue
    .line 334
    invoke-direct {p0}, Lcom/google/vr/sdk/base/CardboardViewNativeImpl;->checkNativeCardboardView()V

    .line 335
    new-instance v0, Lcom/google/vr/sdk/base/CardboardViewNativeImpl$4;

    invoke-direct {v0, p0, p1}, Lcom/google/vr/sdk/base/CardboardViewNativeImpl$4;-><init>(Lcom/google/vr/sdk/base/CardboardViewNativeImpl;F)V

    invoke-direct {p0, v0}, Lcom/google/vr/sdk/base/CardboardViewNativeImpl;->queueEvent(Ljava/lang/Runnable;)V

    .line 341
    return-void
.end method

.method public setMultisampling(I)V
    .locals 1
    .param p1, "numSamples"    # I

    .prologue
    .line 345
    invoke-direct {p0}, Lcom/google/vr/sdk/base/CardboardViewNativeImpl;->checkNativeCardboardView()V

    .line 346
    new-instance v0, Lcom/google/vr/sdk/base/CardboardViewNativeImpl$5;

    invoke-direct {v0, p0, p1}, Lcom/google/vr/sdk/base/CardboardViewNativeImpl$5;-><init>(Lcom/google/vr/sdk/base/CardboardViewNativeImpl;I)V

    invoke-direct {p0, v0}, Lcom/google/vr/sdk/base/CardboardViewNativeImpl;->queueEvent(Ljava/lang/Runnable;)V

    .line 353
    return-void
.end method

.method public setNeckModelEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 252
    iget-wide v0, p0, Lcom/google/vr/sdk/base/CardboardViewNativeImpl;->nativeCardboardView:J

    invoke-direct {p0, v0, v1, p1}, Lcom/google/vr/sdk/base/CardboardViewNativeImpl;->nativeSetNeckModelEnabled(JZ)V

    .line 253
    return-void
.end method

.method public setNeckModelFactor(F)V
    .locals 2
    .param p1, "factor"    # F

    .prologue
    .line 262
    iget-wide v0, p0, Lcom/google/vr/sdk/base/CardboardViewNativeImpl;->nativeCardboardView:J

    invoke-direct {p0, v0, v1, p1}, Lcom/google/vr/sdk/base/CardboardViewNativeImpl;->nativeSetNeckModelFactor(JF)V

    .line 263
    return-void
.end method

.method public setOnCardboardBackListener(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "listener"    # Ljava/lang/Runnable;

    .prologue
    .line 427
    iput-object p1, p0, Lcom/google/vr/sdk/base/CardboardViewNativeImpl;->cardboardBackListener:Ljava/lang/Runnable;

    .line 428
    return-void
.end method

.method public setOnCardboardTriggerListener(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "listener"    # Ljava/lang/Runnable;

    .prologue
    .line 411
    iput-object p1, p0, Lcom/google/vr/sdk/base/CardboardViewNativeImpl;->cardboardTriggerListener:Ljava/lang/Runnable;

    .line 412
    return-void
.end method

.method public setOnCloseButtonListener(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "listener"    # Ljava/lang/Runnable;

    .prologue
    .line 194
    iget-object v0, p0, Lcom/google/vr/sdk/base/CardboardViewNativeImpl;->uiLayout:Lcom/google/vr/ndk/base/GvrUiLayout;

    invoke-virtual {v0, p1}, Lcom/google/vr/ndk/base/GvrUiLayout;->setCloseButtonListener(Ljava/lang/Runnable;)V

    .line 195
    return-void
.end method

.method public setOnTransitionViewDoneListener(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "listener"    # Ljava/lang/Runnable;

    .prologue
    .line 205
    iput-object p1, p0, Lcom/google/vr/sdk/base/CardboardViewNativeImpl;->transitionDoneListener:Ljava/lang/Runnable;

    .line 206
    invoke-direct {p0}, Lcom/google/vr/sdk/base/CardboardViewNativeImpl;->updateTransitionListener()V

    .line 207
    return-void
.end method

.method public setRenderer(Lcom/google/vr/sdk/base/GvrView$Renderer;)V
    .locals 2
    .param p1, "renderer"    # Lcom/google/vr/sdk/base/GvrView$Renderer;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/google/vr/sdk/base/CardboardViewNativeImpl;->rendererHelper:Lcom/google/vr/sdk/base/CardboardViewNativeImpl$RendererHelper;

    invoke-virtual {v0, p1}, Lcom/google/vr/sdk/base/CardboardViewNativeImpl$RendererHelper;->setRenderer(Lcom/google/vr/sdk/base/GvrView$Renderer;)V

    .line 152
    iget-object v0, p0, Lcom/google/vr/sdk/base/CardboardViewNativeImpl;->glSurfaceView:Lcom/google/vr/cardboard/CardboardGLSurfaceView;

    iget-object v1, p0, Lcom/google/vr/sdk/base/CardboardViewNativeImpl;->rendererHelper:Lcom/google/vr/sdk/base/CardboardViewNativeImpl$RendererHelper;

    invoke-virtual {v0, v1}, Lcom/google/vr/cardboard/CardboardGLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 153
    return-void
.end method

.method public setRenderer(Lcom/google/vr/sdk/base/GvrView$StereoRenderer;)V
    .locals 2
    .param p1, "renderer"    # Lcom/google/vr/sdk/base/GvrView$StereoRenderer;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/google/vr/sdk/base/CardboardViewNativeImpl;->rendererHelper:Lcom/google/vr/sdk/base/CardboardViewNativeImpl$RendererHelper;

    invoke-virtual {v0, p1}, Lcom/google/vr/sdk/base/CardboardViewNativeImpl$RendererHelper;->setRenderer(Lcom/google/vr/sdk/base/GvrView$StereoRenderer;)V

    .line 158
    iget-object v0, p0, Lcom/google/vr/sdk/base/CardboardViewNativeImpl;->glSurfaceView:Lcom/google/vr/cardboard/CardboardGLSurfaceView;

    iget-object v1, p0, Lcom/google/vr/sdk/base/CardboardViewNativeImpl;->rendererHelper:Lcom/google/vr/sdk/base/CardboardViewNativeImpl$RendererHelper;

    invoke-virtual {v0, v1}, Lcom/google/vr/cardboard/CardboardGLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 159
    return-void
.end method

.method public setStereoModeEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 173
    iput-boolean p1, p0, Lcom/google/vr/sdk/base/CardboardViewNativeImpl;->stereoMode:Z

    .line 174
    iget-object v0, p0, Lcom/google/vr/sdk/base/CardboardViewNativeImpl;->rendererHelper:Lcom/google/vr/sdk/base/CardboardViewNativeImpl$RendererHelper;

    invoke-virtual {v0, p1}, Lcom/google/vr/sdk/base/CardboardViewNativeImpl$RendererHelper;->setStereoModeEnabled(Z)V

    .line 175
    return-void
.end method

.method public setTransitionViewEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 199
    iget-object v0, p0, Lcom/google/vr/sdk/base/CardboardViewNativeImpl;->uiLayout:Lcom/google/vr/ndk/base/GvrUiLayout;

    invoke-virtual {v0, p1}, Lcom/google/vr/ndk/base/GvrUiLayout;->setTransitionViewEnabled(Z)V

    .line 200
    invoke-direct {p0}, Lcom/google/vr/sdk/base/CardboardViewNativeImpl;->updateTransitionListener()V

    .line 201
    return-void
.end method

.method public shutdown()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 393
    iget-wide v0, p0, Lcom/google/vr/sdk/base/CardboardViewNativeImpl;->nativeCardboardView:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 394
    iget-object v0, p0, Lcom/google/vr/sdk/base/CardboardViewNativeImpl;->gvrLayout:Lcom/google/vr/ndk/base/GvrLayout;

    invoke-virtual {v0}, Lcom/google/vr/ndk/base/GvrLayout;->shutdown()V

    .line 395
    iget-wide v0, p0, Lcom/google/vr/sdk/base/CardboardViewNativeImpl;->nativeCardboardView:J

    invoke-direct {p0, v0, v1}, Lcom/google/vr/sdk/base/CardboardViewNativeImpl;->nativeDestroy(J)V

    .line 396
    iput-wide v2, p0, Lcom/google/vr/sdk/base/CardboardViewNativeImpl;->nativeCardboardView:J

    .line 398
    :cond_0
    return-void
.end method

.method public undistortTexture(I)V
    .locals 1
    .param p1, "inputTexture"    # I

    .prologue
    .line 323
    invoke-direct {p0}, Lcom/google/vr/sdk/base/CardboardViewNativeImpl;->checkNativeCardboardView()V

    .line 324
    new-instance v0, Lcom/google/vr/sdk/base/CardboardViewNativeImpl$3;

    invoke-direct {v0, p0, p1}, Lcom/google/vr/sdk/base/CardboardViewNativeImpl$3;-><init>(Lcom/google/vr/sdk/base/CardboardViewNativeImpl;I)V

    invoke-direct {p0, v0}, Lcom/google/vr/sdk/base/CardboardViewNativeImpl;->queueEvent(Ljava/lang/Runnable;)V

    .line 330
    return-void
.end method

.method public updateGvrViewerParams(Lcom/google/vr/sdk/base/GvrViewerParams;)V
    .locals 1
    .param p1, "gvrDeviceParams"    # Lcom/google/vr/sdk/base/GvrViewerParams;

    .prologue
    .line 277
    iget-object v0, p0, Lcom/google/vr/sdk/base/CardboardViewNativeImpl;->hmdManager:Lcom/google/vr/sdk/base/HeadMountedDisplayManager;

    invoke-virtual {v0, p1}, Lcom/google/vr/sdk/base/HeadMountedDisplayManager;->updateGvrViewerParams(Lcom/google/vr/sdk/base/GvrViewerParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 278
    invoke-virtual {p0}, Lcom/google/vr/sdk/base/CardboardViewNativeImpl;->getGvrViewerParams()Lcom/google/vr/sdk/base/GvrViewerParams;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/vr/sdk/base/CardboardViewNativeImpl;->setGvrViewerParams(Lcom/google/vr/sdk/base/GvrViewerParams;)V

    .line 280
    :cond_0
    return-void
.end method

.method public updateScreenParams(Lcom/google/vr/sdk/base/ScreenParams;)V
    .locals 1
    .param p1, "screenParams"    # Lcom/google/vr/sdk/base/ScreenParams;

    .prologue
    .line 289
    iget-object v0, p0, Lcom/google/vr/sdk/base/CardboardViewNativeImpl;->hmdManager:Lcom/google/vr/sdk/base/HeadMountedDisplayManager;

    invoke-virtual {v0, p1}, Lcom/google/vr/sdk/base/HeadMountedDisplayManager;->updateScreenParams(Lcom/google/vr/sdk/base/ScreenParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 290
    invoke-virtual {p0}, Lcom/google/vr/sdk/base/CardboardViewNativeImpl;->getScreenParams()Lcom/google/vr/sdk/base/ScreenParams;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/vr/sdk/base/CardboardViewNativeImpl;->setScreenParams(Lcom/google/vr/sdk/base/ScreenParams;)V

    .line 292
    :cond_0
    return-void
.end method
