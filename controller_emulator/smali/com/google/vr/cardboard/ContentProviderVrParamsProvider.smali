.class public Lcom/google/vr/cardboard/ContentProviderVrParamsProvider;
.super Ljava/lang/Object;
.source "ContentProviderVrParamsProvider.java"

# interfaces
.implements Lcom/google/vr/cardboard/VrParamsProvider;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final client:Landroid/content/ContentProviderClient;

.field private final deviceParamsSettingUri:Landroid/net/Uri;

.field private final phoneParamsSettingUri:Landroid/net/Uri;

.field private final sdkConfigurationParamsSettingUri:Landroid/net/Uri;

.field private final userPrefsUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/google/vr/cardboard/ContentProviderVrParamsProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/vr/cardboard/ContentProviderVrParamsProvider;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/ContentProviderClient;Ljava/lang/String;)V
    .locals 2
    .param p1, "client"    # Landroid/content/ContentProviderClient;
    .param p2, "authority"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    if-nez p1, :cond_0

    .line 48
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ContentProviderClient must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 51
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Authority key must be non-null and non-empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_2
    iput-object p1, p0, Lcom/google/vr/cardboard/ContentProviderVrParamsProvider;->client:Landroid/content/ContentProviderClient;

    .line 54
    const-string v0, "device_params"

    .line 55
    invoke-static {p2, v0}, Lcom/google/vr/cardboard/VrSettingsProviderContract;->createUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vr/cardboard/ContentProviderVrParamsProvider;->deviceParamsSettingUri:Landroid/net/Uri;

    .line 57
    const-string v0, "user_prefs"

    .line 58
    invoke-static {p2, v0}, Lcom/google/vr/cardboard/VrSettingsProviderContract;->createUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vr/cardboard/ContentProviderVrParamsProvider;->userPrefsUri:Landroid/net/Uri;

    .line 60
    const-string v0, "phone_params"

    .line 61
    invoke-static {p2, v0}, Lcom/google/vr/cardboard/VrSettingsProviderContract;->createUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vr/cardboard/ContentProviderVrParamsProvider;->phoneParamsSettingUri:Landroid/net/Uri;

    .line 63
    const-string v0, "sdk_configuration_params"

    .line 64
    invoke-static {p2, v0}, Lcom/google/vr/cardboard/VrSettingsProviderContract;->createUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vr/cardboard/ContentProviderVrParamsProvider;->sdkConfigurationParamsSettingUri:Landroid/net/Uri;

    .line 66
    return-void
.end method

