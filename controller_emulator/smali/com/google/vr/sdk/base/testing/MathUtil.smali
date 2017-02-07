.class public final Lcom/google/vr/sdk/base/testing/MathUtil;
.super Ljava/lang/Object;
.source "MathUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static matrixDiffNorm(Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;)D
    .locals 4
    .param p0, "expected"    # Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;
    .param p1, "actual"    # Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    .prologue
    .line 23
    new-instance v0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    invoke-direct {v0, p0}, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;-><init>(Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;)V

    .line 24
    .local v0, "diff":Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;
    invoke-virtual {v0, p1}, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->minusEquals(Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;)V

    .line 25
    invoke-virtual {v0}, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->maxNorm()D

    move-result-wide v2

    return-wide v2
.end method

.method public static vectorDiffNorm(Lcom/google/vr/sdk/base/sensors/internal/Vector3d;Lcom/google/vr/sdk/base/sensors/internal/Vector3d;)D
    .locals 4
    .param p0, "expected"    # Lcom/google/vr/sdk/base/sensors/internal/Vector3d;
    .param p1, "actual"    # Lcom/google/vr/sdk/base/sensors/internal/Vector3d;

    .prologue
    .line 16
    new-instance v0, Lcom/google/vr/sdk/base/sensors/internal/Vector3d;

    invoke-direct {v0}, Lcom/google/vr/sdk/base/sensors/internal/Vector3d;-><init>()V

    .line 17
    .local v0, "diff":Lcom/google/vr/sdk/base/sensors/internal/Vector3d;
    invoke-static {p0, p1, v0}, Lcom/google/vr/sdk/base/sensors/internal/Vector3d;->sub(Lcom/google/vr/sdk/base/sensors/internal/Vector3d;Lcom/google/vr/sdk/base/sensors/internal/Vector3d;Lcom/google/vr/sdk/base/sensors/internal/Vector3d;)V

    .line 18
    invoke-virtual {v0}, Lcom/google/vr/sdk/base/sensors/internal/Vector3d;->maxNorm()D

    move-result-wide v2

    return-wide v2
.end method

.method public static vectorFromScalar(D)Lcom/google/vr/sdk/base/sensors/internal/Vector3d;
    .locals 8
    .param p0, "x"    # D

    .prologue
    .line 32
    new-instance v1, Lcom/google/vr/sdk/base/sensors/internal/Vector3d;

    const-wide/high16 v2, -0x4020000000000000L    # -0.5

    mul-double v4, v2, p0

    const-wide v2, 0x3fe999999999999aL    # 0.8

    mul-double v6, v2, p0

    move-wide v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/google/vr/sdk/base/sensors/internal/Vector3d;-><init>(DDD)V

    return-object v1
.end method
