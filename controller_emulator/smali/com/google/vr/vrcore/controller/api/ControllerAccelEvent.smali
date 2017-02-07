.class public final Lcom/google/vr/vrcore/controller/api/ControllerAccelEvent;
.super Lcom/google/vr/vrcore/controller/api/ControllerEvent;
.source "ControllerAccelEvent.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/vr/vrcore/controller/api/ControllerAccelEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public x:F

.field public y:F

.field public z:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    new-instance v0, Lcom/google/vr/vrcore/controller/api/ControllerAccelEvent$1;

    invoke-direct {v0}, Lcom/google/vr/vrcore/controller/api/ControllerAccelEvent$1;-><init>()V

    sput-object v0, Lcom/google/vr/vrcore/controller/api/ControllerAccelEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/google/vr/vrcore/controller/api/ControllerEvent;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/google/vr/vrcore/controller/api/ControllerEvent;-><init>()V

    .line 48
    invoke-virtual {p0, p1}, Lcom/google/vr/vrcore/controller/api/ControllerAccelEvent;->readFromParcel(Landroid/os/Parcel;)V

    .line 49
    return-void
.end method


# virtual methods
.method public copyFrom(Lcom/google/vr/vrcore/controller/api/ControllerEvent;)V
    .locals 3
    .param p1, "other"    # Lcom/google/vr/vrcore/controller/api/ControllerEvent;

    .prologue
    .line 92
    instance-of v1, p1, Lcom/google/vr/vrcore/controller/api/ControllerAccelEvent;

    if-nez v1, :cond_0

    .line 93
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot copy ControllerAccelEvent from non-ControllerAccelEvent instance."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 96
    :cond_0
    invoke-super {p0, p1}, Lcom/google/vr/vrcore/controller/api/ControllerEvent;->copyFrom(Lcom/google/vr/vrcore/controller/api/ControllerEvent;)V

    move-object v0, p1

    .line 97
    check-cast v0, Lcom/google/vr/vrcore/controller/api/ControllerAccelEvent;

    .line 98
    .local v0, "o":Lcom/google/vr/vrcore/controller/api/ControllerAccelEvent;
    iget v1, v0, Lcom/google/vr/vrcore/controller/api/ControllerAccelEvent;->x:F

    iput v1, p0, Lcom/google/vr/vrcore/controller/api/ControllerAccelEvent;->x:F

    .line 99
    iget v1, v0, Lcom/google/vr/vrcore/controller/api/ControllerAccelEvent;->y:F

    iput v1, p0, Lcom/google/vr/vrcore/controller/api/ControllerAccelEvent;->y:F

    .line 100
    iget v1, v0, Lcom/google/vr/vrcore/controller/api/ControllerAccelEvent;->z:F

    iput v1, p0, Lcom/google/vr/vrcore/controller/api/ControllerAccelEvent;->z:F

    .line 101
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    return v0
.end method

.method public getByteSize()I
    .locals 1

    .prologue
    .line 87
    invoke-super {p0}, Lcom/google/vr/vrcore/controller/api/ControllerEvent;->getByteSize()I

    move-result v0

    add-int/lit8 v0, v0, 0xc

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 79
    invoke-super {p0, p1}, Lcom/google/vr/vrcore/controller/api/ControllerEvent;->readFromParcel(Landroid/os/Parcel;)V

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerAccelEvent;->x:F

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerAccelEvent;->y:F

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerAccelEvent;->z:F

    .line 83
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 71
    invoke-super {p0, p1, p2}, Lcom/google/vr/vrcore/controller/api/ControllerEvent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 72
    iget v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerAccelEvent;->x:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 73
    iget v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerAccelEvent;->y:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 74
    iget v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerAccelEvent;->z:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 75
    return-void
.end method