.method private readParams(Lcom/google/protobuf/nano/MessageNano;Landroid/net/Uri;Ljava/lang/String;)Lcom/google/protobuf/nano/MessageNano;
    .locals 10
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "selection"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/protobuf/nano/MessageNano;",
            ">(TT;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .local p1, "initialProto":Lcom/google/protobuf/nano/MessageNano;, "TT;"
    const/4 v9, 0x0

    .line 119
    const/4 v8, 0x0

    .line 121
    .local v8, "paramsCursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/google/vr/cardboard/ContentProviderVrParamsProvider;->client:Landroid/content/ContentProviderClient;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 122
    if-eqz v8, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 123
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getBlob(I)[B
    :try_end_0
    .catch Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 127
    .local v7, "paramsBytes":[B
    if-nez v7, :cond_2

    .line 141
    if-eqz v8, :cond_0

    .line 142
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_0
    move-object v0, v9

    .line 139
    .end local v7    # "paramsBytes":[B
    :cond_1
    :goto_0
    return-object v0

    .line 130
    .restart local v7    # "paramsBytes":[B
    :cond_2
    :try_start_1
    invoke-static {p1, v7}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;
    :try_end_1
    .catch Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 141
    if-eqz v8, :cond_1

    .line 142
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 132
    .end local v7    # "paramsBytes":[B
    :cond_3
    :try_start_2
    sget-object v0, Lcom/google/vr/cardboard/ContentProviderVrParamsProvider;->TAG:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x32

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Invalid params result from ContentProvider query: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 141
    if-eqz v8, :cond_4

    .line 142
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_4
    move-object v0, v9

    .line 133
    goto :goto_0

    .line 134
    :catch_0
    move-exception v0

    move-object v6, v0

    .line 138
    .local v6, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_3
    sget-object v0, Lcom/google/vr/cardboard/ContentProviderVrParamsProvider;->TAG:Ljava/lang/String;

    const-string v1, "Error reading params from ContentProvider"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 141
    if-eqz v8, :cond_5

    .line 142
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_5
    move-object v0, v9

    .line 139
    goto :goto_0

    .line 141
    .end local v6    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_6

    .line 142
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0

    .line 134
    :catch_1
    move-exception v0

    move-object v6, v0

    goto :goto_1

    :catch_2
    move-exception v0

    move-object v6, v0

    goto :goto_1

    :catch_3
    move-exception v0

    move-object v6, v0

    goto :goto_1
.end method

.method private writeParams(Lcom/google/protobuf/nano/MessageNano;Landroid/net/Uri;)Z
    .locals 8
    .param p1, "params"    # Lcom/google/protobuf/nano/MessageNano;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v4, 0x0

    .line 157
    if-nez p1, :cond_1

    .line 158
    :try_start_0
    iget-object v5, p0, Lcom/google/vr/cardboard/ContentProviderVrParamsProvider;->client:Landroid/content/ContentProviderClient;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v5, p2, v6, v7}, Landroid/content/ContentProviderClient;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 165
    .local v2, "rowsUpdated":I
    :goto_0
    if-lez v2, :cond_0

    const/4 v4, 0x1

    .line 172
    .end local v2    # "rowsUpdated":I
    :cond_0
    :goto_1
    return v4

    .line 160
    :cond_1
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 161
    .local v3, "values":Landroid/content/ContentValues;
    invoke-static {p1}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v1

    .line 162
    .local v1, "paramsBytes":[B
    const-string v5, "value"

    invoke-virtual {v3, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 163
    iget-object v5, p0, Lcom/google/vr/cardboard/ContentProviderVrParamsProvider;->client:Landroid/content/ContentProviderClient;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v5, p2, v3, v6, v7}, Landroid/content/ContentProviderClient;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .restart local v2    # "rowsUpdated":I
    goto :goto_0

    .line 166
    .end local v1    # "paramsBytes":[B
    .end local v2    # "rowsUpdated":I
    .end local v3    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v0

    .line 167
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v5, Lcom/google/vr/cardboard/ContentProviderVrParamsProvider;->TAG:Ljava/lang/String;

    const-string v6, "Failed to write params to ContentProvider"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 170
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 171
    .local v0, "e":Ljava/lang/SecurityException;
    sget-object v5, Lcom/google/vr/cardboard/ContentProviderVrParamsProvider;->TAG:Ljava/lang/String;

    const-string v6, "Insufficient permissions to write params to ContentProvider"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/google/vr/cardboard/ContentProviderVrParamsProvider;->client:Landroid/content/ContentProviderClient;

    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .line 108
    return-void
.end method

.method public readDeviceParams()Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;
    .locals 3

    .prologue
    .line 70
    new-instance v0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;

    invoke-direct {v0}, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;-><init>()V

    iget-object v1, p0, Lcom/google/vr/cardboard/ContentProviderVrParamsProvider;->deviceParamsSettingUri:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/google/vr/cardboard/ContentProviderVrParamsProvider;->readParams(Lcom/google/protobuf/nano/MessageNano;Landroid/net/Uri;Ljava/lang/String;)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;

    return-object v0
.end method

.method public readPhoneParams()Lcom/google/vrtoolkit/cardboard/proto/nano/Phone$PhoneParams;
    .locals 3

    .prologue
    .line 80
    new-instance v0, Lcom/google/vrtoolkit/cardboard/proto/nano/Phone$PhoneParams;

    invoke-direct {v0}, Lcom/google/vrtoolkit/cardboard/proto/nano/Phone$PhoneParams;-><init>()V

    iget-object v1, p0, Lcom/google/vr/cardboard/ContentProviderVrParamsProvider;->phoneParamsSettingUri:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/google/vr/cardboard/ContentProviderVrParamsProvider;->readParams(Lcom/google/protobuf/nano/MessageNano;Landroid/net/Uri;Ljava/lang/String;)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/vrtoolkit/cardboard/proto/nano/Phone$PhoneParams;

    return-object v0
.end method

.method public readSdkConfigurationParams(Lcom/google/vr/vrcore/nano/SdkConfiguration$SdkConfigurationRequest;)Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;
    .locals 3
    .param p1, "request"    # Lcom/google/vr/vrcore/nano/SdkConfiguration$SdkConfigurationRequest;

    .prologue
    .line 85
    invoke-static {p1}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, "encodedRequest":Ljava/lang/String;
    sget-object v1, Lcom/google/vr/ndk/base/SdkConfigurationReader;->DEFAULT_PARAMS:Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;

    iget-object v2, p0, Lcom/google/vr/cardboard/ContentProviderVrParamsProvider;->sdkConfigurationParamsSettingUri:Landroid/net/Uri;

    invoke-direct {p0, v1, v2, v0}, Lcom/google/vr/cardboard/ContentProviderVrParamsProvider;->readParams(Lcom/google/protobuf/nano/MessageNano;Landroid/net/Uri;Ljava/lang/String;)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v1

    check-cast v1, Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;

    return-object v1
.end method

.method public readUserPrefs()Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$UserPrefs;
    .locals 3

    .prologue
    .line 97
    new-instance v0, Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$UserPrefs;

    invoke-direct {v0}, Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$UserPrefs;-><init>()V

    iget-object v1, p0, Lcom/google/vr/cardboard/ContentProviderVrParamsProvider;->userPrefsUri:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/google/vr/cardboard/ContentProviderVrParamsProvider;->readParams(Lcom/google/protobuf/nano/MessageNano;Landroid/net/Uri;Ljava/lang/String;)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$UserPrefs;

    return-object v0
.end method

.method public updateUserPrefs(Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$UserPrefs;)Z
    .locals 1
    .param p1, "userPrefs"    # Lcom/google/vrtoolkit/cardboard/proto/nano/Preferences$UserPrefs;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/google/vr/cardboard/ContentProviderVrParamsProvider;->userPrefsUri:Landroid/net/Uri;

    invoke-direct {p0, p1, v0}, Lcom/google/vr/cardboard/ContentProviderVrParamsProvider;->writeParams(Lcom/google/protobuf/nano/MessageNano;Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method public writeDeviceParams(Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;)Z
    .locals 1
    .param p1, "params"    # Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/vr/cardboard/ContentProviderVrParamsProvider;->deviceParamsSettingUri:Landroid/net/Uri;

    invoke-direct {p0, p1, v0}, Lcom/google/vr/cardboard/ContentProviderVrParamsProvider;->writeParams(Lcom/google/protobuf/nano/MessageNano;Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method
