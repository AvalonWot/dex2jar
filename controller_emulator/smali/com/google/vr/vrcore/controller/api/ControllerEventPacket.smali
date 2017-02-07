.class public Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;
.super Ljava/lang/Object;
.source "ControllerEventPacket.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;",
            ">;"
        }
    .end annotation
.end field

.field protected static final MAX_EVENTS:I = 0x10

.field private static final SERIALIZED_FORMAT_VERSION:I = 0x1

.field private static pool:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;",
            ">;"
        }
    .end annotation
.end field

.field private static poolLock:Ljava/lang/Object;


# instance fields
.field private accelEventCount:I

.field private accelEvents:[Lcom/google/vr/vrcore/controller/api/ControllerAccelEvent;

.field private buttonEventCount:I

.field private buttonEvents:[Lcom/google/vr/vrcore/controller/api/ControllerButtonEvent;

.field private gyroEventCount:I

.field private gyroEvents:[Lcom/google/vr/vrcore/controller/api/ControllerGyroEvent;

.field private orientationEventCount:I

.field private orientationEvents:[Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;

.field private touchEventCount:I

.field private touchEvents:[Lcom/google/vr/vrcore/controller/api/ControllerTouchEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    sput-object v0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->pool:Ljava/util/ArrayDeque;

    .line 32
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->poolLock:Ljava/lang/Object;

    .line 265
    new-instance v0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket$1;

    invoke-direct {v0}, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket$1;-><init>()V

    sput-object v0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/16 v3, 0x10

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-array v1, v3, [Lcom/google/vr/vrcore/controller/api/ControllerAccelEvent;

    iput-object v1, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->accelEvents:[Lcom/google/vr/vrcore/controller/api/ControllerAccelEvent;

    .line 60
    new-array v1, v3, [Lcom/google/vr/vrcore/controller/api/ControllerButtonEvent;

    iput-object v1, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->buttonEvents:[Lcom/google/vr/vrcore/controller/api/ControllerButtonEvent;

    .line 74
    new-array v1, v3, [Lcom/google/vr/vrcore/controller/api/ControllerGyroEvent;

    iput-object v1, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->gyroEvents:[Lcom/google/vr/vrcore/controller/api/ControllerGyroEvent;

    .line 88
    new-array v1, v3, [Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;

    iput-object v1, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->orientationEvents:[Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;

    .line 103
    new-array v1, v3, [Lcom/google/vr/vrcore/controller/api/ControllerTouchEvent;

    iput-object v1, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->touchEvents:[Lcom/google/vr/vrcore/controller/api/ControllerTouchEvent;

    .line 107
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 110
    iget-object v1, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->accelEvents:[Lcom/google/vr/vrcore/controller/api/ControllerAccelEvent;

    new-instance v2, Lcom/google/vr/vrcore/controller/api/ControllerAccelEvent;

    invoke-direct {v2}, Lcom/google/vr/vrcore/controller/api/ControllerAccelEvent;-><init>()V

    aput-object v2, v1, v0

    .line 111
    iget-object v1, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->buttonEvents:[Lcom/google/vr/vrcore/controller/api/ControllerButtonEvent;

    new-instance v2, Lcom/google/vr/vrcore/controller/api/ControllerButtonEvent;

    invoke-direct {v2}, Lcom/google/vr/vrcore/controller/api/ControllerButtonEvent;-><init>()V

    aput-object v2, v1, v0

    .line 112
    iget-object v1, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->gyroEvents:[Lcom/google/vr/vrcore/controller/api/ControllerGyroEvent;

    new-instance v2, Lcom/google/vr/vrcore/controller/api/ControllerGyroEvent;

    invoke-direct {v2}, Lcom/google/vr/vrcore/controller/api/ControllerGyroEvent;-><init>()V

    aput-object v2, v1, v0

    .line 113
    iget-object v1, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->orientationEvents:[Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;

    new-instance v2, Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;

    invoke-direct {v2}, Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;-><init>()V

    aput-object v2, v1, v0

    .line 114
    iget-object v1, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->touchEvents:[Lcom/google/vr/vrcore/controller/api/ControllerTouchEvent;

    new-instance v2, Lcom/google/vr/vrcore/controller/api/ControllerTouchEvent;

    invoke-direct {v2}, Lcom/google/vr/vrcore/controller/api/ControllerTouchEvent;-><init>()V

    aput-object v2, v1, v0

    .line 107
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 116
    :cond_0
    invoke-virtual {p0}, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->clear()V

    .line 117
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 136
    invoke-direct {p0}, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;-><init>()V

    .line 137
    invoke-virtual {p0, p1}, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->readFromParcel(Landroid/os/Parcel;)V

    .line 138
    return-void
.end method

.method public static obtain()Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;
    .locals 2

    .prologue
    .line 246
    sget-object v1, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->poolLock:Ljava/lang/Object;

    monitor-enter v1

    .line 247
    :try_start_0
    sget-object v0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->pool:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;

    invoke-direct {v0}, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;-><init>()V

    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    sget-object v0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->pool:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;

    goto :goto_0

    .line 248
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public addAccelEvent()Lcom/google/vr/vrcore/controller/api/ControllerAccelEvent;
    .locals 3

    .prologue
    .line 204
    iget v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->accelEventCount:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 205
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ControllerEventPacket capacity exceeded."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->accelEvents:[Lcom/google/vr/vrcore/controller/api/ControllerAccelEvent;

    iget v1, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->accelEventCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->accelEventCount:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public addButtonEvent()Lcom/google/vr/vrcore/controller/api/ControllerButtonEvent;
    .locals 3

    .prologue
    .line 211
    iget v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->buttonEventCount:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 212
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ControllerEventPacket capacity exceeded."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->buttonEvents:[Lcom/google/vr/vrcore/controller/api/ControllerButtonEvent;

    iget v1, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->buttonEventCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->buttonEventCount:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public addGyroEvent()Lcom/google/vr/vrcore/controller/api/ControllerGyroEvent;
    .locals 3

    .prologue
    .line 218
    iget v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->gyroEventCount:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 219
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ControllerEventPacket capacity exceeded."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->gyroEvents:[Lcom/google/vr/vrcore/controller/api/ControllerGyroEvent;

    iget v1, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->gyroEventCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->gyroEventCount:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public addOrientationEvent()Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;
    .locals 3

    .prologue
    .line 225
    iget v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->orientationEventCount:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 226
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ControllerEventPacket capacity exceeded."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->orientationEvents:[Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;

    iget v1, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->orientationEventCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->orientationEventCount:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public addTouchEvent()Lcom/google/vr/vrcore/controller/api/ControllerTouchEvent;
    .locals 3

    .prologue
    .line 232
    iget v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->touchEventCount:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 233
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ControllerEventPacket capacity exceeded."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->touchEvents:[Lcom/google/vr/vrcore/controller/api/ControllerTouchEvent;

    iget v1, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->touchEventCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->touchEventCount:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method protected calculateParcelByteLength()I
    .locals 3

    .prologue
    .line 288
    const/4 v1, 0x4

    .line 291
    .local v1, "length":I
    add-int/lit8 v1, v1, 0x14

    .line 293
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->accelEventCount:I

    if-ge v0, v2, :cond_0

    .line 294
    iget-object v2, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->accelEvents:[Lcom/google/vr/vrcore/controller/api/ControllerAccelEvent;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/vr/vrcore/controller/api/ControllerAccelEvent;->getByteSize()I

    move-result v2

    add-int/2addr v1, v2

    .line 293
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 297
    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget v2, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->buttonEventCount:I

    if-ge v0, v2, :cond_1

    .line 298
    iget-object v2, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->buttonEvents:[Lcom/google/vr/vrcore/controller/api/ControllerButtonEvent;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/vr/vrcore/controller/api/ControllerButtonEvent;->getByteSize()I

    move-result v2

    add-int/2addr v1, v2

    .line 297
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 301
    :cond_1
    const/4 v0, 0x0

    :goto_2
    iget v2, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->gyroEventCount:I

    if-ge v0, v2, :cond_2

    .line 302
    iget-object v2, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->gyroEvents:[Lcom/google/vr/vrcore/controller/api/ControllerGyroEvent;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/vr/vrcore/controller/api/ControllerGyroEvent;->getByteSize()I

    move-result v2

    add-int/2addr v1, v2

    .line 301
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 305
    :cond_2
    const/4 v0, 0x0

    :goto_3
    iget v2, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->orientationEventCount:I

    if-ge v0, v2, :cond_3

    .line 306
    iget-object v2, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->orientationEvents:[Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;->getByteSize()I

    move-result v2

    add-int/2addr v1, v2

    .line 305
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 309
    :cond_3
    const/4 v0, 0x0

    :goto_4
    iget v2, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->touchEventCount:I

    if-ge v0, v2, :cond_4

    .line 310
    iget-object v2, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->touchEvents:[Lcom/google/vr/vrcore/controller/api/ControllerTouchEvent;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/vr/vrcore/controller/api/ControllerTouchEvent;->getByteSize()I

    move-result v2

    add-int/2addr v1, v2

    .line 309
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 312
    :cond_4
    return v1
.end method

.method protected checkIsValidEventCount(I)V
    .locals 3
    .param p1, "eventCount"    # I

    .prologue
    .line 390
    if-ltz p1, :cond_0

    const/16 v0, 0x10

    if-lt p1, v0, :cond_1

    .line 391
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x20

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Invalid event count: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 393
    :cond_1
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 141
    iput v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->accelEventCount:I

    .line 142
    iput v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->buttonEventCount:I

    .line 143
    iput v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->gyroEventCount:I

    .line 144
    iput v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->orientationEventCount:I

    .line 145
    iput v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->touchEventCount:I

    .line 146
    return-void
.end method

.method public copyFrom(Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;)V
    .locals 3
    .param p1, "other"    # Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;

    .prologue
    .line 121
    iget v1, p1, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->accelEventCount:I

    iput v1, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->accelEventCount:I

    .line 122
    iget v1, p1, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->buttonEventCount:I

    iput v1, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->buttonEventCount:I

    .line 123
    iget v1, p1, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->gyroEventCount:I

    iput v1, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->gyroEventCount:I

    .line 124
    iget v1, p1, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->orientationEventCount:I

    iput v1, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->orientationEventCount:I

    .line 125
    iget v1, p1, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->touchEventCount:I

    iput v1, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->touchEventCount:I

    .line 126
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 127
    iget-object v1, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->accelEvents:[Lcom/google/vr/vrcore/controller/api/ControllerAccelEvent;

    aget-object v1, v1, v0

    iget-object v2, p1, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->accelEvents:[Lcom/google/vr/vrcore/controller/api/ControllerAccelEvent;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/google/vr/vrcore/controller/api/ControllerAccelEvent;->copyFrom(Lcom/google/vr/vrcore/controller/api/ControllerEvent;)V

    .line 128
    iget-object v1, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->buttonEvents:[Lcom/google/vr/vrcore/controller/api/ControllerButtonEvent;

    aget-object v1, v1, v0

    iget-object v2, p1, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->buttonEvents:[Lcom/google/vr/vrcore/controller/api/ControllerButtonEvent;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/google/vr/vrcore/controller/api/ControllerButtonEvent;->copyFrom(Lcom/google/vr/vrcore/controller/api/ControllerEvent;)V

    .line 129
    iget-object v1, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->gyroEvents:[Lcom/google/vr/vrcore/controller/api/ControllerGyroEvent;

    aget-object v1, v1, v0

    iget-object v2, p1, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->gyroEvents:[Lcom/google/vr/vrcore/controller/api/ControllerGyroEvent;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/google/vr/vrcore/controller/api/ControllerGyroEvent;->copyFrom(Lcom/google/vr/vrcore/controller/api/ControllerEvent;)V

    .line 130
    iget-object v1, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->orientationEvents:[Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;

    aget-object v1, v1, v0

    iget-object v2, p1, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->orientationEvents:[Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;->copyFrom(Lcom/google/vr/vrcore/controller/api/ControllerEvent;)V

    .line 131
    iget-object v1, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->touchEvents:[Lcom/google/vr/vrcore/controller/api/ControllerTouchEvent;

    aget-object v1, v1, v0

    iget-object v2, p1, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->touchEvents:[Lcom/google/vr/vrcore/controller/api/ControllerTouchEvent;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/google/vr/vrcore/controller/api/ControllerTouchEvent;->copyFrom(Lcom/google/vr/vrcore/controller/api/ControllerEvent;)V

    .line 126
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 133
    :cond_0
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 283
    const/4 v0, 0x0

    return v0
.end method

.method public getAccelEvent(I)Lcom/google/vr/vrcore/controller/api/ControllerAccelEvent;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 169
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->accelEventCount:I

    if-lt p1, v0, :cond_1

    .line 170
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 172
    :cond_1
    iget-object v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->accelEvents:[Lcom/google/vr/vrcore/controller/api/ControllerAccelEvent;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getAccelEventCount()I
    .locals 1

    .prologue
    .line 149
    iget v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->accelEventCount:I

    return v0
.end method

.method public getButtonEvent(I)Lcom/google/vr/vrcore/controller/api/ControllerButtonEvent;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 176
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->buttonEventCount:I

    if-lt p1, v0, :cond_1

    .line 177
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 179
    :cond_1
    iget-object v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->buttonEvents:[Lcom/google/vr/vrcore/controller/api/ControllerButtonEvent;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getButtonEventCount()I
    .locals 1

    .prologue
    .line 153
    iget v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->buttonEventCount:I

    return v0
.end method

.method public getGyroEvent(I)Lcom/google/vr/vrcore/controller/api/ControllerGyroEvent;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 183
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->gyroEventCount:I

    if-lt p1, v0, :cond_1

    .line 184
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 186
    :cond_1
    iget-object v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->gyroEvents:[Lcom/google/vr/vrcore/controller/api/ControllerGyroEvent;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getGyroEventCount()I
    .locals 1

    .prologue
    .line 157
    iget v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->gyroEventCount:I

    return v0
.end method

.method public getOrientationEvent(I)Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 190
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->orientationEventCount:I

    if-lt p1, v0, :cond_1

    .line 191
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 193
    :cond_1
    iget-object v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->orientationEvents:[Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getOrientationEventCount()I
    .locals 1

    .prologue
    .line 161
    iget v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->orientationEventCount:I

    return v0
.end method

.method public getTouchEvent(I)Lcom/google/vr/vrcore/controller/api/ControllerTouchEvent;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 197
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->touchEventCount:I

    if-lt p1, v0, :cond_1

    .line 198
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 200
    :cond_1
    iget-object v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->touchEvents:[Lcom/google/vr/vrcore/controller/api/ControllerTouchEvent;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getTouchEventCount()I
    .locals 1

    .prologue
    .line 165
    iget v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->touchEventCount:I

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 352
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 358
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->accelEventCount:I

    .line 359
    iget v1, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->accelEventCount:I

    invoke-virtual {p0, v1}, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->checkIsValidEventCount(I)V

    .line 360
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->accelEventCount:I

    if-ge v0, v1, :cond_0

    .line 361
    iget-object v1, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->accelEvents:[Lcom/google/vr/vrcore/controller/api/ControllerAccelEvent;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/google/vr/vrcore/controller/api/ControllerAccelEvent;->readFromParcel(Landroid/os/Parcel;)V

    .line 360
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 364
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->buttonEventCount:I

    .line 365
    iget v1, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->buttonEventCount:I

    invoke-virtual {p0, v1}, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->checkIsValidEventCount(I)V

    .line 366
    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->buttonEventCount:I

    if-ge v0, v1, :cond_1

    .line 367
    iget-object v1, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->buttonEvents:[Lcom/google/vr/vrcore/controller/api/ControllerButtonEvent;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/google/vr/vrcore/controller/api/ControllerButtonEvent;->readFromParcel(Landroid/os/Parcel;)V

    .line 366
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 370
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->gyroEventCount:I

    .line 371
    iget v1, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->gyroEventCount:I

    invoke-virtual {p0, v1}, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->checkIsValidEventCount(I)V

    .line 372
    const/4 v0, 0x0

    :goto_2
    iget v1, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->gyroEventCount:I

    if-ge v0, v1, :cond_2

    .line 373
    iget-object v1, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->gyroEvents:[Lcom/google/vr/vrcore/controller/api/ControllerGyroEvent;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/google/vr/vrcore/controller/api/ControllerGyroEvent;->readFromParcel(Landroid/os/Parcel;)V

    .line 372
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 376
    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->orientationEventCount:I

    .line 377
    iget v1, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->orientationEventCount:I

    invoke-virtual {p0, v1}, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->checkIsValidEventCount(I)V

    .line 378
    const/4 v0, 0x0

    :goto_3
    iget v1, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->orientationEventCount:I

    if-ge v0, v1, :cond_3

    .line 379
    iget-object v1, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->orientationEvents:[Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;->readFromParcel(Landroid/os/Parcel;)V

    .line 378
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 382
    :cond_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->touchEventCount:I

    .line 383
    iget v1, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->touchEventCount:I

    invoke-virtual {p0, v1}, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->checkIsValidEventCount(I)V

    .line 384
    const/4 v0, 0x0

    :goto_4
    iget v1, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->touchEventCount:I

    if-ge v0, v1, :cond_4

    .line 385
    iget-object v1, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->touchEvents:[Lcom/google/vr/vrcore/controller/api/ControllerTouchEvent;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/google/vr/vrcore/controller/api/ControllerTouchEvent;->readFromParcel(Landroid/os/Parcel;)V

    .line 384
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 387
    :cond_4
    return-void
.end method

.method public recycle()V
    .locals 2

    .prologue
    .line 257
    invoke-virtual {p0}, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->clear()V

    .line 258
    sget-object v1, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->poolLock:Ljava/lang/Object;

    monitor-enter v1

    .line 259
    :try_start_0
    sget-object v0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->pool:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p0}, Ljava/util/ArrayDeque;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 260
    sget-object v0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->pool:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 262
    :cond_0
    monitor-exit v1

    .line 263
    return-void

    .line 262
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 322
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 324
    iget v1, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->accelEventCount:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 325
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->accelEventCount:I

    if-ge v0, v1, :cond_0

    .line 326
    iget-object v1, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->accelEvents:[Lcom/google/vr/vrcore/controller/api/ControllerAccelEvent;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2}, Lcom/google/vr/vrcore/controller/api/ControllerAccelEvent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 325
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 329
    :cond_0
    iget v1, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->buttonEventCount:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 330
    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->buttonEventCount:I

    if-ge v0, v1, :cond_1

    .line 331
    iget-object v1, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->buttonEvents:[Lcom/google/vr/vrcore/controller/api/ControllerButtonEvent;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2}, Lcom/google/vr/vrcore/controller/api/ControllerButtonEvent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 330
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 334
    :cond_1
    iget v1, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->gyroEventCount:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 335
    const/4 v0, 0x0

    :goto_2
    iget v1, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->gyroEventCount:I

    if-ge v0, v1, :cond_2

    .line 336
    iget-object v1, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->gyroEvents:[Lcom/google/vr/vrcore/controller/api/ControllerGyroEvent;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2}, Lcom/google/vr/vrcore/controller/api/ControllerGyroEvent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 335
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 339
    :cond_2
    iget v1, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->orientationEventCount:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 340
    const/4 v0, 0x0

    :goto_3
    iget v1, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->orientationEventCount:I

    if-ge v0, v1, :cond_3

    .line 341
    iget-object v1, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->orientationEvents:[Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2}, Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 340
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 344
    :cond_3
    iget v1, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->touchEventCount:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 345
    const/4 v0, 0x0

    :goto_4
    iget v1, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->touchEventCount:I

    if-ge v0, v1, :cond_4

    .line 346
    iget-object v1, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->touchEvents:[Lcom/google/vr/vrcore/controller/api/ControllerTouchEvent;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2}, Lcom/google/vr/vrcore/controller/api/ControllerTouchEvent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 345
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 348
    :cond_4
    return-void
.end method
