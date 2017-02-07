.class public abstract Lcom/google/vr/cardboard/DisplayUtils;
.super Ljava/lang/Object;
.source "DisplayUtils.java"


# static fields
.field private static final DEFAULT_BORDER_SIZE_METERS:F = 0.003f

.field public static final EXTERNAL_DISPLAY_RESOURCE_NAME:Ljava/lang/String; = "display_manager_hdmi_display_name"

.field private static final METERS_PER_INCH:F = 0.0254f


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBorderSizeMeters(Lcom/google/vrtoolkit/cardboard/proto/nano/Phone$PhoneParams;)F
    .locals 1
    .param p0, "phoneParams"    # Lcom/google/vrtoolkit/cardboard/proto/nano/Phone$PhoneParams;

    .prologue
    .line 131
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/google/vrtoolkit/cardboard/proto/nano/Phone$PhoneParams;->hasBottomBezelHeight()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    invoke-virtual {p0}, Lcom/google/vrtoolkit/cardboard/proto/nano/Phone$PhoneParams;->getBottomBezelHeight()F

    move-result v0

    .line 134
    :goto_0
    return v0

    :cond_0
    const v0, 0x3b449ba6    # 0.003f

    goto :goto_0
.end method

.method public static getDefaultDisplay(Landroid/content/Context;)Landroid/view/Display;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    const-string v1, "window"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 51
    .local v0, "windowManager":Landroid/view/WindowManager;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    return-object v1
.end method

.method public static getDisplayMetricsLandscape(Landroid/view/Display;)Landroid/util/DisplayMetrics;
    .locals 4
    .param p0, "display"    # Landroid/view/Display;

    .prologue
    .line 63
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 66
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_1

    .line 67
    invoke-virtual {p0, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 74
    :goto_0
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v2, v3, :cond_0

    .line 75
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 76
    .local v1, "tmp":I
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 77
    iput v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 86
    .end local v1    # "tmp":I
    :cond_0
    iget v1, v0, Landroid/util/DisplayMetrics;->xdpi:F

    .line 87
    .local v1, "tmp":F
    iget v2, v0, Landroid/util/DisplayMetrics;->ydpi:F

    iput v2, v0, Landroid/util/DisplayMetrics;->xdpi:F

    .line 88
    iput v1, v0, Landroid/util/DisplayMetrics;->ydpi:F

    .line 90
    return-object v0

    .line 69
    .end local v1    # "tmp":F
    :cond_1
    invoke-virtual {p0, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    goto :goto_0
.end method

.method public static getDisplayMetricsLandscapeWithOverride(Landroid/view/Display;Lcom/google/vrtoolkit/cardboard/proto/nano/Phone$PhoneParams;)Landroid/util/DisplayMetrics;
    .locals 2
    .param p0, "display"    # Landroid/view/Display;
    .param p1, "phoneParams"    # Lcom/google/vrtoolkit/cardboard/proto/nano/Phone$PhoneParams;

    .prologue
    .line 107
    invoke-static {p0}, Lcom/google/vr/cardboard/DisplayUtils;->getDisplayMetricsLandscape(Landroid/view/Display;)Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 109
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    if-eqz p1, :cond_1

    .line 112
    invoke-virtual {p1}, Lcom/google/vrtoolkit/cardboard/proto/nano/Phone$PhoneParams;->hasXPpi()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 113
    invoke-virtual {p1}, Lcom/google/vrtoolkit/cardboard/proto/nano/Phone$PhoneParams;->getXPpi()F

    move-result v1

    iput v1, v0, Landroid/util/DisplayMetrics;->xdpi:F

    .line 115
    :cond_0
    invoke-virtual {p1}, Lcom/google/vrtoolkit/cardboard/proto/nano/Phone$PhoneParams;->hasYPpi()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 116
    invoke-virtual {p1}, Lcom/google/vrtoolkit/cardboard/proto/nano/Phone$PhoneParams;->getYPpi()F

    move-result v1

    iput v1, v0, Landroid/util/DisplayMetrics;->ydpi:F

    .line 120
    :cond_1
    return-object v0
.end method

.method public static getExternalDisplayName(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 157
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 158
    .local v2, "resources":Landroid/content/res/Resources;
    const-string v3, "display_manager_hdmi_display_name"

    const-string v4, "string"

    const-string v5, "android"

    .line 159
    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 161
    .local v1, "externalDisplayResourceId":I
    :try_start_0
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 163
    :goto_0
    return-object v3

    .line 162
    :catch_0
    move-exception v0

    .line 163
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static getMetersPerPixelFromDotsPerInch(F)F
    .locals 1
    .param p0, "dpi"    # F

    .prologue
    .line 146
    const v0, 0x3cd013a9    # 0.0254f

    div-float/2addr v0, p0

    return v0
.end method

.method public static hasExternalDisplay(Landroid/content/Context;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 175
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x10

    if-gt v4, v5, :cond_1

    .line 192
    :cond_0
    :goto_0
    return v3

    .line 179
    :cond_1
    invoke-static {p0}, Lcom/google/vr/cardboard/DisplayUtils;->getExternalDisplayName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 180
    .local v2, "externalDisplayName":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 184
    const-string v4, "display"

    .line 185
    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    .line 186
    .local v1, "displayManager":Landroid/hardware/display/DisplayManager;
    invoke-virtual {v1}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object v5

    array-length v6, v5

    move v4, v3

    :goto_1
    if-ge v4, v6, :cond_0

    aget-object v0, v5, v4

    .line 187
    .local v0, "d":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 188
    const/4 v3, 0x1

    goto :goto_0

    .line 186
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method public static isSameDisplay(Landroid/view/Display;Landroid/view/Display;)Z
    .locals 5
    .param p0, "d0"    # Landroid/view/Display;
    .param p1, "d1"    # Landroid/view/Display;

    .prologue
    const/4 v2, 0x0

    .line 207
    if-ne p0, p1, :cond_1

    .line 208
    const/4 v2, 0x1

    .line 226
    :cond_0
    :goto_0
    return v2

    .line 211
    :cond_1
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 215
    invoke-virtual {p0}, Landroid/view/Display;->getDisplayId()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 216
    invoke-virtual {p0}, Landroid/view/Display;->getFlags()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/Display;->getFlags()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 217
    invoke-virtual {p0}, Landroid/view/Display;->isValid()Z

    move-result v3

    invoke-virtual {p1}, Landroid/view/Display;->isValid()Z

    move-result v4

    if-ne v3, v4, :cond_0

    .line 218
    invoke-virtual {p0}, Landroid/view/Display;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/Display;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 222
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 223
    .local v0, "dm0":Landroid/util/DisplayMetrics;
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 224
    .local v1, "dm1":Landroid/util/DisplayMetrics;
    invoke-virtual {p0, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 225
    invoke-virtual {p1, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 226
    invoke-virtual {v0, v1}, Landroid/util/DisplayMetrics;->equals(Landroid/util/DisplayMetrics;)Z

    move-result v2

    goto :goto_0
.end method
