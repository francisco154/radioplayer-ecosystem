.class Lcom/streamtv/app/ui/LoginActivity$3;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


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

    .line 48
    iput-object p1, p0, Lcom/streamtv/app/ui/LoginActivity$3;->this$0:Lcom/streamtv/app/ui/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/streamtv/app/ui/LoginActivity$3;->this$0:Lcom/streamtv/app/ui/LoginActivity;

    invoke-virtual {v0, p1, p2}, Lcom/streamtv/app/ui/LoginActivity;->m759lambda$onCreate$2$comstreamtvappuiLoginActivity(Landroid/view/View;Z)V

    return-void
.end method
