.class public final synthetic Lcom/streamtv/app/adapter/StationAdapter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/streamtv/app/adapter/StationAdapter$ViewHolder;

.field public final synthetic f$1:Lcom/streamtv/app/model/Station;


# direct methods
.method public synthetic constructor <init>(Lcom/streamtv/app/adapter/StationAdapter$ViewHolder;Lcom/streamtv/app/model/Station;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/streamtv/app/adapter/StationAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/streamtv/app/adapter/StationAdapter$ViewHolder;

    iput-object p2, p0, Lcom/streamtv/app/adapter/StationAdapter$$ExternalSyntheticLambda0;->f$1:Lcom/streamtv/app/model/Station;

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/streamtv/app/adapter/StationAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/streamtv/app/adapter/StationAdapter$ViewHolder;

    iget-object v1, p0, Lcom/streamtv/app/adapter/StationAdapter$$ExternalSyntheticLambda0;->f$1:Lcom/streamtv/app/model/Station;

    invoke-static {v0, v1, p1, p2}, Lcom/streamtv/app/adapter/StationAdapter;->lambda$onBindViewHolder$0(Lcom/streamtv/app/adapter/StationAdapter$ViewHolder;Lcom/streamtv/app/model/Station;Landroid/view/View;Z)V

    return-void
.end method
