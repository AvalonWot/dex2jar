.class public Lcom/google/vr/ndk/base/DaydreamApi;
.super Ljava/lang/Object;
.source "DaydreamApi.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x18
.end annotation

.annotation build Lcom/google/vr/cardboard/annotations/UsedByReflection;
    value = "IAP"
.end annotation


# static fields
.field private static final DAYDREAM_CATEGORY:Ljava/lang/String; = "com.google.intent.category.DAYDREAM"

.field private static final MIN_API_FOR_HEADSET_INSERTION:I = 0xb

.field private static final MIN_VRCORE_API_VERSION:I = 0x8

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private closed:Z

.field private final connection:Landroid/content/ServiceConnection;

.field private final context:Landroid/content/Context;

.field private daydreamManager:Lcom/google/vr/vrcore/common/api/IDaydreamManager;

.field private queuedRunnables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private vrCoreApiVersion:I

.field private vrCoreSdkService:Lcom/google/vr/vrcore/common/api/IVrCoreSdkService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const-class v0, Lcom/google/vr/ndk/base/DaydreamApi;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/vr/ndk/base/DaydreamApi;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 819
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/vr/ndk/base/DaydreamApi;->queuedRunnables:Ljava/util/ArrayList;

    .line 86
    new-instance v0, Lcom/google/vr/ndk/base/DaydreamApi$1;

    invoke-direct {v0, p0}, Lcom/google/vr/ndk/base/DaydreamApi$1;-><init>(Lcom/google/vr/ndk/base/DaydreamApi;)V

    iput-object v0, p0, Lcom/google/vr/ndk/base/DaydreamApi;->connection:Landroid/content/ServiceConnection;

    .line 820
    iput-object p1, p0, Lcom/google/vr/ndk/base/DaydreamApi;->context:Landroid/content/Context;

    .line 821
    return-void
.end method

.method static synthetic access$000(Lcom/google/vr/ndk/base/DaydreamApi;)Lcom/google/vr/vrcore/common/api/IVrCoreSdkService;
    .locals 1
    .param p0, "x0"    # Lcom/google/vr/ndk/base/DaydreamApi;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/vr/ndk/base/DaydreamApi;->vrCoreSdkService:Lcom/google/vr/vrcore/common/api/IVrCoreSdkService;

    return-object v0
.end method

.method static synthetic access$002(Lcom/google/vr/ndk/base/DaydreamApi;Lcom/google/vr/vrcore/common/api/IVrCoreSdkService;)Lcom/google/vr/vrcore/common/api/IVrCoreSdkService;
    .locals 0
    .param p0, "x0"    # Lcom/google/vr/ndk/base/DaydreamApi;
    .param p1, "x1"    # Lcom/google/vr/vrcore/common/api/IVrCoreSdkService;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/google/vr/ndk/base/DaydreamApi;->vrCoreSdkService:Lcom/google/vr/vrcore/common/api/IVrCoreSdkService;

    return-object p1
.end method

.method static synthetic access$100(Lcom/google/vr/ndk/base/DaydreamApi;)Lcom/google/vr/vrcore/common/api/IDaydreamManager;
    .locals 1
    .param p0, "x0"    # Lcom/google/vr/ndk/base/DaydreamApi;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/vr/ndk/base/DaydreamApi;->daydreamManager:Lcom/google/vr/vrcore/common/api/IDaydreamManager;

    return-object v0
.end method

.method static synthetic access$102(Lcom/google/vr/ndk/base/DaydreamApi;Lcom/google/vr/vrcore/common/api/IDaydreamManager;)Lcom/google/vr/vrcore/common/api/IDaydreamManager;
    .locals 0
    .param p0, "x0"    # Lcom/google/vr/ndk/base/DaydreamApi;
    .param p1, "x1"    # Lcom/google/vr/vrcore/common/api/IDaydreamManager;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/google/vr/ndk/base/DaydreamApi;->daydreamManager:Lcom/google/vr/vrcore/common/api/IDaydreamManager;

    return-object p1
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/google/vr/ndk/base/DaydreamApi;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/vr/ndk/base/DaydreamApi;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/google/vr/ndk/base/DaydreamApi;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/vr/ndk/base/DaydreamApi;->queuedRunnables:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/vr/ndk/base/DaydreamApi;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/vr/ndk/base/DaydreamApi;

    .prologue
    .line 54
    iget v0, p0, Lcom/google/vr/ndk/base/DaydreamApi;->vrCoreApiVersion:I

    return v0
