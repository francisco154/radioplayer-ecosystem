.class Lcom/streamtv/app/ui/LoginActivity$4;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/streamtv/app/ui/LoginActivity;->attemptLogin()V
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

    .line 100
    iput-object p1, p0, Lcom/streamtv/app/ui/LoginActivity$4;->this$0:Lcom/streamtv/app/ui/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/streamtv/app/ui/LoginActivity$4;->this$0:Lcom/streamtv/app/ui/LoginActivity;

    invoke-virtual {v0}, Lcom/streamtv/app/ui/LoginActivity;->m756lambda$attemptLogin$3$comstreamtvappuiLoginActivity()V

    return-void
.end method
