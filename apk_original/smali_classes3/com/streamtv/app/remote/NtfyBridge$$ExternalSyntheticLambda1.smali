.class public final synthetic Lcom/streamtv/app/remote/NtfyBridge$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/streamtv/app/remote/NtfyBridge;


# direct methods
.method public synthetic constructor <init>(Lcom/streamtv/app/remote/NtfyBridge;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/streamtv/app/remote/NtfyBridge$$ExternalSyntheticLambda1;->f$0:Lcom/streamtv/app/remote/NtfyBridge;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/streamtv/app/remote/NtfyBridge$$ExternalSyntheticLambda1;->f$0:Lcom/streamtv/app/remote/NtfyBridge;

    invoke-virtual {v0}, Lcom/streamtv/app/remote/NtfyBridge;->lambda$startSubscription$0$com-streamtv-app-remote-NtfyBridge()V

    return-void
.end method
