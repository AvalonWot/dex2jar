.class public Lcom/google/vr/sdk/base/GvrActivity;
.super Landroid/app/Activity;
.source "GvrActivity.java"


# instance fields
.field private androidVrModeEnabled:Z

.field private cardboardView:Lcom/google/vr/sdk/base/GvrView;

.field private fullscreenMode:Lcom/google/vr/cardboard/FullscreenMode;

.field private final screenOnFlagHelper:Lcom/google/vrtoolkit/cardboard/ScreenOnFlagHelper;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 42
    new-instance v0, Lcom/google/vrtoolkit/cardboard/ScreenOnFlagHelper;

    invoke-direct {v0, p0}, Lcom/google/vrtoolkit/cardboard/ScreenOnFlagHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/google/vr/sdk/base/GvrActivity;->screenOnFlagHelper:Lcom/google/vrtoolkit/cardboard/ScreenOnFlagHelper;

    return-void
.end method

.method private shouldSuppressKey(I)Z
    .locals 2
    .param p1, "keyCode"    # I

    .prologue
    const/4 v0, 0x0

    .line 241
    iget-boolean v1, p0, Lcom/google/vr/sdk/base/GvrActivity;->androidVrModeEnabled:Z

    if-eqz v1, :cond_1

    .line 242
    const/16 v1, 0x18

    if-eq p1, v1, :cond_0

    const/16 v1, 0x19

    if-ne p1, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 244
    :cond_1
    return v0
.end method


# virtual methods
.method public getGvrView()Lcom/google/vr/sdk/base/GvrView;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/google/vr/sdk/base/GvrActivity;->cardboardView:Lcom/google/vr/sdk/base/GvrView;

    return-object v0
.end method