.end method

.method static synthetic access$500(Lcom/google/vr/ndk/base/DaydreamApi;)Landroid/content/ServiceConnection;
    .locals 1
    .param p0, "x0"    # Lcom/google/vr/ndk/base/DaydreamApi;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/vr/ndk/base/DaydreamApi;->connection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/vr/ndk/base/DaydreamApi;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/google/vr/ndk/base/DaydreamApi;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/vr/ndk/base/DaydreamApi;->context:Landroid/content/Context;

    return-object v0
.end method

.method private checkIntent(Landroid/content/Intent;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/ActivityNotFoundException;
        }
    .end annotation

    .prologue
    .line 864
    iget-object v2, p0, Lcom/google/vr/ndk/base/DaydreamApi;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 865
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 866
    .local v0, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 867
    :cond_0
    new-instance v2, Landroid/content/ActivityNotFoundException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x2b

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "No activity is available to handle intent: "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/ActivityNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 869
    :cond_1
    return-void
.end method

.method private checkNotClosed()V
    .locals 2

    .prologue
    .line 873
    iget-boolean v0, p0, Lcom/google/vr/ndk/base/DaydreamApi;->closed:Z

    if-eqz v0, :cond_0

    .line 874
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "DaydreamApi object is closed and can no longer be used."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 876
    :cond_0
    return-void
.end method

