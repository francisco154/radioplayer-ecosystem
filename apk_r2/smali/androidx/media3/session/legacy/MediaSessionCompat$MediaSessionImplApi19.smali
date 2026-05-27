.class Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi19;
.super Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi18;
.source "MediaSessionCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/session/legacy/MediaSessionCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MediaSessionImplApi19"
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;Landroid/app/PendingIntent;Landroidx/versionedparcelable/VersionedParcelable;Landroid/os/Bundle;)V
    .locals 0

    .line 3777
    invoke-direct/range {p0 .. p6}, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi18;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;Landroid/app/PendingIntent;Landroidx/versionedparcelable/VersionedParcelable;Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method buildRccMetadata(Landroid/os/Bundle;)Landroid/media/RemoteControlClient$MetadataEditor;
    .locals 8

    .line 3813
    invoke-super {p0, p1}, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi18;->buildRccMetadata(Landroid/os/Bundle;)Landroid/media/RemoteControlClient$MetadataEditor;

    move-result-object v0

    .line 3814
    iget-object v1, p0, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi19;->mState:Landroidx/media3/session/legacy/PlaybackStateCompat;

    const-wide/16 v2, 0x0

    if-nez v1, :cond_0

    move-wide v4, v2

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi19;->mState:Landroidx/media3/session/legacy/PlaybackStateCompat;

    invoke-virtual {v1}, Landroidx/media3/session/legacy/PlaybackStateCompat;->getActions()J

    move-result-wide v4

    :goto_0
    const-wide/16 v6, 0x80

    and-long/2addr v4, v6

    const v1, 0x10000001

    cmp-long v6, v4, v2

    if-eqz v6, :cond_1

    .line 3816
    invoke-virtual {v0, v1}, Landroid/media/RemoteControlClient$MetadataEditor;->addEditableKey(I)V

    :cond_1
    if-nez p1, :cond_2

    return-object v0

    .line 3822
    :cond_2
    const-string v2, "android.media.metadata.YEAR"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v3, 0x8

    .line 3825
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 3823
    invoke-virtual {v0, v3, v4, v5}, Landroid/media/RemoteControlClient$MetadataEditor;->putLong(IJ)Landroid/media/RemoteControlClient$MetadataEditor;

    .line 3827
    :cond_3
    const-string v2, "android.media.metadata.RATING"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 3833
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    sget-object v3, Landroidx/media3/session/legacy/RatingCompat;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3832
    invoke-static {v2, v3}, Landroidx/media3/session/legacy/LegacyParcelableUtil;->convert(Landroid/os/Parcelable;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    const/16 v3, 0x65

    .line 3830
    invoke-virtual {v0, v3, v2}, Landroid/media/MediaMetadataEditor;->putObject(ILjava/lang/Object;)Landroid/media/MediaMetadataEditor;

    .line 3836
    :cond_4
    const-string v2, "android.media.metadata.USER_RATING"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 3842
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    sget-object v2, Landroidx/media3/session/legacy/RatingCompat;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3841
    invoke-static {p1, v2}, Landroidx/media3/session/legacy/LegacyParcelableUtil;->convert(Landroid/os/Parcelable;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    .line 3839
    invoke-virtual {v0, v1, p1}, Landroid/media/MediaMetadataEditor;->putObject(ILjava/lang/Object;)Landroid/media/MediaMetadataEditor;

    :cond_5
    return-object v0
.end method

.method getRccTransportControlFlagsFromActions(J)I
    .locals 4

    .line 3803
    invoke-super {p0, p1, p2}, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi18;->getRccTransportControlFlagsFromActions(J)I

    move-result v0

    const-wide/16 v1, 0x80

    and-long/2addr p1, v1

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-eqz v3, :cond_0

    or-int/lit16 v0, v0, 0x200

    :cond_0
    return v0
.end method

.method public setCallback(Landroidx/media3/session/legacy/MediaSessionCompat$Callback;Landroid/os/Handler;)V
    .locals 0

    .line 3783
    invoke-super {p0, p1, p2}, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi18;->setCallback(Landroidx/media3/session/legacy/MediaSessionCompat$Callback;Landroid/os/Handler;)V

    if-nez p1, :cond_0

    .line 3785
    iget-object p1, p0, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi19;->mRcc:Landroid/media/RemoteControlClient;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/media/RemoteControlClient;->setMetadataUpdateListener(Landroid/media/RemoteControlClient$OnMetadataUpdateListener;)V

    goto :goto_0

    .line 3787
    :cond_0
    new-instance p1, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi19$1;

    invoke-direct {p1, p0}, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi19$1;-><init>(Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi19;)V

    .line 3797
    iget-object p2, p0, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi19;->mRcc:Landroid/media/RemoteControlClient;

    invoke-virtual {p2, p1}, Landroid/media/RemoteControlClient;->setMetadataUpdateListener(Landroid/media/RemoteControlClient$OnMetadataUpdateListener;)V

    :goto_0
    return-void
.end method
