.class public interface abstract Lcom/google/vr/inputcompanion/BaseSocketServer$ClientConnectionCallback;
.super Ljava/lang/Object;
.source "BaseSocketServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/inputcompanion/BaseSocketServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ClientConnectionCallback"
.end annotation


# virtual methods
.method public abstract onConnect(Lcom/google/vr/inputcompanion/ClientConnection;)V
.end method

.method public abstract onServerStopped()V
.end method
