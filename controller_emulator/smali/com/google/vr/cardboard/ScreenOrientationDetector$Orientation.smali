.class public abstract Lcom/google/vr/cardboard/ScreenOrientationDetector$Orientation;
.super Ljava/lang/Object;
.source "ScreenOrientationDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/cardboard/ScreenOrientationDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "Orientation"
.end annotation


# static fields
.field public static final LANDSCAPE:I = 0x0

.field public static final LANDSCAPE_REVERSE:I = 0x1

.field public static final PORTRAIT:I = 0x2

.field public static final PORTRAIT_REVERSE:I = 0x3

.field public static final UNKNOWN:I = -0x1


# direct methods
.method public constructor <init>(Lcom/google/vr/cardboard/ScreenOrientationDetector;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/vr/cardboard/ScreenOrientationDetector;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method