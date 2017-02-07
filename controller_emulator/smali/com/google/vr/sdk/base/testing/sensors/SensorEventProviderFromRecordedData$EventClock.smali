.class Lcom/google/vr/sdk/base/testing/sensors/SensorEventProviderFromRecordedData$EventClock;
.super Ljava/lang/Object;
.source "SensorEventProviderFromRecordedData.java"

# interfaces
.implements Lcom/google/vr/sdk/base/sensors/Clock;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/sdk/base/testing/sensors/SensorEventProviderFromRecordedData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EventClock"
.end annotation


# instance fields
.field private currentTimeNs:J


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/vr/sdk/base/testing/sensors/SensorEventProviderFromRecordedData$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/vr/sdk/base/testing/sensors/SensorEventProviderFromRecordedData$1;

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/google/vr/sdk/base/testing/sensors/SensorEventProviderFromRecordedData$EventClock;-><init>()V

    return-void
.end method


# virtual methods
.method public nanoTime()J
    .locals 2

    .prologue
    .line 124
    iget-wide v0, p0, Lcom/google/vr/sdk/base/testing/sensors/SensorEventProviderFromRecordedData$EventClock;->currentTimeNs:J

    return-wide v0
.end method

.method public setTimeNs(J)V
    .locals 1
    .param p1, "nanos"    # J

    .prologue
    .line 128
    iput-wide p1, p0, Lcom/google/vr/sdk/base/testing/sensors/SensorEventProviderFromRecordedData$EventClock;->currentTimeNs:J

    .line 129
    return-void
.end method
