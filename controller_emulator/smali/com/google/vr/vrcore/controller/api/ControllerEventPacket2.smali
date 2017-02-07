.class public final Lcom/google/vr/vrcore/controller/api/ControllerEventPacket2;
.super Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;
.source "ControllerEventPacket2.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/vr/vrcore/controller/api/ControllerEventPacket2;",
            ">;"
        }
    .end annotation
.end field

.field private static pool:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Lcom/google/vr/vrcore/controller/api/ControllerEventPacket2;",
            ">;"
        }
    .end annotation
.end field

.field private static poolLock:Ljava/lang/Object;


# instance fields
.field private positionEventCount:I

.field private positionEvents:[Lcom/google/vr/vrcore/controller/api/ControllerPositionEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    sput-object v0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket2;->pool:Ljava/util/ArrayDeque;

    .line 20
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket2;->poolLock:Ljava/lang/Object;

    .line 101
    new-instance v0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket2$1;

    invoke-direct {v0}, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket2$1;-><init>()V

    sput-object v0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket2;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/16 v3, 0x10

    .line 42
    invoke-direct {p0}, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;-><init>()V

    .line 34
    new-array v1, v3, [Lcom/google/vr/vrcore/controller/api/ControllerPositionEvent;

    iput-object v1, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket2;->positionEvents:[Lcom/google/vr/vrcore/controller/api/ControllerPositionEvent;

    .line 43
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 44
    iget-object v1, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket2;->positionEvents:[Lcom/google/vr/vrcore/controller/api/ControllerPositionEvent;

    new-instance v2, Lcom/google/vr/vrcore/controller/api/ControllerPositionEvent;

    invoke-direct {v2}, Lcom/google/vr/vrcore/controller/api/ControllerPositionEvent;-><init>()V

    aput-object v2, v1, v0

    .line 43
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 46
    :cond_0
    invoke-virtual {p0}, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket2;->clear()V

    .line 47
    return-void
.end method

.method public static obtain()Lcom/google/vr/vrcore/controller/api/ControllerEventPacket2;
    .locals 2

    .prologue
    .line 81
    sget-object v1, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket2;->poolLock:Ljava/lang/Object;

    monitor-enter v1

    .line 82
    :try_start_0
    sget-object v0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket2;->pool:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket2;

    invoke-direct {v0}, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket2;-><init>()V

    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    sget-object v0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket2;->pool:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket2;

    goto :goto_0

    .line 83
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public addPositionEvent()Lcom/google/vr/vrcore/controller/api/ControllerPositionEvent;
    .locals 3

    .prologue
    .line 67
    iget v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket2;->positionEventCount:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 68
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ControllerEventPacket capacity exceeded."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket2;->positionEvents:[Lcom/google/vr/vrcore/controller/api/ControllerPositionEvent;

    iget v1, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket2;->positionEventCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket2;->positionEventCount:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method protected calculateParcelByteLength()I
    .locals 3

    .prologue
    .line 125
    invoke-super {p0}, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->calculateParcelByteLength()I

    move-result v1

    .line 127
    .local v1, "length":I
    add-int/lit8 v1, v1, 0x4

    .line 129
    add-int/lit8 v1, v1, 0x4

    .line 131
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket2;->positionEventCount:I

    if-ge v0, v2, :cond_0

    .line 132
    iget-object v2, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket2;->positionEvents:[Lcom/google/vr/vrcore/controller/api/ControllerPositionEvent;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/vr/vrcore/controller/api/ControllerPositionEvent;->getByteSize()I

    move-result v2

    add-int/2addr v1, v2

    .line 131
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 135
    :cond_0
    return v1
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 51
    invoke-super {p0}, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->clear()V

    .line 52
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket2;->positionEventCount:I

    .line 53
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x0

    return v0
.end method

.method public getPositionEvent(I)Lcom/google/vr/vrcore/controller/api/ControllerPositionEvent;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 60
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket2;->positionEventCount:I

    if-lt p1, v0, :cond_1

    .line 61
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 63
    :cond_1
    iget-object v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket2;->positionEvents:[Lcom/google/vr/vrcore/controller/api/ControllerPositionEvent;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getPositionEventCount()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket2;->positionEventCount:I

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 168
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 170
    .local v1, "position":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 172
    .local v2, "size":I
    invoke-super {p0, p1}, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->readFromParcel(Landroid/os/Parcel;)V

    .line 174
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket2;->positionEventCount:I

    .line 176
    iget v3, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket2;->positionEventCount:I

    invoke-virtual {p0, v3}, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket2;->checkIsValidEventCount(I)V

    .line 178
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v3, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket2;->positionEventCount:I

    if-ge v0, v3, :cond_0

    .line 179
    iget-object v3, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket2;->positionEvents:[Lcom/google/vr/vrcore/controller/api/ControllerPositionEvent;

    aget-object v3, v3, v0

    invoke-virtual {v3, p1}, Lcom/google/vr/vrcore/controller/api/ControllerPositionEvent;->readFromParcel(Landroid/os/Parcel;)V

    .line 178
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 185
    :cond_0
    add-int v3, v1, v2

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 186
    return-void
.end method

.method public recycle()V
    .locals 2

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket2;->clear()V

    .line 94
    sget-object v1, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket2;->poolLock:Ljava/lang/Object;

    monitor-enter v1

    .line 95
    :try_start_0
    sget-object v0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket2;->pool:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p0}, Ljava/util/ArrayDeque;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 96
    sget-object v0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket2;->pool:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 98
    :cond_0
    monitor-exit v1

    .line 99
    return-void

    .line 98
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 141
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 143
    .local v1, "position":I
    invoke-virtual {p0}, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket2;->calculateParcelByteLength()I

    move-result v2

    .line 145
    .local v2, "size":I
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 147
    invoke-super {p0, p1, p2}, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->writeToParcel(Landroid/os/Parcel;I)V

    .line 149
    iget v3, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket2;->positionEventCount:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 151
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v3, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket2;->positionEventCount:I

    if-ge v0, v3, :cond_0

    .line 152
    iget-object v3, p0, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket2;->positionEvents:[Lcom/google/vr/vrcore/controller/api/ControllerPositionEvent;

    aget-object v3, v3, v0

    invoke-virtual {v3, p1, p2}, Lcom/google/vr/vrcore/controller/api/ControllerPositionEvent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 151
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 158
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    sub-int/2addr v3, v1

    if-eq v3, v2, :cond_1

    .line 159
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Parcelable implemented incorrectly, getByteSize() must return the correct size for each ControllerEvent subclass."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 163
    :cond_1
    return-void
.end method
