.class public Lcom/streamtv/app/network/DataFetcher;
.super Ljava/lang/Object;
.source "DataFetcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/streamtv/app/network/DataFetcher$DataCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DataFetcher"


# instance fields
.field private final client:Lokhttp3/OkHttpClient;

.field private final executor:Ljava/util/concurrent/ExecutorService;

.field private final gson:Lcom/google/gson/Gson;

.field private final handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    const-wide/16 v1, 0xf

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 20
    invoke-virtual {v0, v1, v2, v3}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    const-wide/16 v1, 0x1e

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 21
    invoke-virtual {v0, v1, v2, v3}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 22
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->followRedirects(Z)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 23
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->followSslRedirects(Z)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 24
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/streamtv/app/network/DataFetcher;->client:Lokhttp3/OkHttpClient;

    .line 25
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/streamtv/app/network/DataFetcher;->executor:Ljava/util/concurrent/ExecutorService;

    .line 26
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/streamtv/app/network/DataFetcher;->handler:Landroid/os/Handler;

    .line 27
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iput-object v0, p0, Lcom/streamtv/app/network/DataFetcher;->gson:Lcom/google/gson/Gson;

    return-void
.end method

.method static synthetic lambda$fetchCategories$0(Lcom/streamtv/app/network/DataFetcher$DataCallback;Lcom/streamtv/app/model/CategoriesResponse;)V
    .locals 0

    .line 62
    invoke-interface {p0, p1}, Lcom/streamtv/app/network/DataFetcher$DataCallback;->onDataLoaded(Lcom/streamtv/app/model/CategoriesResponse;)V

    return-void
.end method

.method static synthetic lambda$fetchCategories$1(Lcom/streamtv/app/network/DataFetcher$DataCallback;Ljava/lang/String;)V
    .locals 0

    .line 69
    invoke-interface {p0, p1}, Lcom/streamtv/app/network/DataFetcher$DataCallback;->onError(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public fetchCategories(Ljava/lang/String;Lcom/streamtv/app/network/DataFetcher$DataCallback;)V
    .locals 2

    .line 35
    iget-object v0, p0, Lcom/streamtv/app/network/DataFetcher;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/streamtv/app/network/DataFetcher$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/streamtv/app/network/DataFetcher$$ExternalSyntheticLambda0;-><init>(Lcom/streamtv/app/network/DataFetcher;Ljava/lang/String;Lcom/streamtv/app/network/DataFetcher$DataCallback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic lambda$fetchCategories$2$com-streamtv-app-network-DataFetcher(Ljava/lang/String;Lcom/streamtv/app/network/DataFetcher$DataCallback;)V
    .locals 8

    .line 37
    const-string v0, "DataFetcher"

    .line 0
    const-string v1, "Parsed "

    const-string v2, "JSON preview: "

    const-string v3, "JSON response length: "

    const-string v4, "HTTP "

    .line 37
    :try_start_0
    iget-object v5, p0, Lcom/streamtv/app/network/DataFetcher;->client:Lokhttp3/OkHttpClient;

    new-instance v6, Lokhttp3/Request$Builder;

    invoke-direct {v6}, Lokhttp3/Request$Builder;-><init>()V

    .line 38
    invoke-virtual {v6, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    const-string v6, "Accept"

    const-string v7, "application/json"

    .line 39
    invoke-virtual {p1, v6, v7}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 40
    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    .line 37
    invoke-virtual {v5, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    .line 40
    invoke-interface {p1}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    :try_start_1
    invoke-virtual {p1}, Lokhttp3/Response;->isSuccessful()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 45
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v4

    invoke-virtual {v4}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v4

    .line 46
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v5, 0xc8

    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    iget-object v2, p0, Lcom/streamtv/app/network/DataFetcher;->gson:Lcom/google/gson/Gson;

    const-class v3, Lcom/streamtv/app/model/CategoriesResponse;

    invoke-virtual {v2, v4, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/streamtv/app/model/CategoriesResponse;

    if-eqz v2, :cond_2

    .line 50
    invoke-virtual {v2}, Lcom/streamtv/app/model/CategoriesResponse;->getCategories()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 54
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/streamtv/app/model/CategoriesResponse;->getCategories()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " categories"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    invoke-virtual {v2}, Lcom/streamtv/app/model/CategoriesResponse;->getCategories()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/streamtv/app/model/Category;

    .line 56
    invoke-virtual {v3}, Lcom/streamtv/app/model/Category;->getStations()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 57
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/streamtv/app/model/Category;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/streamtv/app/model/Category;->getStations()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " stations"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 62
    :cond_1
    iget-object v1, p0, Lcom/streamtv/app/network/DataFetcher;->handler:Landroid/os/Handler;

    new-instance v3, Lcom/streamtv/app/network/DataFetcher$$ExternalSyntheticLambda1;

    invoke-direct {v3, p2, v2}, Lcom/streamtv/app/network/DataFetcher$$ExternalSyntheticLambda1;-><init>(Lcom/streamtv/app/network/DataFetcher$DataCallback;Lcom/streamtv/app/model/CategoriesResponse;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 64
    :try_start_2
    invoke-virtual {p1}, Lokhttp3/Response;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 51
    :cond_2
    :try_start_3
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Invalid JSON structure"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 43
    :cond_3
    new-instance v1, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lokhttp3/Response;->code()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v1

    .line 64
    :try_start_4
    invoke-virtual {p1}, Lokhttp3/Response;->close()V

    .line 65
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p1

    .line 67
    const-string v1, "Error fetching categories"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 68
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    .line 69
    iget-object v0, p0, Lcom/streamtv/app/network/DataFetcher;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/streamtv/app/network/DataFetcher$$ExternalSyntheticLambda2;

    invoke-direct {v1, p2, p1}, Lcom/streamtv/app/network/DataFetcher$$ExternalSyntheticLambda2;-><init>(Lcom/streamtv/app/network/DataFetcher$DataCallback;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_1
    return-void
.end method
