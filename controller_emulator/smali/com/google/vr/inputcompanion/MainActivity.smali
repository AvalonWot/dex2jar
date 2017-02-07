.class public Lcom/google/vr/inputcompanion/MainActivity;
.super Lcom/google/vr/inputcompanion/BaseActivity;
.source "MainActivity.java"

# interfaces
.implements Lcom/google/vr/inputcompanion/KeyEventSource;
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;
.implements Landroid/widget/PopupMenu$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/inputcompanion/MainActivity$Mode;
    }
.end annotation


# static fields
.field private static final SOCKET_PORT:I = 0x1b5b

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private bluetoothSocketServer:Lcom/google/vr/inputcompanion/BluetoothSocketServer;

.field private controllerSizeAdjuster:Lcom/google/vr/inputcompanion/ControllerSizeAdjuster;

.field private gvrLayout:Lcom/google/vr/ndk/base/GvrLayout;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private handler:Landroid/os/Handler;

.field private keyListener:Landroid/view/View$OnKeyListener;

.field private mode:Lcom/google/vr/inputcompanion/MainActivity$Mode;

.field private networkSocketServer:Lcom/google/vr/inputcompanion/NetworkSocketServer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-class v0, Lcom/google/vr/inputcompanion/MainActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/vr/inputcompanion/MainActivity;->TAG:Ljava/lang/String;

    .line 77
    const-string v0, "controller_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 78
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/google/vr/inputcompanion/BaseActivity;-><init>()V

    .line 66
    sget-object v0, Lcom/google/vr/inputcompanion/MainActivity$Mode;->EMULATED_CONTROLLER:Lcom/google/vr/inputcompanion/MainActivity$Mode;

    iput-object v0, p0, Lcom/google/vr/inputcompanion/MainActivity;->mode:Lcom/google/vr/inputcompanion/MainActivity$Mode;

    return-void
.end method

.method static synthetic access$000(Lcom/google/vr/inputcompanion/MainActivity;)Lcom/google/vr/inputcompanion/ControllerSizeAdjuster;
    .locals 1
    .param p0, "x0"    # Lcom/google/vr/inputcompanion/MainActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/vr/inputcompanion/MainActivity;->controllerSizeAdjuster:Lcom/google/vr/inputcompanion/ControllerSizeAdjuster;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/vr/inputcompanion/MainActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/vr/inputcompanion/MainActivity;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/google/vr/inputcompanion/MainActivity;->updateScaleDisplay()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/vr/inputcompanion/MainActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/google/vr/inputcompanion/MainActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/google/vr/inputcompanion/MainActivity;->showAdjustSizeUi(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/vr/inputcompanion/MainActivity;Lcom/google/vr/inputcompanion/MainActivity$Mode;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/vr/inputcompanion/MainActivity;
    .param p1, "x1"    # Lcom/google/vr/inputcompanion/MainActivity$Mode;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/google/vr/inputcompanion/MainActivity;->setMode(Lcom/google/vr/inputcompanion/MainActivity$Mode;)V

    return-void
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/google/vr/inputcompanion/MainActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/vr/inputcompanion/MainActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/google/vr/inputcompanion/MainActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/vr/inputcompanion/MainActivity;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/vr/inputcompanion/MainActivity;)Lcom/google/vr/inputcompanion/MainActivity$Mode;
    .locals 1
    .param p0, "x0"    # Lcom/google/vr/inputcompanion/MainActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/vr/inputcompanion/MainActivity;->mode:Lcom/google/vr/inputcompanion/MainActivity$Mode;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/vr/inputcompanion/MainActivity;)Lcom/google/vr/ndk/base/GvrLayout;
    .locals 1
    .param p0, "x0"    # Lcom/google/vr/inputcompanion/MainActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/vr/inputcompanion/MainActivity;->gvrLayout:Lcom/google/vr/ndk/base/GvrLayout;

    return-object v0
.end method

