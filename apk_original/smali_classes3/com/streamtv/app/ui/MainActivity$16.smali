.class Lcom/streamtv/app/ui/MainActivity$16;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/streamtv/app/ui/MainActivity;->setupTabFocus(Landroid/widget/TextView;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/streamtv/app/ui/MainActivity;

.field final synthetic val$i:I

.field final synthetic val$textView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/streamtv/app/ui/MainActivity;Landroid/widget/TextView;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 337
    iput-object p1, p0, Lcom/streamtv/app/ui/MainActivity$16;->this$0:Lcom/streamtv/app/ui/MainActivity;

    iput-object p2, p0, Lcom/streamtv/app/ui/MainActivity$16;->val$textView:Landroid/widget/TextView;

    iput p3, p0, Lcom/streamtv/app/ui/MainActivity$16;->val$i:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 3

    .line 340
    iget-object v0, p0, Lcom/streamtv/app/ui/MainActivity$16;->this$0:Lcom/streamtv/app/ui/MainActivity;

    iget-object v1, p0, Lcom/streamtv/app/ui/MainActivity$16;->val$textView:Landroid/widget/TextView;

    iget v2, p0, Lcom/streamtv/app/ui/MainActivity$16;->val$i:I

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/streamtv/app/ui/MainActivity;->m784lambda$setupTabFocus$11$comstreamtvappuiMainActivity(Landroid/widget/TextView;ILandroid/view/View;Z)V

    return-void
.end method
