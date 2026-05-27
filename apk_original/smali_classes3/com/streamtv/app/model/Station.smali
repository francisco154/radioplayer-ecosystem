.class public Lcom/streamtv/app/model/Station;
.super Ljava/lang/Object;
.source "Station.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private artist:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "artist"
    .end annotation
.end field

.field private audioUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "audioUrl"
    .end annotation
.end field

.field private bpm:Ljava/lang/Object;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "bpm"
    .end annotation
.end field

.field private coverImage:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "coverImage"
    .end annotation
.end field

.field private description:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "description"
    .end annotation
.end field

.field private duration:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "duration"
    .end annotation
.end field

.field private frequency:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "frequency"
    .end annotation
.end field

.field private genre:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "genre"
    .end annotation
.end field

.field private isFeatured:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "isFeatured"
    .end annotation
.end field

.field private isPublic:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "isPublic"
    .end annotation
.end field

.field private location:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "location"
    .end annotation
.end field

.field private mood:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "mood"
    .end annotation
.end field

.field private name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "name"
    .end annotation
.end field

.field private streamType:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "streamType"
    .end annotation
.end field

.field private tags:Ljava/lang/Object;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "tags"
    .end annotation
.end field

.field private url:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "url"
    .end annotation
.end field

.field private website:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "website"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getArtist()Ljava/lang/String;
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/streamtv/app/model/Station;->artist:Ljava/lang/String;

    return-object v0
.end method

.method public getAudioUrl()Ljava/lang/String;
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/streamtv/app/model/Station;->audioUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getCardInfo()Ljava/lang/String;
    .locals 2

    .line 232
    invoke-virtual {p0}, Lcom/streamtv/app/model/Station;->isSong()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    invoke-virtual {p0}, Lcom/streamtv/app/model/Station;->getSubtitle()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 235
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 236
    iget-object v1, p0, Lcom/streamtv/app/model/Station;->genre:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 237
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 238
    iget-object v1, p0, Lcom/streamtv/app/model/Station;->genre:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    :cond_1
    iget-object v1, p0, Lcom/streamtv/app/model/Station;->streamType:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 241
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 242
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 243
    const-string v1, " \u00b7 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    :cond_2
    iget-object v1, p0, Lcom/streamtv/app/model/Station;->streamType:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCoverImage()Ljava/lang/String;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/streamtv/app/model/Station;->coverImage:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/streamtv/app/model/Station;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getDuration()I
    .locals 1

    .line 157
    iget v0, p0, Lcom/streamtv/app/model/Station;->duration:I

    return v0
.end method

.method public getFormattedDuration()Ljava/lang/String;
    .locals 4

    .line 251
    iget v0, p0, Lcom/streamtv/app/model/Station;->duration:I

    if-gtz v0, :cond_0

    .line 252
    const-string v0, ""

    goto :goto_0

    :cond_0
    div-int/lit8 v1, v0, 0x3c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    rem-int/lit8 v0, v0, 0x3c

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v1, 0x1

    aput-object v0, v2, v1

    const-string v0, "%d:%02d"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getFrequency()Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/streamtv/app/model/Station;->frequency:Ljava/lang/String;

    return-object v0
.end method

.method public getGenre()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/streamtv/app/model/Station;->genre:Ljava/lang/String;

    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/streamtv/app/model/Station;->location:Ljava/lang/String;

    return-object v0
.end method

.method public getMood()Ljava/lang/String;
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/streamtv/app/model/Station;->mood:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/streamtv/app/model/Station;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPlaybackUrl()Ljava/lang/String;
    .locals 2

    .line 186
    const-string v0, "youtube"

    iget-object v1, p0, Lcom/streamtv/app/model/Station;->streamType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/streamtv/app/model/Station;->audioUrl:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 190
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 191
    iget-object v0, p0, Lcom/streamtv/app/model/Station;->audioUrl:Ljava/lang/String;

    return-object v0

    .line 193
    :cond_1
    iget-object v0, p0, Lcom/streamtv/app/model/Station;->url:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 194
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 197
    :cond_2
    iget-object v0, p0, Lcom/streamtv/app/model/Station;->url:Ljava/lang/String;

    return-object v0

    :cond_3
    :goto_0
    return-object v1
.end method

.method public getStreamType()Ljava/lang/String;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/streamtv/app/model/Station;->streamType:Ljava/lang/String;

    return-object v0
.end method

