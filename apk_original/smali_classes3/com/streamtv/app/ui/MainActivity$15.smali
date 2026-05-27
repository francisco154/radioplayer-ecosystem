.class Lcom/streamtv/app/ui/MainActivity$15;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/streamtv/app/ui/MainActivity;->setupCircularBarButton(Landroid/widget/ImageButton;)V
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

    .line 322
    iput-object p1, p0, Lcom/streamtv/app/ui/MainActivity$15;->this$0:Lcom/streamtv/app/ui/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 0

    .line 325
    invoke-static {p1, p2}, Lcom/streamtv/app/ui/MainActivity;->lambda$setupCircularBarButton$10(Landroid/view/View;Z)V

    return-void
.end method
