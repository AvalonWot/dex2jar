.class Lcom/google/vr/sdk/base/sensors/internal/GyroscopeBiasEstimator$IsStaticCounter;
.super Ljava/lang/Object;
.source "GyroscopeBiasEstimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/sdk/base/sensors/internal/GyroscopeBiasEstimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IsStaticCounter"
.end annotation


# instance fields
.field private consecutiveIsStatic:I

.field private final minStaticFrames:I


# direct methods
.method constructor <init>(I)V
    .locals 0
    .param p1, "minStaticFrames"    # I

    .prologue
    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    iput p1, p0, Lcom/google/vr/sdk/base/sensors/internal/GyroscopeBiasEstimator$IsStaticCounter;->minStaticFrames:I

    .line 167
    return-void
.end method


# virtual methods
.method appendFrame(Z)V
    .locals 1
    .param p1, "isStatic"    # Z

    .prologue
    .line 171
    if-nez p1, :cond_0

    .line 172
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/vr/sdk/base/sensors/internal/GyroscopeBiasEstimator$IsStaticCounter;->consecutiveIsStatic:I

    .line 176
    :goto_0
    return-void

    .line 174
    :cond_0
    iget v0, p0, Lcom/google/vr/sdk/base/sensors/internal/GyroscopeBiasEstimator$IsStaticCounter;->consecutiveIsStatic:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/vr/sdk/base/sensors/internal/GyroscopeBiasEstimator$IsStaticCounter;->consecutiveIsStatic:I

    goto :goto_0
.end method

.method isRecentlyStatic()Z
    .locals 2

    .prologue
    .line 179
    iget v0, p0, Lcom/google/vr/sdk/base/sensors/internal/GyroscopeBiasEstimator$IsStaticCounter;->consecutiveIsStatic:I

    iget v1, p0, Lcom/google/vr/sdk/base/sensors/internal/GyroscopeBiasEstimator$IsStaticCounter;->minStaticFrames:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
