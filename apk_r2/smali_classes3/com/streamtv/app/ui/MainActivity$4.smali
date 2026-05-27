.class Lcom/streamtv/app/ui/MainActivity$4;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/streamtv/app/adapter/StationAdapter$OnStationClickListener;


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

    .line 119
    iput-object p1, p0, Lcom/streamtv/app/ui/MainActivity$4;->this$0:Lcom/streamtv/app/ui/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onStationClick(Lcom/streamtv/app/model/Station;)V
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/streamtv/app/ui/MainActivity$4;->this$0:Lcom/streamtv/app/ui/MainActivity;

    invoke-virtual {v0, p1}, Lcom/streamtv/app/ui/MainActivity;->onStationClicked(Lcom/streamtv/app/model/Station;)V

    return-void
.end method
