.class public Lcom/google/vr/cardboard/UiUtils;
.super Ljava/lang/Object;
.source "UiUtils.java"


# static fields
.field private static final CARDBOARD_CONFIGURE_ACTION:Ljava/lang/String; = "com.google.vrtoolkit.cardboard.CONFIGURE"

.field private static final CARDBOARD_WEBSITE:Ljava/lang/String; = "https://google.com/cardboard/cfg"

.field private static final DAYDREAM_HELP_CENTER_LINK:Ljava/lang/String; = "https://support.google.com/daydream?p=daydream_help_menu"

.field public static dialogBuilderForTesting:Landroid/app/AlertDialog$Builder;

.field public static permissionUtils:Lcom/google/vr/cardboard/StoragePermissionUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Lcom/google/vr/cardboard/StoragePermissionUtils;

    invoke-direct {v0}, Lcom/google/vr/cardboard/StoragePermissionUtils;-><init>()V

    sput-object v0, Lcom/google/vr/cardboard/UiUtils;->permissionUtils:Lcom/google/vr/cardboard/StoragePermissionUtils;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createAlertDialogBuilder(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 217
    sget-object v0, Lcom/google/vr/cardboard/UiUtils;->dialogBuilderForTesting:Landroid/app/AlertDialog$Builder;

    if-eqz v0, :cond_0

    .line 218
    sget-object v0, Lcom/google/vr/cardboard/UiUtils;->dialogBuilderForTesting:Landroid/app/AlertDialog$Builder;

    .line 220
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget v1, Lcom/google/vr/cardboard/R$style;->GvrDialogTheme:I

    invoke-direct {v0, p0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method public static launchOrInstallCardboard(Landroid/content/Context;)V
    .locals 12
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v11, 0x0

    .line 41
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 42
    .local v5, "pm":Landroid/content/pm/PackageManager;
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 43
    .local v8, "settingsIntent":Landroid/content/Intent;
    const-string v9, "com.google.vrtoolkit.cardboard.CONFIGURE"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 48
    invoke-virtual {v5, v8, v11}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v7

    .line 49
    .local v7, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 50
    .local v0, "googleIntentsWithHighestPriority":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    const/4 v1, 0x0

    .line 51
    .local v1, "highestGoogleIntentPriority":Ljava/lang/Integer;
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 52
    .local v2, "info":Landroid/content/pm/ResolveInfo;
    iget-object v10, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v10, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 53
    .local v4, "pkgName":Ljava/lang/String;
    invoke-static {v4}, Lcom/google/vr/cardboard/PackageUtils;->isGooglePackage(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 61
    iget v6, v2, Landroid/content/pm/ResolveInfo;->priority:I

    .line 62
    .local v6, "priority":I
    invoke-static {p0, v4}, Lcom/google/vr/cardboard/PackageUtils;->isSystemPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 63
    add-int/lit8 v6, v6, 0x1

    .line 66
    :cond_1
    if-nez v1, :cond_3

    .line 67
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 77
    :cond_2
    :goto_1
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v8}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 78
    .local v3, "intent":Landroid/content/Intent;
    iget-object v10, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4, v10}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 79
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 68
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_3
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-le v6, v10, :cond_4

    .line 70
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 71
    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_1

    .line 72
    :cond_4
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-ge v6, v10, :cond_2

    goto :goto_0

    .line 86
    .end local v2    # "info":Landroid/content/pm/ResolveInfo;
    .end local v4    # "pkgName":Ljava/lang/String;
    .end local v6    # "priority":I
    :cond_5
    invoke-static {p0}, Lcom/google/vr/cardboard/VrParamsProviderFactory;->isContentProviderAvailable(Landroid/content/Context;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 87
    sget-object v9, Lcom/google/vr/cardboard/UiUtils;->permissionUtils:Lcom/google/vr/cardboard/StoragePermissionUtils;

    invoke-virtual {v9, p0}, Lcom/google/vr/cardboard/StoragePermissionUtils;->requestStoragePermission(Landroid/content/Context;)V

    .line 90
    :cond_6
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 93
    invoke-static {p0}, Lcom/google/vr/cardboard/UiUtils;->showInstallDialog(Landroid/content/Context;)V

    .line 107
    :goto_2
    return-void

    .line 101
    :cond_7
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_8

    .line 102
    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    move-object v3, v9

    .line 105
    .restart local v3    # "intent":Landroid/content/Intent;
    :goto_3
    invoke-virtual {p0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    .end local v3    # "intent":Landroid/content/Intent;
    :cond_8
    move-object v3, v8

    .line 103
    goto :goto_3
.end method

.method public static showDaydreamHelpCenterDialog(Landroid/content/Context;IILjava/lang/Runnable;)Landroid/app/AlertDialog;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dialogTitleResId"    # I
    .param p2, "dialogMessageResId"    # I
    .param p3, "onCancelledCallback"    # Ljava/lang/Runnable;

    .prologue
    const/4 v6, 0x0

    .line 123
    new-instance v2, Lcom/google/vr/cardboard/UiUtils$1;

    invoke-direct {v2, p0}, Lcom/google/vr/cardboard/UiUtils$1;-><init>(Landroid/content/Context;)V

    .line 137
    .local v2, "positiveListener":Landroid/content/DialogInterface$OnClickListener;
    invoke-static {p0}, Lcom/google/vr/cardboard/UiUtils;->createAlertDialogBuilder(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 139
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 140
    invoke-virtual {v3, p2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 141
    invoke-virtual {v3, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    sget v4, Lcom/google/vr/cardboard/R$string;->dialog_button_open_help_center:I

    .line 142
    invoke-virtual {v3, v4, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    sget v4, Lcom/google/vr/cardboard/R$string;->dialog_button_got_it:I

    new-instance v5, Lcom/google/vr/cardboard/UiUtils$2;

    invoke-direct {v5}, Lcom/google/vr/cardboard/UiUtils$2;-><init>()V

    .line 143
    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 151
    if-eqz p3, :cond_0

    .line 152
    new-instance v3, Lcom/google/vr/cardboard/UiUtils$3;

    invoke-direct {v3, p3}, Lcom/google/vr/cardboard/UiUtils$3;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 160
    :cond_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 161
    .local v1, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v1, v6}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 162
    invoke-static {p0, v1}, Lcom/google/vr/cardboard/UiUtils;->showImmersiveDialog(Landroid/content/Context;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    move-result-object v3

    return-object v3
.end method

.method private static showImmersiveDialog(Landroid/content/Context;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dialog"    # Landroid/app/AlertDialog;

    .prologue
    const/16 v3, 0x8

    .line 192
    .line 193
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 194
    invoke-virtual {v1, v3, v3}, Landroid/view/Window;->setFlags(II)V

    .line 198
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    .line 201
    invoke-static {p0}, Lcom/google/vr/cardboard/ContextUtils;->getActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    .line 202
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 204
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 205
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 207
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v2

    .line 206
    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 211
    :cond_0
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/Window;->clearFlags(I)V

    .line 212
    return-object p1
.end method

.method private static showInstallDialog(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 166
    new-instance v1, Lcom/google/vr/cardboard/UiUtils$4;

    invoke-direct {v1, p0}, Lcom/google/vr/cardboard/UiUtils$4;-><init>(Landroid/content/Context;)V

    .line 177
    .local v1, "positiveListener":Landroid/content/DialogInterface$OnClickListener;
    invoke-static {p0}, Lcom/google/vr/cardboard/UiUtils;->createAlertDialogBuilder(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 178
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    sget v2, Lcom/google/vr/cardboard/R$string;->dialog_title:I

    .line 179
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    sget v3, Lcom/google/vr/cardboard/R$string;->dialog_message_no_cardboard:I

    .line 180
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    sget v3, Lcom/google/vr/cardboard/R$string;->go_to_playstore_button:I

    .line 181
    invoke-virtual {v2, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    sget v3, Lcom/google/vr/cardboard/R$string;->cancel_button:I

    const/4 v4, 0x0

    .line 182
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 183
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/google/vr/cardboard/UiUtils;->showImmersiveDialog(Landroid/content/Context;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 184
    return-void
.end method
