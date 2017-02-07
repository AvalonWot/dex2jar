.class public Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;
.super Ljava/lang/Object;
.source "OrientationEKF.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final MAX_ACCEL_NOISE_SIGMA:D = 7.0

.field private static final MIN_ACCEL_NOISE_SIGMA:D = 0.75

.field private static final NS2S:F = 1.0E-9f


# instance fields
.field private accObservationFunctionForNumericalJacobianTempM:Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

.field private alignedToGravity:Z

.field private alignedToNorth:Z

.field private down:Lcom/google/vr/sdk/base/sensors/internal/Vector3d;

.field private filteredGyroTimestep:F

.field private getPredictedGLMatrixTempM1:Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

.field private getPredictedGLMatrixTempM2:Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

.field private getPredictedGLMatrixTempV1:Lcom/google/vr/sdk/base/sensors/internal/Vector3d;

.field private gyroFilterValid:Z

.field private final lastGyro:Lcom/google/vr/sdk/base/sensors/internal/Vector3d;

.field private mH:Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

.field private mK:Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

.field private mNu:Lcom/google/vr/sdk/base/sensors/internal/Vector3d;

.field private mP:Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

.field private mQ:Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

.field private mR:Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

.field private mRaccel:Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

.field private mS:Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

.field private magObservationFunctionForNumericalJacobianTempM:Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

.field private mh:Lcom/google/vr/sdk/base/sensors/internal/Vector3d;

.field private movingAverageAccelNormChange:D

.field private mu:Lcom/google/vr/sdk/base/sensors/internal/Vector3d;

.field private mx:Lcom/google/vr/sdk/base/sensors/internal/Vector3d;

.field private mz:Lcom/google/vr/sdk/base/sensors/internal/Vector3d;

.field private north:Lcom/google/vr/sdk/base/sensors/internal/Vector3d;

.field private numGyroTimestepSamples:I

.field private previousAccelNorm:D

.field private processAccTempM1:Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

.field private processAccTempM2:Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

.field private processAccTempM3:Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

.field private processAccTempM4:Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

.field private processAccTempM5:Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

.field private processAccTempV1:Lcom/google/vr/sdk/base/sensors/internal/Vector3d;

.field private processAccTempV2:Lcom/google/vr/sdk/base/sensors/internal/Vector3d;

.field private processAccVDelta:Lcom/google/vr/sdk/base/sensors/internal/Vector3d;

.field private processGyroTempM1:Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

.field private processGyroTempM2:Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

.field private processMagTempM1:Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

.field private processMagTempM2:Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

.field private processMagTempM4:Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

.field private processMagTempM5:Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

.field private processMagTempM6:Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

.field private processMagTempV1:Lcom/google/vr/sdk/base/sensors/internal/Vector3d;

.field private processMagTempV2:Lcom/google/vr/sdk/base/sensors/internal/Vector3d;

.field private processMagTempV3:Lcom/google/vr/sdk/base/sensors/internal/Vector3d;

.field private processMagTempV4:Lcom/google/vr/sdk/base/sensors/internal/Vector3d;

.field private processMagTempV5:Lcom/google/vr/sdk/base/sensors/internal/Vector3d;

