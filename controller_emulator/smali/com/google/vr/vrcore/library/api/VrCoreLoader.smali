.class public Lcom/google/vr/vrcore/library/api/VrCoreLoader;
.super Ljava/lang/Object;
.source "VrCoreLoader.java"


# static fields
.field private static final CREATOR_NAME:Ljava/lang/String; = "com.google.vr.vrcore.library.VrCreator"

.field private static final DEBUG:Z = false

.field private static final LIBRARY_APK_PACKAGE:Ljava/lang/String; = "com.google.vr.vrcore"

.field static final MIN_TARGET_API_VERSION:I = 0x9

.field private static final TAG:Ljava/lang/String;

.field private static sCreator:Lcom/google/vr/vrcore/library/api/IVrCreator;

.field private static sRemoteContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/google/vr/vrcore/library/api/VrCoreLoader;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/vr/vrcore/library/api/VrCoreLoader;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getRemoteContext(Landroid/content/Context;)Landroid/content/Context;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/vrcore/base/api/VrCoreNotAvailableException;
        }
    .end annotation

    .prologue
    .line 73
    sget-object v2, Lcom/google/vr/vrcore/library/api/VrCoreLoader;->sRemoteContext:Landroid/content/Context;

    if-nez v2, :cond_1

    .line 74
    invoke-static {p0}, Lcom/google/vr/vrcore/base/api/VrCoreUtils;->getVrCoreClientApiVersion(Landroid/content/Context;)I

    move-result v1

    .line 75
    .local v1, "vrCoreClientApiVersion":I
    const/16 v2, 0x9

    if-ge v1, v2, :cond_0

    .line 83
    new-instance v2, Lcom/google/vr/vrcore/base/api/VrCoreNotAvailableException;

    const/4 v3, 0x4

    invoke-direct {v2, v3}, Lcom/google/vr/vrcore/base/api/VrCoreNotAvailableException;-><init>(I)V

    throw v2

    .line 89
    :cond_0
    :try_start_0
    const-string v2, "com.google.vr.vrcore"

    const/4 v3, 0x3

    .line 90
    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v2

    sput-object v2, Lcom/google/vr/vrcore/library/api/VrCoreLoader;->sRemoteContext:Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    .end local v1    # "vrCoreClientApiVersion":I
    :cond_1
    sget-object v2, Lcom/google/vr/vrcore/library/api/VrCoreLoader;->sRemoteContext:Landroid/content/Context;

    return-object v2

    .line 93
    .restart local v1    # "vrCoreClientApiVersion":I
    :catch_0
    move-exception v0

    .line 94
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v2, Lcom/google/vr/vrcore/base/api/VrCoreNotAvailableException;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcom/google/vr/vrcore/base/api/VrCoreNotAvailableException;-><init>(I)V

    throw v2
.end method

.method public static getRemoteCreator(Landroid/content/Context;)Lcom/google/vr/vrcore/library/api/IVrCreator;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/vrcore/base/api/VrCoreNotAvailableException;
        }
    .end annotation

    .prologue
    .line 50
    sget-object v2, Lcom/google/vr/vrcore/library/api/VrCoreLoader;->sCreator:Lcom/google/vr/vrcore/library/api/IVrCreator;

    if-nez v2, :cond_0

    .line 54
    invoke-static {p0}, Lcom/google/vr/vrcore/library/api/VrCoreLoader;->getRemoteContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 55
    .local v1, "remoteClassLoader":Ljava/lang/ClassLoader;
    const-string v2, "com.google.vr.vrcore.library.VrCreator"

    invoke-static {v1, v2}, Lcom/google/vr/vrcore/library/api/VrCoreLoader;->newBinderInstance(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 56
    .local v0, "binder":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/google/vr/vrcore/library/api/IVrCreator$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/vr/vrcore/library/api/IVrCreator;

    move-result-object v2

    sput-object v2, Lcom/google/vr/vrcore/library/api/VrCoreLoader;->sCreator:Lcom/google/vr/vrcore/library/api/IVrCreator;

    .line 58
    .end local v0    # "binder":Landroid/os/IBinder;
    .end local v1    # "remoteClassLoader":Ljava/lang/ClassLoader;
    :cond_0
    sget-object v2, Lcom/google/vr/vrcore/library/api/VrCoreLoader;->sCreator:Lcom/google/vr/vrcore/library/api/IVrCreator;

    return-object v2
.end method

.method private static newBinderInstance(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroid/os/IBinder;
    .locals 6
    .param p0, "classLoader"    # Ljava/lang/ClassLoader;
    .param p1, "className"    # Ljava/lang/String;

    .prologue
    .line 110
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 111
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    return-object v2

    .line 112
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v1

    .line 113
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Unable to find dynamic class "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-direct {v3, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 114
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v1

    .line 115
    .local v1, "e":Ljava/lang/InstantiationException;
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Unable to instantiate the remote class "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-direct {v3, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 116
    .end local v1    # "e":Ljava/lang/InstantiationException;
    :catch_2
    move-exception v1

    .line 117
    .local v1, "e":Ljava/lang/IllegalAccessException;
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Unable to call the default constructor of "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-direct {v3, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_2
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2
.end method
