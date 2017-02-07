.class public Lcom/google/vr/inputcompanion/TouchpadView;
.super Landroid/view/View;
.source "TouchpadView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/inputcompanion/TouchpadView$TouchpadListener;
    }
.end annotation


# static fields
.field private static final TOUCH_CIRCLE_DURATION_MILLIS:J = 0x12cL

.field private static final TOUCH_CIRCLE_RADIUS_FRACTION:F = 0.2f


# instance fields
.field private clickButtonDown:Z

.field private clickCirclePaint:Landroid/graphics/Paint;

.field private gestureDetector:Landroid/view/GestureDetector;

.field private lastTouchTimeMillis:J

.field private lastTouchX:I

.field private lastTouchY:I

.field private touchCirclePaint:Landroid/graphics/Paint;

.field private touching:Z

.field private touchpadListener:Lcom/google/vr/inputcompanion/TouchpadView$TouchpadListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, -0x1

    .line 57
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    iput v0, p0, Lcom/google/vr/inputcompanion/TouchpadView;->lastTouchX:I

    iput v0, p0, Lcom/google/vr/inputcompanion/TouchpadView;->lastTouchY:I

    .line 58
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/google/vr/inputcompanion/TouchpadView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/view/GestureDetector$SimpleOnGestureListener;

    invoke-direct {v2}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/google/vr/inputcompanion/TouchpadView;->gestureDetector:Landroid/view/GestureDetector;

    .line 60
    iget-object v0, p0, Lcom/google/vr/inputcompanion/TouchpadView;->gestureDetector:Landroid/view/GestureDetector;

    new-instance v1, Lcom/google/vr/inputcompanion/TouchpadView$1;

    invoke-direct {v1, p0}, Lcom/google/vr/inputcompanion/TouchpadView$1;-><init>(Lcom/google/vr/inputcompanion/TouchpadView;)V

    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 92
    return-void
.end method

