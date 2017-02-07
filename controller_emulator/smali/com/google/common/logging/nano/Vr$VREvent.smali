.class public final Lcom/google/common/logging/nano/Vr$VREvent;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Vr.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/logging/nano/Vr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VREvent"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;,
        Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate;,
        Lcom/google/common/logging/nano/Vr$VREvent$StreetView;,
        Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;,
        Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;,
        Lcom/google/common/logging/nano/Vr$VREvent$Launcher;,
        Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;,
        Lcom/google/common/logging/nano/Vr$VREvent$VrCore;,
        Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;,
        Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget;,
        Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;,
        Lcom/google/common/logging/nano/Vr$VREvent$SensorStats;,
        Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;,
        Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData;,
        Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;,
        Lcom/google/common/logging/nano/Vr$VREvent$QrCodeScan;,
        Lcom/google/common/logging/nano/Vr$VREvent$VrHome;,
        Lcom/google/common/logging/nano/Vr$VREvent$Photos;,
        Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;,
        Lcom/google/common/logging/nano/Vr$VREvent$DoublePrecisionTransform;,
        Lcom/google/common/logging/nano/Vr$VREvent$Transform;,
        Lcom/google/common/logging/nano/Vr$VREvent$Renderer;,
        Lcom/google/common/logging/nano/Vr$VREvent$Application;,
        Lcom/google/common/logging/nano/Vr$VREvent$HeadMount;,
        Lcom/google/common/logging/nano/Vr$VREvent$EventType;,
        Lcom/google/common/logging/nano/Vr$VREvent$Bucket;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/common/logging/nano/Vr$VREvent;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent;


# instance fields
.field public application:Lcom/google/common/logging/nano/Vr$VREvent$Application;

.field public audioStats:Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;

.field public cohort:Ljava/lang/String;

.field public cyclops:Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;

.field public durationMs:Ljava/lang/Long;

.field public earthVr:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;

.field public embedVrWidget:Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget;

.field public gConfigUpdate:Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate;

.field public headMount:Lcom/google/common/logging/nano/Vr$VREvent$HeadMount;

