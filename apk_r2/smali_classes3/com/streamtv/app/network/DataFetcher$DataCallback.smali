.class public interface abstract Lcom/streamtv/app/network/DataFetcher$DataCallback;
.super Ljava/lang/Object;
.source "DataFetcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/streamtv/app/network/DataFetcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DataCallback"
.end annotation


# virtual methods
.method public abstract onDataLoaded(Lcom/streamtv/app/model/CategoriesResponse;)V
.end method

.method public abstract onError(Ljava/lang/String;)V
.end method
