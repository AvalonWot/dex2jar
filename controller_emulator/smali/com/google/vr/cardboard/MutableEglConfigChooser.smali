.class public Lcom/google/vr/cardboard/MutableEglConfigChooser;
.super Ljava/lang/Object;
.source "MutableEglConfigChooser.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$EGLConfigChooser;


# static fields
.field private static final EGL_MUTABLE_RENDER_BUFFER_BIT:I = 0x1000

.field private static final EGL_OPENGL_ES3_BIT_KHR:I = 0x40


# instance fields
.field private forceMutableBuffer:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/vr/cardboard/MutableEglConfigChooser;->forceMutableBuffer:Z

    .line 20
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "force"    # Z

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/vr/cardboard/MutableEglConfigChooser;->forceMutableBuffer:Z

    .line 27
    iput-boolean p1, p0, Lcom/google/vr/cardboard/MutableEglConfigChooser;->forceMutableBuffer:Z

    .line 28
    return-void
.end method

.method private static chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;Z)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 12
    .param p0, "egl"    # Ljavax/microedition/khronos/egl/EGL10;
    .param p1, "display"    # Ljavax/microedition/khronos/egl/EGLDisplay;
    .param p2, "configs"    # [Ljavax/microedition/khronos/egl/EGLConfig;
    .param p3, "force"    # Z

    .prologue
    const/16 v11, 0x8

    const/4 v8, 0x0

    .line 73
    array-length v9, p2

    move v7, v8

    :goto_0
    if-ge v7, v9, :cond_2

    aget-object v1, p2, v7

    .line 74
    .local v1, "config":Ljavax/microedition/khronos/egl/EGLConfig;
    const/16 v10, 0x3025

    invoke-static {p0, p1, v1, v10, v8}, Lcom/google/vr/cardboard/MutableEglConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v2

    .line 75
    .local v2, "d":I
    const/16 v10, 0x3026

    invoke-static {p0, p1, v1, v10, v8}, Lcom/google/vr/cardboard/MutableEglConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v6

    .line 78
    .local v6, "s":I
    const/16 v10, 0x3024

    invoke-static {p0, p1, v1, v10, v8}, Lcom/google/vr/cardboard/MutableEglConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v5

    .line 79
    .local v5, "r":I
    const/16 v10, 0x3023

    invoke-static {p0, p1, v1, v10, v8}, Lcom/google/vr/cardboard/MutableEglConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v3

    .line 80
    .local v3, "g":I
    const/16 v10, 0x3022

    invoke-static {p0, p1, v1, v10, v8}, Lcom/google/vr/cardboard/MutableEglConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v0

    .line 82
    .local v0, "b":I
    const/16 v10, 0x3033

    invoke-static {p0, p1, v1, v10, v8}, Lcom/google/vr/cardboard/MutableEglConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v4

    .line 84
    .local v4, "mask":I
    if-ne v5, v11, :cond_1

    if-ne v3, v11, :cond_1

    if-ne v0, v11, :cond_1

    if-nez v2, :cond_1

    if-nez v6, :cond_1

    if-eqz p3, :cond_0

    and-int/lit16 v10, v4, 0x1000

    if-eqz v10, :cond_1

    .line 89
    .end local v0    # "b":I
    .end local v1    # "config":Ljavax/microedition/khronos/egl/EGLConfig;
    .end local v2    # "d":I
    .end local v3    # "g":I
    .end local v4    # "mask":I
    .end local v5    # "r":I
    .end local v6    # "s":I
    :cond_0
    :goto_1
    return-object v1

    .line 73
    .restart local v0    # "b":I
    .restart local v1    # "config":Ljavax/microedition/khronos/egl/EGLConfig;
    .restart local v2    # "d":I
    .restart local v3    # "g":I
    .restart local v4    # "mask":I
    .restart local v5    # "r":I
    .restart local v6    # "s":I
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 89
    .end local v0    # "b":I
    .end local v1    # "config":Ljavax/microedition/khronos/egl/EGLConfig;
    .end local v2    # "d":I
    .end local v3    # "g":I
    .end local v4    # "mask":I
    .end local v5    # "r":I
    .end local v6    # "s":I
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private static findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I
    .locals 2
    .param p0, "egl"    # Ljavax/microedition/khronos/egl/EGL10;
    .param p1, "display"    # Ljavax/microedition/khronos/egl/EGLDisplay;
    .param p2, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;
    .param p3, "attribute"    # I
    .param p4, "defaultValue"    # I

    .prologue
    .line 95
    const/4 v1, 0x1

    new-array v0, v1, [I

    .line 96
    .local v0, "value":[I
    invoke-interface {p0, p1, p2, p3, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 97
    const/4 v1, 0x0

    aget p4, v0, v1

    .line 99
    .end local p4    # "defaultValue":I
    :cond_0
    return p4
.end method


# virtual methods
.method public chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 7
    .param p1, "egl"    # Ljavax/microedition/khronos/egl/EGL10;
    .param p2, "display"    # Ljavax/microedition/khronos/egl/EGLDisplay;

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 32
    const/16 v0, 0x11

    new-array v2, v0, [I

    fill-array-data v2, :array_0

    .line 45
    .local v2, "configSpec":[I
    const/4 v0, 0x1

    new-array v5, v0, [I

    .local v5, "numConfig":[I
    move-object v0, p1

    move-object v1, p2

    .line 46
    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/vr/cardboard/MutableEglConfigChooser;->forceMutableBuffer:Z

    if-eqz v0, :cond_0

    .line 47
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "eglChooseConfig failed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_0
    const/16 v0, 0xf

    const/4 v1, 0x4

    aput v1, v2, v0

    move-object v0, p1

    move-object v1, p2

    .line 50
    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 51
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "eglChooseConfig failed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_1
    aget v4, v5, v4

    .line 56
    .local v4, "numConfigs":I
    if-gtz v4, :cond_2

    .line 57
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No configs match configSpec"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_2
    new-array v3, v4, [Ljavax/microedition/khronos/egl/EGLConfig;

    .local v3, "configs":[Ljavax/microedition/khronos/egl/EGLConfig;
    move-object v0, p1

    move-object v1, p2

    .line 61
    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 62
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "eglChooseConfig#2 failed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_3
    iget-boolean v0, p0, Lcom/google/vr/cardboard/MutableEglConfigChooser;->forceMutableBuffer:Z

    invoke-static {p1, p2, v3, v0}, Lcom/google/vr/cardboard/MutableEglConfigChooser;->chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;Z)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v6

    .line 65
    .local v6, "config":Ljavax/microedition/khronos/egl/EGLConfig;
    if-nez v6, :cond_4

    .line 66
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No config chosen"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_4
    return-object v6

    .line 32
    :array_0
    .array-data 4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3021
        0x0
        0x3025
        0x0
        0x3026
        0x0
        0x3040
        0x40
        0x3033
        0x1004
        0x3038
    .end array-data
.end method
