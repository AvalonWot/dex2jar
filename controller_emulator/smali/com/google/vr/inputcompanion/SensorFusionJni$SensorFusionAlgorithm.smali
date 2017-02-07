.class public final enum Lcom/google/vr/inputcompanion/SensorFusionJni$SensorFusionAlgorithm;
.super Ljava/lang/Enum;
.source "SensorFusionJni.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/inputcompanion/SensorFusionJni;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SensorFusionAlgorithm"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/vr/inputcompanion/SensorFusionJni$SensorFusionAlgorithm;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/vr/inputcompanion/SensorFusionJni$SensorFusionAlgorithm;

.field public static final enum EKF_WITH_BIAS_ESTIMATOR:Lcom/google/vr/inputcompanion/SensorFusionJni$SensorFusionAlgorithm;

.field public static final enum MAHONY:Lcom/google/vr/inputcompanion/SensorFusionJni$SensorFusionAlgorithm;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 13
    new-instance v0, Lcom/google/vr/inputcompanion/SensorFusionJni$SensorFusionAlgorithm;

    const-string v1, "MAHONY"

    invoke-direct {v0, v1, v2}, Lcom/google/vr/inputcompanion/SensorFusionJni$SensorFusionAlgorithm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/vr/inputcompanion/SensorFusionJni$SensorFusionAlgorithm;->MAHONY:Lcom/google/vr/inputcompanion/SensorFusionJni$SensorFusionAlgorithm;

    .line 14
    new-instance v0, Lcom/google/vr/inputcompanion/SensorFusionJni$SensorFusionAlgorithm;

    const-string v1, "EKF_WITH_BIAS_ESTIMATOR"

    invoke-direct {v0, v1, v3}, Lcom/google/vr/inputcompanion/SensorFusionJni$SensorFusionAlgorithm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/vr/inputcompanion/SensorFusionJni$SensorFusionAlgorithm;->EKF_WITH_BIAS_ESTIMATOR:Lcom/google/vr/inputcompanion/SensorFusionJni$SensorFusionAlgorithm;

    .line 12
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/vr/inputcompanion/SensorFusionJni$SensorFusionAlgorithm;

    sget-object v1, Lcom/google/vr/inputcompanion/SensorFusionJni$SensorFusionAlgorithm;->MAHONY:Lcom/google/vr/inputcompanion/SensorFusionJni$SensorFusionAlgorithm;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/vr/inputcompanion/SensorFusionJni$SensorFusionAlgorithm;->EKF_WITH_BIAS_ESTIMATOR:Lcom/google/vr/inputcompanion/SensorFusionJni$SensorFusionAlgorithm;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/vr/inputcompanion/SensorFusionJni$SensorFusionAlgorithm;->$VALUES:[Lcom/google/vr/inputcompanion/SensorFusionJni$SensorFusionAlgorithm;

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
    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/vr/inputcompanion/SensorFusionJni$SensorFusionAlgorithm;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 12
    const-class v0, Lcom/google/vr/inputcompanion/SensorFusionJni$SensorFusionAlgorithm;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/vr/inputcompanion/SensorFusionJni$SensorFusionAlgorithm;

    return-object v0
.end method

.method public static values()[Lcom/google/vr/inputcompanion/SensorFusionJni$SensorFusionAlgorithm;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/google/vr/inputcompanion/SensorFusionJni$SensorFusionAlgorithm;->$VALUES:[Lcom/google/vr/inputcompanion/SensorFusionJni$SensorFusionAlgorithm;

    invoke-virtual {v0}, [Lcom/google/vr/inputcompanion/SensorFusionJni$SensorFusionAlgorithm;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/vr/inputcompanion/SensorFusionJni$SensorFusionAlgorithm;

    return-object v0
.end method
