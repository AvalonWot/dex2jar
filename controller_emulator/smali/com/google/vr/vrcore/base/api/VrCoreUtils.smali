.class public final Lcom/google/vr/vrcore/base/api/VrCoreUtils;
.super Ljava/lang/Object;
.source "VrCoreUtils.java"


# annotations
.annotation build Lcom/google/vr/cardboard/annotations/UsedByNative;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/vrcore/base/api/VrCoreUtils$ConnectionResult;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/google/vr/vrcore/base/api/VrCoreUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/vr/vrcore/base/api/VrCoreUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkVrCoreAvailability(Landroid/content/Context;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 92
    invoke-static {p0}, Lcom/google/vr/vrcore/base/api/VrCoreUtils;->checkVrCoreAvailabilityImpl(Landroid/content/Context;)I

    move-result v0

    .line 96
    .local v0, "result":I
    return v0
.end method

.method private static checkVrCoreAvailabilityImpl(Landroid/content/Context;)I
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 250
    const-string v6, "com.google.vr.vrcore"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 298
    :cond_0
    :goto_0
    return v4

    .line 259
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string v7, "com.google.vr.vrcore"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 260
    .local v0, "info":Landroid/content/pm/ApplicationInfo;
    iget-boolean v6, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v6, :cond_2

    .line 261
    const/4 v4, 0x2

    goto :goto_0

    .line 263
    :cond_2
    invoke-static {p0}, Lcom/google/vr/vrcore/base/api/VrCoreUtils;->verifyRemotePackageSignature(Landroid/content/Context;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-nez v5, :cond_0

    .line 264
    const/16 v4, 0x9

    goto :goto_0

    .line 267
    .end local v0    # "info":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v4

    .line 274
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    if-lt v4, v6, :cond_4

    .line 276
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/pm/PackageInstaller;->getAllSessions()Ljava/util/List;

    move-result-object v1

    .line 277
    .local v1, "installerSessions":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInstaller$SessionInfo;

    .line 278
    .local v3, "session":Landroid/content/pm/PackageInstaller$SessionInfo;
    const-string v6, "com.google.vr.vrcore"

    invoke-virtual {v3}, Landroid/content/pm/PackageInstaller$SessionInfo;->getAppPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    move v4, v5

    .line 279
    goto :goto_0

    .line 285
    .end local v1    # "installerSessions":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    .end local v3    # "session":Landroid/content/pm/PackageInstaller$SessionInfo;
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 287
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    :try_start_1
    const-string v4, "com.google.vr.vrcore"

    const/16 v6, 0x2000

    .line 288
    invoke-virtual {v2, v4, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 290
    .restart local v0    # "info":Landroid/content/pm/ApplicationInfo;
    iget-boolean v4, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v4, :cond_5

    move v4, v5

    .line 291
    goto :goto_0

    .line 293
    .end local v0    # "info":Landroid/content/pm/ApplicationInfo;
    :catch_1
    move-exception v4

    .line 298
    :cond_5
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public static getConnectionResultString(I)Ljava/lang/String;
    .locals 2
    .param p0, "result"    # I

    .prologue
    .line 216
    packed-switch p0, :pswitch_data_0

    .line 236
    const/16 v0, 0x26

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Invalid connection result: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 218
    :pswitch_0
    const-string v0, "VR Service present"

    goto :goto_0

    .line 220
    :pswitch_1
    const-string v0, "VR Service missing"

    goto :goto_0

    .line 222
    :pswitch_2
    const-string v0, "VR Service disabled"

    goto :goto_0

    .line 224
    :pswitch_3
    const-string v0, "VR Service updating"

    goto :goto_0

    .line 226
    :pswitch_4
    const-string v0, "VR Service obsolete"

    goto :goto_0

    .line 228
    :pswitch_5
    const-string v0, "VR Service not connected"

    goto :goto_0

    .line 230
    :pswitch_6
    const-string v0, "No permission to do operation"

    goto :goto_0

    .line 232
    :pswitch_7
    const-string v0, "This operation is not supported on this device"

    goto :goto_0

    .line 234
    :pswitch_8
    const-string v0, "An unknown failure occurred"

    goto :goto_0

    .line 216
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public static getVrCoreClientApiVersion(Landroid/content/Context;)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Lcom/google/vr/cardboard/annotations/UsedByNative;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/vrcore/base/api/VrCoreNotAvailableException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 119
    .line 121
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.google.vr.vrcore"

    const/16 v5, 0x80

    .line 122
    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 123
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    iget-boolean v3, v1, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v3, :cond_1

    .line 124
    iget-object v3, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v3, :cond_0

    .line 125
    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "com.google.vr.vrcore.ClientApiVersion"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 124
    :cond_0
    return v2

    .line 128
    :cond_1
    new-instance v2, Lcom/google/vr/vrcore/base/api/VrCoreNotAvailableException;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Lcom/google/vr/vrcore/base/api/VrCoreNotAvailableException;-><init>(I)V

    throw v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v0

    .line 131
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v2, Lcom/google/vr/vrcore/base/api/VrCoreNotAvailableException;

    invoke-static {p0}, Lcom/google/vr/vrcore/base/api/VrCoreUtils;->checkVrCoreAvailability(Landroid/content/Context;)I

    move-result v3

    invoke-direct {v2, v3}, Lcom/google/vr/vrcore/base/api/VrCoreNotAvailableException;-><init>(I)V

    throw v2
.end method

.method public static getVrCoreSdkLibraryVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/vrcore/base/api/VrCoreNotAvailableException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x4

    .line 175
    const/4 v1, 0x0

    .line 179
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.google.vr.vrcore"

    const/16 v5, 0x80

    .line 180
    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 186
    if-nez v1, :cond_0

    .line 187
    new-instance v3, Lcom/google/vr/vrcore/base/api/VrCoreNotAvailableException;

    const/16 v4, 0x8

    invoke-direct {v3, v4}, Lcom/google/vr/vrcore/base/api/VrCoreNotAvailableException;-><init>(I)V

    throw v3

    .line 181
    :catch_0
    move-exception v0

    .line 182
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v3, Lcom/google/vr/vrcore/base/api/VrCoreNotAvailableException;

    invoke-static {p0}, Lcom/google/vr/vrcore/base/api/VrCoreUtils;->checkVrCoreAvailability(Landroid/content/Context;)I

    move-result v4

    invoke-direct {v3, v4}, Lcom/google/vr/vrcore/base/api/VrCoreNotAvailableException;-><init>(I)V

    throw v3

    .line 190
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    iget-boolean v3, v1, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v3, :cond_1

    .line 191
    new-instance v3, Lcom/google/vr/vrcore/base/api/VrCoreNotAvailableException;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Lcom/google/vr/vrcore/base/api/VrCoreNotAvailableException;-><init>(I)V

    throw v3

    .line 195
    :cond_1
    iget-object v3, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-nez v3, :cond_2

    .line 196
    new-instance v3, Lcom/google/vr/vrcore/base/api/VrCoreNotAvailableException;

    invoke-direct {v3, v6}, Lcom/google/vr/vrcore/base/api/VrCoreNotAvailableException;-><init>(I)V

    throw v3

    .line 199
    :cond_2
    iget-object v3, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "com.google.vr.vrcore.SdkLibraryVersion"

    const-string v5, ""

    .line 200
    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 201
    .local v2, "versionString":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 202
    new-instance v3, Lcom/google/vr/vrcore/base/api/VrCoreNotAvailableException;

    invoke-direct {v3, v6}, Lcom/google/vr/vrcore/base/api/VrCoreNotAvailableException;-><init>(I)V

    throw v3

    .line 206
    :cond_3
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static getVrCoreVersionCode(Landroid/content/Context;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/vrcore/base/api/VrCoreNotAvailableException;
        }
    .end annotation

    .prologue
    .line 144
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.google.vr.vrcore"

    const/4 v3, 0x0

    .line 145
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    return v1

    .line 147
    :catch_0
    move-exception v0

    .line 148
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v1, Lcom/google/vr/vrcore/base/api/VrCoreUtils;->TAG:Ljava/lang/String;

    const-string v2, "Could not find VrCore package"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 149
    new-instance v1, Lcom/google/vr/vrcore/base/api/VrCoreNotAvailableException;

    invoke-static {p0}, Lcom/google/vr/vrcore/base/api/VrCoreUtils;->checkVrCoreAvailability(Landroid/content/Context;)I

    move-result v2

    invoke-direct {v1, v2}, Lcom/google/vr/vrcore/base/api/VrCoreNotAvailableException;-><init>(I)V

    throw v1
.end method

.method public static getVrCoreVersionName(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/vrcore/base/api/VrCoreNotAvailableException;
        }
    .end annotation

    .prologue
    .line 155
    .line 156
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.google.vr.vrcore"

    const/4 v3, 0x0

    .line 157
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    return-object v1

    .line 159
    :catch_0
    move-exception v0

    .line 160
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v1, Lcom/google/vr/vrcore/base/api/VrCoreUtils;->TAG:Ljava/lang/String;

    const-string v2, "Could not find VrCore package"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 161
    new-instance v1, Lcom/google/vr/vrcore/base/api/VrCoreNotAvailableException;

    invoke-static {p0}, Lcom/google/vr/vrcore/base/api/VrCoreUtils;->checkVrCoreAvailability(Landroid/content/Context;)I

    move-result v2

    invoke-direct {v1, v2}, Lcom/google/vr/vrcore/base/api/VrCoreNotAvailableException;-><init>(I)V

    throw v1
.end method

.method public static isVrCoreAvailable(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 106
    invoke-static {p0}, Lcom/google/vr/vrcore/base/api/VrCoreUtils;->checkVrCoreAvailability(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isVrCoreComponent(Landroid/content/ComponentName;)Z
    .locals 1
    .param p0, "componentName"    # Landroid/content/ComponentName;

    .prologue
    .line 246
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/vr/vrcore/base/api/VrCoreUtils;->isVrCorePackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isVrCorePackage(Ljava/lang/String;)Z
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 241
    const-string v0, "com.google.vr.vrcore"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static verifyRemotePackageSignature(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 303
    .line 304
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.google.vr.vrcore"

    const/16 v5, 0x40

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 306
    .local v0, "packageInfo":Landroid/content/pm/PackageInfo;
    new-array v3, v1, [Landroid/content/pm/Signature;

    sget-object v4, Lcom/google/vr/vrcore/base/api/SignatureUtils;->VRCORE_RELEASE_SIGNATURE:Landroid/content/pm/Signature;

    aput-object v4, v3, v2

    invoke-static {v0, v3}, Lcom/google/vr/vrcore/base/api/SignatureUtils;->verifySignature(Landroid/content/pm/PackageInfo;[Landroid/content/pm/Signature;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 313
    :goto_0
    return v1

    .line 310
    :cond_0
    invoke-static {p0}, Lcom/google/vr/vrcore/base/api/BuildUtils;->isDebugBuild(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 311
    new-array v1, v1, [Landroid/content/pm/Signature;

    sget-object v3, Lcom/google/vr/vrcore/base/api/SignatureUtils;->VRCORE_DEBUG_SIGNATURE:Landroid/content/pm/Signature;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/google/vr/vrcore/base/api/SignatureUtils;->verifySignature(Landroid/content/pm/PackageInfo;[Landroid/content/pm/Signature;)Z

    move-result v1

    goto :goto_0

    :cond_1
    move v1, v2

    .line 313
    goto :goto_0
.end method
