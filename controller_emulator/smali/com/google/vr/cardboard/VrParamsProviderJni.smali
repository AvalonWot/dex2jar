.class public Lcom/google/vr/cardboard/VrParamsProviderJni;
.super Ljava/lang/Object;
.source "VrParamsProviderJni.java"


# annotations
.annotation build Lcom/google/vr/cardboard/UsedByNative;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VrParamsProviderJni"

.field private static volatile displayMetricsOverride:Landroid/util/DisplayMetrics;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    sput-object v0, Lcom/google/vr/cardboard/VrParamsProviderJni;->displayMetricsOverride:Landroid/util/DisplayMetrics;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getDisplayMetrics(Landroid/content/Context;)Landroid/util/DisplayMetrics;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 164
    sget-object v1, Lcom/google/vr/cardboard/VrParamsProviderJni;->displayMetricsOverride:Landroid/util/DisplayMetrics;

    .line 165
    .local v1, "metricsOverride":Landroid/util/DisplayMetrics;
    if-eqz v1, :cond_0

    .line 170
    .end local v1    # "metricsOverride":Landroid/util/DisplayMetrics;
    :goto_0
    return-object v1

    .line 168
    .restart local v1    # "metricsOverride":Landroid/util/DisplayMetrics;
    :cond_0
    const-string v3, "window"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 169
    .local v2, "windowManager":Landroid/view/WindowManager;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 170
    .local v0, "display":Landroid/view/Display;
    invoke-static {v0}, Lcom/google/vr/cardboard/DisplayUtils;->getDisplayMetricsLandscape(Landroid/view/Display;)Landroid/util/DisplayMetrics;

    move-result-object v1

    goto :goto_0
.end method

.method private static native nativeUpdateNativePhoneParamsPointer(JIIFF)V
.end method

