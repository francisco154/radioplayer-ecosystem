.class Lcom/streamtv/app/ui/SettingsActivity$7;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/streamtv/app/ui/SettingsActivity;->setupCircularButton(Landroid/widget/ImageButton;)V
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

    .line 225
    iput-object p1, p0, Lcom/streamtv/app/ui/SettingsActivity$7;->this$0:Lcom/streamtv/app/ui/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 0

    .line 228
    invoke-static {p1, p2}, Lcom/streamtv/app/ui/SettingsActivity;->lambda$setupCircularButton$5(Landroid/view/View;Z)V

    return-void
.end method
