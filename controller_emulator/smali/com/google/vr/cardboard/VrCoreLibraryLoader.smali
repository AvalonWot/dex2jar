.class public Lcom/google/vr/cardboard/VrCoreLibraryLoader;
.super Ljava/lang/Object;
.source "VrCoreLibraryLoader.java"


# annotations
.annotation build Lcom/google/vr/cardboard/UsedByNative;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/google/vr/cardboard/VrCoreLibraryLoader;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/vr/cardboard/VrCoreLibraryLoader;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkVrCoreGvrLibraryAvailable(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/vrcore/base/api/VrCoreNotAvailableException;
        }
    .end annotation

    .prologue
    .line 29
    sget-object v0, Lcom/google/vr/ndk/base/Version;->CURRENT:Lcom/google/vr/ndk/base/Version;

    invoke-static {p0, v0}, Lcom/google/vr/cardboard/VrCoreLibraryLoader;->checkVrCoreGvrLibraryAvailable(Landroid/content/Context;Lcom/google/vr/ndk/base/Version;)V

    .line 30
    return-void
.end method

.method private static checkVrCoreGvrLibraryAvailable(Landroid/content/Context;Lcom/google/vr/ndk/base/Version;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "targetSdkLibraryVersion"    # Lcom/google/vr/ndk/base/Version;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/vrcore/base/api/VrCoreNotAvailableException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x4

    .line 83
    invoke-static {p0}, Lcom/google/vr/vrcore/base/api/VrCoreUtils;->getVrCoreSdkLibraryVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 84
    .local v1, "vrCoreSdkLibraryVersionString":Ljava/lang/String;
    invoke-static {v1}, Lcom/google/vr/ndk/base/Version;->parse(Ljava/lang/String;)Lcom/google/vr/ndk/base/Version;

    move-result-object v0

    .line 87
    .local v0, "vrCoreSdkLibraryVersion":Lcom/google/vr/ndk/base/Version;
    if-nez v0, :cond_0

    .line 88
    sget-object v2, Lcom/google/vr/cardboard/VrCoreLibraryLoader;->TAG:Ljava/lang/String;

    const-string v3, "VrCore version does not support library loading."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    new-instance v2, Lcom/google/vr/vrcore/base/api/VrCoreNotAvailableException;

    invoke-direct {v2, v7}, Lcom/google/vr/vrcore/base/api/VrCoreNotAvailableException;-><init>(I)V

    throw v2

    .line 93
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/vr/ndk/base/Version;->isAtLeast(Lcom/google/vr/ndk/base/Version;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 94
    sget-object v2, Lcom/google/vr/cardboard/VrCoreLibraryLoader;->TAG:Ljava/lang/String;

    const-string v3, "VrCore GVR library version obsolete; VrCore supports %s but target version is %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v5, 0x1

    .line 98
    invoke-virtual {p1}, Lcom/google/vr/ndk/base/Version;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 96
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 94
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    new-instance v2, Lcom/google/vr/vrcore/base/api/VrCoreNotAvailableException;

    invoke-direct {v2, v7}, Lcom/google/vr/vrcore/base/api/VrCoreNotAvailableException;-><init>(I)V

    throw v2

    .line 101
    :cond_1
    return-void
.end method

.method public static loadNativeGvrLibrary(Landroid/content/Context;III)J
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "targetMajorVersion"    # I
    .param p2, "targetMinorVersion"    # I
    .param p3, "targetPatchVersion"    # I
    .annotation build Lcom/google/vr/cardboard/UsedByNative;
    .end annotation

    .prologue
    const-wide/16 v6, 0x0

    .line 37
    :try_start_0
    new-instance v1, Lcom/google/vr/ndk/base/Version;

    invoke-direct {v1, p1, p2, p3}, Lcom/google/vr/ndk/base/Version;-><init>(III)V

    .line 39
    .local v1, "targetSdkLibraryVersion":Lcom/google/vr/ndk/base/Version;
    sget-object v5, Lcom/google/vr/ndk/base/Version;->CURRENT:Lcom/google/vr/ndk/base/Version;

    invoke-virtual {v5, v1}, Lcom/google/vr/ndk/base/Version;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 40
    sget-object v5, Lcom/google/vr/cardboard/VrCoreLibraryLoader;->TAG:Ljava/lang/String;

    const-string v8, "Native SDK version does not match Java; expected %s but received %s"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    sget-object v11, Lcom/google/vr/ndk/base/Version;->CURRENT:Lcom/google/vr/ndk/base/Version;

    aput-object v11, v9, v10

    const/4 v10, 0x1

    .line 44
    invoke-virtual {v1}, Lcom/google/vr/ndk/base/Version;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    .line 42
    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 40
    invoke-static {v5, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    :cond_0
    invoke-static {p0, v1}, Lcom/google/vr/cardboard/VrCoreLibraryLoader;->checkVrCoreGvrLibraryAvailable(Landroid/content/Context;Lcom/google/vr/ndk/base/Version;)V

    .line 48
    invoke-static {p0}, Lcom/google/vr/vrcore/library/api/VrCoreLoader;->getRemoteContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v2

    .line 49
    .local v2, "vrCoreContext":Landroid/content/Context;
    invoke-static {p0}, Lcom/google/vr/vrcore/library/api/VrCoreLoader;->getRemoteCreator(Landroid/content/Context;)Lcom/google/vr/vrcore/library/api/IVrCreator;

    move-result-object v3

    .line 52
    .local v3, "vrCoreCreator":Lcom/google/vr/vrcore/library/api/IVrCreator;
    invoke-static {v2}, Lcom/google/vr/vrcore/library/api/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/vr/vrcore/library/api/IObjectWrapper;

    move-result-object v5

    invoke-static {p0}, Lcom/google/vr/vrcore/library/api/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/vr/vrcore/library/api/IObjectWrapper;

    move-result-object v8

    .line 51
    invoke-interface {v3, v5, v8}, Lcom/google/vr/vrcore/library/api/IVrCreator;->newNativeLibraryLoader(Lcom/google/vr/vrcore/library/api/IObjectWrapper;Lcom/google/vr/vrcore/library/api/IObjectWrapper;)Lcom/google/vr/vrcore/library/api/IVrNativeLibraryLoader;

    move-result-object v4

    .line 53
    .local v4, "vrCoreLoader":Lcom/google/vr/vrcore/library/api/IVrNativeLibraryLoader;
    if-nez v4, :cond_1

    .line 54
    sget-object v5, Lcom/google/vr/cardboard/VrCoreLibraryLoader;->TAG:Ljava/lang/String;

    const-string v8, "Failed to load native GVR library from VrCore: no library loader available."

    invoke-static {v5, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    .end local v1    # "targetSdkLibraryVersion":Lcom/google/vr/ndk/base/Version;
    .end local v2    # "vrCoreContext":Landroid/content/Context;
    .end local v3    # "vrCoreCreator":Lcom/google/vr/vrcore/library/api/IVrCreator;
    .end local v4    # "vrCoreLoader":Lcom/google/vr/vrcore/library/api/IVrNativeLibraryLoader;
    :goto_0
    return-wide v6

    .line 57
    .restart local v1    # "targetSdkLibraryVersion":Lcom/google/vr/ndk/base/Version;
    .restart local v2    # "vrCoreContext":Landroid/content/Context;
    .restart local v3    # "vrCoreCreator":Lcom/google/vr/vrcore/library/api/IVrCreator;
    .restart local v4    # "vrCoreLoader":Lcom/google/vr/vrcore/library/api/IVrNativeLibraryLoader;
    :cond_1
    iget v5, v1, Lcom/google/vr/ndk/base/Version;->majorVersion:I

    iget v8, v1, Lcom/google/vr/ndk/base/Version;->minorVersion:I

    iget v9, v1, Lcom/google/vr/ndk/base/Version;->patchVersion:I

    invoke-interface {v4, v5, v8, v9}, Lcom/google/vr/vrcore/library/api/IVrNativeLibraryLoader;->loadNativeGvrLibrary(III)J
    :try_end_0
    .catch Lcom/google/vr/vrcore/base/api/VrCoreNotAvailableException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_4
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v6

    goto :goto_0

    .line 61
    .end local v1    # "targetSdkLibraryVersion":Lcom/google/vr/ndk/base/Version;
    .end local v2    # "vrCoreContext":Landroid/content/Context;
    .end local v3    # "vrCoreCreator":Lcom/google/vr/vrcore/library/api/IVrCreator;
    .end local v4    # "vrCoreLoader":Lcom/google/vr/vrcore/library/api/IVrNativeLibraryLoader;
    :catch_0
    move-exception v0

    .line 67
    .local v0, "e":Ljava/lang/Throwable;
    :goto_1
    sget-object v5, Lcom/google/vr/cardboard/VrCoreLibraryLoader;->TAG:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, 0x31

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v9, "Failed to load native GVR library from VrCore:\n  "

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 61
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_1

    :catch_4
    move-exception v0

    goto :goto_1

    :catch_5
    move-exception v0

    goto :goto_1
.end method
