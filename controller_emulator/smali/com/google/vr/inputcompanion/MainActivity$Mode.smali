.class final enum Lcom/google/vr/inputcompanion/MainActivity$Mode;
.super Ljava/lang/Enum;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/inputcompanion/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Mode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/vr/inputcompanion/MainActivity$Mode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/vr/inputcompanion/MainActivity$Mode;

.field public static final enum EMULATED_CONTROLLER:Lcom/google/vr/inputcompanion/MainActivity$Mode;

.field public static final enum REAL_CONTROLLER:Lcom/google/vr/inputcompanion/MainActivity$Mode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 61
    new-instance v0, Lcom/google/vr/inputcompanion/MainActivity$Mode;

    const-string v1, "EMULATED_CONTROLLER"

    invoke-direct {v0, v1, v2}, Lcom/google/vr/inputcompanion/MainActivity$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/vr/inputcompanion/MainActivity$Mode;->EMULATED_CONTROLLER:Lcom/google/vr/inputcompanion/MainActivity$Mode;

    .line 63
    new-instance v0, Lcom/google/vr/inputcompanion/MainActivity$Mode;

    const-string v1, "REAL_CONTROLLER"

    invoke-direct {v0, v1, v3}, Lcom/google/vr/inputcompanion/MainActivity$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/vr/inputcompanion/MainActivity$Mode;->REAL_CONTROLLER:Lcom/google/vr/inputcompanion/MainActivity$Mode;

    .line 59
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/vr/inputcompanion/MainActivity$Mode;

    sget-object v1, Lcom/google/vr/inputcompanion/MainActivity$Mode;->EMULATED_CONTROLLER:Lcom/google/vr/inputcompanion/MainActivity$Mode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/vr/inputcompanion/MainActivity$Mode;->REAL_CONTROLLER:Lcom/google/vr/inputcompanion/MainActivity$Mode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/vr/inputcompanion/MainActivity$Mode;->$VALUES:[Lcom/google/vr/inputcompanion/MainActivity$Mode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/vr/inputcompanion/MainActivity$Mode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 59
    const-class v0, Lcom/google/vr/inputcompanion/MainActivity$Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/vr/inputcompanion/MainActivity$Mode;

    return-object v0
.end method

.method public static values()[Lcom/google/vr/inputcompanion/MainActivity$Mode;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/google/vr/inputcompanion/MainActivity$Mode;->$VALUES:[Lcom/google/vr/inputcompanion/MainActivity$Mode;

    invoke-virtual {v0}, [Lcom/google/vr/inputcompanion/MainActivity$Mode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/vr/inputcompanion/MainActivity$Mode;

    return-object v0
.end method