.field private rotationMatrix:[D

.field private sensorTimeStampGyro:J

.field private setHeadingDegreesTempM1:Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

.field private so3LastMotion:Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

.field private so3SensorFromWorld:Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

.field private timestepFilterInit:Z

.field private updateCovariancesAfterMotionTempM1:Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

.field private updateCovariancesAfterMotionTempM2:Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/16 v0, 0x10

    new-array v0, v0, [D

    iput-object v0, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->rotationMatrix:[D

    .line 26
    new-instance v0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    invoke-direct {v0}, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;-><init>()V

    iput-object v0, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->so3SensorFromWorld:Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    .line 27
    new-instance v0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    invoke-direct {v0}, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;-><init>()V

    iput-object v0, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->so3LastMotion:Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    .line 28
    new-instance v0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    invoke-direct {v0}, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;-><init>()V

    iput-object v0, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->mP:Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    .line 29
    new-instance v0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    invoke-direct {v0}, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;-><init>()V

    iput-object v0, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->mQ:Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    .line 30
    new-instance v0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    invoke-direct {v0}, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;-><init>()V

    iput-object v0, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->mR:Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    .line 31
    new-instance v0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    invoke-direct {v0}, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;-><init>()V

    iput-object v0, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->mRaccel:Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    .line 32
    new-instance v0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    invoke-direct {v0}, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;-><init>()V

    iput-object v0, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->mS:Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    .line 33
    new-instance v0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    invoke-direct {v0}, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;-><init>()V

    iput-object v0, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->mH:Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    .line 34
    new-instance v0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    invoke-direct {v0}, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;-><init>()V

    iput-object v0, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->mK:Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    .line 35
    new-instance v0, Lcom/google/vr/sdk/base/sensors/internal/Vector3d;

    invoke-direct {v0}, Lcom/google/vr/sdk/base/sensors/internal/Vector3d;-><init>()V

    iput-object v0, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->mNu:Lcom/google/vr/sdk/base/sensors/internal/Vector3d;

    .line 36
    new-instance v0, Lcom/google/vr/sdk/base/sensors/internal/Vector3d;

    invoke-direct {v0}, Lcom/google/vr/sdk/base/sensors/internal/Vector3d;-><init>()V

    iput-object v0, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->mz:Lcom/google/vr/sdk/base/sensors/internal/Vector3d;

    .line 37
    new-instance v0, Lcom/google/vr/sdk/base/sensors/internal/Vector3d;

    invoke-direct {v0}, Lcom/google/vr/sdk/base/sensors/internal/Vector3d;-><init>()V

    iput-object v0, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->mh:Lcom/google/vr/sdk/base/sensors/internal/Vector3d;

    .line 38
    new-instance v0, Lcom/google/vr/sdk/base/sensors/internal/Vector3d;

    invoke-direct {v0}, Lcom/google/vr/sdk/base/sensors/internal/Vector3d;-><init>()V

    iput-object v0, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->mu:Lcom/google/vr/sdk/base/sensors/internal/Vector3d;

    .line 39
    new-instance v0, Lcom/google/vr/sdk/base/sensors/internal/Vector3d;

    invoke-direct {v0}, Lcom/google/vr/sdk/base/sensors/internal/Vector3d;-><init>()V

    iput-object v0, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->mx:Lcom/google/vr/sdk/base/sensors/internal/Vector3d;

    .line 40
    new-instance v0, Lcom/google/vr/sdk/base/sensors/internal/Vector3d;

    invoke-direct {v0}, Lcom/google/vr/sdk/base/sensors/internal/Vector3d;-><init>()V

    iput-object v0, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->down:Lcom/google/vr/sdk/base/sensors/internal/Vector3d;

    .line 41
    new-instance v0, Lcom/google/vr/sdk/base/sensors/internal/Vector3d;

    invoke-direct {v0}, Lcom/google/vr/sdk/base/sensors/internal/Vector3d;-><init>()V

    iput-object v0, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->north:Lcom/google/vr/sdk/base/sensors/internal/Vector3d;

    .line 46
    new-instance v0, Lcom/google/vr/sdk/base/sensors/internal/Vector3d;

    invoke-direct {v0}, Lcom/google/vr/sdk/base/sensors/internal/Vector3d;-><init>()V

    iput-object v0, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->lastGyro:Lcom/google/vr/sdk/base/sensors/internal/Vector3d;

    .line 49
    iput-wide v2, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->previousAccelNorm:D

    .line 52
    iput-wide v2, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->movingAverageAccelNormChange:D

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->timestepFilterInit:Z

    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->gyroFilterValid:Z

    .line 63
    new-instance v0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    invoke-direct {v0}, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;-><init>()V

    iput-object v0, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->getPredictedGLMatrixTempM1:Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    .line 64
    new-instance v0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    invoke-direct {v0}, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;-><init>()V

    iput-object v0, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->getPredictedGLMatrixTempM2:Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    .line 65
    new-instance v0, Lcom/google/vr/sdk/base/sensors/internal/Vector3d;

    invoke-direct {v0}, Lcom/google/vr/sdk/base/sensors/internal/Vector3d;-><init>()V

    iput-object v0, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->getPredictedGLMatrixTempV1:Lcom/google/vr/sdk/base/sensors/internal/Vector3d;

    .line 68
    new-instance v0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    invoke-direct {v0}, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;-><init>()V

    iput-object v0, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->setHeadingDegreesTempM1:Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    .line 71
    new-instance v0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    invoke-direct {v0}, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;-><init>()V

    iput-object v0, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->processGyroTempM1:Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    .line 72
    new-instance v0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    invoke-direct {v0}, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;-><init>()V

    iput-object v0, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->processGyroTempM2:Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    .line 75
    new-instance v0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    invoke-direct {v0}, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;-><init>()V

    iput-object v0, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->processAccTempM1:Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    .line 76
    new-instance v0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    invoke-direct {v0}, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;-><init>()V

    iput-object v0, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->processAccTempM2:Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    .line 77
    new-instance v0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    invoke-direct {v0}, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;-><init>()V

    iput-object v0, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->processAccTempM3:Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    .line 78
    new-instance v0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    invoke-direct {v0}, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;-><init>()V

    iput-object v0, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->processAccTempM4:Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    .line 79
    new-instance v0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    invoke-direct {v0}, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;-><init>()V

    iput-object v0, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->processAccTempM5:Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    .line 80
    new-instance v0, Lcom/google/vr/sdk/base/sensors/internal/Vector3d;

    invoke-direct {v0}, Lcom/google/vr/sdk/base/sensors/internal/Vector3d;-><init>()V

    iput-object v0, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->processAccTempV1:Lcom/google/vr/sdk/base/sensors/internal/Vector3d;

    .line 81
    new-instance v0, Lcom/google/vr/sdk/base/sensors/internal/Vector3d;

    invoke-direct {v0}, Lcom/google/vr/sdk/base/sensors/internal/Vector3d;-><init>()V

    iput-object v0, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->processAccTempV2:Lcom/google/vr/sdk/base/sensors/internal/Vector3d;

    .line 82
    new-instance v0, Lcom/google/vr/sdk/base/sensors/internal/Vector3d;

    invoke-direct {v0}, Lcom/google/vr/sdk/base/sensors/internal/Vector3d;-><init>()V

    iput-object v0, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->processAccVDelta:Lcom/google/vr/sdk/base/sensors/internal/Vector3d;

    .line 85
    new-instance v0, Lcom/google/vr/sdk/base/sensors/internal/Vector3d;

    invoke-direct {v0}, Lcom/google/vr/sdk/base/sensors/internal/Vector3d;-><init>()V

    iput-object v0, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->processMagTempV1:Lcom/google/vr/sdk/base/sensors/internal/Vector3d;

    .line 86
    new-instance v0, Lcom/google/vr/sdk/base/sensors/internal/Vector3d;

    invoke-direct {v0}, Lcom/google/vr/sdk/base/sensors/internal/Vector3d;-><init>()V

    iput-object v0, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->processMagTempV2:Lcom/google/vr/sdk/base/sensors/internal/Vector3d;

    .line 87
    new-instance v0, Lcom/google/vr/sdk/base/sensors/internal/Vector3d;

    invoke-direct {v0}, Lcom/google/vr/sdk/base/sensors/internal/Vector3d;-><init>()V

    iput-object v0, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->processMagTempV3:Lcom/google/vr/sdk/base/sensors/internal/Vector3d;

    .line 88
    new-instance v0, Lcom/google/vr/sdk/base/sensors/internal/Vector3d;

    invoke-direct {v0}, Lcom/google/vr/sdk/base/sensors/internal/Vector3d;-><init>()V

    iput-object v0, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->processMagTempV4:Lcom/google/vr/sdk/base/sensors/internal/Vector3d;

    .line 89
    new-instance v0, Lcom/google/vr/sdk/base/sensors/internal/Vector3d;

    invoke-direct {v0}, Lcom/google/vr/sdk/base/sensors/internal/Vector3d;-><init>()V

    iput-object v0, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->processMagTempV5:Lcom/google/vr/sdk/base/sensors/internal/Vector3d;

    .line 90
    new-instance v0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    invoke-direct {v0}, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;-><init>()V

    iput-object v0, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->processMagTempM1:Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    .line 91
    new-instance v0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    invoke-direct {v0}, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;-><init>()V

    iput-object v0, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->processMagTempM2:Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    .line 92
    new-instance v0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    invoke-direct {v0}, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;-><init>()V

    iput-object v0, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->processMagTempM4:Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    .line 93
    new-instance v0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    invoke-direct {v0}, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;-><init>()V

    iput-object v0, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->processMagTempM5:Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    .line 94
    new-instance v0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    invoke-direct {v0}, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;-><init>()V

    iput-object v0, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->processMagTempM6:Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    .line 97
    new-instance v0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    invoke-direct {v0}, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;-><init>()V

    iput-object v0, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->updateCovariancesAfterMotionTempM1:Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    .line 98
    new-instance v0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    invoke-direct {v0}, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;-><init>()V

    iput-object v0, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->updateCovariancesAfterMotionTempM2:Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    .line 101
    new-instance v0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    invoke-direct {v0}, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;-><init>()V

    iput-object v0, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->accObservationFunctionForNumericalJacobianTempM:Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    .line 105
    new-instance v0, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    invoke-direct {v0}, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;-><init>()V

    iput-object v0, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->magObservationFunctionForNumericalJacobianTempM:Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    .line 116
    invoke-virtual {p0}, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->reset()V

    .line 117
    return-void
.end method

.method private accObservationFunctionForNumericalJacobian(Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;Lcom/google/vr/sdk/base/sensors/internal/Vector3d;)V
    .locals 3
    .param p1, "so3SensorFromWorldPred"    # Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;
    .param p2, "result"    # Lcom/google/vr/sdk/base/sensors/internal/Vector3d;

    .prologue
    .line 581
    iget-object v0, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->down:Lcom/google/vr/sdk/base/sensors/internal/Vector3d;

    iget-object v1, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->mh:Lcom/google/vr/sdk/base/sensors/internal/Vector3d;

    invoke-static {p1, v0, v1}, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->mult(Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;Lcom/google/vr/sdk/base/sensors/internal/Vector3d;Lcom/google/vr/sdk/base/sensors/internal/Vector3d;)V

    .line 582
    iget-object v0, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->mh:Lcom/google/vr/sdk/base/sensors/internal/Vector3d;

    iget-object v1, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->mz:Lcom/google/vr/sdk/base/sensors/internal/Vector3d;

    iget-object v2, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->accObservationFunctionForNumericalJacobianTempM:Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    invoke-static {v0, v1, v2}, Lcom/google/vr/sdk/base/sensors/internal/So3Util;->sO3FromTwoVec(Lcom/google/vr/sdk/base/sensors/internal/Vector3d;Lcom/google/vr/sdk/base/sensors/internal/Vector3d;Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;)V

    .line 585
    iget-object v0, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->accObservationFunctionForNumericalJacobianTempM:Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    invoke-static {v0, p2}, Lcom/google/vr/sdk/base/sensors/internal/So3Util;->muFromSO3(Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;Lcom/google/vr/sdk/base/sensors/internal/Vector3d;)V

    .line 586
    return-void
.end method

.method public static arrayAssign([[DLcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;)V
    .locals 22
    .param p0, "data"    # [[D
    .param p1, "m"    # Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    .prologue
    .line 265
    sget-boolean v2, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    const/4 v2, 0x3

    move-object/from16 v0, p0

    array-length v3, v0

    if-eq v2, v3, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 266
    :cond_0
    sget-boolean v2, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    const/4 v2, 0x3

    const/4 v3, 0x0

    aget-object v3, p0, v3

    array-length v3, v3

    if-eq v2, v3, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 267
    :cond_1
    sget-boolean v2, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->$assertionsDisabled:Z

    if-nez v2, :cond_2

    const/4 v2, 0x3

    const/4 v3, 0x1

    aget-object v3, p0, v3

    array-length v3, v3

    if-eq v2, v3, :cond_2

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 268
    :cond_2
    sget-boolean v2, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->$assertionsDisabled:Z

    if-nez v2, :cond_3

    const/4 v2, 0x3

    const/4 v3, 0x2

    aget-object v3, p0, v3

    array-length v3, v3

    if-eq v2, v3, :cond_3

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 269
    :cond_3
    const/4 v2, 0x0

    aget-object v2, p0, v2

    const/4 v3, 0x0

    aget-wide v4, v2, v3

    const/4 v2, 0x0

    aget-object v2, p0, v2

    const/4 v3, 0x1

    aget-wide v6, v2, v3

    const/4 v2, 0x0

    aget-object v2, p0, v2

    const/4 v3, 0x2

    aget-wide v8, v2, v3

    const/4 v2, 0x1

    aget-object v2, p0, v2

    const/4 v3, 0x0

    aget-wide v10, v2, v3

    const/4 v2, 0x1

    aget-object v2, p0, v2

    const/4 v3, 0x1

    aget-wide v12, v2, v3

    const/4 v2, 0x1

    aget-object v2, p0, v2

    const/4 v3, 0x2

    aget-wide v14, v2, v3

    const/4 v2, 0x2

    aget-object v2, p0, v2

    const/4 v3, 0x0

    aget-wide v16, v2, v3

    const/4 v2, 0x2

    aget-object v2, p0, v2

    const/4 v3, 0x1

    aget-wide v18, v2, v3

    const/4 v2, 0x2

    aget-object v2, p0, v2

    const/4 v3, 0x2

    aget-wide v20, v2, v3

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v21}, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->set(DDDDDDDDD)V

    .line 272
    return-void
.end method

.method private filterGyroTimestep(F)V
    .locals 5
    .param p1, "timeStep"    # F

    .prologue
    const/4 v4, 0x1

    .line 551
    const v0, 0x3f733333    # 0.95f

    .line 552
    .local v0, "kFilterCoeff":F
    const/high16 v1, 0x41200000    # 10.0f

    .line 553
    .local v1, "kMinSamples":F
    iget-boolean v2, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->timestepFilterInit:Z

    if-nez v2, :cond_1

    .line 554
    iput p1, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->filteredGyroTimestep:F

    .line 555
    iput v4, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->numGyroTimestepSamples:I

    .line 556
    iput-boolean v4, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->timestepFilterInit:Z

    .line 565
    :cond_0
    :goto_0
    return-void

    .line 559
    :cond_1
    const v2, 0x3f733333    # 0.95f

    iget v3, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->filteredGyroTimestep:F

    mul-float/2addr v2, v3

    const v3, 0x3d4cccd0    # 0.050000012f

    mul-float/2addr v3, p1

    add-float/2addr v2, v3

    iput v2, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->filteredGyroTimestep:F

    .line 561
    iget v2, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->numGyroTimestepSamples:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->numGyroTimestepSamples:I

    int-to-float v2, v2

    const/high16 v3, 0x41200000    # 10.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 562
    iput-boolean v4, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->gyroFilterValid:Z

    goto :goto_0
.end method

.method private glMatrixFromSo3(Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;)[D
    .locals 10
    .param p1, "so3"    # Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    .prologue
    const-wide/16 v8, 0x0

    const/4 v7, 0x3

    .line 527
    const/4 v1, 0x0

    .local v1, "r":I
    :goto_0
    if-ge v1, v7, :cond_1

    .line 528
    const/4 v0, 0x0

    .local v0, "c":I
    :goto_1
    if-ge v0, v7, :cond_0

    .line 530
    iget-object v2, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->rotationMatrix:[D

    mul-int/lit8 v3, v0, 0x4

    add-int/2addr v3, v1

    invoke-virtual {p1, v1, v0}, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->get(II)D

    move-result-wide v4

    aput-wide v4, v2, v3

    .line 528
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 527
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 535
    .end local v0    # "c":I
    :cond_1
    iget-object v2, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->rotationMatrix:[D

    iget-object v3, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->rotationMatrix:[D

    const/4 v4, 0x7

    iget-object v5, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->rotationMatrix:[D

    const/16 v6, 0xb

    aput-wide v8, v5, v6

    aput-wide v8, v3, v4

    aput-wide v8, v2, v7

    .line 536
    iget-object v2, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->rotationMatrix:[D

    const/16 v3, 0xc

    iget-object v4, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->rotationMatrix:[D

    const/16 v5, 0xd

    iget-object v6, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->rotationMatrix:[D

    const/16 v7, 0xe

    aput-wide v8, v6, v7

    aput-wide v8, v4, v5

    aput-wide v8, v2, v3

    .line 539
    iget-object v2, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->rotationMatrix:[D

    const/16 v3, 0xf

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    aput-wide v4, v2, v3

    .line 541
    iget-object v2, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->rotationMatrix:[D

    return-object v2
.end method

.method private magObservationFunctionForNumericalJacobian(Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;Lcom/google/vr/sdk/base/sensors/internal/Vector3d;)V
    .locals 3
    .param p1, "so3SensorFromWorldPred"    # Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;
    .param p2, "result"    # Lcom/google/vr/sdk/base/sensors/internal/Vector3d;

    .prologue
    .line 597
    iget-object v0, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->north:Lcom/google/vr/sdk/base/sensors/internal/Vector3d;

    iget-object v1, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->mh:Lcom/google/vr/sdk/base/sensors/internal/Vector3d;

    invoke-static {p1, v0, v1}, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->mult(Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;Lcom/google/vr/sdk/base/sensors/internal/Vector3d;Lcom/google/vr/sdk/base/sensors/internal/Vector3d;)V

    .line 598
    iget-object v0, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->mh:Lcom/google/vr/sdk/base/sensors/internal/Vector3d;

    iget-object v1, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->mz:Lcom/google/vr/sdk/base/sensors/internal/Vector3d;

    iget-object v2, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->magObservationFunctionForNumericalJacobianTempM:Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    invoke-static {v0, v1, v2}, Lcom/google/vr/sdk/base/sensors/internal/So3Util;->sO3FromTwoVec(Lcom/google/vr/sdk/base/sensors/internal/Vector3d;Lcom/google/vr/sdk/base/sensors/internal/Vector3d;Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;)V

    .line 600
    iget-object v0, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->magObservationFunctionForNumericalJacobianTempM:Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    invoke-static {v0, p2}, Lcom/google/vr/sdk/base/sensors/internal/So3Util;->muFromSO3(Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;Lcom/google/vr/sdk/base/sensors/internal/Vector3d;)V

    .line 601
    return-void
.end method

.method private updateAccelCovariance(D)V
    .locals 21
    .param p1, "currentAccelNorm"    # D

    .prologue
    .line 341
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->previousAccelNorm:D

    sub-double v14, p1, v14

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    .line 342
    .local v6, "currentAccelNormChange":D
    move-wide/from16 v0, p1

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->previousAccelNorm:D

    .line 345
    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    .line 346
    .local v10, "kSmoothingFactor":D
    const-wide/high16 v14, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v14, v6

    const-wide/high16 v16, 0x3fe0000000000000L    # 0.5

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->movingAverageAccelNormChange:D

    move-wide/from16 v18, v0

    mul-double v16, v16, v18

    add-double v14, v14, v16

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->movingAverageAccelNormChange:D

    .line 352
    const-wide v8, 0x3fc3333333333333L    # 0.15

    .line 354
    .local v8, "kMaxAccelNormChange":D
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->movingAverageAccelNormChange:D

    const-wide v16, 0x3fc3333333333333L    # 0.15

    div-double v12, v14, v16

    .line 355
    .local v12, "normChangeRatio":D
    const-wide/high16 v14, 0x401c000000000000L    # 7.0

    const-wide/high16 v16, 0x3fe8000000000000L    # 0.75

    const-wide/high16 v18, 0x4019000000000000L    # 6.25

    mul-double v18, v18, v12

    add-double v16, v16, v18

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    .line 359
    .local v4, "accelNoiseSigma":D
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->mRaccel:Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    mul-double v16, v4, v4

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->setSameDiagonal(D)V

    .line 360
    return-void
.end method

.method private updateCovariancesAfterMotion()V
    .locals 3

    .prologue
    .line 568
    iget-object v0, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->so3LastMotion:Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    iget-object v1, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->updateCovariancesAfterMotionTempM1:Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    invoke-virtual {v0, v1}, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->transpose(Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;)V

    .line 569
    iget-object v0, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->mP:Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    iget-object v1, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->updateCovariancesAfterMotionTempM1:Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    iget-object v2, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->updateCovariancesAfterMotionTempM2:Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    invoke-static {v0, v1, v2}, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->mult(Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;)V

    .line 571
    iget-object v0, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->so3LastMotion:Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    iget-object v1, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->updateCovariancesAfterMotionTempM2:Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    iget-object v2, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->mP:Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    invoke-static {v0, v1, v2}, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->mult(Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;)V

    .line 572
    iget-object v0, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->so3LastMotion:Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    invoke-virtual {v0}, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->setIdentity()V

    .line 573
    return-void
.end method


# virtual methods
.method public declared-synchronized getGLMatrix()[D
    .locals 1

    .prologue
    .line 223
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->so3SensorFromWorld:Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    invoke-direct {p0, v0}, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->glMatrixFromSo3(Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;)[D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getHeadingDegrees()D
    .locals 14

    .prologue
    .line 181
    monitor-enter p0

    :try_start_0
    iget-object v8, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->so3SensorFromWorld:Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    const/4 v9, 0x2

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->get(II)D

    move-result-wide v4

    .line 182
    .local v4, "x":D
    iget-object v8, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->so3SensorFromWorld:Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    const/4 v9, 0x2

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->get(II)D

    move-result-wide v6

    .line 183
    .local v6, "y":D
    mul-double v8, v4, v4

    mul-double v10, v6, v6

    add-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    .line 185
    .local v2, "mag":D
    const-wide v8, 0x3fb999999999999aL    # 0.1

    cmpg-double v8, v2, v8

    if-gez v8, :cond_1

    .line 186
    const-wide/16 v0, 0x0

    .line 196
    :cond_0
    :goto_0
    monitor-exit p0

    return-wide v0

    .line 189
    :cond_1
    const-wide v8, -0x3fa9800000000000L    # -90.0

    :try_start_1
    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->atan2(DD)D
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v10

    const-wide v12, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v10, v12

    const-wide v12, 0x4066800000000000L    # 180.0

    mul-double/2addr v10, v12

    sub-double v0, v8, v10

    .line 190
    .local v0, "heading":D
    const-wide/16 v8, 0x0

    cmpg-double v8, v0, v8

    if-gez v8, :cond_2

    .line 191
    const-wide v8, 0x4076800000000000L    # 360.0

    add-double/2addr v0, v8

    .line 193
    :cond_2
    const-wide v8, 0x4076800000000000L    # 360.0

    cmpl-double v8, v0, v8

    if-ltz v8, :cond_0

    .line 194
    const-wide v8, 0x4076800000000000L    # 360.0

    sub-double/2addr v0, v8

    goto :goto_0

    .line 181
    .end local v0    # "heading":D
    .end local v2    # "mag":D
    .end local v4    # "x":D
    .end local v6    # "y":D
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8
.end method

.method public declared-synchronized getPredictedGLMatrix(D)[D
    .locals 9
    .param p1, "secondsAfterLastGyroEvent"    # D

    .prologue
    .line 237
    monitor-enter p0

    move-wide v0, p1

    .line 238
    .local v0, "dT":D
    :try_start_0
    iget-object v2, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->getPredictedGLMatrixTempV1:Lcom/google/vr/sdk/base/sensors/internal/Vector3d;

    .line 239
    .local v2, "pmu":Lcom/google/vr/sdk/base/sensors/internal/Vector3d;
    iget-object v5, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->lastGyro:Lcom/google/vr/sdk/base/sensors/internal/Vector3d;

    invoke-virtual {v2, v5}, Lcom/google/vr/sdk/base/sensors/internal/Vector3d;->set(Lcom/google/vr/sdk/base/sensors/internal/Vector3d;)V

    .line 240
    neg-double v6, v0

    invoke-virtual {v2, v6, v7}, Lcom/google/vr/sdk/base/sensors/internal/Vector3d;->scale(D)V

    .line 241
    iget-object v3, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->getPredictedGLMatrixTempM1:Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    .line 242
    .local v3, "so3PredictedMotion":Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;
    invoke-static {v2, v3}, Lcom/google/vr/sdk/base/sensors/internal/So3Util;->sO3FromMu(Lcom/google/vr/sdk/base/sensors/internal/Vector3d;Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;)V

    .line 244
    iget-object v4, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->getPredictedGLMatrixTempM2:Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    .line 245
    .local v4, "so3PredictedState":Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;
    iget-object v5, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->so3SensorFromWorld:Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    invoke-static {v3, v5, v4}, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->mult(Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;)V

    .line 247
    invoke-direct {p0, v4}, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->glMatrixFromSo3(Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;)[D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    monitor-exit p0

    return-object v5

    .line 237
    .end local v2    # "pmu":Lcom/google/vr/sdk/base/sensors/internal/Vector3d;
    .end local v3    # "so3PredictedMotion":Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;
    .end local v4    # "so3PredictedState":Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public declared-synchronized getRotationMatrix()Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;
    .locals 1

    .prologue
    .line 255
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->so3SensorFromWorld:Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isAlignedToGravity()Z
    .locals 1

    .prologue
    .line 279
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->alignedToGravity:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isAlignedToNorth()Z
    .locals 1

    .prologue
    .line 287
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->alignedToNorth:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isReady()Z
    .locals 1

    .prologue
    .line 169
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->alignedToGravity:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized processAcc(Lcom/google/vr/sdk/base/sensors/internal/Vector3d;J)V
    .locals 8
    .param p1, "acc"    # Lcom/google/vr/sdk/base/sensors/internal/Vector3d;
    .param p2, "sensorTimeStamp"    # J

    .prologue
    .line 371
    monitor-enter p0

    :try_start_0
    iget-object v5, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->mz:Lcom/google/vr/sdk/base/sensors/internal/Vector3d;

    invoke-virtual {v5, p1}, Lcom/google/vr/sdk/base/sensors/internal/Vector3d;->set(Lcom/google/vr/sdk/base/sensors/internal/Vector3d;)V

    .line 372
    iget-object v5, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->mz:Lcom/google/vr/sdk/base/sensors/internal/Vector3d;

    invoke-virtual {v5}, Lcom/google/vr/sdk/base/sensors/internal/Vector3d;->length()D

    move-result-wide v6

    invoke-direct {p0, v6, v7}, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->updateAccelCovariance(D)V

    .line 374
    iget-boolean v5, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->alignedToGravity:Z

    if-eqz v5, :cond_1

    .line 375
    iget-object v5, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->so3SensorFromWorld:Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    iget-object v6, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->mNu:Lcom/google/vr/sdk/base/sensors/internal/Vector3d;

    invoke-direct {p0, v5, v6}, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->accObservationFunctionForNumericalJacobian(Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;Lcom/google/vr/sdk/base/sensors/internal/Vector3d;)V

    .line 378
    const-wide v2, 0x3e7ad7f29abcaf48L    # 1.0E-7

    .line 379
    .local v2, "eps":D
    const/4 v1, 0x0

    .local v1, "dof":I
    :goto_0
    const/4 v5, 0x3

    if-ge v1, v5, :cond_0

    .line 380
    iget-object v0, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->processAccVDelta:Lcom/google/vr/sdk/base/sensors/internal/Vector3d;

    .line 381
    .local v0, "delta":Lcom/google/vr/sdk/base/sensors/internal/Vector3d;
    invoke-virtual {v0}, Lcom/google/vr/sdk/base/sensors/internal/Vector3d;->setZero()V

    .line 382
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/vr/sdk/base/sensors/internal/Vector3d;->setComponent(ID)V

    .line 384
    iget-object v5, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->processAccTempM1:Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    invoke-static {v0, v5}, Lcom/google/vr/sdk/base/sensors/internal/So3Util;->sO3FromMu(Lcom/google/vr/sdk/base/sensors/internal/Vector3d;Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;)V

    .line 385
    iget-object v5, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->processAccTempM1:Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    iget-object v6, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->so3SensorFromWorld:Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    iget-object v7, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->processAccTempM2:Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    invoke-static {v5, v6, v7}, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->mult(Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;)V

    .line 387
    iget-object v5, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->processAccTempM2:Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    iget-object v6, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->processAccTempV1:Lcom/google/vr/sdk/base/sensors/internal/Vector3d;

    invoke-direct {p0, v5, v6}, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->accObservationFunctionForNumericalJacobian(Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;Lcom/google/vr/sdk/base/sensors/internal/Vector3d;)V

    .line 389
    iget-object v4, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->processAccTempV1:Lcom/google/vr/sdk/base/sensors/internal/Vector3d;

    .line 391
    .local v4, "withDelta":Lcom/google/vr/sdk/base/sensors/internal/Vector3d;
    iget-object v5, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->mNu:Lcom/google/vr/sdk/base/sensors/internal/Vector3d;

    iget-object v6, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->processAccTempV2:Lcom/google/vr/sdk/base/sensors/internal/Vector3d;

    invoke-static {v5, v4, v6}, Lcom/google/vr/sdk/base/sensors/internal/Vector3d;->sub(Lcom/google/vr/sdk/base/sensors/internal/Vector3d;Lcom/google/vr/sdk/base/sensors/internal/Vector3d;Lcom/google/vr/sdk/base/sensors/internal/Vector3d;)V

    .line 392
    iget-object v5, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->processAccTempV2:Lcom/google/vr/sdk/base/sensors/internal/Vector3d;

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    div-double/2addr v6, v2

    invoke-virtual {v5, v6, v7}, Lcom/google/vr/sdk/base/sensors/internal/Vector3d;->scale(D)V

    .line 393
    iget-object v5, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->mH:Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    iget-object v6, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->processAccTempV2:Lcom/google/vr/sdk/base/sensors/internal/Vector3d;

    invoke-virtual {v5, v1, v6}, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->setColumn(ILcom/google/vr/sdk/base/sensors/internal/Vector3d;)V

    .line 379
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 397
    .end local v0    # "delta":Lcom/google/vr/sdk/base/sensors/internal/Vector3d;
    .end local v4    # "withDelta":Lcom/google/vr/sdk/base/sensors/internal/Vector3d;
    :cond_0
    iget-object v5, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->mH:Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    iget-object v6, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->processAccTempM3:Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    invoke-virtual {v5, v6}, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->transpose(Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;)V

    .line 398
    iget-object v5, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->mP:Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    iget-object v6, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->processAccTempM3:Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    iget-object v7, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->processAccTempM4:Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    invoke-static {v5, v6, v7}, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->mult(Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;)V

    .line 399
    iget-object v5, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->mH:Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    iget-object v6, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->processAccTempM4:Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    iget-object v7, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->processAccTempM5:Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    invoke-static {v5, v6, v7}, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->mult(Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;)V

    .line 400
    iget-object v5, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->processAccTempM5:Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    iget-object v6, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->mRaccel:Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    iget-object v7, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->mS:Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    invoke-static {v5, v6, v7}, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->add(Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;)V

    .line 403
    iget-object v5, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->mS:Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    iget-object v6, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->processAccTempM3:Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    invoke-virtual {v5, v6}, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->invert(Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;)Z

    .line 404
    iget-object v5, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->mH:Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    iget-object v6, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->processAccTempM4:Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    invoke-virtual {v5, v6}, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->transpose(Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;)V

    .line 405
    iget-object v5, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->processAccTempM4:Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    iget-object v6, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->processAccTempM3:Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    iget-object v7, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->processAccTempM5:Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    invoke-static {v5, v6, v7}, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->mult(Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;)V

    .line 406
    iget-object v5, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->mP:Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    iget-object v6, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->processAccTempM5:Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    iget-object v7, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->mK:Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    invoke-static {v5, v6, v7}, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->mult(Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;)V

    .line 409
    iget-object v5, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->mK:Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    iget-object v6, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->mNu:Lcom/google/vr/sdk/base/sensors/internal/Vector3d;

    iget-object v7, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->mx:Lcom/google/vr/sdk/base/sensors/internal/Vector3d;

    invoke-static {v5, v6, v7}, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->mult(Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;Lcom/google/vr/sdk/base/sensors/internal/Vector3d;Lcom/google/vr/sdk/base/sensors/internal/Vector3d;)V

    .line 412
    iget-object v5, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->mK:Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    iget-object v6, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->mH:Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    iget-object v7, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->processAccTempM3:Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    invoke-static {v5, v6, v7}, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->mult(Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;)V

    .line 413
    iget-object v5, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->processAccTempM4:Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    invoke-virtual {v5}, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->setIdentity()V

    .line 414
    iget-object v5, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->processAccTempM4:Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    iget-object v6, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->processAccTempM3:Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    invoke-virtual {v5, v6}, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->minusEquals(Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;)V

    .line 415
    iget-object v5, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->processAccTempM4:Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    iget-object v6, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->mP:Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    iget-object v7, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->processAccTempM3:Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    invoke-static {v5, v6, v7}, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->mult(Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;)V

    .line 416
    iget-object v5, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->mP:Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    iget-object v6, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->processAccTempM3:Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    invoke-virtual {v5, v6}, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->set(Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;)V

    .line 418
    iget-object v5, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->mx:Lcom/google/vr/sdk/base/sensors/internal/Vector3d;

    iget-object v6, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->so3LastMotion:Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    invoke-static {v5, v6}, Lcom/google/vr/sdk/base/sensors/internal/So3Util;->sO3FromMu(Lcom/google/vr/sdk/base/sensors/internal/Vector3d;Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;)V

    .line 420
    iget-object v5, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->so3LastMotion:Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    iget-object v6, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->so3SensorFromWorld:Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    iget-object v7, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->so3SensorFromWorld:Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    invoke-static {v5, v6, v7}, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->mult(Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;)V

    .line 422
    invoke-direct {p0}, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->updateCovariancesAfterMotion()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 430
    .end local v1    # "dof":I
    .end local v2    # "eps":D
    :goto_1
    monitor-exit p0

    return-void

    .line 427
    :cond_1
    :try_start_1
    iget-object v5, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->down:Lcom/google/vr/sdk/base/sensors/internal/Vector3d;

    iget-object v6, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->mz:Lcom/google/vr/sdk/base/sensors/internal/Vector3d;

    iget-object v7, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->so3SensorFromWorld:Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    invoke-static {v5, v6, v7}, Lcom/google/vr/sdk/base/sensors/internal/So3Util;->sO3FromTwoVec(Lcom/google/vr/sdk/base/sensors/internal/Vector3d;Lcom/google/vr/sdk/base/sensors/internal/Vector3d;Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;)V

    .line 428
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->alignedToGravity:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 371
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public declared-synchronized processGyro(Lcom/google/vr/sdk/base/sensors/internal/Vector3d;J)V
    .locals 8
    .param p1, "gyro"    # Lcom/google/vr/sdk/base/sensors/internal/Vector3d;
    .param p2, "sensorTimeStamp"    # J

    .prologue
    .line 297
    monitor-enter p0

    const v1, 0x3d23d70a    # 0.04f

    .line 298
    .local v1, "kTimeThreshold":F
    const v2, 0x3c23d70a    # 0.01f

    .line 299
    .local v2, "kdTdefault":F
    :try_start_0
    iget-wide v4, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->sensorTimeStampGyro:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    .line 300
    iget-wide v4, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->sensorTimeStampGyro:J

    sub-long v4, p2, v4

    long-to-float v3, v4

    const v4, 0x3089705f    # 1.0E-9f

    mul-float v0, v3, v4

    .line 301
    .local v0, "dT":F
    const v3, 0x3d23d70a    # 0.04f

    cmpl-float v3, v0, v3

    if-lez v3, :cond_2

    .line 302
    iget-boolean v3, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->gyroFilterValid:Z

    if-eqz v3, :cond_1

    iget v0, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->filteredGyroTimestep:F

    .line 309
    :goto_0
    iget-object v3, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->mu:Lcom/google/vr/sdk/base/sensors/internal/Vector3d;

    invoke-virtual {v3, p1}, Lcom/google/vr/sdk/base/sensors/internal/Vector3d;->set(Lcom/google/vr/sdk/base/sensors/internal/Vector3d;)V

    .line 310
    iget-object v3, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->mu:Lcom/google/vr/sdk/base/sensors/internal/Vector3d;

    neg-float v4, v0

    float-to-double v4, v4

    invoke-virtual {v3, v4, v5}, Lcom/google/vr/sdk/base/sensors/internal/Vector3d;->scale(D)V

    .line 311
    iget-object v3, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->mu:Lcom/google/vr/sdk/base/sensors/internal/Vector3d;

    iget-object v4, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->so3LastMotion:Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    invoke-static {v3, v4}, Lcom/google/vr/sdk/base/sensors/internal/So3Util;->sO3FromMu(Lcom/google/vr/sdk/base/sensors/internal/Vector3d;Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;)V

    .line 313
    iget-object v3, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->processGyroTempM1:Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    iget-object v4, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->so3SensorFromWorld:Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    invoke-virtual {v3, v4}, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->set(Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;)V

    .line 314
    iget-object v3, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->so3LastMotion:Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    iget-object v4, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->so3SensorFromWorld:Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    iget-object v5, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->processGyroTempM1:Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    invoke-static {v3, v4, v5}, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->mult(Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;)V

    .line 315
    iget-object v3, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->so3SensorFromWorld:Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    iget-object v4, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->processGyroTempM1:Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    invoke-virtual {v3, v4}, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->set(Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;)V

    .line 317
    invoke-direct {p0}, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->updateCovariancesAfterMotion()V

    .line 319
    iget-object v3, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->processGyroTempM2:Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    iget-object v4, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->mQ:Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    invoke-virtual {v3, v4}, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->set(Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;)V

    .line 320
    iget-object v3, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->processGyroTempM2:Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    mul-float v4, v0, v0

    float-to-double v4, v4

    invoke-virtual {v3, v4, v5}, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->scale(D)V

    .line 321
    iget-object v3, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->mP:Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    iget-object v4, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->processGyroTempM2:Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    invoke-virtual {v3, v4}, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->plusEquals(Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;)V

    .line 323
    .end local v0    # "dT":F
    :cond_0
    iput-wide p2, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->sensorTimeStampGyro:J

    .line 324
    iget-object v3, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->lastGyro:Lcom/google/vr/sdk/base/sensors/internal/Vector3d;

    invoke-virtual {v3, p1}, Lcom/google/vr/sdk/base/sensors/internal/Vector3d;->set(Lcom/google/vr/sdk/base/sensors/internal/Vector3d;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 325
    monitor-exit p0

    return-void

    .line 302
    .restart local v0    # "dT":F
    :cond_1
    const v0, 0x3c23d70a    # 0.01f

    goto :goto_0

    .line 304
    :cond_2
    :try_start_1
    invoke-direct {p0, v0}, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->filterGyroTimestep(F)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 297
    .end local v0    # "dT":F
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized processMag([FJ)V
    .locals 15
    .param p1, "mag"    # [F
    .param p2, "sensorTimeStamp"    # J

    .prologue
    .line 440
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->alignedToGravity:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 523
    :goto_0
    monitor-exit p0

    return-void

    .line 443
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->mz:Lcom/google/vr/sdk/base/sensors/internal/Vector3d;

    const/4 v2, 0x0

    aget v2, p1, v2

    float-to-double v2, v2

    const/4 v4, 0x1

    aget v4, p1, v4

    float-to-double v4, v4

    const/4 v6, 0x2

    aget v6, p1, v6

    float-to-double v6, v6

    invoke-virtual/range {v1 .. v7}, Lcom/google/vr/sdk/base/sensors/internal/Vector3d;->set(DDD)V

    .line 444
    iget-object v1, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->mz:Lcom/google/vr/sdk/base/sensors/internal/Vector3d;

    invoke-virtual {v1}, Lcom/google/vr/sdk/base/sensors/internal/Vector3d;->normalize()V

    .line 446
    new-instance v9, Lcom/google/vr/sdk/base/sensors/internal/Vector3d;

    invoke-direct {v9}, Lcom/google/vr/sdk/base/sensors/internal/Vector3d;-><init>()V

    .line 447
    .local v9, "downInSensorFrame":Lcom/google/vr/sdk/base/sensors/internal/Vector3d;
    iget-object v1, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->so3SensorFromWorld:Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v9}, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->getColumn(ILcom/google/vr/sdk/base/sensors/internal/Vector3d;)V

    .line 449
    iget-object v1, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->mz:Lcom/google/vr/sdk/base/sensors/internal/Vector3d;

    iget-object v2, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->processMagTempV1:Lcom/google/vr/sdk/base/sensors/internal/Vector3d;

    invoke-static {v1, v9, v2}, Lcom/google/vr/sdk/base/sensors/internal/Vector3d;->cross(Lcom/google/vr/sdk/base/sensors/internal/Vector3d;Lcom/google/vr/sdk/base/sensors/internal/Vector3d;Lcom/google/vr/sdk/base/sensors/internal/Vector3d;)V

    .line 450
    iget-object v13, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->processMagTempV1:Lcom/google/vr/sdk/base/sensors/internal/Vector3d;

    .line 451
    .local v13, "perpToDownAndMag":Lcom/google/vr/sdk/base/sensors/internal/Vector3d;
    invoke-virtual {v13}, Lcom/google/vr/sdk/base/sensors/internal/Vector3d;->normalize()V

    .line 453
    iget-object v1, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->processMagTempV2:Lcom/google/vr/sdk/base/sensors/internal/Vector3d;

    invoke-static {v9, v13, v1}, Lcom/google/vr/sdk/base/sensors/internal/Vector3d;->cross(Lcom/google/vr/sdk/base/sensors/internal/Vector3d;Lcom/google/vr/sdk/base/sensors/internal/Vector3d;Lcom/google/vr/sdk/base/sensors/internal/Vector3d;)V

    .line 454
    iget-object v12, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->processMagTempV2:Lcom/google/vr/sdk/base/sensors/internal/Vector3d;

    .line 457
    .local v12, "magHorizontal":Lcom/google/vr/sdk/base/sensors/internal/Vector3d;
    invoke-virtual {v12}, Lcom/google/vr/sdk/base/sensors/internal/Vector3d;->normalize()V

    .line 458
    iget-object v1, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->mz:Lcom/google/vr/sdk/base/sensors/internal/Vector3d;

    invoke-virtual {v1, v12}, Lcom/google/vr/sdk/base/sensors/internal/Vector3d;->set(Lcom/google/vr/sdk/base/sensors/internal/Vector3d;)V

    .line 460
    iget-boolean v1, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->alignedToNorth:Z

    if-eqz v1, :cond_2

    .line 461
    iget-object v1, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->so3SensorFromWorld:Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    iget-object v2, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->mNu:Lcom/google/vr/sdk/base/sensors/internal/Vector3d;

    invoke-direct {p0, v1, v2}, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->magObservationFunctionForNumericalJacobian(Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;Lcom/google/vr/sdk/base/sensors/internal/Vector3d;)V

    .line 464
    const-wide v10, 0x3e7ad7f29abcaf48L    # 1.0E-7

    .line 465
    .local v10, "eps":D
    const/4 v8, 0x0

    .local v8, "dof":I
    :goto_1
    const/4 v1, 0x3

    if-ge v8, v1, :cond_1

    .line 466
    iget-object v0, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->processMagTempV3:Lcom/google/vr/sdk/base/sensors/internal/Vector3d;

    .line 467
    .local v0, "delta":Lcom/google/vr/sdk/base/sensors/internal/Vector3d;
    invoke-virtual {v0}, Lcom/google/vr/sdk/base/sensors/internal/Vector3d;->setZero()V

    .line 468
    invoke-virtual {v0, v8, v10, v11}, Lcom/google/vr/sdk/base/sensors/internal/Vector3d;->setComponent(ID)V

    .line 470
    iget-object v1, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->processMagTempM1:Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    invoke-static {v0, v1}, Lcom/google/vr/sdk/base/sensors/internal/So3Util;->sO3FromMu(Lcom/google/vr/sdk/base/sensors/internal/Vector3d;Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;)V

    .line 471
    iget-object v1, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->processMagTempM1:Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    iget-object v2, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->so3SensorFromWorld:Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    iget-object v3, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->processMagTempM2:Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    invoke-static {v1, v2, v3}, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->mult(Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;)V

    .line 473
    iget-object v1, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->processMagTempM2:Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    iget-object v2, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->processMagTempV4:Lcom/google/vr/sdk/base/sensors/internal/Vector3d;

    invoke-direct {p0, v1, v2}, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->magObservationFunctionForNumericalJacobian(Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;Lcom/google/vr/sdk/base/sensors/internal/Vector3d;)V

    .line 475
    iget-object v14, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->processMagTempV4:Lcom/google/vr/sdk/base/sensors/internal/Vector3d;

    .line 477
    .local v14, "withDelta":Lcom/google/vr/sdk/base/sensors/internal/Vector3d;
    iget-object v1, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->mNu:Lcom/google/vr/sdk/base/sensors/internal/Vector3d;

    iget-object v2, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->processMagTempV5:Lcom/google/vr/sdk/base/sensors/internal/Vector3d;

    invoke-static {v1, v14, v2}, Lcom/google/vr/sdk/base/sensors/internal/Vector3d;->sub(Lcom/google/vr/sdk/base/sensors/internal/Vector3d;Lcom/google/vr/sdk/base/sensors/internal/Vector3d;Lcom/google/vr/sdk/base/sensors/internal/Vector3d;)V

    .line 478
    iget-object v1, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->processMagTempV5:Lcom/google/vr/sdk/base/sensors/internal/Vector3d;

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    div-double/2addr v2, v10

    invoke-virtual {v1, v2, v3}, Lcom/google/vr/sdk/base/sensors/internal/Vector3d;->scale(D)V

    .line 480
    iget-object v1, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->mH:Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    iget-object v2, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->processMagTempV5:Lcom/google/vr/sdk/base/sensors/internal/Vector3d;

    invoke-virtual {v1, v8, v2}, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->setColumn(ILcom/google/vr/sdk/base/sensors/internal/Vector3d;)V

    .line 465
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 484
    .end local v0    # "delta":Lcom/google/vr/sdk/base/sensors/internal/Vector3d;
    .end local v14    # "withDelta":Lcom/google/vr/sdk/base/sensors/internal/Vector3d;
    :cond_1
    iget-object v1, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->mH:Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    iget-object v2, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->processMagTempM4:Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    invoke-virtual {v1, v2}, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->transpose(Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;)V

    .line 485
    iget-object v1, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->mP:Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    iget-object v2, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->processMagTempM4:Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    iget-object v3, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->processMagTempM5:Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    invoke-static {v1, v2, v3}, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->mult(Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;)V

    .line 486
    iget-object v1, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->mH:Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    iget-object v2, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->processMagTempM5:Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    iget-object v3, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->processMagTempM6:Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    invoke-static {v1, v2, v3}, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->mult(Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;)V

    .line 487
    iget-object v1, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->processMagTempM6:Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    iget-object v2, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->mR:Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    iget-object v3, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->mS:Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    invoke-static {v1, v2, v3}, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->add(Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;)V

    .line 490
    iget-object v1, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->mS:Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    iget-object v2, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->processMagTempM4:Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    invoke-virtual {v1, v2}, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->invert(Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;)Z

    .line 491
    iget-object v1, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->mH:Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    iget-object v2, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->processMagTempM5:Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    invoke-virtual {v1, v2}, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->transpose(Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;)V

    .line 492
    iget-object v1, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->processMagTempM5:Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    iget-object v2, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->processMagTempM4:Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    iget-object v3, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->processMagTempM6:Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    invoke-static {v1, v2, v3}, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->mult(Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;)V

    .line 493
    iget-object v1, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->mP:Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    iget-object v2, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->processMagTempM6:Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    iget-object v3, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->mK:Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    invoke-static {v1, v2, v3}, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->mult(Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;)V

    .line 496
    iget-object v1, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->mK:Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    iget-object v2, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->mNu:Lcom/google/vr/sdk/base/sensors/internal/Vector3d;

    iget-object v3, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->mx:Lcom/google/vr/sdk/base/sensors/internal/Vector3d;

    invoke-static {v1, v2, v3}, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->mult(Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;Lcom/google/vr/sdk/base/sensors/internal/Vector3d;Lcom/google/vr/sdk/base/sensors/internal/Vector3d;)V

    .line 499
    iget-object v1, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->mK:Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    iget-object v2, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->mH:Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    iget-object v3, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->processMagTempM4:Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    invoke-static {v1, v2, v3}, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->mult(Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;)V

    .line 500
    iget-object v1, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->processMagTempM5:Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    invoke-virtual {v1}, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->setIdentity()V

    .line 501
    iget-object v1, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->processMagTempM5:Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    iget-object v2, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->processMagTempM4:Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    invoke-virtual {v1, v2}, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->minusEquals(Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;)V

    .line 502
    iget-object v1, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->processMagTempM5:Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    iget-object v2, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->mP:Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    iget-object v3, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->processMagTempM4:Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    invoke-static {v1, v2, v3}, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->mult(Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;)V

    .line 503
    iget-object v1, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->mP:Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    iget-object v2, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->processMagTempM4:Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    invoke-virtual {v1, v2}, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->set(Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;)V

    .line 505
    iget-object v1, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->mx:Lcom/google/vr/sdk/base/sensors/internal/Vector3d;

    iget-object v2, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->so3LastMotion:Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    invoke-static {v1, v2}, Lcom/google/vr/sdk/base/sensors/internal/So3Util;->sO3FromMu(Lcom/google/vr/sdk/base/sensors/internal/Vector3d;Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;)V

    .line 507
    iget-object v1, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->so3LastMotion:Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    iget-object v2, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->so3SensorFromWorld:Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    iget-object v3, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->processMagTempM4:Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    invoke-static {v1, v2, v3}, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->mult(Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;)V

    .line 508
    iget-object v1, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->so3SensorFromWorld:Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    iget-object v2, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->processMagTempM4:Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    invoke-virtual {v1, v2}, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->set(Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;)V

    .line 510
    invoke-direct {p0}, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->updateCovariancesAfterMotion()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 440
    .end local v8    # "dof":I
    .end local v9    # "downInSensorFrame":Lcom/google/vr/sdk/base/sensors/internal/Vector3d;
    .end local v10    # "eps":D
    .end local v12    # "magHorizontal":Lcom/google/vr/sdk/base/sensors/internal/Vector3d;
    .end local v13    # "perpToDownAndMag":Lcom/google/vr/sdk/base/sensors/internal/Vector3d;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 514
    .restart local v9    # "downInSensorFrame":Lcom/google/vr/sdk/base/sensors/internal/Vector3d;
    .restart local v12    # "magHorizontal":Lcom/google/vr/sdk/base/sensors/internal/Vector3d;
    .restart local v13    # "perpToDownAndMag":Lcom/google/vr/sdk/base/sensors/internal/Vector3d;
    :cond_2
    :try_start_2
    iget-object v1, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->so3SensorFromWorld:Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    iget-object v2, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->mNu:Lcom/google/vr/sdk/base/sensors/internal/Vector3d;

    invoke-direct {p0, v1, v2}, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->magObservationFunctionForNumericalJacobian(Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;Lcom/google/vr/sdk/base/sensors/internal/Vector3d;)V

    .line 515
    iget-object v1, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->mNu:Lcom/google/vr/sdk/base/sensors/internal/Vector3d;

    iget-object v2, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->so3LastMotion:Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    invoke-static {v1, v2}, Lcom/google/vr/sdk/base/sensors/internal/So3Util;->sO3FromMu(Lcom/google/vr/sdk/base/sensors/internal/Vector3d;Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;)V

    .line 517
    iget-object v1, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->so3LastMotion:Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    iget-object v2, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->so3SensorFromWorld:Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    iget-object v3, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->processMagTempM4:Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    invoke-static {v1, v2, v3}, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->mult(Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;)V

    .line 518
    iget-object v1, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->so3SensorFromWorld:Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    iget-object v2, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->processMagTempM4:Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    invoke-virtual {v1, v2}, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->set(Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;)V

    .line 520
    invoke-direct {p0}, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->updateCovariancesAfterMotion()V

    .line 521
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->alignedToNorth:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method public declared-synchronized reset()V
    .locals 14

    .prologue
    .line 123
    monitor-enter p0

    const-wide/16 v0, 0x0

    :try_start_0
    iput-wide v0, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->sensorTimeStampGyro:J

    .line 125
    iget-object v0, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->so3SensorFromWorld:Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    invoke-virtual {v0}, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->setIdentity()V

    .line 126
    iget-object v0, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->so3LastMotion:Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    invoke-virtual {v0}, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->setIdentity()V

    .line 129
    const-wide/high16 v8, 0x4014000000000000L    # 5.0

    .line 131
    .local v8, "initialSigmaP":D
    iget-object v0, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->mP:Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    invoke-virtual {v0}, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->setZero()V

    .line 132
    iget-object v0, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->mP:Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    const-wide/high16 v2, 0x4039000000000000L    # 25.0

    invoke-virtual {v0, v2, v3}, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->setSameDiagonal(D)V

    .line 135
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    .line 136
    .local v10, "initialSigmaQ":D
    iget-object v0, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->mQ:Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    invoke-virtual {v0}, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->setZero()V

    .line 137
    iget-object v0, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->mQ:Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v0, v2, v3}, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->setSameDiagonal(D)V

    .line 140
    const-wide/high16 v12, 0x3fd0000000000000L    # 0.25

    .line 141
    .local v12, "initialSigmaR":D
    iget-object v0, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->mR:Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    invoke-virtual {v0}, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->setZero()V

    .line 142
    iget-object v0, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->mR:Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    const-wide/high16 v2, 0x3fb0000000000000L    # 0.0625

    invoke-virtual {v0, v2, v3}, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->setSameDiagonal(D)V

    .line 145
    iget-object v0, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->mRaccel:Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    invoke-virtual {v0}, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->setZero()V

    .line 146
    iget-object v0, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->mRaccel:Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    const-wide/high16 v2, 0x3fe2000000000000L    # 0.5625

    invoke-virtual {v0, v2, v3}, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->setSameDiagonal(D)V

    .line 148
    iget-object v0, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->mS:Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    invoke-virtual {v0}, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->setZero()V

    .line 149
    iget-object v0, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->mH:Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    invoke-virtual {v0}, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->setZero()V

    .line 150
    iget-object v0, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->mK:Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    invoke-virtual {v0}, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->setZero()V

    .line 151
    iget-object v0, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->mNu:Lcom/google/vr/sdk/base/sensors/internal/Vector3d;

    invoke-virtual {v0}, Lcom/google/vr/sdk/base/sensors/internal/Vector3d;->setZero()V

    .line 152
    iget-object v0, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->mz:Lcom/google/vr/sdk/base/sensors/internal/Vector3d;

    invoke-virtual {v0}, Lcom/google/vr/sdk/base/sensors/internal/Vector3d;->setZero()V

    .line 153
    iget-object v0, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->mh:Lcom/google/vr/sdk/base/sensors/internal/Vector3d;

    invoke-virtual {v0}, Lcom/google/vr/sdk/base/sensors/internal/Vector3d;->setZero()V

    .line 154
    iget-object v0, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->mu:Lcom/google/vr/sdk/base/sensors/internal/Vector3d;

    invoke-virtual {v0}, Lcom/google/vr/sdk/base/sensors/internal/Vector3d;->setZero()V

    .line 155
    iget-object v0, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->mx:Lcom/google/vr/sdk/base/sensors/internal/Vector3d;

    invoke-virtual {v0}, Lcom/google/vr/sdk/base/sensors/internal/Vector3d;->setZero()V

    .line 157
    iget-object v1, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->down:Lcom/google/vr/sdk/base/sensors/internal/Vector3d;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const-wide v6, 0x40239eb851eb851fL    # 9.81

    invoke-virtual/range {v1 .. v7}, Lcom/google/vr/sdk/base/sensors/internal/Vector3d;->set(DDD)V

    .line 158
    iget-object v1, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->north:Lcom/google/vr/sdk/base/sensors/internal/Vector3d;

    const-wide/16 v2, 0x0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const-wide/16 v6, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/google/vr/sdk/base/sensors/internal/Vector3d;->set(DDD)V

    .line 160
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->alignedToGravity:Z

    .line 161
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->alignedToNorth:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    monitor-exit p0

    return-void

    .line 123
    .end local v8    # "initialSigmaP":D
    .end local v10    # "initialSigmaQ":D
    .end local v12    # "initialSigmaR":D
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setHeadingDegrees(D)V
    .locals 15
    .param p1, "heading"    # D

    .prologue
    .line 205
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->getHeadingDegrees()D

    move-result-wide v2

    .line 206
    .local v2, "currentHeading":D
    sub-double v4, p1, v2

    .line 207
    .local v4, "deltaHeading":D
    const-wide v10, 0x4066800000000000L    # 180.0

    div-double v10, v4, v10

    const-wide v12, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    .line 208
    .local v8, "s":D
    const-wide v10, 0x4066800000000000L    # 180.0

    div-double v10, v4, v10

    const-wide v12, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    .line 210
    .local v0, "c":D
    const/4 v7, 0x3

    new-array v6, v7, [[D

    const/4 v7, 0x0

    const/4 v10, 0x3

    new-array v10, v10, [D

    const/4 v11, 0x0

    aput-wide v0, v10, v11

    const/4 v11, 0x1

    neg-double v12, v8

    aput-wide v12, v10, v11

    const/4 v11, 0x2

    const-wide/16 v12, 0x0

    aput-wide v12, v10, v11

    aput-object v10, v6, v7

    const/4 v7, 0x1

    const/4 v10, 0x3

    new-array v10, v10, [D

    const/4 v11, 0x0

    aput-wide v8, v10, v11

    const/4 v11, 0x1

    aput-wide v0, v10, v11

    const/4 v11, 0x2

    const-wide/16 v12, 0x0

    aput-wide v12, v10, v11

    aput-object v10, v6, v7

    const/4 v7, 0x2

    const/4 v10, 0x3

    new-array v10, v10, [D

    fill-array-data v10, :array_0

    aput-object v10, v6, v7

    .line 212
    .local v6, "deltaHeadingRotationVals":[[D
    iget-object v7, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->setHeadingDegreesTempM1:Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    invoke-static {v6, v7}, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->arrayAssign([[DLcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;)V

    .line 213
    iget-object v7, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->so3SensorFromWorld:Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    iget-object v10, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->setHeadingDegreesTempM1:Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    iget-object v11, p0, Lcom/google/vr/sdk/base/sensors/internal/OrientationEKF;->so3SensorFromWorld:Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;

    invoke-static {v7, v10, v11}, Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;->mult(Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;Lcom/google/vr/sdk/base/sensors/internal/Matrix3x3d;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 215
    monitor-exit p0

    return-void

    .line 205
    .end local v0    # "c":D
    .end local v2    # "currentHeading":D
    .end local v4    # "deltaHeading":D
    .end local v6    # "deltaHeadingRotationVals":[[D
    .end local v8    # "s":D
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    .line 210
    nop

    :array_0
    .array-data 8
        0x0
        0x0
        0x3ff0000000000000L    # 1.0
    .end array-data
.end method
