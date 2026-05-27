.class Lcom/streamtv/app/ui/PlayerActivity$10;
.super Ljava/lang/Object;
.source "PlayerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/streamtv/app/ui/PlayerActivity;->onLoadingChanged(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/streamtv/app/ui/PlayerActivity;

.field final synthetic val$z:Z


# direct methods
.method constructor <init>(Lcom/streamtv/app/ui/PlayerActivity;Z)V
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

    .line 368
    iput-object p1, p0, Lcom/streamtv/app/ui/PlayerActivity$10;->this$0:Lcom/streamtv/app/ui/PlayerActivity;

    iput-boolean p2, p0, Lcom/streamtv/app/ui/PlayerActivity$10;->val$z:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 371
    iget-object v0, p0, Lcom/streamtv/app/ui/PlayerActivity$10;->this$0:Lcom/streamtv/app/ui/PlayerActivity;

    iget-boolean v1, p0, Lcom/streamtv/app/ui/PlayerActivity$10;->val$z:Z

    invoke-virtual {v0, v1}, Lcom/streamtv/app/ui/PlayerActivity;->m793lambda$onLoadingChanged$8$comstreamtvappuiPlayerActivity(Z)V

    return-void
.end method
