.class Lcom/google/vr/cardboard/UiLayer$8;
.super Ljava/lang/Object;
.source "UiLayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/vr/cardboard/UiLayer;->setAlignmentMarkerScale(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/vr/cardboard/UiLayer;

.field final synthetic val$scale:F


# direct methods
.method constructor <init>(Lcom/google/vr/cardboard/UiLayer;F)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/vr/cardboard/UiLayer;

    .prologue
    .line 270
    iput-object p1, p0, Lcom/google/vr/cardboard/UiLayer$8;->this$0:Lcom/google/vr/cardboard/UiLayer;

    iput p2, p0, Lcom/google/vr/cardboard/UiLayer$8;->val$scale:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 273
    iget-object v3, p0, Lcom/google/vr/cardboard/UiLayer$8;->this$0:Lcom/google/vr/cardboard/UiLayer;

    .line 274
    # getter for: Lcom/google/vr/cardboard/UiLayer;->alignmentMarker:Landroid/widget/RelativeLayout;
    invoke-static {v3}, Lcom/google/vr/cardboard/UiLayer;->access$800(Lcom/google/vr/cardboard/UiLayer;)Landroid/widget/RelativeLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 275
    .local v1, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v3, p0, Lcom/google/vr/cardboard/UiLayer$8;->this$0:Lcom/google/vr/cardboard/UiLayer;

    # getter for: Lcom/google/vr/cardboard/UiLayer;->context:Landroid/content/Context;
    invoke-static {v3}, Lcom/google/vr/cardboard/UiLayer;->access$000(Lcom/google/vr/cardboard/UiLayer;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/google/vr/cardboard/R$dimen;->alignment_marker_height:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v0, v3

    .line 276
    .local v0, "height":I
    int-to-float v3, v0

    iget v4, p0, Lcom/google/vr/cardboard/UiLayer$8;->val$scale:F

    mul-float/2addr v3, v4

    float-to-int v2, v3

    .line 279
    .local v2, "scaledHeight":I
    const/16 v3, 0xf

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->getRule(I)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 280
    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 284
    :goto_0
    iget-object v3, p0, Lcom/google/vr/cardboard/UiLayer$8;->this$0:Lcom/google/vr/cardboard/UiLayer;

    # getter for: Lcom/google/vr/cardboard/UiLayer;->alignmentMarker:Landroid/widget/RelativeLayout;
    invoke-static {v3}, Lcom/google/vr/cardboard/UiLayer;->access$800(Lcom/google/vr/cardboard/UiLayer;)Landroid/widget/RelativeLayout;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 285
    return-void

    .line 282
    :cond_0
    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    goto :goto_0
.end method
