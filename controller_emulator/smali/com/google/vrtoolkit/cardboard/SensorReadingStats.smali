.class Lcom/google/vrtoolkit/cardboard/SensorReadingStats;
.super Ljava/lang/Object;
.source "SensorReadingStats.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private numAxes:I

.field private sampleBuf:[[F

.field private sampleBufSize:I

.field private samplesAdded:I

.field private writePos:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/google/vrtoolkit/cardboard/SensorReadingStats;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/vrtoolkit/cardboard/SensorReadingStats;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(II)V
    .locals 2
    .param p1, "sampleBufSize"    # I
    .param p2, "numAxes"    # I

    .prologue
    const/4 v0, 0x1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput p1, p0, Lcom/google/vrtoolkit/cardboard/SensorReadingStats;->sampleBufSize:I

    .line 53
    iput p2, p0, Lcom/google/vrtoolkit/cardboard/SensorReadingStats;->numAxes:I

    .line 55
    if-ge p1, v0, :cond_0

    .line 56
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sampleBufSize is invalid."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_0
    if-ge p2, v0, :cond_1

    .line 59
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "numAxes is invalid."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_1
    filled-new-array {p1, p2}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    iput-object v0, p0, Lcom/google/vrtoolkit/cardboard/SensorReadingStats;->sampleBuf:[[F

    .line 62
    return-void
.end method


# virtual methods
.method addSample([F)V
    .locals 3
    .param p1, "values"    # [F

    .prologue
    .line 70
    array-length v1, p1

    iget v2, p0, Lcom/google/vrtoolkit/cardboard/SensorReadingStats;->numAxes:I

    if-ge v1, v2, :cond_0

    .line 71
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "values.length is less than # of axes."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 73
    :cond_0
    iget v1, p0, Lcom/google/vrtoolkit/cardboard/SensorReadingStats;->writePos:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/google/vrtoolkit/cardboard/SensorReadingStats;->sampleBufSize:I

    rem-int/2addr v1, v2

    iput v1, p0, Lcom/google/vrtoolkit/cardboard/SensorReadingStats;->writePos:I

    .line 74
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/google/vrtoolkit/cardboard/SensorReadingStats;->numAxes:I

    if-ge v0, v1, :cond_1

    .line 75
    iget-object v1, p0, Lcom/google/vrtoolkit/cardboard/SensorReadingStats;->sampleBuf:[[F

    iget v2, p0, Lcom/google/vrtoolkit/cardboard/SensorReadingStats;->writePos:I

    aget-object v1, v1, v2

    aget v2, p1, v0

    aput v2, v1, v0

    .line 74
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 77
    :cond_1
    iget v1, p0, Lcom/google/vrtoolkit/cardboard/SensorReadingStats;->samplesAdded:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/vrtoolkit/cardboard/SensorReadingStats;->samplesAdded:I

    .line 78
    return-void
.end method

.method getAverage(I)F
    .locals 6
    .param p1, "axis"    # I

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/google/vrtoolkit/cardboard/SensorReadingStats;->statsAvailable()Z

    move-result v2

    if-nez v2, :cond_0

    .line 105
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Average not available. Not enough samples."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 107
    :cond_0
    if-ltz p1, :cond_1

    iget v2, p0, Lcom/google/vrtoolkit/cardboard/SensorReadingStats;->numAxes:I

    if-lt p1, v2, :cond_2

    .line 108
    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    iget v3, p0, Lcom/google/vrtoolkit/cardboard/SensorReadingStats;->numAxes:I

    add-int/lit8 v3, v3, -0x1

    const/16 v4, 0x26

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "axis must be between 0 and "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 110
    :cond_2
    const/4 v1, 0x0

    .line 111
    .local v1, "sum":F
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/google/vrtoolkit/cardboard/SensorReadingStats;->sampleBufSize:I

    if-ge v0, v2, :cond_3

    .line 112
    iget-object v2, p0, Lcom/google/vrtoolkit/cardboard/SensorReadingStats;->sampleBuf:[[F

    aget-object v2, v2, v0

    aget v2, v2, p1

    add-float/2addr v1, v2

    .line 111
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 114
    :cond_3
    iget v2, p0, Lcom/google/vrtoolkit/cardboard/SensorReadingStats;->sampleBufSize:I

    int-to-float v2, v2

    div-float v2, v1, v2

    return v2
.end method

.method getMaxAbsoluteDeviation()F
    .locals 3

    .prologue
    .line 136
    const/4 v1, 0x0

    .line 137
    .local v1, "maxAbsDev":F
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/google/vrtoolkit/cardboard/SensorReadingStats;->numAxes:I

    if-ge v0, v2, :cond_0

    .line 138
    invoke-virtual {p0, v0}, Lcom/google/vrtoolkit/cardboard/SensorReadingStats;->getMaxAbsoluteDeviation(I)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 137
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 140
    :cond_0
    return v1
.end method

.method getMaxAbsoluteDeviation(I)F
    .locals 7
    .param p1, "axis"    # I

    .prologue
    .line 121
    if-ltz p1, :cond_0

    iget v3, p0, Lcom/google/vrtoolkit/cardboard/SensorReadingStats;->numAxes:I

    if-lt p1, v3, :cond_1

    .line 122
    :cond_0
    new-instance v3, Ljava/lang/IllegalStateException;

    iget v4, p0, Lcom/google/vrtoolkit/cardboard/SensorReadingStats;->numAxes:I

    add-int/lit8 v4, v4, -0x1

    const/16 v5, 0x26

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "axis must be between 0 and "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 124
    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/vrtoolkit/cardboard/SensorReadingStats;->getAverage(I)F

    move-result v0

    .line 125
    .local v0, "avg":F
    const/4 v2, 0x0

    .line 126
    .local v2, "maxAbsDev":F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v3, p0, Lcom/google/vrtoolkit/cardboard/SensorReadingStats;->sampleBufSize:I

    if-ge v1, v3, :cond_2

    .line 127
    iget-object v3, p0, Lcom/google/vrtoolkit/cardboard/SensorReadingStats;->sampleBuf:[[F

    aget-object v3, v3, v1

    aget v3, v3, p1

    sub-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 126
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 129
    :cond_2
    return v2
.end method

.method reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 84
    iput v0, p0, Lcom/google/vrtoolkit/cardboard/SensorReadingStats;->samplesAdded:I

    .line 85
    iput v0, p0, Lcom/google/vrtoolkit/cardboard/SensorReadingStats;->writePos:I

    .line 86
    return-void
.end method

.method statsAvailable()Z
    .locals 2

    .prologue
    .line 94
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/SensorReadingStats;->samplesAdded:I

    iget v1, p0, Lcom/google/vrtoolkit/cardboard/SensorReadingStats;->sampleBufSize:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
