.class public final synthetic Lcom/streamtv/app/remote/HttpApiServer$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/streamtv/app/remote/HttpApiServer;


# direct methods
.method public synthetic constructor <init>(Lcom/streamtv/app/remote/HttpApiServer;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/streamtv/app/remote/HttpApiServer$$ExternalSyntheticLambda0;->f$0:Lcom/streamtv/app/remote/HttpApiServer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/streamtv/app/remote/HttpApiServer$$ExternalSyntheticLambda0;->f$0:Lcom/streamtv/app/remote/HttpApiServer;

    invoke-virtual {v0}, Lcom/streamtv/app/remote/HttpApiServer;->lambda$start$0$com-streamtv-app-remote-HttpApiServer()V

    return-void
.end method
