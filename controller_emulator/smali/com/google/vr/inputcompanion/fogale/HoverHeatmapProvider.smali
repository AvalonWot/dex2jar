.class public Lcom/google/vr/inputcompanion/fogale/HoverHeatmapProvider;
.super Ljava/lang/Object;
.source "HoverHeatmapProvider.java"


# static fields
.field private static final HEATMAP_FILE_PATH:Ljava/lang/String; = "/dev/fs_heatmap"

.field private static final PROPERTIES_FILE_PATH:Ljava/lang/String; = "/dev/fs_mt_prop"

.field private static final SENSOR_MIN_VALUE:F = 16384.0f

.field private static final SENSOR_VALUES_RANGE:F = 16384.0f

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final heatmapFile:Ljava/io/File;

.field private final heatmapSize:Landroid/graphics/Point;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/google/vr/inputcompanion/fogale/HoverHeatmapProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/vr/inputcompanion/fogale/HoverHeatmapProvider;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/io/File;

    const-string v1, "/dev/fs_heatmap"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/vr/inputcompanion/fogale/HoverHeatmapProvider;->heatmapFile:Ljava/io/File;

    .line 51
    invoke-static {}, Lcom/google/vr/inputcompanion/fogale/HoverHeatmapProvider;->readHeatmapSize()Landroid/graphics/Point;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vr/inputcompanion/fogale/HoverHeatmapProvider;->heatmapSize:Landroid/graphics/Point;

    .line 52
    return-void
.end method

.method public static create()Lcom/google/vr/inputcompanion/fogale/HoverHeatmapProvider;
    .locals 2

    .prologue
    .line 42
    new-instance v0, Lcom/google/vr/inputcompanion/fogale/HoverHeatmapProvider;

    invoke-direct {v0}, Lcom/google/vr/inputcompanion/fogale/HoverHeatmapProvider;-><init>()V

    .line 43
    .local v0, "provider":Lcom/google/vr/inputcompanion/fogale/HoverHeatmapProvider;
    invoke-virtual {v0}, Lcom/google/vr/inputcompanion/fogale/HoverHeatmapProvider;->getWidth()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v0}, Lcom/google/vr/inputcompanion/fogale/HoverHeatmapProvider;->getHeight()I

    move-result v1

    if-gtz v1, :cond_1

    .line 44
    :cond_0
    const/4 v0, 0x0

    .line 46
    :cond_1
    return-object v0
.end method

.method private static readHeatmapSize()Landroid/graphics/Point;
    .locals 12

    .prologue
    const/4 v9, 0x0

    .line 105
    new-instance v2, Ljava/io/File;

    const-string v8, "/dev/fs_mt_prop"

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 106
    .local v2, "fileProperties":Ljava/io/File;
    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6, v9, v9}, Landroid/graphics/Point;-><init>(II)V

    .line 107
    .local v6, "size":Landroid/graphics/Point;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 109
    :try_start_0
    const-string v4, ""

    .local v4, "nbElectrodesX":Ljava/lang/String;
    const-string v5, ""

    .line 110
    .local v5, "nbElectrodesY":Ljava/lang/String;
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/FileReader;

    invoke-direct {v8, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 112
    .local v0, "br":Ljava/io/BufferedReader;
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .local v3, "line":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 113
    const-string v8, " : "

    invoke-virtual {v3, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 114
    .local v7, "values":[Ljava/lang/String;
    const/4 v8, 0x0

    aget-object v8, v7, v8

    const-string v9, "fs.sdp.NbElectrodes.nx"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 115
    const/4 v8, 0x1

    aget-object v4, v7, v8

    goto :goto_0

    .line 116
    :cond_1
    const/4 v8, 0x0

    aget-object v8, v7, v8

    const-string v9, "fs.sdp.NbElectrodes.ny"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 117
    const/4 v8, 0x1

    aget-object v5, v7, v8

    goto :goto_0

    .line 120
    .end local v7    # "values":[Ljava/lang/String;
    :cond_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 121
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v6, Landroid/graphics/Point;->x:I

    .line 122
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v6, Landroid/graphics/Point;->y:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "line":Ljava/lang/String;
    .end local v4    # "nbElectrodesX":Ljava/lang/String;
    .end local v5    # "nbElectrodesY":Ljava/lang/String;
    :cond_3
    :goto_1
    return-object v6

    .line 123
    :catch_0
    move-exception v1

    .line 124
    .local v1, "e":Ljava/io/IOException;
    sget-object v8, Lcom/google/vr/inputcompanion/fogale/HoverHeatmapProvider;->TAG:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, 0x1b

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v10, "Reading properties failed: "

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/google/vr/inputcompanion/fogale/HoverHeatmapProvider;->heatmapSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    return v0
.end method

.method public getLatestHeatmap()[F
    .locals 9

    .prologue
    const/high16 v8, 0x46800000    # 16384.0f

    .line 62
    iget-object v6, p0, Lcom/google/vr/inputcompanion/fogale/HoverHeatmapProvider;->heatmapFile:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v6

    long-to-int v6, v6

    new-array v2, v6, [B

    .line 65
    .local v2, "fileData":[B
    :try_start_0
    new-instance v0, Ljava/io/DataInputStream;

    new-instance v6, Ljava/io/FileInputStream;

    iget-object v7, p0, Lcom/google/vr/inputcompanion/fogale/HoverHeatmapProvider;->heatmapFile:Ljava/io/File;

    invoke-direct {v6, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v6}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 66
    .local v0, "dis":Ljava/io/DataInputStream;
    invoke-virtual {v0, v2}, Ljava/io/DataInputStream;->readFully([B)V

    .line 67
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 75
    .end local v0    # "dis":Ljava/io/DataInputStream;
    :goto_0
    array-length v6, v2

    div-int/lit8 v6, v6, 0x2

    new-array v3, v6, [S

    .line 76
    .local v3, "heatmap":[S
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v6

    sget-object v7, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/nio/ShortBuffer;->get([S)Ljava/nio/ShortBuffer;

    .line 79
    array-length v6, v3

    new-array v5, v6, [F

    .line 80
    .local v5, "normalized":[F
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    array-length v6, v5

    if-ge v4, v6, :cond_1

    .line 81
    aget-short v6, v3, v4

    const/16 v7, -0x8000

    if-ne v6, v7, :cond_0

    .line 82
    const/high16 v6, 0x3f800000    # 1.0f

    aput v6, v5, v4

    .line 80
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 68
    .end local v3    # "heatmap":[S
    .end local v4    # "i":I
    .end local v5    # "normalized":[F
    :catch_0
    move-exception v1

    .line 69
    .local v1, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 70
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .line 71
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 84
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v3    # "heatmap":[S
    .restart local v4    # "i":I
    .restart local v5    # "normalized":[F
    :cond_0
    aget-short v6, v3, v4

    int-to-float v6, v6

    sub-float/2addr v6, v8

    div-float/2addr v6, v8

    aput v6, v5, v4

    goto :goto_2

    .line 87
    :cond_1
    return-object v5
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/google/vr/inputcompanion/fogale/HoverHeatmapProvider;->heatmapSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    return v0
.end method
