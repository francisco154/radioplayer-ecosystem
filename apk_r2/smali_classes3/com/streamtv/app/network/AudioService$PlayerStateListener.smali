.class public interface abstract Lcom/streamtv/app/network/AudioService$PlayerStateListener;
.super Ljava/lang/Object;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/streamtv/app/network/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PlayerStateListener"
.end annotation


# virtual methods
.method public abstract onError(Ljava/lang/String;)V
.end method

.method public abstract onLoadingChanged(Z)V
.end method

.method public abstract onStateChanged(Z)V
.end method
