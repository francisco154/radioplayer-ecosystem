.class public Lcom/streamtv/app/ui/MainActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "MainActivity.java"

# interfaces
.implements Lcom/streamtv/app/network/AudioService$PlayerStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/streamtv/app/ui/MainActivity$GridSpacingItemDecoration;,
        Lcom/streamtv/app/ui/MainActivity$AnonymousClass1;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MainActivity"


# instance fields
.field private audioService:Lcom/streamtv/app/network/AudioService;

.field private categoriesData:Lcom/streamtv/app/model/CategoriesResponse;

.field private currentStation:Lcom/streamtv/app/model/Station;

.field private currentTab:I

.field private dataFetcher:Lcom/streamtv/app/network/DataFetcher;

.field private demoAdapter:Lcom/streamtv/app/adapter/StationAdapter;

.field private demoStations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/streamtv/app/model/Station;",
            ">;"
        }
    .end annotation
.end field

.field private favoriteAdapter:Lcom/streamtv/app/adapter/StationAdapter;

.field private favoritesManager:Lcom/streamtv/app/model/FavoritesManager;

.field private nowPlayingBar:Landroid/widget/LinearLayout;

.field private npCover:Landroid/widget/ImageView;

.field private npNext:Landroid/widget/ImageButton;

.field private npPlayPause:Landroid/widget/ImageButton;

.field private npPrev:Landroid/widget/ImageButton;

.field private npSubtitle:Landroid/widget/TextView;

.field private npTitle:Landroid/widget/TextView;

.field private progressBar:Landroid/widget/ProgressBar;

.field private radioAdapter:Lcom/streamtv/app/adapter/StationAdapter;

.field private radioStations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/streamtv/app/model/Station;",
            ">;"
        }
    .end annotation
.end field

.field private recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private tabDemos:Landroid/widget/TextView;

.field private tabFavorites:Landroid/widget/TextView;

.field private tabRadios:Landroid/widget/TextView;

.field private tvConnectionStatus:Landroid/widget/TextView;

.field private tvError:Landroid/widget/TextView;

.field private tvHeaderInfo:Landroid/widget/TextView;