.method public onCardboardTrigger()V
    .locals 0

    .prologue
    .line 130
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 151
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 153
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/vr/sdk/base/GvrActivity;->requestWindowFeature(I)Z

    .line 155
    new-instance v0, Lcom/google/vr/cardboard/FullscreenMode;

    invoke-virtual {p0}, Lcom/google/vr/sdk/base/GvrActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/vr/cardboard/FullscreenMode;-><init>(Landroid/view/Window;)V

    iput-object v0, p0, Lcom/google/vr/sdk/base/GvrActivity;->fullscreenMode:Lcom/google/vr/cardboard/FullscreenMode;

    .line 156
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 185
    iget-object v0, p0, Lcom/google/vr/sdk/base/GvrActivity;->cardboardView:Lcom/google/vr/sdk/base/GvrView;

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/google/vr/sdk/base/GvrActivity;->cardboardView:Lcom/google/vr/sdk/base/GvrView;

    invoke-virtual {v0, v1}, Lcom/google/vr/sdk/base/GvrView;->setOnCardboardTriggerListener(Ljava/lang/Runnable;)V

    .line 187
    iget-object v0, p0, Lcom/google/vr/sdk/base/GvrActivity;->cardboardView:Lcom/google/vr/sdk/base/GvrView;

    invoke-virtual {v0}, Lcom/google/vr/sdk/base/GvrView;->shutdown()V

    .line 188
    iput-object v1, p0, Lcom/google/vr/sdk/base/GvrActivity;->cardboardView:Lcom/google/vr/sdk/base/GvrView;

    .line 191
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 192
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 218
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/base/GvrActivity;->shouldSuppressKey(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 225
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/base/GvrActivity;->shouldSuppressKey(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 174
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 175
    iget-object v0, p0, Lcom/google/vr/sdk/base/GvrActivity;->cardboardView:Lcom/google/vr/sdk/base/GvrView;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/google/vr/sdk/base/GvrActivity;->cardboardView:Lcom/google/vr/sdk/base/GvrView;

    invoke-virtual {v0}, Lcom/google/vr/sdk/base/GvrView;->onPause()V

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/base/GvrActivity;->screenOnFlagHelper:Lcom/google/vrtoolkit/cardboard/ScreenOnFlagHelper;

    invoke-virtual {v0}, Lcom/google/vrtoolkit/cardboard/ScreenOnFlagHelper;->stop()V

    .line 180
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 161
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 163
    iget-object v0, p0, Lcom/google/vr/sdk/base/GvrActivity;->cardboardView:Lcom/google/vr/sdk/base/GvrView;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/google/vr/sdk/base/GvrActivity;->cardboardView:Lcom/google/vr/sdk/base/GvrView;

    invoke-virtual {v0}, Lcom/google/vr/sdk/base/GvrView;->onResume()V

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/base/GvrActivity;->fullscreenMode:Lcom/google/vr/cardboard/FullscreenMode;

    invoke-virtual {v0}, Lcom/google/vr/cardboard/FullscreenMode;->goFullscreen()V

    .line 168
    iget-object v0, p0, Lcom/google/vr/sdk/base/GvrActivity;->screenOnFlagHelper:Lcom/google/vrtoolkit/cardboard/ScreenOnFlagHelper;

    invoke-virtual {v0}, Lcom/google/vrtoolkit/cardboard/ScreenOnFlagHelper;->start()V

    .line 169
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasFocus"    # Z

    .prologue
    .line 231
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 232
    iget-object v0, p0, Lcom/google/vr/sdk/base/GvrActivity;->fullscreenMode:Lcom/google/vr/cardboard/FullscreenMode;

    invoke-virtual {v0, p1}, Lcom/google/vr/cardboard/FullscreenMode;->onWindowFocusChanged(Z)V

    .line 233
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 197
    instance-of v0, p1, Lcom/google/vr/sdk/base/GvrView;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 198
    check-cast v0, Lcom/google/vr/sdk/base/GvrView;

    invoke-virtual {p0, v0}, Lcom/google/vr/sdk/base/GvrActivity;->setGvrView(Lcom/google/vr/sdk/base/GvrView;)V

    .line 201
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 202
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 207
    instance-of v0, p1, Lcom/google/vr/sdk/base/GvrView;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 208
    check-cast v0, Lcom/google/vr/sdk/base/GvrView;

    invoke-virtual {p0, v0}, Lcom/google/vr/sdk/base/GvrActivity;->setGvrView(Lcom/google/vr/sdk/base/GvrView;)V

    .line 211
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 212
    return-void
.end method

.method public setGvrView(Lcom/google/vr/sdk/base/GvrView;)V
    .locals 1
    .param p1, "gvrView"    # Lcom/google/vr/sdk/base/GvrView;

    .prologue
    .line 63
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/vr/sdk/base/GvrActivity;->setGvrView(Lcom/google/vr/sdk/base/GvrView;Z)V

    .line 64
    return-void
.end method

.method public setGvrView(Lcom/google/vr/sdk/base/GvrView;Z)V
    .locals 5
    .param p1, "gvrView"    # Lcom/google/vr/sdk/base/GvrView;
    .param p2, "enableVrModeFallbacks"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 87
    iget-object v1, p0, Lcom/google/vr/sdk/base/GvrActivity;->cardboardView:Lcom/google/vr/sdk/base/GvrView;

    if-ne v1, p1, :cond_1

    .line 112
    :cond_0
    :goto_0
    return-void

    .line 91
    :cond_1
    iget-object v1, p0, Lcom/google/vr/sdk/base/GvrActivity;->cardboardView:Lcom/google/vr/sdk/base/GvrView;

    if-eqz v1, :cond_2

    .line 92
    iget-object v1, p0, Lcom/google/vr/sdk/base/GvrActivity;->cardboardView:Lcom/google/vr/sdk/base/GvrView;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/google/vr/sdk/base/GvrView;->setOnCardboardTriggerListener(Ljava/lang/Runnable;)V

    .line 95
    :cond_2
    iput-object p1, p0, Lcom/google/vr/sdk/base/GvrActivity;->cardboardView:Lcom/google/vr/sdk/base/GvrView;

    .line 97
    if-eqz p1, :cond_3

    move v0, v2

    .line 98
    .local v0, "enableAndroidVrMode":Z
    :goto_1
    if-eqz p2, :cond_4

    move v1, v2

    :goto_2
    invoke-static {p0, v0, v1}, Lcom/google/vr/cardboard/AndroidNCompat;->setVrModeEnabled(Landroid/app/Activity;ZI)Z

    move-result v1

    if-eqz v1, :cond_5

    if-eqz v0, :cond_5

    :goto_3
    iput-boolean v2, p0, Lcom/google/vr/sdk/base/GvrActivity;->androidVrModeEnabled:Z

    .line 102
    if-eqz p1, :cond_0

    .line 106
    new-instance v1, Lcom/google/vr/sdk/base/GvrActivity$1;

    invoke-direct {v1, p0}, Lcom/google/vr/sdk/base/GvrActivity$1;-><init>(Lcom/google/vr/sdk/base/GvrActivity;)V

    invoke-virtual {p1, v1}, Lcom/google/vr/sdk/base/GvrView;->setOnCardboardTriggerListener(Ljava/lang/Runnable;)V

    goto :goto_0

    .end local v0    # "enableAndroidVrMode":Z
    :cond_3
    move v0, v3

    .line 97
    goto :goto_1

    .restart local v0    # "enableAndroidVrMode":Z
    :cond_4
    move v1, v3

    .line 99
    goto :goto_2

    :cond_5
    move v2, v3

    .line 98
    goto :goto_3
.end method

.method public setScreenAlwaysOn(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 237
    iget-object v0, p0, Lcom/google/vr/sdk/base/GvrActivity;->screenOnFlagHelper:Lcom/google/vrtoolkit/cardboard/ScreenOnFlagHelper;

    invoke-virtual {v0, p1}, Lcom/google/vrtoolkit/cardboard/ScreenOnFlagHelper;->setScreenAlwaysOn(Z)V

    .line 238
    return-void
.end method

.method protected updateGvrViewerParams(Lcom/google/vr/sdk/base/GvrViewerParams;)V
    .locals 1
    .param p1, "newParams"    # Lcom/google/vr/sdk/base/GvrViewerParams;

    .prologue
    .line 143
    iget-object v0, p0, Lcom/google/vr/sdk/base/GvrActivity;->cardboardView:Lcom/google/vr/sdk/base/GvrView;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/google/vr/sdk/base/GvrActivity;->cardboardView:Lcom/google/vr/sdk/base/GvrView;

    invoke-virtual {v0, p1}, Lcom/google/vr/sdk/base/GvrView;->updateGvrViewerParams(Lcom/google/vr/sdk/base/GvrViewerParams;)V

    .line 146
    :cond_0
    return-void
.end method
