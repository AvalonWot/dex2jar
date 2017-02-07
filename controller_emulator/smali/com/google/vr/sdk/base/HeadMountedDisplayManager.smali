.class public Lcom/google/vr/sdk/base/HeadMountedDisplayManager;
.super Ljava/lang/Object;
.source "HeadMountedDisplayManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HeadMountedDisplayManager"


# instance fields
.field private final context:Landroid/content/Context;

.field private final hmd:Lcom/google/vr/sdk/base/HeadMountedDisplay;

.field private final paramsProvider:Lcom/google/vr/cardboard/VrParamsProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/google/vr/sdk/base/HeadMountedDisplayManager;->context:Landroid/content/Context;

    .line 52
    invoke-static {p1}, Lcom/google/vr/cardboard/VrParamsProviderFactory;->create(Landroid/content/Context;)Lcom/google/vr/cardboard/VrParamsProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vr/sdk/base/HeadMountedDisplayManager;->paramsProvider:Lcom/google/vr/cardboard/VrParamsProvider;

    .line 53
    new-instance v0, Lcom/google/vr/sdk/base/HeadMountedDisplay;

    invoke-direct {p0}, Lcom/google/vr/sdk/base/HeadMountedDisplayManager;->createScreenParams()Lcom/google/vr/sdk/base/ScreenParams;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/vr/sdk/base/HeadMountedDisplayManager;->createGvrViewerParams()Lcom/google/vr/sdk/base/GvrViewerParams;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/vr/sdk/base/HeadMountedDisplay;-><init>(Lcom/google/vr/sdk/base/ScreenParams;Lcom/google/vr/sdk/base/GvrViewerParams;)V

    iput-object v0, p0, Lcom/google/vr/sdk/base/HeadMountedDisplayManager;->hmd:Lcom/google/vr/sdk/base/HeadMountedDisplay;

    .line 54
    return-void
.end method

.method private createGvrViewerParams()Lcom/google/vr/sdk/base/GvrViewerParams;
    .locals 2

    .prologue
    .line 172
    new-instance v0, Lcom/google/vr/sdk/base/GvrViewerParams;

    iget-object v1, p0, Lcom/google/vr/sdk/base/HeadMountedDisplayManager;->paramsProvider:Lcom/google/vr/cardboard/VrParamsProvider;

    invoke-interface {v1}, Lcom/google/vr/cardboard/VrParamsProvider;->readDeviceParams()Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/vr/sdk/base/GvrViewerParams;-><init>(Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;)V

    return-object v0
.end method

.method private createScreenParams()Lcom/google/vr/sdk/base/ScreenParams;
    .locals 3

    .prologue
    .line 162
    invoke-direct {p0}, Lcom/google/vr/sdk/base/HeadMountedDisplayManager;->getDisplay()Landroid/view/Display;

    move-result-object v0

    .line 163
    .local v0, "display":Landroid/view/Display;
    iget-object v2, p0, Lcom/google/vr/sdk/base/HeadMountedDisplayManager;->paramsProvider:Lcom/google/vr/cardboard/VrParamsProvider;

    invoke-interface {v2}, Lcom/google/vr/cardboard/VrParamsProvider;->readPhoneParams()Lcom/google/vrtoolkit/cardboard/proto/nano/Phone$PhoneParams;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/vr/sdk/base/ScreenParams;->fromProto(Landroid/view/Display;Lcom/google/vrtoolkit/cardboard/proto/nano/Phone$PhoneParams;)Lcom/google/vr/sdk/base/ScreenParams;

    move-result-object v1

    .line 164
    .local v1, "params":Lcom/google/vr/sdk/base/ScreenParams;
    if-eqz v1, :cond_0

    .end local v1    # "params":Lcom/google/vr/sdk/base/ScreenParams;
    :goto_0
    return-object v1

    .restart local v1    # "params":Lcom/google/vr/sdk/base/ScreenParams;
    :cond_0
    new-instance v1, Lcom/google/vr/sdk/base/ScreenParams;

    .end local v1    # "params":Lcom/google/vr/sdk/base/ScreenParams;
    invoke-direct {v1, v0}, Lcom/google/vr/sdk/base/ScreenParams;-><init>(Landroid/view/Display;)V

    goto :goto_0
