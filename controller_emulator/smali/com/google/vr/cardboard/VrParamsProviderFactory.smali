.class public final Lcom/google/vr/cardboard/VrParamsProviderFactory;
.super Ljava/lang/Object;
.source "VrParamsProviderFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/cardboard/VrParamsProviderFactory$ContentProviderClientHandle;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;

.field private static providerForTesting:Lcom/google/vr/cardboard/VrParamsProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/google/vr/cardboard/VrParamsProviderFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/vr/cardboard/VrParamsProviderFactory;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Landroid/content/Context;)Lcom/google/vr/cardboard/VrParamsProvider;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    sget-object v1, Lcom/google/vr/cardboard/VrParamsProviderFactory;->providerForTesting:Lcom/google/vr/cardboard/VrParamsProvider;

    if-eqz v1, :cond_0

    .line 38
    sget-object v1, Lcom/google/vr/cardboard/VrParamsProviderFactory;->providerForTesting:Lcom/google/vr/cardboard/VrParamsProvider;

    .line 51
    :goto_0
    return-object v1

    .line 42
    :cond_0
    invoke-static {p0}, Lcom/google/vr/cardboard/VrParamsProviderFactory;->tryToGetContentProviderClientHandle(Landroid/content/Context;)Lcom/google/vr/cardboard/VrParamsProviderFactory$ContentProviderClientHandle;

    move-result-object v0

    .line 43
    .local v0, "handle":Lcom/google/vr/cardboard/VrParamsProviderFactory$ContentProviderClientHandle;
    if-eqz v0, :cond_1

    .line 44
    new-instance v1, Lcom/google/vr/cardboard/ContentProviderVrParamsProvider;

    iget-object v2, v0, Lcom/google/vr/cardboard/VrParamsProviderFactory$ContentProviderClientHandle;->client:Landroid/content/ContentProviderClient;

    iget-object v3, v0, Lcom/google/vr/cardboard/VrParamsProviderFactory$ContentProviderClientHandle;->authority:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/google/vr/cardboard/ContentProviderVrParamsProvider;-><init>(Landroid/content/ContentProviderClient;Ljava/lang/String;)V

    goto :goto_0

    .line 51
    :cond_1
    new-instance v1, Lcom/google/vr/cardboard/LegacyVrParamsProvider;

    invoke-direct {v1}, Lcom/google/vr/cardboard/LegacyVrParamsProvider;-><init>()V

    goto :goto_0
.end method

.method private static getValidContentProviderAuthorities(Landroid/content/Context;)Ljava/util/List;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 113
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x13

    if-ge v6, v7, :cond_1

    .line 138
    :cond_0
    return-object v5

    .line 121
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 122
    .local v0, "pm":Landroid/content/pm/PackageManager;
    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.content.action.VR_SETTINGS_PROVIDER"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 123
    .local v2, "providerIntent":Landroid/content/Intent;
    const/4 v6, 0x0

    invoke-virtual {v0, v2, v6}, Landroid/content/pm/PackageManager;->queryIntentContentProviders(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 125
    .local v4, "providerResolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 129
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 132
    .local v5, "validAuthorities":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 133
    .local v3, "providerResolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v1, v3, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    .line 134
    .local v1, "providerInfo":Landroid/content/pm/ProviderInfo;
    iget-object v7, v1, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-static {v7}, Lcom/google/vr/cardboard/PackageUtils;->isGooglePackage(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 135
    iget-object v7, v1, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static isContentProviderAvailable(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    .line 103
    sget-object v2, Lcom/google/vr/cardboard/VrParamsProviderFactory;->providerForTesting:Lcom/google/vr/cardboard/VrParamsProvider;

    if-eqz v2, :cond_1

    sget-object v2, Lcom/google/vr/cardboard/VrParamsProviderFactory;->providerForTesting:Lcom/google/vr/cardboard/VrParamsProvider;

    instance-of v2, v2, Lcom/google/vr/cardboard/ContentProviderVrParamsProvider;

    if-eqz v2, :cond_1

    .line 108
    :cond_0
    :goto_0
    return v1

    .line 107
    :cond_1
    invoke-static {p0}, Lcom/google/vr/cardboard/VrParamsProviderFactory;->getValidContentProviderAuthorities(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 108
    .local v0, "providerAuthorities":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static setProviderForTesting(Lcom/google/vr/cardboard/VrParamsProvider;)V
    .locals 0
    .param p0, "provider"    # Lcom/google/vr/cardboard/VrParamsProvider;

    .prologue
    .line 149
    sput-object p0, Lcom/google/vr/cardboard/VrParamsProviderFactory;->providerForTesting:Lcom/google/vr/cardboard/VrParamsProvider;

    .line 150
    return-void
.end method

.method public static tryToGetContentProviderClientHandle(Landroid/content/Context;)Lcom/google/vr/cardboard/VrParamsProviderFactory$ContentProviderClientHandle;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 70
    invoke-static {p0}, Lcom/google/vr/cardboard/VrParamsProviderFactory;->getValidContentProviderAuthorities(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    .line 71
    .local v2, "providerAuthorities":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v2, :cond_1

    .line 72
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 75
    .local v0, "authority":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/ContentResolver;->acquireContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v1

    .line 76
    .local v1, "client":Landroid/content/ContentProviderClient;
    if-eqz v1, :cond_0

    .line 86
    new-instance v3, Lcom/google/vr/cardboard/VrParamsProviderFactory$ContentProviderClientHandle;

    invoke-direct {v3, v1, v0}, Lcom/google/vr/cardboard/VrParamsProviderFactory$ContentProviderClientHandle;-><init>(Landroid/content/ContentProviderClient;Ljava/lang/String;)V

    .line 90
    .end local v0    # "authority":Ljava/lang/String;
    .end local v1    # "client":Landroid/content/ContentProviderClient;
    :goto_0
    return-object v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method