.method private getLocalIpAddress()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 233
    const-string v3, "wifi"

    invoke-virtual {p0, v3}, Lcom/google/vr/inputcompanion/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 234
    .local v1, "wifiManager":Landroid/net/wifi/WifiManager;
    if-nez v1, :cond_0

    .line 235
    sget-object v3, Lcom/google/vr/inputcompanion/MainActivity;->TAG:Ljava/lang/String;

    const-string v4, "Wi-Fi manager not found."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    :goto_0
    return-object v2

    .line 238
    :cond_0
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 239
    .local v0, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-nez v0, :cond_1

    .line 240
    sget-object v3, Lcom/google/vr/inputcompanion/MainActivity;->TAG:Ljava/lang/String;

    const-string v4, "Error obtaining Wi-Fi info."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 243
    :cond_1
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v2

    invoke-static {v2}, Lcom/google/vr/inputcompanion/MainActivity;->ipAddressToString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private getVersionName()Ljava/lang/String;
    .locals 5

    .prologue
    .line 153
    invoke-virtual {p0}, Lcom/google/vr/inputcompanion/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 154
    .local v2, "pm":Landroid/content/pm/PackageManager;
    if-nez v2, :cond_0

    .line 155
    sget-object v3, Lcom/google/vr/inputcompanion/MainActivity;->TAG:Ljava/lang/String;

    const-string v4, "Can\'t find PackageManager."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    const-string v3, "???"

    .line 169
    :goto_0
    return-object v3

    .line 159
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/vr/inputcompanion/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 160
    .local v1, "info":Landroid/content/pm/PackageInfo;
    if-nez v1, :cond_1

    .line 161
    sget-object v3, Lcom/google/vr/inputcompanion/MainActivity;->TAG:Ljava/lang/String;

    const-string v4, "Can\'t find package info."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    const-string v3, "???"

    goto :goto_0

    .line 164
    :cond_1
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 165
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 167
    .local v0, "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 168
    sget-object v3, Lcom/google/vr/inputcompanion/MainActivity;->TAG:Ljava/lang/String;

    const-string v4, "Error while querying our own package in PackageManager."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    const-string v3, "???"

    goto :goto_0
.end method

.method private initGvrLayout()V
    .locals 3

    .prologue
    .line 422
    new-instance v1, Lcom/google/vr/ndk/base/GvrLayout;

    invoke-direct {v1, p0}, Lcom/google/vr/ndk/base/GvrLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/vr/inputcompanion/MainActivity;->gvrLayout:Lcom/google/vr/ndk/base/GvrLayout;

    .line 423
    sget v1, Lcom/google/vr/inputcompanion/R$id;->real_controller_ui:I

    invoke-virtual {p0, v1}, Lcom/google/vr/inputcompanion/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 424
    .local v0, "parent":Landroid/view/ViewGroup;
    iget-object v1, p0, Lcom/google/vr/inputcompanion/MainActivity;->gvrLayout:Lcom/google/vr/ndk/base/GvrLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 425
    return-void
.end method

