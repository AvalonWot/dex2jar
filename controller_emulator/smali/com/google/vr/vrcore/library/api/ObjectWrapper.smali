.class public final Lcom/google/vr/vrcore/library/api/ObjectWrapper;
.super Lcom/google/vr/vrcore/library/api/IObjectWrapper$Stub;
.source "ObjectWrapper.java"


# annotations
.annotation build Lcom/google/vr/cardboard/annotations/UsedByReflection;
    value = "ObjectWrapper.java"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/vr/vrcore/library/api/IObjectWrapper$Stub;"
    }
.end annotation


# instance fields
.field private final wrappedObject:Ljava/lang/Object;
    .annotation build Lcom/google/vr/cardboard/annotations/UsedByReflection;
        value = "ObjectWrapper.java"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 28
    .local p0, "this":Lcom/google/vr/vrcore/library/api/ObjectWrapper;, "Lcom/google/vr/vrcore/library/api/ObjectWrapper<TT;>;"
    .local p1, "object":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Lcom/google/vr/vrcore/library/api/IObjectWrapper$Stub;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/google/vr/vrcore/library/api/ObjectWrapper;->wrappedObject:Ljava/lang/Object;

    .line 30
    return-void
.end method

.method public static unwrap(Lcom/google/vr/vrcore/library/api/IObjectWrapper;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 8
    .param p0, "remote"    # Lcom/google/vr/vrcore/library/api/IObjectWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/vr/vrcore/library/api/IObjectWrapper;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v7, 0x1

    .line 51
    instance-of v6, p0, Lcom/google/vr/vrcore/library/api/ObjectWrapper;

    if-eqz v6, :cond_0

    .line 52
    check-cast p0, Lcom/google/vr/vrcore/library/api/ObjectWrapper;

    .end local p0    # "remote":Lcom/google/vr/vrcore/library/api/IObjectWrapper;
    iget-object v6, p0, Lcom/google/vr/vrcore/library/api/ObjectWrapper;->wrappedObject:Ljava/lang/Object;

    .line 71
    :goto_0
    return-object v6

    .line 55
    .restart local p0    # "remote":Lcom/google/vr/vrcore/library/api/IObjectWrapper;
    :cond_0
    invoke-interface {p0}, Lcom/google/vr/vrcore/library/api/IObjectWrapper;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 60
    .local v3, "remoteBinder":Landroid/os/IBinder;
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    .line 61
    .local v4, "remoteClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v4}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .line 62
    .local v0, "allFields":[Ljava/lang/reflect/Field;
    array-length v6, v0

    if-ne v6, v7, :cond_3

    .line 63
    const/4 v6, 0x0

    aget-object v2, v0, v6

    .line 64
    .local v2, "f":Ljava/lang/reflect/Field;
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v6

    if-nez v6, :cond_2

    .line 65
    invoke-virtual {v2, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 67
    :try_start_0
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 68
    .local v5, "wrappedObject":Ljava/lang/Object;
    invoke-virtual {p1, v5}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 69
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "remoteBinder is the wrong class."

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    .line 72
    .end local v5    # "wrappedObject":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 73
    .local v1, "e":Ljava/lang/NullPointerException;
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Binder object is null."

    invoke-direct {v6, v7, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 71
    .end local v1    # "e":Ljava/lang/NullPointerException;
    .restart local v5    # "wrappedObject":Ljava/lang/Object;
    :cond_1
    :try_start_1
    invoke-virtual {p1, v5}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v6

    goto :goto_0

    .line 74
    .end local v5    # "wrappedObject":Ljava/lang/Object;
    :catch_1
    move-exception v1

    .line 75
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "remoteBinder is the wrong class."

    invoke-direct {v6, v7, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 76
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v1

    .line 77
    .local v1, "e":Ljava/lang/IllegalAccessException;
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Could not access the field in remoteBinder."

    invoke-direct {v6, v7, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 80
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :cond_2
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "The concrete class implementing IObjectWrapper must have exactly one declared *private* field for the wrapped object. Preferably, this is an instance of the ObjectWrapper<T> class."

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 87
    .end local v2    # "f":Ljava/lang/reflect/Field;
    :cond_3
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "The concrete class implementing IObjectWrapper must have exactly *one* declared private field for the wrapped object.  Preferably, this is an instance of the ObjectWrapper<T> class."

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method public static wrap(Ljava/lang/Object;)Lcom/google/vr/vrcore/library/api/IObjectWrapper;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/google/vr/vrcore/library/api/IObjectWrapper;"
        }
    .end annotation

    .prologue
    .line 39
    .local p0, "object":Ljava/lang/Object;, "TT;"
    new-instance v0, Lcom/google/vr/vrcore/library/api/ObjectWrapper;

    invoke-direct {v0, p0}, Lcom/google/vr/vrcore/library/api/ObjectWrapper;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method
