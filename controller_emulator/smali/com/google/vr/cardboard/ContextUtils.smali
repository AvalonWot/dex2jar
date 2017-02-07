.class public abstract Lcom/google/vr/cardboard/ContextUtils;
.super Ljava/lang/Object;
.source "ContextUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canGetActivity(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 58
    invoke-static {p0}, Lcom/google/vr/cardboard/ContextUtils;->getActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getActivity(Landroid/content/Context;)Landroid/app/Activity;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 44
    if-nez p0, :cond_0

    move-object p0, v0

    .line 53
    .end local p0    # "context":Landroid/content/Context;
    :goto_0
    return-object p0

    .line 47
    .restart local p0    # "context":Landroid/content/Context;
    :cond_0
    instance-of v1, p0, Landroid/app/Activity;

    if-eqz v1, :cond_1

    .line 48
    check-cast p0, Landroid/app/Activity;

    goto :goto_0

    .line 50
    :cond_1
    instance-of v1, p0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_2

    .line 51
    check-cast p0, Landroid/content/ContextWrapper;

    .end local p0    # "context":Landroid/content/Context;
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/vr/cardboard/ContextUtils;->getActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p0

    goto :goto_0

    .restart local p0    # "context":Landroid/content/Context;
    :cond_2
    move-object p0, v0

    .line 53
    goto :goto_0
.end method

.method public static getComponentName(Landroid/content/Context;)Landroid/content/ComponentName;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 69
    instance-of v1, p0, Lcom/google/vr/cardboard/VrContextWrapper;

    if-eqz v1, :cond_0

    .line 70
    check-cast p0, Lcom/google/vr/cardboard/VrContextWrapper;

    .end local p0    # "context":Landroid/content/Context;
    invoke-virtual {p0}, Lcom/google/vr/cardboard/VrContextWrapper;->getVrComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 76
    .local v0, "activity":Landroid/app/Activity;
    .restart local p0    # "context":Landroid/content/Context;
    :goto_0
    return-object v1

    .line 72
    .end local v0    # "activity":Landroid/app/Activity;
    :cond_0
    invoke-static {p0}, Lcom/google/vr/cardboard/ContextUtils;->getActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    .line 73
    .restart local v0    # "activity":Landroid/app/Activity;
    if-eqz v0, :cond_1

    .line 74
    invoke-virtual {v0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    goto :goto_0

    .line 76
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
