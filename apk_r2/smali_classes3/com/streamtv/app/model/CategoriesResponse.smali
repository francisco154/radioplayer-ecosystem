.class public Lcom/streamtv/app/model/CategoriesResponse;
.super Ljava/lang/Object;
.source "CategoriesResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/streamtv/app/model/CategoriesResponse$Meta;
    }
.end annotation


# instance fields
.field private categories:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "categories"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/streamtv/app/model/Category;",
            ">;"
        }
    .end annotation
.end field

.field private meta:Lcom/streamtv/app/model/CategoriesResponse$Meta;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "meta"
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
.method public getCategories()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/streamtv/app/model/Category;",
            ">;"
        }
    .end annotation

    .line 16
    iget-object v0, p0, Lcom/streamtv/app/model/CategoriesResponse;->categories:Ljava/util/List;

    return-object v0
.end method

.method public getMeta()Lcom/streamtv/app/model/CategoriesResponse$Meta;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/streamtv/app/model/CategoriesResponse;->meta:Lcom/streamtv/app/model/CategoriesResponse$Meta;

    return-object v0
.end method

.method public setCategories(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/streamtv/app/model/Category;",
            ">;)V"
        }
    .end annotation

    .line 20
    iput-object p1, p0, Lcom/streamtv/app/model/CategoriesResponse;->categories:Ljava/util/List;

    return-void
.end method

.method public setMeta(Lcom/streamtv/app/model/CategoriesResponse$Meta;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/streamtv/app/model/CategoriesResponse;->meta:Lcom/streamtv/app/model/CategoriesResponse$Meta;

    return-void
.end method