.method static synthetic access$000(Lcom/google/vr/inputcompanion/TouchpadView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/vr/inputcompanion/TouchpadView;

    .prologue
    .line 19
    iget-boolean v0, p0, Lcom/google/vr/inputcompanion/TouchpadView;->clickButtonDown:Z

    return v0
.end method

.method static synthetic access$002(Lcom/google/vr/inputcompanion/TouchpadView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/vr/inputcompanion/TouchpadView;
    .param p1, "x1"    # Z

    .prologue
    .line 19
    iput-boolean p1, p0, Lcom/google/vr/inputcompanion/TouchpadView;->clickButtonDown:Z

    return p1
.end method

.method static synthetic access$100(Lcom/google/vr/inputcompanion/TouchpadView;)Lcom/google/vr/inputcompanion/TouchpadView$TouchpadListener;
    .locals 1
    .param p0, "x0"    # Lcom/google/vr/inputcompanion/TouchpadView;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/google/vr/inputcompanion/TouchpadView;->touchpadListener:Lcom/google/vr/inputcompanion/TouchpadView$TouchpadListener;

    return-object v0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 20
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 120
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/vr/inputcompanion/TouchpadView;->touchCirclePaint:Landroid/graphics/Paint;

    move-object/from16 v16, v0

    if-nez v16, :cond_0

    .line 121
    new-instance v16, Landroid/graphics/Paint;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/vr/inputcompanion/TouchpadView;->touchCirclePaint:Landroid/graphics/Paint;

    .line 122
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/vr/inputcompanion/TouchpadView;->touchCirclePaint:Landroid/graphics/Paint;

    move-object/from16 v16, v0

    invoke-virtual/range {p0 .. p0}, Lcom/google/vr/inputcompanion/TouchpadView;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    sget v18, Lcom/google/vr/inputcompanion/R$color;->colorAccent:I

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getColor(I)I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Landroid/graphics/Paint;->setColor(I)V

    .line 125
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/vr/inputcompanion/TouchpadView;->clickCirclePaint:Landroid/graphics/Paint;

    move-object/from16 v16, v0

    if-nez v16, :cond_1

    .line 126
    new-instance v16, Landroid/graphics/Paint;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/vr/inputcompanion/TouchpadView;->clickCirclePaint:Landroid/graphics/Paint;

    .line 127
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/vr/inputcompanion/TouchpadView;->clickCirclePaint:Landroid/graphics/Paint;

    move-object/from16 v16, v0

    invoke-virtual/range {p0 .. p0}, Lcom/google/vr/inputcompanion/TouchpadView;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    sget v18, Lcom/google/vr/inputcompanion/R$color;->click_circle_color:I

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getColor(I)I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Landroid/graphics/Paint;->setColor(I)V

    .line 131
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/vr/inputcompanion/TouchpadView;->lastTouchTimeMillis:J

    move-wide/from16 v18, v0

    sub-long v10, v16, v18

    .line 132
    .local v10, "elapsed":J
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/vr/inputcompanion/TouchpadView;->clickButtonDown:Z

    move/from16 v16, v0

    if-eqz v16, :cond_4

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/vr/inputcompanion/TouchpadView;->clickCirclePaint:Landroid/graphics/Paint;

    .line 133
    .local v13, "paint":Landroid/graphics/Paint;
    :goto_0
    const v16, 0x3e4ccccd    # 0.2f

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v15, v16, v17

    .line 135
    .local v15, "touchCircleNormalRadius":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/vr/inputcompanion/TouchpadView;->lastTouchX:I

    move/from16 v16, v0

    if-lez v16, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/vr/inputcompanion/TouchpadView;->lastTouchY:I

    move/from16 v16, v0

    if-lez v16, :cond_3

    const-wide/16 v16, 0x12c

    cmp-long v16, v10, v16

    if-gez v16, :cond_3

    .line 138
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v16

    div-int/lit8 v16, v16, 0x2

    move/from16 v0, v16

    int-to-float v2, v0

    .line 139
    .local v2, "centerX":F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v16

    div-int/lit8 v16, v16, 0x2

    move/from16 v0, v16

    int-to-float v3, v0

    .line 140
    .local v3, "centerY":F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v16

    div-int/lit8 v16, v16, 0x2

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    sub-float v12, v16, v15

    .line 141
    .local v12, "maxRadius":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/vr/inputcompanion/TouchpadView;->lastTouchX:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    sub-float v6, v16, v2

    .line 142
    .local v6, "deltaX":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/vr/inputcompanion/TouchpadView;->lastTouchY:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    sub-float v7, v16, v3

    .line 143
    .local v7, "deltaY":F
    mul-float v16, v6, v6

    mul-float v17, v7, v7

    add-float v16, v16, v17

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-float v8, v0

    .line 144
    .local v8, "distFromCenter":F
    cmpg-float v16, v8, v12

    if-gtz v16, :cond_5

    .line 145
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/vr/inputcompanion/TouchpadView;->lastTouchX:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v4, v0

    .line 146
    .local v4, "circleX":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/vr/inputcompanion/TouchpadView;->lastTouchY:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v5, v0

    .line 152
    .local v5, "circleY":F
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/vr/inputcompanion/TouchpadView;->touching:Z

    move/from16 v16, v0

    if-nez v16, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/vr/inputcompanion/TouchpadView;->clickButtonDown:Z

    move/from16 v16, v0

    if-eqz v16, :cond_6

    :cond_2
    const/high16 v9, 0x3f800000    # 1.0f

    .line 154
    .local v9, "factor":F
    :goto_2
    mul-float v14, v15, v9

    .line 155
    .local v14, "radius":F
    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5, v14, v13}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 156
    invoke-virtual/range {p0 .. p0}, Lcom/google/vr/inputcompanion/TouchpadView;->invalidate()V

    .line 158
    .end local v2    # "centerX":F
    .end local v3    # "centerY":F
    .end local v4    # "circleX":F
    .end local v5    # "circleY":F
    .end local v6    # "deltaX":F
    .end local v7    # "deltaY":F
    .end local v8    # "distFromCenter":F
    .end local v9    # "factor":F
    .end local v12    # "maxRadius":F
    .end local v14    # "radius":F
    :cond_3
    return-void

    .line 132
    .end local v13    # "paint":Landroid/graphics/Paint;
    .end local v15    # "touchCircleNormalRadius":F
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/vr/inputcompanion/TouchpadView;->touchCirclePaint:Landroid/graphics/Paint;

    goto/16 :goto_0

    .line 148
    .restart local v2    # "centerX":F
    .restart local v3    # "centerY":F
    .restart local v6    # "deltaX":F
    .restart local v7    # "deltaY":F
    .restart local v8    # "distFromCenter":F
    .restart local v12    # "maxRadius":F
    .restart local v13    # "paint":Landroid/graphics/Paint;
    .restart local v15    # "touchCircleNormalRadius":F
    :cond_5
    div-float v16, v6, v8

    mul-float v16, v16, v12

    add-float v4, v2, v16

    .line 149
    .restart local v4    # "circleX":F
    div-float v16, v7, v8

    mul-float v16, v16, v12

    add-float v5, v3, v16

    .restart local v5    # "circleY":F
    goto :goto_1

    .line 153
    :cond_6
    const/high16 v16, 0x3f800000    # 1.0f

    long-to-float v0, v10

    move/from16 v17, v0

    const/high16 v18, 0x43960000    # 300.0f

    div-float v17, v17, v18

    sub-float v9, v16, v17

    goto :goto_2
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    .line 101
    iget-object v1, p0, Lcom/google/vr/inputcompanion/TouchpadView;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 104
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 105
    .local v0, "action":I
    if-eqz v0, :cond_0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    :cond_0
    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/google/vr/inputcompanion/TouchpadView;->touching:Z

    .line 106
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/google/vr/inputcompanion/TouchpadView;->lastTouchX:I

    .line 107
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/google/vr/inputcompanion/TouchpadView;->lastTouchY:I

    .line 108
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/vr/inputcompanion/TouchpadView;->lastTouchTimeMillis:J

    .line 109
    invoke-virtual {p0}, Lcom/google/vr/inputcompanion/TouchpadView;->invalidate()V

    .line 111
    iget-object v1, p0, Lcom/google/vr/inputcompanion/TouchpadView;->touchpadListener:Lcom/google/vr/inputcompanion/TouchpadView$TouchpadListener;

    if-eqz v1, :cond_1

    .line 112
    iget-object v1, p0, Lcom/google/vr/inputcompanion/TouchpadView;->touchpadListener:Lcom/google/vr/inputcompanion/TouchpadView$TouchpadListener;

    invoke-interface {v1, p1}, Lcom/google/vr/inputcompanion/TouchpadView$TouchpadListener;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 115
    :cond_1
    return v2

    .line 105
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setTouchpadListener(Lcom/google/vr/inputcompanion/TouchpadView$TouchpadListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/google/vr/inputcompanion/TouchpadView$TouchpadListener;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/google/vr/inputcompanion/TouchpadView;->touchpadListener:Lcom/google/vr/inputcompanion/TouchpadView$TouchpadListener;

    .line 97
    return-void
.end method
