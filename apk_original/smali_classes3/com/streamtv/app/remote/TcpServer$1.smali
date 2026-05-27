.class Lcom/streamtv/app/remote/TcpServer$1;
.super Ljava/lang/Object;
.source "TcpServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/streamtv/app/remote/TcpServer;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/streamtv/app/remote/TcpServer;


# direct methods
.method constructor <init>(Lcom/streamtv/app/remote/TcpServer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 58
    iput-object p1, p0, Lcom/streamtv/app/remote/TcpServer$1;->this$0:Lcom/streamtv/app/remote/TcpServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/streamtv/app/remote/TcpServer$1;->this$0:Lcom/streamtv/app/remote/TcpServer;

    invoke-virtual {v0}, Lcom/streamtv/app/remote/TcpServer;->m755lambda$start$0$comstreamtvappremoteTcpServer()V

    return-void
.end method
