.class public Lcom/google/vr/sdk/base/Distortion;
.super Ljava/lang/Object;
.source "Distortion.java"


# static fields
.field private static final CARDBOARD_V1_COEFFICIENTS:[F

.field private static final CARDBOARD_V2_2_COEFFICIENTS:[F


# instance fields
.field private coefficients:[F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 27
    new-array v0, v1, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/vr/sdk/base/Distortion;->CARDBOARD_V2_2_COEFFICIENTS:[F

    .line 29
    new-array v0, v1, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/vr/sdk/base/Distortion;->CARDBOARD_V1_COEFFICIENTS:[F

    return-void

    .line 27
    :array_0
    .array-data 4
        0x3eae147b    # 0.34f
        0x3f0ccccd    # 0.55f
    .end array-data

    .line 29
    :array_1
    .array-data 4
        0x3ee1cac1    # 0.441f
        0x3e1fbe77    # 0.156f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    sget-object v0, Lcom/google/vr/sdk/base/Distortion;->CARDBOARD_V2_2_COEFFICIENTS:[F

    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, p0, Lcom/google/vr/sdk/base/Distortion;->coefficients:[F

    .line 55
    return-void
.end method

.method public constructor <init>(Lcom/google/vr/sdk/base/Distortion;)V
    .locals 1
    .param p1, "other"    # Lcom/google/vr/sdk/base/Distortion;

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iget-object v0, p1, Lcom/google/vr/sdk/base/Distortion;->coefficients:[F

    invoke-virtual {p0, v0}, Lcom/google/vr/sdk/base/Distortion;->setCoefficients([F)V

    .line 64
    return-void
.end method

.method public static cardboardV1Distortion()Lcom/google/vr/sdk/base/Distortion;
    .locals 2

    .prologue
    .line 47
    new-instance v0, Lcom/google/vr/sdk/base/Distortion;

    invoke-direct {v0}, Lcom/google/vr/sdk/base/Distortion;-><init>()V

    .line 48
    .local v0, "params":Lcom/google/vr/sdk/base/Distortion;
    sget-object v1, Lcom/google/vr/sdk/base/Distortion;->CARDBOARD_V1_COEFFICIENTS:[F

    invoke-virtual {v1}, [F->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    iput-object v1, v0, Lcom/google/vr/sdk/base/Distortion;->coefficients:[F

    .line 50
    return-object v0
.end method

.method public static parseFromProtobuf([F)Lcom/google/vr/sdk/base/Distortion;
    .locals 1
    .param p0, "coefficients"    # [F

    .prologue
    .line 74
    new-instance v0, Lcom/google/vr/sdk/base/Distortion;

    invoke-direct {v0}, Lcom/google/vr/sdk/base/Distortion;-><init>()V

    .line 75
    .local v0, "distortion":Lcom/google/vr/sdk/base/Distortion;
    invoke-virtual {v0, p0}, Lcom/google/vr/sdk/base/Distortion;->setCoefficients([F)V

    .line 76
    return-object v0
.end method

.method private static solveLeastSquares([[D[D)[D
    .locals 14
    .param p0, "matA"    # [[D
    .param p1, "vecY"    # [D

    .prologue
    .line 231
    array-length v5, p0

    .line 232
    .local v5, "numSamples":I
    const/4 v9, 0x0

    aget-object v9, p0, v9

    array-length v4, v9

    .line 235
    .local v4, "numCoefficients":I
    filled-new-array {v4, v4}, [I

    move-result-object v9

    sget-object v10, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v10, v9}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[D

    .line 236
    .local v3, "matATA":[[D
    const/4 v2, 0x0

    .local v2, "k":I
    :goto_0
    if-ge v2, v4, :cond_2

    .line 237
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    if-ge v1, v4, :cond_1

    .line 238
    const-wide/16 v6, 0x0

    .line 239
    .local v6, "sum":D
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    if-ge v0, v5, :cond_0

    .line 240
    aget-object v9, p0, v0

    aget-wide v10, v9, v1

    aget-object v9, p0, v0

    aget-wide v12, v9, v2

    mul-double/2addr v10, v12

    add-double/2addr v6, v10

    .line 239
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 242
    :cond_0
    aget-object v9, v3, v1

    aput-wide v6, v9, v2

    .line 237
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 236
    .end local v0    # "i":I
    .end local v6    # "sum":D
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 247
    .end local v1    # "j":I
    :cond_2
    new-array v8, v4, [D

    .line 248
    .local v8, "vecATY":[D
    const/4 v1, 0x0

    .restart local v1    # "j":I
    :goto_3
    if-ge v1, v4, :cond_4

    .line 249
    const-wide/16 v6, 0x0

    .line 250
    .restart local v6    # "sum":D
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_4
    if-ge v0, v5, :cond_3

    .line 251
    aget-object v9, p0, v0

    aget-wide v10, v9, v1

    aget-wide v12, p1, v0

    mul-double/2addr v10, v12

    add-double/2addr v6, v10

    .line 250
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 253
    :cond_3
    aput-wide v6, v8, v1

    .line 248
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 257
    .end local v0    # "i":I
    .end local v6    # "sum":D
    :cond_4
    invoke-static {v3, v8}, Lcom/google/vr/sdk/base/Distortion;->solveLinear([[D[D)[D

    move-result-object v9

    return-object v9
.end method

.method private static solveLinear([[D[D)[D
    .locals 14
    .param p0, "a"    # [[D
    .param p1, "y"    # [D

    .prologue
    .line 182
    const/4 v9, 0x0

    aget-object v9, p0, v9

    array-length v3, v9

    .line 190
    .local v3, "n":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    add-int/lit8 v9, v3, -0x1

    if-ge v1, v9, :cond_2

    .line 191
    add-int/lit8 v2, v1, 0x1

    .local v2, "k":I
    :goto_1
    if-ge v2, v3, :cond_1

    .line 192
    aget-object v9, p0, v2

    aget-wide v10, v9, v1

    aget-object v9, p0, v1

    aget-wide v12, v9, v1

    div-double v4, v10, v12

    .line 193
    .local v4, "p":D
    add-int/lit8 v0, v1, 0x1

    .local v0, "i":I
    :goto_2
    if-ge v0, v3, :cond_0

    .line 194
    aget-object v9, p0, v2

    aget-wide v10, v9, v0

    aget-object v12, p0, v1

    aget-wide v12, v12, v0

    mul-double/2addr v12, v4

    sub-double/2addr v10, v12

    aput-wide v10, v9, v0

    .line 193
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 196
    :cond_0
    aget-wide v10, p1, v2

    aget-wide v12, p1, v1

    mul-double/2addr v12, v4

    sub-double/2addr v10, v12

    aput-wide v10, p1, v2

    .line 191
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 190
    .end local v0    # "i":I
    .end local v4    # "p":D
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 202
    .end local v2    # "k":I
    :cond_2
    new-array v8, v3, [D

    .line 205
    .local v8, "x":[D
    add-int/lit8 v1, v3, -0x1

    :goto_3
    if-ltz v1, :cond_4

    .line 206
    aget-wide v6, p1, v1

    .line 207
    .local v6, "v":D
    add-int/lit8 v0, v1, 0x1

    .restart local v0    # "i":I
    :goto_4
    if-ge v0, v3, :cond_3

    .line 208
    aget-object v9, p0, v1

    aget-wide v10, v9, v0

    aget-wide v12, v8, v0

    mul-double/2addr v10, v12

    sub-double/2addr v6, v10

    .line 207
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 210
    :cond_3
    aget-object v9, p0, v1

    aget-wide v10, v9, v1

    div-double v10, v6, v10

    aput-wide v10, v8, v1

    .line 205
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .line 213
    .end local v0    # "i":I
    .end local v6    # "v":D
    :cond_4
    return-object v8
.end method


# virtual methods
.method public distort(F)F
    .locals 1
    .param p1, "radius"    # F

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Lcom/google/vr/sdk/base/Distortion;->distortionFactor(F)F

    move-result v0

    mul-float/2addr v0, p1

    return v0
.end method

.method public distortInverse(F)F
    .locals 10
    .param p1, "radius"    # F

    .prologue
    const v5, 0x3f666666    # 0.9f

    .line 155
    div-float v2, p1, v5

    .line 156
    .local v2, "r0":F
    mul-float v3, p1, v5

    .line 157
    .local v3, "r1":F
    invoke-virtual {p0, v2}, Lcom/google/vr/sdk/base/Distortion;->distort(F)F

    move-result v5

    sub-float v0, p1, v5

    .line 158
    .local v0, "dr0":F
    :goto_0
    sub-float v5, v3, v2

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    float-to-double v6, v5

    const-wide v8, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpl-double v5, v6, v8

    if-lez v5, :cond_0

    .line 159
    invoke-virtual {p0, v3}, Lcom/google/vr/sdk/base/Distortion;->distort(F)F

    move-result v5

    sub-float v1, p1, v5

    .line 160
    .local v1, "dr1":F
    sub-float v5, v3, v2

    sub-float v6, v1, v0

    div-float/2addr v5, v6

    mul-float/2addr v5, v1

    sub-float v4, v3, v5

    .line 161
    .local v4, "r2":F
    move v2, v3

    .line 162
    move v3, v4

    .line 163
    move v0, v1

    .line 164
    goto :goto_0

    .line 165
    .end local v1    # "dr1":F
    .end local v4    # "r2":F
    :cond_0
    return v3
.end method

.method public distortionFactor(F)F
    .locals 8
    .param p1, "radius"    # F

    .prologue
    .line 120
    const/high16 v3, 0x3f800000    # 1.0f

    .line 121
    .local v3, "result":F
    const/high16 v1, 0x3f800000    # 1.0f

    .line 122
    .local v1, "rFactor":F
    mul-float v2, p1, p1

    .line 124
    .local v2, "rSquared":F
    iget-object v5, p0, Lcom/google/vr/sdk/base/Distortion;->coefficients:[F

    array-length v6, v5

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v6, :cond_0

    aget v0, v5, v4

    .line 125
    .local v0, "ki":F
    mul-float/2addr v1, v2

    .line 126
    mul-float v7, v0, v1

    add-float/2addr v3, v7

    .line 124
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 129
    .end local v0    # "ki":F
    :cond_0
    return v3
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 361
    if-nez p1, :cond_1

    .line 374
    :cond_0
    :goto_0
    return v1

    .line 365
    :cond_1
    if-ne p1, p0, :cond_2

    .line 366
    const/4 v1, 0x1

    goto :goto_0

    .line 369
    :cond_2
    instance-of v2, p1, Lcom/google/vr/sdk/base/Distortion;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 373
    check-cast v0, Lcom/google/vr/sdk/base/Distortion;

    .line 374
    .local v0, "o":Lcom/google/vr/sdk/base/Distortion;
    iget-object v1, p0, Lcom/google/vr/sdk/base/Distortion;->coefficients:[F

    iget-object v2, v0, Lcom/google/vr/sdk/base/Distortion;->coefficients:[F

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v1

    goto :goto_0
.end method

.method public getApproximateInverseDistortion(F)Lcom/google/vr/sdk/base/Distortion;
    .locals 1
    .param p1, "maxRadius"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 350
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/vr/sdk/base/Distortion;->getApproximateInverseDistortion(FI)Lcom/google/vr/sdk/base/Distortion;

    move-result-object v0

    return-object v0
.end method

.method public getApproximateInverseDistortion(FI)Lcom/google/vr/sdk/base/Distortion;
    .locals 18
    .param p1, "maxRadius"    # F
    .param p2, "numCoefficients"    # I

    .prologue
    .line 296
    const/16 v7, 0x64

    .line 298
    .local v7, "numSamples":I
    const/16 v15, 0x64

    move/from16 v0, p2

    filled-new-array {v15, v0}, [I

    move-result-object v15

    sget-object v16, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v16

    invoke-static {v0, v15}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [[D

    .line 299
    .local v6, "matA":[[D
    const/16 v15, 0x64

    new-array v14, v15, [D

    .line 311
    .local v14, "vecY":[D
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    const/16 v15, 0x64

    if-ge v3, v15, :cond_1

    .line 312
    add-int/lit8 v15, v3, 0x1

    int-to-float v15, v15

    mul-float v15, v15, p1

    const/high16 v16, 0x42c80000    # 100.0f

    div-float v8, v15, v16

    .line 313
    .local v8, "r":F
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/google/vr/sdk/base/Distortion;->distort(F)F

    move-result v15

    float-to-double v10, v15

    .line 314
    .local v10, "rp":D
    move-wide v12, v10

    .line 315
    .local v12, "v":D
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1
    move/from16 v0, p2

    if-ge v5, v0, :cond_0

    .line 316
    mul-double v16, v10, v10

    mul-double v12, v12, v16

    .line 317
    aget-object v15, v6, v3

    aput-wide v12, v15, v5

    .line 315
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 319
    :cond_0
    float-to-double v0, v8

    move-wide/from16 v16, v0

    sub-double v16, v16, v10

    aput-wide v16, v14, v3

    .line 311
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 322
    .end local v5    # "j":I
    .end local v8    # "r":F
    .end local v10    # "rp":D
    .end local v12    # "v":D
    :cond_1
    invoke-static {v6, v14}, Lcom/google/vr/sdk/base/Distortion;->solveLeastSquares([[D[D)[D

    move-result-object v9

    .line 325
    .local v9, "vecK":[D
    array-length v15, v9

    new-array v2, v15, [F

    .line 326
    .local v2, "coefficients":[F
    const/4 v3, 0x0

    :goto_2
    array-length v15, v9

    if-ge v3, v15, :cond_2

    .line 327
    aget-wide v16, v9, v3

    move-wide/from16 v0, v16

    double-to-float v15, v0

    aput v15, v2, v3

    .line 326
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 329
    :cond_2
    new-instance v4, Lcom/google/vr/sdk/base/Distortion;

    invoke-direct {v4}, Lcom/google/vr/sdk/base/Distortion;-><init>()V

    .line 330
    .local v4, "inverse":Lcom/google/vr/sdk/base/Distortion;
    invoke-virtual {v4, v2}, Lcom/google/vr/sdk/base/Distortion;->setCoefficients([F)V

    .line 331
    return-object v4
.end method

.method public getCoefficients()[F
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/google/vr/sdk/base/Distortion;->coefficients:[F

    return-object v0
.end method

.method public setCoefficients([F)V
    .locals 1
    .param p1, "coefficients"    # [F

    .prologue
    .line 101
    if-eqz p1, :cond_0

    invoke-virtual {p1}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    :goto_0
    iput-object v0, p0, Lcom/google/vr/sdk/base/Distortion;->coefficients:[F

    .line 102
    return-void

    .line 101
    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [F

    goto :goto_0
.end method

.method public toProtobuf()[F
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/vr/sdk/base/Distortion;->coefficients:[F

    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 384
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "{\n"

    .line 385
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  coefficients: ["

    .line 386
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 388
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/vr/sdk/base/Distortion;->coefficients:[F

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 389
    iget-object v2, p0, Lcom/google/vr/sdk/base/Distortion;->coefficients:[F

    aget v2, v2, v1

    invoke-static {v2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    iget-object v2, p0, Lcom/google/vr/sdk/base/Distortion;->coefficients:[F

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    .line 391
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 395
    :cond_1
    const-string v2, "],\n}"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
