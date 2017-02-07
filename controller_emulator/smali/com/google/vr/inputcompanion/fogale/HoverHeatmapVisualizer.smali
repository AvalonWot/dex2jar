.class public Lcom/google/vr/inputcompanion/fogale/HoverHeatmapVisualizer;
.super Landroid/app/Activity;
.source "HoverHeatmapVisualizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/inputcompanion/fogale/HoverHeatmapVisualizer$RenderView;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/google/vr/inputcompanion/fogale/HoverHeatmapVisualizer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/vr/inputcompanion/fogale/HoverHeatmapVisualizer;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(F)I
    .locals 1
    .param p0, "x0"    # F

    .prologue
    .line 16
    invoke-static {p0}, Lcom/google/vr/inputcompanion/fogale/HoverHeatmapVisualizer;->heatmapToRGB(F)I

    move-result v0

    return v0
.end method

.method private static blue(D)D
    .locals 2
    .param p0, "gray"    # D

    .prologue
    .line 115
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, p0

    invoke-static {v0, v1}, Lcom/google/vr/inputcompanion/fogale/HoverHeatmapVisualizer;->mapToUnitInterval(D)D

    move-result-wide v0

    return-wide v0
.end method

.method private static green(D)D
    .locals 2
    .param p0, "gray"    # D

    .prologue
    .line 111
    invoke-static {p0, p1}, Lcom/google/vr/inputcompanion/fogale/HoverHeatmapVisualizer;->mapToUnitInterval(D)D

    move-result-wide v0

    return-wide v0
.end method

.method private static heatmapToRGB(F)I
    .locals 10
    .param p0, "heatmapData"    # F

    .prologue
    const-wide v8, 0x406fe00000000000L    # 255.0

    .line 99
    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v4, p0

    sub-float/2addr v3, v4

    float-to-double v0, v3

    .line 100
    .local v0, "gray":D
    const/16 v3, 0xff

    invoke-static {v0, v1}, Lcom/google/vr/inputcompanion/fogale/HoverHeatmapVisualizer;->red(D)D

    move-result-wide v4

    mul-double/2addr v4, v8

    double-to-int v4, v4

    .line 101
    invoke-static {v0, v1}, Lcom/google/vr/inputcompanion/fogale/HoverHeatmapVisualizer;->green(D)D

    move-result-wide v6

    mul-double/2addr v6, v8

    double-to-int v5, v6

    invoke-static {v0, v1}, Lcom/google/vr/inputcompanion/fogale/HoverHeatmapVisualizer;->blue(D)D

    move-result-wide v6

    mul-double/2addr v6, v8

    double-to-int v6, v6

    .line 100
    invoke-static {v3, v4, v5, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    .line 103
    .local v2, "rgbValue":I
    return v2
.end method

.method private static interpolate(DDDDD)D
    .locals 4
    .param p0, "val"    # D
    .param p2, "y0"    # D
    .param p4, "x0"    # D
    .param p6, "y1"    # D
    .param p8, "x1"    # D

    .prologue
    .line 144
    sub-double v0, p0, p4

    sub-double v2, p6, p2

    mul-double/2addr v0, v2

    sub-double v2, p8, p4

    div-double/2addr v0, v2

    add-double/2addr v0, p2

    return-wide v0
.end method

.method private static mapToUnitInterval(D)D
    .locals 14
    .param p0, "val"    # D

    .prologue
    const-wide/high16 v10, 0x3fd0000000000000L    # 0.25

    const-wide/high16 v4, -0x4018000000000000L    # -0.75

    const-wide/high16 v8, -0x4030000000000000L    # -0.25

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    const-wide/16 v2, 0x0

    .line 127
    cmpg-double v0, p0, v4

    if-gtz v0, :cond_1

    .line 136
    :cond_0
    :goto_0
    return-wide v2

    .line 129
    :cond_1
    cmpg-double v0, p0, v8

    if-gtz v0, :cond_2

    move-wide v0, p0

    .line 130
    invoke-static/range {v0 .. v9}, Lcom/google/vr/inputcompanion/fogale/HoverHeatmapVisualizer;->interpolate(DDDDD)D

    move-result-wide v2

    goto :goto_0

    .line 131
    :cond_2
    cmpg-double v0, p0, v10

    if-gtz v0, :cond_3

    move-wide v2, v6

    .line 132
    goto :goto_0

    .line 133
    :cond_3
    const-wide/high16 v0, 0x3fe8000000000000L    # 0.75

    cmpg-double v0, p0, v0

    if-gtz v0, :cond_0

    .line 134
    const-wide/high16 v12, 0x3fe8000000000000L    # 0.75

    move-wide v4, p0

    move-wide v8, v10

    move-wide v10, v2

    invoke-static/range {v4 .. v13}, Lcom/google/vr/inputcompanion/fogale/HoverHeatmapVisualizer;->interpolate(DDDDD)D

    move-result-wide v2

    goto :goto_0
.end method

.method private static red(D)D
    .locals 2
    .param p0, "gray"    # D

    .prologue
    .line 107
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    sub-double v0, p0, v0

    invoke-static {v0, v1}, Lcom/google/vr/inputcompanion/fogale/HoverHeatmapVisualizer;->mapToUnitInterval(D)D

    move-result-wide v0

    return-wide v0
.end method

.method private setFullscreenMode()V
    .locals 2

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/google/vr/inputcompanion/fogale/HoverHeatmapVisualizer;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x1706

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 40
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 21
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    invoke-direct {p0}, Lcom/google/vr/inputcompanion/fogale/HoverHeatmapVisualizer;->setFullscreenMode()V

    .line 23
    new-instance v0, Lcom/google/vr/inputcompanion/fogale/HoverHeatmapVisualizer$RenderView;

    invoke-direct {v0, p0}, Lcom/google/vr/inputcompanion/fogale/HoverHeatmapVisualizer$RenderView;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p0, v0}, Lcom/google/vr/inputcompanion/fogale/HoverHeatmapVisualizer;->setContentView(Landroid/view/View;)V

    .line 24
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 28
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 29
    invoke-direct {p0}, Lcom/google/vr/inputcompanion/fogale/HoverHeatmapVisualizer;->setFullscreenMode()V

    .line 30
    return-void
.end method
