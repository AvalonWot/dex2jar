.class public abstract Lcom/google/vr/vrcore/library/api/IVrNativeLibraryLoader$Stub;
.super Landroid/os/Binder;
.source "IVrNativeLibraryLoader.java"

# interfaces
.implements Lcom/google/vr/vrcore/library/api/IVrNativeLibraryLoader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/vrcore/library/api/IVrNativeLibraryLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/vrcore/library/api/IVrNativeLibraryLoader$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.google.vr.vrcore.library.api.IVrNativeLibraryLoader"

.field static final TRANSACTION_closeNativeGvrLibrary:I = 0x3

.field static final TRANSACTION_loadNativeGvrLibrary:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 21
    const-string v0, "com.google.vr.vrcore.library.api.IVrNativeLibraryLoader"

    invoke-virtual {p0, p0, v0}, Lcom/google/vr/vrcore/library/api/IVrNativeLibraryLoader$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/google/vr/vrcore/library/api/IVrNativeLibraryLoader;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 29
    if-nez p0, :cond_0

    .line 30
    const/4 v0, 0x0

    .line 36
    :goto_0
    return-object v0

    .line 32
    :cond_0
    const-string v1, "com.google.vr.vrcore.library.api.IVrNativeLibraryLoader"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 33
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/google/vr/vrcore/library/api/IVrNativeLibraryLoader;

    if-eqz v1, :cond_1

    .line 34
    check-cast v0, Lcom/google/vr/vrcore/library/api/IVrNativeLibraryLoader;

    goto :goto_0

    .line 36
    :cond_1
    new-instance v0, Lcom/google/vr/vrcore/library/api/IVrNativeLibraryLoader$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/google/vr/vrcore/library/api/IVrNativeLibraryLoader$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 40
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 8
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 44
    sparse-switch p1, :sswitch_data_0

    .line 75
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    :goto_0
    return v6

    .line 48
    :sswitch_0
    const-string v7, "com.google.vr.vrcore.library.api.IVrNativeLibraryLoader"

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 53
    :sswitch_1
    const-string v7, "com.google.vr.vrcore.library.api.IVrNativeLibraryLoader"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 57
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 59
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 60
    .local v3, "_arg2":I
    invoke-virtual {p0, v0, v2, v3}, Lcom/google/vr/vrcore/library/api/IVrNativeLibraryLoader$Stub;->loadNativeGvrLibrary(III)J

    move-result-wide v4

    .line 61
    .local v4, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 62
    invoke-virtual {p3, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_0

    .line 67
    .end local v0    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_result":J
    :sswitch_2
    const-string v7, "com.google.vr.vrcore.library.api.IVrNativeLibraryLoader"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 70
    .local v0, "_arg0":J
    invoke-virtual {p0, v0, v1}, Lcom/google/vr/vrcore/library/api/IVrNativeLibraryLoader$Stub;->closeNativeGvrLibrary(J)V

    .line 71
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 44
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method