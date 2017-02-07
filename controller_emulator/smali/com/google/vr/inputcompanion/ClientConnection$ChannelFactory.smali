.class interface abstract Lcom/google/vr/inputcompanion/ClientConnection$ChannelFactory;
.super Ljava/lang/Object;
.source "ClientConnection.java"


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/inputcompanion/ClientConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "ChannelFactory"
.end annotation


# virtual methods
.method public abstract createReadableChannel(Ljava/io/InputStream;)Ljava/nio/channels/ReadableByteChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract createWritableChannel(Ljava/io/OutputStream;)Ljava/nio/channels/WritableByteChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
