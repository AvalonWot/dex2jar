.class public final Lcom/google/vr/sdk/base/AndroidCompat;
.super Ljava/lang/Object;
.source "AndroidCompat.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setSustainedPerformanceMode(Landroid/app/Activity;Z)V
    .locals 0
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "enabled"    # Z

    .prologue
    .line 60
    invoke-static {p0, p1}, Lcom/google/vr/cardboard/AndroidNCompat;->setSustainedPerformanceMode(Landroid/app/Activity;Z)Z

    .line 61
    return-void
.end method

.method public static setVrModeEnabled(Landroid/app/Activity;Z)Z
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "enabled"    # Z

    .prologue
    .line 29
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/google/vr/cardboard/AndroidNCompat;->setVrModeEnabled(Landroid/app/Activity;ZI)Z

    move-result v0

    return v0
.end method

.method public static trySetVrModeEnabled(Landroid/app/Activity;Z)Z
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "enabled"    # Z

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/google/vr/cardboard/AndroidNCompat;->setVrModeEnabled(Landroid/app/Activity;ZI)Z

    move-result v0

    return v0
.end method
