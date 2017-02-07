.class public Lcom/google/vr/sdk/base/testing/sensors/SensorEventAndTime;
.super Ljava/lang/Object;
.source "SensorEventAndTime.java"


# instance fields
.field public event:Landroid/hardware/SensorEvent;

.field public timeNs:J


# direct methods
.method public constructor <init>(Landroid/hardware/SensorEvent;J)V
    .locals 0
    .param p1, "event"    # Landroid/hardware/SensorEvent;
    .param p2, "timeNs"    # J

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/google/vr/sdk/base/testing/sensors/SensorEventAndTime;->event:Landroid/hardware/SensorEvent;

    .line 22
    iput-wide p2, p0, Lcom/google/vr/sdk/base/testing/sensors/SensorEventAndTime;->timeNs:J

    .line 23
    return-void
.end method
