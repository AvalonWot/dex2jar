.class public final Lcom/google/vr/ndk/base/Version;
.super Ljava/lang/Object;
.source "Version.java"


# static fields
.field public static final CURRENT:Lcom/google/vr/ndk/base/Version;

.field public static final TAG:Ljava/lang/String;


# instance fields
.field public final majorVersion:I

.field public final minorVersion:I

.field public final patchVersion:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const-class v0, Lcom/google/vr/ndk/base/BuildConstants;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/vr/ndk/base/Version;->TAG:Ljava/lang/String;

    .line 13
    const-string v0, "1.20.0"

    invoke-static {v0}, Lcom/google/vr/ndk/base/Version;->parse(Ljava/lang/String;)Lcom/google/vr/ndk/base/Version;

    move-result-object v0

    sput-object v0, Lcom/google/vr/ndk/base/Version;->CURRENT:Lcom/google/vr/ndk/base/Version;

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0
    .param p1, "majorVersion"    # I
    .param p2, "minorVersion"    # I
    .param p3, "patchVersion"    # I

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput p1, p0, Lcom/google/vr/ndk/base/Version;->majorVersion:I

    .line 25
    iput p2, p0, Lcom/google/vr/ndk/base/Version;->minorVersion:I

    .line 26
    iput p3, p0, Lcom/google/vr/ndk/base/Version;->patchVersion:I

    .line 27
    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcom/google/vr/ndk/base/Version;
    .locals 6
    .param p0, "versionString"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 37
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    move-object v1, v2

    .line 47
    :goto_0
    return-object v1

    .line 41
    :cond_1
    const-string v1, "(\\d+)\\.(\\d+)\\.(\\d+)"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 42
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-nez v1, :cond_3

    .line 43
    sget-object v3, Lcom/google/vr/ndk/base/Version;->TAG:Ljava/lang/String;

    const-string v4, "Failed to parse version from: "

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v4, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v2

    .line 44
    goto :goto_0

    .line 43
    :cond_2
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 47
    :cond_3
    new-instance v1, Lcom/google/vr/ndk/base/Version;

    const/4 v2, 0x1

    .line 48
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x3

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Lcom/google/vr/ndk/base/Version;-><init>(III)V

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 85
    instance-of v2, p1, Lcom/google/vr/ndk/base/Version;

    if-nez v2, :cond_1

    .line 90
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 89
    check-cast v0, Lcom/google/vr/ndk/base/Version;

    .line 90
    .local v0, "otherVersion":Lcom/google/vr/ndk/base/Version;
    iget v2, p0, Lcom/google/vr/ndk/base/Version;->majorVersion:I

    iget v3, v0, Lcom/google/vr/ndk/base/Version;->majorVersion:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/google/vr/ndk/base/Version;->minorVersion:I

    iget v3, v0, Lcom/google/vr/ndk/base/Version;->minorVersion:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/google/vr/ndk/base/Version;->patchVersion:I

    iget v3, v0, Lcom/google/vr/ndk/base/Version;->patchVersion:I

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 97
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/vr/ndk/base/Version;->majorVersion:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/vr/ndk/base/Version;->minorVersion:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lcom/google/vr/ndk/base/Version;->patchVersion:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isAtLeast(Lcom/google/vr/ndk/base/Version;)Z
    .locals 4
    .param p1, "other"    # Lcom/google/vr/ndk/base/Version;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 56
    iget v2, p0, Lcom/google/vr/ndk/base/Version;->majorVersion:I

    iget v3, p1, Lcom/google/vr/ndk/base/Version;->majorVersion:I

    if-le v2, v3, :cond_1

    .line 80
    :cond_0
    :goto_0
    return v0

    .line 59
    :cond_1
    iget v2, p0, Lcom/google/vr/ndk/base/Version;->majorVersion:I

    iget v3, p1, Lcom/google/vr/ndk/base/Version;->majorVersion:I

    if-ge v2, v3, :cond_2

    move v0, v1

    .line 60
    goto :goto_0

    .line 64
    :cond_2
    iget v2, p0, Lcom/google/vr/ndk/base/Version;->minorVersion:I

    iget v3, p1, Lcom/google/vr/ndk/base/Version;->minorVersion:I

    if-gt v2, v3, :cond_0

    .line 67
    iget v2, p0, Lcom/google/vr/ndk/base/Version;->minorVersion:I

    iget v3, p1, Lcom/google/vr/ndk/base/Version;->minorVersion:I

    if-ge v2, v3, :cond_3

    move v0, v1

    .line 68
    goto :goto_0

    .line 72
    :cond_3
    iget v2, p0, Lcom/google/vr/ndk/base/Version;->patchVersion:I

    iget v3, p1, Lcom/google/vr/ndk/base/Version;->patchVersion:I

    if-gt v2, v3, :cond_0

    .line 75
    iget v2, p0, Lcom/google/vr/ndk/base/Version;->patchVersion:I

    iget v3, p1, Lcom/google/vr/ndk/base/Version;->patchVersion:I

    if-ge v2, v3, :cond_0

    move v0, v1

    .line 76
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 102
    const-string v0, "%d.%d.%d"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/google/vr/ndk/base/Version;->majorVersion:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/google/vr/ndk/base/Version;->minorVersion:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lcom/google/vr/ndk/base/Version;->patchVersion:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