.method private static ipAddressToString(I)Ljava/lang/String;
    .locals 3
    .param p0, "ipAddress"    # I

    .prologue
    .line 247
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 248
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x4

    if-ge v0, v2, :cond_1

    .line 249
    and-int/lit16 v2, p0, 0xff

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 250
    const/4 v2, 0x3

    if-ge v0, v2, :cond_0

    .line 251
    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    :cond_0
    add-int/lit8 v0, v0, 0x1

    shr-int/lit8 p0, p0, 0x8

    goto :goto_0

    .line 254
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private setMode(Lcom/google/vr/inputcompanion/MainActivity$Mode;)V
    .locals 5
    .param p1, "newMode"    # Lcom/google/vr/inputcompanion/MainActivity$Mode;

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 383
    iget-object v0, p0, Lcom/google/vr/inputcompanion/MainActivity;->mode:Lcom/google/vr/inputcompanion/MainActivity$Mode;

    if-ne v0, p1, :cond_0

    .line 384
    sget-object v0, Lcom/google/vr/inputcompanion/MainActivity;->TAG:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x2c

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Redundant mode change requested, already at "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    :goto_0
    return-void

    .line 387
    :cond_0
    iput-object p1, p0, Lcom/google/vr/inputcompanion/MainActivity;->mode:Lcom/google/vr/inputcompanion/MainActivity$Mode;

    .line 389
    iget-object v0, p0, Lcom/google/vr/inputcompanion/MainActivity;->mode:Lcom/google/vr/inputcompanion/MainActivity$Mode;

    sget-object v3, Lcom/google/vr/inputcompanion/MainActivity$Mode;->REAL_CONTROLLER:Lcom/google/vr/inputcompanion/MainActivity$Mode;

    if-ne v0, v3, :cond_2

    .line 390
    invoke-direct {p0}, Lcom/google/vr/inputcompanion/MainActivity;->stopCapturingTouchAndSensors()V

    .line 391
    sget-object v0, Lcom/google/vr/inputcompanion/MainActivity$Mode;->REAL_CONTROLLER:Lcom/google/vr/inputcompanion/MainActivity$Mode;

    iput-object v0, p0, Lcom/google/vr/inputcompanion/MainActivity;->mode:Lcom/google/vr/inputcompanion/MainActivity$Mode;

    .line 392
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/google/vr/ndk/base/AndroidCompat;->setVrModeEnabled(Landroid/app/Activity;Z)Z

    .line 393
    iget-object v0, p0, Lcom/google/vr/inputcompanion/MainActivity;->gvrLayout:Lcom/google/vr/ndk/base/GvrLayout;

    if-nez v0, :cond_1

    .line 394
    invoke-direct {p0}, Lcom/google/vr/inputcompanion/MainActivity;->initGvrLayout()V

    .line 396
    :cond_1
    iget-object v0, p0, Lcom/google/vr/inputcompanion/MainActivity;->gvrLayout:Lcom/google/vr/ndk/base/GvrLayout;

    invoke-virtual {v0}, Lcom/google/vr/ndk/base/GvrLayout;->onResume()V

    .line 397
    sget v0, Lcom/google/vr/inputcompanion/R$id;->gvr_controller_status:I

    invoke-virtual {p0, v0}, Lcom/google/vr/inputcompanion/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v3, Lcom/google/vr/inputcompanion/R$string;->ready_to_use_real_controller:I

    .line 398
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 399
    sget v0, Lcom/google/vr/inputcompanion/R$id;->gvr_controller_state_graphic:I

    invoke-virtual {p0, v0}, Lcom/google/vr/inputcompanion/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sget v3, Lcom/google/vr/inputcompanion/R$mipmap;->gvr_state_waiting_for_desktop:I

    .line 400
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 401
    invoke-direct {p0, v1}, Lcom/google/vr/inputcompanion/MainActivity;->startCapturingTouchAndSensors(Z)V

    .line 413
    :goto_1
    sget v0, Lcom/google/vr/inputcompanion/R$id;->emulated_controller_ui:I

    invoke-virtual {p0, v0}, Lcom/google/vr/inputcompanion/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-object v0, p0, Lcom/google/vr/inputcompanion/MainActivity;->mode:Lcom/google/vr/inputcompanion/MainActivity$Mode;

    sget-object v4, Lcom/google/vr/inputcompanion/MainActivity$Mode;->EMULATED_CONTROLLER:Lcom/google/vr/inputcompanion/MainActivity$Mode;

    if-ne v0, v4, :cond_4

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 415
    sget v0, Lcom/google/vr/inputcompanion/R$id;->real_controller_ui:I

    invoke-virtual {p0, v0}, Lcom/google/vr/inputcompanion/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-object v0, p0, Lcom/google/vr/inputcompanion/MainActivity;->mode:Lcom/google/vr/inputcompanion/MainActivity$Mode;

    sget-object v4, Lcom/google/vr/inputcompanion/MainActivity$Mode;->REAL_CONTROLLER:Lcom/google/vr/inputcompanion/MainActivity$Mode;

    if-ne v0, v4, :cond_5

    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 417
    sget v0, Lcom/google/vr/inputcompanion/R$id;->overflow_button:I

    invoke-virtual {p0, v0}, Lcom/google/vr/inputcompanion/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v3, p0, Lcom/google/vr/inputcompanion/MainActivity;->mode:Lcom/google/vr/inputcompanion/MainActivity$Mode;

    sget-object v4, Lcom/google/vr/inputcompanion/MainActivity$Mode;->REAL_CONTROLLER:Lcom/google/vr/inputcompanion/MainActivity$Mode;

    if-ne v3, v4, :cond_6

    :goto_4
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 402
    :cond_2
    iget-object v0, p0, Lcom/google/vr/inputcompanion/MainActivity;->mode:Lcom/google/vr/inputcompanion/MainActivity$Mode;

    sget-object v3, Lcom/google/vr/inputcompanion/MainActivity$Mode;->EMULATED_CONTROLLER:Lcom/google/vr/inputcompanion/MainActivity$Mode;

    if-ne v0, v3, :cond_3

    .line 403
    invoke-direct {p0}, Lcom/google/vr/inputcompanion/MainActivity;->stopCapturingTouchAndSensors()V

    .line 404
    sget-object v0, Lcom/google/vr/inputcompanion/MainActivity$Mode;->EMULATED_CONTROLLER:Lcom/google/vr/inputcompanion/MainActivity$Mode;

    iput-object v0, p0, Lcom/google/vr/inputcompanion/MainActivity;->mode:Lcom/google/vr/inputcompanion/MainActivity$Mode;

    .line 405
    invoke-static {p0, v1}, Lcom/google/vr/ndk/base/AndroidCompat;->setVrModeEnabled(Landroid/app/Activity;Z)Z

    .line 406
    iget-object v0, p0, Lcom/google/vr/inputcompanion/MainActivity;->gvrLayout:Lcom/google/vr/ndk/base/GvrLayout;

    invoke-virtual {v0}, Lcom/google/vr/ndk/base/GvrLayout;->onPause()V

    .line 407
    invoke-direct {p0, v1}, Lcom/google/vr/inputcompanion/MainActivity;->startCapturingTouchAndSensors(Z)V

    goto :goto_1

    .line 410
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    iget-object v1, p0, Lcom/google/vr/inputcompanion/MainActivity;->mode:Lcom/google/vr/inputcompanion/MainActivity$Mode;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0xe

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Invalid mode: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    move v0, v2

    .line 414
    goto :goto_2

    :cond_5
    move v0, v2

    .line 416
    goto :goto_3

    :cond_6
    move v2, v1

    .line 418
    goto :goto_4