.method public getSubtitle()Ljava/lang/String;
    .locals 3

    .line 201
    invoke-virtual {p0}, Lcom/streamtv/app/model/Station;->isSong()Z

    move-result v0

    const-string v1, " \u00b7 "

    if-eqz v0, :cond_3

    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 203
    iget-object v2, p0, Lcom/streamtv/app/model/Station;->artist:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 204
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 205
    iget-object v2, p0, Lcom/streamtv/app/model/Station;->artist:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    :cond_0
    iget-object v2, p0, Lcom/streamtv/app/model/Station;->mood:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 208
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 209
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 210
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    :cond_1
    iget-object v1, p0, Lcom/streamtv/app/model/Station;->mood:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 216
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 217
    iget-object v2, p0, Lcom/streamtv/app/model/Station;->frequency:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 218
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 219
    iget-object v2, p0, Lcom/streamtv/app/model/Station;->frequency:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    :cond_4
    iget-object v2, p0, Lcom/streamtv/app/model/Station;->location:Ljava/lang/String;

    if-eqz v2, :cond_6

    .line 222
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    .line 223
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_5

    .line 224
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    :cond_5
    iget-object v1, p0, Lcom/streamtv/app/model/Station;->location:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTagsString()Ljava/lang/String;
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/streamtv/app/model/Station;->tags:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 174
    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/streamtv/app/model/Station;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getWebsite()Ljava/lang/String;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/streamtv/app/model/Station;->website:Ljava/lang/String;

    return-object v0
.end method

.method public isFeatured()Z
    .locals 1

    .line 133
    iget-boolean v0, p0, Lcom/streamtv/app/model/Station;->isFeatured:Z

    return v0
.end method

.method public isPlayable()Z
    .locals 1

    .line 265
    invoke-virtual {p0}, Lcom/streamtv/app/model/Station;->getPlaybackUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPublic()Z
    .locals 1

    .line 178
    iget-boolean v0, p0, Lcom/streamtv/app/model/Station;->isPublic:Z

    return v0
.end method

.method public isSong()Z
    .locals 1

    .line 256
    iget-object v0, p0, Lcom/streamtv/app/model/Station;->audioUrl:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 257
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public isYouTube()Z
    .locals 2

    .line 261
    const-string v0, "youtube"

    iget-object v1, p0, Lcom/streamtv/app/model/Station;->streamType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setArtist(Ljava/lang/String;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/streamtv/app/model/Station;->artist:Ljava/lang/String;

    return-void
.end method

.method public setAudioUrl(Ljava/lang/String;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/streamtv/app/model/Station;->audioUrl:Ljava/lang/String;

    return-void
.end method

.method public setCoverImage(Ljava/lang/String;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/streamtv/app/model/Station;->coverImage:Ljava/lang/String;

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/streamtv/app/model/Station;->description:Ljava/lang/String;

    return-void
.end method

.method public setDuration(I)V
    .locals 0

    .line 161
    iput p1, p0, Lcom/streamtv/app/model/Station;->duration:I

    return-void
.end method

.method public setFeatured(Z)V
    .locals 0

    .line 137
    iput-boolean p1, p0, Lcom/streamtv/app/model/Station;->isFeatured:Z

    return-void
.end method

.method public setFrequency(Ljava/lang/String;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/streamtv/app/model/Station;->frequency:Ljava/lang/String;

    return-void
.end method

.method public setGenre(Ljava/lang/String;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/streamtv/app/model/Station;->genre:Ljava/lang/String;

    return-void
.end method

.method public setLocation(Ljava/lang/String;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/streamtv/app/model/Station;->location:Ljava/lang/String;

    return-void
.end method

.method public setMood(Ljava/lang/String;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lcom/streamtv/app/model/Station;->mood:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/streamtv/app/model/Station;->name:Ljava/lang/String;

    return-void
.end method

.method public setPublic(Z)V
    .locals 0

    .line 182
    iput-boolean p1, p0, Lcom/streamtv/app/model/Station;->isPublic:Z

    return-void
.end method

.method public setStreamType(Ljava/lang/String;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/streamtv/app/model/Station;->streamType:Ljava/lang/String;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/streamtv/app/model/Station;->url:Ljava/lang/String;

    return-void
.end method

.method public setWebsite(Ljava/lang/String;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/streamtv/app/model/Station;->website:Ljava/lang/String;

    return-void
.end method
