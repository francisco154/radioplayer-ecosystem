.class Lcom/streamtv/app/ui/SettingsActivity$3;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/streamtv/app/ui/SettingsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/streamtv/app/ui/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/streamtv/app/ui/SettingsActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 71
    iput-object p1, p0, Lcom/streamtv/app/ui/SettingsActivity$3;->this$0:Lcom/streamtv/app/ui/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/streamtv/app/ui/SettingsActivity$3;->this$0:Lcom/streamtv/app/ui/SettingsActivity;

    invoke-virtual {v0, p1, p2}, Lcom/streamtv/app/ui/SettingsActivity;->m801lambda$onCreate$2$comstreamtvappuiSettingsActivity(Landroid/widget/CompoundButton;Z)V

    return-void
.end method
