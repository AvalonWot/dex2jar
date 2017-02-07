.class public final Lcom/google/vr/inputcompanion/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static final EPSILON:F = 1.0E-8f


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static arrayToString([F)Ljava/lang/String;
    .locals 6
    .param p0, "a"    # [F

    .prologue
    .line 213
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 214
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 215
    const-string v2, "%6.3f"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aget v5, p0, v1

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 217
    :cond_0
    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static convertRotationMatrixToQuaternion([F[F)V
    .locals 16
    .param p0, "m"    # [F
    .param p1, "q"    # [F

    .prologue
    .line 23
    const/4 v11, 0x0

    aget v0, p0, v11

    .line 24
    .local v0, "m00":F
    const/4 v11, 0x1

    aget v3, p0, v11

    .line 25
    .local v3, "m10":F
    const/4 v11, 0x2

    aget v6, p0, v11

    .line 26
    .local v6, "m20":F
    const/4 v11, 0x4

    aget v1, p0, v11

    .line 27
    .local v1, "m01":F
    const/4 v11, 0x5

    aget v4, p0, v11

    .line 28
    .local v4, "m11":F
    const/4 v11, 0x6

    aget v7, p0, v11

    .line 29
    .local v7, "m21":F
    const/16 v11, 0x8

    aget v2, p0, v11

    .line 30
    .local v2, "m02":F
    const/16 v11, 0x9

    aget v5, p0, v11

    .line 31
    .local v5, "m12":F
    const/16 v11, 0xa

    aget v8, p0, v11

    .line 32
    .local v8, "m22":F
    add-float v11, v0, v4

    add-float v10, v11, v8

    .line 34
    .local v10, "tr":F
    const/4 v11, 0x0

    cmpl-float v11, v10, v11

    if-lez v11, :cond_0

    .line 35
    float-to-double v12, v10

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    add-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    double-to-float v11, v12

    const/high16 v12, 0x40000000    # 2.0f

    mul-float v9, v11, v12

    .line 36
    .local v9, "s":F
    const/4 v11, 0x0

    sub-float v12, v7, v5

    div-float/2addr v12, v9

    aput v12, p1, v11

    .line 37
    const/4 v11, 0x1

    sub-float v12, v2, v6

    div-float/2addr v12, v9

    aput v12, p1, v11

    .line 38
    const/4 v11, 0x2

    sub-float v12, v3, v1

    div-float/2addr v12, v9

    aput v12, p1, v11

    .line 39
    const/4 v11, 0x3

    const/high16 v12, 0x3e800000    # 0.25f

    mul-float/2addr v12, v9

    aput v12, p1, v11

    .line 59
    :goto_0
    return-void

    .line 40
    .end local v9    # "s":F
    :cond_0
    cmpl-float v11, v0, v4

    if-lez v11, :cond_1

    cmpl-float v11, v0, v8

    if-lez v11, :cond_1

    .line 41
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    float-to-double v14, v0

    add-double/2addr v12, v14

    float-to-double v14, v4

    sub-double/2addr v12, v14

    float-to-double v14, v8

    sub-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    double-to-float v11, v12

    const/high16 v12, 0x40000000    # 2.0f

    mul-float v9, v11, v12

    .line 42
    .restart local v9    # "s":F
    const/4 v11, 0x0

    const/high16 v12, 0x3e800000    # 0.25f

    mul-float/2addr v12, v9

    aput v12, p1, v11

    .line 43
    const/4 v11, 0x1

    add-float v12, v1, v3

    div-float/2addr v12, v9

    aput v12, p1, v11

    .line 44
    const/4 v11, 0x2

    add-float v12, v2, v6

    div-float/2addr v12, v9

    aput v12, p1, v11

    .line 45
    const/4 v11, 0x3

    sub-float v12, v7, v5

    div-float/2addr v12, v9

    aput v12, p1, v11

    goto :goto_0

    .line 46
    .end local v9    # "s":F
    :cond_1
    cmpl-float v11, v4, v8

    if-lez v11, :cond_2

    .line 47
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    float-to-double v14, v4

    add-double/2addr v12, v14

    float-to-double v14, v0

    sub-double/2addr v12, v14

    float-to-double v14, v8

    sub-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    double-to-float v11, v12

    const/high16 v12, 0x40000000    # 2.0f

    mul-float v9, v11, v12

    .line 48
    .restart local v9    # "s":F
    const/4 v11, 0x0

    add-float v12, v1, v3

    div-float/2addr v12, v9

    aput v12, p1, v11

    .line 49
    const/4 v11, 0x1

    const/high16 v12, 0x3e800000    # 0.25f

    mul-float/2addr v12, v9

    aput v12, p1, v11

    .line 50
    const/4 v11, 0x2

    add-float v12, v5, v7

    div-float/2addr v12, v9

    aput v12, p1, v11

    .line 51
    const/4 v11, 0x3

    sub-float v12, v2, v6

    div-float/2addr v12, v9

    aput v12, p1, v11

    goto :goto_0

    .line 53
    .end local v9    # "s":F
    :cond_2
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    float-to-double v14, v8

    add-double/2addr v12, v14

    float-to-double v14, v0

    sub-double/2addr v12, v14

    float-to-double v14, v4

    sub-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    double-to-float v11, v12

    const/high16 v12, 0x40000000    # 2.0f

    mul-float v9, v11, v12

    .line 54
    .restart local v9    # "s":F
    const/4 v11, 0x0

    add-float v12, v2, v6

    div-float/2addr v12, v9

    aput v12, p1, v11

    .line 55
    const/4 v11, 0x1

    add-float v12, v5, v7

    div-float/2addr v12, v9

    aput v12, p1, v11

    .line 56
    const/4 v11, 0x2

    const/high16 v12, 0x3e800000    # 0.25f

    mul-float/2addr v12, v9

    aput v12, p1, v11

    .line 57
    const/4 v11, 0x3

    sub-float v12, v3, v1

    div-float/2addr v12, v9

    aput v12, p1, v11

    goto/16 :goto_0
.end method

.method private static dot([F[F)F
    .locals 4
    .param p0, "a"    # [F
    .param p1, "b"    # [F

    .prologue
    .line 151
    array-length v2, p0

    array-length v3, p1

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 153
    const/4 v1, 0x0

    .line 154
    .local v1, "sum":F
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 155
    aget v2, p0, v0

    aget v3, p1, v0

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    .line 154
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 151
    .end local v0    # "i":I
    .end local v1    # "sum":F
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 157
    .restart local v0    # "i":I
    .restart local v1    # "sum":F
    :cond_1
    return v1
.end method

.method public static normSquared([F)F
    .locals 4
    .param p0, "v"    # [F

    .prologue
    .line 140
    const/4 v1, 0x0

    .line 141
    .local v1, "sum":F
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 142
    aget v2, p0, v0

    aget v3, p0, v0

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    .line 141
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 144
    :cond_0
    return v1
.end method

.method public static normalized([F)[F
    .locals 6
    .param p0, "v"    # [F

    .prologue
    .line 128
    invoke-static {p0}, Lcom/google/vr/inputcompanion/Utils;->normSquared([F)F

    move-result v3

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v1, v4

    .line 129
    .local v1, "norm":F
    array-length v3, p0

    new-array v2, v3, [F

    .line 130
    .local v2, "result":[F
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_0

    .line 131
    aget v3, p0, v0

    div-float/2addr v3, v1

    aput v3, v2, v0

    .line 130
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 133
    :cond_0
    return-object v2
.end method

.method public static quaternionFromTo([F[F)[F
    .locals 13
    .param p0, "from"    # [F
    .param p1, "to"    # [F

    .prologue
    const/4 v8, 0x0

    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 173
    invoke-static {p0}, Lcom/google/vr/inputcompanion/Utils;->normSquared([F)F

    move-result v6

    invoke-static {p1}, Lcom/google/vr/inputcompanion/Utils;->normSquared([F)F

    move-result v7

    mul-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v2, v6

    .line 174
    .local v2, "normUNormV":F
    invoke-static {p0, p1}, Lcom/google/vr/inputcompanion/Utils;->dot([F[F)F

    move-result v6

    add-float v3, v2, v6

    .line 176
    .local v3, "realPart":F
    const v6, 0x322bcc77    # 1.0E-8f

    mul-float/2addr v6, v2

    cmpg-float v6, v3, v6

    if-gez v6, :cond_1

    .line 180
    const/4 v3, 0x0

    .line 181
    aget v6, p0, v9

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    aget v7, p0, v11

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_0

    .line 182
    new-array v5, v12, [F

    aget v6, p0, v10

    neg-float v6, v6

    aput v6, v5, v9

    aget v6, p0, v9

    aput v6, v5, v10

    aput v8, v5, v11

    .line 196
    .local v5, "w":[F
    :goto_0
    const/4 v6, 0x4

    new-array v4, v6, [F

    aget v6, v5, v9

    aput v6, v4, v9

    aget v6, v5, v10

    aput v6, v4, v10

    aget v6, v5, v11

    aput v6, v4, v11

    aput v3, v4, v12

    .line 199
    .local v4, "result":[F
    invoke-static {v4}, Lcom/google/vr/inputcompanion/Utils;->normSquared([F)F

    move-result v6

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v1, v6

    .line 200
    .local v1, "len":F
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v6, v4

    if-ge v0, v6, :cond_2

    .line 201
    aget v6, v4, v0

    div-float/2addr v6, v1

    aput v6, v4, v0

    .line 200
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 184
    .end local v0    # "i":I
    .end local v1    # "len":F
    .end local v4    # "result":[F
    .end local v5    # "w":[F
    :cond_0
    new-array v5, v12, [F

    aput v8, v5, v9

    aget v6, p0, v11

    neg-float v6, v6

    aput v6, v5, v10

    aget v6, p0, v10

    aput v6, v5, v11

    .restart local v5    # "w":[F
    goto :goto_0

    .line 188
    .end local v5    # "w":[F
    :cond_1
    new-array v5, v12, [F

    aget v6, p0, v10

    aget v7, p1, v11

    mul-float/2addr v6, v7

    aget v7, p0, v11

    aget v8, p1, v10

    mul-float/2addr v7, v8

    sub-float/2addr v6, v7

    aput v6, v5, v9

    aget v6, p0, v11

    aget v7, p1, v9

    mul-float/2addr v6, v7

    aget v7, p0, v9

    aget v8, p1, v11

    mul-float/2addr v7, v8

    sub-float/2addr v6, v7

    aput v6, v5, v10

    aget v6, p0, v9

    aget v7, p1, v10

    mul-float/2addr v6, v7

    aget v7, p0, v10

    aget v8, p1, v9

    mul-float/2addr v7, v8

    sub-float/2addr v6, v7

    aput v6, v5, v11

    .restart local v5    # "w":[F
    goto :goto_0

    .line 203
    .restart local v0    # "i":I
    .restart local v1    # "len":F
    .restart local v4    # "result":[F
    :cond_2
    return-object v4
.end method

.method public static quaternionInverse([F)[F
    .locals 8
    .param p0, "q"    # [F

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 108
    aget v1, p0, v4

    aget v2, p0, v4

    mul-float/2addr v1, v2

    aget v2, p0, v5

    aget v3, p0, v5

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    aget v2, p0, v6

    aget v3, p0, v6

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    aget v2, p0, v7

    aget v3, p0, v7

    mul-float/2addr v2, v3

    add-float v0, v1, v2

    .line 109
    .local v0, "d":F
    const/4 v1, 0x4

    new-array v1, v1, [F

    aget v2, p0, v4

    neg-float v2, v2

    div-float/2addr v2, v0

    aput v2, v1, v4

    aget v2, p0, v5

    neg-float v2, v2

    div-float/2addr v2, v0

    aput v2, v1, v5

    aget v2, p0, v6

    neg-float v2, v2

    div-float/2addr v2, v0

    aput v2, v1, v6

    aget v2, p0, v7

    div-float/2addr v2, v0

    aput v2, v1, v7

    return-object v1
.end method

.method public static quaternionMult([F[F)[F
    .locals 11
    .param p0, "a"    # [F
    .param p1, "b"    # [F

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 120
    aget v4, p0, v10

    aget v5, p1, v10

    mul-float/2addr v4, v5

    aget v5, p0, v7

    aget v6, p1, v7

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    aget v5, p0, v8

    aget v6, p1, v8

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    aget v5, p0, v9

    aget v6, p1, v9

    mul-float/2addr v5, v6

    sub-float v0, v4, v5

    .line 121
    .local v0, "w":F
    aget v4, p0, v10

    aget v5, p1, v7

    mul-float/2addr v4, v5

    aget v5, p0, v7

    aget v6, p1, v10

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    aget v5, p0, v8

    aget v6, p1, v9

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    aget v5, p0, v9

    aget v6, p1, v8

    mul-float/2addr v5, v6

    sub-float v1, v4, v5

    .line 122
    .local v1, "x":F
    aget v4, p0, v10

    aget v5, p1, v8

    mul-float/2addr v4, v5

    aget v5, p0, v7

    aget v6, p1, v9

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    aget v5, p0, v8

    aget v6, p1, v10

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    aget v5, p0, v9

    aget v6, p1, v7

    mul-float/2addr v5, v6

    add-float v2, v4, v5

    .line 123
    .local v2, "y":F
    aget v4, p0, v10

    aget v5, p1, v9

    mul-float/2addr v4, v5

    aget v5, p0, v7

    aget v6, p1, v8

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    aget v5, p0, v8

    aget v6, p1, v7

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    aget v5, p0, v9

    aget v6, p1, v10

    mul-float/2addr v5, v6

    add-float v3, v4, v5

    .line 124
    .local v3, "z":F
    const/4 v4, 0x4

    new-array v4, v4, [F

    aput v1, v4, v7

    aput v2, v4, v8

    aput v3, v4, v9

    aput v0, v4, v10

    return-object v4
.end method

.method public static quaternionToEuler([F)[F
    .locals 14
    .param p0, "quaternion"    # [F

    .prologue
    .line 72
    const/4 v8, 0x0

    aget v4, p0, v8

    .line 73
    .local v4, "x":F
    const/4 v8, 0x1

    aget v5, p0, v8

    .line 74
    .local v5, "y":F
    const/4 v8, 0x2

    aget v7, p0, v8

    .line 75
    .local v7, "z":F
    const/4 v8, 0x3

    aget v3, p0, v8

    .line 77
    .local v3, "w":F
    mul-float v8, v7, v5

    mul-float v9, v4, v3

    add-float v2, v8, v9

    .line 79
    .local v2, "test":F
    const v8, 0x3efff2e5    # 0.4999f

    cmpl-float v8, v2, v8

    if-lez v8, :cond_0

    .line 82
    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    float-to-double v10, v7

    float-to-double v12, v3

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v10

    mul-double/2addr v8, v10

    double-to-float v6, v8

    .line 83
    .local v6, "yaw":F
    const v0, 0x3fc90fdb

    .line 84
    .local v0, "pitch":F
    const/4 v1, 0x0

    .line 98
    .local v1, "roll":F
    :goto_0
    const/4 v8, 0x3

    new-array v8, v8, [F

    const/4 v9, 0x0

    aput v0, v8, v9

    const/4 v9, 0x1

    aput v6, v8, v9

    const/4 v9, 0x2

    aput v1, v8, v9

    return-object v8

    .line 85
    .end local v0    # "pitch":F
    .end local v1    # "roll":F
    .end local v6    # "yaw":F
    :cond_0
    const v8, -0x41000d1b    # -0.4999f

    cmpg-float v8, v2, v8

    if-gez v8, :cond_1

    .line 88
    const-wide/high16 v8, -0x4000000000000000L    # -2.0

    float-to-double v10, v7

    float-to-double v12, v3

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v10

    mul-double/2addr v8, v10

    double-to-float v6, v8

    .line 89
    .restart local v6    # "yaw":F
    const v0, -0x4036f025

    .line 90
    .restart local v0    # "pitch":F
    const/4 v1, 0x0

    .restart local v1    # "roll":F
    goto :goto_0

    .line 93
    .end local v0    # "pitch":F
    .end local v1    # "roll":F
    .end local v6    # "yaw":F
    :cond_1
    const/high16 v8, 0x40000000    # 2.0f

    mul-float v9, v5, v3

    mul-float v10, v7, v4

    sub-float/2addr v9, v10

    mul-float/2addr v8, v9

    float-to-double v8, v8

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v11, 0x40000000    # 2.0f

    mul-float v12, v5, v5

    mul-float v13, v4, v4

    add-float/2addr v12, v13

    mul-float/2addr v11, v12

    sub-float/2addr v10, v11

    float-to-double v10, v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v8

    double-to-float v6, v8

    .line 94
    .restart local v6    # "yaw":F
    const/high16 v8, 0x40000000    # 2.0f

    mul-float/2addr v8, v2

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->asin(D)D

    move-result-wide v8

    double-to-float v0, v8

    .line 95
    .restart local v0    # "pitch":F
    const/high16 v8, 0x40000000    # 2.0f

    mul-float v9, v7, v3

    mul-float v10, v5, v4

    sub-float/2addr v9, v10

    mul-float/2addr v8, v9

    float-to-double v8, v8

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v11, 0x40000000    # 2.0f

    mul-float v12, v7, v7

    mul-float v13, v4, v4

    add-float/2addr v12, v13

    mul-float/2addr v11, v12

    sub-float/2addr v10, v11

    float-to-double v10, v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v8

    double-to-float v1, v8

    .restart local v1    # "roll":F
    goto :goto_0
.end method
