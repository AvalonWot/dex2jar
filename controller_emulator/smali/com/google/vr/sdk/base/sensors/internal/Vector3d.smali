.class public Lcom/google/vr/sdk/base/sensors/internal/Vector3d;
.super Ljava/lang/Object;
.source "Vector3d.java"


# instance fields
.field public x:D

.field public y:D

.field public z:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method

.method public constructor <init>(DDD)V
    .locals 1
    .param p1, "xx"    # D
    .param p3, "yy"    # D
    .param p5, "zz"    # D

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-virtual/range {p0 .. p6}, Lcom/google/vr/sdk/base/sensors/internal/Vector3d;->set(DDD)V

    .line 30
    return-void
.end method

.method public static add(Lcom/google/vr/sdk/base/sensors/internal/Vector3d;Lcom/google/vr/sdk/base/sensors/internal/Vector3d;Lcom/google/vr/sdk/base/sensors/internal/Vector3d;)V
    .locals 8
    .param p0, "a"    # Lcom/google/vr/sdk/base/sensors/internal/Vector3d;
    .param p1, "b"    # Lcom/google/vr/sdk/base/sensors/internal/Vector3d;
    .param p2, "result"    # Lcom/google/vr/sdk/base/sensors/internal/Vector3d;

    .prologue
    .line 138
    iget-wide v0, p0, Lcom/google/vr/sdk/base/sensors/internal/Vector3d;->x:D

    iget-wide v2, p1, Lcom/google/vr/sdk/base/sensors/internal/Vector3d;->x:D

    add-double/2addr v2, v0

    iget-wide v0, p0, Lcom/google/vr/sdk/base/sensors/internal/Vector3d;->y:D

    iget-wide v4, p1, Lcom/google/vr/sdk/base/sensors/internal/Vector3d;->y:D

    add-double/2addr v4, v0

    iget-wide v0, p0, Lcom/google/vr/sdk/base/sensors/internal/Vector3d;->z:D

    iget-wide v6, p1, Lcom/google/vr/sdk/base/sensors/internal/Vector3d;->z:D

    add-double/2addr v6, v0

    move-object v1, p2

    invoke-virtual/range {v1 .. v7}, Lcom/google/vr/sdk/base/sensors/internal/Vector3d;->set(DDD)V

    .line 139
    return-void
.end method

.method public static cross(Lcom/google/vr/sdk/base/sensors/internal/Vector3d;Lcom/google/vr/sdk/base/sensors/internal/Vector3d;Lcom/google/vr/sdk/base/sensors/internal/Vector3d;)V
    .locals 10
    .param p0, "a"    # Lcom/google/vr/sdk/base/sensors/internal/Vector3d;
    .param p1, "b"    # Lcom/google/vr/sdk/base/sensors/internal/Vector3d;
    .param p2, "result"    # Lcom/google/vr/sdk/base/sensors/internal/Vector3d;

    .prologue
    .line 160
    iget-wide v0, p0, Lcom/google/vr/sdk/base/sensors/internal/Vector3d;->y:D

    iget-wide v2, p1, Lcom/google/vr/sdk/base/sensors/internal/Vector3d;->z:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lcom/google/vr/sdk/base/sensors/internal/Vector3d;->z:D

    iget-wide v4, p1, Lcom/google/vr/sdk/base/sensors/internal/Vector3d;->y:D

    mul-double/2addr v2, v4

    sub-double v2, v0, v2

    iget-wide v0, p0, Lcom/google/vr/sdk/base/sensors/internal/Vector3d;->z:D

    iget-wide v4, p1, Lcom/google/vr/sdk/base/sensors/internal/Vector3d;->x:D

    mul-double/2addr v0, v4

    iget-wide v4, p0, Lcom/google/vr/sdk/base/sensors/internal/Vector3d;->x:D

    iget-wide v6, p1, Lcom/google/vr/sdk/base/sensors/internal/Vector3d;->z:D

    mul-double/2addr v4, v6

    sub-double v4, v0, v4

    iget-wide v0, p0, Lcom/google/vr/sdk/base/sensors/internal/Vector3d;->x:D

    iget-wide v6, p1, Lcom/google/vr/sdk/base/sensors/internal/Vector3d;->y:D

    mul-double/2addr v0, v6

    iget-wide v6, p0, Lcom/google/vr/sdk/base/sensors/internal/Vector3d;->y:D

    iget-wide v8, p1, Lcom/google/vr/sdk/base/sensors/internal/Vector3d;->x:D

    mul-double/2addr v6, v8

    sub-double v6, v0, v6

    move-object v1, p2

    invoke-virtual/range {v1 .. v7}, Lcom/google/vr/sdk/base/sensors/internal/Vector3d;->set(DDD)V

    .line 162
    return-void
