.class public interface abstract Lcom/streamtv/app/remote/TcpServer$ConnectionListener;
.super Ljava/lang/Object;
.source "TcpServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/streamtv/app/remote/TcpServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ConnectionListener"
.end annotation


# virtual methods
.method public abstract onClientConnected(Ljava/lang/String;)V
.end method

.method public abstract onClientDisconnected()V
.end method
