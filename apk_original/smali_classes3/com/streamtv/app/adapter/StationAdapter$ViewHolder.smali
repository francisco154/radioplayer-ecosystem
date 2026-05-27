.class public Lcom/streamtv/app/adapter/StationAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "StationAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/streamtv/app/adapter/StationAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# instance fields
.field focusBorder:Landroid/view/View;

.field ivCover:Landroid/widget/ImageView;

.field ivFeatured:Landroid/widget/ImageView;

.field ivPlayOverlay:Landroid/widget/ImageView;

.field ivYouTubeOverlay:Landroid/widget/ImageView;

.field tvArtist:Landroid/widget/TextView;

.field tvDuration:Landroid/widget/TextView;

.field tvFrequency:Landroid/widget/TextView;

.field tvGenre:Landroid/widget/TextView;

.field tvMood:Landroid/widget/TextView;

.field tvName:Landroid/widget/TextView;

.field tvStreamType:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 191
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 192
    sget v0, Lcom/streamtv/app/R$id;->ivCover:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/streamtv/app/adapter/StationAdapter$ViewHolder;->ivCover:Landroid/widget/ImageView;

    .line 193
    sget v0, Lcom/streamtv/app/R$id;->ivPlayOverlay:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/streamtv/app/adapter/StationAdapter$ViewHolder;->ivPlayOverlay:Landroid/widget/ImageView;

    .line 194
    sget v0, Lcom/streamtv/app/R$id;->ivYouTubeOverlay:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/streamtv/app/adapter/StationAdapter$ViewHolder;->ivYouTubeOverlay:Landroid/widget/ImageView;

    .line 195
    sget v0, Lcom/streamtv/app/R$id;->ivFeatured:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/streamtv/app/adapter/StationAdapter$ViewHolder;->ivFeatured:Landroid/widget/ImageView;

    .line 196
    sget v0, Lcom/streamtv/app/R$id;->focusBorder:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/streamtv/app/adapter/StationAdapter$ViewHolder;->focusBorder:Landroid/view/View;

    .line 197
    sget v0, Lcom/streamtv/app/R$id;->tvName:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/streamtv/app/adapter/StationAdapter$ViewHolder;->tvName:Landroid/widget/TextView;

    .line 198
    sget v0, Lcom/streamtv/app/R$id;->tvFrequency:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/streamtv/app/adapter/StationAdapter$ViewHolder;->tvFrequency:Landroid/widget/TextView;

    .line 199
    sget v0, Lcom/streamtv/app/R$id;->tvGenre:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/streamtv/app/adapter/StationAdapter$ViewHolder;->tvGenre:Landroid/widget/TextView;

    .line 200
    sget v0, Lcom/streamtv/app/R$id;->tvStreamType:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/streamtv/app/adapter/StationAdapter$ViewHolder;->tvStreamType:Landroid/widget/TextView;

    .line 201
    sget v0, Lcom/streamtv/app/R$id;->tvArtist:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/streamtv/app/adapter/StationAdapter$ViewHolder;->tvArtist:Landroid/widget/TextView;

    .line 202
    sget v0, Lcom/streamtv/app/R$id;->tvMood:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/streamtv/app/adapter/StationAdapter$ViewHolder;->tvMood:Landroid/widget/TextView;

    .line 203
    sget v0, Lcom/streamtv/app/R$id;->tvDuration:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/streamtv/app/adapter/StationAdapter$ViewHolder;->tvDuration:Landroid/widget/TextView;

    return-void
.end method
