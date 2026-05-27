.class Lcom/streamtv/app/ui/MainActivity$AnonymousClass1$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/streamtv/app/ui/MainActivity$AnonymousClass1;->onClientDisconnected()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/streamtv/app/ui/MainActivity$AnonymousClass1;


# direct methods
.method constructor <init>(Lcom/streamtv/app/ui/MainActivity$AnonymousClass1;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 289
    iput-object p1, p0, Lcom/streamtv/app/ui/MainActivity$AnonymousClass1$2;->this$1:Lcom/streamtv/app/ui/MainActivity$AnonymousClass1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 292
    iget-object v0, p0, Lcom/streamtv/app/ui/MainActivity$AnonymousClass1$2;->this$1:Lcom/streamtv/app/ui/MainActivity$AnonymousClass1;

    invoke-virtual {v0}, Lcom/streamtv/app/ui/MainActivity$AnonymousClass1;->m786lambda$onClientDisconnected$1$comstreamtvappuiMainActivity$1()V

    return-void
.end method