.method public static create(Landroid/content/Context;)Lcom/google/vr/ndk/base/DaydreamApi;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Lcom/google/vr/cardboard/annotations/UsedByReflection;
        value = "IAP"
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 131
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    if-eq v2, v3, :cond_0

    .line 132
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "DaydreamApi must only be used from the main thread."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 135
    :cond_0
    invoke-static {p0}, Lcom/google/vr/ndk/base/DaydreamUtils;->isDaydreamPhone(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 136
    sget-object v2, Lcom/google/vr/ndk/base/DaydreamApi;->TAG:Ljava/lang/String;

    const-string v3, "Phone is not Daydream-compatible"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 145
    :cond_1
    :goto_0
    return-object v0

    .line 140
    :cond_2
    new-instance v0, Lcom/google/vr/ndk/base/DaydreamApi;

    invoke-direct {v0, p0}, Lcom/google/vr/ndk/base/DaydreamApi;-><init>(Landroid/content/Context;)V

    .line 141
    .local v0, "api":Lcom/google/vr/ndk/base/DaydreamApi;
    invoke-direct {v0}, Lcom/google/vr/ndk/base/DaydreamApi;->init()Z

    move-result v2

    if-nez v2, :cond_1

    .line 144
    sget-object v2, Lcom/google/vr/ndk/base/DaydreamApi;->TAG:Ljava/lang/String;

    const-string v3, "Failed to initialize DaydreamApi object."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 145
    goto :goto_0
.end method

.method public static createVrIntent(Landroid/content/ComponentName;)Landroid/content/Intent;
    .locals 2
    .param p0, "componentName"    # Landroid/content/ComponentName;
    .annotation build Lcom/google/vr/cardboard/annotations/UsedByReflection;
        value = "IAP"
    .end annotation

    .prologue
    .line 550
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 551
    .local v0, "i":Landroid/content/Intent;
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 552
    invoke-static {v0}, Lcom/google/vr/ndk/base/DaydreamApi;->setupVrIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v1

    return-object v1
.end method

.method public static getDaydreamSetupCompleted(Landroid/content/Context;)Z
    .locals 11
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 301
    .line 302
    invoke-static {p0}, Lcom/google/vr/cardboard/VrParamsProviderFactory;->tryToGetContentProviderClientHandle(Landroid/content/Context;)Lcom/google/vr/cardboard/VrParamsProviderFactory$ContentProviderClientHandle;

    move-result-object v8

    .line 304
    .local v8, "handle":Lcom/google/vr/cardboard/VrParamsProviderFactory$ContentProviderClientHandle;
    if-nez v8, :cond_1

    .line 305
    sget-object v0, Lcom/google/vr/ndk/base/DaydreamApi;->TAG:Ljava/lang/String;

    const-string v2, "No ContentProvider available for Daydream setup."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    :cond_0
    :goto_0
    return v10

    .line 309
    :cond_1
    iget-object v0, v8, Lcom/google/vr/cardboard/VrParamsProviderFactory$ContentProviderClientHandle;->authority:Ljava/lang/String;

    const-string v2, "daydream_setup"

    .line 310
    invoke-static {v0, v2}, Lcom/google/vr/cardboard/VrSettingsProviderContract;->createUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 313
    .local v1, "uri":Landroid/net/Uri;
    const/4 v6, 0x0

    .line 315
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, v8, Lcom/google/vr/cardboard/VrParamsProviderFactory$ContentProviderClientHandle;->client:Landroid/content/ContentProviderClient;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 316
    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 317
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-ne v0, v9, :cond_3

    move v0, v9

    .line 331
    :goto_1
    if-eqz v6, :cond_2

    .line 332
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    move v10, v0

    .line 317
    goto :goto_0

    :cond_3
    move v0, v10

    goto :goto_1

    .line 331
    :cond_4
    if-eqz v6, :cond_0

    .line 332
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 321
    :catch_0
    move-exception v7

    .line 322
    .local v7, "e":Landroid/os/RemoteException;
    :try_start_1
    sget-object v0, Lcom/google/vr/ndk/base/DaydreamApi;->TAG:Ljava/lang/String;

    const-string v2, "Failed to read Daydream setup completion from ContentProvider"

    invoke-static {v0, v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 331
    if-eqz v6, :cond_0

    .line 332
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 324
    .end local v7    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v7

    .line 325
    .local v7, "e":Ljava/lang/SecurityException;
    :try_start_2
    sget-object v0, Lcom/google/vr/ndk/base/DaydreamApi;->TAG:Ljava/lang/String;

    const-string v2, "Insufficient permissions to read Daydream setup completion from ContentProvider"

    invoke-static {v0, v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 331
    if-eqz v6, :cond_0

    .line 332
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 331
    .end local v7    # "e":Ljava/lang/SecurityException;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_5

    .line 332
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0
.end method

.method private init()Z
    .locals 8

    .prologue
    const/16 v5, 0x8

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 825
    :try_start_0
    iget-object v4, p0, Lcom/google/vr/ndk/base/DaydreamApi;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/google/vr/vrcore/base/api/VrCoreUtils;->getVrCoreClientApiVersion(Landroid/content/Context;)I

    move-result v4

    iput v4, p0, Lcom/google/vr/ndk/base/DaydreamApi;->vrCoreApiVersion:I

    .line 826
    iget v4, p0, Lcom/google/vr/ndk/base/DaydreamApi;->vrCoreApiVersion:I

    if-ge v4, v5, :cond_0

    .line 827
    sget-object v3, Lcom/google/vr/ndk/base/DaydreamApi;->TAG:Ljava/lang/String;

    iget v4, p0, Lcom/google/vr/ndk/base/DaydreamApi;->vrCoreApiVersion:I

    const/16 v5, 0x8

    const/16 v6, 0x4f

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "VrCore out of date, current version: "

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", required version: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    :goto_0
    return v2

    .line 836
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.google.vr.vrcore.BIND_SDK_SERVICE"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 837
    .local v1, "i":Landroid/content/Intent;
    const-string v4, "com.google.vr.vrcore"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 838
    iget-object v4, p0, Lcom/google/vr/ndk/base/DaydreamApi;->context:Landroid/content/Context;

    iget-object v5, p0, Lcom/google/vr/ndk/base/DaydreamApi;->connection:Landroid/content/ServiceConnection;

    const/4 v6, 0x1

    invoke-virtual {v4, v1, v5, v6}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v4

    if-eqz v4, :cond_1

    move v2, v3

    .line 840
    goto :goto_0

    .line 842
    :cond_1
    sget-object v3, Lcom/google/vr/ndk/base/DaydreamApi;->TAG:Ljava/lang/String;

    const-string v4, "Unable to bind to VrCoreSdkService"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/google/vr/vrcore/base/api/VrCoreNotAvailableException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 844
    .end local v1    # "i":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 845
    .local v0, "ex":Lcom/google/vr/vrcore/base/api/VrCoreNotAvailableException;
    sget-object v3, Lcom/google/vr/ndk/base/DaydreamApi;->TAG:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x16

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "VrCore not available: "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static isDaydreamReadyPlatform(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 159
    invoke-static {p0}, Lcom/google/vr/ndk/base/DaydreamUtils;->isDaydreamPhone(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private launchInVr(Landroid/app/PendingIntent;Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p2, "component"    # Landroid/content/ComponentName;

    .prologue
    .line 354
    new-instance v0, Lcom/google/vr/ndk/base/DaydreamApi$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/vr/ndk/base/DaydreamApi$3;-><init>(Lcom/google/vr/ndk/base/DaydreamApi;Landroid/app/PendingIntent;Landroid/content/ComponentName;)V

    invoke-direct {p0, v0}, Lcom/google/vr/ndk/base/DaydreamApi;->runWhenServiceConnected(Ljava/lang/Runnable;)V

    .line 379
    return-void
.end method

.method private launchTransitionCallbackInVr(Lcom/google/vr/vrcore/common/api/ITransitionCallbacks;)V
    .locals 1
    .param p1, "callbacks"    # Lcom/google/vr/vrcore/common/api/ITransitionCallbacks;

    .prologue
    .line 382
    new-instance v0, Lcom/google/vr/ndk/base/DaydreamApi$4;

    invoke-direct {v0, p0, p1}, Lcom/google/vr/ndk/base/DaydreamApi$4;-><init>(Lcom/google/vr/ndk/base/DaydreamApi;Lcom/google/vr/vrcore/common/api/ITransitionCallbacks;)V

    invoke-direct {p0, v0}, Lcom/google/vr/ndk/base/DaydreamApi;->runWhenServiceConnected(Ljava/lang/Runnable;)V

    .line 404
    return-void
.end method

.method private runWhenServiceConnected(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 851
    iget-object v0, p0, Lcom/google/vr/ndk/base/DaydreamApi;->vrCoreSdkService:Lcom/google/vr/vrcore/common/api/IVrCoreSdkService;

    if-eqz v0, :cond_0

    .line 853
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 858
    :goto_0
    return-void

    .line 856
    :cond_0
    iget-object v0, p0, Lcom/google/vr/ndk/base/DaydreamApi;->queuedRunnables:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static setDaydreamSetupCompleted(Landroid/content/Context;Z)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "value"    # Z

    .prologue
    const/4 v5, 0x0

    .line 263
    .line 264
    invoke-static {p0}, Lcom/google/vr/cardboard/VrParamsProviderFactory;->tryToGetContentProviderClientHandle(Landroid/content/Context;)Lcom/google/vr/cardboard/VrParamsProviderFactory$ContentProviderClientHandle;

    move-result-object v1

    .line 266
    .local v1, "handle":Lcom/google/vr/cardboard/VrParamsProviderFactory$ContentProviderClientHandle;
    if-nez v1, :cond_1

    .line 267
    sget-object v6, Lcom/google/vr/ndk/base/DaydreamApi;->TAG:Ljava/lang/String;

    const-string v7, "No ContentProvider available for Daydream setup."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    :cond_0
    :goto_0
    return v5

    .line 271
    :cond_1
    iget-object v6, v1, Lcom/google/vr/cardboard/VrParamsProviderFactory$ContentProviderClientHandle;->authority:Ljava/lang/String;

    const-string v7, "daydream_setup"

    .line 272
    invoke-static {v6, v7}, Lcom/google/vr/cardboard/VrSettingsProviderContract;->createUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 276
    .local v3, "uri":Landroid/net/Uri;
    :try_start_0
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 277
    .local v4, "values":Landroid/content/ContentValues;
    const-string v6, "value"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 278
    iget-object v6, v1, Lcom/google/vr/cardboard/VrParamsProviderFactory$ContentProviderClientHandle;->client:Landroid/content/ContentProviderClient;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v6, v3, v4, v7, v8}, Landroid/content/ContentProviderClient;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 279
    .local v2, "rowsUpdated":I
    if-lez v2, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    .line 280
    .end local v2    # "rowsUpdated":I
    .end local v4    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v0

    .line 281
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v6, Lcom/google/vr/ndk/base/DaydreamApi;->TAG:Ljava/lang/String;

    const-string v7, "Failed to indicate Daydream setup completion to ContentProvider"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 283
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 284
    .local v0, "e":Ljava/lang/SecurityException;
    sget-object v6, Lcom/google/vr/ndk/base/DaydreamApi;->TAG:Ljava/lang/String;

    const-string v7, "Insufficient permissions to indicate Daydream setup completion to ContentProvider"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static setupVrIntent(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;
    .annotation build Lcom/google/vr/cardboard/annotations/UsedByReflection;
        value = "IAP"
    .end annotation

    .prologue
    .line 569
    const-string v0, "com.google.intent.category.DAYDREAM"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 585
    const/high16 v0, 0x14010000

    invoke-virtual {p0, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 589
    return-object p0
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation build Lcom/google/vr/cardboard/annotations/UsedByReflection;
        value = "IAP"
    .end annotation

    .prologue
    .line 805
    iget-boolean v0, p0, Lcom/google/vr/ndk/base/DaydreamApi;->closed:Z

    if-eqz v0, :cond_0

    .line 817
    :goto_0
    return-void

    .line 809
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/vr/ndk/base/DaydreamApi;->closed:Z

    .line 810
    new-instance v0, Lcom/google/vr/ndk/base/DaydreamApi$12;

    invoke-direct {v0, p0}, Lcom/google/vr/ndk/base/DaydreamApi$12;-><init>(Lcom/google/vr/ndk/base/DaydreamApi;)V

    invoke-direct {p0, v0}, Lcom/google/vr/ndk/base/DaydreamApi;->runWhenServiceConnected(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public exitFromVr(Landroid/app/Activity;ILandroid/content/Intent;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "requestCode"    # I
    .param p3, "data"    # Landroid/content/Intent;
    .annotation build Lcom/google/vr/cardboard/annotations/UsedByReflection;
        value = "IAP"
    .end annotation

    .prologue
    .line 613
    invoke-direct {p0}, Lcom/google/vr/ndk/base/DaydreamApi;->checkNotClosed()V

    .line 615
    if-nez p3, :cond_0

    .line 616
    new-instance p3, Landroid/content/Intent;

    .end local p3    # "data":Landroid/content/Intent;
    invoke-direct {p3}, Landroid/content/Intent;-><init>()V

    .line 618
    .restart local p3    # "data":Landroid/content/Intent;
    :cond_0
    const/high16 v2, 0x40000000    # 2.0f

    .line 619
    invoke-virtual {p1, p2, p3, v2}, Landroid/app/Activity;->createPendingResult(ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 621
    .local v1, "pendingVrExitIntent":Landroid/app/PendingIntent;
    new-instance v0, Lcom/google/vr/ndk/base/DaydreamApi$7;

    invoke-direct {v0, p0, v1}, Lcom/google/vr/ndk/base/DaydreamApi$7;-><init>(Lcom/google/vr/ndk/base/DaydreamApi;Landroid/app/PendingIntent;)V

    .line 635
    .local v0, "onFailureRunnable":Ljava/lang/Runnable;
    new-instance v2, Lcom/google/vr/ndk/base/DaydreamApi$8;

    invoke-direct {v2, p0, v0, v1}, Lcom/google/vr/ndk/base/DaydreamApi$8;-><init>(Lcom/google/vr/ndk/base/DaydreamApi;Ljava/lang/Runnable;Landroid/app/PendingIntent;)V

    invoke-direct {p0, v2}, Lcom/google/vr/ndk/base/DaydreamApi;->runWhenServiceConnected(Ljava/lang/Runnable;)V

    .line 655
    return-void
.end method

.method public getCurrentViewerType()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 178
    invoke-direct {p0}, Lcom/google/vr/ndk/base/DaydreamApi;->checkNotClosed()V

    .line 181
    iget-object v3, p0, Lcom/google/vr/ndk/base/DaydreamApi;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/google/vr/ndk/base/DaydreamApi;->isDaydreamReadyPlatform(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 194
    :goto_0
    return v2

    .line 185
    :cond_0
    iget-object v3, p0, Lcom/google/vr/ndk/base/DaydreamApi;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/google/vr/cardboard/VrParamsProviderFactory;->create(Landroid/content/Context;)Lcom/google/vr/cardboard/VrParamsProvider;

    move-result-object v1

    .line 187
    .local v1, "provider":Lcom/google/vr/cardboard/VrParamsProvider;
    :try_start_0
    invoke-interface {v1}, Lcom/google/vr/cardboard/VrParamsProvider;->readDeviceParams()Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 188
    .local v0, "params":Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;
    if-nez v0, :cond_1

    .line 196
    invoke-interface {v1}, Lcom/google/vr/cardboard/VrParamsProvider;->close()V

    goto :goto_0

    .line 191
    :cond_1
    :try_start_1
    invoke-static {v0}, Lcom/google/vr/ndk/base/DaydreamUtils;->isDaydreamViewer(Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-eqz v3, :cond_2

    .line 192
    const/4 v2, 0x1

    .line 196
    invoke-interface {v1}, Lcom/google/vr/cardboard/VrParamsProvider;->close()V

    goto :goto_0

    :cond_2
    invoke-interface {v1}, Lcom/google/vr/cardboard/VrParamsProvider;->close()V

    goto :goto_0

    .end local v0    # "params":Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;
    :catchall_0
    move-exception v2

    invoke-interface {v1}, Lcom/google/vr/cardboard/VrParamsProvider;->close()V

    throw v2
.end method

.method public handleInsertionIntoHeadset([B)V
    .locals 1
    .param p1, "deviceParams"    # [B

    .prologue
    .line 722
    new-instance v0, Lcom/google/vr/ndk/base/DaydreamApi$10;

    invoke-direct {v0, p0, p1}, Lcom/google/vr/ndk/base/DaydreamApi$10;-><init>(Lcom/google/vr/ndk/base/DaydreamApi;[B)V

    invoke-direct {p0, v0}, Lcom/google/vr/ndk/base/DaydreamApi;->runWhenServiceConnected(Ljava/lang/Runnable;)V

    .line 750
    return-void
.end method

.method public handleRemovalFromHeadset()V
    .locals 1

    .prologue
    .line 764
    new-instance v0, Lcom/google/vr/ndk/base/DaydreamApi$11;

    invoke-direct {v0, p0}, Lcom/google/vr/ndk/base/DaydreamApi$11;-><init>(Lcom/google/vr/ndk/base/DaydreamApi;)V

    invoke-direct {p0, v0}, Lcom/google/vr/ndk/base/DaydreamApi;->runWhenServiceConnected(Ljava/lang/Runnable;)V

    .line 792
    return-void
.end method

.method public launchInVr(Landroid/app/PendingIntent;)V
    .locals 1
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;
    .annotation build Lcom/google/vr/cardboard/annotations/UsedByReflection;
        value = "IAP"
    .end annotation

    .prologue
    .line 349
    invoke-direct {p0}, Lcom/google/vr/ndk/base/DaydreamApi;->checkNotClosed()V

    .line 350
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/vr/ndk/base/DaydreamApi;->launchInVr(Landroid/app/PendingIntent;Landroid/content/ComponentName;)V

    .line 351
    return-void
.end method

.method public launchInVr(Landroid/content/ComponentName;)V
    .locals 4
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .annotation build Lcom/google/vr/cardboard/annotations/UsedByReflection;
        value = "IAP"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/ActivityNotFoundException;
        }
    .end annotation

    .prologue
    .line 487
    invoke-direct {p0}, Lcom/google/vr/ndk/base/DaydreamApi;->checkNotClosed()V

    .line 488
    if-nez p1, :cond_0

    .line 489
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Null argument \'componentName\' passed to launchInVr"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 492
    :cond_0
    invoke-static {p1}, Lcom/google/vr/ndk/base/DaydreamApi;->createVrIntent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    .line 493
    .local v0, "i":Landroid/content/Intent;
    invoke-direct {p0, v0}, Lcom/google/vr/ndk/base/DaydreamApi;->checkIntent(Landroid/content/Intent;)V

    .line 494
    iget-object v1, p0, Lcom/google/vr/ndk/base/DaydreamApi;->context:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x40000000    # 2.0f

    .line 495
    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    .line 494
    invoke-direct {p0, v1, v2}, Lcom/google/vr/ndk/base/DaydreamApi;->launchInVr(Landroid/app/PendingIntent;Landroid/content/ComponentName;)V

    .line 496
    return-void
.end method

.method public launchInVr(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation build Lcom/google/vr/cardboard/annotations/UsedByReflection;
        value = "IAP"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/ActivityNotFoundException;
        }
    .end annotation

    .prologue
    .line 460
    invoke-direct {p0}, Lcom/google/vr/ndk/base/DaydreamApi;->checkNotClosed()V

    .line 461
    if-nez p1, :cond_0

    .line 462
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null argument \'intent\' passed to launchInVr"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 465
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/vr/ndk/base/DaydreamApi;->checkIntent(Landroid/content/Intent;)V

    .line 466
    iget-object v0, p0, Lcom/google/vr/ndk/base/DaydreamApi;->context:Landroid/content/Context;

    const/4 v1, 0x0

    const/high16 v2, 0x48000000    # 131072.0f

    .line 467
    invoke-static {v0, v1, p1, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 469
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 466
    invoke-direct {p0, v0, v1}, Lcom/google/vr/ndk/base/DaydreamApi;->launchInVr(Landroid/app/PendingIntent;Landroid/content/ComponentName;)V

    .line 470
    return-void
.end method

.method public launchInVrForResult(Landroid/app/Activity;Landroid/app/PendingIntent;I)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p3, "requestCode"    # I
    .annotation build Lcom/google/vr/cardboard/annotations/UsedByReflection;
        value = "IAP"
    .end annotation

    .prologue
    .line 514
    invoke-direct {p0}, Lcom/google/vr/ndk/base/DaydreamApi;->checkNotClosed()V

    .line 515
    new-instance v0, Lcom/google/vr/ndk/base/DaydreamApi$6;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/vr/ndk/base/DaydreamApi$6;-><init>(Lcom/google/vr/ndk/base/DaydreamApi;Landroid/app/Activity;Landroid/app/PendingIntent;I)V

    .line 533
    .local v0, "transitionCallbacks":Lcom/google/vr/vrcore/common/api/ITransitionCallbacks;
    invoke-direct {p0, v0}, Lcom/google/vr/ndk/base/DaydreamApi;->launchTransitionCallbackInVr(Lcom/google/vr/vrcore/common/api/ITransitionCallbacks;)V

    .line 534
    return-void
.end method

.method public launchVrHomescreen()V
    .locals 1
    .annotation build Lcom/google/vr/cardboard/annotations/UsedByReflection;
        value = "IAP"
    .end annotation

    .prologue
    .line 417
    invoke-direct {p0}, Lcom/google/vr/ndk/base/DaydreamApi;->checkNotClosed()V

    .line 418
    new-instance v0, Lcom/google/vr/ndk/base/DaydreamApi$5;

    invoke-direct {v0, p0}, Lcom/google/vr/ndk/base/DaydreamApi$5;-><init>(Lcom/google/vr/ndk/base/DaydreamApi;)V

    invoke-direct {p0, v0}, Lcom/google/vr/ndk/base/DaydreamApi;->runWhenServiceConnected(Ljava/lang/Runnable;)V

    .line 442
    return-void
.end method

.method public registerDaydreamIntent(Landroid/app/PendingIntent;)V
    .locals 1
    .param p1, "intent"    # Landroid/app/PendingIntent;

    .prologue
    .line 217
    invoke-direct {p0}, Lcom/google/vr/ndk/base/DaydreamApi;->checkNotClosed()V

    .line 218
    new-instance v0, Lcom/google/vr/ndk/base/DaydreamApi$2;

    invoke-direct {v0, p0, p1}, Lcom/google/vr/ndk/base/DaydreamApi$2;-><init>(Lcom/google/vr/ndk/base/DaydreamApi;Landroid/app/PendingIntent;)V

    invoke-direct {p0, v0}, Lcom/google/vr/ndk/base/DaydreamApi;->runWhenServiceConnected(Ljava/lang/Runnable;)V

    .line 237
    return-void
.end method

.method public setInhibitSystemButtons(Landroid/content/ComponentName;Z)V
    .locals 1
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "shouldInhibit"    # Z

    .prologue
    .line 674
    invoke-direct {p0}, Lcom/google/vr/ndk/base/DaydreamApi;->checkNotClosed()V

    .line 675
    new-instance v0, Lcom/google/vr/ndk/base/DaydreamApi$9;

    invoke-direct {v0, p0, p2, p1}, Lcom/google/vr/ndk/base/DaydreamApi$9;-><init>(Lcom/google/vr/ndk/base/DaydreamApi;ZLandroid/content/ComponentName;)V

    invoke-direct {p0, v0}, Lcom/google/vr/ndk/base/DaydreamApi;->runWhenServiceConnected(Ljava/lang/Runnable;)V

    .line 689
    return-void
.end method

.method public unregisterDaydreamIntent()V
    .locals 1

    .prologue
    .line 247
    invoke-direct {p0}, Lcom/google/vr/ndk/base/DaydreamApi;->checkNotClosed()V

    .line 248
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/vr/ndk/base/DaydreamApi;->registerDaydreamIntent(Landroid/app/PendingIntent;)V

    .line 249
    return-void
.end method
