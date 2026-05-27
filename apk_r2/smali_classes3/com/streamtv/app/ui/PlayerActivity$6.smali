.class Lcom/streamtv/app/ui/PlayerActivity$6;
.super Landroid/view/ViewOutlineProvider;
.source "PlayerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/streamtv/app/ui/PlayerActivity;->setupCircularButton(Landroid/widget/ImageButton;F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/streamtv/app/ui/PlayerActivity;


# direct methods
.method constructor <init>(Lcom/streamtv/app/ui/PlayerActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 147
    iput-object p1, p0, Lcom/streamtv/app/ui/PlayerActivity$6;->this$0:Lcom/streamtv/app/ui/PlayerActivity;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 1

    .line 150
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 151
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    if-lez v0, :cond_1

    if-gtz p1, :cond_0

    goto :goto_0

    .line 155
    :cond_0
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    mul-int/lit8 p1, p1, 0x2

    const/4 v0, 0x0

    .line 156
    invoke-virtual {p2, v0, v0, p1, p1}, Landroid/graphics/Outline;->setOval(IIII)V

    :cond_1
    :goto_0
    return-void
.end method
