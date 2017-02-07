.class public Lcom/google/vr/inputcompanion/SensorFusionJni;
.super Ljava/lang/Object;
.source "SensorFusionJni.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/inputcompanion/SensorFusionJni$SensorFusionAlgorithm;
    }
.end annotation

.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# instance fields
.field private initialized:Z

.field private nativeSensorFusionPtr:J

.field private final sensorFusionAlgorithm:Lcom/google/vr/inputcompanion/SensorFusionJni$SensorFusionAlgorithm;


# direct methods
.method public constructor <init>(Lcom/google/vr/inputcompanion/SensorFusionJni$SensorFusionAlgorithm;)V
    .locals 1
    .param p1, "sensorFusionAlgorithm"    # Lcom/google/vr/inputcompanion/SensorFusionJni$SensorFusionAlgorithm;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const-string v0, "sensor_fusion_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 23
    iput-object p1, p0, Lcom/google/vr/inputcompanion/SensorFusionJni;->sensorFusionAlgorithm:Lcom/google/vr/inputcompanion/SensorFusionJni$SensorFusionAlgorithm;

    .line 24
    return-void
.end method

.method private native nativeAddAccelMeasurement(J[FJ)V
.end method

.method private native nativeAddGyroMeasurement(J[FJ)V
.end method

.method private native nativeAddMagMeasurement(J[FJ)V
.end method

.method private native nativeDestroy(J)V
.end method

.method private native nativeGetOrientation(J[F)V
.end method

.method private native nativeInit(I)J
.end method


# virtual methods
.method public declared-synchronized addAccelMeasurement([FJ)V
    .locals 6
    .param p1, "sample"    # [F
    .param p2, "timestampNs"    # J

    .prologue
    .line 71
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/vr/inputcompanion/SensorFusionJni;->initialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 75
    :goto_0
    monitor-exit p0

    return-void

    .line 74
    :cond_0
    :try_start_1
    iget-wide v1, p0, Lcom/google/vr/inputcompanion/SensorFusionJni;->nativeSensorFusionPtr:J

    move-object v0, p0

    move-object v3, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/vr/inputcompanion/SensorFusionJni;->nativeAddAccelMeasurement(J[FJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 71
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized addGyroMeasurement([FJ)V
    .locals 6
    .param p1, "sample"    # [F
    .param p2, "timestampNs"    # J

    .prologue
    .line 57
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/vr/inputcompanion/SensorFusionJni;->initialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 61
    :goto_0
    monitor-exit p0

    return-void

    .line 60
    :cond_0
    :try_start_1
    iget-wide v1, p0, Lcom/google/vr/inputcompanion/SensorFusionJni;->nativeSensorFusionPtr:J

    move-object v0, p0

    move-object v3, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/vr/inputcompanion/SensorFusionJni;->nativeAddGyroMeasurement(J[FJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 57
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized addMagMeasurement([FJ)V
    .locals 6
    .param p1, "sample"    # [F
    .param p2, "timestampNs"    # J

    .prologue
    .line 86
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/vr/inputcompanion/SensorFusionJni;->initialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 90
    :goto_0
    monitor-exit p0

    return-void

    .line 89
    :cond_0
    :try_start_1
    iget-wide v1, p0, Lcom/google/vr/inputcompanion/SensorFusionJni;->nativeSensorFusionPtr:J

    move-object v0, p0

    move-object v3, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/vr/inputcompanion/SensorFusionJni;->nativeAddMagMeasurement(J[FJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 86
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized deInit()V
    .locals 2

    .prologue
    .line 42
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/vr/inputcompanion/SensorFusionJni;->initialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 47
    :goto_0
    monitor-exit p0

    return-void

    .line 45
    :cond_0
    :try_start_1
    iget-wide v0, p0, Lcom/google/vr/inputcompanion/SensorFusionJni;->nativeSensorFusionPtr:J

    invoke-direct {p0, v0, v1}, Lcom/google/vr/inputcompanion/SensorFusionJni;->nativeDestroy(J)V

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/vr/inputcompanion/SensorFusionJni;->initialized:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 42
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getOrientation([F)V
    .locals 2
    .param p1, "orientation"    # [F

    .prologue
    .line 98
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/vr/inputcompanion/SensorFusionJni;->initialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 102
    :goto_0
    monitor-exit p0

    return-void

    .line 101
    :cond_0
    :try_start_1
    iget-wide v0, p0, Lcom/google/vr/inputcompanion/SensorFusionJni;->nativeSensorFusionPtr:J

    invoke-direct {p0, v0, v1, p1}, Lcom/google/vr/inputcompanion/SensorFusionJni;->nativeGetOrientation(J[F)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 98
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized init()V
    .locals 2

    .prologue
    .line 30
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/vr/inputcompanion/SensorFusionJni;->initialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 35
    :goto_0
    monitor-exit p0

    return-void

    .line 33
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/vr/inputcompanion/SensorFusionJni;->sensorFusionAlgorithm:Lcom/google/vr/inputcompanion/SensorFusionJni$SensorFusionAlgorithm;

    invoke-virtual {v0}, Lcom/google/vr/inputcompanion/SensorFusionJni$SensorFusionAlgorithm;->ordinal()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/vr/inputcompanion/SensorFusionJni;->nativeInit(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/vr/inputcompanion/SensorFusionJni;->nativeSensorFusionPtr:J

    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/vr/inputcompanion/SensorFusionJni;->initialized:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 30
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
