.class Lcom/google/vr/inputcompanion/fogale/HoverHeatmapVisualizer$RenderView;
.super Landroid/view/View;
.source "HoverHeatmapVisualizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/inputcompanion/fogale/HoverHeatmapVisualizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RenderView"
.end annotation


# instance fields
.field private final cellHeight:I

.field private final cellWidth:I

.field private final heatmapProvider:Lcom/google/vr/inputcompanion/fogale/HoverHeatmapProvider;

.field private final paint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v2, 0x0

    .line 49
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 50
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/google/vr/inputcompanion/fogale/HoverHeatmapVisualizer$RenderView;->paint:Landroid/graphics/Paint;

    .line 52
    invoke-static {}, Lcom/google/vr/inputcompanion/fogale/HoverHeatmapProvider;->create()Lcom/google/vr/inputcompanion/fogale/HoverHeatmapProvider;

    move-result-object v1

    iput-object v1, p0, Lcom/google/vr/inputcompanion/fogale/HoverHeatmapVisualizer$RenderView;->heatmapProvider:Lcom/google/vr/inputcompanion/fogale/HoverHeatmapProvider;

    .line 53
    iget-object v1, p0, Lcom/google/vr/inputcompanion/fogale/HoverHeatmapVisualizer$RenderView;->heatmapProvider:Lcom/google/vr/inputcompanion/fogale/HoverHeatmapProvider;

    if-nez v1, :cond_0

    .line 54
    const-string v1, "Hover heatmap not supported."

    invoke-static {p1, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 55
    iput v2, p0, Lcom/google/vr/inputcompanion/fogale/HoverHeatmapVisualizer$RenderView;->cellWidth:I

    .line 56
    iput v2, p0, Lcom/google/vr/inputcompanion/fogale/HoverHeatmapVisualizer$RenderView;->cellHeight:I

    .line 64
    :goto_0
    return-void

    .line 60
    :cond_0
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 61
    .local v0, "size":Landroid/graphics/Point;
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 62
    iget v1, v0, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/google/vr/inputcompanion/fogale/HoverHeatmapVisualizer$RenderView;->heatmapProvider:Lcom/google/vr/inputcompanion/fogale/HoverHeatmapProvider;

    invoke-virtual {v2}, Lcom/google/vr/inputcompanion/fogale/HoverHeatmapProvider;->getWidth()I

    move-result v2

    div-int/2addr v1, v2

    iput v1, p0, Lcom/google/vr/inputcompanion/fogale/HoverHeatmapVisualizer$RenderView;->cellWidth:I

    .line 63
    iget v1, v0, Landroid/graphics/Point;->y:I

    iget-object v2, p0, Lcom/google/vr/inputcompanion/fogale/HoverHeatmapVisualizer$RenderView;->heatmapProvider:Lcom/google/vr/inputcompanion/fogale/HoverHeatmapProvider;

    invoke-virtual {v2}, Lcom/google/vr/inputcompanion/fogale/HoverHeatmapProvider;->getHeight()I

    move-result v2

    div-int/2addr v1, v2

    iput v1, p0, Lcom/google/vr/inputcompanion/fogale/HoverHeatmapVisualizer$RenderView;->cellHeight:I

    goto :goto_0
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v2, 0x0

    .line 68
    iget-object v0, p0, Lcom/google/vr/inputcompanion/fogale/HoverHeatmapVisualizer$RenderView;->heatmapProvider:Lcom/google/vr/inputcompanion/fogale/HoverHeatmapProvider;

    if-nez v0, :cond_0

    .line 90
    :goto_0
    return-void

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/google/vr/inputcompanion/fogale/HoverHeatmapVisualizer$RenderView;->heatmapProvider:Lcom/google/vr/inputcompanion/fogale/HoverHeatmapProvider;

    invoke-virtual {v0}, Lcom/google/vr/inputcompanion/fogale/HoverHeatmapProvider;->getLatestHeatmap()[F

    move-result-object v7

    .line 73
    .local v7, "heatmap":[F
    if-nez v7, :cond_1

    .line 74
    const/16 v0, 0xff

    const/16 v1, 0x32

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 75
    invoke-virtual {p0}, Lcom/google/vr/inputcompanion/fogale/HoverHeatmapVisualizer$RenderView;->invalidate()V

    goto :goto_0

    .line 79
    :cond_1
    const/4 v10, 0x0

    .local v10, "y":I
    :goto_1
    iget-object v0, p0, Lcom/google/vr/inputcompanion/fogale/HoverHeatmapVisualizer$RenderView;->heatmapProvider:Lcom/google/vr/inputcompanion/fogale/HoverHeatmapProvider;

    invoke-virtual {v0}, Lcom/google/vr/inputcompanion/fogale/HoverHeatmapProvider;->getHeight()I

    move-result v0

    if-ge v10, v0, :cond_3

    .line 80
    const/4 v9, 0x0

    .local v9, "x":I
    :goto_2
    iget-object v0, p0, Lcom/google/vr/inputcompanion/fogale/HoverHeatmapVisualizer$RenderView;->heatmapProvider:Lcom/google/vr/inputcompanion/fogale/HoverHeatmapProvider;

    invoke-virtual {v0}, Lcom/google/vr/inputcompanion/fogale/HoverHeatmapProvider;->getWidth()I

    move-result v0

    if-ge v9, v0, :cond_2

    .line 81
    iget-object v0, p0, Lcom/google/vr/inputcompanion/fogale/HoverHeatmapVisualizer$RenderView;->heatmapProvider:Lcom/google/vr/inputcompanion/fogale/HoverHeatmapProvider;

    invoke-virtual {v0}, Lcom/google/vr/inputcompanion/fogale/HoverHeatmapProvider;->getWidth()I

    move-result v0

    mul-int/2addr v0, v10

    add-int/2addr v0, v9

    aget v8, v7, v0

    .line 82
    .local v8, "heatmapData":F
    # invokes: Lcom/google/vr/inputcompanion/fogale/HoverHeatmapVisualizer;->heatmapToRGB(F)I
    invoke-static {v8}, Lcom/google/vr/inputcompanion/fogale/HoverHeatmapVisualizer;->access$000(F)I

    move-result v6

    .line 83
    .local v6, "color":I
    iget-object v0, p0, Lcom/google/vr/inputcompanion/fogale/HoverHeatmapVisualizer$RenderView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 84
    iget v0, p0, Lcom/google/vr/inputcompanion/fogale/HoverHeatmapVisualizer$RenderView;->cellWidth:I

    mul-int/2addr v0, v9

    int-to-float v1, v0

    iget v0, p0, Lcom/google/vr/inputcompanion/fogale/HoverHeatmapVisualizer$RenderView;->cellHeight:I

    mul-int/2addr v0, v10

    int-to-float v2, v0

    add-int/lit8 v0, v9, 0x1

    iget v3, p0, Lcom/google/vr/inputcompanion/fogale/HoverHeatmapVisualizer$RenderView;->cellWidth:I

    mul-int/2addr v0, v3

    int-to-float v3, v0

    add-int/lit8 v0, v10, 0x1

    iget v4, p0, Lcom/google/vr/inputcompanion/fogale/HoverHeatmapVisualizer$RenderView;->cellHeight:I

    mul-int/2addr v0, v4

    int-to-float v4, v0

    iget-object v5, p0, Lcom/google/vr/inputcompanion/fogale/HoverHeatmapVisualizer$RenderView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 80
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 79
    .end local v6    # "color":I
    .end local v8    # "heatmapData":F
    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 89
    .end local v9    # "x":I
    :cond_3
    invoke-virtual {p0}, Lcom/google/vr/inputcompanion/fogale/HoverHeatmapVisualizer$RenderView;->invalidate()V

    goto :goto_0
.end method
