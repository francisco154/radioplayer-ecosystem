.class Lcom/streamtv/app/ui/PlayerActivity$4;
.super Ljava/lang/Object;
.source "PlayerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/streamtv/app/ui/PlayerActivity;->onCreate(Landroid/os/Bundle;)V
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

    .line 98
    iput-object p1, p0, Lcom/streamtv/app/ui/PlayerActivity$4;->this$0:Lcom/streamtv/app/ui/PlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/streamtv/app/ui/PlayerActivity$4;->this$0:Lcom/streamtv/app/ui/PlayerActivity;

    invoke-virtual {v0, p1}, Lcom/streamtv/app/ui/PlayerActivity;->m790lambda$onCreate$3$comstreamtvappuiPlayerActivity(Landroid/view/View;)V

    return-void
.end method
