.class Lcom/streamtv/app/ui/LoginActivity$1;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/streamtv/app/ui/LoginActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/streamtv/app/ui/LoginActivity;


# direct methods
.method constructor <init>(Lcom/streamtv/app/ui/LoginActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 36
    iput-object p1, p0, Lcom/streamtv/app/ui/LoginActivity$1;->this$0:Lcom/streamtv/app/ui/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/streamtv/app/ui/LoginActivity$1;->this$0:Lcom/streamtv/app/ui/LoginActivity;

    invoke-virtual {v0, p1, p2, p3}, Lcom/streamtv/app/ui/LoginActivity;->m757lambda$onCreate$0$comstreamtvappuiLoginActivity(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
