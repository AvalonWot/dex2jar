.class public Lcom/google/vr/inputcompanion/PrefUtils;
.super Ljava/lang/Object;
.source "PrefUtils.java"


# static fields
.field static final SP_KEY_ONBOARDING_SEEN:Ljava/lang/String; = "SP_KEY_ONBOARDING_SEEN"

.field static sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method

.method private static getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    sget-object v0, Lcom/google/vr/inputcompanion/PrefUtils;->sharedPreferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 24
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/google/vr/inputcompanion/PrefUtils;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 26
    :cond_0
    sget-object v0, Lcom/google/vr/inputcompanion/PrefUtils;->sharedPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public static hasSeenOnboarding(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    invoke-static {p0}, Lcom/google/vr/inputcompanion/PrefUtils;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "SP_KEY_ONBOARDING_SEEN"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static setHasSeenOnboarding(Landroid/content/Context;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "seen"    # Z

    .prologue
    .line 40
    invoke-static {p0}, Lcom/google/vr/inputcompanion/PrefUtils;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "SP_KEY_ONBOARDING_SEEN"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 41
    return-void
.end method
