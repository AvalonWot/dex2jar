.class public Lcom/google/vr/sdk/base/sensors/NfcSensor;
.super Ljava/lang/Object;
.source "NfcSensor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/sdk/base/sensors/NfcSensor$ListenerHelper;,
        Lcom/google/vr/sdk/base/sensors/NfcSensor$OnCardboardNfcListener;
    }
.end annotation


# static fields
.field private static final MAX_CONNECTION_FAILURES:I = 0x1

.field private static final NFC_POLLING_INTERVAL_MS:J = 0xfaL

.field private static final TAG:Ljava/lang/String; = "NfcSensor"

.field private static sInstance:Lcom/google/vr/sdk/base/sensors/NfcSensor;


# instance fields
.field private final context:Landroid/content/Context;

.field private currentNdef:Landroid/nfc/tech/Ndef;

.field private currentTag:Landroid/nfc/Tag;

.field private currentTagIsCardboard:Z

.field private final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/vr/sdk/base/sensors/NfcSensor$ListenerHelper;",
            ">;"
        }
    .end annotation
.end field

.field private final nfcAdapter:Landroid/nfc/NfcAdapter;

.field private nfcBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private nfcDisconnectTimer:Ljava/util/Timer;

.field private nfcIntentFilters:[Landroid/content/IntentFilter;

.field private tagConnectionFailures:I

.field private final tagLock:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vr/sdk/base/sensors/NfcSensor;->context:Landroid/content/Context;

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/vr/sdk/base/sensors/NfcSensor;->listeners:Ljava/util/List;

    .line 110
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/vr/sdk/base/sensors/NfcSensor;->tagLock:Ljava/lang/Object;

    .line 112
    const-string v0, "android.permission.NFC"

    invoke-static {p1, v0}, Lcom/google/vr/sdk/base/PermissionUtils;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    invoke-static {p1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vr/sdk/base/sensors/NfcSensor;->nfcAdapter:Landroid/nfc/NfcAdapter;

    .line 118
    :goto_0
    iget-object v0, p0, Lcom/google/vr/sdk/base/sensors/NfcSensor;->nfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v0, :cond_1

    .line 119
    const-string v0, "NfcSensor"

    const-string v1, "NFC is not supported on this phone or application doesn\'t have NFC permission."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :goto_1
    return-void

    .line 115
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/vr/sdk/base/sensors/NfcSensor;->nfcAdapter:Landroid/nfc/NfcAdapter;

    goto :goto_0

    .line 124
    :cond_1
    new-instance v0, Lcom/google/vr/sdk/base/sensors/NfcSensor$1;

    invoke-direct {v0, p0}, Lcom/google/vr/sdk/base/sensors/NfcSensor$1;-><init>(Lcom/google/vr/sdk/base/sensors/NfcSensor;)V

    iput-object v0, p0, Lcom/google/vr/sdk/base/sensors/NfcSensor;->nfcBroadcastReceiver:Landroid/content/BroadcastReceiver;

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/google/vr/sdk/base/sensors/NfcSensor;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/google/vr/sdk/base/sensors/NfcSensor;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/vr/sdk/base/sensors/NfcSensor;->tagLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/vr/sdk/base/sensors/NfcSensor;)Landroid/nfc/tech/Ndef;
    .locals 1
    .param p0, "x0"    # Lcom/google/vr/sdk/base/sensors/NfcSensor;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/vr/sdk/base/sensors/NfcSensor;->currentNdef:Landroid/nfc/tech/Ndef;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/vr/sdk/base/sensors/NfcSensor;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/vr/sdk/base/sensors/NfcSensor;

    .prologue
    .line 51
    iget v0, p0, Lcom/google/vr/sdk/base/sensors/NfcSensor;->tagConnectionFailures:I

    return v0
.end method

.method static synthetic access$204(Lcom/google/vr/sdk/base/sensors/NfcSensor;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/vr/sdk/base/sensors/NfcSensor;

    .prologue
    .line 51
    iget v0, p0, Lcom/google/vr/sdk/base/sensors/NfcSensor;->tagConnectionFailures:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/vr/sdk/base/sensors/NfcSensor;->tagConnectionFailures:I

    return v0
.end method

.method static synthetic access$300(Lcom/google/vr/sdk/base/sensors/NfcSensor;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/vr/sdk/base/sensors/NfcSensor;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/google/vr/sdk/base/sensors/NfcSensor;->closeCurrentNfcTag()V

    return-void
.end method

.method static synthetic access$400(Lcom/google/vr/sdk/base/sensors/NfcSensor;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/vr/sdk/base/sensors/NfcSensor;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/google/vr/sdk/base/sensors/NfcSensor;->sendDisconnectionEvent()V

    return-void
.end method

.method private closeCurrentNfcTag()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 502
    iget-object v1, p0, Lcom/google/vr/sdk/base/sensors/NfcSensor;->nfcDisconnectTimer:Ljava/util/Timer;

    if-eqz v1, :cond_0

    .line 503
    iget-object v1, p0, Lcom/google/vr/sdk/base/sensors/NfcSensor;->nfcDisconnectTimer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 506
    :cond_0
    iget-object v1, p0, Lcom/google/vr/sdk/base/sensors/NfcSensor;->currentNdef:Landroid/nfc/tech/Ndef;

    if-nez v1, :cond_1

    .line 520
    :goto_0
    return-void

    .line 512
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/google/vr/sdk/base/sensors/NfcSensor;->currentNdef:Landroid/nfc/tech/Ndef;

    invoke-virtual {v1}, Landroid/nfc/tech/Ndef;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 517
    :goto_1
    iput-object v3, p0, Lcom/google/vr/sdk/base/sensors/NfcSensor;->currentTag:Landroid/nfc/Tag;

    .line 518
    iput-object v3, p0, Lcom/google/vr/sdk/base/sensors/NfcSensor;->currentNdef:Landroid/nfc/tech/Ndef;

    .line 519
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/vr/sdk/base/sensors/NfcSensor;->currentTagIsCardboard:Z

    goto :goto_0

    .line 513
    :catch_0
    move-exception v0

    .line 514
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "NfcSensor"

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/google/vr/sdk/base/sensors/NfcSensor;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 100
    sget-object v0, Lcom/google/vr/sdk/base/sensors/NfcSensor;->sInstance:Lcom/google/vr/sdk/base/sensors/NfcSensor;

    if-nez v0, :cond_0

    .line 101
    new-instance v0, Lcom/google/vr/sdk/base/sensors/NfcSensor;

    invoke-direct {v0, p0}, Lcom/google/vr/sdk/base/sensors/NfcSensor;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/vr/sdk/base/sensors/NfcSensor;->sInstance:Lcom/google/vr/sdk/base/sensors/NfcSensor;

    .line 104
    :cond_0
    sget-object v0, Lcom/google/vr/sdk/base/sensors/NfcSensor;->sInstance:Lcom/google/vr/sdk/base/sensors/NfcSensor;

    return-object v0
.end method

.method private isCardboardNdefMessage(Landroid/nfc/NdefMessage;)Z
    .locals 6
    .param p1, "message"    # Landroid/nfc/NdefMessage;

    .prologue
    const/4 v1, 0x0

    .line 531
    if-nez p1, :cond_1

    .line 541
    :cond_0
    :goto_0
    return v1

    .line 535
    :cond_1
    invoke-virtual {p1}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v3

    array-length v4, v3

    move v2, v1

    :goto_1
    if-ge v2, v4, :cond_0

    aget-object v0, v3, v2

    .line 536
    .local v0, "record":Landroid/nfc/NdefRecord;
    invoke-direct {p0, v0}, Lcom/google/vr/sdk/base/sensors/NfcSensor;->isCardboardNdefRecord(Landroid/nfc/NdefRecord;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 537
    const/4 v1, 0x1

    goto :goto_0

    .line 535
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private isCardboardNdefRecord(Landroid/nfc/NdefRecord;)Z
    .locals 3
    .param p1, "record"    # Landroid/nfc/NdefRecord;

    .prologue
    const/4 v1, 0x0

    .line 545
    if-nez p1, :cond_1

    .line 550
    :cond_0
    :goto_0
    return v1

    .line 549
    :cond_1
    invoke-virtual {p1}, Landroid/nfc/NdefRecord;->toUri()Landroid/net/Uri;

    move-result-object v0

    .line 550
    .local v0, "uri":Landroid/net/Uri;
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/google/vr/sdk/base/GvrViewerParams;->isGvrUri(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private onNewNfcTag(Landroid/nfc/Tag;)V
    .locals 18
    .param p1, "nfcTag"    # Landroid/nfc/Tag;

    .prologue
    .line 408
    if-nez p1, :cond_0

    .line 498
    :goto_0
    return-void

    .line 412
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/vr/sdk/base/sensors/NfcSensor;->tagLock:Ljava/lang/Object;

    move-object/from16 v17, v0

    monitor-enter v17

    .line 413
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/vr/sdk/base/sensors/NfcSensor;->currentTag:Landroid/nfc/Tag;

    .line 414
    .local v13, "previousTag":Landroid/nfc/Tag;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/vr/sdk/base/sensors/NfcSensor;->currentNdef:Landroid/nfc/tech/Ndef;

    .line 415
    .local v12, "previousNdef":Landroid/nfc/tech/Ndef;
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/google/vr/sdk/base/sensors/NfcSensor;->currentTagIsCardboard:Z

    .line 418
    .local v14, "previousTagWasCardboard":Z
    invoke-direct/range {p0 .. p0}, Lcom/google/vr/sdk/base/sensors/NfcSensor;->closeCurrentNfcTag()V

    .line 422
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/vr/sdk/base/sensors/NfcSensor;->currentTag:Landroid/nfc/Tag;

    .line 423
    invoke-static/range {p1 .. p1}, Landroid/nfc/tech/Ndef;->get(Landroid/nfc/Tag;)Landroid/nfc/tech/Ndef;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/vr/sdk/base/sensors/NfcSensor;->currentNdef:Landroid/nfc/tech/Ndef;

    .line 425
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/vr/sdk/base/sensors/NfcSensor;->currentNdef:Landroid/nfc/tech/Ndef;

    if-nez v2, :cond_2

    .line 428
    if-eqz v14, :cond_1

    .line 429
    invoke-direct/range {p0 .. p0}, Lcom/google/vr/sdk/base/sensors/NfcSensor;->sendDisconnectionEvent()V

    .line 431
    :cond_1
    monitor-exit v17

    goto :goto_0

    .line 497
    .end local v12    # "previousNdef":Landroid/nfc/tech/Ndef;
    .end local v13    # "previousTag":Landroid/nfc/Tag;
    .end local v14    # "previousTagWasCardboard":Z
    :catchall_0
    move-exception v2

    monitor-exit v17
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 434
    .restart local v12    # "previousNdef":Landroid/nfc/tech/Ndef;
    .restart local v13    # "previousTag":Landroid/nfc/Tag;
    .restart local v14    # "previousTagWasCardboard":Z
    :cond_2
    const/4 v9, 0x0

    .line 436
    .local v9, "isSameTag":Z
    if-eqz v12, :cond_3

    .line 438
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/vr/sdk/base/sensors/NfcSensor;->currentTag:Landroid/nfc/Tag;

    invoke-virtual {v2}, Landroid/nfc/Tag;->getId()[B

    move-result-object v15

    .line 439
    .local v15, "tagId1":[B
    invoke-virtual {v13}, Landroid/nfc/Tag;->getId()[B

    move-result-object v16

    .line 440
    .local v16, "tagId2":[B
    if-eqz v15, :cond_4

    if-eqz v16, :cond_4

    invoke-static/range {v15 .. v16}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v9, 0x1

    .line 443
    :goto_1
    if-nez v9, :cond_3

    if-eqz v14, :cond_3

    .line 444
    invoke-direct/range {p0 .. p0}, Lcom/google/vr/sdk/base/sensors/NfcSensor;->sendDisconnectionEvent()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 451
    .end local v15    # "tagId1":[B
    .end local v16    # "tagId2":[B
    :cond_3
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/vr/sdk/base/sensors/NfcSensor;->currentNdef:Landroid/nfc/tech/Ndef;

    invoke-virtual {v2}, Landroid/nfc/tech/Ndef;->connect()V

    .line 452
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/vr/sdk/base/sensors/NfcSensor;->currentNdef:Landroid/nfc/tech/Ndef;

    invoke-virtual {v2}, Landroid/nfc/tech/Ndef;->getCachedNdefMessage()Landroid/nfc/NdefMessage;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v11

    .line 465
    .local v11, "nfcTagContents":Landroid/nfc/NdefMessage;
    :try_start_3
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/google/vr/sdk/base/sensors/NfcSensor;->isCardboardNdefMessage(Landroid/nfc/NdefMessage;)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/google/vr/sdk/base/sensors/NfcSensor;->currentTagIsCardboard:Z

    .line 468
    if-nez v9, :cond_8

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/vr/sdk/base/sensors/NfcSensor;->currentTagIsCardboard:Z

    if-eqz v2, :cond_8

    .line 469
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/vr/sdk/base/sensors/NfcSensor;->listeners:Ljava/util/List;

    monitor-enter v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 470
    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/vr/sdk/base/sensors/NfcSensor;->listeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/vr/sdk/base/sensors/NfcSensor$ListenerHelper;

    .line 472
    .local v10, "listener":Lcom/google/vr/sdk/base/sensors/NfcSensor$ListenerHelper;
    invoke-static {v11}, Lcom/google/vr/sdk/base/GvrViewerParams;->createFromNfcContents(Landroid/nfc/NdefMessage;)Lcom/google/vr/sdk/base/GvrViewerParams;

    move-result-object v4

    .line 471
    invoke-virtual {v10, v4}, Lcom/google/vr/sdk/base/sensors/NfcSensor$ListenerHelper;->onInsertedIntoGvrViewer(Lcom/google/vr/sdk/base/GvrViewerParams;)V

    goto :goto_2

    .line 474
    .end local v10    # "listener":Lcom/google/vr/sdk/base/sensors/NfcSensor$ListenerHelper;
    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v2

    .line 440
    .end local v11    # "nfcTagContents":Landroid/nfc/NdefMessage;
    .restart local v15    # "tagId1":[B
    .restart local v16    # "tagId2":[B
    :cond_4
    const/4 v9, 0x0

    goto :goto_1

    .line 453
    .end local v15    # "tagId1":[B
    .end local v16    # "tagId2":[B
    :catch_0
    move-exception v8

    .line 454
    .local v8, "e":Ljava/lang/Exception;
    const-string v3, "NfcSensor"

    const-string v4, "Error reading NFC tag: "

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_3
    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    if-eqz v9, :cond_5

    if-eqz v14, :cond_5

    .line 458
    invoke-direct/range {p0 .. p0}, Lcom/google/vr/sdk/base/sensors/NfcSensor;->sendDisconnectionEvent()V

    .line 461
    :cond_5
    monitor-exit v17

    goto/16 :goto_0

    .line 454
    :cond_6
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    .line 474
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v11    # "nfcTagContents":Landroid/nfc/NdefMessage;
    :cond_7
    :try_start_6
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 478
    :cond_8
    :try_start_7
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/vr/sdk/base/sensors/NfcSensor;->currentTagIsCardboard:Z

    if-eqz v2, :cond_9

    .line 479
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/vr/sdk/base/sensors/NfcSensor;->tagConnectionFailures:I

    .line 480
    new-instance v2, Ljava/util/Timer;

    const-string v3, "NFC disconnect timer"

    invoke-direct {v2, v3}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/vr/sdk/base/sensors/NfcSensor;->nfcDisconnectTimer:Ljava/util/Timer;

    .line 481
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/vr/sdk/base/sensors/NfcSensor;->nfcDisconnectTimer:Ljava/util/Timer;

    new-instance v3, Lcom/google/vr/sdk/base/sensors/NfcSensor$2;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/google/vr/sdk/base/sensors/NfcSensor$2;-><init>(Lcom/google/vr/sdk/base/sensors/NfcSensor;)V

    const-wide/16 v4, 0xfa

    const-wide/16 v6, 0xfa

    invoke-virtual/range {v2 .. v7}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 497
    :cond_9
    monitor-exit v17
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_0
.end method

.method private sendDisconnectionEvent()V
    .locals 4

    .prologue
    .line 523
    iget-object v2, p0, Lcom/google/vr/sdk/base/sensors/NfcSensor;->listeners:Ljava/util/List;

    monitor-enter v2

    .line 524
    :try_start_0
    iget-object v1, p0, Lcom/google/vr/sdk/base/sensors/NfcSensor;->listeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/vr/sdk/base/sensors/NfcSensor$ListenerHelper;

    .line 525
    .local v0, "listener":Lcom/google/vr/sdk/base/sensors/NfcSensor$ListenerHelper;
    invoke-virtual {v0}, Lcom/google/vr/sdk/base/sensors/NfcSensor$ListenerHelper;->onRemovedFromGvrViewer()V

    goto :goto_0

    .line 527
    .end local v0    # "listener":Lcom/google/vr/sdk/base/sensors/NfcSensor$ListenerHelper;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 528
    return-void
.end method


# virtual methods
.method public addOnCardboardNfcListener(Lcom/google/vr/sdk/base/sensors/NfcSensor$OnCardboardNfcListener;)V
    .locals 6
    .param p1, "listener"    # Lcom/google/vr/sdk/base/sensors/NfcSensor$OnCardboardNfcListener;

    .prologue
    .line 140
    if-nez p1, :cond_0

    .line 164
    :goto_0
    return-void

    .line 144
    :cond_0
    iget-object v3, p0, Lcom/google/vr/sdk/base/sensors/NfcSensor;->listeners:Ljava/util/List;

    monitor-enter v3

    .line 145
    :try_start_0
    iget-object v2, p0, Lcom/google/vr/sdk/base/sensors/NfcSensor;->listeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 147
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.nfc.action.NDEF_DISCOVERED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 148
    .local v1, "ndefIntentFilter":Landroid/content/IntentFilter;
    const-string v2, "android.nfc.action.TECH_DISCOVERED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 149
    const-string v2, "android.nfc.action.TAG_DISCOVERED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 150
    const/4 v2, 0x1

    new-array v2, v2, [Landroid/content/IntentFilter;

    const/4 v4, 0x0

    aput-object v1, v2, v4

    iput-object v2, p0, Lcom/google/vr/sdk/base/sensors/NfcSensor;->nfcIntentFilters:[Landroid/content/IntentFilter;

    .line 153
    iget-object v2, p0, Lcom/google/vr/sdk/base/sensors/NfcSensor;->context:Landroid/content/Context;

    iget-object v4, p0, Lcom/google/vr/sdk/base/sensors/NfcSensor;->nfcBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 156
    .end local v1    # "ndefIntentFilter":Landroid/content/IntentFilter;
    :cond_1
    iget-object v2, p0, Lcom/google/vr/sdk/base/sensors/NfcSensor;->listeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/vr/sdk/base/sensors/NfcSensor$ListenerHelper;

    .line 157
    .local v0, "helper":Lcom/google/vr/sdk/base/sensors/NfcSensor$ListenerHelper;
    invoke-virtual {v0}, Lcom/google/vr/sdk/base/sensors/NfcSensor$ListenerHelper;->getListener()Lcom/google/vr/sdk/base/sensors/NfcSensor$OnCardboardNfcListener;

    move-result-object v4

    if-ne v4, p1, :cond_2

    .line 158
    monitor-exit v3

    goto :goto_0

    .line 163
    .end local v0    # "helper":Lcom/google/vr/sdk/base/sensors/NfcSensor$ListenerHelper;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 162
    :cond_3
    :try_start_1
    iget-object v2, p0, Lcom/google/vr/sdk/base/sensors/NfcSensor;->listeners:Ljava/util/List;

    new-instance v4, Lcom/google/vr/sdk/base/sensors/NfcSensor$ListenerHelper;

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    invoke-direct {v4, p1, v5}, Lcom/google/vr/sdk/base/sensors/NfcSensor$ListenerHelper;-><init>(Lcom/google/vr/sdk/base/sensors/NfcSensor$OnCardboardNfcListener;Landroid/os/Handler;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getCurrentTagContents()Landroid/nfc/NdefMessage;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/nfc/TagLostException;,
            Ljava/io/IOException;,
            Landroid/nfc/FormatException;
        }
    .end annotation

    .prologue
    .line 243
    iget-object v1, p0, Lcom/google/vr/sdk/base/sensors/NfcSensor;->tagLock:Ljava/lang/Object;

    monitor-enter v1

    .line 244
    :try_start_0
    iget-object v0, p0, Lcom/google/vr/sdk/base/sensors/NfcSensor;->currentNdef:Landroid/nfc/tech/Ndef;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/vr/sdk/base/sensors/NfcSensor;->currentNdef:Landroid/nfc/tech/Ndef;

    invoke-virtual {v0}, Landroid/nfc/tech/Ndef;->getNdefMessage()Landroid/nfc/NdefMessage;

    move-result-object v0

    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 245
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getTagCapacity()I
    .locals 3

    .prologue
    .line 255
    iget-object v1, p0, Lcom/google/vr/sdk/base/sensors/NfcSensor;->tagLock:Ljava/lang/Object;

    monitor-enter v1

    .line 256
    :try_start_0
    iget-object v0, p0, Lcom/google/vr/sdk/base/sensors/NfcSensor;->currentNdef:Landroid/nfc/tech/Ndef;

    if-nez v0, :cond_0

    .line 257
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "No NFC tag"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 261
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 260
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/vr/sdk/base/sensors/NfcSensor;->currentNdef:Landroid/nfc/tech/Ndef;

    invoke-virtual {v0}, Landroid/nfc/tech/Ndef;->getMaxSize()I

    move-result v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v0
.end method

.method public getTagContents()Landroid/nfc/NdefMessage;
    .locals 2

    .prologue
    .line 228
    iget-object v1, p0, Lcom/google/vr/sdk/base/sensors/NfcSensor;->tagLock:Ljava/lang/Object;

    monitor-enter v1

    .line 229
    :try_start_0
    iget-object v0, p0, Lcom/google/vr/sdk/base/sensors/NfcSensor;->currentNdef:Landroid/nfc/tech/Ndef;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/vr/sdk/base/sensors/NfcSensor;->currentNdef:Landroid/nfc/tech/Ndef;

    invoke-virtual {v0}, Landroid/nfc/tech/Ndef;->getCachedNdefMessage()Landroid/nfc/NdefMessage;

    move-result-object v0

    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 230
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isDeviceInCardboard()Z
    .locals 2

    .prologue
    .line 217
    iget-object v1, p0, Lcom/google/vr/sdk/base/sensors/NfcSensor;->tagLock:Ljava/lang/Object;

    monitor-enter v1

    .line 218
    :try_start_0
    iget-boolean v0, p0, Lcom/google/vr/sdk/base/sensors/NfcSensor;->currentTagIsCardboard:Z

    monitor-exit v1

    return v0

    .line 219
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isNfcEnabled()Z
    .locals 1

    .prologue
    .line 207
    invoke-virtual {p0}, Lcom/google/vr/sdk/base/sensors/NfcSensor;->isNfcSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/vr/sdk/base/sensors/NfcSensor;->nfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNfcSupported()Z
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/google/vr/sdk/base/sensors/NfcSensor;->nfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onNfcIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 400
    invoke-virtual {p0}, Lcom/google/vr/sdk/base/sensors/NfcSensor;->isNfcEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/vr/sdk/base/sensors/NfcSensor;->nfcIntentFilters:[Landroid/content/IntentFilter;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->matchAction(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 405
    :cond_0
    :goto_0
    return-void

    .line 404
    :cond_1
    const-string v0, "android.nfc.extra.TAG"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/nfc/Tag;

    invoke-direct {p0, v0}, Lcom/google/vr/sdk/base/sensors/NfcSensor;->onNewNfcTag(Landroid/nfc/Tag;)V

    goto :goto_0
.end method

.method public onPause(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 387
    invoke-virtual {p0}, Lcom/google/vr/sdk/base/sensors/NfcSensor;->isNfcEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 392
    :goto_0
    return-void

    .line 391
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/base/sensors/NfcSensor;->nfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0, p1}, Landroid/nfc/NfcAdapter;->disableForegroundDispatch(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v3, 0x0

    .line 370
    invoke-virtual {p0}, Lcom/google/vr/sdk/base/sensors/NfcSensor;->isNfcEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 379
    :goto_0
    return-void

    .line 374
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.nfc.action.NDEF_DISCOVERED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 375
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 377
    iget-object v2, p0, Lcom/google/vr/sdk/base/sensors/NfcSensor;->context:Landroid/content/Context;

    invoke-static {v2, v3, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 378
    .local v1, "pendingIntent":Landroid/app/PendingIntent;
    iget-object v2, p0, Lcom/google/vr/sdk/base/sensors/NfcSensor;->nfcAdapter:Landroid/nfc/NfcAdapter;

    iget-object v3, p0, Lcom/google/vr/sdk/base/sensors/NfcSensor;->nfcIntentFilters:[Landroid/content/IntentFilter;

    const/4 v4, 0x0

    invoke-virtual {v2, p1, v1, v3, v4}, Landroid/nfc/NfcAdapter;->enableForegroundDispatch(Landroid/app/Activity;Landroid/app/PendingIntent;[Landroid/content/IntentFilter;[[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public removeOnCardboardNfcListener(Lcom/google/vr/sdk/base/sensors/NfcSensor$OnCardboardNfcListener;)V
    .locals 4
    .param p1, "listener"    # Lcom/google/vr/sdk/base/sensors/NfcSensor$OnCardboardNfcListener;

    .prologue
    .line 172
    if-nez p1, :cond_0

    .line 190
    :goto_0
    return-void

    .line 176
    :cond_0
    iget-object v2, p0, Lcom/google/vr/sdk/base/sensors/NfcSensor;->listeners:Ljava/util/List;

    monitor-enter v2

    .line 177
    :try_start_0
    iget-object v1, p0, Lcom/google/vr/sdk/base/sensors/NfcSensor;->listeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/vr/sdk/base/sensors/NfcSensor$ListenerHelper;

    .line 178
    .local v0, "helper":Lcom/google/vr/sdk/base/sensors/NfcSensor$ListenerHelper;
    invoke-virtual {v0}, Lcom/google/vr/sdk/base/sensors/NfcSensor$ListenerHelper;->getListener()Lcom/google/vr/sdk/base/sensors/NfcSensor$OnCardboardNfcListener;

    move-result-object v3

    if-ne v3, p1, :cond_1

    .line 179
    iget-object v1, p0, Lcom/google/vr/sdk/base/sensors/NfcSensor;->listeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 186
    .end local v0    # "helper":Lcom/google/vr/sdk/base/sensors/NfcSensor$ListenerHelper;
    :cond_2
    iget-object v1, p0, Lcom/google/vr/sdk/base/sensors/NfcSensor;->nfcBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/vr/sdk/base/sensors/NfcSensor;->listeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 187
    iget-object v1, p0, Lcom/google/vr/sdk/base/sensors/NfcSensor;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/vr/sdk/base/sensors/NfcSensor;->nfcBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 189
    :cond_3
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public writeUri(Landroid/net/Uri;)V
    .locals 14
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/nfc/TagLostException;,
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 277
    iget-object v9, p0, Lcom/google/vr/sdk/base/sensors/NfcSensor;->tagLock:Ljava/lang/Object;

    monitor-enter v9

    .line 278
    :try_start_0
    iget-object v10, p0, Lcom/google/vr/sdk/base/sensors/NfcSensor;->currentTag:Landroid/nfc/Tag;

    if-nez v10, :cond_0

    .line 279
    new-instance v8, Ljava/lang/IllegalStateException;

    const-string v10, "No NFC tag found"

    invoke-direct {v8, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 361
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .line 282
    :cond_0
    const/4 v0, 0x0

    .line 283
    .local v0, "currentMessage":Landroid/nfc/NdefMessage;
    const/4 v3, 0x0

    .line 284
    .local v3, "newMessage":Landroid/nfc/NdefMessage;
    :try_start_1
    invoke-static {p1}, Landroid/nfc/NdefRecord;->createUri(Landroid/net/Uri;)Landroid/nfc/NdefRecord;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    .line 288
    .local v4, "newRecord":Landroid/nfc/NdefRecord;
    :try_start_2
    invoke-virtual {p0}, Lcom/google/vr/sdk/base/sensors/NfcSensor;->getCurrentTagContents()Landroid/nfc/NdefMessage;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    .line 295
    :goto_0
    if-eqz v0, :cond_4

    .line 296
    :try_start_3
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 297
    .local v5, "newRecords":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/NdefRecord;>;"
    const/4 v7, 0x0

    .line 299
    .local v7, "recordFound":Z
    invoke-virtual {v0}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v10

    array-length v11, v10

    :goto_1
    if-ge v8, v11, :cond_3

    aget-object v6, v10, v8

    .line 300
    .local v6, "record":Landroid/nfc/NdefRecord;
    invoke-direct {p0, v6}, Lcom/google/vr/sdk/base/sensors/NfcSensor;->isCardboardNdefRecord(Landroid/nfc/NdefRecord;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 302
    if-nez v7, :cond_1

    .line 303
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 304
    const/4 v7, 0x1

    .line 299
    :cond_1
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 289
    .end local v5    # "newRecords":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/NdefRecord;>;"
    .end local v6    # "record":Landroid/nfc/NdefRecord;
    .end local v7    # "recordFound":Z
    :catch_0
    move-exception v1

    .line 291
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/google/vr/sdk/base/sensors/NfcSensor;->getTagContents()Landroid/nfc/NdefMessage;

    move-result-object v0

    goto :goto_0

    .line 307
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v5    # "newRecords":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/NdefRecord;>;"
    .restart local v6    # "record":Landroid/nfc/NdefRecord;
    .restart local v7    # "recordFound":Z
    :cond_2
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 311
    .end local v6    # "record":Landroid/nfc/NdefRecord;
    :cond_3
    new-instance v3, Landroid/nfc/NdefMessage;

    .end local v3    # "newMessage":Landroid/nfc/NdefMessage;
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v8, v8, [Landroid/nfc/NdefRecord;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Landroid/nfc/NdefRecord;

    invoke-direct {v3, v8}, Landroid/nfc/NdefMessage;-><init>([Landroid/nfc/NdefRecord;)V

    .line 315
    .end local v5    # "newRecords":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/NdefRecord;>;"
    .end local v7    # "recordFound":Z
    .restart local v3    # "newMessage":Landroid/nfc/NdefMessage;
    :cond_4
    if-nez v3, :cond_5

    .line 316
    new-instance v3, Landroid/nfc/NdefMessage;

    .end local v3    # "newMessage":Landroid/nfc/NdefMessage;
    const/4 v8, 0x1

    new-array v8, v8, [Landroid/nfc/NdefRecord;

    const/4 v10, 0x0

    aput-object v4, v8, v10

    invoke-direct {v3, v8}, Landroid/nfc/NdefMessage;-><init>([Landroid/nfc/NdefRecord;)V

    .line 319
    .restart local v3    # "newMessage":Landroid/nfc/NdefMessage;
    :cond_5
    iget-object v8, p0, Lcom/google/vr/sdk/base/sensors/NfcSensor;->currentNdef:Landroid/nfc/tech/Ndef;

    if-eqz v8, :cond_9

    .line 321
    iget-object v8, p0, Lcom/google/vr/sdk/base/sensors/NfcSensor;->currentNdef:Landroid/nfc/tech/Ndef;

    invoke-virtual {v8}, Landroid/nfc/tech/Ndef;->isConnected()Z

    move-result v8

    if-nez v8, :cond_6

    .line 322
    iget-object v8, p0, Lcom/google/vr/sdk/base/sensors/NfcSensor;->currentNdef:Landroid/nfc/tech/Ndef;

    invoke-virtual {v8}, Landroid/nfc/tech/Ndef;->connect()V

    .line 325
    :cond_6
    iget-object v8, p0, Lcom/google/vr/sdk/base/sensors/NfcSensor;->currentNdef:Landroid/nfc/tech/Ndef;

    invoke-virtual {v8}, Landroid/nfc/tech/Ndef;->getMaxSize()I

    move-result v8

    invoke-virtual {v3}, Landroid/nfc/NdefMessage;->getByteArrayLength()I

    move-result v10

    if-ge v8, v10, :cond_7

    .line 326
    new-instance v8, Ljava/lang/IllegalArgumentException;

    iget-object v10, p0, Lcom/google/vr/sdk/base/sensors/NfcSensor;->currentNdef:Landroid/nfc/tech/Ndef;

    .line 328
    invoke-virtual {v10}, Landroid/nfc/tech/Ndef;->getMaxSize()I

    move-result v10

    .line 329
    invoke-virtual {v3}, Landroid/nfc/NdefMessage;->getByteArrayLength()I

    move-result v11

    const/16 v12, 0x52

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v12}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v12, "Not enough capacity in NFC tag. Capacity: "

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, " bytes, "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " required."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 333
    :cond_7
    :try_start_4
    iget-object v8, p0, Lcom/google/vr/sdk/base/sensors/NfcSensor;->currentNdef:Landroid/nfc/tech/Ndef;

    invoke-virtual {v8, v3}, Landroid/nfc/tech/Ndef;->writeNdefMessage(Landroid/nfc/NdefMessage;)V
    :try_end_4
    .catch Landroid/nfc/FormatException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 360
    :goto_3
    :try_start_5
    iget-object v8, p0, Lcom/google/vr/sdk/base/sensors/NfcSensor;->currentTag:Landroid/nfc/Tag;

    invoke-direct {p0, v8}, Lcom/google/vr/sdk/base/sensors/NfcSensor;->onNewNfcTag(Landroid/nfc/Tag;)V

    .line 361
    monitor-exit v9

    .line 362
    return-void

    .line 334
    :catch_1
    move-exception v1

    .line 335
    .local v1, "e":Landroid/nfc/FormatException;
    new-instance v10, Ljava/lang/RuntimeException;

    const-string v11, "Internal error when writing to NFC tag: "

    .line 336
    invoke-virtual {v1}, Landroid/nfc/FormatException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v12

    if-eqz v12, :cond_8

    invoke-virtual {v11, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    :goto_4
    invoke-direct {v10, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_8
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v11}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_4

    .line 341
    .end local v1    # "e":Landroid/nfc/FormatException;
    :cond_9
    iget-object v8, p0, Lcom/google/vr/sdk/base/sensors/NfcSensor;->currentTag:Landroid/nfc/Tag;

    invoke-static {v8}, Landroid/nfc/tech/NdefFormatable;->get(Landroid/nfc/Tag;)Landroid/nfc/tech/NdefFormatable;

    move-result-object v2

    .line 342
    .local v2, "ndef":Landroid/nfc/tech/NdefFormatable;
    if-nez v2, :cond_a

    .line 343
    new-instance v8, Ljava/io/IOException;

    const-string v10, "Could not find a writable technology for the NFC tag"

    invoke-direct {v8, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 346
    :cond_a
    const-string v8, "NfcSensor"

    const-string v10, "Ndef technology not available. Falling back to NdefFormattable."

    invoke-static {v8, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 350
    :try_start_6
    invoke-virtual {v2}, Landroid/nfc/tech/NdefFormatable;->connect()V

    .line 351
    invoke-virtual {v2, v3}, Landroid/nfc/tech/NdefFormatable;->format(Landroid/nfc/NdefMessage;)V

    .line 352
    invoke-virtual {v2}, Landroid/nfc/tech/NdefFormatable;->close()V
    :try_end_6
    .catch Landroid/nfc/FormatException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_3

    .line 353
    :catch_2
    move-exception v1

    .line 354
    .restart local v1    # "e":Landroid/nfc/FormatException;
    :try_start_7
    new-instance v10, Ljava/lang/RuntimeException;

    const-string v11, "Internal error when writing to NFC tag: "

    .line 355
    invoke-virtual {v1}, Landroid/nfc/FormatException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v12

    if-eqz v12, :cond_b

    invoke-virtual {v11, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    :goto_5
    invoke-direct {v10, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_b
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v11}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_5
.end method
