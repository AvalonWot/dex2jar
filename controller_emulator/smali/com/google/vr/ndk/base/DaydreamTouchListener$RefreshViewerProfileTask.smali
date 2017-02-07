.class Lcom/google/vr/ndk/base/DaydreamTouchListener$RefreshViewerProfileTask;
.super Landroid/os/AsyncTask;
.source "DaydreamTouchListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/ndk/base/DaydreamTouchListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RefreshViewerProfileTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/vr/ndk/base/DaydreamTouchListener;


# direct methods
.method private constructor <init>(Lcom/google/vr/ndk/base/DaydreamTouchListener;)V
    .locals 0

    .prologue
    .line 285
    iput-object p1, p0, Lcom/google/vr/ndk/base/DaydreamTouchListener$RefreshViewerProfileTask;->this$0:Lcom/google/vr/ndk/base/DaydreamTouchListener;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/vr/ndk/base/DaydreamTouchListener;Lcom/google/vr/ndk/base/DaydreamTouchListener$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/vr/ndk/base/DaydreamTouchListener;
    .param p2, "x1"    # Lcom/google/vr/ndk/base/DaydreamTouchListener$1;

    .prologue
    .line 285
    invoke-direct {p0, p1}, Lcom/google/vr/ndk/base/DaydreamTouchListener$RefreshViewerProfileTask;-><init>(Lcom/google/vr/ndk/base/DaydreamTouchListener;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;
    .locals 1
    .param p1, "v"    # [Ljava/lang/Void;

    .prologue
    .line 289
    iget-object v0, p0, Lcom/google/vr/ndk/base/DaydreamTouchListener$RefreshViewerProfileTask;->this$0:Lcom/google/vr/ndk/base/DaydreamTouchListener;

    # getter for: Lcom/google/vr/ndk/base/DaydreamTouchListener;->vrParamsProvider:Lcom/google/vr/cardboard/VrParamsProvider;
    invoke-static {v0}, Lcom/google/vr/ndk/base/DaydreamTouchListener;->access$200(Lcom/google/vr/ndk/base/DaydreamTouchListener;)Lcom/google/vr/cardboard/VrParamsProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/vr/cardboard/VrParamsProvider;->readDeviceParams()Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 285
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/google/vr/ndk/base/DaydreamTouchListener$RefreshViewerProfileTask;->doInBackground([Ljava/lang/Void;)Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;)V
    .locals 8
    .param p1, "deviceParams"    # Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;

    .prologue
    .line 297
    if-eqz p1, :cond_0

    iget-object v3, p1, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->daydreamInternal:Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DaydreamInternalParams;

    if-eqz v3, :cond_0

    iget-object v3, p1, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->daydreamInternal:Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DaydreamInternalParams;

    iget-object v3, v3, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DaydreamInternalParams;->alignmentMarkers:[Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$ScreenAlignmentMarker;

    if-nez v3, :cond_2

    .line 300
    :cond_0
    iget-object v3, p0, Lcom/google/vr/ndk/base/DaydreamTouchListener$RefreshViewerProfileTask;->this$0:Lcom/google/vr/ndk/base/DaydreamTouchListener;

    const/4 v4, 0x0

    # setter for: Lcom/google/vr/ndk/base/DaydreamTouchListener;->markersInPixels:[[F
    invoke-static {v3, v4}, Lcom/google/vr/ndk/base/DaydreamTouchListener;->access$302(Lcom/google/vr/ndk/base/DaydreamTouchListener;[[F)[[F

    .line 320
    :cond_1
    return-void

    .line 304
    :cond_2
    iget-object v3, p1, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->daydreamInternal:Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DaydreamInternalParams;

    iget-object v2, v3, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DaydreamInternalParams;->alignmentMarkers:[Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$ScreenAlignmentMarker;

    .line 306
    .local v2, "markers":[Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$ScreenAlignmentMarker;
    iget-object v3, p0, Lcom/google/vr/ndk/base/DaydreamTouchListener$RefreshViewerProfileTask;->this$0:Lcom/google/vr/ndk/base/DaydreamTouchListener;

    array-length v4, v2

    new-array v4, v4, [[F

    # setter for: Lcom/google/vr/ndk/base/DaydreamTouchListener;->markersInPixels:[[F
    invoke-static {v3, v4}, Lcom/google/vr/ndk/base/DaydreamTouchListener;->access$302(Lcom/google/vr/ndk/base/DaydreamTouchListener;[[F)[[F

    .line 307
    iget-object v3, p0, Lcom/google/vr/ndk/base/DaydreamTouchListener$RefreshViewerProfileTask;->this$0:Lcom/google/vr/ndk/base/DaydreamTouchListener;

    array-length v4, v2

    new-array v4, v4, [D

    # setter for: Lcom/google/vr/ndk/base/DaydreamTouchListener;->currentMarkerBestDists:[D
    invoke-static {v3, v4}, Lcom/google/vr/ndk/base/DaydreamTouchListener;->access$402(Lcom/google/vr/ndk/base/DaydreamTouchListener;[D)[D

    .line 308
    iget-object v3, p0, Lcom/google/vr/ndk/base/DaydreamTouchListener$RefreshViewerProfileTask;->this$0:Lcom/google/vr/ndk/base/DaydreamTouchListener;

    array-length v4, v2

    new-array v4, v4, [I

    # setter for: Lcom/google/vr/ndk/base/DaydreamTouchListener;->markerBestTouch:[I
    invoke-static {v3, v4}, Lcom/google/vr/ndk/base/DaydreamTouchListener;->access$502(Lcom/google/vr/ndk/base/DaydreamTouchListener;[I)[I

    .line 310
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 311
    aget-object v1, v2, v0

    .line 312
    .local v1, "marker":Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$ScreenAlignmentMarker;
    iget-object v3, p0, Lcom/google/vr/ndk/base/DaydreamTouchListener$RefreshViewerProfileTask;->this$0:Lcom/google/vr/ndk/base/DaydreamTouchListener;

    # getter for: Lcom/google/vr/ndk/base/DaydreamTouchListener;->markersInPixels:[[F
    invoke-static {v3}, Lcom/google/vr/ndk/base/DaydreamTouchListener;->access$300(Lcom/google/vr/ndk/base/DaydreamTouchListener;)[[F

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [F

    aput-object v4, v3, v0

    .line 313
    iget-object v3, p0, Lcom/google/vr/ndk/base/DaydreamTouchListener$RefreshViewerProfileTask;->this$0:Lcom/google/vr/ndk/base/DaydreamTouchListener;

    # getter for: Lcom/google/vr/ndk/base/DaydreamTouchListener;->markersInPixels:[[F
    invoke-static {v3}, Lcom/google/vr/ndk/base/DaydreamTouchListener;->access$300(Lcom/google/vr/ndk/base/DaydreamTouchListener;)[[F

    move-result-object v3

    aget-object v3, v3, v0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/vr/ndk/base/DaydreamTouchListener$RefreshViewerProfileTask;->this$0:Lcom/google/vr/ndk/base/DaydreamTouchListener;

    .line 314
    # getter for: Lcom/google/vr/ndk/base/DaydreamTouchListener;->displayMetrics:Landroid/util/DisplayMetrics;
    invoke-static {v5}, Lcom/google/vr/ndk/base/DaydreamTouchListener;->access$600(Lcom/google/vr/ndk/base/DaydreamTouchListener;)Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-virtual {v1}, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$ScreenAlignmentMarker;->getHorizontal()F

    move-result v6

    iget-object v7, p0, Lcom/google/vr/ndk/base/DaydreamTouchListener$RefreshViewerProfileTask;->this$0:Lcom/google/vr/ndk/base/DaydreamTouchListener;

    # getter for: Lcom/google/vr/ndk/base/DaydreamTouchListener;->xMetersPerPixel:F
    invoke-static {v7}, Lcom/google/vr/ndk/base/DaydreamTouchListener;->access$700(Lcom/google/vr/ndk/base/DaydreamTouchListener;)F

    move-result v7

    div-float/2addr v6, v7

    add-float/2addr v5, v6

    aput v5, v3, v4

    .line 315
    iget-object v3, p0, Lcom/google/vr/ndk/base/DaydreamTouchListener$RefreshViewerProfileTask;->this$0:Lcom/google/vr/ndk/base/DaydreamTouchListener;

    # getter for: Lcom/google/vr/ndk/base/DaydreamTouchListener;->markersInPixels:[[F
    invoke-static {v3}, Lcom/google/vr/ndk/base/DaydreamTouchListener;->access$300(Lcom/google/vr/ndk/base/DaydreamTouchListener;)[[F

    move-result-object v3

    aget-object v3, v3, v0

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/google/vr/ndk/base/DaydreamTouchListener$RefreshViewerProfileTask;->this$0:Lcom/google/vr/ndk/base/DaydreamTouchListener;

    .line 316
    # getter for: Lcom/google/vr/ndk/base/DaydreamTouchListener;->displayMetrics:Landroid/util/DisplayMetrics;
    invoke-static {v5}, Lcom/google/vr/ndk/base/DaydreamTouchListener;->access$600(Lcom/google/vr/ndk/base/DaydreamTouchListener;)Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v5, v5

    .line 317
    invoke-virtual {v1}, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$ScreenAlignmentMarker;->getVertical()F

    move-result v6

    invoke-virtual {p1}, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->getTrayToLensDistance()F

    move-result v7

    add-float/2addr v6, v7

    iget-object v7, p0, Lcom/google/vr/ndk/base/DaydreamTouchListener$RefreshViewerProfileTask;->this$0:Lcom/google/vr/ndk/base/DaydreamTouchListener;

    # getter for: Lcom/google/vr/ndk/base/DaydreamTouchListener;->borderSizeMeters:F
    invoke-static {v7}, Lcom/google/vr/ndk/base/DaydreamTouchListener;->access$800(Lcom/google/vr/ndk/base/DaydreamTouchListener;)F

    move-result v7

    sub-float/2addr v6, v7

    iget-object v7, p0, Lcom/google/vr/ndk/base/DaydreamTouchListener$RefreshViewerProfileTask;->this$0:Lcom/google/vr/ndk/base/DaydreamTouchListener;

    .line 318
    # getter for: Lcom/google/vr/ndk/base/DaydreamTouchListener;->yMetersPerPixel:F
    invoke-static {v7}, Lcom/google/vr/ndk/base/DaydreamTouchListener;->access$900(Lcom/google/vr/ndk/base/DaydreamTouchListener;)F

    move-result v7

    div-float/2addr v6, v7

    sub-float/2addr v5, v6

    aput v5, v3, v4

    .line 310
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 285
    check-cast p1, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;

    invoke-virtual {p0, p1}, Lcom/google/vr/ndk/base/DaydreamTouchListener$RefreshViewerProfileTask;->onPostExecute(Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;)V

    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 285
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/google/vr/ndk/base/DaydreamTouchListener$RefreshViewerProfileTask;->onProgressUpdate([Ljava/lang/Void;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Void;)V
    .locals 0
    .param p1, "v"    # [Ljava/lang/Void;

    .prologue
    .line 293
    return-void
.end method