.field public installedVrApplications:[Lcom/google/common/logging/nano/Vr$VREvent$Application;

.field public jumpInspector:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;

.field public keyboard:Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;

.field public launcher:Lcom/google/common/logging/nano/Vr$VREvent$Launcher;

.field public lifetimeCountBucket:Ljava/lang/Integer;

.field public lullaby:Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;

.field public performanceStats:Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;

.field public photos:Lcom/google/common/logging/nano/Vr$VREvent$Photos;

.field public qrCodeScan:Lcom/google/common/logging/nano/Vr$VREvent$QrCodeScan;

.field public renderer:Lcom/google/common/logging/nano/Vr$VREvent$Renderer;

.field public sdkConfiguration:Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;

.field public sensorStats:Lcom/google/common/logging/nano/Vr$VREvent$SensorStats;

.field public streetView:Lcom/google/common/logging/nano/Vr$VREvent$StreetView;

.field public vrCore:Lcom/google/common/logging/nano/Vr$VREvent$VrCore;

.field public vrHome:Lcom/google/common/logging/nano/Vr$VREvent$VrHome;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12173
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 12174
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent;->clear()Lcom/google/common/logging/nano/Vr$VREvent;

    .line 12175
    return-void
.end method

.method public static emptyArray()[Lcom/google/common/logging/nano/Vr$VREvent;
    .locals 2

    .prologue
    .line 12088
    sget-object v0, Lcom/google/common/logging/nano/Vr$VREvent;->_emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent;

    if-nez v0, :cond_1

    .line 12089
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 12091
    :try_start_0
    sget-object v0, Lcom/google/common/logging/nano/Vr$VREvent;->_emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent;

    if-nez v0, :cond_0

    .line 12092
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/common/logging/nano/Vr$VREvent;

    sput-object v0, Lcom/google/common/logging/nano/Vr$VREvent;->_emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent;

    .line 12094
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12096
    :cond_1
    sget-object v0, Lcom/google/common/logging/nano/Vr$VREvent;->_emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent;

    return-object v0

    .line 12094
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 12687
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/common/logging/nano/Vr$VREvent;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/common/logging/nano/Vr$VREvent;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 12681
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/nano/Vr$VREvent;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/common/logging/nano/Vr$VREvent;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 12178
    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->headMount:Lcom/google/common/logging/nano/Vr$VREvent$HeadMount;

    .line 12179
    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->application:Lcom/google/common/logging/nano/Vr$VREvent$Application;

    .line 12180
    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->durationMs:Ljava/lang/Long;

    .line 12181
    invoke-static {}, Lcom/google/common/logging/nano/Vr$VREvent$Application;->emptyArray()[Lcom/google/common/logging/nano/Vr$VREvent$Application;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->installedVrApplications:[Lcom/google/common/logging/nano/Vr$VREvent$Application;

    .line 12182
    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->cyclops:Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;

    .line 12183
    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->qrCodeScan:Lcom/google/common/logging/nano/Vr$VREvent$QrCodeScan;

    .line 12184
    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->cohort:Ljava/lang/String;

    .line 12185
    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->performanceStats:Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;

    .line 12186
    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->sensorStats:Lcom/google/common/logging/nano/Vr$VREvent$SensorStats;

    .line 12187
    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->audioStats:Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;

    .line 12188
    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->embedVrWidget:Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget;

    .line 12189
    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->vrCore:Lcom/google/common/logging/nano/Vr$VREvent$VrCore;

    .line 12190
    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->earthVr:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;

    .line 12191
    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->launcher:Lcom/google/common/logging/nano/Vr$VREvent$Launcher;

    .line 12192
    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->keyboard:Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;

    .line 12193
    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->renderer:Lcom/google/common/logging/nano/Vr$VREvent$Renderer;

    .line 12194
    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->lullaby:Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;

    .line 12195
    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->streetView:Lcom/google/common/logging/nano/Vr$VREvent$StreetView;

    .line 12196
    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->photos:Lcom/google/common/logging/nano/Vr$VREvent$Photos;

    .line 12197
    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->vrHome:Lcom/google/common/logging/nano/Vr$VREvent$VrHome;

    .line 12198
    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->sdkConfiguration:Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;

    .line 12199
    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->gConfigUpdate:Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate;

    .line 12200
    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->jumpInspector:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;

    .line 12201
    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 12202
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->cachedSize:I

    .line 12203
    return-object p0
.end method

.method public clone()Lcom/google/common/logging/nano/Vr$VREvent;
    .locals 5

    .prologue
    .line 12209
    :try_start_0
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->clone()Lcom/google/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/nano/Vr$VREvent;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12213
    .local v0, "cloned":Lcom/google/common/logging/nano/Vr$VREvent;
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent;->headMount:Lcom/google/common/logging/nano/Vr$VREvent$HeadMount;

    if-eqz v3, :cond_0

    .line 12214
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent;->headMount:Lcom/google/common/logging/nano/Vr$VREvent$HeadMount;

    invoke-virtual {v3}, Lcom/google/common/logging/nano/Vr$VREvent$HeadMount;->clone()Lcom/google/common/logging/nano/Vr$VREvent$HeadMount;

    move-result-object v3

    iput-object v3, v0, Lcom/google/common/logging/nano/Vr$VREvent;->headMount:Lcom/google/common/logging/nano/Vr$VREvent$HeadMount;

    .line 12216
    :cond_0
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent;->application:Lcom/google/common/logging/nano/Vr$VREvent$Application;

    if-eqz v3, :cond_1

    .line 12217
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent;->application:Lcom/google/common/logging/nano/Vr$VREvent$Application;

    invoke-virtual {v3}, Lcom/google/common/logging/nano/Vr$VREvent$Application;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Application;

    move-result-object v3

    iput-object v3, v0, Lcom/google/common/logging/nano/Vr$VREvent;->application:Lcom/google/common/logging/nano/Vr$VREvent$Application;

    .line 12219
    :cond_1
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent;->installedVrApplications:[Lcom/google/common/logging/nano/Vr$VREvent$Application;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent;->installedVrApplications:[Lcom/google/common/logging/nano/Vr$VREvent$Application;

    array-length v3, v3

    if-lez v3, :cond_3

    .line 12220
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent;->installedVrApplications:[Lcom/google/common/logging/nano/Vr$VREvent$Application;

    array-length v3, v3

    new-array v3, v3, [Lcom/google/common/logging/nano/Vr$VREvent$Application;

    iput-object v3, v0, Lcom/google/common/logging/nano/Vr$VREvent;->installedVrApplications:[Lcom/google/common/logging/nano/Vr$VREvent$Application;

    .line 12221
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent;->installedVrApplications:[Lcom/google/common/logging/nano/Vr$VREvent$Application;

    array-length v3, v3

    if-ge v2, v3, :cond_3

    .line 12222
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent;->installedVrApplications:[Lcom/google/common/logging/nano/Vr$VREvent$Application;

    aget-object v3, v3, v2

    if-eqz v3, :cond_2

    .line 12223
    iget-object v3, v0, Lcom/google/common/logging/nano/Vr$VREvent;->installedVrApplications:[Lcom/google/common/logging/nano/Vr$VREvent$Application;

    iget-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent;->installedVrApplications:[Lcom/google/common/logging/nano/Vr$VREvent$Application;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Lcom/google/common/logging/nano/Vr$VREvent$Application;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Application;

    move-result-object v4

    aput-object v4, v3, v2

    .line 12221
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 12210
    .end local v0    # "cloned":Lcom/google/common/logging/nano/Vr$VREvent;
    .end local v2    # "i":I
    :catch_0
    move-exception v1

    .line 12211
    .local v1, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 12227
    .end local v1    # "e":Ljava/lang/CloneNotSupportedException;
    .restart local v0    # "cloned":Lcom/google/common/logging/nano/Vr$VREvent;
    :cond_3
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent;->cyclops:Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;

    if-eqz v3, :cond_4

    .line 12228
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent;->cyclops:Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;

    invoke-virtual {v3}, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;

    move-result-object v3

    iput-object v3, v0, Lcom/google/common/logging/nano/Vr$VREvent;->cyclops:Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;

    .line 12230
    :cond_4
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent;->qrCodeScan:Lcom/google/common/logging/nano/Vr$VREvent$QrCodeScan;

    if-eqz v3, :cond_5

    .line 12231
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent;->qrCodeScan:Lcom/google/common/logging/nano/Vr$VREvent$QrCodeScan;

    invoke-virtual {v3}, Lcom/google/common/logging/nano/Vr$VREvent$QrCodeScan;->clone()Lcom/google/common/logging/nano/Vr$VREvent$QrCodeScan;

    move-result-object v3

    iput-object v3, v0, Lcom/google/common/logging/nano/Vr$VREvent;->qrCodeScan:Lcom/google/common/logging/nano/Vr$VREvent$QrCodeScan;

    .line 12233
    :cond_5
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent;->performanceStats:Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;

    if-eqz v3, :cond_6

    .line 12234
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent;->performanceStats:Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;

    invoke-virtual {v3}, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->clone()Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;

    move-result-object v3

    iput-object v3, v0, Lcom/google/common/logging/nano/Vr$VREvent;->performanceStats:Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;

    .line 12236
    :cond_6
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent;->sensorStats:Lcom/google/common/logging/nano/Vr$VREvent$SensorStats;

    if-eqz v3, :cond_7

    .line 12237
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent;->sensorStats:Lcom/google/common/logging/nano/Vr$VREvent$SensorStats;

    invoke-virtual {v3}, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats;->clone()Lcom/google/common/logging/nano/Vr$VREvent$SensorStats;

    move-result-object v3

    iput-object v3, v0, Lcom/google/common/logging/nano/Vr$VREvent;->sensorStats:Lcom/google/common/logging/nano/Vr$VREvent$SensorStats;

    .line 12239
    :cond_7
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent;->audioStats:Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;

    if-eqz v3, :cond_8

    .line 12240
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent;->audioStats:Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;

    invoke-virtual {v3}, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->clone()Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;

    move-result-object v3

    iput-object v3, v0, Lcom/google/common/logging/nano/Vr$VREvent;->audioStats:Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;

    .line 12242
    :cond_8
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent;->embedVrWidget:Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget;

    if-eqz v3, :cond_9

    .line 12243
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent;->embedVrWidget:Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget;

    invoke-virtual {v3}, Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget;->clone()Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget;

    move-result-object v3

    iput-object v3, v0, Lcom/google/common/logging/nano/Vr$VREvent;->embedVrWidget:Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget;

    .line 12245
    :cond_9
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent;->vrCore:Lcom/google/common/logging/nano/Vr$VREvent$VrCore;

    if-eqz v3, :cond_a

    .line 12246
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent;->vrCore:Lcom/google/common/logging/nano/Vr$VREvent$VrCore;

    invoke-virtual {v3}, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->clone()Lcom/google/common/logging/nano/Vr$VREvent$VrCore;

    move-result-object v3

    iput-object v3, v0, Lcom/google/common/logging/nano/Vr$VREvent;->vrCore:Lcom/google/common/logging/nano/Vr$VREvent$VrCore;

    .line 12248
    :cond_a
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent;->earthVr:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;

    if-eqz v3, :cond_b

    .line 12249
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent;->earthVr:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;

    invoke-virtual {v3}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->clone()Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;

    move-result-object v3

    iput-object v3, v0, Lcom/google/common/logging/nano/Vr$VREvent;->earthVr:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;

    .line 12251
    :cond_b
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent;->launcher:Lcom/google/common/logging/nano/Vr$VREvent$Launcher;

    if-eqz v3, :cond_c

    .line 12252
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent;->launcher:Lcom/google/common/logging/nano/Vr$VREvent$Launcher;

    invoke-virtual {v3}, Lcom/google/common/logging/nano/Vr$VREvent$Launcher;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Launcher;

    move-result-object v3

    iput-object v3, v0, Lcom/google/common/logging/nano/Vr$VREvent;->launcher:Lcom/google/common/logging/nano/Vr$VREvent$Launcher;

    .line 12254
    :cond_c
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent;->keyboard:Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;

    if-eqz v3, :cond_d

    .line 12255
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent;->keyboard:Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;

    invoke-virtual {v3}, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;

    move-result-object v3

    iput-object v3, v0, Lcom/google/common/logging/nano/Vr$VREvent;->keyboard:Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;

    .line 12257
    :cond_d
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent;->renderer:Lcom/google/common/logging/nano/Vr$VREvent$Renderer;

    if-eqz v3, :cond_e

    .line 12258
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent;->renderer:Lcom/google/common/logging/nano/Vr$VREvent$Renderer;

    invoke-virtual {v3}, Lcom/google/common/logging/nano/Vr$VREvent$Renderer;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Renderer;

    move-result-object v3

    iput-object v3, v0, Lcom/google/common/logging/nano/Vr$VREvent;->renderer:Lcom/google/common/logging/nano/Vr$VREvent$Renderer;

    .line 12260
    :cond_e
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent;->lullaby:Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;

    if-eqz v3, :cond_f

    .line 12261
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent;->lullaby:Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;

    invoke-virtual {v3}, Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;

    move-result-object v3

    iput-object v3, v0, Lcom/google/common/logging/nano/Vr$VREvent;->lullaby:Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;

    .line 12263
    :cond_f
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent;->streetView:Lcom/google/common/logging/nano/Vr$VREvent$StreetView;

    if-eqz v3, :cond_10

    .line 12264
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent;->streetView:Lcom/google/common/logging/nano/Vr$VREvent$StreetView;

    invoke-virtual {v3}, Lcom/google/common/logging/nano/Vr$VREvent$StreetView;->clone()Lcom/google/common/logging/nano/Vr$VREvent$StreetView;

    move-result-object v3

    iput-object v3, v0, Lcom/google/common/logging/nano/Vr$VREvent;->streetView:Lcom/google/common/logging/nano/Vr$VREvent$StreetView;

    .line 12266
    :cond_10
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent;->photos:Lcom/google/common/logging/nano/Vr$VREvent$Photos;

    if-eqz v3, :cond_11

    .line 12267
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent;->photos:Lcom/google/common/logging/nano/Vr$VREvent$Photos;

    invoke-virtual {v3}, Lcom/google/common/logging/nano/Vr$VREvent$Photos;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Photos;

    move-result-object v3

    iput-object v3, v0, Lcom/google/common/logging/nano/Vr$VREvent;->photos:Lcom/google/common/logging/nano/Vr$VREvent$Photos;

    .line 12269
    :cond_11
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent;->vrHome:Lcom/google/common/logging/nano/Vr$VREvent$VrHome;

    if-eqz v3, :cond_12

    .line 12270
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent;->vrHome:Lcom/google/common/logging/nano/Vr$VREvent$VrHome;

    invoke-virtual {v3}, Lcom/google/common/logging/nano/Vr$VREvent$VrHome;->clone()Lcom/google/common/logging/nano/Vr$VREvent$VrHome;

    move-result-object v3

    iput-object v3, v0, Lcom/google/common/logging/nano/Vr$VREvent;->vrHome:Lcom/google/common/logging/nano/Vr$VREvent$VrHome;

    .line 12272
    :cond_12
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent;->sdkConfiguration:Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;

    if-eqz v3, :cond_13

    .line 12273
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent;->sdkConfiguration:Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;

    invoke-virtual {v3}, Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;->clone()Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;

    move-result-object v3

    iput-object v3, v0, Lcom/google/common/logging/nano/Vr$VREvent;->sdkConfiguration:Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;

    .line 12275
    :cond_13
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent;->gConfigUpdate:Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate;

    if-eqz v3, :cond_14

    .line 12276
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent;->gConfigUpdate:Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate;

    invoke-virtual {v3}, Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate;->clone()Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate;

    move-result-object v3

    iput-object v3, v0, Lcom/google/common/logging/nano/Vr$VREvent;->gConfigUpdate:Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate;

    .line 12278
    :cond_14
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent;->jumpInspector:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;

    if-eqz v3, :cond_15

    .line 12279
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent;->jumpInspector:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;

    invoke-virtual {v3}, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;->clone()Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;

    move-result-object v3

    iput-object v3, v0, Lcom/google/common/logging/nano/Vr$VREvent;->jumpInspector:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;

    .line 12281
    :cond_15
    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/nano/ExtendableMessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 10
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent;->clone()Lcom/google/common/logging/nano/Vr$VREvent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 10
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent;->clone()Lcom/google/common/logging/nano/Vr$VREvent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 10
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent;->clone()Lcom/google/common/logging/nano/Vr$VREvent;

    move-result-object v0

    return-object v0
.end method

.method protected computeSerializedSize()I
    .locals 6

    .prologue
    .line 12370
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v2

    .line 12371
    .local v2, "size":I
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent;->headMount:Lcom/google/common/logging/nano/Vr$VREvent$HeadMount;

    if-eqz v3, :cond_0

    .line 12372
    const/4 v3, 0x1

    iget-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent;->headMount:Lcom/google/common/logging/nano/Vr$VREvent$HeadMount;

    .line 12373
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 12375
    :cond_0
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent;->application:Lcom/google/common/logging/nano/Vr$VREvent$Application;

    if-eqz v3, :cond_1

    .line 12376
    const/4 v3, 0x2

    iget-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent;->application:Lcom/google/common/logging/nano/Vr$VREvent$Application;

    .line 12377
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 12379
    :cond_1
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent;->durationMs:Ljava/lang/Long;

    if-eqz v3, :cond_2

    .line 12380
    const/4 v3, 0x3

    iget-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent;->durationMs:Ljava/lang/Long;

    .line 12381
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v2, v3

    .line 12383
    :cond_2
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent;->installedVrApplications:[Lcom/google/common/logging/nano/Vr$VREvent$Application;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent;->installedVrApplications:[Lcom/google/common/logging/nano/Vr$VREvent$Application;

    array-length v3, v3

    if-lez v3, :cond_4

    .line 12384
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent;->installedVrApplications:[Lcom/google/common/logging/nano/Vr$VREvent$Application;

    array-length v3, v3

    if-ge v1, v3, :cond_4

    .line 12385
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent;->installedVrApplications:[Lcom/google/common/logging/nano/Vr$VREvent$Application;

    aget-object v0, v3, v1

    .line 12386
    .local v0, "element":Lcom/google/common/logging/nano/Vr$VREvent$Application;
    if-eqz v0, :cond_3

    .line 12387
    const/4 v3, 0x4

    .line 12388
    invoke-static {v3, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 12384
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 12392
    .end local v0    # "element":Lcom/google/common/logging/nano/Vr$VREvent$Application;
    .end local v1    # "i":I
    :cond_4
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent;->cyclops:Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;

    if-eqz v3, :cond_5

    .line 12393
    const/4 v3, 0x5

    iget-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent;->cyclops:Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;

    .line 12394
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 12396
    :cond_5
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent;->qrCodeScan:Lcom/google/common/logging/nano/Vr$VREvent$QrCodeScan;

    if-eqz v3, :cond_6

    .line 12397
    const/4 v3, 0x6

    iget-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent;->qrCodeScan:Lcom/google/common/logging/nano/Vr$VREvent$QrCodeScan;

    .line 12398
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 12400
    :cond_6
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent;->cohort:Ljava/lang/String;

    if-eqz v3, :cond_7

    .line 12401
    const/4 v3, 0x7

    iget-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent;->cohort:Ljava/lang/String;

    .line 12402
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 12404
    :cond_7
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent;->lifetimeCountBucket:Ljava/lang/Integer;

    if-eqz v3, :cond_8

    .line 12405
    const/16 v3, 0x8

    iget-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent;->lifetimeCountBucket:Ljava/lang/Integer;

    .line 12406
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 12408
    :cond_8
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent;->performanceStats:Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;

    if-eqz v3, :cond_9

    .line 12409
    const/16 v3, 0x9

    iget-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent;->performanceStats:Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;

    .line 12410
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 12412
    :cond_9
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent;->sensorStats:Lcom/google/common/logging/nano/Vr$VREvent$SensorStats;

    if-eqz v3, :cond_a

    .line 12413
    const/16 v3, 0xa

    iget-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent;->sensorStats:Lcom/google/common/logging/nano/Vr$VREvent$SensorStats;

    .line 12414
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 12416
    :cond_a
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent;->audioStats:Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;

    if-eqz v3, :cond_b

    .line 12417
    const/16 v3, 0xb

    iget-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent;->audioStats:Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;

    .line 12418
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 12420
    :cond_b
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent;->embedVrWidget:Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget;

    if-eqz v3, :cond_c

    .line 12421
    const/16 v3, 0xc

    iget-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent;->embedVrWidget:Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget;

    .line 12422
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 12424
    :cond_c
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent;->vrCore:Lcom/google/common/logging/nano/Vr$VREvent$VrCore;

    if-eqz v3, :cond_d

    .line 12425
    const/16 v3, 0xd

    iget-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent;->vrCore:Lcom/google/common/logging/nano/Vr$VREvent$VrCore;

    .line 12426
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 12428
    :cond_d
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent;->earthVr:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;

    if-eqz v3, :cond_e

    .line 12429
    const/16 v3, 0xe

    iget-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent;->earthVr:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;

    .line 12430
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 12432
    :cond_e
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent;->launcher:Lcom/google/common/logging/nano/Vr$VREvent$Launcher;

    if-eqz v3, :cond_f

    .line 12433
    const/16 v3, 0xf

    iget-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent;->launcher:Lcom/google/common/logging/nano/Vr$VREvent$Launcher;

    .line 12434
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 12436
    :cond_f
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent;->keyboard:Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;

    if-eqz v3, :cond_10

    .line 12437
    const/16 v3, 0x10

    iget-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent;->keyboard:Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;

    .line 12438
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 12440
    :cond_10
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent;->renderer:Lcom/google/common/logging/nano/Vr$VREvent$Renderer;

    if-eqz v3, :cond_11

    .line 12441
    const/16 v3, 0x11

    iget-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent;->renderer:Lcom/google/common/logging/nano/Vr$VREvent$Renderer;

    .line 12442
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 12444
    :cond_11
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent;->lullaby:Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;

    if-eqz v3, :cond_12

    .line 12445
    const/16 v3, 0x12

    iget-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent;->lullaby:Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;

    .line 12446
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 12448
    :cond_12
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent;->streetView:Lcom/google/common/logging/nano/Vr$VREvent$StreetView;

    if-eqz v3, :cond_13

    .line 12449
    const/16 v3, 0x13

    iget-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent;->streetView:Lcom/google/common/logging/nano/Vr$VREvent$StreetView;

    .line 12450
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 12452
    :cond_13
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent;->photos:Lcom/google/common/logging/nano/Vr$VREvent$Photos;

    if-eqz v3, :cond_14

    .line 12453
    const/16 v3, 0x14

    iget-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent;->photos:Lcom/google/common/logging/nano/Vr$VREvent$Photos;

    .line 12454
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 12456
    :cond_14
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent;->vrHome:Lcom/google/common/logging/nano/Vr$VREvent$VrHome;

    if-eqz v3, :cond_15

    .line 12457
    const/16 v3, 0x15

    iget-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent;->vrHome:Lcom/google/common/logging/nano/Vr$VREvent$VrHome;

    .line 12458
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 12460
    :cond_15
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent;->sdkConfiguration:Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;

    if-eqz v3, :cond_16

    .line 12461
    const/16 v3, 0x16

    iget-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent;->sdkConfiguration:Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;

    .line 12462
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 12464
    :cond_16
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent;->gConfigUpdate:Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate;

    if-eqz v3, :cond_17

    .line 12465
    const/16 v3, 0x17

    iget-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent;->gConfigUpdate:Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate;

    .line 12466
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 12468
    :cond_17
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent;->jumpInspector:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;

    if-eqz v3, :cond_18

    .line 12469
    const/16 v3, 0x18

    iget-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent;->jumpInspector:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;

    .line 12470
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 12472
    :cond_18
    return v2
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent;
    .locals 8
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 12480
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 12481
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 12485
    invoke-super {p0, p1, v3}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 12486
    :sswitch_0
    return-object p0

    .line 12491
    :sswitch_1
    iget-object v6, p0, Lcom/google/common/logging/nano/Vr$VREvent;->headMount:Lcom/google/common/logging/nano/Vr$VREvent$HeadMount;

    if-nez v6, :cond_1

    .line 12492
    new-instance v6, Lcom/google/common/logging/nano/Vr$VREvent$HeadMount;

    invoke-direct {v6}, Lcom/google/common/logging/nano/Vr$VREvent$HeadMount;-><init>()V

    iput-object v6, p0, Lcom/google/common/logging/nano/Vr$VREvent;->headMount:Lcom/google/common/logging/nano/Vr$VREvent$HeadMount;

    .line 12494
    :cond_1
    iget-object v6, p0, Lcom/google/common/logging/nano/Vr$VREvent;->headMount:Lcom/google/common/logging/nano/Vr$VREvent$HeadMount;

    invoke-virtual {p1, v6}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 12498
    :sswitch_2
    iget-object v6, p0, Lcom/google/common/logging/nano/Vr$VREvent;->application:Lcom/google/common/logging/nano/Vr$VREvent$Application;

    if-nez v6, :cond_2

    .line 12499
    new-instance v6, Lcom/google/common/logging/nano/Vr$VREvent$Application;

    invoke-direct {v6}, Lcom/google/common/logging/nano/Vr$VREvent$Application;-><init>()V

    iput-object v6, p0, Lcom/google/common/logging/nano/Vr$VREvent;->application:Lcom/google/common/logging/nano/Vr$VREvent$Application;

    .line 12501
    :cond_2
    iget-object v6, p0, Lcom/google/common/logging/nano/Vr$VREvent;->application:Lcom/google/common/logging/nano/Vr$VREvent$Application;

    invoke-virtual {p1, v6}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 12505
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iput-object v6, p0, Lcom/google/common/logging/nano/Vr$VREvent;->durationMs:Ljava/lang/Long;

    goto :goto_0

    .line 12509
    :sswitch_4
    const/16 v6, 0x22

    .line 12510
    invoke-static {p1, v6}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 12511
    .local v0, "arrayLength":I
    iget-object v6, p0, Lcom/google/common/logging/nano/Vr$VREvent;->installedVrApplications:[Lcom/google/common/logging/nano/Vr$VREvent$Application;

    if-nez v6, :cond_4

    move v1, v5

    .line 12512
    .local v1, "i":I
    :goto_1
    add-int v6, v1, v0

    new-array v2, v6, [Lcom/google/common/logging/nano/Vr$VREvent$Application;

    .line 12514
    .local v2, "newArray":[Lcom/google/common/logging/nano/Vr$VREvent$Application;
    if-eqz v1, :cond_3

    .line 12515
    iget-object v6, p0, Lcom/google/common/logging/nano/Vr$VREvent;->installedVrApplications:[Lcom/google/common/logging/nano/Vr$VREvent$Application;

    invoke-static {v6, v5, v2, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 12517
    :cond_3
    :goto_2
    array-length v6, v2

    add-int/lit8 v6, v6, -0x1

    if-ge v1, v6, :cond_5

    .line 12518
    new-instance v6, Lcom/google/common/logging/nano/Vr$VREvent$Application;

    invoke-direct {v6}, Lcom/google/common/logging/nano/Vr$VREvent$Application;-><init>()V

    aput-object v6, v2, v1

    .line 12519
    aget-object v6, v2, v1

    invoke-virtual {p1, v6}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 12520
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 12517
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 12511
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/common/logging/nano/Vr$VREvent$Application;
    :cond_4
    iget-object v6, p0, Lcom/google/common/logging/nano/Vr$VREvent;->installedVrApplications:[Lcom/google/common/logging/nano/Vr$VREvent$Application;

    array-length v1, v6

    goto :goto_1

    .line 12523
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/common/logging/nano/Vr$VREvent$Application;
    :cond_5
    new-instance v6, Lcom/google/common/logging/nano/Vr$VREvent$Application;

    invoke-direct {v6}, Lcom/google/common/logging/nano/Vr$VREvent$Application;-><init>()V

    aput-object v6, v2, v1

    .line 12524
    aget-object v6, v2, v1

    invoke-virtual {p1, v6}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 12525
    iput-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent;->installedVrApplications:[Lcom/google/common/logging/nano/Vr$VREvent$Application;

    goto :goto_0

    .line 12529
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/common/logging/nano/Vr$VREvent$Application;
    :sswitch_5
    iget-object v6, p0, Lcom/google/common/logging/nano/Vr$VREvent;->cyclops:Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;

    if-nez v6, :cond_6

    .line 12530
    new-instance v6, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;

    invoke-direct {v6}, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;-><init>()V

    iput-object v6, p0, Lcom/google/common/logging/nano/Vr$VREvent;->cyclops:Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;

    .line 12532
    :cond_6
    iget-object v6, p0, Lcom/google/common/logging/nano/Vr$VREvent;->cyclops:Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;

    invoke-virtual {p1, v6}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 12536
    :sswitch_6
    iget-object v6, p0, Lcom/google/common/logging/nano/Vr$VREvent;->qrCodeScan:Lcom/google/common/logging/nano/Vr$VREvent$QrCodeScan;

    if-nez v6, :cond_7

    .line 12537
    new-instance v6, Lcom/google/common/logging/nano/Vr$VREvent$QrCodeScan;

    invoke-direct {v6}, Lcom/google/common/logging/nano/Vr$VREvent$QrCodeScan;-><init>()V

    iput-object v6, p0, Lcom/google/common/logging/nano/Vr$VREvent;->qrCodeScan:Lcom/google/common/logging/nano/Vr$VREvent$QrCodeScan;

    .line 12539
    :cond_7
    iget-object v6, p0, Lcom/google/common/logging/nano/Vr$VREvent;->qrCodeScan:Lcom/google/common/logging/nano/Vr$VREvent$QrCodeScan;

    invoke-virtual {p1, v6}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 12543
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/google/common/logging/nano/Vr$VREvent;->cohort:Ljava/lang/String;

    goto/16 :goto_0

    .line 12547
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v4

    .line 12548
    .local v4, "value":I
    sparse-switch v4, :sswitch_data_1

    goto/16 :goto_0

    .line 12558
    :sswitch_9
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iput-object v6, p0, Lcom/google/common/logging/nano/Vr$VREvent;->lifetimeCountBucket:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 12564
    .end local v4    # "value":I
    :sswitch_a
    iget-object v6, p0, Lcom/google/common/logging/nano/Vr$VREvent;->performanceStats:Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;

    if-nez v6, :cond_8

    .line 12565
    new-instance v6, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;

    invoke-direct {v6}, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;-><init>()V

    iput-object v6, p0, Lcom/google/common/logging/nano/Vr$VREvent;->performanceStats:Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;

    .line 12567
    :cond_8
    iget-object v6, p0, Lcom/google/common/logging/nano/Vr$VREvent;->performanceStats:Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;

    invoke-virtual {p1, v6}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 12571
    :sswitch_b
    iget-object v6, p0, Lcom/google/common/logging/nano/Vr$VREvent;->sensorStats:Lcom/google/common/logging/nano/Vr$VREvent$SensorStats;

    if-nez v6, :cond_9

    .line 12572
    new-instance v6, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats;

    invoke-direct {v6}, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats;-><init>()V

    iput-object v6, p0, Lcom/google/common/logging/nano/Vr$VREvent;->sensorStats:Lcom/google/common/logging/nano/Vr$VREvent$SensorStats;

    .line 12574
    :cond_9
    iget-object v6, p0, Lcom/google/common/logging/nano/Vr$VREvent;->sensorStats:Lcom/google/common/logging/nano/Vr$VREvent$SensorStats;

    invoke-virtual {p1, v6}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 12578
    :sswitch_c
    iget-object v6, p0, Lcom/google/common/logging/nano/Vr$VREvent;->audioStats:Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;

    if-nez v6, :cond_a

    .line 12579
    new-instance v6, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;

    invoke-direct {v6}, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;-><init>()V

    iput-object v6, p0, Lcom/google/common/logging/nano/Vr$VREvent;->audioStats:Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;

    .line 12581
    :cond_a
    iget-object v6, p0, Lcom/google/common/logging/nano/Vr$VREvent;->audioStats:Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;

    invoke-virtual {p1, v6}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 12585
    :sswitch_d
    iget-object v6, p0, Lcom/google/common/logging/nano/Vr$VREvent;->embedVrWidget:Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget;

    if-nez v6, :cond_b

    .line 12586
    new-instance v6, Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget;

    invoke-direct {v6}, Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget;-><init>()V

    iput-object v6, p0, Lcom/google/common/logging/nano/Vr$VREvent;->embedVrWidget:Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget;

    .line 12588
    :cond_b
    iget-object v6, p0, Lcom/google/common/logging/nano/Vr$VREvent;->embedVrWidget:Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget;

    invoke-virtual {p1, v6}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 12592
    :sswitch_e
    iget-object v6, p0, Lcom/google/common/logging/nano/Vr$VREvent;->vrCore:Lcom/google/common/logging/nano/Vr$VREvent$VrCore;

    if-nez v6, :cond_c

    .line 12593
    new-instance v6, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;

    invoke-direct {v6}, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;-><init>()V

    iput-object v6, p0, Lcom/google/common/logging/nano/Vr$VREvent;->vrCore:Lcom/google/common/logging/nano/Vr$VREvent$VrCore;

    .line 12595
    :cond_c
    iget-object v6, p0, Lcom/google/common/logging/nano/Vr$VREvent;->vrCore:Lcom/google/common/logging/nano/Vr$VREvent$VrCore;

    invoke-virtual {p1, v6}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 12599
    :sswitch_f
    iget-object v6, p0, Lcom/google/common/logging/nano/Vr$VREvent;->earthVr:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;

    if-nez v6, :cond_d

    .line 12600
    new-instance v6, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;

    invoke-direct {v6}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;-><init>()V

    iput-object v6, p0, Lcom/google/common/logging/nano/Vr$VREvent;->earthVr:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;

    .line 12602
    :cond_d
    iget-object v6, p0, Lcom/google/common/logging/nano/Vr$VREvent;->earthVr:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;

    invoke-virtual {p1, v6}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 12606
    :sswitch_10
    iget-object v6, p0, Lcom/google/common/logging/nano/Vr$VREvent;->launcher:Lcom/google/common/logging/nano/Vr$VREvent$Launcher;

    if-nez v6, :cond_e

    .line 12607
    new-instance v6, Lcom/google/common/logging/nano/Vr$VREvent$Launcher;

    invoke-direct {v6}, Lcom/google/common/logging/nano/Vr$VREvent$Launcher;-><init>()V

    iput-object v6, p0, Lcom/google/common/logging/nano/Vr$VREvent;->launcher:Lcom/google/common/logging/nano/Vr$VREvent$Launcher;

    .line 12609
    :cond_e
    iget-object v6, p0, Lcom/google/common/logging/nano/Vr$VREvent;->launcher:Lcom/google/common/logging/nano/Vr$VREvent$Launcher;

    invoke-virtual {p1, v6}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 12613
    :sswitch_11
    iget-object v6, p0, Lcom/google/common/logging/nano/Vr$VREvent;->keyboard:Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;

    if-nez v6, :cond_f

    .line 12614
    new-instance v6, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;

    invoke-direct {v6}, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;-><init>()V

    iput-object v6, p0, Lcom/google/common/logging/nano/Vr$VREvent;->keyboard:Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;

    .line 12616
    :cond_f
    iget-object v6, p0, Lcom/google/common/logging/nano/Vr$VREvent;->keyboard:Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;

    invoke-virtual {p1, v6}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 12620
    :sswitch_12
    iget-object v6, p0, Lcom/google/common/logging/nano/Vr$VREvent;->renderer:Lcom/google/common/logging/nano/Vr$VREvent$Renderer;

    if-nez v6, :cond_10

    .line 12621
    new-instance v6, Lcom/google/common/logging/nano/Vr$VREvent$Renderer;

    invoke-direct {v6}, Lcom/google/common/logging/nano/Vr$VREvent$Renderer;-><init>()V

    iput-object v6, p0, Lcom/google/common/logging/nano/Vr$VREvent;->renderer:Lcom/google/common/logging/nano/Vr$VREvent$Renderer;

    .line 12623
    :cond_10
    iget-object v6, p0, Lcom/google/common/logging/nano/Vr$VREvent;->renderer:Lcom/google/common/logging/nano/Vr$VREvent$Renderer;

    invoke-virtual {p1, v6}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 12627
    :sswitch_13
    iget-object v6, p0, Lcom/google/common/logging/nano/Vr$VREvent;->lullaby:Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;

    if-nez v6, :cond_11

    .line 12628
    new-instance v6, Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;

    invoke-direct {v6}, Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;-><init>()V

    iput-object v6, p0, Lcom/google/common/logging/nano/Vr$VREvent;->lullaby:Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;

    .line 12630
    :cond_11
    iget-object v6, p0, Lcom/google/common/logging/nano/Vr$VREvent;->lullaby:Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;

    invoke-virtual {p1, v6}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 12634
    :sswitch_14
    iget-object v6, p0, Lcom/google/common/logging/nano/Vr$VREvent;->streetView:Lcom/google/common/logging/nano/Vr$VREvent$StreetView;

    if-nez v6, :cond_12

    .line 12635
    new-instance v6, Lcom/google/common/logging/nano/Vr$VREvent$StreetView;

    invoke-direct {v6}, Lcom/google/common/logging/nano/Vr$VREvent$StreetView;-><init>()V

    iput-object v6, p0, Lcom/google/common/logging/nano/Vr$VREvent;->streetView:Lcom/google/common/logging/nano/Vr$VREvent$StreetView;

    .line 12637
    :cond_12
    iget-object v6, p0, Lcom/google/common/logging/nano/Vr$VREvent;->streetView:Lcom/google/common/logging/nano/Vr$VREvent$StreetView;

    invoke-virtual {p1, v6}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 12641
    :sswitch_15
    iget-object v6, p0, Lcom/google/common/logging/nano/Vr$VREvent;->photos:Lcom/google/common/logging/nano/Vr$VREvent$Photos;

    if-nez v6, :cond_13

    .line 12642
    new-instance v6, Lcom/google/common/logging/nano/Vr$VREvent$Photos;

    invoke-direct {v6}, Lcom/google/common/logging/nano/Vr$VREvent$Photos;-><init>()V

    iput-object v6, p0, Lcom/google/common/logging/nano/Vr$VREvent;->photos:Lcom/google/common/logging/nano/Vr$VREvent$Photos;

    .line 12644
    :cond_13
    iget-object v6, p0, Lcom/google/common/logging/nano/Vr$VREvent;->photos:Lcom/google/common/logging/nano/Vr$VREvent$Photos;

    invoke-virtual {p1, v6}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 12648
    :sswitch_16
    iget-object v6, p0, Lcom/google/common/logging/nano/Vr$VREvent;->vrHome:Lcom/google/common/logging/nano/Vr$VREvent$VrHome;

    if-nez v6, :cond_14

    .line 12649
    new-instance v6, Lcom/google/common/logging/nano/Vr$VREvent$VrHome;

    invoke-direct {v6}, Lcom/google/common/logging/nano/Vr$VREvent$VrHome;-><init>()V

    iput-object v6, p0, Lcom/google/common/logging/nano/Vr$VREvent;->vrHome:Lcom/google/common/logging/nano/Vr$VREvent$VrHome;

    .line 12651
    :cond_14
    iget-object v6, p0, Lcom/google/common/logging/nano/Vr$VREvent;->vrHome:Lcom/google/common/logging/nano/Vr$VREvent$VrHome;

    invoke-virtual {p1, v6}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 12655
    :sswitch_17
    iget-object v6, p0, Lcom/google/common/logging/nano/Vr$VREvent;->sdkConfiguration:Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;

    if-nez v6, :cond_15

    .line 12656
    new-instance v6, Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;

    invoke-direct {v6}, Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;-><init>()V

    iput-object v6, p0, Lcom/google/common/logging/nano/Vr$VREvent;->sdkConfiguration:Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;

    .line 12658
    :cond_15
    iget-object v6, p0, Lcom/google/common/logging/nano/Vr$VREvent;->sdkConfiguration:Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;

    invoke-virtual {p1, v6}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 12662
    :sswitch_18
    iget-object v6, p0, Lcom/google/common/logging/nano/Vr$VREvent;->gConfigUpdate:Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate;

    if-nez v6, :cond_16

    .line 12663
    new-instance v6, Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate;

    invoke-direct {v6}, Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate;-><init>()V

    iput-object v6, p0, Lcom/google/common/logging/nano/Vr$VREvent;->gConfigUpdate:Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate;

    .line 12665
    :cond_16
    iget-object v6, p0, Lcom/google/common/logging/nano/Vr$VREvent;->gConfigUpdate:Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate;

    invoke-virtual {p1, v6}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 12669
    :sswitch_19
    iget-object v6, p0, Lcom/google/common/logging/nano/Vr$VREvent;->jumpInspector:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;

    if-nez v6, :cond_17

    .line 12670
    new-instance v6, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;

    invoke-direct {v6}, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;-><init>()V

    iput-object v6, p0, Lcom/google/common/logging/nano/Vr$VREvent;->jumpInspector:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;

    .line 12672
    :cond_17
    iget-object v6, p0, Lcom/google/common/logging/nano/Vr$VREvent;->jumpInspector:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;

    invoke-virtual {p1, v6}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 12481
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x40 -> :sswitch_8
        0x4a -> :sswitch_a
        0x52 -> :sswitch_b
        0x5a -> :sswitch_c
        0x62 -> :sswitch_d
        0x6a -> :sswitch_e
        0x72 -> :sswitch_f
        0x7a -> :sswitch_10
        0x82 -> :sswitch_11
        0x8a -> :sswitch_12
        0x92 -> :sswitch_13
        0x9a -> :sswitch_14
        0xa2 -> :sswitch_15
        0xaa -> :sswitch_16
        0xb2 -> :sswitch_17
        0xba -> :sswitch_18
        0xc2 -> :sswitch_19
    .end sparse-switch

    .line 12548
    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_9
        0x1 -> :sswitch_9
        0x2 -> :sswitch_9
        0x3 -> :sswitch_9
        0x4 -> :sswitch_9
        0x5 -> :sswitch_9
        0x6 -> :sswitch_9
        0xb -> :sswitch_9
        0x15 -> :sswitch_9
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10
    invoke-virtual {p0, p1}, Lcom/google/common/logging/nano/Vr$VREvent;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 6
    .param p1, "output"    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 12288
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent;->headMount:Lcom/google/common/logging/nano/Vr$VREvent$HeadMount;

    if-eqz v2, :cond_0

    .line 12289
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent;->headMount:Lcom/google/common/logging/nano/Vr$VREvent$HeadMount;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 12291
    :cond_0
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent;->application:Lcom/google/common/logging/nano/Vr$VREvent$Application;

    if-eqz v2, :cond_1

    .line 12292
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent;->application:Lcom/google/common/logging/nano/Vr$VREvent$Application;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 12294
    :cond_1
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent;->durationMs:Ljava/lang/Long;

    if-eqz v2, :cond_2

    .line 12295
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent;->durationMs:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p1, v2, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 12297
    :cond_2
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent;->installedVrApplications:[Lcom/google/common/logging/nano/Vr$VREvent$Application;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent;->installedVrApplications:[Lcom/google/common/logging/nano/Vr$VREvent$Application;

    array-length v2, v2

    if-lez v2, :cond_4

    .line 12298
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent;->installedVrApplications:[Lcom/google/common/logging/nano/Vr$VREvent$Application;

    array-length v2, v2

    if-ge v1, v2, :cond_4

    .line 12299
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent;->installedVrApplications:[Lcom/google/common/logging/nano/Vr$VREvent$Application;

    aget-object v0, v2, v1

    .line 12300
    .local v0, "element":Lcom/google/common/logging/nano/Vr$VREvent$Application;
    if-eqz v0, :cond_3

    .line 12301
    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 12298
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 12305
    .end local v0    # "element":Lcom/google/common/logging/nano/Vr$VREvent$Application;
    .end local v1    # "i":I
    :cond_4
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent;->cyclops:Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;

    if-eqz v2, :cond_5

    .line 12306
    const/4 v2, 0x5

    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent;->cyclops:Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 12308
    :cond_5
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent;->qrCodeScan:Lcom/google/common/logging/nano/Vr$VREvent$QrCodeScan;

    if-eqz v2, :cond_6

    .line 12309
    const/4 v2, 0x6

    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent;->qrCodeScan:Lcom/google/common/logging/nano/Vr$VREvent$QrCodeScan;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 12311
    :cond_6
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent;->cohort:Ljava/lang/String;

    if-eqz v2, :cond_7

    .line 12312
    const/4 v2, 0x7

    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent;->cohort:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 12314
    :cond_7
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent;->lifetimeCountBucket:Ljava/lang/Integer;

    if-eqz v2, :cond_8

    .line 12315
    const/16 v2, 0x8

    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent;->lifetimeCountBucket:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 12317
    :cond_8
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent;->performanceStats:Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;

    if-eqz v2, :cond_9

    .line 12318
    const/16 v2, 0x9

    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent;->performanceStats:Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 12320
    :cond_9
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent;->sensorStats:Lcom/google/common/logging/nano/Vr$VREvent$SensorStats;

    if-eqz v2, :cond_a

    .line 12321
    const/16 v2, 0xa

    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent;->sensorStats:Lcom/google/common/logging/nano/Vr$VREvent$SensorStats;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 12323
    :cond_a
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent;->audioStats:Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;

    if-eqz v2, :cond_b

    .line 12324
    const/16 v2, 0xb

    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent;->audioStats:Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 12326
    :cond_b
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent;->embedVrWidget:Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget;

    if-eqz v2, :cond_c

    .line 12327
    const/16 v2, 0xc

    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent;->embedVrWidget:Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 12329
    :cond_c
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent;->vrCore:Lcom/google/common/logging/nano/Vr$VREvent$VrCore;

    if-eqz v2, :cond_d

    .line 12330
    const/16 v2, 0xd

    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent;->vrCore:Lcom/google/common/logging/nano/Vr$VREvent$VrCore;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 12332
    :cond_d
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent;->earthVr:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;

    if-eqz v2, :cond_e

    .line 12333
    const/16 v2, 0xe

    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent;->earthVr:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 12335
    :cond_e
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent;->launcher:Lcom/google/common/logging/nano/Vr$VREvent$Launcher;

    if-eqz v2, :cond_f

    .line 12336
    const/16 v2, 0xf

    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent;->launcher:Lcom/google/common/logging/nano/Vr$VREvent$Launcher;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 12338
    :cond_f
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent;->keyboard:Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;

    if-eqz v2, :cond_10

    .line 12339
    const/16 v2, 0x10

    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent;->keyboard:Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 12341
    :cond_10
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent;->renderer:Lcom/google/common/logging/nano/Vr$VREvent$Renderer;

    if-eqz v2, :cond_11

    .line 12342
    const/16 v2, 0x11

    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent;->renderer:Lcom/google/common/logging/nano/Vr$VREvent$Renderer;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 12344
    :cond_11
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent;->lullaby:Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;

    if-eqz v2, :cond_12

    .line 12345
    const/16 v2, 0x12

    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent;->lullaby:Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 12347
    :cond_12
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent;->streetView:Lcom/google/common/logging/nano/Vr$VREvent$StreetView;

    if-eqz v2, :cond_13

    .line 12348
    const/16 v2, 0x13

    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent;->streetView:Lcom/google/common/logging/nano/Vr$VREvent$StreetView;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 12350
    :cond_13
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent;->photos:Lcom/google/common/logging/nano/Vr$VREvent$Photos;

    if-eqz v2, :cond_14

    .line 12351
    const/16 v2, 0x14

    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent;->photos:Lcom/google/common/logging/nano/Vr$VREvent$Photos;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 12353
    :cond_14
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent;->vrHome:Lcom/google/common/logging/nano/Vr$VREvent$VrHome;

    if-eqz v2, :cond_15

    .line 12354
    const/16 v2, 0x15

    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent;->vrHome:Lcom/google/common/logging/nano/Vr$VREvent$VrHome;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 12356
    :cond_15
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent;->sdkConfiguration:Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;

    if-eqz v2, :cond_16

    .line 12357
    const/16 v2, 0x16

    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent;->sdkConfiguration:Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 12359
    :cond_16
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent;->gConfigUpdate:Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate;

    if-eqz v2, :cond_17

    .line 12360
    const/16 v2, 0x17

    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent;->gConfigUpdate:Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 12362
    :cond_17
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent;->jumpInspector:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;

    if-eqz v2, :cond_18

    .line 12363
    const/16 v2, 0x18

    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent;->jumpInspector:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 12365
    :cond_18
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 12366
    return-void
.end method