.end method

.method private showAdjustSizeUi(Z)V
    .locals 4
    .param p1, "show"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 428
    if-eqz p1, :cond_0

    .line 429
    invoke-direct {p0}, Lcom/google/vr/inputcompanion/MainActivity;->updateScaleDisplay()V

    .line 431
    :cond_0
    sget v0, Lcom/google/vr/inputcompanion/R$id;->adjust_size_overlay:I

    invoke-virtual {p0, v0}, Lcom/google/vr/inputcompanion/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz p1, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 432
    sget v0, Lcom/google/vr/inputcompanion/R$id;->overflow_button:I

    invoke-virtual {p0, v0}, Lcom/google/vr/inputcompanion/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz p1, :cond_2

    move v0, v2

    :goto_1
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 433
    sget v0, Lcom/google/vr/inputcompanion/R$id;->status_text:I

    invoke-virtual {p0, v0}, Lcom/google/vr/inputcompanion/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz p1, :cond_3

    move v0, v2

    :goto_2
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 434
    sget v0, Lcom/google/vr/inputcompanion/R$id;->local_ip_address_text:I

    invoke-virtual {p0, v0}, Lcom/google/vr/inputcompanion/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz p1, :cond_4

    :goto_3
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 435
    return-void

    :cond_1
    move v0, v2

    .line 431
    goto :goto_0

    :cond_2
    move v0, v1

    .line 432
    goto :goto_1

    :cond_3
    move v0, v1

    .line 433
    goto :goto_2

    :cond_4
    move v2, v1

    .line 434
    goto :goto_3
.end method

