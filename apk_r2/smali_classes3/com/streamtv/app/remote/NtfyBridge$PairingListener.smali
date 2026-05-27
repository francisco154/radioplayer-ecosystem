.class public interface abstract Lcom/streamtv/app/remote/NtfyBridge$PairingListener;
.super Ljava/lang/Object;
.source "NtfyBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/streamtv/app/remote/NtfyBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PairingListener"
.end annotation


# virtual methods
.method public abstract onClientConnected(Ljava/lang/String;)V
.end method

.method public abstract onClientDisconnected()V
.end method

.method public abstract onOtpGenerated(Ljava/lang/String;)V
.end method
