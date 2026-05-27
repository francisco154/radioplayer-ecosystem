.class Lcom/streamtv/app/ui/MainActivity$10;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/streamtv/app/ui/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/streamtv/app/ui/MainActivity;


# direct methods
.method constructor <init>(Lcom/streamtv/app/ui/MainActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 160
    iput-object p1, p0, Lcom/streamtv/app/ui/MainActivity$10;->this$0:Lcom/streamtv/app/ui/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/streamtv/app/ui/MainActivity$10;->this$0:Lcom/streamtv/app/ui/MainActivity;

    invoke-virtual {v0, p1, p2}, Lcom/streamtv/app/ui/MainActivity;->m778lambda$onCreate$6$comstreamtvappuiMainActivity(Landroid/view/View;Z)V

    return-void
.end method
