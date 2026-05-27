.class Lcom/streamtv/app/ui/SplashActivity$1;
.super Ljava/lang/Object;
.source "SplashActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/streamtv/app/ui/SplashActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/streamtv/app/ui/SplashActivity;


# direct methods
.method constructor <init>(Lcom/streamtv/app/ui/SplashActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 17
    iput-object p1, p0, Lcom/streamtv/app/ui/SplashActivity$1;->this$0:Lcom/streamtv/app/ui/SplashActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/streamtv/app/ui/SplashActivity$1;->this$0:Lcom/streamtv/app/ui/SplashActivity;

    invoke-virtual {v0}, Lcom/streamtv/app/ui/SplashActivity;->m807lambda$onCreate$0$comstreamtvappuiSplashActivity()V

    return-void
.end method
