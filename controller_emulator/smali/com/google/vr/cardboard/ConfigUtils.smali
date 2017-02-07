.class public abstract Lcom/google/vr/cardboard/ConfigUtils;
.super Ljava/lang/Object;
.source "ConfigUtils.java"


# static fields
.field public static final CARDBOARD_CONFIG_FOLDER:Ljava/lang/String; = "Cardboard"

.field private static final CARDBOARD_DEVICE_PARAMS_FILE:Ljava/lang/String; = "current_device_params"

.field private static final CARDBOARD_DEVICE_PARAMS_STREAM_SENTINEL:I = 0x35587a2b

.field private static final CARDBOARD_PHONE_PARAMS_FILE:Ljava/lang/String; = "phone_params"

.field private static final CARDBOARD_PHONE_PARAMS_STREAM_SENTINEL:I = 0x2e765996

.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String;

.field public static final URI_KEY_PARAMS:Ljava/lang/String; = "p"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-class v0, Lcom/google/vr/cardboard/ConfigUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/vr/cardboard/ConfigUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getConfigFile(Ljava/lang/String;)Ljava/io/File;
    .locals 5
    .param p0, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 218
    new-instance v0, Ljava/io/File;

    .line 219
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "Cardboard"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 221
    .local v0, "configFolder":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 222
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 228
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1

    .line 223
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_0

    .line 224
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x3d

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " already exists as a file, but is expected to be a directory."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static readDeviceParamsFromExternalStorage()Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;
    .locals 5

    .prologue
    .line 73
    const-class v1, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;

    const-string v2, "current_device_params"

    const v3, 0x35587a2b

    const/4 v4, 0x1

    .line 74
    invoke-static {v1, v2, v3, v4}, Lcom/google/vr/cardboard/ConfigUtils;->readFromExternalStorage(Ljava/lang/Class;Ljava/lang/String;IZ)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;

    .line 86
    .local v0, "params":Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;
    return-object v0
.end method

