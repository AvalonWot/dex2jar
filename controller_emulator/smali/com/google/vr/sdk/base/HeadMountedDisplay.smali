.class public Lcom/google/vr/sdk/base/HeadMountedDisplay;
.super Ljava/lang/Object;
.source "HeadMountedDisplay.java"


# instance fields
.field private cardboardDevice:Lcom/google/vr/sdk/base/GvrViewerParams;

.field private screen:Lcom/google/vr/sdk/base/ScreenParams;


# direct methods
.method public constructor <init>(Lcom/google/vr/sdk/base/HeadMountedDisplay;)V
    .locals 2
    .param p1, "hmd"    # Lcom/google/vr/sdk/base/HeadMountedDisplay;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Lcom/google/vr/sdk/base/ScreenParams;

    iget-object v1, p1, Lcom/google/vr/sdk/base/HeadMountedDisplay;->screen:Lcom/google/vr/sdk/base/ScreenParams;

    invoke-direct {v0, v1}, Lcom/google/vr/sdk/base/ScreenParams;-><init>(Lcom/google/vr/sdk/base/ScreenParams;)V

    iput-object v0, p0, Lcom/google/vr/sdk/base/HeadMountedDisplay;->screen:Lcom/google/vr/sdk/base/ScreenParams;

    .line 49
    new-instance v0, Lcom/google/vr/sdk/base/GvrViewerParams;

    iget-object v1, p1, Lcom/google/vr/sdk/base/HeadMountedDisplay;->cardboardDevice:Lcom/google/vr/sdk/base/GvrViewerParams;

    invoke-direct {v0, v1}, Lcom/google/vr/sdk/base/GvrViewerParams;-><init>(Lcom/google/vr/sdk/base/GvrViewerParams;)V

    iput-object v0, p0, Lcom/google/vr/sdk/base/HeadMountedDisplay;->cardboardDevice:Lcom/google/vr/sdk/base/GvrViewerParams;

    .line 50
    return-void
.end method

.method public constructor <init>(Lcom/google/vr/sdk/base/ScreenParams;Lcom/google/vr/sdk/base/GvrViewerParams;)V
    .locals 0
    .param p1, "screenParams"    # Lcom/google/vr/sdk/base/ScreenParams;
    .param p2, "gvrViewerParams"    # Lcom/google/vr/sdk/base/GvrViewerParams;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/google/vr/sdk/base/HeadMountedDisplay;->screen:Lcom/google/vr/sdk/base/ScreenParams;

    .line 39
    iput-object p2, p0, Lcom/google/vr/sdk/base/HeadMountedDisplay;->cardboardDevice:Lcom/google/vr/sdk/base/GvrViewerParams;

    .line 40
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 96
    if-nez p1, :cond_1

    .line 107
    :cond_0
    :goto_0
    return v2

    .line 99
    :cond_1
    if-ne p1, p0, :cond_2

    move v2, v1

    .line 100
    goto :goto_0

    .line 102
    :cond_2
    instance-of v3, p1, Lcom/google/vr/sdk/base/HeadMountedDisplay;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 105
    check-cast v0, Lcom/google/vr/sdk/base/HeadMountedDisplay;

    .line 107
    .local v0, "o":Lcom/google/vr/sdk/base/HeadMountedDisplay;
    iget-object v3, p0, Lcom/google/vr/sdk/base/HeadMountedDisplay;->screen:Lcom/google/vr/sdk/base/ScreenParams;

    iget-object v4, v0, Lcom/google/vr/sdk/base/HeadMountedDisplay;->screen:Lcom/google/vr/sdk/base/ScreenParams;

    invoke-virtual {v3, v4}, Lcom/google/vr/sdk/base/ScreenParams;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/vr/sdk/base/HeadMountedDisplay;->cardboardDevice:Lcom/google/vr/sdk/base/GvrViewerParams;

    iget-object v4, v0, Lcom/google/vr/sdk/base/HeadMountedDisplay;->cardboardDevice:Lcom/google/vr/sdk/base/GvrViewerParams;

    .line 108
    invoke-virtual {v3, v4}, Lcom/google/vr/sdk/base/GvrViewerParams;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :goto_1
    move v2, v1

    .line 107
    goto :goto_0

    :cond_3
    move v1, v2

    .line 108
    goto :goto_1
.end method

.method public getGvrViewerParams()Lcom/google/vr/sdk/base/GvrViewerParams;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/google/vr/sdk/base/HeadMountedDisplay;->cardboardDevice:Lcom/google/vr/sdk/base/GvrViewerParams;

    return-object v0
.end method

.method public getScreenParams()Lcom/google/vr/sdk/base/ScreenParams;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/vr/sdk/base/HeadMountedDisplay;->screen:Lcom/google/vr/sdk/base/ScreenParams;

    return-object v0
.end method

.method public setGvrViewerParams(Lcom/google/vr/sdk/base/GvrViewerParams;)V
    .locals 1
    .param p1, "gvrViewerParams"    # Lcom/google/vr/sdk/base/GvrViewerParams;

    .prologue
    .line 76
    new-instance v0, Lcom/google/vr/sdk/base/GvrViewerParams;

    invoke-direct {v0, p1}, Lcom/google/vr/sdk/base/GvrViewerParams;-><init>(Lcom/google/vr/sdk/base/GvrViewerParams;)V

    iput-object v0, p0, Lcom/google/vr/sdk/base/HeadMountedDisplay;->cardboardDevice:Lcom/google/vr/sdk/base/GvrViewerParams;

    .line 77
    return-void
.end method

.method public setScreenParams(Lcom/google/vr/sdk/base/ScreenParams;)V
    .locals 1
    .param p1, "screen"    # Lcom/google/vr/sdk/base/ScreenParams;

    .prologue
    .line 58
    new-instance v0, Lcom/google/vr/sdk/base/ScreenParams;

    invoke-direct {v0, p1}, Lcom/google/vr/sdk/base/ScreenParams;-><init>(Lcom/google/vr/sdk/base/ScreenParams;)V

    iput-object v0, p0, Lcom/google/vr/sdk/base/HeadMountedDisplay;->screen:Lcom/google/vr/sdk/base/ScreenParams;

    .line 59
    return-void
.end method
