.class final Landroidx/media3/exoplayer/hls/AssetListParser;
.super Ljava/lang/Object;
.source "AssetListParser.java"

# interfaces
.implements Landroidx/media3/exoplayer/upstream/ParsingLoadable$Parser;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/hls/AssetListParser$AssetList;,
        Landroidx/media3/exoplayer/hls/AssetListParser$StringAttribute;,
        Landroidx/media3/exoplayer/hls/AssetListParser$Asset;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/media3/exoplayer/upstream/ParsingLoadable$Parser<",
        "Landroidx/media3/exoplayer/hls/AssetListParser$AssetList;",
        ">;"
    }
.end annotation


# static fields
.field private static final ASSET_LIST_JSON_NAME_ASSET_ARRAY:Ljava/lang/String; = "ASSETS"

.field private static final ASSET_LIST_JSON_NAME_DURATION:Ljava/lang/String; = "DURATION"

.field private static final ASSET_LIST_JSON_NAME_URI:Ljava/lang/String; = "URI"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static parseAssetArray(Landroid/util/JsonReader;Lcom/google/common/collect/ImmutableList$Builder;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/JsonReader;",
            "Lcom/google/common/collect/ImmutableList$Builder<",
            "Landroidx/media3/exoplayer/hls/AssetListParser$Asset;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 178
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginArray()V

    .line 179
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 180
    invoke-virtual {p0}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v0

    sget-object v1, Landroid/util/JsonToken;->BEGIN_OBJECT:Landroid/util/JsonToken;

    if-ne v0, v1, :cond_0

    .line 181
    invoke-static {p0, p1}, Landroidx/media3/exoplayer/hls/AssetListParser;->parseAssetObject(Landroid/util/JsonReader;Lcom/google/common/collect/ImmutableList$Builder;)V

    goto :goto_0

    .line 184
    :cond_1
    invoke-virtual {p0}, Landroid/util/JsonReader;->endArray()V

    return-void
.end method

.method private static parseAssetObject(Landroid/util/JsonReader;Lcom/google/common/collect/ImmutableList$Builder;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/JsonReader;",
            "Lcom/google/common/collect/ImmutableList$Builder<",
            "Landroidx/media3/exoplayer/hls/AssetListParser$Asset;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 189
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginObject()V

    const/4 v0, 0x0

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    move-wide v3, v1

    .line 193
    :goto_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 194
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v5

    .line 195
    const-string v6, "URI"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v6

    sget-object v7, Landroid/util/JsonToken;->STRING:Landroid/util/JsonToken;

    if-ne v6, v7, :cond_0

    .line 196
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 197
    :cond_0
    const-string v6, "DURATION"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v5

    sget-object v6, Landroid/util/JsonToken;->NUMBER:Landroid/util/JsonToken;

    if-ne v5, v6, :cond_1

    .line 198
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v3

    const-wide v5, 0x412e848000000000L    # 1000000.0

    mul-double v3, v3, v5

    double-to-long v3, v3

    goto :goto_0

    .line 200
    :cond_1
    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    cmp-long v5, v3, v1

    if-eqz v5, :cond_3

    .line 204
    new-instance v1, Landroidx/media3/exoplayer/hls/AssetListParser$Asset;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v0, v3, v4}, Landroidx/media3/exoplayer/hls/AssetListParser$Asset;-><init>(Landroid/net/Uri;J)V

    invoke-virtual {p1, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 206
    :cond_3
    invoke-virtual {p0}, Landroid/util/JsonReader;->endObject()V

    return-void
.end method


# virtual methods
.method public parse(Landroid/net/Uri;Ljava/io/InputStream;)Landroidx/media3/exoplayer/hls/AssetListParser$AssetList;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 151
    new-instance p1, Landroid/util/JsonReader;

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p1, v0}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    .line 152
    :try_start_0
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object p2

    sget-object v0, Landroid/util/JsonToken;->BEGIN_OBJECT:Landroid/util/JsonToken;

    if-eq p2, v0, :cond_0

    .line 153
    invoke-static {}, Landroidx/media3/exoplayer/hls/AssetListParser$AssetList;->access$000()Landroidx/media3/exoplayer/hls/AssetListParser$AssetList;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    invoke-virtual {p1}, Landroid/util/JsonReader;->close()V

    return-object p2

    .line 155
    :cond_0
    :try_start_1
    new-instance p2, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct {p2}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    .line 156
    new-instance v0, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    .line 157
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginObject()V

    .line 158
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 159
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v1

    .line 160
    sget-object v2, Landroid/util/JsonToken;->NAME:Landroid/util/JsonToken;

    invoke-virtual {v1, v2}, Landroid/util/JsonToken;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 161
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    .line 162
    const-string v2, "ASSETS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 163
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v2

    sget-object v3, Landroid/util/JsonToken;->BEGIN_ARRAY:Landroid/util/JsonToken;

    if-ne v2, v3, :cond_2

    .line 164
    invoke-static {p1, p2}, Landroidx/media3/exoplayer/hls/AssetListParser;->parseAssetArray(Landroid/util/JsonReader;Lcom/google/common/collect/ImmutableList$Builder;)V

    goto :goto_0

    .line 165
    :cond_2
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v2

    sget-object v3, Landroid/util/JsonToken;->STRING:Landroid/util/JsonToken;

    if-ne v2, v3, :cond_3

    .line 166
    new-instance v2, Landroidx/media3/exoplayer/hls/AssetListParser$StringAttribute;

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Landroidx/media3/exoplayer/hls/AssetListParser$StringAttribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    goto :goto_0

    .line 168
    :cond_3
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_0

    .line 172
    :cond_4
    new-instance v1, Landroidx/media3/exoplayer/hls/AssetListParser$AssetList;

    invoke-virtual {p2}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object p2

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-direct {v1, p2, v0}, Landroidx/media3/exoplayer/hls/AssetListParser$AssetList;-><init>(Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 173
    invoke-virtual {p1}, Landroid/util/JsonReader;->close()V

    return-object v1

    :catchall_0
    move-exception p2

    .line 151
    :try_start_2
    invoke-virtual {p1}, Landroid/util/JsonReader;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p2
.end method

.method public bridge synthetic parse(Landroid/net/Uri;Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 31
    invoke-virtual {p0, p1, p2}, Landroidx/media3/exoplayer/hls/AssetListParser;->parse(Landroid/net/Uri;Ljava/io/InputStream;)Landroidx/media3/exoplayer/hls/AssetListParser$AssetList;

    move-result-object p1

    return-object p1
.end method
