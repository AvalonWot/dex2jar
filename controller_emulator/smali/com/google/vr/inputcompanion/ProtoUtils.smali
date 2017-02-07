.class public Lcom/google/vr/inputcompanion/ProtoUtils;
.super Ljava/lang/Object;
.source "ProtoUtils.java"


# static fields
.field private static final MAX_PROTO_LENGTH:I = 0x7fff

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/google/vr/inputcompanion/ProtoUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/vr/inputcompanion/ProtoUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static accelToProto([FJ)Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;
    .locals 3
    .param p0, "values"    # [F
    .param p1, "timestamp"    # J

    .prologue
    .line 59
    new-instance v0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;

    invoke-direct {v0}, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;-><init>()V

    .line 60
    .local v0, "event":Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;->setType(I)Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;

    .line 61
    new-instance v1, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$AccelerometerEvent;

    invoke-direct {v1}, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$AccelerometerEvent;-><init>()V

    iput-object v1, v0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;->accelerometerEvent:Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$AccelerometerEvent;

    .line 62
    iget-object v1, v0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;->accelerometerEvent:Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$AccelerometerEvent;

    invoke-virtual {v1, p1, p2}, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$AccelerometerEvent;->setTimestamp(J)Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$AccelerometerEvent;

    .line 63
    iget-object v1, v0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;->accelerometerEvent:Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$AccelerometerEvent;

    const/4 v2, 0x0

    aget v2, p0, v2

    invoke-virtual {v1, v2}, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$AccelerometerEvent;->setX(F)Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$AccelerometerEvent;

    .line 64
    iget-object v1, v0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;->accelerometerEvent:Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$AccelerometerEvent;

    const/4 v2, 0x1

    aget v2, p0, v2

    invoke-virtual {v1, v2}, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$AccelerometerEvent;->setY(F)Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$AccelerometerEvent;

    .line 65
    iget-object v1, v0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;->accelerometerEvent:Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$AccelerometerEvent;

    const/4 v2, 0x2

    aget v2, p0, v2

    invoke-virtual {v1, v2}, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$AccelerometerEvent;->setZ(F)Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$AccelerometerEvent;

    .line 66
    return-object v0
.end method

.method private static blockingRead(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;)I
    .locals 5
    .param p0, "channel"    # Ljava/nio/channels/ReadableByteChannel;
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 225
    const/4 v1, 0x0

    .line 226
    .local v1, "totalRead":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    sub-int v2, v3, v4

    .line 227
    .local v2, "wantToRead":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 228
    invoke-interface {p0, p1}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 229
    .local v0, "read":I
    add-int/2addr v1, v0

    .line 230
    goto :goto_0

    .line 231
    .end local v0    # "read":I
    :cond_0
    return v1
.end method

.method public static gyroToProto([FJ)Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;
    .locals 5
    .param p0, "values"    # [F
    .param p1, "timestamp"    # J

    .prologue
    const/4 v3, 0x2

    .line 48
    new-instance v0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;

    invoke-direct {v0}, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;-><init>()V

    .line 49
    .local v0, "event":Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;
    invoke-virtual {v0, v3}, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;->setType(I)Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;

    .line 50
    new-instance v1, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$GyroscopeEvent;

    invoke-direct {v1}, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$GyroscopeEvent;-><init>()V

    iput-object v1, v0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;->gyroscopeEvent:Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$GyroscopeEvent;

    .line 51
    iget-object v1, v0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;->gyroscopeEvent:Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$GyroscopeEvent;

    invoke-virtual {v1, p1, p2}, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$GyroscopeEvent;->setTimestamp(J)Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$GyroscopeEvent;

    .line 52
    iget-object v1, v0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;->gyroscopeEvent:Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$GyroscopeEvent;

    const/4 v2, 0x0

    aget v2, p0, v2

    invoke-virtual {v1, v2}, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$GyroscopeEvent;->setX(F)Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$GyroscopeEvent;

    .line 53
    iget-object v1, v0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;->gyroscopeEvent:Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$GyroscopeEvent;

    const/4 v2, 0x1

    aget v2, p0, v2

    invoke-virtual {v1, v2}, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$GyroscopeEvent;->setY(F)Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$GyroscopeEvent;

    .line 54
    iget-object v1, v0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;->gyroscopeEvent:Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$GyroscopeEvent;

    aget v2, p0, v3

    invoke-virtual {v1, v2}, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$GyroscopeEvent;->setZ(F)Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$GyroscopeEvent;

    .line 55
    return-object v0
.end method

.method public static hoverHeatmapToProto([FII)Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;
    .locals 4
    .param p0, "data"    # [F
    .param p1, "width"    # I
    .param p2, "height"    # I
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 107
    if-lez p1, :cond_0

    if-lez p2, :cond_0

    if-eqz p0, :cond_0

    array-length v1, p0

    mul-int v2, p1, p2

    if-eq v1, v2, :cond_1

    .line 108
    :cond_0
    const/4 v0, 0x0

    .line 118
    :goto_0
    return-object v0

    .line 111
    :cond_1
    new-instance v0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;

    invoke-direct {v0}, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;-><init>()V

    .line 112
    .local v0, "event":Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;->setType(I)Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;

    .line 113
    new-instance v1, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$DepthMapEvent;

    invoke-direct {v1}, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$DepthMapEvent;-><init>()V

    iput-object v1, v0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;->depthMapEvent:Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$DepthMapEvent;

    .line 114
    iget-object v1, v0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;->depthMapEvent:Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$DepthMapEvent;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$DepthMapEvent;->setTimestamp(J)Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$DepthMapEvent;

    .line 115
    iget-object v1, v0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;->depthMapEvent:Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$DepthMapEvent;

    invoke-virtual {v1, p1}, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$DepthMapEvent;->setWidth(I)Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$DepthMapEvent;

    .line 116
    iget-object v1, v0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;->depthMapEvent:Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$DepthMapEvent;

    invoke-virtual {v1, p2}, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$DepthMapEvent;->setHeight(I)Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$DepthMapEvent;

    .line 117
    iget-object v1, v0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;->depthMapEvent:Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$DepthMapEvent;

    iput-object p0, v1, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$DepthMapEvent;->zDistances:[F

    goto :goto_0
.end method

.method public static keyToProto(IZ)Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;
    .locals 3
    .param p0, "keyCode"    # I
    .param p1, "down"    # Z

    .prologue
    .line 153
    new-instance v0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;

    invoke-direct {v0}, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;-><init>()V

    .line 154
    .local v0, "event":Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;->setType(I)Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;

    .line 155
    new-instance v1, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$KeyEvent;

    invoke-direct {v1}, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$KeyEvent;-><init>()V

    iput-object v1, v0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;->keyEvent:Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$KeyEvent;

    .line 156
    iget-object v1, v0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;->keyEvent:Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$KeyEvent;

    invoke-virtual {v1, p0}, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$KeyEvent;->setCode(I)Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$KeyEvent;

    .line 157
    iget-object v2, v0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;->keyEvent:Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$KeyEvent;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2, v1}, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$KeyEvent;->setAction(I)Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$KeyEvent;

    .line 158
    return-object v0

    .line 157
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static motionToProto(Landroid/view/MotionEvent;Landroid/graphics/Point;)Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;
    .locals 6
    .param p0, "e"    # Landroid/view/MotionEvent;
    .param p1, "screenSize"    # Landroid/graphics/Point;

    .prologue
    .line 78
    new-instance v0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;

    invoke-direct {v0}, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;-><init>()V

    .line 79
    .local v0, "event":Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;->setType(I)Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;

    .line 80
    new-instance v3, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent;

    invoke-direct {v3}, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent;-><init>()V

    iput-object v3, v0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;->motionEvent:Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent;

    .line 81
    iget-object v3, v0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;->motionEvent:Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent;

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent;->setTimestamp(J)Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent;

    .line 82
    iget-object v3, v0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;->motionEvent:Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent;

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent;->setAction(I)Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent;

    .line 83
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    .line 84
    .local v2, "pointerCount":I
    iget-object v3, v0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;->motionEvent:Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent;

    new-array v4, v2, [Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent$Pointer;

    iput-object v4, v3, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent;->pointers:[Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent$Pointer;

    .line 85
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 86
    iget-object v3, v0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;->motionEvent:Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent;

    iget-object v3, v3, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent;->pointers:[Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent$Pointer;

    new-instance v4, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent$Pointer;

    invoke-direct {v4}, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent$Pointer;-><init>()V

    aput-object v4, v3, v1

    .line 87
    iget-object v3, v0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;->motionEvent:Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent;

    iget-object v3, v3, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent;->pointers:[Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent$Pointer;

    aget-object v3, v3, v1

    invoke-virtual {p0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent$Pointer;->setId(I)Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent$Pointer;

    .line 88
    iget-object v3, v0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;->motionEvent:Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent;

    iget-object v3, v3, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent;->pointers:[Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent$Pointer;

    aget-object v3, v3, v1

    invoke-virtual {p0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    iget v5, p1, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-virtual {v3, v4}, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent$Pointer;->setNormalizedX(F)Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent$Pointer;

    .line 89
    iget-object v3, v0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;->motionEvent:Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent;

    iget-object v3, v3, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent;->pointers:[Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent$Pointer;

    aget-object v3, v3, v1

    invoke-virtual {p0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    iget v5, p1, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-virtual {v3, v4}, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent$Pointer;->setNormalizedY(F)Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$MotionEvent$Pointer;

    .line 85
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 91
    :cond_0
    return-object v0
.end method

.method public static orientationToProto(J[F)Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;
    .locals 4
    .param p0, "timestamp"    # J
    .param p2, "quaternion"    # [F
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 130
    if-eqz p2, :cond_0

    array-length v1, p2

    const/4 v2, 0x4

    if-ge v1, v2, :cond_1

    .line 131
    :cond_0
    const/4 v0, 0x0

    .line 142
    :goto_0
    return-object v0

    .line 134
    :cond_1
    new-instance v0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;

    invoke-direct {v0}, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;-><init>()V

    .line 135
    .local v0, "event":Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;->setType(I)Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;

    .line 136
    new-instance v1, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$OrientationEvent;

    invoke-direct {v1}, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$OrientationEvent;-><init>()V

    iput-object v1, v0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;->orientationEvent:Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$OrientationEvent;

    .line 137
    iget-object v1, v0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;->orientationEvent:Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$OrientationEvent;

    invoke-virtual {v1, p0, p1}, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$OrientationEvent;->setTimestamp(J)Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$OrientationEvent;

    .line 138
    iget-object v1, v0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;->orientationEvent:Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$OrientationEvent;

    const/4 v2, 0x0

    aget v2, p2, v2

    invoke-virtual {v1, v2}, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$OrientationEvent;->setX(F)Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$OrientationEvent;

    .line 139
    iget-object v1, v0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;->orientationEvent:Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$OrientationEvent;

    const/4 v2, 0x1

    aget v2, p2, v2

    invoke-virtual {v1, v2}, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$OrientationEvent;->setY(F)Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$OrientationEvent;

    .line 140
    iget-object v1, v0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;->orientationEvent:Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$OrientationEvent;

    const/4 v2, 0x2

    aget v2, p2, v2

    invoke-virtual {v1, v2}, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$OrientationEvent;->setZ(F)Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$OrientationEvent;

    .line 141
    iget-object v1, v0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;->orientationEvent:Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$OrientationEvent;

    const/4 v2, 0x3

    aget v2, p2, v2

    invoke-virtual {v1, v2}, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$OrientationEvent;->setW(F)Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent$OrientationEvent;

    goto :goto_0
.end method

.method public static readFromByteBuffer(Ljava/nio/ByteBuffer;)Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;
    .locals 5
    .param p0, "protoBytes"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 215
    new-instance v0, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;

    invoke-direct {v0}, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;-><init>()V

    .line 218
    .local v0, "proto":Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    .line 219
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v2

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/2addr v2, v3

    .line 220
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    sub-int/2addr v3, v4

    .line 216
    invoke-static {v0, v1, v2, v3}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[BII)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v1

    check-cast v1, Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;

    return-object v1
.end method

.method public static readFromChannel(Ljava/nio/channels/ReadableByteChannel;)Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;
    .locals 7
    .param p0, "channel"    # Ljava/nio/channels/ReadableByteChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v5, 0x4

    const/4 v3, 0x0

    .line 189
    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 190
    .local v0, "header":Ljava/nio/ByteBuffer;
    invoke-static {p0, v0}, Lcom/google/vr/inputcompanion/ProtoUtils;->blockingRead(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;)I

    move-result v4

    if-ge v4, v5, :cond_1

    .line 204
    :cond_0
    :goto_0
    return-object v3

    .line 193
    :cond_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 194
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    .line 195
    .local v1, "length":I
    const/4 v4, 0x1

    if-lt v1, v4, :cond_2

    const/16 v4, 0x7fff

    if-le v1, v4, :cond_3

    .line 196
    :cond_2
    sget-object v4, Lcom/google/vr/inputcompanion/ProtoUtils;->TAG:Ljava/lang/String;

    const/16 v5, 0x24

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Invalid protobuf length: "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 199
    :cond_3
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 200
    .local v2, "protoBytes":Ljava/nio/ByteBuffer;
    invoke-static {p0, v2}, Lcom/google/vr/inputcompanion/ProtoUtils;->blockingRead(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;)I

    move-result v4

    if-lt v4, v1, :cond_0

    .line 203
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 204
    invoke-static {v2}, Lcom/google/vr/inputcompanion/ProtoUtils;->readFromByteBuffer(Ljava/nio/ByteBuffer;)Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;

    move-result-object v3

    goto :goto_0
.end method

.method public static sensorEventToProto(Landroid/hardware/SensorEvent;)Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;
    .locals 4
    .param p0, "event"    # Landroid/hardware/SensorEvent;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 38
    iget-object v0, p0, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 39
    iget-object v0, p0, Landroid/hardware/SensorEvent;->values:[F

    iget-wide v2, p0, Landroid/hardware/SensorEvent;->timestamp:J

    invoke-static {v0, v2, v3}, Lcom/google/vr/inputcompanion/ProtoUtils;->gyroToProto([FJ)Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;

    move-result-object v0

    .line 43
    :goto_0
    return-object v0

    .line 40
    :cond_0
    iget-object v0, p0, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 41
    iget-object v0, p0, Landroid/hardware/SensorEvent;->values:[F

    iget-wide v2, p0, Landroid/hardware/SensorEvent;->timestamp:J

    invoke-static {v0, v2, v3}, Lcom/google/vr/inputcompanion/ProtoUtils;->accelToProto([FJ)Lcom/google/vr/gvr/io/proto/nano/Protos$PhoneEvent;

    move-result-object v0

    goto :goto_0

    .line 43
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static writeToChannel(Ljava/nio/channels/WritableByteChannel;Lcom/google/protobuf/nano/MessageNano;)V
    .locals 4
    .param p0, "channel"    # Ljava/nio/channels/WritableByteChannel;
    .param p1, "message"    # Lcom/google/protobuf/nano/MessageNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 169
    invoke-virtual {p1}, Lcom/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v1

    .line 172
    .local v1, "length":I
    add-int/lit8 v2, v1, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 174
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 175
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v3

    add-int/lit8 v3, v3, 0x4

    invoke-static {p1, v2, v3, v1}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;[BII)V

    .line 176
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 177
    invoke-interface {p0, v0}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 178
    return-void
.end method
