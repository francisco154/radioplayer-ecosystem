.class Lcom/streamtv/app/ui/MainActivity$17;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/streamtv/app/network/DataFetcher$DataCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/streamtv/app/ui/MainActivity;->loadData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/streamtv/app/ui/MainActivity;


# direct methods
.method constructor <init>(Lcom/streamtv/app/ui/MainActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 368
    iput-object p1, p0, Lcom/streamtv/app/ui/MainActivity$17;->this$0:Lcom/streamtv/app/ui/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataLoaded(Lcom/streamtv/app/model/CategoriesResponse;)V
    .locals 5

    .line 371
    iget-object v0, p0, Lcom/streamtv/app/ui/MainActivity$17;->this$0:Lcom/streamtv/app/ui/MainActivity;

    invoke-static {v0, p1}, Lcom/streamtv/app/ui/MainActivity;->-$$Nest$fputcategoriesData(Lcom/streamtv/app/ui/MainActivity;Lcom/streamtv/app/model/CategoriesResponse;)V

    .line 372
    iget-object v0, p0, Lcom/streamtv/app/ui/MainActivity$17;->this$0:Lcom/streamtv/app/ui/MainActivity;

    invoke-static {v0}, Lcom/streamtv/app/ui/MainActivity;->-$$Nest$fgetprogressBar(Lcom/streamtv/app/ui/MainActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 373
    iget-object v0, p0, Lcom/streamtv/app/ui/MainActivity$17;->this$0:Lcom/streamtv/app/ui/MainActivity;

    invoke-static {v0}, Lcom/streamtv/app/ui/MainActivity;->-$$Nest$fgetrecyclerView(Lcom/streamtv/app/ui/MainActivity;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 374
    invoke-virtual {p1}, Lcom/streamtv/app/model/CategoriesResponse;->getMeta()Lcom/streamtv/app/model/CategoriesResponse$Meta;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 375
    invoke-virtual {p1}, Lcom/streamtv/app/model/CategoriesResponse;->getMeta()Lcom/streamtv/app/model/CategoriesResponse$Meta;

    move-result-object v0

    .line 376
    iget-object v2, p0, Lcom/streamtv/app/ui/MainActivity$17;->this$0:Lcom/streamtv/app/ui/MainActivity;

    invoke-static {v2}, Lcom/streamtv/app/ui/MainActivity;->-$$Nest$fgettvHeaderInfo(Lcom/streamtv/app/ui/MainActivity;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/streamtv/app/model/CategoriesResponse$Meta;->getTotalRadios()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " radios \u00b7 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/streamtv/app/model/CategoriesResponse$Meta;->getTotalDemos()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " demos"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 377
    iget-object v0, p0, Lcom/streamtv/app/ui/MainActivity$17;->this$0:Lcom/streamtv/app/ui/MainActivity;

    invoke-static {v0}, Lcom/streamtv/app/ui/MainActivity;->-$$Nest$fgettvHeaderInfo(Lcom/streamtv/app/ui/MainActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 379
    :cond_0
    iget-object v0, p0, Lcom/streamtv/app/ui/MainActivity$17;->this$0:Lcom/streamtv/app/ui/MainActivity;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/streamtv/app/ui/MainActivity;->-$$Nest$fputradioStations(Lcom/streamtv/app/ui/MainActivity;Ljava/util/List;)V

    .line 380
    invoke-virtual {p1}, Lcom/streamtv/app/model/CategoriesResponse;->getCategories()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/streamtv/app/model/Category;

    .line 381
    const-string v2, "Radios en Vivo"

    invoke-virtual {v1}, Lcom/streamtv/app/model/Category;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/streamtv/app/model/Category;->getStations()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 382
    iget-object v2, p0, Lcom/streamtv/app/ui/MainActivity$17;->this$0:Lcom/streamtv/app/ui/MainActivity;

    invoke-static {v2}, Lcom/streamtv/app/ui/MainActivity;->-$$Nest$fgetradioStations(Lcom/streamtv/app/ui/MainActivity;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1}, Lcom/streamtv/app/model/Category;->getStations()Ljava/util/List;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 385
    :cond_2
    iget-object v0, p0, Lcom/streamtv/app/ui/MainActivity$17;->this$0:Lcom/streamtv/app/ui/MainActivity;

    invoke-static {v0}, Lcom/streamtv/app/ui/MainActivity;->-$$Nest$fgetradioAdapter(Lcom/streamtv/app/ui/MainActivity;)Lcom/streamtv/app/adapter/StationAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/streamtv/app/ui/MainActivity$17;->this$0:Lcom/streamtv/app/ui/MainActivity;

    invoke-static {v1}, Lcom/streamtv/app/ui/MainActivity;->-$$Nest$fgetradioStations(Lcom/streamtv/app/ui/MainActivity;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/streamtv/app/adapter/StationAdapter;->setStations(Ljava/util/List;)V

    .line 386
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Loaded "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/streamtv/app/ui/MainActivity$17;->this$0:Lcom/streamtv/app/ui/MainActivity;

    invoke-static {v2}, Lcom/streamtv/app/ui/MainActivity;->-$$Nest$fgetradioStations(Lcom/streamtv/app/ui/MainActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " radio stations"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MainActivity"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    iget-object v0, p0, Lcom/streamtv/app/ui/MainActivity$17;->this$0:Lcom/streamtv/app/ui/MainActivity;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v3}, Lcom/streamtv/app/ui/MainActivity;->-$$Nest$fputdemoStations(Lcom/streamtv/app/ui/MainActivity;Ljava/util/List;)V

    .line 388
    invoke-virtual {p1}, Lcom/streamtv/app/model/CategoriesResponse;->getCategories()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/streamtv/app/model/Category;

    .line 389
    const-string v3, "Demos"

    invoke-virtual {v0}, Lcom/streamtv/app/model/Category;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Lcom/streamtv/app/model/Category;->getStations()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 390
    iget-object v3, p0, Lcom/streamtv/app/ui/MainActivity$17;->this$0:Lcom/streamtv/app/ui/MainActivity;

    invoke-static {v3}, Lcom/streamtv/app/ui/MainActivity;->-$$Nest$fgetdemoStations(Lcom/streamtv/app/ui/MainActivity;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0}, Lcom/streamtv/app/model/Category;->getStations()Ljava/util/List;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 393
    :cond_4
    iget-object p1, p0, Lcom/streamtv/app/ui/MainActivity$17;->this$0:Lcom/streamtv/app/ui/MainActivity;

    invoke-static {p1}, Lcom/streamtv/app/ui/MainActivity;->-$$Nest$fgetdemoAdapter(Lcom/streamtv/app/ui/MainActivity;)Lcom/streamtv/app/adapter/StationAdapter;

    move-result-object p1

    iget-object v0, p0, Lcom/streamtv/app/ui/MainActivity$17;->this$0:Lcom/streamtv/app/ui/MainActivity;

    invoke-static {v0}, Lcom/streamtv/app/ui/MainActivity;->-$$Nest$fgetdemoStations(Lcom/streamtv/app/ui/MainActivity;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/streamtv/app/adapter/StationAdapter;->setStations(Ljava/util/List;)V

    .line 394
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/streamtv/app/ui/MainActivity$17;->this$0:Lcom/streamtv/app/ui/MainActivity;

    invoke-static {v0}, Lcom/streamtv/app/ui/MainActivity;->-$$Nest$fgetdemoStations(Lcom/streamtv/app/ui/MainActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " demo stations"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 3

    .line 399
    iget-object v0, p0, Lcom/streamtv/app/ui/MainActivity$17;->this$0:Lcom/streamtv/app/ui/MainActivity;

    invoke-static {v0}, Lcom/streamtv/app/ui/MainActivity;->-$$Nest$fgetprogressBar(Lcom/streamtv/app/ui/MainActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 400
    iget-object v0, p0, Lcom/streamtv/app/ui/MainActivity$17;->this$0:Lcom/streamtv/app/ui/MainActivity;

    invoke-static {v0}, Lcom/streamtv/app/ui/MainActivity;->-$$Nest$fgettvError(Lcom/streamtv/app/ui/MainActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 401
    iget-object v0, p0, Lcom/streamtv/app/ui/MainActivity$17;->this$0:Lcom/streamtv/app/ui/MainActivity;

    invoke-static {v0}, Lcom/streamtv/app/ui/MainActivity;->-$$Nest$fgettvError(Lcom/streamtv/app/ui/MainActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error de conexi\u00f3n: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 402
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error loading data: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MainActivity"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