# direct methods
.method static bridge synthetic -$$Nest$fgetdemoAdapter(Lcom/streamtv/app/ui/MainActivity;)Lcom/streamtv/app/adapter/StationAdapter;
    .locals 0

    iget-object p0, p0, Lcom/streamtv/app/ui/MainActivity;->demoAdapter:Lcom/streamtv/app/adapter/StationAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetdemoStations(Lcom/streamtv/app/ui/MainActivity;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/streamtv/app/ui/MainActivity;->demoStations:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetprogressBar(Lcom/streamtv/app/ui/MainActivity;)Landroid/widget/ProgressBar;
    .locals 0

    iget-object p0, p0, Lcom/streamtv/app/ui/MainActivity;->progressBar:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetradioAdapter(Lcom/streamtv/app/ui/MainActivity;)Lcom/streamtv/app/adapter/StationAdapter;
    .locals 0

    iget-object p0, p0, Lcom/streamtv/app/ui/MainActivity;->radioAdapter:Lcom/streamtv/app/adapter/StationAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetradioStations(Lcom/streamtv/app/ui/MainActivity;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/streamtv/app/ui/MainActivity;->radioStations:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetrecyclerView(Lcom/streamtv/app/ui/MainActivity;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/streamtv/app/ui/MainActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettvConnectionStatus(Lcom/streamtv/app/ui/MainActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/streamtv/app/ui/MainActivity;->tvConnectionStatus:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettvError(Lcom/streamtv/app/ui/MainActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/streamtv/app/ui/MainActivity;->tvError:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettvHeaderInfo(Lcom/streamtv/app/ui/MainActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/streamtv/app/ui/MainActivity;->tvHeaderInfo:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputcategoriesData(Lcom/streamtv/app/ui/MainActivity;Lcom/streamtv/app/model/CategoriesResponse;)V
    .locals 0

    iput-object p1, p0, Lcom/streamtv/app/ui/MainActivity;->categoriesData:Lcom/streamtv/app/model/CategoriesResponse;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputdemoStations(Lcom/streamtv/app/ui/MainActivity;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/streamtv/app/ui/MainActivity;->demoStations:Ljava/util/List;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputradioStations(Lcom/streamtv/app/ui/MainActivity;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/streamtv/app/ui/MainActivity;->radioStations:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/streamtv/app/ui/MainActivity;->radioStations:Ljava/util/List;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/streamtv/app/ui/MainActivity;->demoStations:Ljava/util/List;

    const/4 v0, 0x0

    .line 65
    iput v0, p0, Lcom/streamtv/app/ui/MainActivity;->currentTab:I

    return-void
.end method

.method private findStationIndex(Ljava/util/List;Lcom/streamtv/app/model/Station;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/streamtv/app/model/Station;",
            ">;",
            "Lcom/streamtv/app/model/Station;",
            ")I"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 453
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 454
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/streamtv/app/model/Station;

    invoke-virtual {v2}, Lcom/streamtv/app/model/Station;->getName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/streamtv/app/model/Station;

    invoke-virtual {v2}, Lcom/streamtv/app/model/Station;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/streamtv/app/model/Station;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private getCurrentStationList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/streamtv/app/model/Station;",
            ">;"
        }
    .end annotation

    .line 440
    iget v0, p0, Lcom/streamtv/app/ui/MainActivity;->currentTab:I

    if-nez v0, :cond_0

    .line 442
    iget-object v0, p0, Lcom/streamtv/app/ui/MainActivity;->radioStations:Ljava/util/List;

    return-object v0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 445
    iget-object v0, p0, Lcom/streamtv/app/ui/MainActivity;->demoStations:Ljava/util/List;

    return-object v0

    .line 447
    :cond_1
    iget-object v0, p0, Lcom/streamtv/app/ui/MainActivity;->favoritesManager:Lcom/streamtv/app/model/FavoritesManager;

    iget-object v1, p0, Lcom/streamtv/app/ui/MainActivity;->radioStations:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/streamtv/app/model/FavoritesManager;->getFavoriteStations(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 448
    iget-object v1, p0, Lcom/streamtv/app/ui/MainActivity;->favoritesManager:Lcom/streamtv/app/model/FavoritesManager;

    iget-object v2, p0, Lcom/streamtv/app/ui/MainActivity;->demoStations:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/streamtv/app/model/FavoritesManager;->getFavoriteStations(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method static lambda$onCreate$1(Landroid/view/View;Z)V
    .locals 2

    if-eqz p1, :cond_0

    const p1, 0x3f99999a    # 1.2f

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    .line 212
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 v0, 0xc8

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method static lambda$setupCircularBarButton$10(Landroid/view/View;Z)V
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p1, :cond_0

    const v1, 0x3f933333    # 1.15f

    goto :goto_0

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    .line 333
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const v0, 0x3f333333    # 0.7f

    :goto_1
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 v0, 0xc8

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private loadData()V
    .locals 3

    .line 365
    iget-object v0, p0, Lcom/streamtv/app/ui/MainActivity;->progressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 366
    iget-object v0, p0, Lcom/streamtv/app/ui/MainActivity;->tvError:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 367
    iget-object v0, p0, Lcom/streamtv/app/ui/MainActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 368
    iget-object v0, p0, Lcom/streamtv/app/ui/MainActivity;->dataFetcher:Lcom/streamtv/app/network/DataFetcher;

    invoke-static {}, Lcom/streamtv/app/App;->getJsonUrl()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/streamtv/app/ui/MainActivity$17;

    invoke-direct {v2, p0}, Lcom/streamtv/app/ui/MainActivity$17;-><init>(Lcom/streamtv/app/ui/MainActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/streamtv/app/network/DataFetcher;->fetchCategories(Ljava/lang/String;Lcom/streamtv/app/network/DataFetcher$DataCallback;)V

    return-void
.end method

.method private openPlayerForStation(Lcom/streamtv/app/model/Station;)V
    .locals 4

    .line 495
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/streamtv/app/ui/PlayerActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 496
    const-string v1, "name"

    invoke-virtual {p1}, Lcom/streamtv/app/model/Station;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 497
    const-string v1, "subtitle"

    invoke-virtual {p1}, Lcom/streamtv/app/model/Station;->getSubtitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 498
    invoke-virtual {p1}, Lcom/streamtv/app/model/Station;->getGenre()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/streamtv/app/model/Station;->getGenre()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    const-string v3, "genre"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 499
    invoke-virtual {p1}, Lcom/streamtv/app/model/Station;->getCoverImage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/streamtv/app/model/Station;->getCoverImage()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v1, v2

    :goto_1
    const-string v3, "coverImage"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 500
    invoke-virtual {p1}, Lcom/streamtv/app/model/Station;->getStreamType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/streamtv/app/model/Station;->getStreamType()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_2
    move-object v1, v2

    :goto_2
    const-string v3, "streamType"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 501
    invoke-virtual {p1}, Lcom/streamtv/app/model/Station;->getDescription()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/streamtv/app/model/Station;->getDescription()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_3
    move-object v1, v2

    :goto_3
    const-string v3, "description"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 502
    invoke-virtual {p1}, Lcom/streamtv/app/model/Station;->getFrequency()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lcom/streamtv/app/model/Station;->getFrequency()Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_4
    move-object v1, v2

    :goto_4
    const-string v3, "frequency"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 503
    invoke-virtual {p1}, Lcom/streamtv/app/model/Station;->getLocation()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Lcom/streamtv/app/model/Station;->getLocation()Ljava/lang/String;

    move-result-object v2

    :cond_5
    const-string p1, "location"

    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 504
    invoke-virtual {p0, v0}, Lcom/streamtv/app/ui/MainActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private playNextInBar()V
    .locals 3

    .line 528
    invoke-static {}, Lcom/streamtv/app/model/StationListHolder;->getNextStation()Lcom/streamtv/app/model/Station;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 530
    iput-object v0, p0, Lcom/streamtv/app/ui/MainActivity;->currentStation:Lcom/streamtv/app/model/Station;

    .line 531
    iget-object v1, p0, Lcom/streamtv/app/ui/MainActivity;->audioService:Lcom/streamtv/app/network/AudioService;

    invoke-virtual {v0}, Lcom/streamtv/app/model/Station;->getPlaybackUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/streamtv/app/network/AudioService;->play(Ljava/lang/String;)V

    .line 532
    invoke-direct {p0, v0}, Lcom/streamtv/app/ui/MainActivity;->updateNowPlaying(Lcom/streamtv/app/model/Station;)V

    .line 533
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Siguiente: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/streamtv/app/model/Station;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method private playPreviousInBar()V
    .locals 3

    .line 518
    invoke-static {}, Lcom/streamtv/app/model/StationListHolder;->getPreviousStation()Lcom/streamtv/app/model/Station;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 520
    iput-object v0, p0, Lcom/streamtv/app/ui/MainActivity;->currentStation:Lcom/streamtv/app/model/Station;

    .line 521
    iget-object v1, p0, Lcom/streamtv/app/ui/MainActivity;->audioService:Lcom/streamtv/app/network/AudioService;

    invoke-virtual {v0}, Lcom/streamtv/app/model/Station;->getPlaybackUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/streamtv/app/network/AudioService;->play(Ljava/lang/String;)V

    .line 522
    invoke-direct {p0, v0}, Lcom/streamtv/app/ui/MainActivity;->updateNowPlaying(Lcom/streamtv/app/model/Station;)V

    .line 523
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Anterior: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/streamtv/app/model/Station;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method private setupCircularBarButton(Landroid/widget/ImageButton;)V
    .locals 1

    const/4 v0, 0x0

    .line 305
    invoke-static {p1, v0}, Lcom/streamtv/app/ui/MainActivity$$ExternalSyntheticApiModelOutline0;->m(Landroid/widget/ImageButton;Z)V

    const/4 v0, 0x0

    .line 306
    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    const/4 v0, 0x0

    .line 307
    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setElevation(F)V

    .line 308
    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setTranslationZ(F)V

    .line 309
    new-instance v0, Lcom/streamtv/app/ui/MainActivity$14;

    invoke-direct {v0, p0}, Lcom/streamtv/app/ui/MainActivity$14;-><init>(Lcom/streamtv/app/ui/MainActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    const/4 v0, 0x1

    .line 321
    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setClipToOutline(Z)V

    .line 322
    new-instance v0, Lcom/streamtv/app/ui/MainActivity$15;

    invoke-direct {v0, p0}, Lcom/streamtv/app/ui/MainActivity$15;-><init>(Lcom/streamtv/app/ui/MainActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    const v0, 0x3f333333    # 0.7f

    .line 328
    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setAlpha(F)V

    return-void
.end method

.method private setupTabFocus(Landroid/widget/TextView;I)V
    .locals 1

    .line 337
    new-instance v0, Lcom/streamtv/app/ui/MainActivity$16;

    invoke-direct {v0, p0, p1, p2}, Lcom/streamtv/app/ui/MainActivity$16;-><init>(Lcom/streamtv/app/ui/MainActivity;Landroid/widget/TextView;I)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void
.end method

.method private switchTab(I)V
    .locals 4

    .line 411
    iput p1, p0, Lcom/streamtv/app/ui/MainActivity;->currentTab:I

    .line 412
    iget-object v0, p0, Lcom/streamtv/app/ui/MainActivity;->tabRadios:Landroid/widget/TextView;

    if-nez p1, :cond_0

    .line 413
    sget v1, Lcom/streamtv/app/R$color;->tab_active:I

    goto :goto_0

    :cond_0
    sget v1, Lcom/streamtv/app/R$color;->tab_inactive:I

    :goto_0
    invoke-static {p0, v1}, Lcom/streamtv/app/ui/MainActivity$$ExternalSyntheticApiModelOutline0;->m(Lcom/streamtv/app/ui/MainActivity;I)I

    move-result v1

    .line 414
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 415
    iget-object v0, p0, Lcom/streamtv/app/ui/MainActivity;->tabRadios:Landroid/widget/TextView;

    if-nez p1, :cond_1

    sget v1, Lcom/streamtv/app/R$drawable;->tab_selected_bg:I

    goto :goto_1

    :cond_1
    sget v1, Lcom/streamtv/app/R$drawable;->tab_unselected_bg:I

    :goto_1
    invoke-virtual {p0, v1}, Lcom/streamtv/app/ui/MainActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 416
    iget-object v0, p0, Lcom/streamtv/app/ui/MainActivity;->tabDemos:Landroid/widget/TextView;

    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    .line 417
    sget v2, Lcom/streamtv/app/R$color;->tab_active:I

    goto :goto_2

    :cond_2
    sget v2, Lcom/streamtv/app/R$color;->tab_inactive:I

    :goto_2
    invoke-static {p0, v2}, Lcom/streamtv/app/ui/MainActivity$$ExternalSyntheticApiModelOutline0;->m(Lcom/streamtv/app/ui/MainActivity;I)I

    move-result v2

    .line 418
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 419
    iget-object v0, p0, Lcom/streamtv/app/ui/MainActivity;->tabDemos:Landroid/widget/TextView;

    if-ne p1, v1, :cond_3

    sget v2, Lcom/streamtv/app/R$drawable;->tab_selected_bg:I

    goto :goto_3

    :cond_3
    sget v2, Lcom/streamtv/app/R$drawable;->tab_unselected_bg:I

    :goto_3
    invoke-virtual {p0, v2}, Lcom/streamtv/app/ui/MainActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 420
    iget-object v0, p0, Lcom/streamtv/app/ui/MainActivity;->tabFavorites:Landroid/widget/TextView;

    const/4 v2, 0x2

    if-ne p1, v2, :cond_4

    .line 421
    sget v3, Lcom/streamtv/app/R$color;->tab_active:I

    goto :goto_4

    :cond_4
    sget v3, Lcom/streamtv/app/R$color;->tab_inactive:I

    :goto_4
    invoke-static {p0, v3}, Lcom/streamtv/app/ui/MainActivity$$ExternalSyntheticApiModelOutline0;->m(Lcom/streamtv/app/ui/MainActivity;I)I

    move-result v3

    .line 422
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 423
    iget-object v0, p0, Lcom/streamtv/app/ui/MainActivity;->tabFavorites:Landroid/widget/TextView;

    if-ne p1, v2, :cond_5

    sget v2, Lcom/streamtv/app/R$drawable;->tab_selected_bg:I

    goto :goto_5

    :cond_5
    sget v2, Lcom/streamtv/app/R$drawable;->tab_unselected_bg:I

    :goto_5
    invoke-virtual {p0, v2}, Lcom/streamtv/app/ui/MainActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    if-nez p1, :cond_6

    .line 425
    iget-object p1, p0, Lcom/streamtv/app/ui/MainActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/streamtv/app/ui/MainActivity;->radioAdapter:Lcom/streamtv/app/adapter/StationAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void

    :cond_6
    if-ne p1, v1, :cond_7

    .line 429
    iget-object p1, p0, Lcom/streamtv/app/ui/MainActivity;->demoAdapter:Lcom/streamtv/app/adapter/StationAdapter;

    iget-object v0, p0, Lcom/streamtv/app/ui/MainActivity;->demoStations:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/streamtv/app/adapter/StationAdapter;->setStations(Ljava/util/List;)V

    .line 430
    iget-object p1, p0, Lcom/streamtv/app/ui/MainActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/streamtv/app/ui/MainActivity;->demoAdapter:Lcom/streamtv/app/adapter/StationAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto :goto_6

    .line 432
    :cond_7
    iget-object p1, p0, Lcom/streamtv/app/ui/MainActivity;->favoritesManager:Lcom/streamtv/app/model/FavoritesManager;

    iget-object v0, p0, Lcom/streamtv/app/ui/MainActivity;->radioStations:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/streamtv/app/model/FavoritesManager;->getFavoriteStations(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 433
    iget-object v0, p0, Lcom/streamtv/app/ui/MainActivity;->favoritesManager:Lcom/streamtv/app/model/FavoritesManager;

    iget-object v1, p0, Lcom/streamtv/app/ui/MainActivity;->demoStations:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/streamtv/app/model/FavoritesManager;->getFavoriteStations(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 434
    iget-object v0, p0, Lcom/streamtv/app/ui/MainActivity;->favoriteAdapter:Lcom/streamtv/app/adapter/StationAdapter;

    invoke-virtual {v0, p1}, Lcom/streamtv/app/adapter/StationAdapter;->setStations(Ljava/util/List;)V

    .line 435
    iget-object p1, p0, Lcom/streamtv/app/ui/MainActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/streamtv/app/ui/MainActivity;->favoriteAdapter:Lcom/streamtv/app/adapter/StationAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    :goto_6
    return-void
.end method

.method private togglePlayPause()V
    .locals 2

    .line 508
    iget-object v0, p0, Lcom/streamtv/app/ui/MainActivity;->audioService:Lcom/streamtv/app/network/AudioService;

    invoke-virtual {v0}, Lcom/streamtv/app/network/AudioService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 509
    iget-object v0, p0, Lcom/streamtv/app/ui/MainActivity;->audioService:Lcom/streamtv/app/network/AudioService;

    invoke-virtual {v0}, Lcom/streamtv/app/network/AudioService;->pause()V

    .line 510
    iget-object v0, p0, Lcom/streamtv/app/ui/MainActivity;->npPlayPause:Landroid/widget/ImageButton;

    sget v1, Lcom/streamtv/app/R$drawable;->ic_play:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 512
    :cond_0
    iget-object v0, p0, Lcom/streamtv/app/ui/MainActivity;->audioService:Lcom/streamtv/app/network/AudioService;

    invoke-virtual {v0}, Lcom/streamtv/app/network/AudioService;->resume()V

    .line 513
    iget-object v0, p0, Lcom/streamtv/app/ui/MainActivity;->npPlayPause:Landroid/widget/ImageButton;

    sget v1, Lcom/streamtv/app/R$drawable;->ic_pause:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    :goto_0
    return-void
.end method

.method private updateNowPlaying(Lcom/streamtv/app/model/Station;)V
    .locals 2

    .line 483
    iget-object v0, p0, Lcom/streamtv/app/ui/MainActivity;->nowPlayingBar:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 484
    iget-object v0, p0, Lcom/streamtv/app/ui/MainActivity;->npTitle:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/streamtv/app/model/Station;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 485
    iget-object v0, p0, Lcom/streamtv/app/ui/MainActivity;->npSubtitle:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/streamtv/app/model/Station;->getSubtitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 486
    invoke-virtual {p1}, Lcom/streamtv/app/model/Station;->getCoverImage()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 487
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 488
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    sget v0, Lcom/streamtv/app/R$drawable;->ic_radio:I

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    sget v0, Lcom/streamtv/app/R$drawable;->ic_radio:I

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->error(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    invoke-virtual {p1}, Lcom/bumptech/glide/RequestBuilder;->centerCrop()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    const/16 v0, 0x3a98

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->timeout(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    iget-object v0, p0, Lcom/streamtv/app/ui/MainActivity;->npCover:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    goto :goto_0

    .line 490
    :cond_0
    iget-object p1, p0, Lcom/streamtv/app/ui/MainActivity;->npCover:Landroid/widget/ImageView;

    sget v0, Lcom/streamtv/app/R$drawable;->ic_radio:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method m773lambda$onCreate$0$comstreamtvappuiMainActivity(Landroid/view/View;)V
    .locals 1

    .line 207
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/streamtv/app/ui/SettingsActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/streamtv/app/ui/MainActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method m774lambda$onCreate$2$comstreamtvappuiMainActivity(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x0

    .line 217
    invoke-direct {p0, p1}, Lcom/streamtv/app/ui/MainActivity;->switchTab(I)V

    return-void
.end method

.method m775lambda$onCreate$3$comstreamtvappuiMainActivity(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x1

    .line 222
    invoke-direct {p0, p1}, Lcom/streamtv/app/ui/MainActivity;->switchTab(I)V

    return-void
.end method

.method m776lambda$onCreate$4$comstreamtvappuiMainActivity(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x2

    .line 227
    invoke-direct {p0, p1}, Lcom/streamtv/app/ui/MainActivity;->switchTab(I)V

    return-void
.end method

.method m777lambda$onCreate$5$comstreamtvappuiMainActivity(Landroid/view/View;)V
    .locals 0

    .line 232
    iget-object p1, p0, Lcom/streamtv/app/ui/MainActivity;->currentStation:Lcom/streamtv/app/model/Station;

    if-eqz p1, :cond_0

    .line 234
    invoke-direct {p0, p1}, Lcom/streamtv/app/ui/MainActivity;->openPlayerForStation(Lcom/streamtv/app/model/Station;)V

    :cond_0
    return-void
.end method

.method m778lambda$onCreate$6$comstreamtvappuiMainActivity(Landroid/view/View;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 241
    iget-object p1, p0, Lcom/streamtv/app/ui/MainActivity;->nowPlayingBar:Landroid/widget/LinearLayout;

    const p2, -0xdadabb

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    goto :goto_0

    .line 243
    :cond_0
    iget-object p1, p0, Lcom/streamtv/app/ui/MainActivity;->nowPlayingBar:Landroid/widget/LinearLayout;

    const p2, -0xf2f2e1

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    :goto_0
    return-void
.end method

.method m779lambda$onCreate$7$comstreamtvappuiMainActivity(Landroid/view/View;)V
    .locals 0

    .line 249
    invoke-direct {p0}, Lcom/streamtv/app/ui/MainActivity;->togglePlayPause()V

    return-void
.end method

.method m780lambda$onCreate$8$comstreamtvappuiMainActivity(Landroid/view/View;)V
    .locals 0

    .line 254
    invoke-direct {p0}, Lcom/streamtv/app/ui/MainActivity;->playPreviousInBar()V

    return-void
.end method

.method m781lambda$onCreate$9$comstreamtvappuiMainActivity(Landroid/view/View;)V
    .locals 0

    .line 259
    invoke-direct {p0}, Lcom/streamtv/app/ui/MainActivity;->playNextInBar()V

    return-void
.end method

.method m782lambda$onError$13$comstreamtvappuiMainActivity(Ljava/lang/String;)V
    .locals 2

    .line 564
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 565
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Player error: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MainActivity"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method m783lambda$onStateChanged$12$comstreamtvappuiMainActivity(Z)V
    .locals 1

    .line 549
    iget-object v0, p0, Lcom/streamtv/app/ui/MainActivity;->npPlayPause:Landroid/widget/ImageButton;

    if-eqz p1, :cond_0

    sget p1, Lcom/streamtv/app/R$drawable;->ic_pause:I

    goto :goto_0

    :cond_0
    sget p1, Lcom/streamtv/app/R$drawable;->ic_play:I

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setImageResource(I)V

    return-void
.end method

.method m784lambda$setupTabFocus$11$comstreamtvappuiMainActivity(Landroid/widget/TextView;ILandroid/view/View;Z)V
    .locals 0

    if-eqz p4, :cond_0

    .line 350
    sget p2, Lcom/streamtv/app/R$color;->accent_blue:I

    invoke-static {p0, p2}, Lcom/streamtv/app/ui/MainActivity$$ExternalSyntheticApiModelOutline0;->m(Lcom/streamtv/app/ui/MainActivity;I)I

    move-result p2

    .line 351
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    const p2, 0x3f866666    # 1.05f

    .line 352
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setScaleX(F)V

    .line 353
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setScaleY(F)V

    return-void

    .line 356
    :cond_0
    iget p3, p0, Lcom/streamtv/app/ui/MainActivity;->currentTab:I

    if-eq p3, p2, :cond_1

    .line 357
    sget p2, Lcom/streamtv/app/R$color;->tab_inactive:I

    invoke-static {p0, p2}, Lcom/streamtv/app/ui/MainActivity$$ExternalSyntheticApiModelOutline0;->m(Lcom/streamtv/app/ui/MainActivity;I)I

    move-result p2

    .line 358
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    const/high16 p2, 0x3f800000    # 1.0f

    .line 360
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setScaleX(F)V

    .line 361
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setScaleY(F)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 73
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 74
    sget p1, Lcom/streamtv/app/R$layout;->activity_main:I

    invoke-virtual {p0, p1}, Lcom/streamtv/app/ui/MainActivity;->setContentView(I)V

    .line 75
    invoke-static {}, Lcom/streamtv/app/App;->getInstance()Lcom/streamtv/app/App;

    move-result-object p1

    invoke-virtual {p1}, Lcom/streamtv/app/App;->isLoggedIn()Z

    move-result p1

    if-nez p1, :cond_0

    .line 76
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/streamtv/app/ui/LoginActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/streamtv/app/ui/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 77
    invoke-virtual {p0}, Lcom/streamtv/app/ui/MainActivity;->finish()V

    return-void

    .line 80
    :cond_0
    sget p1, Lcom/streamtv/app/R$id;->recyclerView:I

    invoke-virtual {p0, p1}, Lcom/streamtv/app/ui/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/streamtv/app/ui/MainActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 81
    sget p1, Lcom/streamtv/app/R$id;->progressBar:I

    invoke-virtual {p0, p1}, Lcom/streamtv/app/ui/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/streamtv/app/ui/MainActivity;->progressBar:Landroid/widget/ProgressBar;

    .line 82
    sget p1, Lcom/streamtv/app/R$id;->tvError:I

    invoke-virtual {p0, p1}, Lcom/streamtv/app/ui/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/streamtv/app/ui/MainActivity;->tvError:Landroid/widget/TextView;

    .line 83
    sget p1, Lcom/streamtv/app/R$id;->tvHeaderInfo:I

    invoke-virtual {p0, p1}, Lcom/streamtv/app/ui/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/streamtv/app/ui/MainActivity;->tvHeaderInfo:Landroid/widget/TextView;

    .line 84
    sget p1, Lcom/streamtv/app/R$id;->tabRadios:I

    invoke-virtual {p0, p1}, Lcom/streamtv/app/ui/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/streamtv/app/ui/MainActivity;->tabRadios:Landroid/widget/TextView;

    .line 85
    sget p1, Lcom/streamtv/app/R$id;->tabDemos:I

    invoke-virtual {p0, p1}, Lcom/streamtv/app/ui/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/streamtv/app/ui/MainActivity;->tabDemos:Landroid/widget/TextView;

    .line 86
    sget p1, Lcom/streamtv/app/R$id;->tabFavorites:I

    invoke-virtual {p0, p1}, Lcom/streamtv/app/ui/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/streamtv/app/ui/MainActivity;->tabFavorites:Landroid/widget/TextView;

    .line 87
    sget p1, Lcom/streamtv/app/R$id;->nowPlayingBar:I

    invoke-virtual {p0, p1}, Lcom/streamtv/app/ui/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/streamtv/app/ui/MainActivity;->nowPlayingBar:Landroid/widget/LinearLayout;

    .line 88
    sget p1, Lcom/streamtv/app/R$id;->npCover:I

    invoke-virtual {p0, p1}, Lcom/streamtv/app/ui/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/streamtv/app/ui/MainActivity;->npCover:Landroid/widget/ImageView;

    .line 89
    sget p1, Lcom/streamtv/app/R$id;->npTitle:I

    invoke-virtual {p0, p1}, Lcom/streamtv/app/ui/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/streamtv/app/ui/MainActivity;->npTitle:Landroid/widget/TextView;

    .line 90
    sget p1, Lcom/streamtv/app/R$id;->npSubtitle:I

    invoke-virtual {p0, p1}, Lcom/streamtv/app/ui/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/streamtv/app/ui/MainActivity;->npSubtitle:Landroid/widget/TextView;

    .line 91
    sget p1, Lcom/streamtv/app/R$id;->npPlayPause:I

    invoke-virtual {p0, p1}, Lcom/streamtv/app/ui/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lcom/streamtv/app/ui/MainActivity;->npPlayPause:Landroid/widget/ImageButton;

    .line 92
    sget p1, Lcom/streamtv/app/R$id;->npPrev:I

    invoke-virtual {p0, p1}, Lcom/streamtv/app/ui/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lcom/streamtv/app/ui/MainActivity;->npPrev:Landroid/widget/ImageButton;

    .line 93
    sget p1, Lcom/streamtv/app/R$id;->npNext:I

    invoke-virtual {p0, p1}, Lcom/streamtv/app/ui/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lcom/streamtv/app/ui/MainActivity;->npNext:Landroid/widget/ImageButton;

    .line 94
    sget p1, Lcom/streamtv/app/R$id;->tvConnectionStatus:I

    invoke-virtual {p0, p1}, Lcom/streamtv/app/ui/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/streamtv/app/ui/MainActivity;->tvConnectionStatus:Landroid/widget/TextView;

    .line 95
    sget p1, Lcom/streamtv/app/R$id;->btnSettings:I

    invoke-virtual {p0, p1}, Lcom/streamtv/app/ui/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    if-eqz p1, :cond_1

    .line 97
    new-instance v0, Lcom/streamtv/app/ui/MainActivity$1;

    invoke-direct {v0, p0}, Lcom/streamtv/app/ui/MainActivity$1;-><init>(Lcom/streamtv/app/ui/MainActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    new-instance v0, Lcom/streamtv/app/ui/MainActivity$2;

    invoke-direct {v0, p0}, Lcom/streamtv/app/ui/MainActivity$2;-><init>(Lcom/streamtv/app/ui/MainActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 110
    :cond_1
    iget-object p1, p0, Lcom/streamtv/app/ui/MainActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    const/4 v1, 0x5

    invoke-direct {v0, p0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 111
    iget-object p1, p0, Lcom/streamtv/app/ui/MainActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 112
    iget-object p1, p0, Lcom/streamtv/app/ui/MainActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Lcom/streamtv/app/ui/MainActivity$GridSpacingItemDecoration;

    const/16 v3, 0x10

    const/4 v4, 0x0

    invoke-direct {v2, v1, v3, v4}, Lcom/streamtv/app/ui/MainActivity$GridSpacingItemDecoration;-><init>(IIZ)V

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 113
    new-instance p1, Lcom/streamtv/app/adapter/StationAdapter;

    new-instance v1, Lcom/streamtv/app/ui/MainActivity$3;

    invoke-direct {v1, p0}, Lcom/streamtv/app/ui/MainActivity$3;-><init>(Lcom/streamtv/app/ui/MainActivity;)V

    invoke-direct {p1, v4, v1}, Lcom/streamtv/app/adapter/StationAdapter;-><init>(ZLcom/streamtv/app/adapter/StationAdapter$OnStationClickListener;)V

    iput-object p1, p0, Lcom/streamtv/app/ui/MainActivity;->radioAdapter:Lcom/streamtv/app/adapter/StationAdapter;

    .line 119
    new-instance p1, Lcom/streamtv/app/adapter/StationAdapter;

    new-instance v1, Lcom/streamtv/app/ui/MainActivity$4;

    invoke-direct {v1, p0}, Lcom/streamtv/app/ui/MainActivity$4;-><init>(Lcom/streamtv/app/ui/MainActivity;)V

    invoke-direct {p1, v0, v1}, Lcom/streamtv/app/adapter/StationAdapter;-><init>(ZLcom/streamtv/app/adapter/StationAdapter$OnStationClickListener;)V

    iput-object p1, p0, Lcom/streamtv/app/ui/MainActivity;->demoAdapter:Lcom/streamtv/app/adapter/StationAdapter;

    .line 125
    new-instance p1, Lcom/streamtv/app/adapter/StationAdapter;

    new-instance v1, Lcom/streamtv/app/ui/MainActivity$5;

    invoke-direct {v1, p0}, Lcom/streamtv/app/ui/MainActivity$5;-><init>(Lcom/streamtv/app/ui/MainActivity;)V

    invoke-direct {p1, v4, v1}, Lcom/streamtv/app/adapter/StationAdapter;-><init>(ZLcom/streamtv/app/adapter/StationAdapter$OnStationClickListener;)V

    iput-object p1, p0, Lcom/streamtv/app/ui/MainActivity;->favoriteAdapter:Lcom/streamtv/app/adapter/StationAdapter;

    .line 131
    iget-object p1, p0, Lcom/streamtv/app/ui/MainActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/streamtv/app/ui/MainActivity;->radioAdapter:Lcom/streamtv/app/adapter/StationAdapter;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 132
    invoke-static {p0}, Lcom/streamtv/app/model/FavoritesManager;->getInstance(Landroid/content/Context;)Lcom/streamtv/app/model/FavoritesManager;

    move-result-object p1

    iput-object p1, p0, Lcom/streamtv/app/ui/MainActivity;->favoritesManager:Lcom/streamtv/app/model/FavoritesManager;

    .line 133
    iget-object p1, p0, Lcom/streamtv/app/ui/MainActivity;->tabRadios:Landroid/widget/TextView;

    new-instance v1, Lcom/streamtv/app/ui/MainActivity$6;

    invoke-direct {v1, p0}, Lcom/streamtv/app/ui/MainActivity$6;-><init>(Lcom/streamtv/app/ui/MainActivity;)V

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    iget-object p1, p0, Lcom/streamtv/app/ui/MainActivity;->tabDemos:Landroid/widget/TextView;

    new-instance v1, Lcom/streamtv/app/ui/MainActivity$7;

    invoke-direct {v1, p0}, Lcom/streamtv/app/ui/MainActivity$7;-><init>(Lcom/streamtv/app/ui/MainActivity;)V

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    iget-object p1, p0, Lcom/streamtv/app/ui/MainActivity;->tabFavorites:Landroid/widget/TextView;

    new-instance v1, Lcom/streamtv/app/ui/MainActivity$8;

    invoke-direct {v1, p0}, Lcom/streamtv/app/ui/MainActivity$8;-><init>(Lcom/streamtv/app/ui/MainActivity;)V

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    iget-object p1, p0, Lcom/streamtv/app/ui/MainActivity;->tabRadios:Landroid/widget/TextView;

    invoke-direct {p0, p1, v4}, Lcom/streamtv/app/ui/MainActivity;->setupTabFocus(Landroid/widget/TextView;I)V

    .line 152
    iget-object p1, p0, Lcom/streamtv/app/ui/MainActivity;->tabDemos:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/streamtv/app/ui/MainActivity;->setupTabFocus(Landroid/widget/TextView;I)V

    .line 153
    iget-object p1, p0, Lcom/streamtv/app/ui/MainActivity;->tabFavorites:Landroid/widget/TextView;

    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/streamtv/app/ui/MainActivity;->setupTabFocus(Landroid/widget/TextView;I)V

    .line 154
    iget-object p1, p0, Lcom/streamtv/app/ui/MainActivity;->nowPlayingBar:Landroid/widget/LinearLayout;

    new-instance v0, Lcom/streamtv/app/ui/MainActivity$9;

    invoke-direct {v0, p0}, Lcom/streamtv/app/ui/MainActivity$9;-><init>(Lcom/streamtv/app/ui/MainActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    iget-object p1, p0, Lcom/streamtv/app/ui/MainActivity;->nowPlayingBar:Landroid/widget/LinearLayout;

    new-instance v0, Lcom/streamtv/app/ui/MainActivity$10;

    invoke-direct {v0, p0}, Lcom/streamtv/app/ui/MainActivity$10;-><init>(Lcom/streamtv/app/ui/MainActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 166
    iget-object p1, p0, Lcom/streamtv/app/ui/MainActivity;->npPlayPause:Landroid/widget/ImageButton;

    invoke-direct {p0, p1}, Lcom/streamtv/app/ui/MainActivity;->setupCircularBarButton(Landroid/widget/ImageButton;)V

    .line 167
    iget-object p1, p0, Lcom/streamtv/app/ui/MainActivity;->npPrev:Landroid/widget/ImageButton;

    invoke-direct {p0, p1}, Lcom/streamtv/app/ui/MainActivity;->setupCircularBarButton(Landroid/widget/ImageButton;)V

    .line 168
    iget-object p1, p0, Lcom/streamtv/app/ui/MainActivity;->npNext:Landroid/widget/ImageButton;

    invoke-direct {p0, p1}, Lcom/streamtv/app/ui/MainActivity;->setupCircularBarButton(Landroid/widget/ImageButton;)V

    .line 169
    iget-object p1, p0, Lcom/streamtv/app/ui/MainActivity;->npPlayPause:Landroid/widget/ImageButton;

    new-instance v0, Lcom/streamtv/app/ui/MainActivity$11;

    invoke-direct {v0, p0}, Lcom/streamtv/app/ui/MainActivity$11;-><init>(Lcom/streamtv/app/ui/MainActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    iget-object p1, p0, Lcom/streamtv/app/ui/MainActivity;->npPrev:Landroid/widget/ImageButton;

    new-instance v0, Lcom/streamtv/app/ui/MainActivity$12;

    invoke-direct {v0, p0}, Lcom/streamtv/app/ui/MainActivity$12;-><init>(Lcom/streamtv/app/ui/MainActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    iget-object p1, p0, Lcom/streamtv/app/ui/MainActivity;->npNext:Landroid/widget/ImageButton;

    new-instance v0, Lcom/streamtv/app/ui/MainActivity$13;

    invoke-direct {v0, p0}, Lcom/streamtv/app/ui/MainActivity$13;-><init>(Lcom/streamtv/app/ui/MainActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    invoke-static {p0}, Lcom/streamtv/app/network/AudioService;->getInstance(Landroid/content/Context;)Lcom/streamtv/app/network/AudioService;

    move-result-object p1

    .line 188
    iput-object p1, p0, Lcom/streamtv/app/ui/MainActivity;->audioService:Lcom/streamtv/app/network/AudioService;

    .line 189
    invoke-virtual {p1, p0}, Lcom/streamtv/app/network/AudioService;->setStateListener(Lcom/streamtv/app/network/AudioService$PlayerStateListener;)V

    .line 190
    invoke-static {}, Lcom/streamtv/app/App;->getInstance()Lcom/streamtv/app/App;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 191
    invoke-virtual {p1}, Lcom/streamtv/app/App;->getNtfyBridge()Lcom/streamtv/app/remote/NtfyBridge;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 192
    invoke-virtual {p1}, Lcom/streamtv/app/App;->getNtfyBridge()Lcom/streamtv/app/remote/NtfyBridge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/streamtv/app/remote/NtfyBridge;->getOtp()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 193
    iget-object v0, p0, Lcom/streamtv/app/ui/MainActivity;->tvConnectionStatus:Landroid/widget/TextView;

    const-string v1, "Control remoto: Configurado"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    iget-object v0, p0, Lcom/streamtv/app/ui/MainActivity;->tvConnectionStatus:Landroid/widget/TextView;

    const v1, -0xdd3aa2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 196
    :cond_2
    iget-object v0, p0, Lcom/streamtv/app/ui/MainActivity;->tvConnectionStatus:Landroid/widget/TextView;

    const-string v1, "Control remoto: Sin configurar"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    iget-object v0, p0, Lcom/streamtv/app/ui/MainActivity;->tvConnectionStatus:Landroid/widget/TextView;

    const v1, -0x7f939c01

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 199
    :goto_0
    invoke-virtual {p1}, Lcom/streamtv/app/App;->getNtfyBridge()Lcom/streamtv/app/remote/NtfyBridge;

    move-result-object p1

    new-instance v0, Lcom/streamtv/app/ui/MainActivity$AnonymousClass1;

    invoke-direct {v0, p0}, Lcom/streamtv/app/ui/MainActivity$AnonymousClass1;-><init>(Lcom/streamtv/app/ui/MainActivity;)V

    invoke-virtual {p1, v0}, Lcom/streamtv/app/remote/NtfyBridge;->setPairingListener(Lcom/streamtv/app/remote/NtfyBridge$PairingListener;)V

    .line 201
    :cond_3
    new-instance p1, Lcom/streamtv/app/network/DataFetcher;

    invoke-direct {p1}, Lcom/streamtv/app/network/DataFetcher;-><init>()V

    iput-object p1, p0, Lcom/streamtv/app/ui/MainActivity;->dataFetcher:Lcom/streamtv/app/network/DataFetcher;

    .line 202
    invoke-direct {p0}, Lcom/streamtv/app/ui/MainActivity;->loadData()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 570
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 571
    iget-object v0, p0, Lcom/streamtv/app/ui/MainActivity;->audioService:Lcom/streamtv/app/network/AudioService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/streamtv/app/network/AudioService;->setStateListener(Lcom/streamtv/app/network/AudioService$PlayerStateListener;)V

    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 1

    .line 554
    new-instance v0, Lcom/streamtv/app/ui/MainActivity$19;

    invoke-direct {v0, p0, p1}, Lcom/streamtv/app/ui/MainActivity$19;-><init>(Lcom/streamtv/app/ui/MainActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/streamtv/app/ui/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onLoadingChanged(Z)V
    .locals 0

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 576
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    .line 577
    iget-object v0, p0, Lcom/streamtv/app/ui/MainActivity;->audioService:Lcom/streamtv/app/network/AudioService;

    invoke-virtual {v0}, Lcom/streamtv/app/network/AudioService;->hasPlayer()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 578
    iget-object v0, p0, Lcom/streamtv/app/ui/MainActivity;->nowPlayingBar:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 579
    iget-object v0, p0, Lcom/streamtv/app/ui/MainActivity;->npPlayPause:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/streamtv/app/ui/MainActivity;->audioService:Lcom/streamtv/app/network/AudioService;

    invoke-virtual {v1}, Lcom/streamtv/app/network/AudioService;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Lcom/streamtv/app/R$drawable;->ic_pause:I

    goto :goto_0

    :cond_0
    sget v1, Lcom/streamtv/app/R$drawable;->ic_play:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_1

    .line 581
    :cond_1
    iget-object v0, p0, Lcom/streamtv/app/ui/MainActivity;->nowPlayingBar:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 583
    :goto_1
    iget v0, p0, Lcom/streamtv/app/ui/MainActivity;->currentTab:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 584
    invoke-direct {p0, v1}, Lcom/streamtv/app/ui/MainActivity;->switchTab(I)V

    :cond_2
    return-void
.end method

.method public onStateChanged(Z)V
    .locals 1

    .line 539
    new-instance v0, Lcom/streamtv/app/ui/MainActivity$18;

    invoke-direct {v0, p0, p1}, Lcom/streamtv/app/ui/MainActivity$18;-><init>(Lcom/streamtv/app/ui/MainActivity;Z)V

    invoke-virtual {p0, v0}, Lcom/streamtv/app/ui/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onStationClicked(Lcom/streamtv/app/model/Station;)V
    .locals 3

    .line 463
    invoke-virtual {p1}, Lcom/streamtv/app/model/Station;->isYouTube()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 464
    const-string p1, "FM Luzu: Solo disponible v\u00eda YouTube"

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 467
    :cond_0
    invoke-virtual {p1}, Lcom/streamtv/app/model/Station;->getPlaybackUrl()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 469
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "No se puede reproducir: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/streamtv/app/model/Station;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 472
    :cond_1
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

    const-string v2, "MainActivity"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    invoke-direct {p0}, Lcom/streamtv/app/ui/MainActivity;->getCurrentStationList()Ljava/util/List;

    move-result-object v1

    .line 474
    invoke-direct {p0, v1, p1}, Lcom/streamtv/app/ui/MainActivity;->findStationIndex(Ljava/util/List;Lcom/streamtv/app/model/Station;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/streamtv/app/model/StationListHolder;->setStations(Ljava/util/List;I)V

    .line 475
    iget-object v1, p0, Lcom/streamtv/app/ui/MainActivity;->audioService:Lcom/streamtv/app/network/AudioService;

    invoke-virtual {v1, v0}, Lcom/streamtv/app/network/AudioService;->play(Ljava/lang/String;)V

    .line 476
    iput-object p1, p0, Lcom/streamtv/app/ui/MainActivity;->currentStation:Lcom/streamtv/app/model/Station;

    .line 477
    invoke-direct {p0, p1}, Lcom/streamtv/app/ui/MainActivity;->updateNowPlaying(Lcom/streamtv/app/model/Station;)V

    .line 478
    iget-object v0, p0, Lcom/streamtv/app/ui/MainActivity;->audioService:Lcom/streamtv/app/network/AudioService;

    invoke-static {p0, v0}, Lcom/streamtv/app/remote/RemoteControlReceiver;->sendStateBroadcast(Landroid/content/Context;Lcom/streamtv/app/network/AudioService;)V

    .line 479
    invoke-direct {p0, p1}, Lcom/streamtv/app/ui/MainActivity;->openPlayerForStation(Lcom/streamtv/app/model/Station;)V

    return-void
.end method