.method private static readDeviceParams(Landroid/content/Context;)[B
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Lcom/google/vr/cardboard/UsedByNative;
    .end annotation

    .prologue
    .line 66
    invoke-static {p0}, Lcom/google/vr/cardboard/VrParamsProviderFactory;->create(Landroid/content/Context;)Lcom/google/vr/cardboard/VrParamsProvider;

    move-result-object v1

    .line 67
    .local v1, "provider":Lcom/google/vr/cardboard/VrParamsProvider;
    invoke-interface {v1}, Lcom/google/vr/cardboard/VrParamsProvider;->readDeviceParams()Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;

    move-result-object v0

    .line 68
    .local v0, "params":Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;
    invoke-interface {v1}, Lcom/google/vr/cardboard/VrParamsProvider;->close()V

    .line 69
    if-nez v0, :cond_0

    .line 70
    const/4 v2, 0x0

    .line 72
    :goto_0
    return-object v2

    :cond_0
    invoke-static {v0}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v2

    goto :goto_0
.end method

.method private static readPhoneParams(Landroid/content/Context;J)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "nativePhoneParams"    # J
    .annotation build Lcom/google/vr/cardboard/UsedByNative;
    .end annotation

    .prologue
    .line 118
    if-nez p0, :cond_0

    .line 122
    const-string v3, "VrParamsProviderJni"

    const-string v4, "Missing context for phone params lookup. Results may be invalid."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {p1, p2, v3}, Lcom/google/vr/cardboard/VrParamsProviderJni;->updateNativePhoneParamsPointer(JLandroid/util/DisplayMetrics;)V

    .line 141
    :goto_0
    return-void

    .line 128
    :cond_0
    invoke-static {p0}, Lcom/google/vr/cardboard/VrParamsProviderJni;->getDisplayMetrics(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 129
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-static {p0}, Lcom/google/vr/cardboard/VrParamsProviderFactory;->create(Landroid/content/Context;)Lcom/google/vr/cardboard/VrParamsProvider;

    move-result-object v2

    .line 130
    .local v2, "provider":Lcom/google/vr/cardboard/VrParamsProvider;
    invoke-interface {v2}, Lcom/google/vr/cardboard/VrParamsProvider;->readPhoneParams()Lcom/google/vrtoolkit/cardboard/proto/nano/Phone$PhoneParams;

    move-result-object v1

    .line 131
    .local v1, "params":Lcom/google/vrtoolkit/cardboard/proto/nano/Phone$PhoneParams;
    invoke-interface {v2}, Lcom/google/vr/cardboard/VrParamsProvider;->close()V

    .line 132
    if-eqz v1, :cond_2

    .line 133
    invoke-virtual {v1}, Lcom/google/vrtoolkit/cardboard/proto/nano/Phone$PhoneParams;->hasXPpi()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 134
    invoke-virtual {v1}, Lcom/google/vrtoolkit/cardboard/proto/nano/Phone$PhoneParams;->getXPpi()F

    move-result v3

    iput v3, v0, Landroid/util/DisplayMetrics;->xdpi:F

    .line 136
    :cond_1
    invoke-virtual {v1}, Lcom/google/vrtoolkit/cardboard/proto/nano/Phone$PhoneParams;->hasYPpi()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 137
    invoke-virtual {v1}, Lcom/google/vrtoolkit/cardboard/proto/nano/Phone$PhoneParams;->getYPpi()F

    move-result v3

    iput v3, v0, Landroid/util/DisplayMetrics;->ydpi:F

    .line 140
    :cond_2
    invoke-static {p1, p2, v0}, Lcom/google/vr/cardboard/VrParamsProviderJni;->updateNativePhoneParamsPointer(JLandroid/util/DisplayMetrics;)V

    goto :goto_0
.end method

.method private static readSdkConfigurationParams(Landroid/content/Context;)[B
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Lcom/google/vr/cardboard/UsedByNative;
    .end annotation

    .prologue
    .line 82
    invoke-static {p0}, Lcom/google/vr/ndk/base/SdkConfigurationReader;->getParams(Landroid/content/Context;)Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v0

    return-object v0
.end method

.method private static readUserPrefs(Landroid/content/Context;)[B
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Lcom/google/vr/cardboard/UsedByNative;
    .end annotation

    .prologue
    .line 152
    invoke-static {p0}, Lcom/google/vr/cardboard/VrParamsProviderFactory;->create(Landroid/content/Context;)Lcom/google/vr/cardboard/VrParamsProvider;

    move-result-object v1

    .line 153
    .local v1, "provider":Lcom/google/vr/cardboard/VrParamsProvider;
    invoke-interface {v1}, Lcom/google/vr/cardboard/VrParamsProvider;->readUserPrefs()Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$UserPrefs;

    move-result-object v0

    .line 154
    .local v0, "prefs":Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$UserPrefs;
    invoke-interface {v1}, Lcom/google/vr/cardboard/VrParamsProvider;->close()V

    .line 155
    if-nez v0, :cond_0

    .line 156
    const/4 v2, 0x0

    .line 158
    :goto_0
    return-object v2

    :cond_0
    invoke-static {v0}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v2

    goto :goto_0
.end method

.method public static setDisplayOverride(Landroid/view/Display;)V
    .locals 1
    .param p0, "display"    # Landroid/view/Display;

    .prologue
    .line 54
    if-eqz p0, :cond_0

    .line 55
    invoke-static {p0}, Lcom/google/vr/cardboard/DisplayUtils;->getDisplayMetricsLandscape(Landroid/view/Display;)Landroid/util/DisplayMetrics;

    move-result-object v0

    :goto_0
    sput-object v0, Lcom/google/vr/cardboard/VrParamsProviderJni;->displayMetricsOverride:Landroid/util/DisplayMetrics;

    .line 56
    return-void

    .line 55
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static updateNativePhoneParamsPointer(JLandroid/util/DisplayMetrics;)V
    .locals 6
    .param p0, "nativePhoneParams"    # J
    .param p2, "displayMetrics"    # Landroid/util/DisplayMetrics;

    .prologue
    .line 181
    iget v2, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, p2, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v4, p2, Landroid/util/DisplayMetrics;->xdpi:F

    iget v5, p2, Landroid/util/DisplayMetrics;->ydpi:F

    move-wide v0, p0

    invoke-static/range {v0 .. v5}, Lcom/google/vr/cardboard/VrParamsProviderJni;->nativeUpdateNativePhoneParamsPointer(JIIFF)V

    .line 187
    return-void
.end method

.method private static writeDeviceParams(Landroid/content/Context;[B)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "protoBytes"    # [B
    .annotation build Lcom/google/vr/cardboard/UsedByNative;
    .end annotation

    .prologue
    .line 94
    invoke-static {p0}, Lcom/google/vr/cardboard/VrParamsProviderFactory;->create(Landroid/content/Context;)Lcom/google/vr/cardboard/VrParamsProvider;

    move-result-object v2

    .line 96
    .local v2, "provider":Lcom/google/vr/cardboard/VrParamsProvider;
    if-eqz p1, :cond_0

    .line 98
    :try_start_0
    new-instance v3, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;

    invoke-direct {v3}, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;-><init>()V

    invoke-static {v3, p1}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v3

    check-cast v3, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;

    move-object v1, v3

    .line 100
    .local v1, "params":Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;
    :goto_0
    invoke-interface {v2, v1}, Lcom/google/vr/cardboard/VrParamsProvider;->writeDeviceParams(Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;)Z
    :try_end_0
    .catch Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .line 105
    invoke-interface {v2}, Lcom/google/vr/cardboard/VrParamsProvider;->close()V

    .line 103
    .end local v1    # "params":Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;
    :goto_1
    return v3

    .line 99
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 101
    :catch_0
    move-exception v0

    .line 102
    .local v0, "e":Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
    :try_start_1
    const-string v3, "VrParamsProviderJni"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x1f

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Error parsing protocol buffer: "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 103
    const/4 v3, 0x0

    .line 105
    invoke-interface {v2}, Lcom/google/vr/cardboard/VrParamsProvider;->close()V

    goto :goto_1

    .end local v0    # "e":Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
    :catchall_0
    move-exception v3

    invoke-interface {v2}, Lcom/google/vr/cardboard/VrParamsProvider;->close()V

    throw v3
.end method
