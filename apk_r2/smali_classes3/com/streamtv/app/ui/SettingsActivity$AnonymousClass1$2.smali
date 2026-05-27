.class Lcom/streamtv/app/ui/SettingsActivity$AnonymousClass1$2;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/streamtv/app/ui/SettingsActivity$AnonymousClass1;->onClientConnected(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/streamtv/app/ui/SettingsActivity$AnonymousClass1;

.field final synthetic val$str:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/streamtv/app/ui/SettingsActivity$AnonymousClass1;Ljava/lang/String;)V
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

    .line 168
    iput-object p1, p0, Lcom/streamtv/app/ui/SettingsActivity$AnonymousClass1$2;->this$1:Lcom/streamtv/app/ui/SettingsActivity$AnonymousClass1;

    iput-object p2, p0, Lcom/streamtv/app/ui/SettingsActivity$AnonymousClass1$2;->val$str:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 171
    iget-object v0, p0, Lcom/streamtv/app/ui/SettingsActivity$AnonymousClass1$2;->this$1:Lcom/streamtv/app/ui/SettingsActivity$AnonymousClass1;

    iget-object v1, p0, Lcom/streamtv/app/ui/SettingsActivity$AnonymousClass1$2;->val$str:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/streamtv/app/ui/SettingsActivity$AnonymousClass1;->m804xc2893ba2(Ljava/lang/String;)V

    return-void
.end method
