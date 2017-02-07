.class public Lcom/google/vr/inputcompanion/components/NativeGvrControllerComponent;
.super Ljava/lang/Object;
.source "NativeGvrControllerComponent.java"

# interfaces
.implements Lcom/google/vr/inputcompanion/components/InputComponent;


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "NativeGvrControllerComp"

.field private static final UPDATE_INTERVAL_MILLIS:J = 0x19L


# instance fields
.field private accel:[F

.field private androidAppContext:Landroid/content/Context;

.field private buttonsDown:[Z

.field private buttonsUp:[Z

.field private classLoader:Ljava/lang/ClassLoader;

.field private clientConnection:Lcom/google/vr/inputcompanion/ClientConnection;

.field private gyro:[F

.field private handler:Landroid/os/Handler;

.field private lastApiStatus:J

.field private lastConnectionState:J

.field private nativeApi:Lcom/google/vr/inputcompanion/components/NativeGvrControllerApi;

.field private nativeContextHandle:J

.field private nativeStateHandle:J

.field private orientation:[F

.field private stateGraphicView:Landroid/widget/ImageView;

.field private statusView:Landroid/widget/TextView;

.field private timestamps:[J

.field private touchFlags:[Z

.field private touchPos:[F

.field private final updateRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/google/vr/inputcompanion/ClientConnection;Landroid/content/Context;Ljava/lang/ClassLoader;Landroid/widget/TextView;Landroid/widget/ImageView;)V
    .locals 8
    .param p1, "clientConnection"    # Lcom/google/vr/inputcompanion/ClientConnection;
    .param p2, "applicationContext"    # Landroid/content/Context;
    .param p3, "classLoader"    # Ljava/lang/ClassLoader;
    .param p4, "statusView"    # Landroid/widget/TextView;
    .param p5, "stateGraphicView"    # Landroid/widget/ImageView;

    .prologue
    const/4 v6, 0x0

    .line 70
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v7, v6

    invoke-direct/range {v0 .. v7}, Lcom/google/vr/inputcompanion/components/NativeGvrControllerComponent;-><init>(Lcom/google/vr/inputcompanion/ClientConnection;Landroid/content/Context;Ljava/lang/ClassLoader;Landroid/widget/TextView;Landroid/widget/ImageView;Lcom/google/vr/inputcompanion/components/NativeGvrControllerApi;Landroid/os/Handler;)V

    .line 72
    return-void
.end method

.method constructor <init>(Lcom/google/vr/inputcompanion/ClientConnection;Landroid/content/Context;Ljava/lang/ClassLoader;Landroid/widget/TextView;Landroid/widget/ImageView;Lcom/google/vr/inputcompanion/components/NativeGvrControllerApi;Landroid/os/Handler;)V
    .locals 6
    .param p1, "clientConnection"    # Lcom/google/vr/inputcompanion/ClientConnection;
    .param p2, "applicationContext"    # Landroid/content/Context;
    .param p3, "classLoader"    # Ljava/lang/ClassLoader;
    .param p4, "statusView"    # Landroid/widget/TextView;
    .param p5, "stateGraphicView"    # Landroid/widget/ImageView;
    .param p6, "nativeApi"    # Lcom/google/vr/inputcompanion/components/NativeGvrControllerApi;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p7, "handler"    # Landroid/os/Handler;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    const-wide/16 v4, -0x1

    const/4 v2, 0x6

    const/4 v1, 0x3

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-wide v4, p0, Lcom/google/vr/inputcompanion/components/NativeGvrControllerComponent;->lastApiStatus:J

    .line 47
    iput-wide v4, p0, Lcom/google/vr/inputcompanion/components/NativeGvrControllerComponent;->lastConnectionState:J

    .line 52
    const/4 v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/google/vr/inputcompanion/components/NativeGvrControllerComponent;->orientation:[F

    .line 53
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/google/vr/inputcompanion/components/NativeGvrControllerComponent;->gyro:[F

    .line 54
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/google/vr/inputcompanion/components/NativeGvrControllerComponent;->accel:[F

    .line 55
    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/google/vr/inputcompanion/components/NativeGvrControllerComponent;->touchPos:[F

    .line 56
    new-array v0, v1, [J

    iput-object v0, p0, Lcom/google/vr/inputcompanion/components/NativeGvrControllerComponent;->timestamps:[J

    .line 57
    new-array v0, v2, [Z

    iput-object v0, p0, Lcom/google/vr/inputcompanion/components/NativeGvrControllerComponent;->buttonsUp:[Z

    .line 58
    new-array v0, v2, [Z

    iput-object v0, p0, Lcom/google/vr/inputcompanion/components/NativeGvrControllerComponent;->buttonsDown:[Z

    .line 59
    new-array v0, v1, [Z

    iput-object v0, p0, Lcom/google/vr/inputcompanion/components/NativeGvrControllerComponent;->touchFlags:[Z

    .line 61
    new-instance v0, Lcom/google/vr/inputcompanion/components/NativeGvrControllerComponent$1;

    invoke-direct {v0, p0}, Lcom/google/vr/inputcompanion/components/NativeGvrControllerComponent$1;-><init>(Lcom/google/vr/inputcompanion/components/NativeGvrControllerComponent;)V

    iput-object v0, p0, Lcom/google/vr/inputcompanion/components/NativeGvrControllerComponent;->updateRunnable:Ljava/lang/Runnable;

    .line 83
    iput-object p1, p0, Lcom/google/vr/inputcompanion/components/NativeGvrControllerComponent;->clientConnection:Lcom/google/vr/inputcompanion/ClientConnection;

    .line 84
    iput-object p4, p0, Lcom/google/vr/inputcompanion/components/NativeGvrControllerComponent;->statusView:Landroid/widget/TextView;

    .line 85
    iput-object p5, p0, Lcom/google/vr/inputcompanion/components/NativeGvrControllerComponent;->stateGraphicView:Landroid/widget/ImageView;

    .line 86
    iput-object p2, p0, Lcom/google/vr/inputcompanion/components/NativeGvrControllerComponent;->androidAppContext:Landroid/content/Context;

    .line 87
    iput-object p3, p0, Lcom/google/vr/inputcompanion/components/NativeGvrControllerComponent;->classLoader:Ljava/lang/ClassLoader;

    .line 88
    if-eqz p6, :cond_0

    .end local p6    # "nativeApi":Lcom/google/vr/inputcompanion/components/NativeGvrControllerApi;
    :goto_0
    iput-object p6, p0, Lcom/google/vr/inputcompanion/components/NativeGvrControllerComponent;->nativeApi:Lcom/google/vr/inputcompanion/components/NativeGvrControllerApi;

    .line 89
    if-eqz p7, :cond_1

    .end local p7    # "handler":Landroid/os/Handler;
    :goto_1
    iput-object p7, p0, Lcom/google/vr/inputcompanion/components/NativeGvrControllerComponent;->handler:Landroid/os/Handler;

    .line 90
    return-void

    .line 88
    .restart local p6    # "nativeApi":Lcom/google/vr/inputcompanion/components/NativeGvrControllerApi;
    .restart local p7    # "handler":Landroid/os/Handler;
    :cond_0
    new-instance p6, Lcom/google/vr/inputcompanion/components/NativeGvrControllerApi;

    .end local p6    # "nativeApi":Lcom/google/vr/inputcompanion/components/NativeGvrControllerApi;
    invoke-direct {p6}, Lcom/google/vr/inputcompanion/components/NativeGvrControllerApi;-><init>()V

    goto :goto_0

    .line 89
    :cond_1
    new-instance p7, Landroid/os/Handler;

    .end local p7    # "handler":Landroid/os/Handler;
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p7, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/google/vr/inputcompanion/components/NativeGvrControllerComponent;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/vr/inputcompanion/components/NativeGvrControllerComponent;

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/google/vr/inputcompanion/components/NativeGvrControllerComponent;->updateState()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/vr/inputcompanion/components/NativeGvrControllerComponent;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/google/vr/inputcompanion/components/NativeGvrControllerComponent;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/google/vr/inputcompanion/components/NativeGvrControllerComponent;->statusView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/vr/inputcompanion/components/NativeGvrControllerComponent;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/google/vr/inputcompanion/components/NativeGvrControllerComponent;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/google/vr/inputcompanion/components/NativeGvrControllerComponent;->stateGraphicView:Landroid/widget/ImageView;

    return-object v0
.end method

.method private static getImageResIdFor(II)I
    .locals 1
    .param p0, "apiStatus"    # I
    .param p1, "connectionState"    # I

    .prologue
    .line 270
    if-eqz p0, :cond_0

    .line 271
    sget v0, Lcom/google/vr/inputcompanion/R$mipmap;->gvr_state_controller_error:I

    .line 284
    :goto_0
    return v0

    .line 274
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 284
    sget v0, Lcom/google/vr/inputcompanion/R$mipmap;->gvr_state_controller_disconnected:I

    goto :goto_0

    .line 276
    :pswitch_0
    sget v0, Lcom/google/vr/inputcompanion/R$mipmap;->gvr_state_controller_connected:I

    goto :goto_0

    .line 280
    :pswitch_1
    sget v0, Lcom/google/vr/inputcompanion/R$mipmap;->gvr_state_controller_connecting:I

    goto :goto_0

    .line 274
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getStatusTextResIdFor(II)I
    .locals 1
    .param p0, "apiStatus"    # I
    .param p1, "connectionState"    # I

    .prologue
    .line 236
    packed-switch p0, :pswitch_data_0

    .line 252
    sget v0, Lcom/google/vr/inputcompanion/R$string;->gvr_controller_api_malfunction:I

    .line 265
    :goto_0
    return v0

    .line 240
    :pswitch_0
    sget v0, Lcom/google/vr/inputcompanion/R$string;->gvr_controller_api_unsupported:I

    goto :goto_0

    .line 242
    :pswitch_1
    sget v0, Lcom/google/vr/inputcompanion/R$string;->gvr_controller_api_not_authorized:I

    goto :goto_0

    .line 244
    :pswitch_2
    sget v0, Lcom/google/vr/inputcompanion/R$string;->gvr_controller_api_unavailable:I

    goto :goto_0

    .line 246
    :pswitch_3
    sget v0, Lcom/google/vr/inputcompanion/R$string;->gvr_controller_api_service_obsolete:I

    goto :goto_0

    .line 248
    :pswitch_4
    sget v0, Lcom/google/vr/inputcompanion/R$string;->gvr_controller_api_client_obsolete:I

    goto :goto_0

    .line 255
    :pswitch_5
    packed-switch p1, :pswitch_data_1

    .line 265
    sget v0, Lcom/google/vr/inputcompanion/R$string;->gvr_controller_disconnected:I

    goto :goto_0

    .line 257
    :pswitch_6
    sget v0, Lcom/google/vr/inputcompanion/R$string;->gvr_controller_connecting:I

    goto :goto_0

    .line 259
    :pswitch_7
    sget v0, Lcom/google/vr/inputcompanion/R$string;->gvr_controller_scanning:I

    goto :goto_0

    .line 261
    :pswitch_8
    sget v0, Lcom/google/vr/inputcompanion/R$string;->gvr_controller_connected:I

    goto :goto_0

    .line 236
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 255
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_8
    .end packed-switch
.end method

.method private static keyCodeForGvrButton(I)I
    .locals 1
    .param p0, "gvrButtonCode"    # I

    .prologue
    .line 219
    packed-switch p0, :pswitch_data_0

    .line 231
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 221
    :pswitch_0
    const/4 v0, 0x3

    goto :goto_0

    .line 223
    :pswitch_1
    const/16 v0, 0x52

    goto :goto_0

    .line 225
    :pswitch_2
    const/16 v0, 0x19

    goto :goto_0

    .line 227
    :pswitch_3
    const/16 v0, 0x18

    goto :goto_0

    .line 229
    :pswitch_4
    const/16 v0, 0x42

    goto :goto_0

    .line 219
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private sendAccelEvent([FJ)V
    .locals 2
    .param p1, "accel"    # [F
    .param p2, "timestamp"    # J

    .prologue
    .line 197
    invoke-static {p1, p2, p3}, Lcom/google/vr/inputcompanion/ProtoUtils;->accelToProto([FJ)Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;

    move-result-object v0

    .line 198
    .local v0, "proto":Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;
    if-eqz v0, :cond_0

    .line 199
    iget-object v1, p0, Lcom/google/vr/inputcompanion/components/NativeGvrControllerComponent;->clientConnection:Lcom/google/vr/inputcompanion/ClientConnection;

    invoke-virtual {v1, v0}, Lcom/google/vr/inputcompanion/ClientConnection;->sendMessage(Lcom/google/protobuf/nano/MessageNano;)Z

    .line 201
    :cond_0
    return-void
.end method

.method private sendGyroEvent([FJ)V
    .locals 2
    .param p1, "gyro"    # [F
    .param p2, "timestamp"    # J

    .prologue
    .line 190
    invoke-static {p1, p2, p3}, Lcom/google/vr/inputcompanion/ProtoUtils;->gyroToProto([FJ)Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;

    move-result-object v0

    .line 191
    .local v0, "proto":Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;
    if-eqz v0, :cond_0

    .line 192
    iget-object v1, p0, Lcom/google/vr/inputcompanion/components/NativeGvrControllerComponent;->clientConnection:Lcom/google/vr/inputcompanion/ClientConnection;

    invoke-virtual {v1, v0}, Lcom/google/vr/inputcompanion/ClientConnection;->sendMessage(Lcom/google/protobuf/nano/MessageNano;)Z

    .line 194
    :cond_0
    return-void
.end method

.method private sendKeyEvent(IZ)V
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "down"    # Z

    .prologue
    .line 212
    invoke-static {p1, p2}, Lcom/google/vr/inputcompanion/ProtoUtils;->keyToProto(IZ)Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;

    move-result-object v0

    .line 213
    .local v0, "event":Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;
    if-eqz v0, :cond_0

    .line 214
    iget-object v1, p0, Lcom/google/vr/inputcompanion/components/NativeGvrControllerComponent;->clientConnection:Lcom/google/vr/inputcompanion/ClientConnection;

    invoke-virtual {v1, v0}, Lcom/google/vr/inputcompanion/ClientConnection;->sendMessage(Lcom/google/protobuf/nano/MessageNano;)Z

    .line 216
    :cond_0
    return-void
.end method

.method private sendOrientationEvent([FJ)V
    .locals 2
    .param p1, "quaternion"    # [F
    .param p2, "timestamp"    # J

    .prologue
    .line 183
    invoke-static {p2, p3, p1}, Lcom/google/vr/inputcompanion/ProtoUtils;->orientationToProto(J[F)Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;

    move-result-object v0

    .line 184
    .local v0, "proto":Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;
    if-eqz v0, :cond_0

    .line 185
    iget-object v1, p0, Lcom/google/vr/inputcompanion/components/NativeGvrControllerComponent;->clientConnection:Lcom/google/vr/inputcompanion/ClientConnection;

    invoke-virtual {v1, v0}, Lcom/google/vr/inputcompanion/ClientConnection;->sendMessage(Lcom/google/protobuf/nano/MessageNano;)Z

    .line 187
    :cond_0
    return-void
.end method

.method private sendTouchEvent(IFFJ)V
    .locals 10
    .param p1, "action"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "timestamp"    # J

    .prologue
    const/4 v9, 0x1

    .line 204
    const/4 v7, 0x0

    move-wide v0, p4

    move-wide v2, p4

    move v4, p1

    move v5, p2

    move v6, p3

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v9, v9}, Landroid/graphics/Point;-><init>(II)V

    invoke-static {v0, v1}, Lcom/google/vr/inputcompanion/ProtoUtils;->motionToProto(Landroid/view/MotionEvent;Landroid/graphics/Point;)Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;

    move-result-object v8

    .line 206
    .local v8, "event":Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;
    if-eqz v8, :cond_0

    .line 207
    iget-object v0, p0, Lcom/google/vr/inputcompanion/components/NativeGvrControllerComponent;->clientConnection:Lcom/google/vr/inputcompanion/ClientConnection;

    invoke-virtual {v0, v8}, Lcom/google/vr/inputcompanion/ClientConnection;->sendMessage(Lcom/google/protobuf/nano/MessageNano;)Z

    .line 209
    :cond_0
    return-void
.end method

.method private updateState()V
    .locals 15
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .prologue
    .line 136
    iget-object v0, p0, Lcom/google/vr/inputcompanion/components/NativeGvrControllerComponent;->nativeApi:Lcom/google/vr/inputcompanion/components/NativeGvrControllerApi;

    iget-wide v2, p0, Lcom/google/vr/inputcompanion/components/NativeGvrControllerComponent;->nativeContextHandle:J

    iget-wide v4, p0, Lcom/google/vr/inputcompanion/components/NativeGvrControllerComponent;->nativeStateHandle:J

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/google/vr/inputcompanion/components/NativeGvrControllerApi;->stateUpdate(JJ)V

    .line 137
    iget-object v0, p0, Lcom/google/vr/inputcompanion/components/NativeGvrControllerComponent;->nativeApi:Lcom/google/vr/inputcompanion/components/NativeGvrControllerApi;

    iget-wide v2, p0, Lcom/google/vr/inputcompanion/components/NativeGvrControllerComponent;->nativeStateHandle:J

    invoke-virtual {v0, v2, v3}, Lcom/google/vr/inputcompanion/components/NativeGvrControllerApi;->getConnectionState(J)I

    move-result v10

    .line 138
    .local v10, "connectionState":I
    iget-object v0, p0, Lcom/google/vr/inputcompanion/components/NativeGvrControllerComponent;->nativeApi:Lcom/google/vr/inputcompanion/components/NativeGvrControllerApi;

    iget-wide v2, p0, Lcom/google/vr/inputcompanion/components/NativeGvrControllerComponent;->nativeStateHandle:J

    invoke-virtual {v0, v2, v3}, Lcom/google/vr/inputcompanion/components/NativeGvrControllerApi;->getApiStatus(J)I

    move-result v8

    .line 140
    .local v8, "apiStatus":I
    int-to-long v0, v10

    iget-wide v2, p0, Lcom/google/vr/inputcompanion/components/NativeGvrControllerComponent;->lastConnectionState:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    int-to-long v0, v8

    iget-wide v2, p0, Lcom/google/vr/inputcompanion/components/NativeGvrControllerComponent;->lastApiStatus:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 142
    :cond_0
    int-to-long v0, v8

    iput-wide v0, p0, Lcom/google/vr/inputcompanion/components/NativeGvrControllerComponent;->lastApiStatus:J

    .line 143
    int-to-long v0, v10

    iput-wide v0, p0, Lcom/google/vr/inputcompanion/components/NativeGvrControllerComponent;->lastConnectionState:J

    .line 144
    iget-object v0, p0, Lcom/google/vr/inputcompanion/components/NativeGvrControllerComponent;->statusView:Landroid/widget/TextView;

    invoke-static {v8, v10}, Lcom/google/vr/inputcompanion/components/NativeGvrControllerComponent;->getStatusTextResIdFor(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 145
    iget-object v0, p0, Lcom/google/vr/inputcompanion/components/NativeGvrControllerComponent;->stateGraphicView:Landroid/widget/ImageView;

    invoke-static {v8, v10}, Lcom/google/vr/inputcompanion/components/NativeGvrControllerComponent;->getImageResIdFor(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 148
    :cond_1
    iget-object v1, p0, Lcom/google/vr/inputcompanion/components/NativeGvrControllerComponent;->nativeApi:Lcom/google/vr/inputcompanion/components/NativeGvrControllerApi;

    iget-wide v2, p0, Lcom/google/vr/inputcompanion/components/NativeGvrControllerComponent;->nativeStateHandle:J

    iget-object v4, p0, Lcom/google/vr/inputcompanion/components/NativeGvrControllerComponent;->orientation:[F

    iget-object v5, p0, Lcom/google/vr/inputcompanion/components/NativeGvrControllerComponent;->gyro:[F

    iget-object v6, p0, Lcom/google/vr/inputcompanion/components/NativeGvrControllerComponent;->accel:[F

    iget-object v7, p0, Lcom/google/vr/inputcompanion/components/NativeGvrControllerComponent;->timestamps:[J

    invoke-virtual/range {v1 .. v7}, Lcom/google/vr/inputcompanion/components/NativeGvrControllerApi;->getSensors(J[F[F[F[J)V

    .line 149
    iget-object v0, p0, Lcom/google/vr/inputcompanion/components/NativeGvrControllerComponent;->orientation:[F

    iget-object v1, p0, Lcom/google/vr/inputcompanion/components/NativeGvrControllerComponent;->timestamps:[J

    const/4 v2, 0x0

    aget-wide v2, v1, v2

    invoke-direct {p0, v0, v2, v3}, Lcom/google/vr/inputcompanion/components/NativeGvrControllerComponent;->sendOrientationEvent([FJ)V

    .line 150
    iget-object v0, p0, Lcom/google/vr/inputcompanion/components/NativeGvrControllerComponent;->gyro:[F

    iget-object v1, p0, Lcom/google/vr/inputcompanion/components/NativeGvrControllerComponent;->timestamps:[J

    const/4 v2, 0x1

    aget-wide v2, v1, v2

    invoke-direct {p0, v0, v2, v3}, Lcom/google/vr/inputcompanion/components/NativeGvrControllerComponent;->sendGyroEvent([FJ)V

    .line 151
    iget-object v0, p0, Lcom/google/vr/inputcompanion/components/NativeGvrControllerComponent;->accel:[F

    iget-object v1, p0, Lcom/google/vr/inputcompanion/components/NativeGvrControllerComponent;->timestamps:[J

    const/4 v2, 0x2

    aget-wide v2, v1, v2

    invoke-direct {p0, v0, v2, v3}, Lcom/google/vr/inputcompanion/components/NativeGvrControllerComponent;->sendAccelEvent([FJ)V

    .line 153
    iget-object v1, p0, Lcom/google/vr/inputcompanion/components/NativeGvrControllerComponent;->nativeApi:Lcom/google/vr/inputcompanion/components/NativeGvrControllerApi;

    iget-wide v2, p0, Lcom/google/vr/inputcompanion/components/NativeGvrControllerComponent;->nativeStateHandle:J

    iget-object v4, p0, Lcom/google/vr/inputcompanion/components/NativeGvrControllerComponent;->touchFlags:[Z

    iget-object v5, p0, Lcom/google/vr/inputcompanion/components/NativeGvrControllerComponent;->touchPos:[F

    iget-object v6, p0, Lcom/google/vr/inputcompanion/components/NativeGvrControllerComponent;->timestamps:[J

    invoke-virtual/range {v1 .. v6}, Lcom/google/vr/inputcompanion/components/NativeGvrControllerApi;->getTouch(J[Z[F[J)V

    .line 154
    iget-object v0, p0, Lcom/google/vr/inputcompanion/components/NativeGvrControllerComponent;->touchFlags:[Z

    const/4 v1, 0x0

    aget-boolean v11, v0, v1

    .line 155
    .local v11, "isTouching":Z
    iget-object v0, p0, Lcom/google/vr/inputcompanion/components/NativeGvrControllerComponent;->touchFlags:[Z

    const/4 v1, 0x1

    aget-boolean v13, v0, v1

    .line 156
    .local v13, "touchDown":Z
    iget-object v0, p0, Lcom/google/vr/inputcompanion/components/NativeGvrControllerComponent;->touchFlags:[Z

    const/4 v1, 0x2

    aget-boolean v14, v0, v1

    .line 157
    .local v14, "touchUp":Z
    if-eqz v13, :cond_4

    .line 158
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/vr/inputcompanion/components/NativeGvrControllerComponent;->touchPos:[F

    const/4 v2, 0x0

    aget v2, v0, v2

    iget-object v0, p0, Lcom/google/vr/inputcompanion/components/NativeGvrControllerComponent;->touchPos:[F

    const/4 v3, 0x1

    aget v3, v0, v3

    iget-object v0, p0, Lcom/google/vr/inputcompanion/components/NativeGvrControllerComponent;->timestamps:[J

    const/4 v4, 0x0

    aget-wide v4, v0, v4

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/vr/inputcompanion/components/NativeGvrControllerComponent;->sendTouchEvent(IFFJ)V

    .line 165
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/google/vr/inputcompanion/components/NativeGvrControllerComponent;->nativeApi:Lcom/google/vr/inputcompanion/components/NativeGvrControllerApi;

    iget-wide v2, p0, Lcom/google/vr/inputcompanion/components/NativeGvrControllerComponent;->nativeStateHandle:J

    iget-object v4, p0, Lcom/google/vr/inputcompanion/components/NativeGvrControllerComponent;->buttonsDown:[Z

    iget-object v5, p0, Lcom/google/vr/inputcompanion/components/NativeGvrControllerComponent;->buttonsUp:[Z

    iget-object v6, p0, Lcom/google/vr/inputcompanion/components/NativeGvrControllerComponent;->timestamps:[J

    invoke-virtual/range {v1 .. v6}, Lcom/google/vr/inputcompanion/components/NativeGvrControllerApi;->getButtons(J[Z[Z[J)V

    .line 166
    const/4 v9, 0x0

    .local v9, "button":I
    :goto_1
    const/4 v0, 0x6

    if-ge v9, v0, :cond_8

    .line 167
    invoke-static {v9}, Lcom/google/vr/inputcompanion/components/NativeGvrControllerComponent;->keyCodeForGvrButton(I)I

    move-result v12

    .line 168
    .local v12, "keyCode":I
    if-nez v12, :cond_6

    .line 166
    :cond_3
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 159
    .end local v9    # "button":I
    .end local v12    # "keyCode":I
    :cond_4
    if-eqz v14, :cond_5

    .line 160
    const/4 v1, 0x1

    iget-object v0, p0, Lcom/google/vr/inputcompanion/components/NativeGvrControllerComponent;->touchPos:[F

    const/4 v2, 0x0

    aget v2, v0, v2

    iget-object v0, p0, Lcom/google/vr/inputcompanion/components/NativeGvrControllerComponent;->touchPos:[F

    const/4 v3, 0x1

    aget v3, v0, v3

    iget-object v0, p0, Lcom/google/vr/inputcompanion/components/NativeGvrControllerComponent;->timestamps:[J

    const/4 v4, 0x0

    aget-wide v4, v0, v4

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/vr/inputcompanion/components/NativeGvrControllerComponent;->sendTouchEvent(IFFJ)V

    goto :goto_0

    .line 161
    :cond_5
    if-eqz v11, :cond_2

    .line 162
    const/4 v1, 0x2

    iget-object v0, p0, Lcom/google/vr/inputcompanion/components/NativeGvrControllerComponent;->touchPos:[F

    const/4 v2, 0x0

    aget v2, v0, v2

    iget-object v0, p0, Lcom/google/vr/inputcompanion/components/NativeGvrControllerComponent;->touchPos:[F

    const/4 v3, 0x1

    aget v3, v0, v3

    iget-object v0, p0, Lcom/google/vr/inputcompanion/components/NativeGvrControllerComponent;->timestamps:[J

    const/4 v4, 0x0

    aget-wide v4, v0, v4

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/vr/inputcompanion/components/NativeGvrControllerComponent;->sendTouchEvent(IFFJ)V

    goto :goto_0

    .line 171
    .restart local v9    # "button":I
    .restart local v12    # "keyCode":I
    :cond_6
    iget-object v0, p0, Lcom/google/vr/inputcompanion/components/NativeGvrControllerComponent;->buttonsDown:[Z

    aget-boolean v0, v0, v9

    if-eqz v0, :cond_7

    .line 172
    const/4 v0, 0x1

    invoke-direct {p0, v12, v0}, Lcom/google/vr/inputcompanion/components/NativeGvrControllerComponent;->sendKeyEvent(IZ)V

    goto :goto_2

    .line 173
    :cond_7
    iget-object v0, p0, Lcom/google/vr/inputcompanion/components/NativeGvrControllerComponent;->buttonsUp:[Z

    aget-boolean v0, v0, v9

    if-eqz v0, :cond_3

    .line 174
    const/4 v0, 0x0

    invoke-direct {p0, v12, v0}, Lcom/google/vr/inputcompanion/components/NativeGvrControllerComponent;->sendKeyEvent(IZ)V

    goto :goto_2

    .line 178
    .end local v12    # "keyCode":I
    :cond_8
    iget-object v0, p0, Lcom/google/vr/inputcompanion/components/NativeGvrControllerComponent;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/vr/inputcompanion/components/NativeGvrControllerComponent;->updateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 179
    iget-object v0, p0, Lcom/google/vr/inputcompanion/components/NativeGvrControllerComponent;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/vr/inputcompanion/components/NativeGvrControllerComponent;->updateRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x19

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 180
    return-void
.end method


# virtual methods
.method public start()V
    .locals 4

    .prologue
    const-wide/16 v0, -0x1

    .line 98
    iput-wide v0, p0, Lcom/google/vr/inputcompanion/components/NativeGvrControllerComponent;->lastApiStatus:J

    .line 99
    iput-wide v0, p0, Lcom/google/vr/inputcompanion/components/NativeGvrControllerComponent;->lastConnectionState:J

    .line 100
    iget-object v0, p0, Lcom/google/vr/inputcompanion/components/NativeGvrControllerComponent;->nativeApi:Lcom/google/vr/inputcompanion/components/NativeGvrControllerApi;

    iget-object v1, p0, Lcom/google/vr/inputcompanion/components/NativeGvrControllerComponent;->androidAppContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/vr/inputcompanion/components/NativeGvrControllerComponent;->classLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v0, v1, v2}, Lcom/google/vr/inputcompanion/components/NativeGvrControllerApi;->init(Landroid/content/Context;Ljava/lang/ClassLoader;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/vr/inputcompanion/components/NativeGvrControllerComponent;->nativeContextHandle:J

    .line 101
    const-wide/16 v0, 0x0

    iget-wide v2, p0, Lcom/google/vr/inputcompanion/components/NativeGvrControllerComponent;->nativeContextHandle:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 102
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Failed to initialize GVR controller API."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/google/vr/inputcompanion/components/NativeGvrControllerComponent;->nativeApi:Lcom/google/vr/inputcompanion/components/NativeGvrControllerApi;

    invoke-virtual {v0}, Lcom/google/vr/inputcompanion/components/NativeGvrControllerApi;->stateCreate()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/vr/inputcompanion/components/NativeGvrControllerComponent;->nativeStateHandle:J

    .line 105
    iget-object v0, p0, Lcom/google/vr/inputcompanion/components/NativeGvrControllerComponent;->nativeApi:Lcom/google/vr/inputcompanion/components/NativeGvrControllerApi;

    iget-wide v2, p0, Lcom/google/vr/inputcompanion/components/NativeGvrControllerComponent;->nativeContextHandle:J

    invoke-virtual {v0, v2, v3}, Lcom/google/vr/inputcompanion/components/NativeGvrControllerApi;->resume(J)V

    .line 106
    iget-object v0, p0, Lcom/google/vr/inputcompanion/components/NativeGvrControllerComponent;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/vr/inputcompanion/components/NativeGvrControllerComponent;->updateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 107
    iget-object v0, p0, Lcom/google/vr/inputcompanion/components/NativeGvrControllerComponent;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/vr/inputcompanion/components/NativeGvrControllerComponent;->updateRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x19

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 108
    return-void
.end method

.method public stop()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 115
    iget-object v0, p0, Lcom/google/vr/inputcompanion/components/NativeGvrControllerComponent;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/vr/inputcompanion/components/NativeGvrControllerComponent;->updateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 116
    iget-wide v0, p0, Lcom/google/vr/inputcompanion/components/NativeGvrControllerComponent;->nativeStateHandle:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/google/vr/inputcompanion/components/NativeGvrControllerComponent;->nativeApi:Lcom/google/vr/inputcompanion/components/NativeGvrControllerApi;

    iget-wide v2, p0, Lcom/google/vr/inputcompanion/components/NativeGvrControllerComponent;->nativeStateHandle:J

    invoke-virtual {v0, v2, v3}, Lcom/google/vr/inputcompanion/components/NativeGvrControllerApi;->stateDestroy(J)V

    .line 118
    iput-wide v4, p0, Lcom/google/vr/inputcompanion/components/NativeGvrControllerComponent;->nativeStateHandle:J

    .line 120
    :cond_0
    iget-wide v0, p0, Lcom/google/vr/inputcompanion/components/NativeGvrControllerComponent;->nativeContextHandle:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_1

    .line 121
    iget-object v0, p0, Lcom/google/vr/inputcompanion/components/NativeGvrControllerComponent;->nativeApi:Lcom/google/vr/inputcompanion/components/NativeGvrControllerApi;

    iget-wide v2, p0, Lcom/google/vr/inputcompanion/components/NativeGvrControllerComponent;->nativeContextHandle:J

    invoke-virtual {v0, v2, v3}, Lcom/google/vr/inputcompanion/components/NativeGvrControllerApi;->pause(J)V

    .line 122
    iget-object v0, p0, Lcom/google/vr/inputcompanion/components/NativeGvrControllerComponent;->nativeApi:Lcom/google/vr/inputcompanion/components/NativeGvrControllerApi;

    iget-wide v2, p0, Lcom/google/vr/inputcompanion/components/NativeGvrControllerComponent;->nativeContextHandle:J

    invoke-virtual {v0, v2, v3}, Lcom/google/vr/inputcompanion/components/NativeGvrControllerApi;->destroy(J)V

    .line 123
    iput-wide v4, p0, Lcom/google/vr/inputcompanion/components/NativeGvrControllerComponent;->nativeContextHandle:J

    .line 125
    :cond_1
    iget-object v0, p0, Lcom/google/vr/inputcompanion/components/NativeGvrControllerComponent;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/google/vr/inputcompanion/components/NativeGvrControllerComponent$2;

    invoke-direct {v1, p0}, Lcom/google/vr/inputcompanion/components/NativeGvrControllerComponent$2;-><init>(Lcom/google/vr/inputcompanion/components/NativeGvrControllerComponent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 132
    return-void
.end method
