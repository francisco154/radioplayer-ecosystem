.class public Lcom/streamtv/app/adapter/StationAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "StationAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/streamtv/app/adapter/StationAdapter$OnStationClickListener;,
        Lcom/streamtv/app/adapter/StationAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/streamtv/app/adapter/StationAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "StationAdapter"


# instance fields
.field private isSongMode:Z

.field private listener:Lcom/streamtv/app/adapter/StationAdapter$OnStationClickListener;

.field private stations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/streamtv/app/model/Station;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ZLcom/streamtv/app/adapter/StationAdapter$OnStationClickListener;)V
    .locals 1

    .line 31
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/streamtv/app/adapter/StationAdapter;->stations:Ljava/util/List;

    .line 32
    iput-boolean p1, p0, Lcom/streamtv/app/adapter/StationAdapter;->isSongMode:Z

    .line 33
    iput-object p2, p0, Lcom/streamtv/app/adapter/StationAdapter;->listener:Lcom/streamtv/app/adapter/StationAdapter$OnStationClickListener;

    return-void
.end method

.method static synthetic lambda$onBindViewHolder$0(Lcom/streamtv/app/adapter/StationAdapter$ViewHolder;Lcom/streamtv/app/model/Station;Landroid/view/View;Z)V
    .locals 3

    .line 148
    iget-object v0, p0, Lcom/streamtv/app/adapter/StationAdapter$ViewHolder;->ivPlayOverlay:Landroid/widget/ImageView;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_1

    .line 149
    iget-object v0, p0, Lcom/streamtv/app/adapter/StationAdapter$ViewHolder;->ivPlayOverlay:Landroid/widget/ImageView;

    if-eqz p3, :cond_0

    invoke-virtual {p1}, Lcom/streamtv/app/model/Station;->isPlayable()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 151
    :cond_1
    iget-object p1, p0, Lcom/streamtv/app/adapter/StationAdapter$ViewHolder;->focusBorder:Landroid/view/View;

    if-eqz p1, :cond_3

    .line 152
    iget-object p0, p0, Lcom/streamtv/app/adapter/StationAdapter$ViewHolder;->focusBorder:Landroid/view/View;

    if-eqz p3, :cond_2

    goto :goto_1

    :cond_2
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    const-wide/16 p0, 0xc8

    if-eqz p3, :cond_4

    .line 155
    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p3

    const v0, 0x3f8a3d71    # 1.08f

    invoke-virtual {p3, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p3

    invoke-virtual {p3, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p3

    invoke-virtual {p3, p0, p1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    const/high16 p0, 0x41400000    # 12.0f

    .line 156
    invoke-virtual {p2, p0}, Landroid/view/View;->setElevation(F)V

    .line 157
    invoke-virtual {p2}, Landroid/view/View;->bringToFront()V

    goto :goto_2

    .line 159
    :cond_4
    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p3

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p3, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p3

    invoke-virtual {p3, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p3

    invoke-virtual {p3, p0, p1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    const/4 p0, 0x0

    .line 160
    invoke-virtual {p2, p0}, Landroid/view/View;->setElevation(F)V

    :goto_2
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/streamtv/app/adapter/StationAdapter;->stations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method synthetic lambda$onBindViewHolder$1$com-streamtv-app-adapter-StationAdapter(Lcom/streamtv/app/model/Station;Landroid/view/View;)V
    .locals 0

    .line 165
    iget-object p2, p0, Lcom/streamtv/app/adapter/StationAdapter;->listener:Lcom/streamtv/app/adapter/StationAdapter$OnStationClickListener;

    if-eqz p2, :cond_0

    .line 166
    invoke-interface {p2, p1}, Lcom/streamtv/app/adapter/StationAdapter$OnStationClickListener;->onStationClick(Lcom/streamtv/app/model/Station;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
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

    .line 21
    check-cast p1, Lcom/streamtv/app/adapter/StationAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/streamtv/app/adapter/StationAdapter;->onBindViewHolder(Lcom/streamtv/app/adapter/StationAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/streamtv/app/adapter/StationAdapter$ViewHolder;I)V
    .locals 5

    .line 49
    iget-object v0, p0, Lcom/streamtv/app/adapter/StationAdapter;->stations:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/streamtv/app/model/Station;

    .line 50
    iget-object v0, p1, Lcom/streamtv/app/adapter/StationAdapter$ViewHolder;->tvName:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/streamtv/app/model/Station;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    iget-boolean v0, p0, Lcom/streamtv/app/adapter/StationAdapter;->isSongMode:Z

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_9

    .line 53
    invoke-virtual {p2}, Lcom/streamtv/app/model/Station;->getArtist()Ljava/lang/String;

    move-result-object v0

    .line 54
    iget-object v3, p1, Lcom/streamtv/app/adapter/StationAdapter$ViewHolder;->tvArtist:Landroid/widget/TextView;

    if-eqz v3, :cond_3

    .line 55
    iget-object v3, p1, Lcom/streamtv/app/adapter/StationAdapter$ViewHolder;->tvArtist:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    move-object v4, v0

    goto :goto_0

    :cond_0
    const-string v4, ""

    :goto_0
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    iget-object v3, p1, Lcom/streamtv/app/adapter/StationAdapter$ViewHolder;->tvArtist:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/16 v0, 0x8

    :goto_2
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 58
    :cond_3
    iget-object v0, p1, Lcom/streamtv/app/adapter/StationAdapter$ViewHolder;->tvMood:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    .line 59
    invoke-virtual {p2}, Lcom/streamtv/app/model/Station;->getMood()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 60
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    .line 61
    iget-object v3, p1, Lcom/streamtv/app/adapter/StationAdapter$ViewHolder;->tvMood:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 62
    iget-object v3, p1, Lcom/streamtv/app/adapter/StationAdapter$ViewHolder;->tvMood:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 64
    :cond_4
    iget-object v0, p1, Lcom/streamtv/app/adapter/StationAdapter$ViewHolder;->tvMood:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 67
    :cond_5
    :goto_3
    iget-object v0, p1, Lcom/streamtv/app/adapter/StationAdapter$ViewHolder;->tvDuration:Landroid/widget/TextView;

    if-eqz v0, :cond_7

    .line 68
    invoke-virtual {p2}, Lcom/streamtv/app/model/Station;->getFormattedDuration()Ljava/lang/String;

    move-result-object v0

    .line 69
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6

    .line 70
    iget-object v3, p1, Lcom/streamtv/app/adapter/StationAdapter$ViewHolder;->tvDuration:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 71
    iget-object v3, p1, Lcom/streamtv/app/adapter/StationAdapter$ViewHolder;->tvDuration:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 73
    :cond_6
    iget-object v0, p1, Lcom/streamtv/app/adapter/StationAdapter$ViewHolder;->tvDuration:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 76
    :cond_7
    :goto_4
    iget-object v0, p1, Lcom/streamtv/app/adapter/StationAdapter$ViewHolder;->tvGenre:Landroid/widget/TextView;

    if-eqz v0, :cond_14

    .line 77
    invoke-virtual {p2}, Lcom/streamtv/app/model/Station;->getGenre()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 78
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_8

    const-string v3, "PREMIUM"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 79
    iget-object v0, p1, Lcom/streamtv/app/adapter/StationAdapter$ViewHolder;->tvGenre:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 80
    iget-object v0, p1, Lcom/streamtv/app/adapter/StationAdapter$ViewHolder;->tvGenre:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_9

    .line 82
    :cond_8
    iget-object v0, p1, Lcom/streamtv/app/adapter/StationAdapter$ViewHolder;->tvGenre:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_9

    .line 86
    :cond_9
    invoke-virtual {p2}, Lcom/streamtv/app/model/Station;->getSubtitle()Ljava/lang/String;

    move-result-object v0

    .line 87
    iget-object v3, p1, Lcom/streamtv/app/adapter/StationAdapter$ViewHolder;->tvFrequency:Landroid/widget/TextView;

    if-eqz v3, :cond_b

    .line 88
    iget-object v3, p1, Lcom/streamtv/app/adapter/StationAdapter$ViewHolder;->tvFrequency:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v3, p1, Lcom/streamtv/app/adapter/StationAdapter$ViewHolder;->tvFrequency:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    const/16 v0, 0x8

    goto :goto_5

    :cond_a
    const/4 v0, 0x0

    :goto_5
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 91
    :cond_b
    iget-object v0, p1, Lcom/streamtv/app/adapter/StationAdapter$ViewHolder;->tvGenre:Landroid/widget/TextView;

    if-eqz v0, :cond_d

    .line 92
    invoke-virtual {p2}, Lcom/streamtv/app/model/Station;->getGenre()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 93
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_c

    .line 94
    iget-object v3, p1, Lcom/streamtv/app/adapter/StationAdapter$ViewHolder;->tvGenre:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 95
    iget-object v3, p1, Lcom/streamtv/app/adapter/StationAdapter$ViewHolder;->tvGenre:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 97
    :cond_c
    iget-object v0, p1, Lcom/streamtv/app/adapter/StationAdapter$ViewHolder;->tvGenre:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 100
    :cond_d
    :goto_6
    iget-object v0, p1, Lcom/streamtv/app/adapter/StationAdapter$ViewHolder;->tvStreamType:Landroid/widget/TextView;

    if-eqz v0, :cond_10

    .line 101
    invoke-virtual {p2}, Lcom/streamtv/app/model/Station;->getStreamType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 102
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_f

    .line 103
    iget-object v3, p1, Lcom/streamtv/app/adapter/StationAdapter$ViewHolder;->tvStreamType:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 104
    const-string v3, "youtube"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 105
    iget-object v0, p1, Lcom/streamtv/app/adapter/StationAdapter$ViewHolder;->tvStreamType:Landroid/widget/TextView;

    const-string v3, "YT"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    .line 107
    :cond_e
    iget-object v3, p1, Lcom/streamtv/app/adapter/StationAdapter$ViewHolder;->tvStreamType:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    .line 110
    :cond_f
    iget-object v0, p1, Lcom/streamtv/app/adapter/StationAdapter$ViewHolder;->tvStreamType:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 113
    :cond_10
    :goto_7
    iget-object v0, p1, Lcom/streamtv/app/adapter/StationAdapter$ViewHolder;->ivFeatured:Landroid/widget/ImageView;

    if-eqz v0, :cond_12

    .line 114
    iget-object v0, p1, Lcom/streamtv/app/adapter/StationAdapter$ViewHolder;->ivFeatured:Landroid/widget/ImageView;

    invoke-virtual {p2}, Lcom/streamtv/app/model/Station;->isFeatured()Z

    move-result v3

    if-eqz v3, :cond_11

    const/4 v3, 0x0

    goto :goto_8

    :cond_11
    const/16 v3, 0x8

    :goto_8
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 116
    :cond_12
    iget-object v0, p1, Lcom/streamtv/app/adapter/StationAdapter$ViewHolder;->ivYouTubeOverlay:Landroid/widget/ImageView;

    if-eqz v0, :cond_14

    .line 117
    iget-object v0, p1, Lcom/streamtv/app/adapter/StationAdapter$ViewHolder;->ivYouTubeOverlay:Landroid/widget/ImageView;

    invoke-virtual {p2}, Lcom/streamtv/app/model/Station;->isYouTube()Z

    move-result v3

    if-eqz v3, :cond_13

    const/4 v1, 0x0

    :cond_13
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 121
    :cond_14
    :goto_9
    invoke-virtual {p2}, Lcom/streamtv/app/model/Station;->getCoverImage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 122
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_15

    .line 123
    iget-object v1, p1, Lcom/streamtv/app/adapter/StationAdapter$ViewHolder;->ivCover:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    .line 124
    invoke-virtual {v1, v0}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    sget v1, Lcom/streamtv/app/R$drawable;->ic_radio:I

    .line 125
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/RequestBuilder;

    sget v1, Lcom/streamtv/app/R$drawable;->ic_radio:I

    .line 126
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->error(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/RequestBuilder;

    .line 127
    invoke-virtual {v0}, Lcom/bumptech/glide/RequestBuilder;->centerCrop()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/RequestBuilder;

    const/16 v1, 0x3a98

    .line 128
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->timeout(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/RequestBuilder;

    new-instance v1, Lcom/streamtv/app/adapter/StationAdapter$1;

    invoke-direct {v1, p0, p2}, Lcom/streamtv/app/adapter/StationAdapter$1;-><init>(Lcom/streamtv/app/adapter/StationAdapter;Lcom/streamtv/app/model/Station;)V

    .line 129
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->listener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/streamtv/app/adapter/StationAdapter$ViewHolder;->ivCover:Landroid/widget/ImageView;

    .line 142
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    goto :goto_b

    .line 144
    :cond_15
    iget-object v0, p1, Lcom/streamtv/app/adapter/StationAdapter$ViewHolder;->ivCover:Landroid/widget/ImageView;

    iget-boolean v1, p0, Lcom/streamtv/app/adapter/StationAdapter;->isSongMode:Z

    if-eqz v1, :cond_16

    sget v1, Lcom/streamtv/app/R$drawable;->ic_music:I

    goto :goto_a

    :cond_16
    sget v1, Lcom/streamtv/app/R$drawable;->ic_radio:I

    :goto_a
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 147
    :goto_b
    iget-object v0, p1, Lcom/streamtv/app/adapter/StationAdapter$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/streamtv/app/adapter/StationAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, p2}, Lcom/streamtv/app/adapter/StationAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/streamtv/app/adapter/StationAdapter$ViewHolder;Lcom/streamtv/app/model/Station;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 164
    iget-object p1, p1, Lcom/streamtv/app/adapter/StationAdapter$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/streamtv/app/adapter/StationAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p2}, Lcom/streamtv/app/adapter/StationAdapter$$ExternalSyntheticLambda1;-><init>(Lcom/streamtv/app/adapter/StationAdapter;Lcom/streamtv/app/model/Station;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
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

    .line 21
    invoke-virtual {p0, p1, p2}, Lcom/streamtv/app/adapter/StationAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/streamtv/app/adapter/StationAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/streamtv/app/adapter/StationAdapter$ViewHolder;
    .locals 3

    .line 43
    new-instance p2, Lcom/streamtv/app/adapter/StationAdapter$ViewHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 44
    iget-boolean v1, p0, Lcom/streamtv/app/adapter/StationAdapter;->isSongMode:Z

    if-eqz v1, :cond_0

    sget v1, Lcom/streamtv/app/R$layout;->item_song:I

    goto :goto_0

    :cond_0
    sget v1, Lcom/streamtv/app/R$layout;->item_station:I

    :goto_0
    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/streamtv/app/adapter/StationAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public setStations(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/streamtv/app/model/Station;",
            ">;)V"
        }
    .end annotation

    .line 37
    iput-object p1, p0, Lcom/streamtv/app/adapter/StationAdapter;->stations:Ljava/util/List;

    .line 38
    invoke-virtual {p0}, Lcom/streamtv/app/adapter/StationAdapter;->notifyDataSetChanged()V

    return-void
.end method