.end method

.method private getDisplay()Landroid/view/Display;
    .locals 3

    .prologue
    .line 153
    iget-object v1, p0, Lcom/google/vr/sdk/base/HeadMountedDisplayManager;->context:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 154
    .local v0, "windowManager":Landroid/view/WindowManager;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public getHeadMountedDisplay()Lcom/google/vr/sdk/base/HeadMountedDisplay;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/vr/sdk/base/HeadMountedDisplayManager;->hmd:Lcom/google/vr/sdk/base/HeadMountedDisplay;

    return-object v0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 109
    return-void
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 85
    iget-object v4, p0, Lcom/google/vr/sdk/base/HeadMountedDisplayManager;->paramsProvider:Lcom/google/vr/cardboard/VrParamsProvider;

    invoke-interface {v4}, Lcom/google/vr/cardboard/VrParamsProvider;->readDeviceParams()Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;

    move-result-object v1

    .line 86
    .local v1, "deviceProto":Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;
    if-eqz v1, :cond_3

    .line 87
    new-instance v0, Lcom/google/vr/sdk/base/GvrViewerParams;

    invoke-direct {v0, v1}, Lcom/google/vr/sdk/base/GvrViewerParams;-><init>(Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;)V

    .line 88
    .local v0, "deviceParams":Lcom/google/vr/sdk/base/GvrViewerParams;
    :goto_0
    if-eqz v0, :cond_0

    iget-object v4, p0, Lcom/google/vr/sdk/base/HeadMountedDisplayManager;->hmd:Lcom/google/vr/sdk/base/HeadMountedDisplay;

    invoke-virtual {v4}, Lcom/google/vr/sdk/base/HeadMountedDisplay;->getGvrViewerParams()Lcom/google/vr/sdk/base/GvrViewerParams;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/vr/sdk/base/GvrViewerParams;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 89
    iget-object v4, p0, Lcom/google/vr/sdk/base/HeadMountedDisplayManager;->hmd:Lcom/google/vr/sdk/base/HeadMountedDisplay;

    invoke-virtual {v4, v0}, Lcom/google/vr/sdk/base/HeadMountedDisplay;->setGvrViewerParams(Lcom/google/vr/sdk/base/GvrViewerParams;)V

    .line 90
    const-string v4, "HeadMountedDisplayManager"

    const-string v5, "Successfully read updated device params from external storage"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :cond_0
    iget-object v4, p0, Lcom/google/vr/sdk/base/HeadMountedDisplayManager;->paramsProvider:Lcom/google/vr/cardboard/VrParamsProvider;

    invoke-interface {v4}, Lcom/google/vr/cardboard/VrParamsProvider;->readPhoneParams()Lcom/google/vrtoolkit/cardboard/proto/nano/Phone$PhoneParams;

    move-result-object v2

    .line 94
    .local v2, "phoneProto":Lcom/google/vrtoolkit/cardboard/proto/nano/Phone$PhoneParams;
    if-eqz v2, :cond_1

    .line 95
    invoke-direct {p0}, Lcom/google/vr/sdk/base/HeadMountedDisplayManager;->getDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/google/vr/sdk/base/ScreenParams;->fromProto(Landroid/view/Display;Lcom/google/vrtoolkit/cardboard/proto/nano/Phone$PhoneParams;)Lcom/google/vr/sdk/base/ScreenParams;

    move-result-object v3

    .line 96
    .local v3, "screenParams":Lcom/google/vr/sdk/base/ScreenParams;
    :cond_1
    if-eqz v3, :cond_2

    iget-object v4, p0, Lcom/google/vr/sdk/base/HeadMountedDisplayManager;->hmd:Lcom/google/vr/sdk/base/HeadMountedDisplay;

    invoke-virtual {v4}, Lcom/google/vr/sdk/base/HeadMountedDisplay;->getScreenParams()Lcom/google/vr/sdk/base/ScreenParams;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/vr/sdk/base/ScreenParams;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 97
    iget-object v4, p0, Lcom/google/vr/sdk/base/HeadMountedDisplayManager;->hmd:Lcom/google/vr/sdk/base/HeadMountedDisplay;

    invoke-virtual {v4, v3}, Lcom/google/vr/sdk/base/HeadMountedDisplay;->setScreenParams(Lcom/google/vr/sdk/base/ScreenParams;)V

    .line 98
    const-string v4, "HeadMountedDisplayManager"

    const-string v5, "Successfully read updated screen params from external storage"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :cond_2
    return-void

    .end local v0    # "deviceParams":Lcom/google/vr/sdk/base/GvrViewerParams;
    .end local v2    # "phoneProto":Lcom/google/vrtoolkit/cardboard/proto/nano/Phone$PhoneParams;
    .end local v3    # "screenParams":Lcom/google/vr/sdk/base/ScreenParams;
    :cond_3
    move-object v0, v3

    .line 87
    goto :goto_0
