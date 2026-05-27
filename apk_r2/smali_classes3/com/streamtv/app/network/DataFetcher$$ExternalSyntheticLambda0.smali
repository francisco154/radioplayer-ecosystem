.class public final synthetic Lcom/streamtv/app/network/DataFetcher$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/streamtv/app/network/DataFetcher;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Lcom/streamtv/app/network/DataFetcher$DataCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/streamtv/app/network/DataFetcher;Ljava/lang/String;Lcom/streamtv/app/network/DataFetcher$DataCallback;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/streamtv/app/network/DataFetcher$$ExternalSyntheticLambda0;->f$0:Lcom/streamtv/app/network/DataFetcher;

    iput-object p2, p0, Lcom/streamtv/app/network/DataFetcher$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/streamtv/app/network/DataFetcher$$ExternalSyntheticLambda0;->f$2:Lcom/streamtv/app/network/DataFetcher$DataCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/streamtv/app/network/DataFetcher$$ExternalSyntheticLambda0;->f$0:Lcom/streamtv/app/network/DataFetcher;

    iget-object v1, p0, Lcom/streamtv/app/network/DataFetcher$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/streamtv/app/network/DataFetcher$$ExternalSyntheticLambda0;->f$2:Lcom/streamtv/app/network/DataFetcher$DataCallback;

    invoke-virtual {v0, v1, v2}, Lcom/streamtv/app/network/DataFetcher;->lambda$fetchCategories$2$com-streamtv-app-network-DataFetcher(Ljava/lang/String;Lcom/streamtv/app/network/DataFetcher$DataCallback;)V

    return-void
.end method
