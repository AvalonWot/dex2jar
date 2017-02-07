.class public Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;
.super Ljava/lang/Object;
.source "Matrix3x3d.java"


# instance fields
.field public m:[D


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/16 v0, 0x9

    new-array v0, v0, [D

    iput-object v0, p0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    .line 18
    return-void
.end method

.method public constructor <init>(DDDDDDDDD)V
    .locals 3
    .param p1, "m00"    # D
    .param p3, "m01"    # D
    .param p5, "m02"    # D
    .param p7, "m10"    # D
    .param p9, "m11"    # D
    .param p11, "m12"    # D
    .param p13, "m20"    # D
    .param p15, "m21"    # D
    .param p17, "m22"    # D

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/16 v0, 0x9

    new-array v0, v0, [D

    iput-object v0, p0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    .line 30
    iget-object v0, p0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    const/4 v1, 0x0

    aput-wide p1, v0, v1

    .line 31
    iget-object v0, p0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    const/4 v1, 0x1

    aput-wide p3, v0, v1

    .line 32
    iget-object v0, p0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    const/4 v1, 0x2

    aput-wide p5, v0, v1

    .line 33
    iget-object v0, p0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    const/4 v1, 0x3

    aput-wide p7, v0, v1

    .line 34
    iget-object v0, p0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    const/4 v1, 0x4

    aput-wide p9, v0, v1

    .line 35
    iget-object v0, p0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    const/4 v1, 0x5

    aput-wide p11, v0, v1

    .line 36
    iget-object v0, p0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    const/4 v1, 0x6

    aput-wide p13, v0, v1

    .line 37
    iget-object v0, p0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    const/4 v1, 0x7

    aput-wide p15, v0, v1

    .line 38
    iget-object v0, p0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    const/16 v1, 0x8

    aput-wide p17, v0, v1

    .line 39
    return-void
.end method

.method public constructor <init>(Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;)V
    .locals 9
    .param p1, "o"    # Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/16 v0, 0x9

    new-array v0, v0, [D

    iput-object v0, p0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    .line 47
    iget-object v0, p0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    iget-object v1, p1, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    aget-wide v2, v1, v4

    aput-wide v2, v0, v4

    .line 48
    iget-object v0, p0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    iget-object v1, p1, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    aget-wide v2, v1, v5

    aput-wide v2, v0, v5

    .line 49
    iget-object v0, p0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    iget-object v1, p1, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    aget-wide v2, v1, v6

    aput-wide v2, v0, v6

    .line 50
    iget-object v0, p0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    iget-object v1, p1, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    aget-wide v2, v1, v7

    aput-wide v2, v0, v7

    .line 51
    iget-object v0, p0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    iget-object v1, p1, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    aget-wide v2, v1, v8

    aput-wide v2, v0, v8

    .line 52
    iget-object v0, p0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    const/4 v1, 0x5

    iget-object v2, p1, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    const/4 v3, 0x5

    aget-wide v2, v2, v3

    aput-wide v2, v0, v1

    .line 53
    iget-object v0, p0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    const/4 v1, 0x6

    iget-object v2, p1, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    const/4 v3, 0x6

    aget-wide v2, v2, v3

    aput-wide v2, v0, v1

    .line 54
    iget-object v0, p0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    const/4 v1, 0x7

    iget-object v2, p1, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    const/4 v3, 0x7

    aget-wide v2, v2, v3

    aput-wide v2, v0, v1

    .line 55
    iget-object v0, p0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    const/16 v1, 0x8

    iget-object v2, p1, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    const/16 v3, 0x8

    aget-wide v2, v2, v3

    aput-wide v2, v0, v1

    .line 56
    return-void
.end method

.method public static add(Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;)V
    .locals 11
    .param p0, "a"    # Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;
    .param p1, "b"    # Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;
    .param p2, "result"    # Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 262
    iget-object v0, p2, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    iget-object v1, p0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    aget-wide v2, v1, v6

    iget-object v1, p1, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    aget-wide v4, v1, v6

    add-double/2addr v2, v4

    aput-wide v2, v0, v6

    .line 263
    iget-object v0, p2, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    iget-object v1, p0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    aget-wide v2, v1, v7

    iget-object v1, p1, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    aget-wide v4, v1, v7

    add-double/2addr v2, v4

    aput-wide v2, v0, v7

    .line 264
    iget-object v0, p2, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    iget-object v1, p0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    aget-wide v2, v1, v8

    iget-object v1, p1, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    aget-wide v4, v1, v8

    add-double/2addr v2, v4

    aput-wide v2, v0, v8

    .line 265
    iget-object v0, p2, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    iget-object v1, p0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    aget-wide v2, v1, v9

    iget-object v1, p1, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    aget-wide v4, v1, v9

    add-double/2addr v2, v4

    aput-wide v2, v0, v9

    .line 266
    iget-object v0, p2, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    iget-object v1, p0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    aget-wide v2, v1, v10

    iget-object v1, p1, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    aget-wide v4, v1, v10

    add-double/2addr v2, v4

    aput-wide v2, v0, v10

    .line 267
    iget-object v0, p2, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    const/4 v3, 0x5

    aget-wide v2, v2, v3

    iget-object v4, p1, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    const/4 v5, 0x5

    aget-wide v4, v4, v5

    add-double/2addr v2, v4

    aput-wide v2, v0, v1

    .line 268
    iget-object v0, p2, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    const/4 v3, 0x6

    aget-wide v2, v2, v3

    iget-object v4, p1, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    const/4 v5, 0x6

    aget-wide v4, v4, v5

    add-double/2addr v2, v4

    aput-wide v2, v0, v1

    .line 269
    iget-object v0, p2, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    const/4 v3, 0x7

    aget-wide v2, v2, v3

    iget-object v4, p1, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    const/4 v5, 0x7

    aget-wide v4, v4, v5

    add-double/2addr v2, v4

    aput-wide v2, v0, v1

    .line 270
    iget-object v0, p2, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    const/16 v3, 0x8

    aget-wide v2, v2, v3

    iget-object v4, p1, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    const/16 v5, 0x8

    aget-wide v4, v4, v5

    add-double/2addr v2, v4

    aput-wide v2, v0, v1

    .line 271
    return-void
.end method

.method public static mult(Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;)V
    .locals 24
    .param p0, "a"    # Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;
    .param p1, "b"    # Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;
    .param p2, "result"    # Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    .prologue
    .line 281
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    const/4 v3, 0x0

    aget-wide v2, v2, v3

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    const/4 v5, 0x0

    aget-wide v4, v4, v5

    mul-double/2addr v2, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    const/4 v5, 0x1

    aget-wide v4, v4, v5

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    const/4 v7, 0x3

    aget-wide v6, v6, v7

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    const/4 v5, 0x2

    aget-wide v4, v4, v5

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    const/4 v7, 0x6

    aget-wide v6, v6, v7

    mul-double/2addr v4, v6

    add-double/2addr v4, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    const/4 v3, 0x0

    aget-wide v2, v2, v3

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    const/4 v7, 0x1

    aget-wide v6, v6, v7

    mul-double/2addr v2, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    const/4 v7, 0x1

    aget-wide v6, v6, v7

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    const/4 v9, 0x4

    aget-wide v8, v8, v9

    mul-double/2addr v6, v8

    add-double/2addr v2, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    const/4 v7, 0x2

    aget-wide v6, v6, v7

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    const/4 v9, 0x7

    aget-wide v8, v8, v9

    mul-double/2addr v6, v8

    add-double/2addr v6, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    const/4 v3, 0x0

    aget-wide v2, v2, v3

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    const/4 v9, 0x2

    aget-wide v8, v8, v9

    mul-double/2addr v2, v8

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    const/4 v9, 0x1

    aget-wide v8, v8, v9

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    const/4 v11, 0x5

    aget-wide v10, v10, v11

    mul-double/2addr v8, v10

    add-double/2addr v2, v8

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    const/4 v9, 0x2

    aget-wide v8, v8, v9

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    const/16 v11, 0x8

    aget-wide v10, v10, v11

    mul-double/2addr v8, v10

    add-double/2addr v8, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    const/4 v3, 0x3

    aget-wide v2, v2, v3

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    const/4 v11, 0x0

    aget-wide v10, v10, v11

    mul-double/2addr v2, v10

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    const/4 v11, 0x4

    aget-wide v10, v10, v11

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    const/4 v13, 0x3

    aget-wide v12, v12, v13

    mul-double/2addr v10, v12

    add-double/2addr v2, v10

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    const/4 v11, 0x5

    aget-wide v10, v10, v11

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    const/4 v13, 0x6

    aget-wide v12, v12, v13

    mul-double/2addr v10, v12

    add-double/2addr v10, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    const/4 v3, 0x3

    aget-wide v2, v2, v3

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    const/4 v13, 0x1

    aget-wide v12, v12, v13

    mul-double/2addr v2, v12

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    const/4 v13, 0x4

    aget-wide v12, v12, v13

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    const/4 v15, 0x4

    aget-wide v14, v14, v15

    mul-double/2addr v12, v14

    add-double/2addr v2, v12

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    const/4 v13, 0x5

    aget-wide v12, v12, v13

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    const/4 v15, 0x7

    aget-wide v14, v14, v15

    mul-double/2addr v12, v14

    add-double/2addr v12, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    const/4 v3, 0x3

    aget-wide v2, v2, v3

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    const/4 v15, 0x2

    aget-wide v14, v14, v15

    mul-double/2addr v2, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    const/4 v15, 0x4

    aget-wide v14, v14, v15

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    move-object/from16 v16, v0

    const/16 v17, 0x5

    aget-wide v16, v16, v17

    mul-double v14, v14, v16

    add-double/2addr v2, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    const/4 v15, 0x5

    aget-wide v14, v14, v15

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    move-object/from16 v16, v0

    const/16 v17, 0x8

    aget-wide v16, v16, v17

    mul-double v14, v14, v16

    add-double/2addr v14, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    const/4 v3, 0x6

    aget-wide v2, v2, v3

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aget-wide v16, v16, v17

    mul-double v2, v2, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    move-object/from16 v16, v0

    const/16 v17, 0x7

    aget-wide v16, v16, v17

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    move-object/from16 v18, v0

    const/16 v19, 0x3

    aget-wide v18, v18, v19

    mul-double v16, v16, v18

    add-double v2, v2, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    move-object/from16 v16, v0

    const/16 v17, 0x8

    aget-wide v16, v16, v17

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    move-object/from16 v18, v0

    const/16 v19, 0x6

    aget-wide v18, v18, v19

    mul-double v16, v16, v18

    add-double v16, v16, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    const/4 v3, 0x6

    aget-wide v2, v2, v3

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    move-object/from16 v18, v0

    const/16 v19, 0x1

    aget-wide v18, v18, v19

    mul-double v2, v2, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    move-object/from16 v18, v0

    const/16 v19, 0x7

    aget-wide v18, v18, v19

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    move-object/from16 v20, v0

    const/16 v21, 0x4

    aget-wide v20, v20, v21

    mul-double v18, v18, v20

    add-double v2, v2, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    move-object/from16 v18, v0

    const/16 v19, 0x8

    aget-wide v18, v18, v19

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    move-object/from16 v20, v0

    const/16 v21, 0x7

    aget-wide v20, v20, v21

    mul-double v18, v18, v20

    add-double v18, v18, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    const/4 v3, 0x6

    aget-wide v2, v2, v3

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    move-object/from16 v20, v0

    const/16 v21, 0x2

    aget-wide v20, v20, v21

    mul-double v2, v2, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    move-object/from16 v20, v0

    const/16 v21, 0x7

    aget-wide v20, v20, v21

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    move-object/from16 v22, v0

    const/16 v23, 0x5

    aget-wide v22, v22, v23

    mul-double v20, v20, v22

    add-double v2, v2, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    move-object/from16 v20, v0

    const/16 v21, 0x8

    aget-wide v20, v20, v21

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    move-object/from16 v22, v0

    const/16 v23, 0x8

    aget-wide v22, v22, v23

    mul-double v20, v20, v22

    add-double v20, v20, v2

    move-object/from16 v3, p2

    invoke-virtual/range {v3 .. v21}, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->set(DDDDDDDDD)V

    .line 290
    return-void
.end method

.method public static mult(Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;Lcom/google/vr/sdk/base/sensors/internal/Vector3d;Lcom/google/vr/sdk/base/sensors/internal/Vector3d;)V
    .locals 12
    .param p0, "a"    # Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;
    .param p1, "v"    # Lcom/google/vr/sdk/base/sensors/internal/Vector3d;
    .param p2, "result"    # Lcom/google/vr/sdk/base/sensors/internal/Vector3d;

    .prologue
    .line 300
    iget-object v6, p0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    const/4 v7, 0x0

    aget-wide v6, v6, v7

    iget-wide v8, p1, Lcom/google/vr/sdk/base/sensors/internal/Vector3d;->x:D

    mul-double/2addr v6, v8

    iget-object v8, p0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    const/4 v9, 0x1

    aget-wide v8, v8, v9

    iget-wide v10, p1, Lcom/google/vr/sdk/base/sensors/internal/Vector3d;->y:D

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    iget-object v8, p0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    const/4 v9, 0x2

    aget-wide v8, v8, v9

    iget-wide v10, p1, Lcom/google/vr/sdk/base/sensors/internal/Vector3d;->z:D

    mul-double/2addr v8, v10

    add-double v0, v6, v8

    .line 301
    .local v0, "x":D
    iget-object v6, p0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    const/4 v7, 0x3

    aget-wide v6, v6, v7

    iget-wide v8, p1, Lcom/google/vr/sdk/base/sensors/internal/Vector3d;->x:D

    mul-double/2addr v6, v8

    iget-object v8, p0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    const/4 v9, 0x4

    aget-wide v8, v8, v9

    iget-wide v10, p1, Lcom/google/vr/sdk/base/sensors/internal/Vector3d;->y:D

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    iget-object v8, p0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    const/4 v9, 0x5

    aget-wide v8, v8, v9

    iget-wide v10, p1, Lcom/google/vr/sdk/base/sensors/internal/Vector3d;->z:D

    mul-double/2addr v8, v10

    add-double v2, v6, v8

    .line 302
    .local v2, "y":D
    iget-object v6, p0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    const/4 v7, 0x6

    aget-wide v6, v6, v7

    iget-wide v8, p1, Lcom/google/vr/sdk/base/sensors/internal/Vector3d;->x:D

    mul-double/2addr v6, v8

    iget-object v8, p0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    const/4 v9, 0x7

    aget-wide v8, v8, v9

    iget-wide v10, p1, Lcom/google/vr/sdk/base/sensors/internal/Vector3d;->y:D

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    iget-object v8, p0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    const/16 v9, 0x8

    aget-wide v8, v8, v9

    iget-wide v10, p1, Lcom/google/vr/sdk/base/sensors/internal/Vector3d;->z:D

    mul-double/2addr v8, v10

    add-double v4, v6, v8

    .line 303
    .local v4, "z":D
    iput-wide v0, p2, Lcom/google/vr/sdk/base/sensors/internal/Vector3d;->x:D

    .line 304
    iput-wide v2, p2, Lcom/google/vr/sdk/base/sensors/internal/Vector3d;->y:D

    .line 305
    iput-wide v4, p2, Lcom/google/vr/sdk/base/sensors/internal/Vector3d;->z:D

    .line 306
    return-void
.end method


# virtual methods
.method public determinant()D
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x2

    const/4 v10, 0x1

    .line 314
    invoke-virtual {p0, v12, v12}, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->get(II)D

    move-result-wide v0

    invoke-virtual {p0, v10, v10}, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->get(II)D

    move-result-wide v2

    invoke-virtual {p0, v11, v11}, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->get(II)D

    move-result-wide v4

    mul-double/2addr v2, v4

    invoke-virtual {p0, v11, v10}, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->get(II)D

    move-result-wide v4

    invoke-virtual {p0, v10, v11}, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->get(II)D

    move-result-wide v6

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    mul-double/2addr v0, v2

    .line 315
    invoke-virtual {p0, v12, v10}, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->get(II)D

    move-result-wide v2

    invoke-virtual {p0, v10, v12}, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->get(II)D

    move-result-wide v4

    invoke-virtual {p0, v11, v11}, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->get(II)D

    move-result-wide v6

    mul-double/2addr v4, v6

    invoke-virtual {p0, v10, v11}, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->get(II)D

    move-result-wide v6

    invoke-virtual {p0, v11, v12}, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->get(II)D

    move-result-wide v8

    mul-double/2addr v6, v8

    sub-double/2addr v4, v6

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    .line 316
    invoke-virtual {p0, v12, v11}, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->get(II)D

    move-result-wide v2

    invoke-virtual {p0, v10, v12}, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->get(II)D

    move-result-wide v4

    invoke-virtual {p0, v11, v10}, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->get(II)D

    move-result-wide v6

    mul-double/2addr v4, v6

    invoke-virtual {p0, v10, v10}, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->get(II)D

    move-result-wide v6

    invoke-virtual {p0, v11, v12}, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->get(II)D

    move-result-wide v8

    mul-double/2addr v6, v8

    sub-double/2addr v4, v6

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    .line 314
    return-wide v0
.end method

.method public get(II)D
    .locals 2
    .param p1, "row"    # I
    .param p2, "col"    # I

    .prologue
    .line 128
    iget-object v0, p0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    mul-int/lit8 v1, p1, 0x3

    add-int/2addr v1, p2

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public getColumn(ILcom/google/vr/sdk/base/sensors/internal/Vector3d;)V
    .locals 2
    .param p1, "col"    # I
    .param p2, "v"    # Lcom/google/vr/sdk/base/sensors/internal/Vector3d;

    .prologue
    .line 149
    iget-object v0, p0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    aget-wide v0, v0, p1

    iput-wide v0, p2, Lcom/google/vr/sdk/base/sensors/internal/Vector3d;->x:D

    .line 150
    iget-object v0, p0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    add-int/lit8 v1, p1, 0x3

    aget-wide v0, v0, v1

    iput-wide v0, p2, Lcom/google/vr/sdk/base/sensors/internal/Vector3d;->y:D

    .line 151
    iget-object v0, p0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    add-int/lit8 v1, p1, 0x6

    aget-wide v0, v0, v1

    iput-wide v0, p2, Lcom/google/vr/sdk/base/sensors/internal/Vector3d;->z:D

    .line 152
    return-void
.end method

.method public invert(Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;)Z
    .locals 28
    .param p1, "result"    # Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    .prologue
    .line 325
    invoke-virtual/range {p0 .. p0}, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->determinant()D

    move-result-wide v22

    .line 326
    .local v22, "d":D
    const-wide/16 v2, 0x0

    cmpl-double v2, v22, v2

    if-nez v2, :cond_0

    .line 327
    const/4 v2, 0x0

    .line 345
    :goto_0
    return v2

    .line 330
    :cond_0
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    div-double v24, v2, v22

    .line 332
    .local v24, "invdet":D
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    const/4 v3, 0x4

    aget-wide v2, v2, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    const/16 v5, 0x8

    aget-wide v4, v4, v5

    mul-double/2addr v2, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    const/4 v5, 0x7

    aget-wide v4, v4, v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    const/4 v7, 0x5

    aget-wide v6, v6, v7

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    mul-double v4, v2, v24

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    const/4 v3, 0x1

    aget-wide v2, v2, v3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    const/16 v7, 0x8

    aget-wide v6, v6, v7

    mul-double/2addr v2, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    const/4 v7, 0x2

    aget-wide v6, v6, v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    const/4 v9, 0x7

    aget-wide v8, v8, v9

    mul-double/2addr v6, v8

    sub-double/2addr v2, v6

    neg-double v2, v2

    mul-double v6, v2, v24

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    const/4 v3, 0x1

    aget-wide v2, v2, v3

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    const/4 v9, 0x5

    aget-wide v8, v8, v9

    mul-double/2addr v2, v8

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    const/4 v9, 0x2

    aget-wide v8, v8, v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    const/4 v11, 0x4

    aget-wide v10, v10, v11

    mul-double/2addr v8, v10

    sub-double/2addr v2, v8

    mul-double v8, v2, v24

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    const/4 v3, 0x3

    aget-wide v2, v2, v3

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    const/16 v11, 0x8

    aget-wide v10, v10, v11

    mul-double/2addr v2, v10

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    const/4 v11, 0x5

    aget-wide v10, v10, v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    const/4 v13, 0x6

    aget-wide v12, v12, v13

    mul-double/2addr v10, v12

    sub-double/2addr v2, v10

    neg-double v2, v2

    mul-double v10, v2, v24

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    const/4 v3, 0x0

    aget-wide v2, v2, v3

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    const/16 v13, 0x8

    aget-wide v12, v12, v13

    mul-double/2addr v2, v12

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    const/4 v13, 0x2

    aget-wide v12, v12, v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    const/4 v15, 0x6

    aget-wide v14, v14, v15

    mul-double/2addr v12, v14

    sub-double/2addr v2, v12

    mul-double v12, v2, v24

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    const/4 v3, 0x0

    aget-wide v2, v2, v3

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    const/4 v15, 0x5

    aget-wide v14, v14, v15

    mul-double/2addr v2, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    const/4 v15, 0x3

    aget-wide v14, v14, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    move-object/from16 v16, v0

    const/16 v17, 0x2

    aget-wide v16, v16, v17

    mul-double v14, v14, v16

    sub-double/2addr v2, v14

    neg-double v2, v2

    mul-double v14, v2, v24

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    const/4 v3, 0x3

    aget-wide v2, v2, v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    move-object/from16 v16, v0

    const/16 v17, 0x7

    aget-wide v16, v16, v17

    mul-double v2, v2, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    move-object/from16 v16, v0

    const/16 v17, 0x6

    aget-wide v16, v16, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    move-object/from16 v18, v0

    const/16 v19, 0x4

    aget-wide v18, v18, v19

    mul-double v16, v16, v18

    sub-double v2, v2, v16

    mul-double v16, v2, v24

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    const/4 v3, 0x0

    aget-wide v2, v2, v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    move-object/from16 v18, v0

    const/16 v19, 0x7

    aget-wide v18, v18, v19

    mul-double v2, v2, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    move-object/from16 v18, v0

    const/16 v19, 0x6

    aget-wide v18, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    move-object/from16 v20, v0

    const/16 v21, 0x1

    aget-wide v20, v20, v21

    mul-double v18, v18, v20

    sub-double v2, v2, v18

    neg-double v2, v2

    mul-double v18, v2, v24

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    const/4 v3, 0x0

    aget-wide v2, v2, v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    move-object/from16 v20, v0

    const/16 v21, 0x4

    aget-wide v20, v20, v21

    mul-double v2, v2, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    move-object/from16 v20, v0

    const/16 v21, 0x3

    aget-wide v20, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    move-object/from16 v26, v0

    const/16 v27, 0x1

    aget-wide v26, v26, v27

    mul-double v20, v20, v26

    sub-double v2, v2, v20

    mul-double v20, v2, v24

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v21}, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->set(DDDDDDDDD)V

    .line 345
    const/4 v2, 0x1

    goto/16 :goto_0
.end method

.method public maxNorm()D
    .locals 6

    .prologue
    .line 352
    iget-object v1, p0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    const/4 v4, 0x0

    aget-wide v4, v1, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    .line 353
    .local v2, "maxVal":D
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 354
    iget-object v1, p0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    aget-wide v4, v1, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    .line 353
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 356
    :cond_0
    return-wide v2
.end method

.method public minusEquals(Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;)V
    .locals 11
    .param p1, "b"    # Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 206
    iget-object v0, p0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    aget-wide v2, v0, v6

    iget-object v1, p1, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    aget-wide v4, v1, v6

    sub-double/2addr v2, v4

    aput-wide v2, v0, v6

    .line 207
    iget-object v0, p0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    aget-wide v2, v0, v7

    iget-object v1, p1, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    aget-wide v4, v1, v7

    sub-double/2addr v2, v4

    aput-wide v2, v0, v7

    .line 208
    iget-object v0, p0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    aget-wide v2, v0, v8

    iget-object v1, p1, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    aget-wide v4, v1, v8

    sub-double/2addr v2, v4

    aput-wide v2, v0, v8

    .line 209
    iget-object v0, p0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    aget-wide v2, v0, v9

    iget-object v1, p1, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    aget-wide v4, v1, v9

    sub-double/2addr v2, v4

    aput-wide v2, v0, v9

    .line 210
    iget-object v0, p0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    aget-wide v2, v0, v10

    iget-object v1, p1, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    aget-wide v4, v1, v10

    sub-double/2addr v2, v4

    aput-wide v2, v0, v10

    .line 211
    iget-object v0, p0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    const/4 v1, 0x5

    aget-wide v2, v0, v1

    iget-object v4, p1, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    const/4 v5, 0x5

    aget-wide v4, v4, v5

    sub-double/2addr v2, v4

    aput-wide v2, v0, v1

    .line 212
    iget-object v0, p0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    const/4 v1, 0x6

    aget-wide v2, v0, v1

    iget-object v4, p1, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    const/4 v5, 0x6

    aget-wide v4, v4, v5

    sub-double/2addr v2, v4

    aput-wide v2, v0, v1

    .line 213
    iget-object v0, p0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    const/4 v1, 0x7

    aget-wide v2, v0, v1

    iget-object v4, p1, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    const/4 v5, 0x7

    aget-wide v4, v4, v5

    sub-double/2addr v2, v4

    aput-wide v2, v0, v1

    .line 214
    iget-object v0, p0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    const/16 v1, 0x8

    aget-wide v2, v0, v1

    iget-object v4, p1, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    const/16 v5, 0x8

    aget-wide v4, v4, v5

    sub-double/2addr v2, v4

    aput-wide v2, v0, v1

    .line 215
    return-void
.end method

.method public plusEquals(Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;)V
    .locals 11
    .param p1, "b"    # Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 189
    iget-object v0, p0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    aget-wide v2, v0, v6

    iget-object v1, p1, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    aget-wide v4, v1, v6

    add-double/2addr v2, v4

    aput-wide v2, v0, v6

    .line 190
    iget-object v0, p0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    aget-wide v2, v0, v7

    iget-object v1, p1, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    aget-wide v4, v1, v7

    add-double/2addr v2, v4

    aput-wide v2, v0, v7

    .line 191
    iget-object v0, p0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    aget-wide v2, v0, v8

    iget-object v1, p1, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    aget-wide v4, v1, v8

    add-double/2addr v2, v4

    aput-wide v2, v0, v8

    .line 192
    iget-object v0, p0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    aget-wide v2, v0, v9

    iget-object v1, p1, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    aget-wide v4, v1, v9

    add-double/2addr v2, v4

    aput-wide v2, v0, v9

    .line 193
    iget-object v0, p0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    aget-wide v2, v0, v10

    iget-object v1, p1, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    aget-wide v4, v1, v10

    add-double/2addr v2, v4

    aput-wide v2, v0, v10

    .line 194
    iget-object v0, p0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    const/4 v1, 0x5

    aget-wide v2, v0, v1

    iget-object v4, p1, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    const/4 v5, 0x5

    aget-wide v4, v4, v5

    add-double/2addr v2, v4

    aput-wide v2, v0, v1

    .line 195
    iget-object v0, p0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    const/4 v1, 0x6

    aget-wide v2, v0, v1

    iget-object v4, p1, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    const/4 v5, 0x6

    aget-wide v4, v4, v5

    add-double/2addr v2, v4

    aput-wide v2, v0, v1

    .line 196
    iget-object v0, p0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    const/4 v1, 0x7

    aget-wide v2, v0, v1

    iget-object v4, p1, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    const/4 v5, 0x7

    aget-wide v4, v4, v5

    add-double/2addr v2, v4

    aput-wide v2, v0, v1

    .line 197
    iget-object v0, p0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    const/16 v1, 0x8

    aget-wide v2, v0, v1

    iget-object v4, p1, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    const/16 v5, 0x8

    aget-wide v4, v4, v5

    add-double/2addr v2, v4

    aput-wide v2, v0, v1

    .line 198
    return-void
.end method

.method public scale(D)V
    .locals 5
    .param p1, "s"    # D

    .prologue
    .line 172
    iget-object v0, p0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    const/4 v1, 0x0

    aget-wide v2, v0, v1

    mul-double/2addr v2, p1

    aput-wide v2, v0, v1

    .line 173
    iget-object v0, p0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    const/4 v1, 0x1

    aget-wide v2, v0, v1

    mul-double/2addr v2, p1

    aput-wide v2, v0, v1

    .line 174
    iget-object v0, p0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    const/4 v1, 0x2

    aget-wide v2, v0, v1

    mul-double/2addr v2, p1

    aput-wide v2, v0, v1

    .line 175
    iget-object v0, p0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    const/4 v1, 0x3

    aget-wide v2, v0, v1

    mul-double/2addr v2, p1

    aput-wide v2, v0, v1

    .line 176
    iget-object v0, p0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    const/4 v1, 0x4

    aget-wide v2, v0, v1

    mul-double/2addr v2, p1

    aput-wide v2, v0, v1

    .line 177
    iget-object v0, p0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    const/4 v1, 0x5

    aget-wide v2, v0, v1

    mul-double/2addr v2, p1

    aput-wide v2, v0, v1

    .line 178
    iget-object v0, p0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    const/4 v1, 0x6

    aget-wide v2, v0, v1

    mul-double/2addr v2, p1

    aput-wide v2, v0, v1

    .line 179
    iget-object v0, p0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    const/4 v1, 0x7

    aget-wide v2, v0, v1

    mul-double/2addr v2, p1

    aput-wide v2, v0, v1

    .line 180
    iget-object v0, p0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    const/16 v1, 0x8

    aget-wide v2, v0, v1

    mul-double/2addr v2, p1

    aput-wide v2, v0, v1

    .line 181
    return-void
.end method

.method public set(DDDDDDDDD)V
    .locals 3
    .param p1, "m00"    # D
    .param p3, "m01"    # D
    .param p5, "m02"    # D
    .param p7, "m10"    # D
    .param p9, "m11"    # D
    .param p11, "m12"    # D
    .param p13, "m20"    # D
    .param p15, "m21"    # D
    .param p17, "m22"    # D

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    const/4 v1, 0x0

    aput-wide p1, v0, v1

    .line 69
    iget-object v0, p0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    const/4 v1, 0x1

    aput-wide p3, v0, v1

    .line 70
    iget-object v0, p0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    const/4 v1, 0x2

    aput-wide p5, v0, v1

    .line 71
    iget-object v0, p0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    const/4 v1, 0x3

    aput-wide p7, v0, v1

    .line 72
    iget-object v0, p0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    const/4 v1, 0x4

    aput-wide p9, v0, v1

    .line 73
    iget-object v0, p0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    const/4 v1, 0x5

    aput-wide p11, v0, v1

    .line 74
    iget-object v0, p0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    const/4 v1, 0x6

    aput-wide p13, v0, v1

    .line 75
    iget-object v0, p0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    const/4 v1, 0x7

    aput-wide p15, v0, v1

    .line 76
    iget-object v0, p0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    const/16 v1, 0x8

    aput-wide p17, v0, v1

    .line 77
    return-void
.end method

.method public set(IID)V
    .locals 3
    .param p1, "row"    # I
    .param p2, "col"    # I
    .param p3, "value"    # D

    .prologue
    .line 139
    iget-object v0, p0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    mul-int/lit8 v1, p1, 0x3

    add-int/2addr v1, p2

    aput-wide p3, v0, v1

    .line 140
    return-void
.end method

.method public set(Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;)V
    .locals 9
    .param p1, "o"    # Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 85
    iget-object v0, p0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    iget-object v1, p1, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    aget-wide v2, v1, v4

    aput-wide v2, v0, v4

    .line 86
    iget-object v0, p0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    iget-object v1, p1, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    aget-wide v2, v1, v5

    aput-wide v2, v0, v5

    .line 87
    iget-object v0, p0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    iget-object v1, p1, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    aget-wide v2, v1, v6

    aput-wide v2, v0, v6

    .line 88
    iget-object v0, p0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    iget-object v1, p1, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    aget-wide v2, v1, v7

    aput-wide v2, v0, v7

    .line 89
    iget-object v0, p0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    iget-object v1, p1, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    aget-wide v2, v1, v8

    aput-wide v2, v0, v8

    .line 90
    iget-object v0, p0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    const/4 v1, 0x5

    iget-object v2, p1, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    const/4 v3, 0x5

    aget-wide v2, v2, v3

    aput-wide v2, v0, v1

    .line 91
    iget-object v0, p0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    const/4 v1, 0x6

    iget-object v2, p1, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    const/4 v3, 0x6

    aget-wide v2, v2, v3

    aput-wide v2, v0, v1

    .line 92
    iget-object v0, p0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    const/4 v1, 0x7

    iget-object v2, p1, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    const/4 v3, 0x7

    aget-wide v2, v2, v3

    aput-wide v2, v0, v1

    .line 93
    iget-object v0, p0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    const/16 v1, 0x8

    iget-object v2, p1, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    const/16 v3, 0x8

    aget-wide v2, v2, v3

    aput-wide v2, v0, v1

    .line 94
    return-void
.end method

.method public setColumn(ILcom/google/vr/sdk/base/sensors/internal/Vector3d;)V
    .locals 4
    .param p1, "col"    # I
    .param p2, "v"    # Lcom/google/vr/sdk/base/sensors/internal/Vector3d;

    .prologue
    .line 161
    iget-object v0, p0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    iget-wide v2, p2, Lcom/google/vr/sdk/base/sensors/internal/Vector3d;->x:D

    aput-wide v2, v0, p1

    .line 162
    iget-object v0, p0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    add-int/lit8 v1, p1, 0x3

    iget-wide v2, p2, Lcom/google/vr/sdk/base/sensors/internal/Vector3d;->y:D

    aput-wide v2, v0, v1

    .line 163
    iget-object v0, p0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    add-int/lit8 v1, p1, 0x6

    iget-wide v2, p2, Lcom/google/vr/sdk/base/sensors/internal/Vector3d;->z:D

    aput-wide v2, v0, v1

    .line 164
    return-void
.end method

.method public setIdentity()V
    .locals 14

    .prologue
    .line 107
    iget-object v0, p0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    const/4 v7, 0x5

    iget-object v8, p0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    const/4 v9, 0x6

    iget-object v10, p0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    const/4 v11, 0x7

    const-wide/16 v12, 0x0

    aput-wide v12, v10, v11

    aput-wide v12, v8, v9

    aput-wide v12, v6, v7

    aput-wide v12, v4, v5

    aput-wide v12, v2, v3

    aput-wide v12, v0, v1

    .line 108
    iget-object v0, p0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    const/4 v3, 0x4

    iget-object v4, p0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    const/16 v5, 0x8

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    aput-wide v6, v4, v5

    aput-wide v6, v2, v3

    aput-wide v6, v0, v1

    .line 109
    return-void
.end method

.method public setSameDiagonal(D)V
    .locals 7
    .param p1, "d"    # D

    .prologue
    .line 117
    iget-object v0, p0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    const/4 v3, 0x4

    iget-object v4, p0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    const/16 v5, 0x8

    aput-wide p1, v4, v5

    aput-wide p1, v2, v3

    aput-wide p1, v0, v1

    .line 118
    return-void
.end method

.method public setZero()V
    .locals 22

    .prologue
    .line 100
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    const/4 v7, 0x2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    const/4 v9, 0x3

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    const/4 v11, 0x4

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    const/4 v13, 0x5

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    const/4 v15, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    move-object/from16 v16, v0

    const/16 v17, 0x7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    move-object/from16 v18, v0

    const/16 v19, 0x8

    const-wide/16 v20, 0x0

    aput-wide v20, v18, v19

    aput-wide v20, v16, v17

    aput-wide v20, v14, v15

    aput-wide v20, v12, v13

    aput-wide v20, v10, v11

    aput-wide v20, v8, v9

    aput-wide v20, v6, v7

    aput-wide v20, v4, v5

    aput-wide v20, v2, v3

    .line 101
    return-void
.end method

.method public transpose()V
    .locals 11

    .prologue
    const/4 v10, 0x6

    const/4 v9, 0x5

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 221
    iget-object v2, p0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    aget-wide v0, v2, v6

    .line 222
    .local v0, "tmp":D
    iget-object v2, p0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    iget-object v3, p0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    aget-wide v4, v3, v8

    aput-wide v4, v2, v6

    .line 223
    iget-object v2, p0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    aput-wide v0, v2, v8

    .line 225
    iget-object v2, p0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    aget-wide v0, v2, v7

    .line 226
    iget-object v2, p0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    iget-object v3, p0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    aget-wide v4, v3, v10

    aput-wide v4, v2, v7

    .line 227
    iget-object v2, p0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    aput-wide v0, v2, v10

    .line 229
    iget-object v2, p0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    aget-wide v0, v2, v9

    .line 230
    iget-object v2, p0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    iget-object v3, p0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    const/4 v4, 0x7

    aget-wide v4, v3, v4

    aput-wide v4, v2, v9

    .line 231
    iget-object v2, p0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    const/4 v3, 0x7

    aput-wide v0, v2, v3

    .line 232
    return-void
.end method

.method public transpose(Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;)V
    .locals 10
    .param p1, "result"    # Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    .prologue
    .line 240
    iget-object v6, p0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    const/4 v7, 0x1

    aget-wide v0, v6, v7

    .line 241
    .local v0, "m1":D
    iget-object v6, p0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    const/4 v7, 0x2

    aget-wide v2, v6, v7

    .line 242
    .local v2, "m2":D
    iget-object v6, p0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    const/4 v7, 0x5

    aget-wide v4, v6, v7

    .line 243
    .local v4, "m5":D
    iget-object v6, p1, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    const/4 v9, 0x0

    aget-wide v8, v8, v9

    aput-wide v8, v6, v7

    .line 244
    iget-object v6, p1, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    const/4 v9, 0x3

    aget-wide v8, v8, v9

    aput-wide v8, v6, v7

    .line 245
    iget-object v6, p1, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    const/4 v7, 0x2

    iget-object v8, p0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    const/4 v9, 0x6

    aget-wide v8, v8, v9

    aput-wide v8, v6, v7

    .line 246
    iget-object v6, p1, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    const/4 v7, 0x3

    aput-wide v0, v6, v7

    .line 247
    iget-object v6, p1, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    const/4 v7, 0x4

    iget-object v8, p0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    const/4 v9, 0x4

    aget-wide v8, v8, v9

    aput-wide v8, v6, v7

    .line 248
    iget-object v6, p1, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    const/4 v7, 0x5

    iget-object v8, p0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    const/4 v9, 0x7

    aget-wide v8, v8, v9

    aput-wide v8, v6, v7

    .line 249
    iget-object v6, p1, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    const/4 v7, 0x6

    aput-wide v2, v6, v7

    .line 250
    iget-object v6, p1, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    const/4 v7, 0x7

    aput-wide v4, v6, v7

    .line 251
    iget-object v6, p1, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    const/16 v7, 0x8

    iget-object v8, p0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->m:[D

    const/16 v9, 0x8

    aget-wide v8, v8, v9

    aput-wide v8, v6, v7

    .line 252
    return-void
.end method
