.class public final synthetic Lcom/streamtv/app/network/DataFetcher$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/streamtv/app/network/DataFetcher$DataCallback;

.field public final synthetic f$1:Lcom/streamtv/app/model/CategoriesResponse;


# direct methods
.method public synthetic constructor <init>(Lcom/streamtv/app/network/DataFetcher$DataCallback;Lcom/streamtv/app/model/CategoriesResponse;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/streamtv/app/network/DataFetcher$$ExternalSyntheticLambda1;->f$0:Lcom/streamtv/app/network/DataFetcher$DataCallback;

    iput-object p2, p0, Lcom/streamtv/app/network/DataFetcher$$ExternalSyntheticLambda1;->f$1:Lcom/streamtv/app/model/CategoriesResponse;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/streamtv/app/network/DataFetcher$$ExternalSyntheticLambda1;->f$0:Lcom/streamtv/app/network/DataFetcher$DataCallback;

    iget-object v1, p0, Lcom/streamtv/app/network/DataFetcher$$ExternalSyntheticLambda1;->f$1:Lcom/streamtv/app/model/CategoriesResponse;

    invoke-static {v0, v1}, Lcom/streamtv/app/network/DataFetcher;->lambda$fetchCategories$0(Lcom/streamtv/app/network/DataFetcher$DataCallback;Lcom/streamtv/app/model/CategoriesResponse;)V

    return-void
.end method
