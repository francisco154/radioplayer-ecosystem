.class Lcom/streamtv/app/ui/PlayerActivity$7;
.super Ljava/lang/Object;
.source "PlayerActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


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

.field final synthetic val$f:F


# direct methods
.method constructor <init>(Lcom/streamtv/app/ui/PlayerActivity;F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 159
    iput-object p1, p0, Lcom/streamtv/app/ui/PlayerActivity$7;->this$0:Lcom/streamtv/app/ui/PlayerActivity;

    iput p2, p0, Lcom/streamtv/app/ui/PlayerActivity$7;->val$f:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 1

    .line 162
    iget v0, p0, Lcom/streamtv/app/ui/PlayerActivity$7;->val$f:F

    invoke-static {v0, p1, p2}, Lcom/streamtv/app/ui/PlayerActivity;->lambda$setupCircularButton$5(FLandroid/view/View;Z)V

    return-void
.end method
