.class public final Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;
.super Lcom/google/vr/vrcore/controller/api/ControllerEvent;
.source "ControllerOrientationEvent.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public qw:F

.field public qx:F

.field public qy:F

.field public qz:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    new-instance v0, Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent$1;

    invoke-direct {v0}, Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent$1;-><init>()V

    sput-object v0, Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/google/vr/vrcore/controller/api/ControllerEvent;-><init>()V

    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 0
    .param p1, "qx"    # F
    .param p2, "qy"    # F
    .param p3, "qz"    # F
    .param p4, "qw"    # F

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/google/vr/vrcore/controller/api/ControllerEvent;-><init>()V

    .line 26
    iput p1, p0, Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;->qx:F

    .line 27
    iput p2, p0, Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;->qy:F

    .line 28
    iput p3, p0, Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;->qz:F

    .line 29
    iput p4, p0, Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;->qw:F

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/google/vr/vrcore/controller/api/ControllerEvent;-><init>()V

    .line 33
    invoke-virtual {p0, p1}, Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;->readFromParcel(Landroid/os/Parcel;)V

    .line 34
    return-void
.end method


# virtual methods
.method public copyFrom(Lcom/google/vr/vrcore/controller/api/ControllerEvent;)V
    .locals 3
    .param p1, "other"    # Lcom/google/vr/vrcore/controller/api/ControllerEvent;

    .prologue
    .line 86
    instance-of v1, p1, Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;

    if-nez v1, :cond_0

    .line 87
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot copy ControllerOrientationEvent from non-ControllerOrientationEvent instance."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 90
    :cond_0
    invoke-super {p0, p1}, Lcom/google/vr/vrcore/controller/api/ControllerEvent;->copyFrom(Lcom/google/vr/vrcore/controller/api/ControllerEvent;)V

    move-object v0, p1

    .line 91
    check-cast v0, Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;

    .line 92
    .local v0, "o":Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;
    iget v1, v0, Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;->qx:F

    iput v1, p0, Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;->qx:F

    .line 93
    iget v1, v0, Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;->qy:F

    iput v1, p0, Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;->qy:F

    .line 94
    iget v1, v0, Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;->qz:F

    iput v1, p0, Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;->qz:F

    .line 95
    iget v1, v0, Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;->qw:F

    iput v1, p0, Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;->qw:F

    .line 96
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    return v0
.end method

.method public getByteSize()I
    .locals 1

    .prologue
    .line 81
    invoke-super {p0}, Lcom/google/vr/vrcore/controller/api/ControllerEvent;->getByteSize()I

    move-result v0

    add-int/lit8 v0, v0, 0x10

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 72
    invoke-super {p0, p1}, Lcom/google/vr/vrcore/controller/api/ControllerEvent;->readFromParcel(Landroid/os/Parcel;)V

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;->qx:F

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;->qy:F

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;->qz:F

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;->qw:F

    .line 77
    return-void
.end method

.method public set(Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;)V
    .locals 1
    .param p1, "e"    # Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;

    .prologue
    .line 37
    iget v0, p1, Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;->qx:F

    iput v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;->qx:F

    .line 38
    iget v0, p1, Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;->qy:F

    iput v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;->qy:F

    .line 39
    iget v0, p1, Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;->qz:F

    iput v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;->qz:F

    .line 40
    iget v0, p1, Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;->qw:F

    iput v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;->qw:F

    .line 41
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 63
    invoke-super {p0, p1, p2}, Lcom/google/vr/vrcore/controller/api/ControllerEvent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 64
    iget v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;->qx:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 65
    iget v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;->qy:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 66
    iget v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;->qz:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 67
    iget v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;->qw:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 68
    return-void
.end method
