.class public Lcom/google/vr/sdk/base/GvrViewerParams;
.super Ljava/lang/Object;
.source "GvrViewerParams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/sdk/base/GvrViewerParams$VerticalAlignmentType;
    }
.end annotation


# static fields
.field private static final CARDBOARD_V1_INTER_LENS_DISTANCE:F = 0.06f

.field private static final CARDBOARD_V1_MODEL:Ljava/lang/String; = "Cardboard v1"

.field private static final CARDBOARD_V1_SCREEN_TO_LENS_DISTANCE:F = 0.042f

.field private static final CARDBOARD_V1_VENDOR:Ljava/lang/String; = "Google, Inc."

.field private static final CARDBOARD_V1_VERTICAL_ALIGNMENT:Lcom/google/vr/sdk/base/GvrViewerParams$VerticalAlignmentType;

.field private static final CARDBOARD_V1_VERTICAL_DISTANCE_TO_LENS_CENTER:F = 0.035f

.field private static final CARDBOARD_V2_2_INTER_LENS_DISTANCE:F = 0.064f

.field private static final CARDBOARD_V2_2_MODEL:Ljava/lang/String; = "Default Cardboard"

.field private static final CARDBOARD_V2_2_SCREEN_TO_LENS_DISTANCE:F = 0.039f

.field private static final CARDBOARD_V2_2_VENDOR:Ljava/lang/String; = "Google, Inc."

.field private static final CARDBOARD_V2_2_VERTICAL_ALIGNMENT:Lcom/google/vr/sdk/base/GvrViewerParams$VerticalAlignmentType;

.field private static final CARDBOARD_V2_2_VERTICAL_DISTANCE_TO_LENS_CENTER:F = 0.035f

.field private static final DEFAULT_PARAMS:Lcom/google/vr/sdk/base/GvrViewerParams;

.field private static final HTTP_SCHEME:Ljava/lang/String; = "http"

.field private static final TAG:Ljava/lang/String; = "GvrViewerParams"

.field private static final URI_HOST_GOOGLE:Ljava/lang/String; = "google.com"

.field private static final URI_HOST_GOOGLE_SHORT:Ljava/lang/String; = "g.co"

.field private static final URI_HOST_LEGACY_CARDBOARD:Ljava/lang/String; = "v1.0.0"

.field private static final URI_ORIGINAL_CARDBOARD_NFC:Landroid/net/Uri;

.field private static final URI_ORIGINAL_CARDBOARD_QR_CODE:Landroid/net/Uri;

.field private static final URI_PATH_CARDBOARD_CONFIG:Ljava/lang/String; = "cardboard/cfg"

.field private static final URI_PATH_CARDBOARD_HOME:Ljava/lang/String; = "cardboard"

.field private static final URI_SCHEME_LEGACY_CARDBOARD:Ljava/lang/String; = "cardboard"


# instance fields
.field private distortion:Lcom/google/vr/sdk/base/Distortion;

.field private hasMagnet:Z

.field private interLensDistance:F

.field private leftEyeMaxFov:Lcom/google/vr/sdk/base/FieldOfView;

.field private model:Ljava/lang/String;

.field private originalDeviceProto:Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;

.field private screenToLensDistance:F

.field private vendor:Ljava/lang/String;

.field private verticalAlignment:Lcom/google/vr/sdk/base/GvrViewerParams$VerticalAlignmentType;

.field private verticalDistanceToLensCenter:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 69
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "cardboard"

    .line 70
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "v1.0.0"

    .line 71
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 72
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/vr/sdk/base/GvrViewerParams;->URI_ORIGINAL_CARDBOARD_NFC:Landroid/net/Uri;

    .line 75
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "http"

    .line 76
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "g.co"

    .line 77
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "cardboard"

    .line 78
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 79
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/vr/sdk/base/GvrViewerParams;->URI_ORIGINAL_CARDBOARD_QR_CODE:Landroid/net/Uri;

    .line 91
    sget-object v0, Lcom/google/vr/sdk/base/GvrViewerParams$VerticalAlignmentType;->BOTTOM:Lcom/google/vr/sdk/base/GvrViewerParams$VerticalAlignmentType;

    sput-object v0, Lcom/google/vr/sdk/base/GvrViewerParams;->CARDBOARD_V2_2_VERTICAL_ALIGNMENT:Lcom/google/vr/sdk/base/GvrViewerParams$VerticalAlignmentType;

    .line 104
    sget-object v0, Lcom/google/vr/sdk/base/GvrViewerParams$VerticalAlignmentType;->BOTTOM:Lcom/google/vr/sdk/base/GvrViewerParams$VerticalAlignmentType;

    sput-object v0, Lcom/google/vr/sdk/base/GvrViewerParams;->CARDBOARD_V1_VERTICAL_ALIGNMENT:Lcom/google/vr/sdk/base/GvrViewerParams$VerticalAlignmentType;

    .line 109
    new-instance v0, Lcom/google/vr/sdk/base/GvrViewerParams;

    invoke-direct {v0}, Lcom/google/vr/sdk/base/GvrViewerParams;-><init>()V

    sput-object v0, Lcom/google/vr/sdk/base/GvrViewerParams;->DEFAULT_PARAMS:Lcom/google/vr/sdk/base/GvrViewerParams;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    invoke-direct {p0}, Lcom/google/vr/sdk/base/GvrViewerParams;->setDefaultValues()V

    .line 136
    return-void
