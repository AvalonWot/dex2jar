.class public Lcom/google/vr/sdk/base/HeadTransform;
.super Ljava/lang/Object;
.source "HeadTransform.java"


# annotations
.annotation build Lcom/google/vr/cardboard/UsedByNative;
.end annotation


# static fields
.field private static final GIMBAL_LOCK_EPSILON:F = 0.01f


# instance fields
.field private final headView:[F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/google/vr/sdk/base/HeadTransform;->headView:[F

    .line 35
    iget-object v0, p0, Lcom/google/vr/sdk/base/HeadTransform;->headView:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 36
    return-void
.end method


# virtual methods
.method public getEulerAngles([FI)V
    .locals 8
    .param p1, "eulerAngles"    # [F
    .param p2, "offset"    # I

    .prologue
    const/4 v6, 0x6

    .line 212
    add-int/lit8 v3, p2, 0x3

    array-length v4, p1

    if-le v3, v4, :cond_0

    .line 213
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Not enough space to write the result"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 217
    :cond_0
    iget-object v3, p0, Lcom/google/vr/sdk/base/HeadTransform;->headView:[F

    aget v3, v3, v6

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->asin(D)D

    move-result-wide v4

    double-to-float v0, v4

    .line 221
    .local v0, "pitch":F
    const/high16 v3, 0x3f800000    # 1.0f

    iget-object v4, p0, Lcom/google/vr/sdk/base/HeadTransform;->headView:[F

    aget v4, v4, v6

    iget-object v5, p0, Lcom/google/vr/sdk/base/HeadTransform;->headView:[F

    aget v5, v5, v6

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    const-wide v6, 0x3f847ae140000000L    # 0.009999999776482582

    cmpl-double v3, v4, v6

    if-ltz v3, :cond_1

    .line 224
    iget-object v3, p0, Lcom/google/vr/sdk/base/HeadTransform;->headView:[F

    const/4 v4, 0x2

    aget v3, v3, v4

    neg-float v3, v3

    float-to-double v4, v3

    iget-object v3, p0, Lcom/google/vr/sdk/base/HeadTransform;->headView:[F

    const/16 v6, 0xa

    aget v3, v3, v6

    float-to-double v6, v3

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v4

    double-to-float v2, v4

    .line 225
    .local v2, "yaw":F
    iget-object v3, p0, Lcom/google/vr/sdk/base/HeadTransform;->headView:[F

    const/4 v4, 0x4

    aget v3, v3, v4

    neg-float v3, v3

    float-to-double v4, v3

    iget-object v3, p0, Lcom/google/vr/sdk/base/HeadTransform;->headView:[F

    const/4 v6, 0x5

    aget v3, v3, v6

    float-to-double v6, v3

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v4

    double-to-float v1, v4

    .line 233
    .local v1, "roll":F
    :goto_0
    add-int/lit8 v3, p2, 0x0

    neg-float v4, v0

    aput v4, p1, v3

    .line 234
    add-int/lit8 v3, p2, 0x1

    neg-float v4, v2

    aput v4, p1, v3

    .line 235
    add-int/lit8 v3, p2, 0x2

    neg-float v4, v1

    aput v4, p1, v3

    .line 236
    return-void

    .line 229
    .end local v1    # "roll":F
    .end local v2    # "yaw":F
    :cond_1
    const/4 v2, 0x0

    .line 230
    .restart local v2    # "yaw":F
    iget-object v3, p0, Lcom/google/vr/sdk/base/HeadTransform;->headView:[F

    const/4 v4, 0x1

    aget v3, v3, v4

    float-to-double v4, v3

    iget-object v3, p0, Lcom/google/vr/sdk/base/HeadTransform;->headView:[F

    const/4 v6, 0x0

    aget v3, v3, v6

    float-to-double v6, v3

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v4

    double-to-float v1, v4

    .restart local v1    # "roll":F
    goto :goto_0
.end method

.method public getForwardVector([FI)V
    .locals 4
    .param p1, "forward"    # [F
    .param p2, "offset"    # I

    .prologue
    .line 81
    add-int/lit8 v1, p2, 0x3

    array-length v2, p1

    if-le v1, v2, :cond_0

    .line 82
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Not enough space to write the result"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 86
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    .line 87
    add-int v1, v0, p2

    iget-object v2, p0, Lcom/google/vr/sdk/base/HeadTransform;->headView:[F

    mul-int/lit8 v3, v0, 0x4

    add-int/lit8 v3, v3, 0x2

    aget v2, v2, v3

    neg-float v2, v2

    aput v2, p1, v1

    .line 86
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 89
    :cond_1
    return-void
.end method

.method public getHeadView([FI)V
    .locals 3
    .param p1, "headView"    # [F
    .param p2, "offset"    # I

    .prologue
    .line 62
    add-int/lit8 v0, p2, 0x10

    array-length v1, p1

    if-le v0, v1, :cond_0

    .line 63
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Not enough space to write the result"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/base/HeadTransform;->headView:[F

    const/4 v1, 0x0

    const/16 v2, 0x10

    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 67
    return-void
.end method

.method public getHeadView()[F
    .locals 1
    .annotation build Lcom/google/vr/cardboard/UsedByNative;
    .end annotation

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/vr/sdk/base/HeadTransform;->headView:[F

    return-object v0
.end method

.method public getQuaternion([FI)V
    .locals 10
    .param p1, "quaternion"    # [F
    .param p2, "offset"    # I

    .prologue
    .line 138
    add-int/lit8 v7, p2, 0x4

    array-length v8, p1

    if-le v7, v8, :cond_0

    .line 139
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Not enough space to write the result"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/base/HeadTransform;->headView:[F

    .line 144
    .local v0, "m":[F
    const/4 v7, 0x0

    aget v7, v0, v7

    const/4 v8, 0x5

    aget v8, v0, v8

    add-float/2addr v7, v8

    const/16 v8, 0xa

    aget v8, v0, v8

    add-float v2, v7, v8

    .line 147
    .local v2, "t":F
    const/4 v7, 0x0

    cmpl-float v7, v2, v7

    if-ltz v7, :cond_1

    .line 148
    const/high16 v7, 0x3f800000    # 1.0f

    add-float/2addr v7, v2

    float-to-double v8, v7

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-float v1, v8

    .line 149
    .local v1, "s":F
    const/high16 v7, 0x3f000000    # 0.5f

    mul-float v3, v7, v1

    .line 150
    .local v3, "w":F
    const/high16 v7, 0x3f000000    # 0.5f

    div-float v1, v7, v1

    .line 151
    const/16 v7, 0x9

    aget v7, v0, v7

    const/4 v8, 0x6

    aget v8, v0, v8

    sub-float/2addr v7, v8

    mul-float v4, v7, v1

    .line 152
    .local v4, "x":F
    const/4 v7, 0x2

    aget v7, v0, v7

    const/16 v8, 0x8

    aget v8, v0, v8

    sub-float/2addr v7, v8

    mul-float v5, v7, v1

    .line 153
    .local v5, "y":F
    const/4 v7, 0x4

    aget v7, v0, v7

    const/4 v8, 0x1

    aget v8, v0, v8

    sub-float/2addr v7, v8

    mul-float v6, v7, v1

    .line 180
    .local v6, "z":F
    :goto_0
    add-int/lit8 v7, p2, 0x0

    aput v4, p1, v7

    .line 181
    add-int/lit8 v7, p2, 0x1

    aput v5, p1, v7

    .line 182
    add-int/lit8 v7, p2, 0x2

    aput v6, p1, v7

    .line 183
    add-int/lit8 v7, p2, 0x3

    aput v3, p1, v7

    .line 184
    return-void

    .line 155
    .end local v1    # "s":F
    .end local v3    # "w":F
    .end local v4    # "x":F
    .end local v5    # "y":F
    .end local v6    # "z":F
    :cond_1
    const/4 v7, 0x0

    aget v7, v0, v7

    const/4 v8, 0x5

    aget v8, v0, v8

    cmpl-float v7, v7, v8

    if-lez v7, :cond_2

    const/4 v7, 0x0

    aget v7, v0, v7

    const/16 v8, 0xa

    aget v8, v0, v8

    cmpl-float v7, v7, v8

    if-lez v7, :cond_2

    .line 156
    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    aget v8, v0, v8

    add-float/2addr v7, v8

    const/4 v8, 0x5

    aget v8, v0, v8

    sub-float/2addr v7, v8

    const/16 v8, 0xa

    aget v8, v0, v8

    sub-float/2addr v7, v8

    float-to-double v8, v7

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-float v1, v8

    .line 157
    .restart local v1    # "s":F
    const/high16 v7, 0x3f000000    # 0.5f

    mul-float v4, v1, v7

    .line 158
    .restart local v4    # "x":F
    const/high16 v7, 0x3f000000    # 0.5f

    div-float v1, v7, v1

    .line 159
    const/4 v7, 0x4

    aget v7, v0, v7

    const/4 v8, 0x1

    aget v8, v0, v8

    add-float/2addr v7, v8

    mul-float v5, v7, v1

    .line 160
    .restart local v5    # "y":F
    const/4 v7, 0x2

    aget v7, v0, v7

    const/16 v8, 0x8

    aget v8, v0, v8

    add-float/2addr v7, v8

    mul-float v6, v7, v1

    .line 161
    .restart local v6    # "z":F
    const/16 v7, 0x9

    aget v7, v0, v7

    const/4 v8, 0x6

    aget v8, v0, v8

    sub-float/2addr v7, v8

    mul-float v3, v7, v1

    .line 163
    .restart local v3    # "w":F
    goto :goto_0

    .end local v1    # "s":F
    .end local v3    # "w":F
    .end local v4    # "x":F
    .end local v5    # "y":F
    .end local v6    # "z":F
    :cond_2
    const/4 v7, 0x5

    aget v7, v0, v7

    const/16 v8, 0xa

    aget v8, v0, v8

    cmpl-float v7, v7, v8

    if-lez v7, :cond_3

    .line 164
    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x5

    aget v8, v0, v8

    add-float/2addr v7, v8

    const/4 v8, 0x0

    aget v8, v0, v8

    sub-float/2addr v7, v8

    const/16 v8, 0xa

    aget v8, v0, v8

    sub-float/2addr v7, v8

    float-to-double v8, v7

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-float v1, v8

    .line 165
    .restart local v1    # "s":F
    const/high16 v7, 0x3f000000    # 0.5f

    mul-float v5, v1, v7

    .line 166
    .restart local v5    # "y":F
    const/high16 v7, 0x3f000000    # 0.5f

    div-float v1, v7, v1

    .line 167
    const/4 v7, 0x4

    aget v7, v0, v7

    const/4 v8, 0x1

    aget v8, v0, v8

    add-float/2addr v7, v8

    mul-float v4, v7, v1

    .line 168
    .restart local v4    # "x":F
    const/16 v7, 0x9

    aget v7, v0, v7

    const/4 v8, 0x6

    aget v8, v0, v8

    add-float/2addr v7, v8

    mul-float v6, v7, v1

    .line 169
    .restart local v6    # "z":F
    const/4 v7, 0x2

    aget v7, v0, v7

    const/16 v8, 0x8

    aget v8, v0, v8

    sub-float/2addr v7, v8

    mul-float v3, v7, v1

    .line 171
    .restart local v3    # "w":F
    goto/16 :goto_0

    .line 172
    .end local v1    # "s":F
    .end local v3    # "w":F
    .end local v4    # "x":F
    .end local v5    # "y":F
    .end local v6    # "z":F
    :cond_3
    const/high16 v7, 0x3f800000    # 1.0f

    const/16 v8, 0xa

    aget v8, v0, v8

    add-float/2addr v7, v8

    const/4 v8, 0x0

    aget v8, v0, v8

    sub-float/2addr v7, v8

    const/4 v8, 0x5

    aget v8, v0, v8

    sub-float/2addr v7, v8

    float-to-double v8, v7

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-float v1, v8

    .line 173
    .restart local v1    # "s":F
    const/high16 v7, 0x3f000000    # 0.5f

    mul-float v6, v1, v7

    .line 174
    .restart local v6    # "z":F
    const/high16 v7, 0x3f000000    # 0.5f

    div-float v1, v7, v1

    .line 175
    const/4 v7, 0x2

    aget v7, v0, v7

    const/16 v8, 0x8

    aget v8, v0, v8

    add-float/2addr v7, v8

    mul-float v4, v7, v1

    .line 176
    .restart local v4    # "x":F
    const/16 v7, 0x9

    aget v7, v0, v7

    const/4 v8, 0x6

    aget v8, v0, v8

    add-float/2addr v7, v8

    mul-float v5, v7, v1

    .line 177
    .restart local v5    # "y":F
    const/4 v7, 0x4

    aget v7, v0, v7

    const/4 v8, 0x1

    aget v8, v0, v8

    sub-float/2addr v7, v8

    mul-float v3, v7, v1

    .restart local v3    # "w":F
    goto/16 :goto_0
.end method

.method public getRightVector([FI)V
    .locals 4
    .param p1, "right"    # [F
    .param p2, "offset"    # I

    .prologue
    .line 119
    add-int/lit8 v1, p2, 0x3

    array-length v2, p1

    if-le v1, v2, :cond_0

    .line 120
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Not enough space to write the result"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 124
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    .line 125
    add-int v1, v0, p2

    iget-object v2, p0, Lcom/google/vr/sdk/base/HeadTransform;->headView:[F

    mul-int/lit8 v3, v0, 0x4

    aget v2, v2, v3

    aput v2, p1, v1

    .line 124
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 127
    :cond_1
    return-void
.end method

.method public getTranslation([FI)V
    .locals 4
    .param p1, "translation"    # [F
    .param p2, "offset"    # I

    .prologue
    .line 247
    add-int/lit8 v1, p2, 0x3

    array-length v2, p1

    if-le v1, v2, :cond_0

    .line 248
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Not enough space to write the result"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 252
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    .line 253
    add-int v1, v0, p2

    iget-object v2, p0, Lcom/google/vr/sdk/base/HeadTransform;->headView:[F

    add-int/lit8 v3, v0, 0xc

    aget v2, v2, v3

    aput v2, p1, v1

    .line 252
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 255
    :cond_1
    return-void
.end method

.method public getUpVector([FI)V
    .locals 4
    .param p1, "up"    # [F
    .param p2, "offset"    # I

    .prologue
    .line 100
    add-int/lit8 v1, p2, 0x3

    array-length v2, p1

    if-le v1, v2, :cond_0

    .line 101
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Not enough space to write the result"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 105
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    .line 106
    add-int v1, v0, p2

    iget-object v2, p0, Lcom/google/vr/sdk/base/HeadTransform;->headView:[F

    mul-int/lit8 v3, v0, 0x4

    add-int/lit8 v3, v3, 0x1

    aget v2, v2, v3

    aput v2, p1, v1

    .line 105
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 108
    :cond_1
    return-void
.end method
