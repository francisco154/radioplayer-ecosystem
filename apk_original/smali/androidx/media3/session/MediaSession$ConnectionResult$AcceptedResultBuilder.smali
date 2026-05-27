.class public Landroidx/media3/session/MediaSession$ConnectionResult$AcceptedResultBuilder;
.super Ljava/lang/Object;
.source "MediaSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/session/MediaSession$ConnectionResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AcceptedResultBuilder"
.end annotation


# instance fields
.field private availablePlayerCommands:Landroidx/media3/common/Player$Commands;

.field private availableSessionCommands:Landroidx/media3/session/SessionCommands;

.field private customLayout:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/session/CommandButton;",
            ">;"
        }
    .end annotation
.end field

.field private mediaButtonPreferences:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/session/CommandButton;",
            ">;"
        }
    .end annotation
.end field

.field private sessionActivity:Landroid/app/PendingIntent;

.field private sessionExtras:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroidx/media3/session/MediaSession;)V
    .locals 1

    .line 1851
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1840
    sget-object v0, Landroidx/media3/session/MediaSession$ConnectionResult;->DEFAULT_PLAYER_COMMANDS:Landroidx/media3/common/Player$Commands;

    iput-object v0, p0, Landroidx/media3/session/MediaSession$ConnectionResult$AcceptedResultBuilder;->availablePlayerCommands:Landroidx/media3/common/Player$Commands;

    .line 1853
    instance-of p1, p1, Landroidx/media3/session/MediaLibraryService$MediaLibrarySession;

    if-eqz p1, :cond_0

    .line 1854
    sget-object p1, Landroidx/media3/session/MediaSession$ConnectionResult;->DEFAULT_SESSION_AND_LIBRARY_COMMANDS:Landroidx/media3/session/SessionCommands;

    goto :goto_0

    .line 1855
    :cond_0
    sget-object p1, Landroidx/media3/session/MediaSession$ConnectionResult;->DEFAULT_SESSION_COMMANDS:Landroidx/media3/session/SessionCommands;

    :goto_0
    iput-object p1, p0, Landroidx/media3/session/MediaSession$ConnectionResult$AcceptedResultBuilder;->availableSessionCommands:Landroidx/media3/session/SessionCommands;

    return-void
.end method


# virtual methods
.method public build()Landroidx/media3/session/MediaSession$ConnectionResult;
    .locals 10

    .line 1959
    new-instance v9, Landroidx/media3/session/MediaSession$ConnectionResult;

    iget-object v2, p0, Landroidx/media3/session/MediaSession$ConnectionResult$AcceptedResultBuilder;->availableSessionCommands:Landroidx/media3/session/SessionCommands;

    iget-object v3, p0, Landroidx/media3/session/MediaSession$ConnectionResult$AcceptedResultBuilder;->availablePlayerCommands:Landroidx/media3/common/Player$Commands;

    iget-object v4, p0, Landroidx/media3/session/MediaSession$ConnectionResult$AcceptedResultBuilder;->customLayout:Lcom/google/common/collect/ImmutableList;

    iget-object v5, p0, Landroidx/media3/session/MediaSession$ConnectionResult$AcceptedResultBuilder;->mediaButtonPreferences:Lcom/google/common/collect/ImmutableList;

    iget-object v6, p0, Landroidx/media3/session/MediaSession$ConnectionResult$AcceptedResultBuilder;->sessionExtras:Landroid/os/Bundle;

    iget-object v7, p0, Landroidx/media3/session/MediaSession$ConnectionResult$AcceptedResultBuilder;->sessionActivity:Landroid/app/PendingIntent;

    const/4 v8, 0x0

    const/4 v1, 0x1

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Landroidx/media3/session/MediaSession$ConnectionResult;-><init>(ZLandroidx/media3/session/SessionCommands;Landroidx/media3/common/Player$Commands;Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;Landroid/os/Bundle;Landroid/app/PendingIntent;Landroidx/media3/session/MediaSession$1;)V

    return-object v9
.end method

.method public setAvailablePlayerCommands(Landroidx/media3/common/Player$Commands;)Landroidx/media3/session/MediaSession$ConnectionResult$AcceptedResultBuilder;
    .locals 0

    .line 1886
    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/common/Player$Commands;

    iput-object p1, p0, Landroidx/media3/session/MediaSession$ConnectionResult$AcceptedResultBuilder;->availablePlayerCommands:Landroidx/media3/common/Player$Commands;

    return-object p0
.end method

.method public setAvailableSessionCommands(Landroidx/media3/session/SessionCommands;)Landroidx/media3/session/MediaSession$ConnectionResult$AcceptedResultBuilder;
    .locals 0

    .line 1869
    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/session/SessionCommands;

    iput-object p1, p0, Landroidx/media3/session/MediaSession$ConnectionResult$AcceptedResultBuilder;->availableSessionCommands:Landroidx/media3/session/SessionCommands;

    return-object p0
.end method

.method public setCustomLayout(Ljava/util/List;)Landroidx/media3/session/MediaSession$ConnectionResult$AcceptedResultBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/session/CommandButton;",
            ">;)",
            "Landroidx/media3/session/MediaSession$ConnectionResult$AcceptedResultBuilder;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 1908
    :cond_0
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Landroidx/media3/session/MediaSession$ConnectionResult$AcceptedResultBuilder;->customLayout:Lcom/google/common/collect/ImmutableList;

    return-object p0
.end method

.method public setMediaButtonPreferences(Ljava/util/List;)Landroidx/media3/session/MediaSession$ConnectionResult$AcceptedResultBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/session/CommandButton;",
            ">;)",
            "Landroidx/media3/session/MediaSession$ConnectionResult$AcceptedResultBuilder;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 1929
    :cond_0
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Landroidx/media3/session/MediaSession$ConnectionResult$AcceptedResultBuilder;->mediaButtonPreferences:Lcom/google/common/collect/ImmutableList;

    return-object p0
.end method

.method public setSessionActivity(Landroid/app/PendingIntent;)Landroidx/media3/session/MediaSession$ConnectionResult$AcceptedResultBuilder;
    .locals 0

    .line 1953
    iput-object p1, p0, Landroidx/media3/session/MediaSession$ConnectionResult$AcceptedResultBuilder;->sessionActivity:Landroid/app/PendingIntent;

    return-object p0
.end method

.method public setSessionExtras(Landroid/os/Bundle;)Landroidx/media3/session/MediaSession$ConnectionResult$AcceptedResultBuilder;
    .locals 0

    .line 1941
    iput-object p1, p0, Landroidx/media3/session/MediaSession$ConnectionResult$AcceptedResultBuilder;->sessionExtras:Landroid/os/Bundle;

    return-object p0
.end method