.end method

.method public static dot(Lcom/google/vr/sdk/base/sensors/internal/Vector3d;Lcom/google/vr/sdk/base/sensors/internal/Vector3d;)D
    .locals 6
    .param p0, "a"    # Lcom/google/vr/sdk/base/sensors/internal/Vector3d;
    .param p1, "b"    # Lcom/google/vr/sdk/base/sensors/internal/Vector3d;

    .prologue
    .line 109
    iget-wide v0, p0, Lcom/google/vr/sdk/base/sensors/internal/Vector3d;->x:D

    iget-wide v2, p1, Lcom/google/vr/sdk/base/sensors/internal/Vector3d;->x:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lcom/google/vr/sdk/base/sensors/internal/Vector3d;->y:D

    iget-wide v4, p1, Lcom/google/vr/sdk/base/sensors/internal/Vector3d;->y:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lcom/google/vr/sdk/base/sensors/internal/Vector3d;->z:D

    iget-wide v4, p1, Lcom/google/vr/sdk/base/sensors/internal/Vector3d;->z:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public static largestAbsComponent(Lcom/google/vr/sdk/base/sensors/internal/Vector3d;)I
    .locals 10
    .param p0, "v"    # Lcom/google/vr/sdk/base/sensors/internal/Vector3d;

    .prologue
    const/4 v6, 0x2

    .line 191
    iget-wide v8, p0, Lcom/google/vr/sdk/base/sensors/internal/Vector3d;->x:D

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    .line 192
    .local v0, "xAbs":D
    iget-wide v8, p0, Lcom/google/vr/sdk/base/sensors/internal/Vector3d;->y:D

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    .line 193
    .local v2, "yAbs":D
    iget-wide v8, p0, Lcom/google/vr/sdk/base/sensors/internal/Vector3d;->z:D

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    .line 195
    .local v4, "zAbs":D
    cmpl-double v7, v0, v2

    if-lez v7, :cond_1

    .line 196
    cmpl-double v7, v0, v4

    if-lez v7, :cond_0

    .line 197
    const/4 v6, 0x0

    .line 205
    :cond_0
    :goto_0
    return v6

    .line 202
    :cond_1
    cmpl-double v7, v2, v4

    if-lez v7, :cond_0

    .line 203
    const/4 v6, 0x1

    goto :goto_0
.end method

.method public static ortho(Lcom/google/vr/sdk/base/sensors/internal/Vector3d;Lcom/google/vr/sdk/base/sensors/internal/Vector3d;)V
    .locals 4
    .param p0, "v"    # Lcom/google/vr/sdk/base/sensors/internal/Vector3d;
    .param p1, "result"    # Lcom/google/vr/sdk/base/sensors/internal/Vector3d;

    .prologue
    .line 170
    invoke-static {p0}, Lcom/google/vr/sdk/base/sensors/internal/Vector3d;->largestAbsComponent(Lcom/google/vr/sdk/base/sensors/internal/Vector3d;)I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 171
    .local v0, "k":I
    if-gez v0, :cond_0

    .line 172
    const/4 v0, 0x2

    .line 174
    :cond_0
    invoke-virtual {p1}, Lcom/google/vr/sdk/base/sensors/internal/Vector3d;->setZero()V

    .line 175
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/vr/sdk/base/sensors/internal/Vector3d;->setComponent(ID)V

    .line 177
    invoke-static {p0, p1, p1}, Lcom/google/vr/sdk/base/sensors/internal/Vector3d;->cross(Lcom/google/vr/sdk/base/sensors/internal/Vector3d;Lcom/google/vr/sdk/base/sensors/internal/Vector3d;Lcom/google/vr/sdk/base/sensors/internal/Vector3d;)V

    .line 178
    invoke-virtual {p1}, Lcom/google/vr/sdk/base/sensors/internal/Vector3d;->normalize()V

    .line 179
    return-void