.end method

.method public constructor <init>(Lcom/google/vr/sdk/base/GvrViewerParams;)V
    .locals 0
    .param p1, "params"    # Lcom/google/vr/sdk/base/GvrViewerParams;

    .prologue
    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/base/GvrViewerParams;->copyFrom(Lcom/google/vr/sdk/base/GvrViewerParams;)V

    .line 145
    return-void
.end method

.method public constructor <init>(Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;)V
    .locals 1
    .param p1, "params"    # Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;

    .prologue
    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    invoke-direct {p0}, Lcom/google/vr/sdk/base/GvrViewerParams;->setDefaultValues()V

    .line 156
    if-nez p1, :cond_0

    .line 182
    :goto_0
    return-void

    .line 161
    :cond_0
    invoke-virtual {p1}, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->clone()Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vr/sdk/base/GvrViewerParams;->originalDeviceProto:Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;

    .line 163
    invoke-virtual {p1}, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->getVendor()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vr/sdk/base/GvrViewerParams;->vendor:Ljava/lang/String;

    .line 164
    invoke-virtual {p1}, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->getModel()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vr/sdk/base/GvrViewerParams;->model:Ljava/lang/String;

    .line 166
    invoke-virtual {p1}, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->getInterLensDistance()F

    move-result v0

    iput v0, p0, Lcom/google/vr/sdk/base/GvrViewerParams;->interLensDistance:F

    .line 167
    invoke-virtual {p1}, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->getVerticalAlignment()I

    move-result v0

    invoke-static {v0}, Lcom/google/vr/sdk/base/GvrViewerParams$VerticalAlignmentType;->fromProtoValue(I)Lcom/google/vr/sdk/base/GvrViewerParams$VerticalAlignmentType;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vr/sdk/base/GvrViewerParams;->verticalAlignment:Lcom/google/vr/sdk/base/GvrViewerParams$VerticalAlignmentType;

    .line 168
    invoke-virtual {p1}, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->getTrayToLensDistance()F

    move-result v0

    iput v0, p0, Lcom/google/vr/sdk/base/GvrViewerParams;->verticalDistanceToLensCenter:F

    .line 169
    invoke-virtual {p1}, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->getScreenToLensDistance()F

    move-result v0

    iput v0, p0, Lcom/google/vr/sdk/base/GvrViewerParams;->screenToLensDistance:F

    .line 171
    iget-object v0, p1, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->leftEyeFieldOfViewAngles:[F

    invoke-static {v0}, Lcom/google/vr/sdk/base/FieldOfView;->parseFromProtobuf([F)Lcom/google/vr/sdk/base/FieldOfView;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vr/sdk/base/GvrViewerParams;->leftEyeMaxFov:Lcom/google/vr/sdk/base/FieldOfView;

    .line 172
    iget-object v0, p0, Lcom/google/vr/sdk/base/GvrViewerParams;->leftEyeMaxFov:Lcom/google/vr/sdk/base/FieldOfView;

    if-nez v0, :cond_1

    .line 173
    new-instance v0, Lcom/google/vr/sdk/base/FieldOfView;

    invoke-direct {v0}, Lcom/google/vr/sdk/base/FieldOfView;-><init>()V

    iput-object v0, p0, Lcom/google/vr/sdk/base/GvrViewerParams;->leftEyeMaxFov:Lcom/google/vr/sdk/base/FieldOfView;

    .line 176
    :cond_1
    iget-object v0, p1, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->distortionCoefficients:[F

    invoke-static {v0}, Lcom/google/vr/sdk/base/Distortion;->parseFromProtobuf([F)Lcom/google/vr/sdk/base/Distortion;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vr/sdk/base/GvrViewerParams;->distortion:Lcom/google/vr/sdk/base/Distortion;

    .line 177
    iget-object v0, p0, Lcom/google/vr/sdk/base/GvrViewerParams;->distortion:Lcom/google/vr/sdk/base/Distortion;

    if-nez v0, :cond_2

    .line 178
    new-instance v0, Lcom/google/vr/sdk/base/Distortion;

    invoke-direct {v0}, Lcom/google/vr/sdk/base/Distortion;-><init>()V

    iput-object v0, p0, Lcom/google/vr/sdk/base/GvrViewerParams;->distortion:Lcom/google/vr/sdk/base/Distortion;

    .line 181
    :cond_2
    invoke-virtual {p1}, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->getHasMagnet()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/vr/sdk/base/GvrViewerParams;->hasMagnet:Z

    goto :goto_0
.end method

.method public static cardboardV1ViewerParams()Lcom/google/vr/sdk/base/GvrViewerParams;
    .locals 2

    .prologue
    .line 233
    new-instance v0, Lcom/google/vr/sdk/base/GvrViewerParams;

    invoke-direct {v0}, Lcom/google/vr/sdk/base/GvrViewerParams;-><init>()V

    .line 234
    .local v0, "deviceParams":Lcom/google/vr/sdk/base/GvrViewerParams;
    const-string v1, "Google, Inc."

    iput-object v1, v0, Lcom/google/vr/sdk/base/GvrViewerParams;->vendor:Ljava/lang/String;

    .line 235
    const-string v1, "Cardboard v1"

    iput-object v1, v0, Lcom/google/vr/sdk/base/GvrViewerParams;->model:Ljava/lang/String;

    .line 236
    const v1, 0x3d75c28f    # 0.06f

    iput v1, v0, Lcom/google/vr/sdk/base/GvrViewerParams;->interLensDistance:F

    .line 237
    sget-object v1, Lcom/google/vr/sdk/base/GvrViewerParams;->CARDBOARD_V1_VERTICAL_ALIGNMENT:Lcom/google/vr/sdk/base/GvrViewerParams$VerticalAlignmentType;

    iput-object v1, v0, Lcom/google/vr/sdk/base/GvrViewerParams;->verticalAlignment:Lcom/google/vr/sdk/base/GvrViewerParams$VerticalAlignmentType;

    .line 238
    const v1, 0x3d0f5c29    # 0.035f

    iput v1, v0, Lcom/google/vr/sdk/base/GvrViewerParams;->verticalDistanceToLensCenter:F

    .line 239
    const v1, 0x3d2c0831    # 0.042f

    iput v1, v0, Lcom/google/vr/sdk/base/GvrViewerParams;->screenToLensDistance:F

    .line 240
    invoke-static {}, Lcom/google/vr/sdk/base/FieldOfView;->cardboardV1FieldOfView()Lcom/google/vr/sdk/base/FieldOfView;

    move-result-object v1

    iput-object v1, v0, Lcom/google/vr/sdk/base/GvrViewerParams;->leftEyeMaxFov:Lcom/google/vr/sdk/base/FieldOfView;

    .line 241
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/vr/sdk/base/GvrViewerParams;->hasMagnet:Z

    .line 243
    invoke-static {}, Lcom/google/vr/sdk/base/Distortion;->cardboardV1Distortion()Lcom/google/vr/sdk/base/Distortion;

    move-result-object v1

    iput-object v1, v0, Lcom/google/vr/sdk/base/GvrViewerParams;->distortion:Lcom/google/vr/sdk/base/Distortion;

    .line 245
    return-object v0
.end method

.method private copyFrom(Lcom/google/vr/sdk/base/GvrViewerParams;)V
    .locals 2
    .param p1, "params"    # Lcom/google/vr/sdk/base/GvrViewerParams;

    .prologue
    .line 633
    iget-object v0, p1, Lcom/google/vr/sdk/base/GvrViewerParams;->vendor:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/vr/sdk/base/GvrViewerParams;->vendor:Ljava/lang/String;

    .line 634
    iget-object v0, p1, Lcom/google/vr/sdk/base/GvrViewerParams;->model:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/vr/sdk/base/GvrViewerParams;->model:Ljava/lang/String;

    .line 636
    iget v0, p1, Lcom/google/vr/sdk/base/GvrViewerParams;->interLensDistance:F

    iput v0, p0, Lcom/google/vr/sdk/base/GvrViewerParams;->interLensDistance:F

    .line 637
    iget-object v0, p1, Lcom/google/vr/sdk/base/GvrViewerParams;->verticalAlignment:Lcom/google/vr/sdk/base/GvrViewerParams$VerticalAlignmentType;

    iput-object v0, p0, Lcom/google/vr/sdk/base/GvrViewerParams;->verticalAlignment:Lcom/google/vr/sdk/base/GvrViewerParams$VerticalAlignmentType;

    .line 638
    iget v0, p1, Lcom/google/vr/sdk/base/GvrViewerParams;->verticalDistanceToLensCenter:F

    iput v0, p0, Lcom/google/vr/sdk/base/GvrViewerParams;->verticalDistanceToLensCenter:F

    .line 639
    iget v0, p1, Lcom/google/vr/sdk/base/GvrViewerParams;->screenToLensDistance:F

    iput v0, p0, Lcom/google/vr/sdk/base/GvrViewerParams;->screenToLensDistance:F

    .line 641
    new-instance v0, Lcom/google/vr/sdk/base/FieldOfView;

    iget-object v1, p1, Lcom/google/vr/sdk/base/GvrViewerParams;->leftEyeMaxFov:Lcom/google/vr/sdk/base/FieldOfView;

    invoke-direct {v0, v1}, Lcom/google/vr/sdk/base/FieldOfView;-><init>(Lcom/google/vr/sdk/base/FieldOfView;)V

    iput-object v0, p0, Lcom/google/vr/sdk/base/GvrViewerParams;->leftEyeMaxFov:Lcom/google/vr/sdk/base/FieldOfView;

    .line 643
    iget-boolean v0, p1, Lcom/google/vr/sdk/base/GvrViewerParams;->hasMagnet:Z

    iput-boolean v0, p0, Lcom/google/vr/sdk/base/GvrViewerParams;->hasMagnet:Z

    .line 645
    new-instance v0, Lcom/google/vr/sdk/base/Distortion;

    iget-object v1, p1, Lcom/google/vr/sdk/base/GvrViewerParams;->distortion:Lcom/google/vr/sdk/base/Distortion;

    invoke-direct {v0, v1}, Lcom/google/vr/sdk/base/Distortion;-><init>(Lcom/google/vr/sdk/base/Distortion;)V

    iput-object v0, p0, Lcom/google/vr/sdk/base/GvrViewerParams;->distortion:Lcom/google/vr/sdk/base/Distortion;

    .line 646
    iget-object v0, p1, Lcom/google/vr/sdk/base/GvrViewerParams;->originalDeviceProto:Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;

    iput-object v0, p0, Lcom/google/vr/sdk/base/GvrViewerParams;->originalDeviceProto:Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;

    .line 647
    return-void
.end method

.method public static createFromNfcContents(Landroid/nfc/NdefMessage;)Lcom/google/vr/sdk/base/GvrViewerParams;
    .locals 7
    .param p0, "tagContents"    # Landroid/nfc/NdefMessage;

    .prologue
    const/4 v2, 0x0

    .line 255
    if-nez p0, :cond_1

    .line 256
    const-string v3, "GvrViewerParams"

    const-string v4, "Could not get contents from NFC tag."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v2

    .line 268
    :cond_0
    :goto_0
    return-object v0

    .line 260
    :cond_1
    invoke-virtual {p0}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v4

    array-length v5, v4

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v5, :cond_2

    aget-object v1, v4, v3

    .line 261
    .local v1, "record":Landroid/nfc/NdefRecord;
    invoke-virtual {v1}, Landroid/nfc/NdefRecord;->toUri()Landroid/net/Uri;

    move-result-object v6

    invoke-static {v6}, Lcom/google/vr/sdk/base/GvrViewerParams;->createFromUri(Landroid/net/Uri;)Lcom/google/vr/sdk/base/GvrViewerParams;

    move-result-object v0

    .line 263
    .local v0, "params":Lcom/google/vr/sdk/base/GvrViewerParams;
    if-nez v0, :cond_0

    .line 260
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v0    # "params":Lcom/google/vr/sdk/base/GvrViewerParams;
    .end local v1    # "record":Landroid/nfc/NdefRecord;
    :cond_2
    move-object v0, v2

    .line 268
    goto :goto_0
.end method

.method public static createFromUri(Landroid/net/Uri;)Lcom/google/vr/sdk/base/GvrViewerParams;
    .locals 5
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v0, 0x0

    .line 215
    if-nez p0, :cond_0

    .line 228
    :goto_0
    return-object v0

    .line 219
    :cond_0
    invoke-static {p0}, Lcom/google/vr/sdk/base/GvrViewerParams;->isOriginalCardboardDeviceUri(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 220
    invoke-static {}, Lcom/google/vr/sdk/base/GvrViewerParams;->cardboardV1ViewerParams()Lcom/google/vr/sdk/base/GvrViewerParams;

    move-result-object v0

    goto :goto_0

    .line 223
    :cond_1
    invoke-static {p0}, Lcom/google/vr/sdk/base/GvrViewerParams;->isCardboardDeviceUri(Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 224
    const-string v1, "GvrViewerParams"

    const-string v2, "URI \"%s\" not recognized as GVR viewer."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 228
    :cond_2
    new-instance v0, Lcom/google/vr/sdk/base/GvrViewerParams;

    invoke-static {p0}, Lcom/google/vr/cardboard/ConfigUtils;->readDeviceParamsFromUri(Landroid/net/Uri;)Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/vr/sdk/base/GvrViewerParams;-><init>(Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;)V

    goto :goto_0
.end method

.method private static isCardboardDeviceUri(Landroid/net/Uri;)Z
    .locals 2
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 198
    const-string v0, "http"

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "google.com"

    .line 199
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "/cardboard/cfg"

    .line 200
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 198
    :goto_0
    return v0

    .line 200
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isGvrUri(Landroid/net/Uri;)Z
    .locals 1
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 205
    invoke-static {p0}, Lcom/google/vr/sdk/base/GvrViewerParams;->isOriginalCardboardDeviceUri(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/google/vr/sdk/base/GvrViewerParams;->isCardboardDeviceUri(Landroid/net/Uri;)Z

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

.method public static isOriginalCardboardDeviceUri(Landroid/net/Uri;)Z
    .locals 2
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 191
    sget-object v0, Lcom/google/vr/sdk/base/GvrViewerParams;->URI_ORIGINAL_CARDBOARD_QR_CODE:Landroid/net/Uri;

    invoke-virtual {v0, p0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/vr/sdk/base/GvrViewerParams;->URI_ORIGINAL_CARDBOARD_NFC:Landroid/net/Uri;

    .line 192
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/vr/sdk/base/GvrViewerParams;->URI_ORIGINAL_CARDBOARD_NFC:Landroid/net/Uri;

    .line 193
    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 191
    :goto_0
    return v0

    .line 193
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setDefaultValues()V
    .locals 1

    .prologue
    .line 620
    const-string v0, "Google, Inc."

    iput-object v0, p0, Lcom/google/vr/sdk/base/GvrViewerParams;->vendor:Ljava/lang/String;

    .line 621
    const-string v0, "Default Cardboard"

    iput-object v0, p0, Lcom/google/vr/sdk/base/GvrViewerParams;->model:Ljava/lang/String;

    .line 622
    const v0, 0x3d83126f    # 0.064f

    iput v0, p0, Lcom/google/vr/sdk/base/GvrViewerParams;->interLensDistance:F

    .line 623
    sget-object v0, Lcom/google/vr/sdk/base/GvrViewerParams;->CARDBOARD_V2_2_VERTICAL_ALIGNMENT:Lcom/google/vr/sdk/base/GvrViewerParams$VerticalAlignmentType;

    iput-object v0, p0, Lcom/google/vr/sdk/base/GvrViewerParams;->verticalAlignment:Lcom/google/vr/sdk/base/GvrViewerParams$VerticalAlignmentType;

    .line 624
    const v0, 0x3d0f5c29    # 0.035f

    iput v0, p0, Lcom/google/vr/sdk/base/GvrViewerParams;->verticalDistanceToLensCenter:F

    .line 625
    const v0, 0x3d1fbe77    # 0.039f

    iput v0, p0, Lcom/google/vr/sdk/base/GvrViewerParams;->screenToLensDistance:F

    .line 626
    new-instance v0, Lcom/google/vr/sdk/base/FieldOfView;

    invoke-direct {v0}, Lcom/google/vr/sdk/base/FieldOfView;-><init>()V

    iput-object v0, p0, Lcom/google/vr/sdk/base/GvrViewerParams;->leftEyeMaxFov:Lcom/google/vr/sdk/base/FieldOfView;

    .line 627
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/vr/sdk/base/GvrViewerParams;->hasMagnet:Z

    .line 629
    new-instance v0, Lcom/google/vr/sdk/base/Distortion;

    invoke-direct {v0}, Lcom/google/vr/sdk/base/Distortion;-><init>()V

    iput-object v0, p0, Lcom/google/vr/sdk/base/GvrViewerParams;->distortion:Lcom/google/vr/sdk/base/Distortion;

    .line 630
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 552
    if-nez p1, :cond_1

    .line 588
    :cond_0
    :goto_0
    return v2

    .line 556
    :cond_1
    if-ne p1, p0, :cond_2

    move v2, v3

    .line 557
    goto :goto_0

    .line 560
    :cond_2
    instance-of v4, p1, Lcom/google/vr/sdk/base/GvrViewerParams;

    if-eqz v4, :cond_0

    move-object v1, p1

    .line 564
    check-cast v1, Lcom/google/vr/sdk/base/GvrViewerParams;

    .line 567
    .local v1, "o":Lcom/google/vr/sdk/base/GvrViewerParams;
    iget-object v4, p0, Lcom/google/vr/sdk/base/GvrViewerParams;->vendor:Ljava/lang/String;

    iget-object v5, v1, Lcom/google/vr/sdk/base/GvrViewerParams;->vendor:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/google/vr/sdk/base/GvrViewerParams;->model:Ljava/lang/String;

    iget-object v5, v1, Lcom/google/vr/sdk/base/GvrViewerParams;->model:Ljava/lang/String;

    .line 568
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget v4, p0, Lcom/google/vr/sdk/base/GvrViewerParams;->interLensDistance:F

    iget v5, v1, Lcom/google/vr/sdk/base/GvrViewerParams;->interLensDistance:F

    cmpl-float v4, v4, v5

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/google/vr/sdk/base/GvrViewerParams;->verticalAlignment:Lcom/google/vr/sdk/base/GvrViewerParams$VerticalAlignmentType;

    iget-object v5, v1, Lcom/google/vr/sdk/base/GvrViewerParams;->verticalAlignment:Lcom/google/vr/sdk/base/GvrViewerParams$VerticalAlignmentType;

    if-ne v4, v5, :cond_4

    iget-object v4, p0, Lcom/google/vr/sdk/base/GvrViewerParams;->verticalAlignment:Lcom/google/vr/sdk/base/GvrViewerParams$VerticalAlignmentType;

    sget-object v5, Lcom/google/vr/sdk/base/GvrViewerParams$VerticalAlignmentType;->CENTER:Lcom/google/vr/sdk/base/GvrViewerParams$VerticalAlignmentType;

    if-eq v4, v5, :cond_3

    iget v4, p0, Lcom/google/vr/sdk/base/GvrViewerParams;->verticalDistanceToLensCenter:F

    iget v5, v1, Lcom/google/vr/sdk/base/GvrViewerParams;->verticalDistanceToLensCenter:F

    cmpl-float v4, v4, v5

    if-nez v4, :cond_4

    :cond_3
    iget v4, p0, Lcom/google/vr/sdk/base/GvrViewerParams;->screenToLensDistance:F

    iget v5, v1, Lcom/google/vr/sdk/base/GvrViewerParams;->screenToLensDistance:F

    cmpl-float v4, v4, v5

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/google/vr/sdk/base/GvrViewerParams;->leftEyeMaxFov:Lcom/google/vr/sdk/base/FieldOfView;

    iget-object v5, v1, Lcom/google/vr/sdk/base/GvrViewerParams;->leftEyeMaxFov:Lcom/google/vr/sdk/base/FieldOfView;

    .line 574
    invoke-virtual {v4, v5}, Lcom/google/vr/sdk/base/FieldOfView;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/google/vr/sdk/base/GvrViewerParams;->distortion:Lcom/google/vr/sdk/base/Distortion;

    iget-object v5, v1, Lcom/google/vr/sdk/base/GvrViewerParams;->distortion:Lcom/google/vr/sdk/base/Distortion;

    .line 575
    invoke-virtual {v4, v5}, Lcom/google/vr/sdk/base/Distortion;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-boolean v4, p0, Lcom/google/vr/sdk/base/GvrViewerParams;->hasMagnet:Z

    iget-boolean v5, v1, Lcom/google/vr/sdk/base/GvrViewerParams;->hasMagnet:Z

    if-ne v4, v5, :cond_4

    move v0, v3

    .line 581
    .local v0, "fieldsHandledByThisClassAreEqual":Z
    :goto_1
    if-eqz v0, :cond_0

    .line 588
    iget-object v2, p0, Lcom/google/vr/sdk/base/GvrViewerParams;->originalDeviceProto:Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;

    iget-object v3, v1, Lcom/google/vr/sdk/base/GvrViewerParams;->originalDeviceProto:Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;

    invoke-static {v2, v3}, Lcom/google/protobuf/nano/MessageNano;->messageNanoEquals(Lcom/google/protobuf/nano/MessageNano;Lcom/google/protobuf/nano/MessageNano;)Z

    move-result v2

    goto :goto_0

    .end local v0    # "fieldsHandledByThisClassAreEqual":Z
    :cond_4
    move v0, v2

    .line 575
    goto :goto_1
.end method

.method public getDistortion()Lcom/google/vr/sdk/base/Distortion;
    .locals 1

    .prologue
    .line 505
    iget-object v0, p0, Lcom/google/vr/sdk/base/GvrViewerParams;->distortion:Lcom/google/vr/sdk/base/Distortion;

    return-object v0
.end method

.method public getHasMagnet()Z
    .locals 1

    .prologue
    .line 526
    iget-boolean v0, p0, Lcom/google/vr/sdk/base/GvrViewerParams;->hasMagnet:Z

    return v0
.end method

.method public getInterLensDistance()F
    .locals 1

    .prologue
    .line 394
    iget v0, p0, Lcom/google/vr/sdk/base/GvrViewerParams;->interLensDistance:F

    return v0
.end method

.method public getLeftEyeMaxFov()Lcom/google/vr/sdk/base/FieldOfView;
    .locals 1

    .prologue
    .line 517
    iget-object v0, p0, Lcom/google/vr/sdk/base/GvrViewerParams;->leftEyeMaxFov:Lcom/google/vr/sdk/base/FieldOfView;

    return-object v0
.end method

.method public getModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 376
    iget-object v0, p0, Lcom/google/vr/sdk/base/GvrViewerParams;->model:Ljava/lang/String;

    return-object v0
.end method

.method public getScreenToLensDistance()F
    .locals 1

    .prologue
    .line 496
    iget v0, p0, Lcom/google/vr/sdk/base/GvrViewerParams;->screenToLensDistance:F

    return v0
.end method

.method public getVendor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lcom/google/vr/sdk/base/GvrViewerParams;->vendor:Ljava/lang/String;

    return-object v0
.end method

.method public getVerticalAlignment()Lcom/google/vr/sdk/base/GvrViewerParams$VerticalAlignmentType;
    .locals 1

    .prologue
    .line 435
    iget-object v0, p0, Lcom/google/vr/sdk/base/GvrViewerParams;->verticalAlignment:Lcom/google/vr/sdk/base/GvrViewerParams$VerticalAlignmentType;

    return-object v0
.end method

.method public getVerticalDistanceToLensCenter()F
    .locals 1

    .prologue
    .line 462
    iget v0, p0, Lcom/google/vr/sdk/base/GvrViewerParams;->verticalDistanceToLensCenter:F

    return v0
.end method

.method getYEyeOffsetMeters(Lcom/google/vr/sdk/base/ScreenParams;)F
    .locals 3
    .param p1, "screen"    # Lcom/google/vr/sdk/base/ScreenParams;

    .prologue
    .line 467
    sget-object v0, Lcom/google/vr/sdk/base/GvrViewerParams$1;->$SwitchMap$com$google$vr$sdk$base$GvrViewerParams$VerticalAlignmentType:[I

    invoke-virtual {p0}, Lcom/google/vr/sdk/base/GvrViewerParams;->getVerticalAlignment()Lcom/google/vr/sdk/base/GvrViewerParams$VerticalAlignmentType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/vr/sdk/base/GvrViewerParams$VerticalAlignmentType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 470
    invoke-virtual {p1}, Lcom/google/vr/sdk/base/ScreenParams;->getHeightMeters()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 474
    :goto_0
    return v0

    .line 472
    :pswitch_0
    invoke-virtual {p0}, Lcom/google/vr/sdk/base/GvrViewerParams;->getVerticalDistanceToLensCenter()F

    move-result v0

    invoke-virtual {p1}, Lcom/google/vr/sdk/base/ScreenParams;->getBorderSizeMeters()F

    move-result v1

    sub-float/2addr v0, v1

    goto :goto_0

    .line 474
    :pswitch_1
    invoke-virtual {p1}, Lcom/google/vr/sdk/base/ScreenParams;->getHeightMeters()F

    move-result v0

    .line 475
    invoke-virtual {p0}, Lcom/google/vr/sdk/base/GvrViewerParams;->getVerticalDistanceToLensCenter()F

    move-result v1

    invoke-virtual {p1}, Lcom/google/vr/sdk/base/ScreenParams;->getBorderSizeMeters()F

    move-result v2

    sub-float/2addr v1, v2

    sub-float/2addr v0, v1

    .line 474
    goto :goto_0

    .line 467
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public isDefault()Z
    .locals 1

    .prologue
    .line 615
    sget-object v0, Lcom/google/vr/sdk/base/GvrViewerParams;->DEFAULT_PARAMS:Lcom/google/vr/sdk/base/GvrViewerParams;

    invoke-virtual {v0, p0}, Lcom/google/vr/sdk/base/GvrViewerParams;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setHasMagnet(Z)V
    .locals 0
    .param p1, "magnet"    # Z

    .prologue
    .line 535
    iput-boolean p1, p0, Lcom/google/vr/sdk/base/GvrViewerParams;->hasMagnet:Z

    .line 536
    return-void
.end method

.method public setInterLensDistance(F)V
    .locals 0
    .param p1, "interLensDistance"    # F

    .prologue
    .line 385
    iput p1, p0, Lcom/google/vr/sdk/base/GvrViewerParams;->interLensDistance:F

    .line 386
    return-void
.end method

.method public setModel(Ljava/lang/String;)V
    .locals 0
    .param p1, "model"    # Ljava/lang/String;

    .prologue
    .line 367
    if-eqz p1, :cond_0

    .end local p1    # "model":Ljava/lang/String;
    :goto_0
    iput-object p1, p0, Lcom/google/vr/sdk/base/GvrViewerParams;->model:Ljava/lang/String;

    .line 368
    return-void

    .line 367
    .restart local p1    # "model":Ljava/lang/String;
    :cond_0
    const-string p1, ""

    goto :goto_0
.end method

.method public setScreenToLensDistance(F)V
    .locals 0
    .param p1, "screenToLensDistance"    # F

    .prologue
    .line 487
    iput p1, p0, Lcom/google/vr/sdk/base/GvrViewerParams;->screenToLensDistance:F

    .line 488
    return-void
.end method

.method public setVendor(Ljava/lang/String;)V
    .locals 0
    .param p1, "vendor"    # Ljava/lang/String;

    .prologue
    .line 349
    if-eqz p1, :cond_0

    .end local p1    # "vendor":Ljava/lang/String;
    :goto_0
    iput-object p1, p0, Lcom/google/vr/sdk/base/GvrViewerParams;->vendor:Ljava/lang/String;

    .line 350
    return-void

    .line 349
    .restart local p1    # "vendor":Ljava/lang/String;
    :cond_0
    const-string p1, ""

    goto :goto_0
.end method

.method public setVerticalAlignment(Lcom/google/vr/sdk/base/GvrViewerParams$VerticalAlignmentType;)V
    .locals 0
    .param p1, "verticalAlignment"    # Lcom/google/vr/sdk/base/GvrViewerParams$VerticalAlignmentType;

    .prologue
    .line 442
    iput-object p1, p0, Lcom/google/vr/sdk/base/GvrViewerParams;->verticalAlignment:Lcom/google/vr/sdk/base/GvrViewerParams$VerticalAlignmentType;

    .line 443
    return-void
.end method

.method public setVerticalDistanceToLensCenter(F)V
    .locals 0
    .param p1, "verticalDistanceToLensCenter"    # F

    .prologue
    .line 452
    iput p1, p0, Lcom/google/vr/sdk/base/GvrViewerParams;->verticalDistanceToLensCenter:F

    .line 453
    return-void
.end method

.method toByteArray()[B
    .locals 1

    .prologue
    .line 277
    invoke-virtual {p0}, Lcom/google/vr/sdk/base/GvrViewerParams;->toProtobuf()Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v0

    return-object v0
.end method

.method public toProtobuf()Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;
    .locals 3

    .prologue
    .line 291
    iget-object v1, p0, Lcom/google/vr/sdk/base/GvrViewerParams;->originalDeviceProto:Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;

    if-eqz v1, :cond_1

    .line 292
    iget-object v1, p0, Lcom/google/vr/sdk/base/GvrViewerParams;->originalDeviceProto:Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;

    invoke-virtual {v1}, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->clone()Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;

    move-result-object v0

    .line 294
    .local v0, "params":Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;
    :goto_0
    iget-object v1, p0, Lcom/google/vr/sdk/base/GvrViewerParams;->vendor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->setVendor(Ljava/lang/String;)Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;

    .line 295
    iget-object v1, p0, Lcom/google/vr/sdk/base/GvrViewerParams;->model:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->setModel(Ljava/lang/String;)Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;

    .line 296
    iget v1, p0, Lcom/google/vr/sdk/base/GvrViewerParams;->interLensDistance:F

    invoke-virtual {v0, v1}, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->setInterLensDistance(F)Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;

    .line 297
    iget-object v1, p0, Lcom/google/vr/sdk/base/GvrViewerParams;->verticalAlignment:Lcom/google/vr/sdk/base/GvrViewerParams$VerticalAlignmentType;

    invoke-virtual {v1}, Lcom/google/vr/sdk/base/GvrViewerParams$VerticalAlignmentType;->toProtoValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->setVerticalAlignment(I)Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;

    .line 298
    iget-object v1, p0, Lcom/google/vr/sdk/base/GvrViewerParams;->verticalAlignment:Lcom/google/vr/sdk/base/GvrViewerParams$VerticalAlignmentType;

    sget-object v2, Lcom/google/vr/sdk/base/GvrViewerParams$VerticalAlignmentType;->CENTER:Lcom/google/vr/sdk/base/GvrViewerParams$VerticalAlignmentType;

    if-ne v1, v2, :cond_2

    .line 303
    const v1, 0x3d0f5c29    # 0.035f

    invoke-virtual {v0, v1}, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->setTrayToLensDistance(F)Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;

    .line 307
    :goto_1
    iget v1, p0, Lcom/google/vr/sdk/base/GvrViewerParams;->screenToLensDistance:F

    invoke-virtual {v0, v1}, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->setScreenToLensDistance(F)Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;

    .line 308
    iget-object v1, p0, Lcom/google/vr/sdk/base/GvrViewerParams;->leftEyeMaxFov:Lcom/google/vr/sdk/base/FieldOfView;

    invoke-virtual {v1}, Lcom/google/vr/sdk/base/FieldOfView;->toProtobuf()[F

    move-result-object v1

    iput-object v1, v0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->leftEyeFieldOfViewAngles:[F

    .line 309
    iget-object v1, p0, Lcom/google/vr/sdk/base/GvrViewerParams;->distortion:Lcom/google/vr/sdk/base/Distortion;

    invoke-virtual {v1}, Lcom/google/vr/sdk/base/Distortion;->toProtobuf()[F

    move-result-object v1

    iput-object v1, v0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->distortionCoefficients:[F

    .line 311
    iget-boolean v1, p0, Lcom/google/vr/sdk/base/GvrViewerParams;->hasMagnet:Z

    if-eqz v1, :cond_0

    .line 312
    iget-boolean v1, p0, Lcom/google/vr/sdk/base/GvrViewerParams;->hasMagnet:Z

    invoke-virtual {v0, v1}, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->setHasMagnet(Z)Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;

    .line 315
    :cond_0
    return-object v0

    .line 292
    .end local v0    # "params":Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;
    :cond_1
    new-instance v0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;

    invoke-direct {v0}, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;-><init>()V

    goto :goto_0

    .line 305
    .restart local v0    # "params":Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;
    :cond_2
    iget v1, p0, Lcom/google/vr/sdk/base/GvrViewerParams;->verticalDistanceToLensCenter:F

    invoke-virtual {v0, v1}, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->setTrayToLensDistance(F)Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 598
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{\n"

    .line 599
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/vr/sdk/base/GvrViewerParams;->vendor:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0xc

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "  vendor: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 600
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/vr/sdk/base/GvrViewerParams;->model:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0xb

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "  model: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 601
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/vr/sdk/base/GvrViewerParams;->interLensDistance:F

    const/16 v2, 0x28

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "  inter_lens_distance: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 602
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/vr/sdk/base/GvrViewerParams;->verticalAlignment:Lcom/google/vr/sdk/base/GvrViewerParams$VerticalAlignmentType;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x18

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "  vertical_alignment: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 603
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/vr/sdk/base/GvrViewerParams;->verticalDistanceToLensCenter:F

    const/16 v2, 0x35

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "  vertical_distance_to_lens_center: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 604
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/vr/sdk/base/GvrViewerParams;->screenToLensDistance:F

    const/16 v2, 0x2c

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "  screen_to_lens_distance: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 605
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/vr/sdk/base/GvrViewerParams;->leftEyeMaxFov:Lcom/google/vr/sdk/base/FieldOfView;

    .line 606
    invoke-virtual {v1}, Lcom/google/vr/sdk/base/FieldOfView;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\n"

    const-string v3, "\n  "

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x16

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "  left_eye_max_fov: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/vr/sdk/base/GvrViewerParams;->distortion:Lcom/google/vr/sdk/base/Distortion;

    .line 607
    invoke-virtual {v1}, Lcom/google/vr/sdk/base/Distortion;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\n"

    const-string v3, "\n  "

    .line 608
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x10

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "  distortion: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 607
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/vr/sdk/base/GvrViewerParams;->hasMagnet:Z

    const/16 v2, 0x11

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "  magnet: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 609
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}\n"

    .line 610
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 611
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 598
    return-object v0
.end method

.method public toUri()Landroid/net/Uri;
    .locals 6

    .prologue
    .line 330
    invoke-virtual {p0}, Lcom/google/vr/sdk/base/GvrViewerParams;->toByteArray()[B

    move-result-object v0

    .line 331
    .local v0, "paramsData":[B
    array-length v1, v0

    .line 333
    .local v1, "paramsSize":I
    new-instance v2, Landroid/net/Uri$Builder;

    invoke-direct {v2}, Landroid/net/Uri$Builder;-><init>()V

    const-string v3, "http"

    .line 334
    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "google.com"

    .line 335
    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "cardboard/cfg"

    .line 336
    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "p"

    const/4 v4, 0x0

    const/16 v5, 0xb

    .line 338
    invoke-static {v0, v4, v1, v5}, Landroid/util/Base64;->encodeToString([BIII)Ljava/lang/String;

    move-result-object v4

    .line 337
    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    .line 340
    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 333
    return-object v2
.end method