.method private showRealControllerConfirmationDialog()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const v2, 0x104000a

    .line 449
    invoke-static {p0}, Lcom/google/vr/ndk/base/DaydreamUtils;->isDaydreamPhone(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 450
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/google/vr/inputcompanion/R$string;->daydream_phone_required:I

    .line 451
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 452
    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 453
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 467
    :goto_0
    return-void

    .line 456
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/google/vr/inputcompanion/R$string;->real_controller_mode_title:I

    .line 457
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/google/vr/inputcompanion/R$string;->real_controller_mode_confirmation:I

    .line 458
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    .line 459
    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/vr/inputcompanion/MainActivity$10;

    invoke-direct {v1, p0}, Lcom/google/vr/inputcompanion/MainActivity$10;-><init>(Lcom/google/vr/inputcompanion/MainActivity;)V

    .line 460
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 466
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method private startCapturingTouchAndSensors(Z)V
    .locals 12
    .param p1, "vibrateOnTouch"    # Z

    .prologue
    const/16 v11, 0x1b5b

    .line 258
    iget-object v1, p0, Lcom/google/vr/inputcompanion/MainActivity;->networkSocketServer:Lcom/google/vr/inputcompanion/NetworkSocketServer;

    if-eqz v1, :cond_0

    .line 346
    :goto_0
    return-void

    .line 262
    :cond_0
    sget v1, Lcom/google/vr/inputcompanion/R$id;->status_text:I

    invoke-virtual {p0, v1}, Lcom/google/vr/inputcompanion/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 263
    .local v2, "statusView":Landroid/widget/TextView;
    sget v1, Lcom/google/vr/inputcompanion/R$id;->local_ip_address_text:I

    invoke-virtual {p0, v1}, Lcom/google/vr/inputcompanion/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 264
    .local v7, "ipAddressView":Landroid/widget/TextView;
    invoke-direct {p0}, Lcom/google/vr/inputcompanion/MainActivity;->getLocalIpAddress()Ljava/lang/String;

    move-result-object v8

    .line 265
    .local v8, "localIpAddress":Ljava/lang/String;
    sget v1, Lcom/google/vr/inputcompanion/R$string;->local_ip_address:I

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v9, 0x0

    if-nez v8, :cond_1

    .line 267
    const-string v8, "(unknown)"

    .end local v8    # "localIpAddress":Ljava/lang/String;
    :cond_1
    aput-object v8, v3, v9

    const/4 v9, 0x1

    .line 268
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v3, v9

    .line 266
    invoke-virtual {p0, v1, v3}, Lcom/google/vr/inputcompanion/MainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 265
    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 269
    sget v1, Lcom/google/vr/inputcompanion/R$string;->status_waiting_for_connection:I

    invoke-virtual {p0, v1}, Lcom/google/vr/inputcompanion/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 270
    sget v1, Lcom/google/vr/inputcompanion/R$drawable;->disconnected_status_background:I

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 272
    sget v1, Lcom/google/vr/inputcompanion/R$id;->app_button:I

    invoke-virtual {p0, v1}, Lcom/google/vr/inputcompanion/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 273
    .local v4, "appButton":Landroid/view/View;
    sget v1, Lcom/google/vr/inputcompanion/R$id;->home_button:I

    invoke-virtual {p0, v1}, Lcom/google/vr/inputcompanion/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 275
    .local v5, "homeButton":Landroid/view/View;
    new-instance v6, Lcom/google/vr/inputcompanion/MainActivity$8;

    invoke-direct {v6, p0, v2}, Lcom/google/vr/inputcompanion/MainActivity$8;-><init>(Lcom/google/vr/inputcompanion/MainActivity;Landroid/widget/TextView;)V

    .line 284
    .local v6, "inputCompanionListener":Lcom/google/vr/inputcompanion/InputCompanionServer$Listener;
    new-instance v0, Lcom/google/vr/inputcompanion/MainActivity$9;

    move-object v1, p0

    move v3, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/vr/inputcompanion/MainActivity$9;-><init>(Lcom/google/vr/inputcompanion/MainActivity;Landroid/widget/TextView;ZLandroid/view/View;Landroid/view/View;Lcom/google/vr/inputcompanion/InputCompanionServer$Listener;)V

    .line 344
    .local v0, "callback":Lcom/google/vr/inputcompanion/BaseSocketServer$ClientConnectionCallback;
    new-instance v1, Lcom/google/vr/inputcompanion/NetworkSocketServer;

    invoke-direct {v1, v11, v0}, Lcom/google/vr/inputcompanion/NetworkSocketServer;-><init>(ILcom/google/vr/inputcompanion/BaseSocketServer$ClientConnectionCallback;)V

    iput-object v1, p0, Lcom/google/vr/inputcompanion/MainActivity;->networkSocketServer:Lcom/google/vr/inputcompanion/NetworkSocketServer;

    .line 345
    new-instance v1, Lcom/google/vr/inputcompanion/BluetoothSocketServer;

    invoke-direct {v1, v0}, Lcom/google/vr/inputcompanion/BluetoothSocketServer;-><init>(Lcom/google/vr/inputcompanion/BaseSocketServer$ClientConnectionCallback;)V

    iput-object v1, p0, Lcom/google/vr/inputcompanion/MainActivity;->bluetoothSocketServer:Lcom/google/vr/inputcompanion/BluetoothSocketServer;

    goto :goto_0
.end method

.method private startOnboardingFlow()V
    .locals 2

    .prologue
    .line 186
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/vr/inputcompanion/OnboardingActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/google/vr/inputcompanion/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 187
    return-void
.end method

.method private stopCapturingTouchAndSensors()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 349
    iget-object v1, p0, Lcom/google/vr/inputcompanion/MainActivity;->networkSocketServer:Lcom/google/vr/inputcompanion/NetworkSocketServer;

    if-eqz v1, :cond_0

    .line 350
    iget-object v1, p0, Lcom/google/vr/inputcompanion/MainActivity;->networkSocketServer:Lcom/google/vr/inputcompanion/NetworkSocketServer;

    invoke-virtual {v1}, Lcom/google/vr/inputcompanion/NetworkSocketServer;->stop()V

    .line 351
    iput-object v2, p0, Lcom/google/vr/inputcompanion/MainActivity;->networkSocketServer:Lcom/google/vr/inputcompanion/NetworkSocketServer;

    .line 353
    :cond_0
    iget-object v1, p0, Lcom/google/vr/inputcompanion/MainActivity;->bluetoothSocketServer:Lcom/google/vr/inputcompanion/BluetoothSocketServer;

    if-eqz v1, :cond_1

    .line 354
    iget-object v1, p0, Lcom/google/vr/inputcompanion/MainActivity;->bluetoothSocketServer:Lcom/google/vr/inputcompanion/BluetoothSocketServer;

    invoke-virtual {v1}, Lcom/google/vr/inputcompanion/BluetoothSocketServer;->stop()V

    .line 355
    iput-object v2, p0, Lcom/google/vr/inputcompanion/MainActivity;->bluetoothSocketServer:Lcom/google/vr/inputcompanion/BluetoothSocketServer;

    .line 357
    :cond_1
    sget v1, Lcom/google/vr/inputcompanion/R$id;->status_text:I

    invoke-virtual {p0, v1}, Lcom/google/vr/inputcompanion/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 358
    .local v0, "statusView":Landroid/widget/TextView;
    sget v1, Lcom/google/vr/inputcompanion/R$string;->status_disconnected:I

    invoke-virtual {p0, v1}, Lcom/google/vr/inputcompanion/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 359
    sget v1, Lcom/google/vr/inputcompanion/R$drawable;->disconnected_status_background:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 360
    return-void
.end method

.method private updateScaleDisplay()V
    .locals 5

    .prologue
    .line 443
    sget v1, Lcom/google/vr/inputcompanion/R$id;->adjust_size_current_scale:I

    invoke-virtual {p0, v1}, Lcom/google/vr/inputcompanion/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 444
    .local v0, "textView":Landroid/widget/TextView;
    sget v1, Lcom/google/vr/inputcompanion/R$string;->current_scale_fmt:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/vr/inputcompanion/MainActivity;->controllerSizeAdjuster:Lcom/google/vr/inputcompanion/ControllerSizeAdjuster;

    .line 445
    invoke-virtual {v4}, Lcom/google/vr/inputcompanion/ControllerSizeAdjuster;->getCurrentScale()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/google/vr/inputcompanion/MainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 444
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 446
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    .line 82
    invoke-super {p0, p1}, Lcom/google/vr/inputcompanion/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 83
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/vr/inputcompanion/MainActivity;->handler:Landroid/os/Handler;

    .line 84
    invoke-virtual {p0}, Lcom/google/vr/inputcompanion/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 85
    sget v0, Lcom/google/vr/inputcompanion/R$layout;->activity_main:I

    invoke-virtual {p0, v0}, Lcom/google/vr/inputcompanion/MainActivity;->setContentView(I)V

    .line 86
    new-instance v0, Lcom/google/vr/inputcompanion/ControllerSizeAdjuster;

    sget v1, Lcom/google/vr/inputcompanion/R$id;->controller_view:I

    invoke-virtual {p0, v1}, Lcom/google/vr/inputcompanion/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/vr/inputcompanion/ControllerSizeAdjuster;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/google/vr/inputcompanion/MainActivity;->controllerSizeAdjuster:Lcom/google/vr/inputcompanion/ControllerSizeAdjuster;

    .line 89
    invoke-static {p0}, Lcom/google/vr/inputcompanion/PrefUtils;->hasSeenOnboarding(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 90
    invoke-static {p0, v2}, Lcom/google/vr/inputcompanion/PrefUtils;->setHasSeenOnboarding(Landroid/content/Context;Z)V

    .line 91
    invoke-direct {p0}, Lcom/google/vr/inputcompanion/MainActivity;->startOnboardingFlow()V

    .line 94
    :cond_0
    sget v0, Lcom/google/vr/inputcompanion/R$id;->overflow_button:I

    invoke-virtual {p0, v0}, Lcom/google/vr/inputcompanion/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/google/vr/inputcompanion/MainActivity$1;

    invoke-direct {v1, p0}, Lcom/google/vr/inputcompanion/MainActivity$1;-><init>(Lcom/google/vr/inputcompanion/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    sget v0, Lcom/google/vr/inputcompanion/R$id;->adjust_size_plus:I

    invoke-virtual {p0, v0}, Lcom/google/vr/inputcompanion/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/google/vr/inputcompanion/MainActivity$2;

    invoke-direct {v1, p0}, Lcom/google/vr/inputcompanion/MainActivity$2;-><init>(Lcom/google/vr/inputcompanion/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    sget v0, Lcom/google/vr/inputcompanion/R$id;->adjust_size_minus:I

    invoke-virtual {p0, v0}, Lcom/google/vr/inputcompanion/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/google/vr/inputcompanion/MainActivity$3;

    invoke-direct {v1, p0}, Lcom/google/vr/inputcompanion/MainActivity$3;-><init>(Lcom/google/vr/inputcompanion/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    sget v0, Lcom/google/vr/inputcompanion/R$id;->adjust_size_cancel:I

    invoke-virtual {p0, v0}, Lcom/google/vr/inputcompanion/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/google/vr/inputcompanion/MainActivity$4;

    invoke-direct {v1, p0}, Lcom/google/vr/inputcompanion/MainActivity$4;-><init>(Lcom/google/vr/inputcompanion/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    sget v0, Lcom/google/vr/inputcompanion/R$id;->adjust_size_ok:I

    invoke-virtual {p0, v0}, Lcom/google/vr/inputcompanion/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/google/vr/inputcompanion/MainActivity$5;

    invoke-direct {v1, p0}, Lcom/google/vr/inputcompanion/MainActivity$5;-><init>(Lcom/google/vr/inputcompanion/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    sget v0, Lcom/google/vr/inputcompanion/R$id;->ic_version:I

    invoke-virtual {p0, v0}, Lcom/google/vr/inputcompanion/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lcom/google/vr/inputcompanion/R$string;->ic_version_fmt:I

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 142
    invoke-direct {p0}, Lcom/google/vr/inputcompanion/MainActivity;->getVersionName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 141
    invoke-virtual {p0, v1, v2}, Lcom/google/vr/inputcompanion/MainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    sget v0, Lcom/google/vr/inputcompanion/R$id;->end_real_controller_mode:I

    invoke-virtual {p0, v0}, Lcom/google/vr/inputcompanion/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/google/vr/inputcompanion/MainActivity$6;

    invoke-direct {v1, p0}, Lcom/google/vr/inputcompanion/MainActivity$6;-><init>(Lcom/google/vr/inputcompanion/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    return-void
.end method

.method public onDismiss(Landroid/widget/PopupMenu;)V
    .locals 0
    .param p1, "menu"    # Landroid/widget/PopupMenu;

    .prologue
    .line 439
    invoke-virtual {p0}, Lcom/google/vr/inputcompanion/MainActivity;->setFullscreenMode()V

    .line 440
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 175
    iget-object v0, p0, Lcom/google/vr/inputcompanion/MainActivity;->keyListener:Landroid/view/View$OnKeyListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/vr/inputcompanion/MainActivity;->keyListener:Landroid/view/View$OnKeyListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1, p2}, Landroid/view/View$OnKeyListener;->onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 176
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/google/vr/inputcompanion/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 175
    :goto_0
    return v0

    .line 176
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 181
    iget-object v0, p0, Lcom/google/vr/inputcompanion/MainActivity;->keyListener:Landroid/view/View$OnKeyListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/vr/inputcompanion/MainActivity;->keyListener:Landroid/view/View$OnKeyListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1, p2}, Landroid/view/View$OnKeyListener;->onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 182
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/google/vr/inputcompanion/BaseActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 181
    :goto_0
    return v0

    .line 182
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 369
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sget v2, Lcom/google/vr/inputcompanion/R$id;->menu_item_instructions:I

    if-ne v1, v2, :cond_0

    .line 370
    invoke-direct {p0}, Lcom/google/vr/inputcompanion/MainActivity;->startOnboardingFlow()V

    .line 379
    :goto_0
    return v0

    .line 372
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sget v2, Lcom/google/vr/inputcompanion/R$id;->menu_item_adjust:I

    if-ne v1, v2, :cond_1

    .line 373
    invoke-direct {p0, v0}, Lcom/google/vr/inputcompanion/MainActivity;->showAdjustSizeUi(Z)V

    goto :goto_0

    .line 375
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sget v2, Lcom/google/vr/inputcompanion/R$id;->menu_item_switch_to_real_controller:I

    if-ne v1, v2, :cond_2

    .line 376
    invoke-direct {p0}, Lcom/google/vr/inputcompanion/MainActivity;->showRealControllerConfirmationDialog()V

    goto :goto_0

    .line 379
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 201
    invoke-direct {p0}, Lcom/google/vr/inputcompanion/MainActivity;->stopCapturingTouchAndSensors()V

    .line 202
    iget-object v0, p0, Lcom/google/vr/inputcompanion/MainActivity;->mode:Lcom/google/vr/inputcompanion/MainActivity$Mode;

    sget-object v1, Lcom/google/vr/inputcompanion/MainActivity$Mode;->REAL_CONTROLLER:Lcom/google/vr/inputcompanion/MainActivity$Mode;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/vr/inputcompanion/MainActivity;->gvrLayout:Lcom/google/vr/ndk/base/GvrLayout;

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/google/vr/inputcompanion/MainActivity;->gvrLayout:Lcom/google/vr/ndk/base/GvrLayout;

    invoke-virtual {v0}, Lcom/google/vr/ndk/base/GvrLayout;->onPause()V

    .line 205
    :cond_0
    invoke-super {p0}, Lcom/google/vr/inputcompanion/BaseActivity;->onPause()V

    .line 206
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 191
    invoke-super {p0}, Lcom/google/vr/inputcompanion/BaseActivity;->onResume()V

    .line 192
    invoke-virtual {p0}, Lcom/google/vr/inputcompanion/MainActivity;->setFullscreenMode()V

    .line 193
    iget-object v0, p0, Lcom/google/vr/inputcompanion/MainActivity;->mode:Lcom/google/vr/inputcompanion/MainActivity$Mode;

    sget-object v1, Lcom/google/vr/inputcompanion/MainActivity$Mode;->REAL_CONTROLLER:Lcom/google/vr/inputcompanion/MainActivity$Mode;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/vr/inputcompanion/MainActivity;->gvrLayout:Lcom/google/vr/ndk/base/GvrLayout;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/google/vr/inputcompanion/MainActivity;->gvrLayout:Lcom/google/vr/ndk/base/GvrLayout;

    invoke-virtual {v0}, Lcom/google/vr/ndk/base/GvrLayout;->onResume()V

    .line 196
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/vr/inputcompanion/MainActivity;->startCapturingTouchAndSensors(Z)V

    .line 197
    return-void
.end method

.method protected onStart()V
    .locals 4

    .prologue
    .line 210
    invoke-super {p0}, Lcom/google/vr/inputcompanion/BaseActivity;->onStart()V

    .line 212
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 213
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 214
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v2, Lcom/google/vr/inputcompanion/R$string;->bluetooth_off_message:I

    .line 215
    invoke-virtual {p0, v2}, Lcom/google/vr/inputcompanion/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    .line 216
    invoke-virtual {p0, v2}, Lcom/google/vr/inputcompanion/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/google/vr/inputcompanion/MainActivity$7;

    invoke-direct {v3, p0}, Lcom/google/vr/inputcompanion/MainActivity$7;-><init>(Lcom/google/vr/inputcompanion/MainActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    .line 227
    invoke-virtual {p0, v2}, Lcom/google/vr/inputcompanion/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 228
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 230
    :cond_0
    return-void
.end method

.method public setOnKeyListener(Landroid/view/View$OnKeyListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnKeyListener;

    .prologue
    .line 364
    iput-object p1, p0, Lcom/google/vr/inputcompanion/MainActivity;->keyListener:Landroid/view/View$OnKeyListener;

    .line 365
    return-void
.end method
