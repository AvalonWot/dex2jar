.class public Lcom/google/vr/inputcompanion/components/NativeGvrControllerApi;
.super Ljava/lang/Object;
.source "NativeGvrControllerApi.java"


# static fields
.field public static final GVR_CONTROLLER_API_CLIENT_OBSOLETE:I = 0x5

.field public static final GVR_CONTROLLER_API_MALFUNCTION:I = 0x6

.field public static final GVR_CONTROLLER_API_NOT_AUTHORIZED:I = 0x2

.field public static final GVR_CONTROLLER_API_OK:I = 0x0

.field public static final GVR_CONTROLLER_API_SERVICE_OBSOLETE:I = 0x4

.field public static final GVR_CONTROLLER_API_UNAVAILABLE:I = 0x3

.field public static final GVR_CONTROLLER_API_UNSUPPORTED:I = 0x1

.field public static final GVR_CONTROLLER_BUTTON_APP:I = 0x3

.field public static final GVR_CONTROLLER_BUTTON_CLICK:I = 0x1

.field public static final GVR_CONTROLLER_BUTTON_COUNT:I = 0x6

.field public static final GVR_CONTROLLER_BUTTON_HOME:I = 0x2

.field public static final GVR_CONTROLLER_BUTTON_NONE:I = 0x0

.field public static final GVR_CONTROLLER_BUTTON_VOLUME_DOWN:I = 0x5

.field public static final GVR_CONTROLLER_BUTTON_VOLUME_UP:I = 0x4

.field public static final GVR_CONTROLLER_CONNECTED:I = 0x3

.field public static final GVR_CONTROLLER_CONNECTING:I = 0x2

.field public static final GVR_CONTROLLER_DISCONNECTED:I = 0x0

.field public static final GVR_CONTROLLER_SCANNING:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const-string v0, "controller_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method private native nativeControllerDestroy(J)V
.end method

.method private native nativeControllerGetApiStatus(J)I
.end method

.method private native nativeControllerGetButtons(J[Z[Z[J)V
.end method

.method private native nativeControllerGetConnectionState(J)I
.end method

.method private native nativeControllerGetSensors(J[F[F[F[J)V
.end method

.method private native nativeControllerGetTouch(J[Z[F[J)V
.end method

.method private native nativeControllerInit(Landroid/content/Context;Ljava/lang/ClassLoader;)J
.end method

.method private native nativeControllerPause(J)V
.end method

.method private native nativeControllerResume(J)V
.end method

.method private native nativeControllerStateCreate()J
.end method

.method private native nativeControllerStateDestroy(J)V
.end method

.method private native nativeControllerStateUpdate(JJ)V
.end method


# virtual methods
.method public destroy(J)V
    .locals 1
    .param p1, "contextHandle"    # J

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Lcom/google/vr/inputcompanion/components/NativeGvrControllerApi;->nativeControllerDestroy(J)V

    .line 64
    return-void
.end method

.method public getApiStatus(J)I
    .locals 1
    .param p1, "stateHandle"    # J

    .prologue
    .line 102
    invoke-direct {p0, p1, p2}, Lcom/google/vr/inputcompanion/components/NativeGvrControllerApi;->nativeControllerGetApiStatus(J)I

    move-result v0

    return v0
.end method

.method public getButtons(J[Z[Z[J)V
    .locals 1
    .param p1, "stateHandle"    # J
    .param p3, "outButtonsDown"    # [Z
    .param p4, "outButtonsUp"    # [Z
    .param p5, "outTimestamp"    # [J

    .prologue
    .line 161
    invoke-direct/range {p0 .. p5}, Lcom/google/vr/inputcompanion/components/NativeGvrControllerApi;->nativeControllerGetButtons(J[Z[Z[J)V

    .line 162
    return-void
.end method

.method public getConnectionState(J)I
    .locals 1
    .param p1, "stateHandle"    # J

    .prologue
    .line 112
    invoke-direct {p0, p1, p2}, Lcom/google/vr/inputcompanion/components/NativeGvrControllerApi;->nativeControllerGetConnectionState(J)I

    move-result v0

    return v0
.end method

.method public getSensors(J[F[F[F[J)V
    .locals 1
    .param p1, "stateHandle"    # J
    .param p3, "outOrientation"    # [F
    .param p4, "outGyro"    # [F
    .param p5, "outAccel"    # [F
    .param p6, "outTimestamps"    # [J

    .prologue
    .line 129
    invoke-direct/range {p0 .. p6}, Lcom/google/vr/inputcompanion/components/NativeGvrControllerApi;->nativeControllerGetSensors(J[F[F[F[J)V

    .line 130
    return-void
.end method

.method public getTouch(J[Z[F[J)V
    .locals 1
    .param p1, "stateHandle"    # J
    .param p3, "outFlags"    # [Z
    .param p4, "outPos"    # [F
    .param p5, "outTimestamp"    # [J

    .prologue
    .line 143
    invoke-direct/range {p0 .. p5}, Lcom/google/vr/inputcompanion/components/NativeGvrControllerApi;->nativeControllerGetTouch(J[Z[F[J)V

    .line 144
    return-void
.end method

.method public init(Landroid/content/Context;Ljava/lang/ClassLoader;)J
    .locals 2
    .param p1, "androidAppContext"    # Landroid/content/Context;
    .param p2, "classLoader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lcom/google/vr/inputcompanion/components/NativeGvrControllerApi;->nativeControllerInit(Landroid/content/Context;Ljava/lang/ClassLoader;)J

    move-result-wide v0

    return-wide v0
.end method

.method public pause(J)V
    .locals 1
    .param p1, "contextHandle"    # J

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Lcom/google/vr/inputcompanion/components/NativeGvrControllerApi;->nativeControllerPause(J)V

    .line 69
    return-void
.end method

.method public resume(J)V
    .locals 1
    .param p1, "contextHandle"    # J

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Lcom/google/vr/inputcompanion/components/NativeGvrControllerApi;->nativeControllerResume(J)V

    .line 74
    return-void
.end method

.method public stateCreate()J
    .locals 2

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/google/vr/inputcompanion/components/NativeGvrControllerApi;->nativeControllerStateCreate()J

    move-result-wide v0

    return-wide v0
.end method

.method public stateDestroy(J)V
    .locals 1
    .param p1, "stateHandle"    # J

    .prologue
    .line 87
    invoke-direct {p0, p1, p2}, Lcom/google/vr/inputcompanion/components/NativeGvrControllerApi;->nativeControllerStateDestroy(J)V

    .line 88
    return-void
.end method

.method public stateUpdate(JJ)V
    .locals 1
    .param p1, "contextHandle"    # J
    .param p3, "stateHandle"    # J

    .prologue
    .line 92
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/vr/inputcompanion/components/NativeGvrControllerApi;->nativeControllerStateUpdate(JJ)V

    .line 93
    return-void
.end method