.method public static readDeviceParamsFromUri(Landroid/net/Uri;)Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;
    .locals 9
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v4, 0x0

    .line 97
    const-string v5, "p"

    invoke-virtual {p0, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 98
    .local v3, "paramsEncoded":Ljava/lang/String;
    if-nez v3, :cond_0

    .line 99
    sget-object v5, Lcom/google/vr/cardboard/ConfigUtils;->TAG:Ljava/lang/String;

    const-string v6, "No Cardboard parameters in URI."

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v4

    .line 114
    :goto_0
    return-object v2

    .line 104
    :cond_0
    const/16 v5, 0xb

    .line 105
    :try_start_0
    invoke-static {v3, v5}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 106
    .local v0, "bytes":[B
    new-instance v5, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;

    invoke-direct {v5}, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;-><init>()V

    .line 107
    invoke-static {v5, v0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v2

    check-cast v2, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    .local v2, "params":Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;
    goto :goto_0

    .line 112
    .end local v0    # "bytes":[B
    .end local v2    # "params":Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;
    :catch_0
    move-exception v1

    .line 113
    .local v1, "e":Ljava/lang/Exception;
    sget-object v5, Lcom/google/vr/cardboard/ConfigUtils;->TAG:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x2e

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "Parsing cardboard parameters from URI failed: "

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v4

    .line 114
    goto :goto_0
.end method

.method private static readFromExternalStorage(Ljava/lang/Class;Ljava/lang/String;IZ)Lcom/google/protobuf/nano/MessageNano;
    .locals 7
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "sentinel"    # I
    .param p3, "logIfFileNotFound"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/protobuf/nano/MessageNano;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            "IZ)TT;"
        }
    .end annotation

    .prologue
    .line 245
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v1, 0x0

    .line 247
    .local v1, "stream":Ljava/io/InputStream;
    :try_start_0
    new-instance v2, Ljava/io/BufferedInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-static {p1}, Lcom/google/vr/cardboard/ConfigUtils;->getConfigFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 248
    .end local v1    # "stream":Ljava/io/InputStream;
    .local v2, "stream":Ljava/io/InputStream;
    :try_start_1
    invoke-static {p0, v2, p2}, Lcom/google/vr/cardboard/ConfigUtils;->readFromInputStream(Ljava/lang/Class;Ljava/io/InputStream;I)Lcom/google/protobuf/nano/MessageNano;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v3

    .line 250
    if-eqz v2, :cond_0

    .line 252
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1

    .line 265
    .end local v2    # "stream":Ljava/io/InputStream;
    :cond_0
    :goto_0
    return-object v3

    .line 250
    .restart local v1    # "stream":Ljava/io/InputStream;
    :catchall_0
    move-exception v3

    :goto_1
    if-eqz v1, :cond_1

    .line 252
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_4

    .line 255
    :cond_1
    :goto_2
    :try_start_4
    throw v3
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_4

    .line 258
    :catch_0
    move-exception v0

    .line 259
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_3
    if-eqz p3, :cond_2

    .line 260
    sget-object v3, Lcom/google/vr/cardboard/ConfigUtils;->TAG:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x27

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Parameters file not found for reading: "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :cond_2
    :goto_4
    const/4 v3, 0x0

    goto :goto_0

    .line 262
    .end local v1    # "stream":Ljava/io/InputStream;
    .restart local v2    # "stream":Ljava/io/InputStream;
    :catch_1
    move-exception v0

    move-object v1, v2

    .line 263
    .end local v2    # "stream":Ljava/io/InputStream;
    .local v0, "e":Ljava/lang/IllegalStateException;
    .restart local v1    # "stream":Ljava/io/InputStream;
    :goto_5
    sget-object v3, Lcom/google/vr/cardboard/ConfigUtils;->TAG:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x1a

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Error reading parameters: "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 253
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    .end local v1    # "stream":Ljava/io/InputStream;
    .restart local v2    # "stream":Ljava/io/InputStream;
    :catch_2
    move-exception v4

    goto :goto_0

    .end local v2    # "stream":Ljava/io/InputStream;
    .restart local v1    # "stream":Ljava/io/InputStream;
    :catch_3
    move-exception v4

    goto :goto_2

    .line 262
    :catch_4
    move-exception v0

    goto :goto_5

    .line 258
    .end local v1    # "stream":Ljava/io/InputStream;
    .restart local v2    # "stream":Ljava/io/InputStream;
    :catch_5
    move-exception v0

    move-object v1, v2

    .end local v2    # "stream":Ljava/io/InputStream;
    .restart local v1    # "stream":Ljava/io/InputStream;
    goto :goto_3

    .line 250
    .end local v1    # "stream":Ljava/io/InputStream;
    .restart local v2    # "stream":Ljava/io/InputStream;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "stream":Ljava/io/InputStream;
    .restart local v1    # "stream":Ljava/io/InputStream;
    goto :goto_1
.end method

.method private static readFromInputStream(Ljava/lang/Class;Ljava/io/InputStream;I)Lcom/google/protobuf/nano/MessageNano;
    .locals 10
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "expectedSentinel"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/protobuf/nano/MessageNano;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/io/InputStream;",
            "I)TT;"
        }
    .end annotation

    .prologue
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v9, -0x1

    const/4 v6, 0x0

    .line 280
    if-nez p1, :cond_0

    move-object v5, v6

    .line 313
    :goto_0
    return-object v5

    .line 287
    :cond_0
    const/16 v5, 0x8

    :try_start_0
    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 288
    .local v1, "header":Ljava/nio/ByteBuffer;
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v8

    array-length v8, v8

    invoke-virtual {p1, v5, v7, v8}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    if-ne v5, v9, :cond_1

    .line 289
    sget-object v5, Lcom/google/vr/cardboard/ConfigUtils;->TAG:Ljava/lang/String;

    const-string v7, "Error parsing param record: end of stream."

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v6

    .line 290
    goto :goto_0

    .line 292
    :cond_1
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    .line 293
    .local v4, "sentinel":I
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    .line 294
    .local v2, "length":I
    if-eq v4, p2, :cond_2

    .line 295
    sget-object v5, Lcom/google/vr/cardboard/ConfigUtils;->TAG:Ljava/lang/String;

    const-string v7, "Error parsing param record: incorrect sentinel."

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v6

    .line 296
    goto :goto_0

    .line 298
    :cond_2
    new-array v3, v2, [B

    .line 299
    .local v3, "protoBytes":[B
    const/4 v5, 0x0

    array-length v7, v3

    invoke-virtual {p1, v3, v5, v7}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    if-ne v5, v9, :cond_3

    .line 300
    sget-object v5, Lcom/google/vr/cardboard/ConfigUtils;->TAG:Ljava/lang/String;

    const-string v7, "Error parsing param record: end of stream."

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v6

    .line 301
    goto :goto_0

    .line 303
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/protobuf/nano/MessageNano;

    invoke-static {v5, v3}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;
    :try_end_0
    .catch Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v5

    goto :goto_0

    .line 304
    .end local v1    # "header":Ljava/nio/ByteBuffer;
    .end local v2    # "length":I
    .end local v3    # "protoBytes":[B
    .end local v4    # "sentinel":I
    :catch_0
    move-exception v0

    .line 305
    .local v0, "e":Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
    sget-object v7, Lcom/google/vr/cardboard/ConfigUtils;->TAG:Ljava/lang/String;

    const-string v8, "Error parsing protocol buffer: "

    invoke-virtual {v0}, Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_4

    invoke-virtual {v8, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_1
    invoke-static {v7, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
    :goto_2
    move-object v5, v6

    .line 313
    goto :goto_0

    .line 305
    .restart local v0    # "e":Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
    :cond_4
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v8}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 306
    .end local v0    # "e":Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
    :catch_1
    move-exception v0

    .line 307
    .local v0, "e":Ljava/io/IOException;
    sget-object v7, Lcom/google/vr/cardboard/ConfigUtils;->TAG:Ljava/lang/String;

    const-string v8, "Error reading parameters: "

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_5

    invoke-virtual {v8, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_3
    invoke-static {v7, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_5
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v8}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_3

    .line 308
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 309
    .local v0, "e":Ljava/lang/InstantiationException;
    sget-object v7, Lcom/google/vr/cardboard/ConfigUtils;->TAG:Ljava/lang/String;

    const-string v8, "Error creating parameters: "

    invoke-virtual {v0}, Ljava/lang/InstantiationException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_6

    invoke-virtual {v8, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_4
    invoke-static {v7, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_6
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v8}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_4

    .line 310
    .end local v0    # "e":Ljava/lang/InstantiationException;
    :catch_3
    move-exception v0

    .line 311
    .local v0, "e":Ljava/lang/IllegalAccessException;
    sget-object v7, Lcom/google/vr/cardboard/ConfigUtils;->TAG:Ljava/lang/String;

    const-string v8, "Error accessing parameter type: "

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_7

    invoke-virtual {v8, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_5
    invoke-static {v7, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_7
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v8}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_5
.end method

.method public static readPhoneParamsFromExternalStorage()Lcom/google/vrtoolkit/cardboard/proto/nano/Phone$PhoneParams;
    .locals 5

    .prologue
    .line 124
    const-class v1, Lcom/google/vrtoolkit/cardboard/proto/nano/Phone$PhoneParams;

    const-string v2, "phone_params"

    const v3, 0x2e765996

    const/4 v4, 0x0

    .line 125
    invoke-static {v1, v2, v3, v4}, Lcom/google/vr/cardboard/ConfigUtils;->readFromExternalStorage(Ljava/lang/Class;Ljava/lang/String;IZ)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/vrtoolkit/cardboard/proto/nano/Phone$PhoneParams;

    .line 137
    .local v0, "params":Lcom/google/vrtoolkit/cardboard/proto/nano/Phone$PhoneParams;
    return-object v0
.end method

.method public static removeDeviceParamsFromExternalStorage()Z
    .locals 7

    .prologue
    .line 190
    const/4 v2, 0x0

    .line 192
    .local v2, "success":Z
    :try_start_0
    const-string v3, "current_device_params"

    invoke-static {v3}, Lcom/google/vr/cardboard/ConfigUtils;->getConfigFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 193
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 197
    .end local v1    # "file":Ljava/io/File;
    :goto_0
    if-nez v2, :cond_0

    .line 198
    sget-object v3, Lcom/google/vr/cardboard/ConfigUtils;->TAG:Ljava/lang/String;

    const-string v4, "Could not clear Cardboard parameters from external storage."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    :cond_0
    return v2

    .line 193
    .restart local v1    # "file":Ljava/io/File;
    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    .line 194
    .end local v1    # "file":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 195
    .local v0, "e":Ljava/lang/IllegalStateException;
    sget-object v3, Lcom/google/vr/cardboard/ConfigUtils;->TAG:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x22

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Error clearing device parameters: "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static writeDeviceParamsToExternalStorage(Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;)Z
    .locals 3
    .param p0, "params"    # Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;

    .prologue
    .line 146
    const-string v1, "current_device_params"

    const v2, 0x35587a2b

    .line 147
    invoke-static {p0, v1, v2}, Lcom/google/vr/cardboard/ConfigUtils;->writeToExternalStorage(Lcom/google/protobuf/nano/MessageNano;Ljava/lang/String;I)Z

    move-result v0

    .line 149
    .local v0, "success":Z
    if-nez v0, :cond_0

    .line 150
    sget-object v1, Lcom/google/vr/cardboard/ConfigUtils;->TAG:Ljava/lang/String;

    const-string v2, "Could not write Cardboard parameters to external storage."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :cond_0
    return v0
.end method

.method public static writePhoneParamsToExternalStorage(Lcom/google/vrtoolkit/cardboard/proto/nano/Phone$PhoneParams;)Z
    .locals 3
    .param p0, "params"    # Lcom/google/vrtoolkit/cardboard/proto/nano/Phone$PhoneParams;

    .prologue
    .line 167
    iget-object v1, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Phone$PhoneParams;->dEPRECATEDGyroBias:[F

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Phone$PhoneParams;->dEPRECATEDGyroBias:[F

    array-length v1, v1

    if-nez v1, :cond_0

    .line 168
    invoke-virtual {p0}, Lcom/google/vrtoolkit/cardboard/proto/nano/Phone$PhoneParams;->clone()Lcom/google/vrtoolkit/cardboard/proto/nano/Phone$PhoneParams;

    move-result-object p0

    .line 169
    const/4 v1, 0x3

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Phone$PhoneParams;->dEPRECATEDGyroBias:[F

    .line 171
    :cond_0
    const-string v1, "phone_params"

    const v2, 0x2e765996

    .line 172
    invoke-static {p0, v1, v2}, Lcom/google/vr/cardboard/ConfigUtils;->writeToExternalStorage(Lcom/google/protobuf/nano/MessageNano;Ljava/lang/String;I)Z

    move-result v0

    .line 174
    .local v0, "success":Z
    if-nez v0, :cond_1

    .line 175
    sget-object v1, Lcom/google/vr/cardboard/ConfigUtils;->TAG:Ljava/lang/String;

    const-string v2, "Could not write Phone parameters to external storage."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    :cond_1
    return v0

    .line 169
    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private static writeToExternalStorage(Lcom/google/protobuf/nano/MessageNano;Ljava/lang/String;I)Z
    .locals 8
    .param p0, "params"    # Lcom/google/protobuf/nano/MessageNano;
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "sentinel"    # I

    .prologue
    .line 325
    const/4 v3, 0x0

    .line 326
    .local v3, "success":Z
    const/4 v1, 0x0

    .line 328
    .local v1, "stream":Ljava/io/OutputStream;
    :try_start_0
    new-instance v2, Ljava/io/BufferedOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-static {p1}, Lcom/google/vr/cardboard/ConfigUtils;->getConfigFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 329
    .end local v1    # "stream":Ljava/io/OutputStream;
    .local v2, "stream":Ljava/io/OutputStream;
    :try_start_1
    invoke-static {p0, v2, p2}, Lcom/google/vr/cardboard/ConfigUtils;->writeToOutputStream(Lcom/google/protobuf/nano/MessageNano;Ljava/io/OutputStream;I)Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v3

    .line 335
    if-eqz v2, :cond_2

    .line 337
    :try_start_2
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v1, v2

    .line 343
    .end local v2    # "stream":Ljava/io/OutputStream;
    .restart local v1    # "stream":Ljava/io/OutputStream;
    :cond_0
    :goto_0
    return v3

    .line 338
    .end local v1    # "stream":Ljava/io/OutputStream;
    .restart local v2    # "stream":Ljava/io/OutputStream;
    :catch_0
    move-exception v4

    move-object v1, v2

    .line 340
    .end local v2    # "stream":Ljava/io/OutputStream;
    .restart local v1    # "stream":Ljava/io/OutputStream;
    goto :goto_0

    .line 330
    :catch_1
    move-exception v0

    .line 331
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_3
    sget-object v4, Lcom/google/vr/cardboard/ConfigUtils;->TAG:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x27

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Parameters file not found for writing: "

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 335
    if-eqz v1, :cond_0

    .line 337
    :try_start_4
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 338
    :catch_2
    move-exception v4

    goto :goto_0

    .line 332
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_3
    move-exception v0

    .line 333
    .local v0, "e":Ljava/lang/IllegalStateException;
    :goto_2
    :try_start_5
    sget-object v4, Lcom/google/vr/cardboard/ConfigUtils;->TAG:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x1a

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Error writing parameters: "

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 335
    if-eqz v1, :cond_0

    .line 337
    :try_start_6
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_0

    .line 338
    :catch_4
    move-exception v4

    goto :goto_0

    .line 335
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catchall_0
    move-exception v4

    :goto_3
    if-eqz v1, :cond_1

    .line 337
    :try_start_7
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 340
    :cond_1
    :goto_4
    throw v4

    .line 338
    :catch_5
    move-exception v5

    goto :goto_4

    .line 335
    .end local v1    # "stream":Ljava/io/OutputStream;
    .restart local v2    # "stream":Ljava/io/OutputStream;
    :catchall_1
    move-exception v4

    move-object v1, v2

    .end local v2    # "stream":Ljava/io/OutputStream;
    .restart local v1    # "stream":Ljava/io/OutputStream;
    goto :goto_3

    .line 332
    .end local v1    # "stream":Ljava/io/OutputStream;
    .restart local v2    # "stream":Ljava/io/OutputStream;
    :catch_6
    move-exception v0

    move-object v1, v2

    .end local v2    # "stream":Ljava/io/OutputStream;
    .restart local v1    # "stream":Ljava/io/OutputStream;
    goto :goto_2

    .line 330
    .end local v1    # "stream":Ljava/io/OutputStream;
    .restart local v2    # "stream":Ljava/io/OutputStream;
    :catch_7
    move-exception v0

    move-object v1, v2

    .end local v2    # "stream":Ljava/io/OutputStream;
    .restart local v1    # "stream":Ljava/io/OutputStream;
    goto :goto_1

    .end local v1    # "stream":Ljava/io/OutputStream;
    .restart local v2    # "stream":Ljava/io/OutputStream;
    :cond_2
    move-object v1, v2

    .end local v2    # "stream":Ljava/io/OutputStream;
    .restart local v1    # "stream":Ljava/io/OutputStream;
    goto :goto_0
.end method

.method private static writeToOutputStream(Lcom/google/protobuf/nano/MessageNano;Ljava/io/OutputStream;I)Z
    .locals 7
    .param p0, "params"    # Lcom/google/protobuf/nano/MessageNano;
    .param p1, "outputStream"    # Ljava/io/OutputStream;
    .param p2, "sentinel"    # I

    .prologue
    .line 361
    :try_start_0
    invoke-static {p0}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v2

    .line 362
    .local v2, "paramBytes":[B
    const/16 v3, 0x8

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 363
    .local v1, "header":Ljava/nio/ByteBuffer;
    invoke-virtual {v1, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 364
    array-length v3, v2

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 365
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write([B)V

    .line 366
    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 367
    const/4 v3, 0x1

    .line 370
    .end local v1    # "header":Ljava/nio/ByteBuffer;
    .end local v2    # "paramBytes":[B
    :goto_0
    return v3

    .line 368
    :catch_0
    move-exception v0

    .line 369
    .local v0, "e":Ljava/io/IOException;
    sget-object v4, Lcom/google/vr/cardboard/ConfigUtils;->TAG:Ljava/lang/String;

    const-string v5, "Error writing parameters: "

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v5, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    const/4 v3, 0x0

    goto :goto_0

    .line 369
    :cond_0
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1
.end method