.end method

.method public static sub(Lcom/google/vr/sdk/base/sensors/internal/Vector3d;Lcom/google/vr/sdk/base/sensors/internal/Vector3d;Lcom/google/vr/sdk/base/sensors/internal/Vector3d;)V
    .locals 8
    .param p0, "a"    # Lcom/google/vr/sdk/base/sensors/internal/Vector3d;
    .param p1, "b"    # Lcom/google/vr/sdk/base/sensors/internal/Vector3d;
    .param p2, "result"    # Lcom/google/vr/sdk/base/sensors/internal/Vector3d;

    .prologue
    .line 149
    iget-wide v0, p0, Lcom/google/vr/sdk/base/sensors/internal/Vector3d;->x:D

    iget-wide v2, p1, Lcom/google/vr/sdk/base/sensors/internal/Vector3d;->x:D

    sub-double v2, v0, v2

    iget-wide v0, p0, Lcom/google/vr/sdk/base/sensors/internal/Vector3d;->y:D

    iget-wide v4, p1, Lcom/google/vr/sdk/base/sensors/internal/Vector3d;->y:D

    sub-double v4, v0, v4

    iget-wide v0, p0, Lcom/google/vr/sdk/base/sensors/internal/Vector3d;->z:D

    iget-wide v6, p1, Lcom/google/vr/sdk/base/sensors/internal/Vector3d;->z:D

    sub-double v6, v0, v6

    move-object v1, p2

    invoke-virtual/range {v1 .. v7}, Lcom/google/vr/sdk/base/sensors/internal/Vector3d;->set(DDD)V

    .line 150
    return-void
.end method


# virtual methods
.method public length()D
    .locals 6

    .prologue
    .line 118
    iget-wide v0, p0, Lcom/google/vr/sdk/base/sensors/internal/Vector3d;->x:D

    iget-wide v2, p0, Lcom/google/vr/sdk/base/sensors/internal/Vector3d;->x:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lcom/google/vr/sdk/base/sensors/internal/Vector3d;->y:D

    iget-wide v4, p0, Lcom/google/vr/sdk/base/sensors/internal/Vector3d;->y:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lcom/google/vr/sdk/base/sensors/internal/Vector3d;->z:D

    iget-wide v4, p0, Lcom/google/vr/sdk/base/sensors/internal/Vector3d;->z:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public maxNorm()D
    .locals 6

    .prologue
    .line 214
    iget-wide v0, p0, Lcom/google/vr/sdk/base/sensors/internal/Vector3d;->x:D

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/vr/sdk/base/sensors/internal/Vector3d;->y:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/vr/sdk/base/sensors/internal/Vector3d;->z:D

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public normalize()V
    .locals 4

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/google/vr/sdk/base/sensors/internal/Vector3d;->length()D

    move-result-wide v0

    .line 96
    .local v0, "d":D
    const-wide/16 v2, 0x0

    cmpl-double v2, v0, v2

    if-eqz v2, :cond_0

    .line 97
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    div-double/2addr v2, v0

    invoke-virtual {p0, v2, v3}, Lcom/google/vr/sdk/base/sensors/internal/Vector3d;->scale(D)V

    .line 99
    :cond_0
    return-void
.end method

