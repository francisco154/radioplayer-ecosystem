.class public Lcom/streamtv/app/ui/PlayerActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "PlayerActivity.java"

# interfaces
.implements Lcom/streamtv/app/network/AudioService$PlayerStateListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "PlayerActivity"


# instance fields
.field private audioService:Lcom/streamtv/app/network/AudioService;

.field private btnFavorite:Landroid/widget/ImageButton;

.field private btnNext:Landroid/widget/ImageButton;

.field private btnPlayPause:Landroid/widget/ImageButton;

.field private btnPrevious:Landroid/widget/ImageButton;

.field private currentStation:Lcom/streamtv/app/model/Station;

.field private favoritesManager:Lcom/streamtv/app/model/FavoritesManager;

.field private ivBackground:Landroid/widget/ImageView;

.field private ivCoverLarge:Landroid/widget/ImageView;

.field private tvPlayerDescription:Landroid/widget/TextView;

.field private tvPlayerFrequency:Landroid/widget/TextView;

.field private tvPlayerGenre:Landroid/widget/TextView;

.field private tvPlayerSubtitle:Landroid/widget/TextView;

.field private tvPlayerTitle:Landroid/widget/TextView;

.field private tvStationCounter:Landroid/widget/TextView;

.field private tvStatus:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private buildStationFromIntent()Lcom/streamtv/app/model/Station;
    .locals 3

    .line 176
    new-instance v0, Lcom/streamtv/app/model/Station;

    invoke-direct {v0}, Lcom/streamtv/app/model/Station;-><init>()V

    .line 177
    invoke-virtual {p0}, Lcom/streamtv/app/ui/PlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "name"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/streamtv/app/model/Station;->setName(Ljava/lang/String;)V

    .line 178
    invoke-virtual {p0}, Lcom/streamtv/app/ui/PlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "url"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/streamtv/app/model/Station;->setUrl(Ljava/lang/String;)V

    .line 179
    invoke-virtual {p0}, Lcom/streamtv/app/ui/PlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "genre"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/streamtv/app/model/Station;->setGenre(Ljava/lang/String;)V

    .line 180
    invoke-virtual {p0}, Lcom/streamtv/app/ui/PlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "coverImage"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/streamtv/app/model/Station;->setCoverImage(Ljava/lang/String;)V

    .line 181
    invoke-virtual {p0}, Lcom/streamtv/app/ui/PlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "streamType"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/streamtv/app/model/Station;->setStreamType(Ljava/lang/String;)V

    .line 182
    invoke-virtual {p0}, Lcom/streamtv/app/ui/PlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "description"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/streamtv/app/model/Station;->setDescription(Ljava/lang/String;)V

    .line 183
    invoke-virtual {p0}, Lcom/streamtv/app/ui/PlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "frequency"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/streamtv/app/model/Station;->setFrequency(Ljava/lang/String;)V

    .line 184
    invoke-virtual {p0}, Lcom/streamtv/app/ui/PlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "location"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/streamtv/app/model/Station;->setLocation(Ljava/lang/String;)V

    .line 185
    invoke-virtual {p0}, Lcom/streamtv/app/ui/PlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "subtitle"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 187
    invoke-virtual {v0, v1}, Lcom/streamtv/app/model/Station;->setArtist(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method static lambda$setupCircularButton$5(FLandroid/view/View;Z)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    if-nez p2, :cond_0

    const/high16 p0, 0x3f800000    # 1.0f

    .line 172
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    const v0, 0x3f333333    # 0.7f

    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 p1, 0xc8

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private loadStationUI(Lcom/streamtv/app/model/Station;)V
    .locals 6

    .line 193
    invoke-virtual {p1}, Lcom/streamtv/app/model/Station;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/streamtv/app/ui/PlayerActivity;->tvPlayerTitle:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/streamtv/app/model/Station;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    :cond_0
    invoke-virtual {p1}, Lcom/streamtv/app/model/Station;->getSubtitle()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_1

    .line 197
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 198
    iget-object v3, p0, Lcom/streamtv/app/ui/PlayerActivity;->tvPlayerSubtitle:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 199
    iget-object v0, p0, Lcom/streamtv/app/ui/PlayerActivity;->tvPlayerSubtitle:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 201
    :cond_1
    iget-object v0, p0, Lcom/streamtv/app/ui/PlayerActivity;->tvPlayerSubtitle:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 203
    :goto_0
    invoke-virtual {p1}, Lcom/streamtv/app/model/Station;->getGenre()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/streamtv/app/model/Station;->getGenre()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 204
    iget-object v0, p0, Lcom/streamtv/app/ui/PlayerActivity;->tvPlayerGenre:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/streamtv/app/model/Station;->getGenre()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 205
    iget-object v0, p0, Lcom/streamtv/app/ui/PlayerActivity;->tvPlayerGenre:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 207
    :cond_2
    iget-object v0, p0, Lcom/streamtv/app/ui/PlayerActivity;->tvPlayerGenre:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 209
    :goto_1
    invoke-virtual {p1}, Lcom/streamtv/app/model/Station;->getDescription()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/streamtv/app/model/Station;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 210
    iget-object v0, p0, Lcom/streamtv/app/ui/PlayerActivity;->tvPlayerDescription:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/streamtv/app/model/Station;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    iget-object v0, p0, Lcom/streamtv/app/ui/PlayerActivity;->tvPlayerDescription:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 213
    :cond_3
    iget-object v0, p0, Lcom/streamtv/app/ui/PlayerActivity;->tvPlayerDescription:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 215
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 216
    invoke-virtual {p1}, Lcom/streamtv/app/model/Station;->getFrequency()Ljava/lang/String;

    move-result-object v3

    .line 217
    invoke-virtual {p1}, Lcom/streamtv/app/model/Station;->getLocation()Ljava/lang/String;

    move-result-object v4

    if-eqz v3, :cond_4

    .line 218
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    .line 219
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    if-eqz v4, :cond_6

    .line 221
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6

    .line 222
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_5

    .line 223
    const-string v3, " \u00b7 "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    :cond_5
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_7

    .line 228
    iget-object v2, p0, Lcom/streamtv/app/ui/PlayerActivity;->tvPlayerFrequency:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 229
    iget-object v0, p0, Lcom/streamtv/app/ui/PlayerActivity;->tvPlayerFrequency:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 231
    :cond_7
    iget-object v0, p0, Lcom/streamtv/app/ui/PlayerActivity;->tvPlayerFrequency:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 233
    :goto_3
    invoke-virtual {p1}, Lcom/streamtv/app/model/Station;->getCoverImage()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 234
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 235
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    sget v1, Lcom/streamtv/app/R$drawable;->ic_radio:I

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/RequestBuilder;

    sget v1, Lcom/streamtv/app/R$drawable;->ic_radio:I

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->error(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/RequestBuilder;

    invoke-virtual {v0}, Lcom/bumptech/glide/RequestBuilder;->centerCrop()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/RequestBuilder;

    const/16 v1, 0x3a98

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->timeout(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/RequestBuilder;

    iget-object v2, p0, Lcom/streamtv/app/ui/PlayerActivity;->ivCoverLarge:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 236
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bumptech/glide/RequestBuilder;->centerCrop()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    invoke-virtual {p1, v1}, Lcom/bumptech/glide/RequestBuilder;->timeout(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    iget-object v0, p0, Lcom/streamtv/app/ui/PlayerActivity;->ivBackground:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 238
    :cond_8
    invoke-direct {p0}, Lcom/streamtv/app/ui/PlayerActivity;->updateFavoriteButton()V

    .line 239
    invoke-direct {p0}, Lcom/streamtv/app/ui/PlayerActivity;->updateStationCounter()V

    return-void
.end method

.method private playNext()V
    .locals 4

    .line 265
    invoke-static {}, Lcom/streamtv/app/model/StationListHolder;->getNextStation()Lcom/streamtv/app/model/Station;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 267
    invoke-direct {p0, v0}, Lcom/streamtv/app/ui/PlayerActivity;->playStation(Lcom/streamtv/app/model/Station;)V

    .line 268
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Siguiente: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/streamtv/app/model/Station;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    .line 271
    :cond_0
    const-string v0, "No hay estaci\u00f3n siguiente"

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private playPrevious()V
    .locals 4

    .line 255
    invoke-static {}, Lcom/streamtv/app/model/StationListHolder;->getPreviousStation()Lcom/streamtv/app/model/Station;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 257
    invoke-direct {p0, v0}, Lcom/streamtv/app/ui/PlayerActivity;->playStation(Lcom/streamtv/app/model/Station;)V

    .line 258
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Anterior: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/streamtv/app/model/Station;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    .line 261
    :cond_0
    const-string v0, "No hay estaci\u00f3n anterior"

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private playStation(Lcom/streamtv/app/model/Station;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 243
    invoke-virtual {p1}, Lcom/streamtv/app/model/Station;->isPlayable()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 246
    :cond_0
    iput-object p1, p0, Lcom/streamtv/app/ui/PlayerActivity;->currentStation:Lcom/streamtv/app/model/Station;

    .line 247
    invoke-virtual {p1}, Lcom/streamtv/app/model/Station;->getPlaybackUrl()Ljava/lang/String;

    move-result-object v0

    .line 248
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Playing: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/streamtv/app/model/Station;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " | URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PlayerActivity"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    iget-object v1, p0, Lcom/streamtv/app/ui/PlayerActivity;->audioService:Lcom/streamtv/app/network/AudioService;

    invoke-virtual {v1, v0}, Lcom/streamtv/app/network/AudioService;->play(Ljava/lang/String;)V

    .line 250
    invoke-direct {p0, p1}, Lcom/streamtv/app/ui/PlayerActivity;->loadStationUI(Lcom/streamtv/app/model/Station;)V

    .line 251
    invoke-direct {p0}, Lcom/streamtv/app/ui/PlayerActivity;->updatePlayPauseButton()V

    :cond_1
    :goto_0
    return-void
.end method

.method private setupCircularButton(Landroid/widget/ImageButton;F)V
    .locals 1

    const/4 v0, 0x0

    .line 141
    invoke-static {p1, v0}, Lcom/streamtv/app/ui/MainActivity$$ExternalSyntheticApiModelOutline0;->m(Landroid/widget/ImageButton;Z)V

    const/4 v0, 0x0

    .line 142
    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    .line 143
    sget-object v0, Landroid/view/ViewOutlineProvider;->BOUNDS:Landroid/view/ViewOutlineProvider;

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    const/4 v0, 0x0

    .line 144
    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setElevation(F)V

    .line 145
    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setTranslationZ(F)V

    const/4 v0, 0x1

    .line 146
    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setClipToOutline(Z)V

    .line 147
    new-instance v0, Lcom/streamtv/app/ui/PlayerActivity$6;

    invoke-direct {v0, p0}, Lcom/streamtv/app/ui/PlayerActivity$6;-><init>(Lcom/streamtv/app/ui/PlayerActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 159
    new-instance v0, Lcom/streamtv/app/ui/PlayerActivity$7;

    invoke-direct {v0, p0, p2}, Lcom/streamtv/app/ui/PlayerActivity$7;-><init>(Lcom/streamtv/app/ui/PlayerActivity;F)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    const p2, 0x3f333333    # 0.7f

    .line 165
    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setAlpha(F)V

    return-void
.end method

.method private toggleFavorite()V
    .locals 2

    .line 275
    iget-object v0, p0, Lcom/streamtv/app/ui/PlayerActivity;->currentStation:Lcom/streamtv/app/model/Station;

    if-nez v0, :cond_0

    return-void

    .line 279
    :cond_0
    iget-object v1, p0, Lcom/streamtv/app/ui/PlayerActivity;->favoritesManager:Lcom/streamtv/app/model/FavoritesManager;

    invoke-virtual {v1, v0}, Lcom/streamtv/app/model/FavoritesManager;->toggleFavorite(Lcom/streamtv/app/model/Station;)Z

    move-result v0

    .line 280
    invoke-direct {p0}, Lcom/streamtv/app/ui/PlayerActivity;->updateFavoriteButton()V

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 282
    const-string v0, "Agregado a favoritos"

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 284
    :cond_1
    const-string v0, "Eliminado de favoritos"

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method private togglePlayPause()V
    .locals 2

    .line 311
    iget-object v0, p0, Lcom/streamtv/app/ui/PlayerActivity;->audioService:Lcom/streamtv/app/network/AudioService;

    invoke-virtual {v0}, Lcom/streamtv/app/network/AudioService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/streamtv/app/ui/PlayerActivity;->audioService:Lcom/streamtv/app/network/AudioService;

    invoke-virtual {v0}, Lcom/streamtv/app/network/AudioService;->pause()V

    .line 313
    iget-object v0, p0, Lcom/streamtv/app/ui/PlayerActivity;->tvStatus:Landroid/widget/TextView;

    const-string v1, "Pausado"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 315
    :cond_0
    iget-object v0, p0, Lcom/streamtv/app/ui/PlayerActivity;->audioService:Lcom/streamtv/app/network/AudioService;

    invoke-virtual {v0}, Lcom/streamtv/app/network/AudioService;->resume()V

    .line 316
    iget-object v0, p0, Lcom/streamtv/app/ui/PlayerActivity;->tvStatus:Landroid/widget/TextView;

    const-string v1, "Reproduciendo..."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method private updateFavoriteButton()V
    .locals 3

    .line 289
    iget-object v0, p0, Lcom/streamtv/app/ui/PlayerActivity;->currentStation:Lcom/streamtv/app/model/Station;

    if-eqz v0, :cond_2

    .line 290
    iget-object v1, p0, Lcom/streamtv/app/ui/PlayerActivity;->btnFavorite:Landroid/widget/ImageButton;

    if-nez v1, :cond_0

    goto :goto_1

    .line 293
    :cond_0
    iget-object v2, p0, Lcom/streamtv/app/ui/PlayerActivity;->favoritesManager:Lcom/streamtv/app/model/FavoritesManager;

    invoke-virtual {v2, v0}, Lcom/streamtv/app/model/FavoritesManager;->isFavorite(Lcom/streamtv/app/model/Station;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Lcom/streamtv/app/R$drawable;->ic_favorite:I

    goto :goto_0

    :cond_1
    sget v0, Lcom/streamtv/app/R$drawable;->ic_favorite_outline:I

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method private updatePlayPauseButton()V
    .locals 2

    .line 321
    iget-object v0, p0, Lcom/streamtv/app/ui/PlayerActivity;->audioService:Lcom/streamtv/app/network/AudioService;

    invoke-virtual {v0}, Lcom/streamtv/app/network/AudioService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 322
    iget-object v0, p0, Lcom/streamtv/app/ui/PlayerActivity;->btnPlayPause:Landroid/widget/ImageButton;

    sget v1, Lcom/streamtv/app/R$drawable;->ic_pause:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 323
    iget-object v0, p0, Lcom/streamtv/app/ui/PlayerActivity;->tvStatus:Landroid/widget/TextView;

    const-string v1, "En vivo"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 326
    :cond_0
    iget-object v0, p0, Lcom/streamtv/app/ui/PlayerActivity;->btnPlayPause:Landroid/widget/ImageButton;

    sget v1, Lcom/streamtv/app/R$drawable;->ic_play:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 327
    iget-object v0, p0, Lcom/streamtv/app/ui/PlayerActivity;->audioService:Lcom/streamtv/app/network/AudioService;

    invoke-virtual {v0}, Lcom/streamtv/app/network/AudioService;->hasPlayer()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 328
    iget-object v0, p0, Lcom/streamtv/app/ui/PlayerActivity;->tvStatus:Landroid/widget/TextView;

    const-string v1, "Pausado"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 330
    :cond_1
    iget-object v0, p0, Lcom/streamtv/app/ui/PlayerActivity;->tvStatus:Landroid/widget/TextView;

    const-string v1, "Conectando..."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method private updateStationCounter()V
    .locals 6

    .line 297
    iget-object v0, p0, Lcom/streamtv/app/ui/PlayerActivity;->tvStationCounter:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    .line 300
    :cond_0
    invoke-static {}, Lcom/streamtv/app/model/StationListHolder;->getStations()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/streamtv/app/model/StationListHolder;->getStations()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 301
    :goto_0
    invoke-static {}, Lcom/streamtv/app/model/StationListHolder;->getCurrentIndex()I

    move-result v2

    const/4 v3, 0x1

    if-le v0, v3, :cond_2

    .line 303
    iget-object v4, p0, Lcom/streamtv/app/ui/PlayerActivity;->tvStationCounter:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    add-int/2addr v2, v3

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " / "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 304
    iget-object v0, p0, Lcom/streamtv/app/ui/PlayerActivity;->tvStationCounter:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    .line 307
    :cond_2
    iget-object v0, p0, Lcom/streamtv/app/ui/PlayerActivity;->tvStationCounter:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method m787lambda$onCreate$0$comstreamtvappuiPlayerActivity(Landroid/view/View;)V
    .locals 0

    .line 115
    invoke-direct {p0}, Lcom/streamtv/app/ui/PlayerActivity;->togglePlayPause()V

    return-void
.end method

.method m788lambda$onCreate$1$comstreamtvappuiPlayerActivity(Landroid/view/View;)V
    .locals 0

    .line 120
    invoke-direct {p0}, Lcom/streamtv/app/ui/PlayerActivity;->playPrevious()V

    return-void
.end method

.method m789lambda$onCreate$2$comstreamtvappuiPlayerActivity(Landroid/view/View;)V
    .locals 0

    .line 125
    invoke-direct {p0}, Lcom/streamtv/app/ui/PlayerActivity;->playNext()V

    return-void
.end method

.method m790lambda$onCreate$3$comstreamtvappuiPlayerActivity(Landroid/view/View;)V
    .locals 0

    .line 130
    invoke-direct {p0}, Lcom/streamtv/app/ui/PlayerActivity;->toggleFavorite()V

    return-void
.end method

.method m791lambda$onCreate$4$comstreamtvappuiPlayerActivity()V
    .locals 2

    .line 135
    iget-object v0, p0, Lcom/streamtv/app/ui/PlayerActivity;->audioService:Lcom/streamtv/app/network/AudioService;

    invoke-virtual {v0}, Lcom/streamtv/app/network/AudioService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/streamtv/app/ui/PlayerActivity;->tvStatus:Landroid/widget/TextView;

    const-string v1, "En vivo"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method m792lambda$onError$7$comstreamtvappuiPlayerActivity(Ljava/lang/String;)V
    .locals 3

    .line 362
    iget-object v0, p0, Lcom/streamtv/app/ui/PlayerActivity;->tvStatus:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 363
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Player error: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PlayerActivity"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method m793lambda$onLoadingChanged$8$comstreamtvappuiPlayerActivity(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 379
    iget-object p1, p0, Lcom/streamtv/app/ui/PlayerActivity;->tvStatus:Landroid/widget/TextView;

    const-string v0, "Conectando..."

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method m794lambda$onStateChanged$6$comstreamtvappuiPlayerActivity(Z)V
    .locals 2

    .line 346
    iget-object v0, p0, Lcom/streamtv/app/ui/PlayerActivity;->btnPlayPause:Landroid/widget/ImageButton;

    if-eqz p1, :cond_0

    sget v1, Lcom/streamtv/app/R$drawable;->ic_pause:I

    goto :goto_0

    :cond_0
    sget v1, Lcom/streamtv/app/R$drawable;->ic_play:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 347
    iget-object v0, p0, Lcom/streamtv/app/ui/PlayerActivity;->tvStatus:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    const-string p1, "En vivo"

    goto :goto_1

    :cond_1
    const-string p1, "Pausado"

    :goto_1
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 47
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    sget p1, Lcom/streamtv/app/R$layout;->activity_player:I

    invoke-virtual {p0, p1}, Lcom/streamtv/app/ui/PlayerActivity;->setContentView(I)V

    .line 49
    sget p1, Lcom/streamtv/app/R$id;->ivBackground:I

    invoke-virtual {p0, p1}, Lcom/streamtv/app/ui/PlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/streamtv/app/ui/PlayerActivity;->ivBackground:Landroid/widget/ImageView;

    .line 50
    sget p1, Lcom/streamtv/app/R$id;->ivCoverLarge:I

    invoke-virtual {p0, p1}, Lcom/streamtv/app/ui/PlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/streamtv/app/ui/PlayerActivity;->ivCoverLarge:Landroid/widget/ImageView;

    .line 51
    sget p1, Lcom/streamtv/app/R$id;->tvPlayerTitle:I

    invoke-virtual {p0, p1}, Lcom/streamtv/app/ui/PlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/streamtv/app/ui/PlayerActivity;->tvPlayerTitle:Landroid/widget/TextView;

    .line 52
    sget p1, Lcom/streamtv/app/R$id;->tvPlayerSubtitle:I

    invoke-virtual {p0, p1}, Lcom/streamtv/app/ui/PlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/streamtv/app/ui/PlayerActivity;->tvPlayerSubtitle:Landroid/widget/TextView;

    .line 53
    sget p1, Lcom/streamtv/app/R$id;->tvPlayerGenre:I

    invoke-virtual {p0, p1}, Lcom/streamtv/app/ui/PlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/streamtv/app/ui/PlayerActivity;->tvPlayerGenre:Landroid/widget/TextView;

    .line 54
    sget p1, Lcom/streamtv/app/R$id;->tvPlayerDescription:I

    invoke-virtual {p0, p1}, Lcom/streamtv/app/ui/PlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/streamtv/app/ui/PlayerActivity;->tvPlayerDescription:Landroid/widget/TextView;

    .line 55
    sget p1, Lcom/streamtv/app/R$id;->tvPlayerFrequency:I

    invoke-virtual {p0, p1}, Lcom/streamtv/app/ui/PlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/streamtv/app/ui/PlayerActivity;->tvPlayerFrequency:Landroid/widget/TextView;

    .line 56
    sget p1, Lcom/streamtv/app/R$id;->tvStatus:I

    invoke-virtual {p0, p1}, Lcom/streamtv/app/ui/PlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/streamtv/app/ui/PlayerActivity;->tvStatus:Landroid/widget/TextView;

    .line 57
    sget p1, Lcom/streamtv/app/R$id;->tvStationCounter:I

    invoke-virtual {p0, p1}, Lcom/streamtv/app/ui/PlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/streamtv/app/ui/PlayerActivity;->tvStationCounter:Landroid/widget/TextView;

    .line 58
    sget p1, Lcom/streamtv/app/R$id;->btnPlayPause:I

    invoke-virtual {p0, p1}, Lcom/streamtv/app/ui/PlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lcom/streamtv/app/ui/PlayerActivity;->btnPlayPause:Landroid/widget/ImageButton;

    .line 59
    sget p1, Lcom/streamtv/app/R$id;->btnPrevious:I

    invoke-virtual {p0, p1}, Lcom/streamtv/app/ui/PlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lcom/streamtv/app/ui/PlayerActivity;->btnPrevious:Landroid/widget/ImageButton;

    .line 60
    sget p1, Lcom/streamtv/app/R$id;->btnNext:I

    invoke-virtual {p0, p1}, Lcom/streamtv/app/ui/PlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lcom/streamtv/app/ui/PlayerActivity;->btnNext:Landroid/widget/ImageButton;

    .line 61
    sget p1, Lcom/streamtv/app/R$id;->btnFavorite:I

    invoke-virtual {p0, p1}, Lcom/streamtv/app/ui/PlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lcom/streamtv/app/ui/PlayerActivity;->btnFavorite:Landroid/widget/ImageButton;

    .line 62
    invoke-static {p0}, Lcom/streamtv/app/network/AudioService;->getInstance(Landroid/content/Context;)Lcom/streamtv/app/network/AudioService;

    move-result-object p1

    .line 63
    iput-object p1, p0, Lcom/streamtv/app/ui/PlayerActivity;->audioService:Lcom/streamtv/app/network/AudioService;

    .line 64
    invoke-virtual {p1, p0}, Lcom/streamtv/app/network/AudioService;->setStateListener(Lcom/streamtv/app/network/AudioService$PlayerStateListener;)V

    .line 65
    invoke-static {p0}, Lcom/streamtv/app/model/FavoritesManager;->getInstance(Landroid/content/Context;)Lcom/streamtv/app/model/FavoritesManager;

    move-result-object p1

    iput-object p1, p0, Lcom/streamtv/app/ui/PlayerActivity;->favoritesManager:Lcom/streamtv/app/model/FavoritesManager;

    .line 66
    iget-object p1, p0, Lcom/streamtv/app/ui/PlayerActivity;->btnPlayPause:Landroid/widget/ImageButton;

    const v0, 0x3f933333    # 1.15f

    invoke-direct {p0, p1, v0}, Lcom/streamtv/app/ui/PlayerActivity;->setupCircularButton(Landroid/widget/ImageButton;F)V

    .line 67
    iget-object p1, p0, Lcom/streamtv/app/ui/PlayerActivity;->btnPrevious:Landroid/widget/ImageButton;

    invoke-direct {p0, p1, v0}, Lcom/streamtv/app/ui/PlayerActivity;->setupCircularButton(Landroid/widget/ImageButton;F)V

    .line 68
    iget-object p1, p0, Lcom/streamtv/app/ui/PlayerActivity;->btnNext:Landroid/widget/ImageButton;

    invoke-direct {p0, p1, v0}, Lcom/streamtv/app/ui/PlayerActivity;->setupCircularButton(Landroid/widget/ImageButton;F)V

    .line 69
    iget-object p1, p0, Lcom/streamtv/app/ui/PlayerActivity;->btnFavorite:Landroid/widget/ImageButton;

    invoke-direct {p0, p1, v0}, Lcom/streamtv/app/ui/PlayerActivity;->setupCircularButton(Landroid/widget/ImageButton;F)V

    .line 70
    invoke-static {}, Lcom/streamtv/app/model/StationListHolder;->getCurrentStation()Lcom/streamtv/app/model/Station;

    move-result-object p1

    .line 71
    iput-object p1, p0, Lcom/streamtv/app/ui/PlayerActivity;->currentStation:Lcom/streamtv/app/model/Station;

    if-nez p1, :cond_0

    .line 73
    invoke-direct {p0}, Lcom/streamtv/app/ui/PlayerActivity;->buildStationFromIntent()Lcom/streamtv/app/model/Station;

    move-result-object p1

    iput-object p1, p0, Lcom/streamtv/app/ui/PlayerActivity;->currentStation:Lcom/streamtv/app/model/Station;

    .line 75
    :cond_0
    iget-object p1, p0, Lcom/streamtv/app/ui/PlayerActivity;->currentStation:Lcom/streamtv/app/model/Station;

    if-eqz p1, :cond_1

    .line 77
    invoke-direct {p0, p1}, Lcom/streamtv/app/ui/PlayerActivity;->loadStationUI(Lcom/streamtv/app/model/Station;)V

    .line 79
    :cond_1
    invoke-direct {p0}, Lcom/streamtv/app/ui/PlayerActivity;->updatePlayPauseButton()V

    .line 80
    iget-object p1, p0, Lcom/streamtv/app/ui/PlayerActivity;->btnPlayPause:Landroid/widget/ImageButton;

    new-instance v0, Lcom/streamtv/app/ui/PlayerActivity$1;

    invoke-direct {v0, p0}, Lcom/streamtv/app/ui/PlayerActivity$1;-><init>(Lcom/streamtv/app/ui/PlayerActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    iget-object p1, p0, Lcom/streamtv/app/ui/PlayerActivity;->btnPrevious:Landroid/widget/ImageButton;

    new-instance v0, Lcom/streamtv/app/ui/PlayerActivity$2;

    invoke-direct {v0, p0}, Lcom/streamtv/app/ui/PlayerActivity$2;-><init>(Lcom/streamtv/app/ui/PlayerActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    iget-object p1, p0, Lcom/streamtv/app/ui/PlayerActivity;->btnNext:Landroid/widget/ImageButton;

    new-instance v0, Lcom/streamtv/app/ui/PlayerActivity$3;

    invoke-direct {v0, p0}, Lcom/streamtv/app/ui/PlayerActivity$3;-><init>(Lcom/streamtv/app/ui/PlayerActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    iget-object p1, p0, Lcom/streamtv/app/ui/PlayerActivity;->btnFavorite:Landroid/widget/ImageButton;

    new-instance v0, Lcom/streamtv/app/ui/PlayerActivity$4;

    invoke-direct {v0, p0}, Lcom/streamtv/app/ui/PlayerActivity$4;-><init>(Lcom/streamtv/app/ui/PlayerActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    invoke-direct {p0}, Lcom/streamtv/app/ui/PlayerActivity;->updateStationCounter()V

    .line 105
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/streamtv/app/ui/PlayerActivity$5;

    invoke-direct {v0, p0}, Lcom/streamtv/app/ui/PlayerActivity$5;-><init>(Lcom/streamtv/app/ui/PlayerActivity;)V

    const-wide/16 v1, 0xbb8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 433
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 434
    iget-object v0, p0, Lcom/streamtv/app/ui/PlayerActivity;->audioService:Lcom/streamtv/app/network/AudioService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/streamtv/app/network/AudioService;->setStateListener(Lcom/streamtv/app/network/AudioService$PlayerStateListener;)V

    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 1

    .line 352
    new-instance v0, Lcom/streamtv/app/ui/PlayerActivity$9;

    invoke-direct {v0, p0, p1}, Lcom/streamtv/app/ui/PlayerActivity$9;-><init>(Lcom/streamtv/app/ui/PlayerActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/streamtv/app/ui/PlayerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x4

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    .line 386
    invoke-virtual {p0}, Lcom/streamtv/app/ui/PlayerActivity;->finish()V

    return v1

    :cond_0
    const/16 v0, 0x17

    if-eq p1, v0, :cond_d

    const/16 v0, 0x42

    if-ne p1, v0, :cond_1

    goto/16 :goto_2

    :cond_1
    const/16 v0, 0x55

    if-ne p1, v0, :cond_2

    .line 393
    invoke-direct {p0}, Lcom/streamtv/app/ui/PlayerActivity;->togglePlayPause()V

    return v1

    :cond_2
    const/16 v0, 0x7e

    if-ne p1, v0, :cond_3

    .line 397
    iget-object p1, p0, Lcom/streamtv/app/ui/PlayerActivity;->audioService:Lcom/streamtv/app/network/AudioService;

    invoke-virtual {p1}, Lcom/streamtv/app/network/AudioService;->resume()V

    return v1

    :cond_3
    const/16 v0, 0x7f

    if-ne p1, v0, :cond_4

    .line 401
    iget-object p1, p0, Lcom/streamtv/app/ui/PlayerActivity;->audioService:Lcom/streamtv/app/network/AudioService;

    invoke-virtual {p1}, Lcom/streamtv/app/network/AudioService;->pause()V

    return v1

    :cond_4
    const/16 v0, 0x57

    if-ne p1, v0, :cond_5

    .line 405
    invoke-direct {p0}, Lcom/streamtv/app/ui/PlayerActivity;->playNext()V

    return v1

    :cond_5
    const/16 v0, 0x58

    if-ne p1, v0, :cond_6

    .line 409
    invoke-direct {p0}, Lcom/streamtv/app/ui/PlayerActivity;->playPrevious()V

    return v1

    :cond_6
    const/16 v0, 0x16

    if-ne p1, v0, :cond_9

    .line 413
    invoke-virtual {p0}, Lcom/streamtv/app/ui/PlayerActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    .line 414
    iget-object v2, p0, Lcom/streamtv/app/ui/PlayerActivity;->btnNext:Landroid/widget/ImageButton;

    if-eq v0, v2, :cond_8

    iget-object v2, p0, Lcom/streamtv/app/ui/PlayerActivity;->btnPlayPause:Landroid/widget/ImageButton;

    if-eq v0, v2, :cond_8

    iget-object v2, p0, Lcom/streamtv/app/ui/PlayerActivity;->btnPrevious:Landroid/widget/ImageButton;

    if-eq v0, v2, :cond_8

    iget-object v2, p0, Lcom/streamtv/app/ui/PlayerActivity;->btnFavorite:Landroid/widget/ImageButton;

    if-ne v0, v2, :cond_7

    goto :goto_0

    .line 417
    :cond_7
    invoke-direct {p0}, Lcom/streamtv/app/ui/PlayerActivity;->playNext()V

    return v1

    .line 415
    :cond_8
    :goto_0
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_9
    const/16 v0, 0x15

    if-ne p1, v0, :cond_c

    .line 421
    invoke-virtual {p0}, Lcom/streamtv/app/ui/PlayerActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    .line 422
    iget-object v2, p0, Lcom/streamtv/app/ui/PlayerActivity;->btnNext:Landroid/widget/ImageButton;

    if-eq v0, v2, :cond_b

    iget-object v2, p0, Lcom/streamtv/app/ui/PlayerActivity;->btnPlayPause:Landroid/widget/ImageButton;

    if-eq v0, v2, :cond_b

    iget-object v2, p0, Lcom/streamtv/app/ui/PlayerActivity;->btnPrevious:Landroid/widget/ImageButton;

    if-eq v0, v2, :cond_b

    iget-object v2, p0, Lcom/streamtv/app/ui/PlayerActivity;->btnFavorite:Landroid/widget/ImageButton;

    if-ne v0, v2, :cond_a

    goto :goto_1

    .line 425
    :cond_a
    invoke-direct {p0}, Lcom/streamtv/app/ui/PlayerActivity;->playPrevious()V

    return v1

    .line 423
    :cond_b
    :goto_1
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 428
    :cond_c
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 390
    :cond_d
    :goto_2
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onLoadingChanged(Z)V
    .locals 1

    .line 368
    new-instance v0, Lcom/streamtv/app/ui/PlayerActivity$10;

    invoke-direct {v0, p0, p1}, Lcom/streamtv/app/ui/PlayerActivity$10;-><init>(Lcom/streamtv/app/ui/PlayerActivity;Z)V

    invoke-virtual {p0, v0}, Lcom/streamtv/app/ui/PlayerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 439
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    .line 440
    invoke-direct {p0}, Lcom/streamtv/app/ui/PlayerActivity;->updatePlayPauseButton()V

    .line 441
    invoke-direct {p0}, Lcom/streamtv/app/ui/PlayerActivity;->updateFavoriteButton()V

    return-void
.end method

.method public onStateChanged(Z)V
    .locals 1

    .line 336
    new-instance v0, Lcom/streamtv/app/ui/PlayerActivity$8;

    invoke-direct {v0, p0, p1}, Lcom/streamtv/app/ui/PlayerActivity$8;-><init>(Lcom/streamtv/app/ui/PlayerActivity;Z)V

    invoke-virtual {p0, v0}, Lcom/streamtv/app/ui/PlayerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