.end method

.method public updateGvrViewerParams(Lcom/google/vr/sdk/base/GvrViewerParams;)Z
    .locals 2
    .param p1, "gvrViewerParams"    # Lcom/google/vr/sdk/base/GvrViewerParams;

    .prologue
    .line 128
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/vr/sdk/base/HeadMountedDisplayManager;->hmd:Lcom/google/vr/sdk/base/HeadMountedDisplay;

    invoke-virtual {v0}, Lcom/google/vr/sdk/base/HeadMountedDisplay;->getGvrViewerParams()Lcom/google/vr/sdk/base/GvrViewerParams;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/vr/sdk/base/GvrViewerParams;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 129
    :cond_0
    const/4 v0, 0x0

    .line 135
    :goto_0
    return v0

    .line 133
    :cond_1
    iget-object v0, p0, Lcom/google/vr/sdk/base/HeadMountedDisplayManager;->hmd:Lcom/google/vr/sdk/base/HeadMountedDisplay;

    invoke-virtual {v0, p1}, Lcom/google/vr/sdk/base/HeadMountedDisplay;->setGvrViewerParams(Lcom/google/vr/sdk/base/GvrViewerParams;)V

    .line 134
    iget-object v0, p0, Lcom/google/vr/sdk/base/HeadMountedDisplayManager;->paramsProvider:Lcom/google/vr/cardboard/VrParamsProvider;

    invoke-virtual {p1}, Lcom/google/vr/sdk/base/GvrViewerParams;->toProtobuf()Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/vr/cardboard/VrParamsProvider;->writeDeviceParams(Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;)Z

    .line 135
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public updateScreenParams(Lcom/google/vr/sdk/base/ScreenParams;)Z
    .locals 1
    .param p1, "screenParams"    # Lcom/google/vr/sdk/base/ScreenParams;

    .prologue
    .line 145
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/vr/sdk/base/HeadMountedDisplayManager;->hmd:Lcom/google/vr/sdk/base/HeadMountedDisplay;

    invoke-virtual {v0}, Lcom/google/vr/sdk/base/HeadMountedDisplay;->getScreenParams()Lcom/google/vr/sdk/base/ScreenParams;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/vr/sdk/base/ScreenParams;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 146
    :cond_0
    const/4 v0, 0x0

    .line 149
    :goto_0
    return v0

    .line 148
    :cond_1
    iget-object v0, p0, Lcom/google/vr/sdk/base/HeadMountedDisplayManager;->hmd:Lcom/google/vr/sdk/base/HeadMountedDisplay;

    invoke-virtual {v0, p1}, Lcom/google/vr/sdk/base/HeadMountedDisplay;->setScreenParams(Lcom/google/vr/sdk/base/ScreenParams;)V

    .line 149
    const/4 v0, 0x1

    goto :goto_0
.end method