.method public sameValues(Lcom/google/vr/sdk/base/sensors/internal/Vector3d;)Z
    .locals 4
    .param p1, "other"    # Lcom/google/vr/sdk/base/sensors/internal/Vector3d;

    .prologue
    .line 127
    iget-wide v0, p0, Lcom/google/vr/sdk/base/sensors/internal/Vector3d;->x:D

    iget-wide v2, p1, Lcom/google/vr/sdk/base/sensors/internal/Vector3d;->x:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/google/vr/sdk/base/sensors/internal/Vector3d;->y:D

    iget-wide v2, p1, Lcom/google/vr/sdk/base/sensors/internal/Vector3d;->y:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/google/vr/sdk/base/sensors/internal/Vector3d;->z:D

    iget-wide v2, p1, Lcom/google/vr/sdk/base/sensors/internal/Vector3d;->z:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public scale(D)V
    .locals 3
    .param p1, "s"    # D

    .prologue
    .line 86
    iget-wide v0, p0, Lcom/google/vr/sdk/base/sensors/internal/Vector3d;->x:D

    mul-double/2addr v0, p1

    iput-wide v0, p0, Lcom/google/vr/sdk/base/sensors/internal/Vector3d;->x:D

    .line 87
    iget-wide v0, p0, Lcom/google/vr/sdk/base/sensors/internal/Vector3d;->y:D

    mul-double/2addr v0, p1

    iput-wide v0, p0, Lcom/google/vr/sdk/base/sensors/internal/Vector3d;->y:D

    .line 88
    iget-wide v0, p0, Lcom/google/vr/sdk/base/sensors/internal/Vector3d;->z:D

    mul-double/2addr v0, p1

    iput-wide v0, p0, Lcom/google/vr/sdk/base/sensors/internal/Vector3d;->z:D

    .line 89
    return-void
.end method

.method public set(DDD)V
    .locals 1
    .param p1, "xx"    # D
    .param p3, "yy"    # D
    .param p5, "zz"    # D

    .prologue
    .line 40
    iput-wide p1, p0, Lcom/google/vr/sdk/base/sensors/internal/Vector3d;->x:D

    .line 41
    iput-wide p3, p0, Lcom/google/vr/sdk/base/sensors/internal/Vector3d;->y:D

    .line 42
    iput-wide p5, p0, Lcom/google/vr/sdk/base/sensors/internal/Vector3d;->z:D

    .line 43
    return-void
.end method

.method public set(Lcom/google/vr/sdk/base/sensors/internal/Vector3d;)V
    .locals 2
    .param p1, "other"    # Lcom/google/vr/sdk/base/sensors/internal/Vector3d;

    .prologue
    .line 75
    iget-wide v0, p1, Lcom/google/vr/sdk/base/sensors/internal/Vector3d;->x:D

    iput-wide v0, p0, Lcom/google/vr/sdk/base/sensors/internal/Vector3d;->x:D

    .line 76
    iget-wide v0, p1, Lcom/google/vr/sdk/base/sensors/internal/Vector3d;->y:D

    iput-wide v0, p0, Lcom/google/vr/sdk/base/sensors/internal/Vector3d;->y:D

    .line 77
    iget-wide v0, p1, Lcom/google/vr/sdk/base/sensors/internal/Vector3d;->z:D

    iput-wide v0, p0, Lcom/google/vr/sdk/base/sensors/internal/Vector3d;->z:D

    .line 78
    return-void
.end method

.method public setComponent(ID)V
    .locals 2
    .param p1, "i"    # I
    .param p2, "val"    # D

    .prologue
    .line 53
    if-nez p1, :cond_0

    .line 54
    iput-wide p2, p0, Lcom/google/vr/sdk/base/sensors/internal/Vector3d;->x:D

    .line 60
    :goto_0
    return-void

    .line 55
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 56
    iput-wide p2, p0, Lcom/google/vr/sdk/base/sensors/internal/Vector3d;->y:D

    goto :goto_0

    .line 58
    :cond_1
    iput-wide p2, p0, Lcom/google/vr/sdk/base/sensors/internal/Vector3d;->z:D

    goto :goto_0
.end method

.method public setZero()V
    .locals 2

    .prologue
    .line 66
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/vr/sdk/base/sensors/internal/Vector3d;->z:D

    iput-wide v0, p0, Lcom/google/vr/sdk/base/sensors/internal/Vector3d;->y:D

    iput-wide v0, p0, Lcom/google/vr/sdk/base/sensors/internal/Vector3d;->x:D

    .line 67
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 182
    const-string v0, "%+05f %+05f %+05f"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-wide v4, p0, Lcom/google/vr/sdk/base/sensors/internal/Vector3d;->x:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-wide v4, p0, Lcom/google/vr/sdk/base/sensors/internal/Vector3d;->y:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-wide v4, p0, Lcom/google/vr/sdk/base/sensors/internal/Vector3d;->z:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
