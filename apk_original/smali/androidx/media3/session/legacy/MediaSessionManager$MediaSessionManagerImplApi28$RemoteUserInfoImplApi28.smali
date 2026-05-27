.class final Landroidx/media3/session/legacy/MediaSessionManager$MediaSessionManagerImplApi28$RemoteUserInfoImplApi28;
.super Landroidx/media3/session/legacy/MediaSessionManager$MediaSessionManagerImplBase$RemoteUserInfoImplBase;
.source "MediaSessionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/session/legacy/MediaSessionManager$MediaSessionManagerImplApi28;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RemoteUserInfoImplApi28"
.end annotation


# instance fields
.field final mObject:Landroid/media/session/MediaSessionManager$RemoteUserInfo;


# direct methods
.method constructor <init>(Landroid/media/session/MediaSessionManager$RemoteUserInfo;)V
    .locals 3

    .line 451
    invoke-static {p1}, Landroidx/media3/common/util/Util$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/session/MediaSessionManager$RemoteUserInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Landroidx/media3/common/util/Util$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/session/MediaSessionManager$RemoteUserInfo;)I

    move-result v1

    invoke-static {p1}, Landroidx/media3/common/util/Util$$ExternalSyntheticApiModelOutline0;->m$1(Landroid/media/session/MediaSessionManager$RemoteUserInfo;)I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Landroidx/media3/session/legacy/MediaSessionManager$MediaSessionManagerImplBase$RemoteUserInfoImplBase;-><init>(Ljava/lang/String;II)V

    .line 452
    iput-object p1, p0, Landroidx/media3/session/legacy/MediaSessionManager$MediaSessionManagerImplApi28$RemoteUserInfoImplApi28;->mObject:Landroid/media/session/MediaSessionManager$RemoteUserInfo;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 444
    invoke-direct {p0, p1, p2, p3}, Landroidx/media3/session/legacy/MediaSessionManager$MediaSessionManagerImplBase$RemoteUserInfoImplBase;-><init>(Ljava/lang/String;II)V

    .line 445
    invoke-static {p1, p2, p3}, Landroidx/media3/common/util/Util$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/String;II)Landroid/media/session/MediaSessionManager$RemoteUserInfo;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/session/legacy/MediaSessionManager$MediaSessionManagerImplApi28$RemoteUserInfoImplApi28;->mObject:Landroid/media/session/MediaSessionManager$RemoteUserInfo;

    return-void
.end method

.method static getPackageName(Landroid/media/session/MediaSessionManager$RemoteUserInfo;)Ljava/lang/String;
    .locals 0

    .line 457
    invoke-static {p0}, Landroidx/media3/common/util/Util$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/session/MediaSessionManager$RemoteUserInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
