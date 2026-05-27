.class public Lcom/streamtv/app/model/CategoriesResponse$Meta;
.super Ljava/lang/Object;
.source "CategoriesResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/streamtv/app/model/CategoriesResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Meta"
.end annotation


# instance fields
.field private exportedAt:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "exportedAt"
    .end annotation
.end field

.field private source:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "source"
    .end annotation
.end field

.field private totalDemos:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "totalDemos"
    .end annotation
.end field

.field private totalEscena:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "totalEscena"
    .end annotation
.end field

.field private totalRadios:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "totalRadios"
    .end annotation
.end field

.field private version:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "version"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getExportedAt()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/streamtv/app/model/CategoriesResponse$Meta;->exportedAt:Ljava/lang/String;

    return-object v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/streamtv/app/model/CategoriesResponse$Meta;->source:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalDemos()I
    .locals 1

    .line 68
    iget v0, p0, Lcom/streamtv/app/model/CategoriesResponse$Meta;->totalDemos:I

    return v0
.end method

.method public getTotalEscena()I
    .locals 1

    .line 72
    iget v0, p0, Lcom/streamtv/app/model/CategoriesResponse$Meta;->totalEscena:I

    return v0
.end method

.method public getTotalRadios()I
    .locals 1

    .line 64
    iget v0, p0, Lcom/streamtv/app/model/CategoriesResponse$Meta;->totalRadios:I

    return v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/streamtv/app/model/CategoriesResponse$Meta;->version:Ljava/lang/String;

    return-object v0
.end method
