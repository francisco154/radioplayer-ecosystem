.class Lcom/streamtv/app/ui/MainActivity$18;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/streamtv/app/ui/MainActivity;->onStateChanged(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/streamtv/app/ui/MainActivity;

.field final synthetic val$z:Z


# direct methods
.method constructor <init>(Lcom/streamtv/app/ui/MainActivity;Z)V
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

    .line 539
    iput-object p1, p0, Lcom/streamtv/app/ui/MainActivity$18;->this$0:Lcom/streamtv/app/ui/MainActivity;

    iput-boolean p2, p0, Lcom/streamtv/app/ui/MainActivity$18;->val$z:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 542
    iget-object v0, p0, Lcom/streamtv/app/ui/MainActivity$18;->this$0:Lcom/streamtv/app/ui/MainActivity;

    iget-boolean v1, p0, Lcom/streamtv/app/ui/MainActivity$18;->val$z:Z

    invoke-virtual {v0, v1}, Lcom/streamtv/app/ui/MainActivity;->m783lambda$onStateChanged$12$comstreamtvappuiMainActivity(Z)V

    return-void
.end method
