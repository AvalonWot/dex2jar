.class public Lcom/google/vr/sdk/base/testing/sensors/SensorEventProviderFromRecordedData;
.super Ljava/lang/Object;
.source "SensorEventProviderFromRecordedData.java"

# interfaces
.implements Lcom/google/vr/sdk/base/sensors/SensorEventProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/sdk/base/testing/sensors/SensorEventProviderFromRecordedData$EventClock;
    }
.end annotation


# instance fields
.field private eventClock:Lcom/google/vr/sdk/base/testing/sensors/SensorEventProviderFromRecordedData$EventClock;

.field private final events:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/vr/sdk/base/testing/sensors/SensorEventAndTime;",
            ">;"
        }
    .end annotation
.end field

.field private eventsIterator:Ljava/util/ListIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ListIterator",
            "<",
            "Lcom/google/vr/sdk/base/testing/sensors/SensorEventAndTime;",
            ">;"
        }
    .end annotation
.end field

.field private final registeredListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/hardware/SensorEventListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/vr/sdk/base/testing/sensors/SensorEventAndTime;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "events":Ljava/util/List;, "Ljava/util/List<Lcom/google/vr/sdk/base/testing/sensors/SensorEventAndTime;>;"
    const/4 v1, 0x0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object v1, p0, Lcom/google/vr/sdk/base/testing/sensors/SensorEventProviderFromRecordedData;->eventsIterator:Ljava/util/ListIterator;

    .line 27
    new-instance v0, Lcom/google/vr/sdk/base/testing/sensors/SensorEventProviderFromRecordedData$EventClock;

    invoke-direct {v0, v1}, Lcom/google/vr/sdk/base/testing/sensors/SensorEventProviderFromRecordedData$EventClock;-><init>(Lcom/google/vr/sdk/base/testing/sensors/SensorEventProviderFromRecordedData$1;)V

    iput-object v0, p0, Lcom/google/vr/sdk/base/testing/sensors/SensorEventProviderFromRecordedData;->eventClock:Lcom/google/vr/sdk/base/testing/sensors/SensorEventProviderFromRecordedData$EventClock;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/vr/sdk/base/testing/sensors/SensorEventProviderFromRecordedData;->registeredListeners:Ljava/util/List;

    .line 41
    iput-object p1, p0, Lcom/google/vr/sdk/base/testing/sensors/SensorEventProviderFromRecordedData;->events:Ljava/util/List;

    .line 42
    return-void
.end method


# virtual methods
.method public atEnd()Z
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/vr/sdk/base/testing/sensors/SensorEventProviderFromRecordedData;->eventsIterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getClock()Lcom/google/vr/sdk/base/sensors/Clock;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/google/vr/sdk/base/testing/sensors/SensorEventProviderFromRecordedData;->eventClock:Lcom/google/vr/sdk/base/testing/sensors/SensorEventProviderFromRecordedData$EventClock;

    return-object v0
.end method

.method public next()Z
    .locals 6

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/google/vr/sdk/base/testing/sensors/SensorEventProviderFromRecordedData;->atEnd()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 82
    const/4 v2, 0x0

    .line 93
    :goto_0
    return v2

    .line 84
    :cond_0
    iget-object v2, p0, Lcom/google/vr/sdk/base/testing/sensors/SensorEventProviderFromRecordedData;->eventsIterator:Ljava/util/ListIterator;

    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/vr/sdk/base/testing/sensors/SensorEventAndTime;

    .line 85
    .local v0, "currentEvent":Lcom/google/vr/sdk/base/testing/sensors/SensorEventAndTime;
    iget-object v2, p0, Lcom/google/vr/sdk/base/testing/sensors/SensorEventProviderFromRecordedData;->eventClock:Lcom/google/vr/sdk/base/testing/sensors/SensorEventProviderFromRecordedData$EventClock;

    iget-wide v4, v0, Lcom/google/vr/sdk/base/testing/sensors/SensorEventAndTime;->timeNs:J

    invoke-virtual {v2, v4, v5}, Lcom/google/vr/sdk/base/testing/sensors/SensorEventProviderFromRecordedData$EventClock;->setTimeNs(J)V

    .line 88
    iget-object v3, p0, Lcom/google/vr/sdk/base/testing/sensors/SensorEventProviderFromRecordedData;->registeredListeners:Ljava/util/List;

    monitor-enter v3

    .line 89
    :try_start_0
    iget-object v2, p0, Lcom/google/vr/sdk/base/testing/sensors/SensorEventProviderFromRecordedData;->registeredListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorEventListener;

    .line 90
    .local v1, "listener":Landroid/hardware/SensorEventListener;
    iget-object v4, v0, Lcom/google/vr/sdk/base/testing/sensors/SensorEventAndTime;->event:Landroid/hardware/SensorEvent;

    invoke-interface {v1, v4}, Landroid/hardware/SensorEventListener;->onSensorChanged(Landroid/hardware/SensorEvent;)V

    goto :goto_1

    .line 92
    .end local v1    # "listener":Landroid/hardware/SensorEventListener;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 93
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public registerListener(Landroid/hardware/SensorEventListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/hardware/SensorEventListener;

    .prologue
    .line 98
    iget-object v1, p0, Lcom/google/vr/sdk/base/testing/sensors/SensorEventProviderFromRecordedData;->registeredListeners:Ljava/util/List;

    monitor-enter v1

    .line 99
    :try_start_0
    iget-object v0, p0, Lcom/google/vr/sdk/base/testing/sensors/SensorEventProviderFromRecordedData;->registeredListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    monitor-exit v1

    .line 101
    return-void

    .line 100
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/vr/sdk/base/testing/sensors/SensorEventProviderFromRecordedData;->events:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vr/sdk/base/testing/sensors/SensorEventProviderFromRecordedData;->eventsIterator:Ljava/util/ListIterator;

    .line 58
    return-void
.end method

.method public start()V
    .locals 0

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/google/vr/sdk/base/testing/sensors/SensorEventProviderFromRecordedData;->reset()V

    .line 50
    invoke-virtual {p0}, Lcom/google/vr/sdk/base/testing/sensors/SensorEventProviderFromRecordedData;->next()Z

    .line 51
    return-void
.end method

.method public stop()V
    .locals 0

    .prologue
    .line 66
    return-void
.end method

.method public unregisterListener(Landroid/hardware/SensorEventListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/hardware/SensorEventListener;

    .prologue
    .line 105
    iget-object v1, p0, Lcom/google/vr/sdk/base/testing/sensors/SensorEventProviderFromRecordedData;->registeredListeners:Ljava/util/List;

    monitor-enter v1

    .line 106
    :try_start_0
    iget-object v0, p0, Lcom/google/vr/sdk/base/testing/sensors/SensorEventProviderFromRecordedData;->registeredListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 107
    monitor-exit v1

    .line 108
    return-void

    .line 107
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
