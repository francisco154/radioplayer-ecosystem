.class public final Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;
.super Ljava/lang/Object;
.source "HlsPlaylistParser.java"

# interfaces
.implements Landroidx/media3/exoplayer/upstream/ParsingLoadable$Parser;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$LineIterator;,
        Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$DeltaUpdateException;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/media3/exoplayer/upstream/ParsingLoadable$Parser<",
        "Landroidx/media3/exoplayer/hls/playlist/HlsPlaylist;",
        ">;"
    }
.end annotation


# static fields
.field private static final ATTR_CLOSED_CAPTIONS_NONE:Ljava/lang/String; = "CLOSED-CAPTIONS=NONE"

.field private static final BOOLEAN_FALSE:Ljava/lang/String; = "NO"

.field private static final BOOLEAN_TRUE:Ljava/lang/String; = "YES"

.field private static final DATERANGE_CLASS_INTERSTITIALS:Ljava/lang/String; = "com.apple.hls.interstitial"

.field private static final KEYFORMAT_IDENTITY:Ljava/lang/String; = "identity"

.field private static final KEYFORMAT_PLAYREADY:Ljava/lang/String; = "com.microsoft.playready"

.field private static final KEYFORMAT_WIDEVINE_PSSH_BINARY:Ljava/lang/String; = "urn:uuid:edef8ba9-79d6-4ace-a3c8-27dcd51d21ed"

.field private static final KEYFORMAT_WIDEVINE_PSSH_JSON:Ljava/lang/String; = "com.widevine"

.field private static final LOG_TAG:Ljava/lang/String; = "HlsPlaylistParser"

.field private static final METHOD_AES_128:Ljava/lang/String; = "AES-128"

.field private static final METHOD_NONE:Ljava/lang/String; = "NONE"

.field private static final METHOD_SAMPLE_AES:Ljava/lang/String; = "SAMPLE-AES"

.field private static final METHOD_SAMPLE_AES_CENC:Ljava/lang/String; = "SAMPLE-AES-CENC"

.field private static final METHOD_SAMPLE_AES_CTR:Ljava/lang/String; = "SAMPLE-AES-CTR"

.field private static final PLAYLIST_HEADER:Ljava/lang/String; = "#EXTM3U"

.field private static final REGEX_ASSET_LIST_URI:Ljava/util/regex/Pattern;

.field private static final REGEX_ASSET_URI:Ljava/util/regex/Pattern;

.field private static final REGEX_ATTR_BYTERANGE:Ljava/util/regex/Pattern;

.field private static final REGEX_ATTR_DURATION:Ljava/util/regex/Pattern;

.field private static final REGEX_ATTR_DURATION_PREFIXED:Ljava/util/regex/Pattern;

.field private static final REGEX_AUDIO:Ljava/util/regex/Pattern;

.field private static final REGEX_AUTOSELECT:Ljava/util/regex/Pattern;

.field private static final REGEX_AVERAGE_BANDWIDTH:Ljava/util/regex/Pattern;

.field private static final REGEX_BANDWIDTH:Ljava/util/regex/Pattern;

.field private static final REGEX_BYTERANGE:Ljava/util/regex/Pattern;

.field private static final REGEX_BYTERANGE_LENGTH:Ljava/util/regex/Pattern;

.field private static final REGEX_BYTERANGE_START:Ljava/util/regex/Pattern;

.field private static final REGEX_CAN_BLOCK_RELOAD:Ljava/util/regex/Pattern;

.field private static final REGEX_CAN_SKIP_DATE_RANGES:Ljava/util/regex/Pattern;

.field private static final REGEX_CAN_SKIP_UNTIL:Ljava/util/regex/Pattern;

.field private static final REGEX_CHANNELS:Ljava/util/regex/Pattern;

.field private static final REGEX_CHARACTERISTICS:Ljava/util/regex/Pattern;

.field private static final REGEX_CLASS:Ljava/util/regex/Pattern;

.field private static final REGEX_CLIENT_DEFINED_ATTRIBUTE_PREFIX:Ljava/util/regex/Pattern;

.field private static final REGEX_CLOSED_CAPTIONS:Ljava/util/regex/Pattern;

.field private static final REGEX_CODECS:Ljava/util/regex/Pattern;

.field private static final REGEX_CUE:Ljava/util/regex/Pattern;

.field private static final REGEX_DEFAULT:Ljava/util/regex/Pattern;

.field private static final REGEX_END_DATE:Ljava/util/regex/Pattern;

.field private static final REGEX_END_ON_NEXT:Ljava/util/regex/Pattern;

.field private static final REGEX_FORCED:Ljava/util/regex/Pattern;

.field private static final REGEX_FRAME_RATE:Ljava/util/regex/Pattern;

.field private static final REGEX_GAP:Ljava/util/regex/Pattern;

.field private static final REGEX_GROUP_ID:Ljava/util/regex/Pattern;

.field private static final REGEX_HOLD_BACK:Ljava/util/regex/Pattern;

.field private static final REGEX_ID:Ljava/util/regex/Pattern;

.field private static final REGEX_IMPORT:Ljava/util/regex/Pattern;

.field private static final REGEX_INDEPENDENT:Ljava/util/regex/Pattern;

.field private static final REGEX_INSTREAM_ID:Ljava/util/regex/Pattern;

.field private static final REGEX_IV:Ljava/util/regex/Pattern;

.field private static final REGEX_KEYFORMAT:Ljava/util/regex/Pattern;

.field private static final REGEX_KEYFORMATVERSIONS:Ljava/util/regex/Pattern;

.field private static final REGEX_LANGUAGE:Ljava/util/regex/Pattern;

.field private static final REGEX_LAST_MSN:Ljava/util/regex/Pattern;

.field private static final REGEX_LAST_PART:Ljava/util/regex/Pattern;

.field private static final REGEX_MEDIA_DURATION:Ljava/util/regex/Pattern;

.field private static final REGEX_MEDIA_SEQUENCE:Ljava/util/regex/Pattern;

.field private static final REGEX_MEDIA_TITLE:Ljava/util/regex/Pattern;

.field private static final REGEX_METHOD:Ljava/util/regex/Pattern;

.field private static final REGEX_NAME:Ljava/util/regex/Pattern;

.field private static final REGEX_PART_HOLD_BACK:Ljava/util/regex/Pattern;

.field private static final REGEX_PART_TARGET_DURATION:Ljava/util/regex/Pattern;

.field private static final REGEX_PLANNED_DURATION:Ljava/util/regex/Pattern;

.field private static final REGEX_PLAYLIST_TYPE:Ljava/util/regex/Pattern;

.field private static final REGEX_PLAYOUT_LIMIT:Ljava/util/regex/Pattern;

.field private static final REGEX_PRECISE:Ljava/util/regex/Pattern;

.field private static final REGEX_PRELOAD_HINT_TYPE:Ljava/util/regex/Pattern;

.field private static final REGEX_RESOLUTION:Ljava/util/regex/Pattern;

.field private static final REGEX_RESTRICT:Ljava/util/regex/Pattern;

.field private static final REGEX_RESUME_OFFSET:Ljava/util/regex/Pattern;

.field private static final REGEX_SKIPPED_SEGMENTS:Ljava/util/regex/Pattern;

.field private static final REGEX_SNAP:Ljava/util/regex/Pattern;

.field private static final REGEX_START_DATE:Ljava/util/regex/Pattern;

.field private static final REGEX_SUBTITLES:Ljava/util/regex/Pattern;

.field private static final REGEX_SUPPLEMENTAL_CODECS:Ljava/util/regex/Pattern;

.field private static final REGEX_TARGET_DURATION:Ljava/util/regex/Pattern;

.field private static final REGEX_TIME_OFFSET:Ljava/util/regex/Pattern;

.field private static final REGEX_TYPE:Ljava/util/regex/Pattern;

.field private static final REGEX_URI:Ljava/util/regex/Pattern;

.field private static final REGEX_VALUE:Ljava/util/regex/Pattern;

.field private static final REGEX_VARIABLE_REFERENCE:Ljava/util/regex/Pattern;

.field private static final REGEX_VERSION:Ljava/util/regex/Pattern;

.field private static final REGEX_VIDEO:Ljava/util/regex/Pattern;

.field private static final REGEX_VIDEO_RANGE:Ljava/util/regex/Pattern;

.field private static final TAG_BYTERANGE:Ljava/lang/String; = "#EXT-X-BYTERANGE"

.field private static final TAG_DATERANGE:Ljava/lang/String; = "#EXT-X-DATERANGE"

.field private static final TAG_DEFINE:Ljava/lang/String; = "#EXT-X-DEFINE"

.field private static final TAG_DISCONTINUITY:Ljava/lang/String; = "#EXT-X-DISCONTINUITY"

.field private static final TAG_DISCONTINUITY_SEQUENCE:Ljava/lang/String; = "#EXT-X-DISCONTINUITY-SEQUENCE"

.field private static final TAG_ENDLIST:Ljava/lang/String; = "#EXT-X-ENDLIST"

.field private static final TAG_GAP:Ljava/lang/String; = "#EXT-X-GAP"

.field private static final TAG_IFRAME:Ljava/lang/String; = "#EXT-X-I-FRAMES-ONLY"

.field private static final TAG_INDEPENDENT_SEGMENTS:Ljava/lang/String; = "#EXT-X-INDEPENDENT-SEGMENTS"

.field private static final TAG_INIT_SEGMENT:Ljava/lang/String; = "#EXT-X-MAP"

.field private static final TAG_I_FRAME_STREAM_INF:Ljava/lang/String; = "#EXT-X-I-FRAME-STREAM-INF"

.field private static final TAG_KEY:Ljava/lang/String; = "#EXT-X-KEY"

.field private static final TAG_MEDIA:Ljava/lang/String; = "#EXT-X-MEDIA"

.field private static final TAG_MEDIA_DURATION:Ljava/lang/String; = "#EXTINF"

.field private static final TAG_MEDIA_SEQUENCE:Ljava/lang/String; = "#EXT-X-MEDIA-SEQUENCE"

.field private static final TAG_PART:Ljava/lang/String; = "#EXT-X-PART"

.field private static final TAG_PART_INF:Ljava/lang/String; = "#EXT-X-PART-INF"

.field private static final TAG_PLAYLIST_TYPE:Ljava/lang/String; = "#EXT-X-PLAYLIST-TYPE"

.field private static final TAG_PREFIX:Ljava/lang/String; = "#EXT"

.field private static final TAG_PRELOAD_HINT:Ljava/lang/String; = "#EXT-X-PRELOAD-HINT"

.field private static final TAG_PROGRAM_DATE_TIME:Ljava/lang/String; = "#EXT-X-PROGRAM-DATE-TIME"

.field private static final TAG_RENDITION_REPORT:Ljava/lang/String; = "#EXT-X-RENDITION-REPORT"

.field private static final TAG_SERVER_CONTROL:Ljava/lang/String; = "#EXT-X-SERVER-CONTROL"

.field private static final TAG_SESSION_KEY:Ljava/lang/String; = "#EXT-X-SESSION-KEY"

.field private static final TAG_SKIP:Ljava/lang/String; = "#EXT-X-SKIP"

.field private static final TAG_START:Ljava/lang/String; = "#EXT-X-START"

.field private static final TAG_STREAM_INF:Ljava/lang/String; = "#EXT-X-STREAM-INF"

.field private static final TAG_TARGET_DURATION:Ljava/lang/String; = "#EXT-X-TARGETDURATION"

.field private static final TAG_VERSION:Ljava/lang/String; = "#EXT-X-VERSION"

.field private static final TYPE_AUDIO:Ljava/lang/String; = "AUDIO"

.field private static final TYPE_CLOSED_CAPTIONS:Ljava/lang/String; = "CLOSED-CAPTIONS"

.field private static final TYPE_MAP:Ljava/lang/String; = "MAP"

.field private static final TYPE_PART:Ljava/lang/String; = "PART"

.field private static final TYPE_SUBTITLES:Ljava/lang/String; = "SUBTITLES"

.field private static final TYPE_VIDEO:Ljava/lang/String; = "VIDEO"


# instance fields
.field private final multivariantPlaylist:Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;

.field private final previousMediaPlaylist:Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 141
    const-string v0, "AVERAGE-BANDWIDTH=(\\d+)\\b"

    .line 142
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_AVERAGE_BANDWIDTH:Ljava/util/regex/Pattern;

    .line 143
    const-string v0, "VIDEO=\"(.+?)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_VIDEO:Ljava/util/regex/Pattern;

    .line 144
    const-string v0, "AUDIO=\"(.+?)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_AUDIO:Ljava/util/regex/Pattern;

    .line 145
    const-string v0, "SUBTITLES=\"(.+?)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_SUBTITLES:Ljava/util/regex/Pattern;

    .line 146
    const-string v0, "CLOSED-CAPTIONS=\"(.+?)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_CLOSED_CAPTIONS:Ljava/util/regex/Pattern;

    .line 147
    const-string v0, "[^-]BANDWIDTH=(\\d+)\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_BANDWIDTH:Ljava/util/regex/Pattern;

    .line 148
    const-string v0, "CHANNELS=\"(.+?)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_CHANNELS:Ljava/util/regex/Pattern;

    .line 149
    const-string v0, "VIDEO-RANGE=(SDR|PQ|HLG)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_VIDEO_RANGE:Ljava/util/regex/Pattern;

    .line 150
    const-string v0, "CODECS=\"(.+?)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_CODECS:Ljava/util/regex/Pattern;

    .line 151
    const-string v0, "SUPPLEMENTAL-CODECS=\"(.+?)\""

    .line 152
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_SUPPLEMENTAL_CODECS:Ljava/util/regex/Pattern;

    .line 153
    const-string v0, "RESOLUTION=(\\d+x\\d+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_RESOLUTION:Ljava/util/regex/Pattern;

    .line 154
    const-string v0, "FRAME-RATE=([\\d\\.]+)\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_FRAME_RATE:Ljava/util/regex/Pattern;

    .line 155
    const-string v0, "#EXT-X-TARGETDURATION:(\\d+)\\b"

    .line 156
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_TARGET_DURATION:Ljava/util/regex/Pattern;

    .line 157
    const-string v0, "DURATION=([\\d\\.]+)\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_ATTR_DURATION:Ljava/util/regex/Pattern;

    .line 158
    const-string v0, "[:,]DURATION=([\\d\\.]+)\\b"

    .line 159
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_ATTR_DURATION_PREFIXED:Ljava/util/regex/Pattern;

    .line 160
    const-string v0, "PART-TARGET=([\\d\\.]+)\\b"

    .line 161
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_PART_TARGET_DURATION:Ljava/util/regex/Pattern;

    .line 162
    const-string v0, "#EXT-X-VERSION:(\\d+)\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_VERSION:Ljava/util/regex/Pattern;

    .line 163
    const-string v0, "#EXT-X-PLAYLIST-TYPE:(.+)\\b"

    .line 164
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_PLAYLIST_TYPE:Ljava/util/regex/Pattern;

    .line 165
    const-string v0, "CAN-SKIP-UNTIL=([\\d\\.]+)\\b"

    .line 166
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_CAN_SKIP_UNTIL:Ljava/util/regex/Pattern;

    .line 167
    const-string v0, "CAN-SKIP-DATERANGES"

    .line 168
    invoke-static {v0}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->compileBooleanAttrPattern(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_CAN_SKIP_DATE_RANGES:Ljava/util/regex/Pattern;

    .line 169
    const-string v0, "SKIPPED-SEGMENTS=(\\d+)\\b"

    .line 170
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_SKIPPED_SEGMENTS:Ljava/util/regex/Pattern;

    .line 171
    const-string v0, "[:|,]HOLD-BACK=([\\d\\.]+)\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_HOLD_BACK:Ljava/util/regex/Pattern;

    .line 172
    const-string v0, "PART-HOLD-BACK=([\\d\\.]+)\\b"

    .line 173
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_PART_HOLD_BACK:Ljava/util/regex/Pattern;

    .line 174
    const-string v0, "CAN-BLOCK-RELOAD"

    .line 175
    invoke-static {v0}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->compileBooleanAttrPattern(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_CAN_BLOCK_RELOAD:Ljava/util/regex/Pattern;

    .line 176
    const-string v0, "#EXT-X-MEDIA-SEQUENCE:(\\d+)\\b"

    .line 177
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_MEDIA_SEQUENCE:Ljava/util/regex/Pattern;

    .line 178
    const-string v0, "#EXTINF:([\\d\\.]+)\\b"

    .line 179
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_MEDIA_DURATION:Ljava/util/regex/Pattern;

    .line 180
    const-string v0, "#EXTINF:[\\d\\.]+\\b,(.+)"

    .line 181
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_MEDIA_TITLE:Ljava/util/regex/Pattern;

    .line 182
    const-string v0, "LAST-MSN=(\\d+)\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_LAST_MSN:Ljava/util/regex/Pattern;

    .line 183
    const-string v0, "LAST-PART=(\\d+)\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_LAST_PART:Ljava/util/regex/Pattern;

    .line 184
    const-string v0, "TIME-OFFSET=(-?[\\d\\.]+)\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_TIME_OFFSET:Ljava/util/regex/Pattern;

    .line 185
    const-string v0, "#EXT-X-BYTERANGE:(\\d+(?:@\\d+)?)\\b"

    .line 186
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_BYTERANGE:Ljava/util/regex/Pattern;

    .line 187
    const-string v0, "BYTERANGE=\"(\\d+(?:@\\d+)?)\\b\""

    .line 188
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_ATTR_BYTERANGE:Ljava/util/regex/Pattern;

    .line 189
    const-string v0, "BYTERANGE-START=(\\d+)\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_BYTERANGE_START:Ljava/util/regex/Pattern;

    .line 190
    const-string v0, "BYTERANGE-LENGTH=(\\d+)\\b"

    .line 191
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_BYTERANGE_LENGTH:Ljava/util/regex/Pattern;

    .line 192
    const-string v0, "METHOD=(NONE|AES-128|SAMPLE-AES|SAMPLE-AES-CENC|SAMPLE-AES-CTR)\\s*(?:,|$)"

    .line 193
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_METHOD:Ljava/util/regex/Pattern;

    .line 206
    const-string v0, "KEYFORMAT=\"(.+?)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_KEYFORMAT:Ljava/util/regex/Pattern;

    .line 207
    const-string v0, "KEYFORMATVERSIONS=\"(.+?)\""

    .line 208
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_KEYFORMATVERSIONS:Ljava/util/regex/Pattern;

    .line 209
    const-string v0, "URI=\"(.+?)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_URI:Ljava/util/regex/Pattern;

    .line 210
    const-string v0, "IV=([^,.*]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_IV:Ljava/util/regex/Pattern;

    .line 211
    const-string v0, "TYPE=(AUDIO|VIDEO|SUBTITLES|CLOSED-CAPTIONS)"

    .line 212
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_TYPE:Ljava/util/regex/Pattern;

    .line 222
    const-string v0, "TYPE=(PART|MAP)"

    .line 223
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_PRELOAD_HINT_TYPE:Ljava/util/regex/Pattern;

    .line 224
    const-string v0, "LANGUAGE=\"(.+?)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_LANGUAGE:Ljava/util/regex/Pattern;

    .line 225
    const-string v0, "NAME=\"(.+?)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_NAME:Ljava/util/regex/Pattern;

    .line 226
    const-string v0, "GROUP-ID=\"(.+?)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_GROUP_ID:Ljava/util/regex/Pattern;

    .line 227
    const-string v0, "CHARACTERISTICS=\"(.+?)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_CHARACTERISTICS:Ljava/util/regex/Pattern;

    .line 228
    const-string v0, "INSTREAM-ID=\"((?:CC|SERVICE)\\d+)\""

    .line 229
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_INSTREAM_ID:Ljava/util/regex/Pattern;

    .line 230
    const-string v0, "AUTOSELECT"

    invoke-static {v0}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->compileBooleanAttrPattern(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_AUTOSELECT:Ljava/util/regex/Pattern;

    .line 231
    const-string v0, "DEFAULT"

    invoke-static {v0}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->compileBooleanAttrPattern(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_DEFAULT:Ljava/util/regex/Pattern;

    .line 232
    const-string v0, "FORCED"

    invoke-static {v0}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->compileBooleanAttrPattern(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_FORCED:Ljava/util/regex/Pattern;

    .line 233
    const-string v0, "INDEPENDENT"

    invoke-static {v0}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->compileBooleanAttrPattern(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_INDEPENDENT:Ljava/util/regex/Pattern;

    .line 234
    const-string v0, "GAP"

    invoke-static {v0}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->compileBooleanAttrPattern(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_GAP:Ljava/util/regex/Pattern;

    .line 235
    const-string v0, "PRECISE"

    invoke-static {v0}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->compileBooleanAttrPattern(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_PRECISE:Ljava/util/regex/Pattern;

    .line 236
    const-string v0, "VALUE=\"(.+?)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_VALUE:Ljava/util/regex/Pattern;

    .line 237
    const-string v0, "IMPORT=\"(.+?)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_IMPORT:Ljava/util/regex/Pattern;

    .line 238
    const-string v0, "[:,]ID=\"(.+?)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_ID:Ljava/util/regex/Pattern;

    .line 239
    const-string v0, "CLASS=\"(.+?)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_CLASS:Ljava/util/regex/Pattern;

    .line 240
    const-string v0, "START-DATE=\"(.+?)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_START_DATE:Ljava/util/regex/Pattern;

    .line 241
    const-string v0, "CUE=\"(.+?)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_CUE:Ljava/util/regex/Pattern;

    .line 242
    const-string v0, "END-DATE=\"(.+?)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_END_DATE:Ljava/util/regex/Pattern;

    .line 243
    const-string v0, "PLANNED-DURATION=([\\d\\.]+)\\b"

    .line 244
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_PLANNED_DURATION:Ljava/util/regex/Pattern;

    .line 245
    const-string v0, "END-ON-NEXT"

    invoke-static {v0}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->compileBooleanAttrPattern(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_END_ON_NEXT:Ljava/util/regex/Pattern;

    .line 246
    const-string v0, "X-ASSET-URI=\"(.+?)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_ASSET_URI:Ljava/util/regex/Pattern;

    .line 247
    const-string v0, "X-ASSET-LIST=\"(.+?)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_ASSET_LIST_URI:Ljava/util/regex/Pattern;

    .line 248
    const-string v0, "X-RESUME-OFFSET=(-?[\\d\\.]+)\\b"

    .line 249
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_RESUME_OFFSET:Ljava/util/regex/Pattern;

    .line 250
    const-string v0, "X-PLAYOUT-LIMIT=([\\d\\.]+)\\b"

    .line 251
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_PLAYOUT_LIMIT:Ljava/util/regex/Pattern;

    .line 252
    const-string v0, "X-SNAP=\"(.+?)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_SNAP:Ljava/util/regex/Pattern;

    .line 253
    const-string v0, "X-RESTRICT=\"(.+?)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_RESTRICT:Ljava/util/regex/Pattern;

    .line 254
    const-string v0, "\\{\\$([a-zA-Z0-9\\-_]+)\\}"

    .line 255
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_VARIABLE_REFERENCE:Ljava/util/regex/Pattern;

    .line 256
    const-string v0, "\\b(X-[A-Z0-9-]+)="

    .line 257
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_CLIENT_DEFINED_ATTRIBUTE_PREFIX:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 269
    sget-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;->EMPTY:Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;-><init>(Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;)V

    return-void
.end method

.method public constructor <init>(Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;)V
    .locals 0

    .line 283
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 284
    iput-object p1, p0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->multivariantPlaylist:Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;

    .line 285
    iput-object p2, p0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->previousMediaPlaylist:Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;

    return-void
.end method

.method private static checkPlaylistHeader(Ljava/io/BufferedReader;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 331
    invoke-virtual {p0}, Ljava/io/BufferedReader;->read()I

    move-result v0

    const/16 v1, 0xef

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    .line 333
    invoke-virtual {p0}, Ljava/io/BufferedReader;->read()I

    move-result v0

    const/16 v1, 0xbb

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Ljava/io/BufferedReader;->read()I

    move-result v0

    const/16 v1, 0xbf

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 337
    :cond_0
    invoke-virtual {p0}, Ljava/io/BufferedReader;->read()I

    move-result v0

    goto :goto_1

    :cond_1
    :goto_0
    return v2

    :cond_2
    :goto_1
    const/4 v1, 0x1

    .line 339
    invoke-static {p0, v1, v0}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->skipIgnorableWhitespace(Ljava/io/BufferedReader;ZI)I

    move-result v0

    const/4 v1, 0x0

    :goto_2
    const/4 v3, 0x7

    if-ge v1, v3, :cond_4

    .line 342
    const-string v3, "#EXTM3U"

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v0, v3, :cond_3

    return v2

    .line 345
    :cond_3
    invoke-virtual {p0}, Ljava/io/BufferedReader;->read()I

    move-result v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 347
    :cond_4
    invoke-static {p0, v2, v0}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->skipIgnorableWhitespace(Ljava/io/BufferedReader;ZI)I

    move-result p0

    .line 348
    invoke-static {p0}, Landroidx/media3/common/util/Util;->isLinebreak(I)Z

    move-result p0

    return p0
.end method

.method private static compileBooleanAttrPattern(Ljava/lang/String;)Ljava/util/regex/Pattern;
    .locals 1

    .line 1534
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "=(NO|YES)"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p0

    return-object p0
.end method

.method private static getPlaylistProtectionSchemes(Ljava/lang/String;[Landroidx/media3/common/DrmInitData$SchemeData;)Landroidx/media3/common/DrmInitData;
    .locals 4

    .line 1291
    array-length v0, p1

    new-array v0, v0, [Landroidx/media3/common/DrmInitData$SchemeData;

    const/4 v1, 0x0

    .line 1292
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 1293
    aget-object v2, p1, v1

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroidx/media3/common/DrmInitData$SchemeData;->copyWithData([B)Landroidx/media3/common/DrmInitData$SchemeData;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1295
    :cond_0
    new-instance p1, Landroidx/media3/common/DrmInitData;

    invoke-direct {p1, p0, v0}, Landroidx/media3/common/DrmInitData;-><init>(Ljava/lang/String;[Landroidx/media3/common/DrmInitData$SchemeData;)V

    return-object p1
.end method

.method private static getSegmentEncryptionIV(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-eqz p3, :cond_1

    return-object p3

    .line 1308
    :cond_1
    invoke-static {p0, p1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getVariantWithAudioGroup(Ljava/util/ArrayList;Ljava/lang/String;)Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 681
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 682
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;

    .line 683
    iget-object v2, v1, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;->audioGroupId:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getVariantWithSubtitleGroup(Ljava/util/ArrayList;Ljava/lang/String;)Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 703
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 704
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;

    .line 705
    iget-object v2, v1, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;->subtitleGroupId:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getVariantWithVideoGroup(Ljava/util/ArrayList;Ljava/lang/String;)Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 692
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 693
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;

    .line 694
    iget-object v2, v1, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;->videoGroupId:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static isDolbyVisionFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 364
    invoke-static {p1, p2}, Landroidx/media3/common/MimeTypes;->isDolbyVisionCodec(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 p1, 0x1

    if-nez p2, :cond_1

    return p1

    :cond_1
    if-eqz p0, :cond_7

    if-nez p3, :cond_2

    goto :goto_0

    .line 375
    :cond_2
    const-string p2, "PQ"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    const-string p2, "db1p"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    :cond_3
    const-string p2, "SDR"

    .line 376
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    const-string p2, "db2g"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    :cond_4
    const-string p2, "HLG"

    .line 377
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    const-string p0, "db4"

    invoke-virtual {p3, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_6

    :cond_5
    return v0

    :cond_6
    return p1

    :cond_7
    :goto_0
    return v0
.end method

.method private static parseClientDefinedAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$ClientDefinedAttribute;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$ClientDefinedAttribute;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 1480
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1481
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 1482
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v1, v0

    .line 1483
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    add-int/2addr v0, v1

    .line 1485
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1486
    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1488
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "=\"(.+?)\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 1489
    invoke-static {p0, v0, p2}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    .line 1490
    new-instance p2, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$ClientDefinedAttribute;

    const/4 v0, 0x0

    invoke-direct {p2, p1, p0, v0}, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$ClientDefinedAttribute;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object p2

    .line 1492
    :cond_1
    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "0X"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 1500
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "=([\\d\\.]+)\\b"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p2

    .line 1501
    new-instance v0, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$ClientDefinedAttribute;

    .line 1502
    invoke-static {p0, p2}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseDoubleAttr(Ljava/lang/String;Ljava/util/regex/Pattern;)D

    move-result-wide v1

    invoke-direct {v0, p1, v1, v2}, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$ClientDefinedAttribute;-><init>(Ljava/lang/String;D)V

    return-object v0

    .line 1494
    :cond_3
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "=(0[xX][A-F0-9]+)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 1495
    invoke-static {p0, v0, p2}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    .line 1496
    new-instance p2, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$ClientDefinedAttribute;

    invoke-direct {p2, p1, p0, v3}, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$ClientDefinedAttribute;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object p2
.end method

.method private static parseDoubleAttr(Ljava/lang/String;Ljava/util/regex/Pattern;)D
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 1436
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-static {p0, p1, v0}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p0

    return-wide p0
.end method

.method private static parseDrmSchemeData(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Landroidx/media3/common/DrmInitData$SchemeData;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroidx/media3/common/DrmInitData$SchemeData;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 1353
    sget-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_KEYFORMATVERSIONS:Ljava/util/regex/Pattern;

    .line 1354
    const-string v1, "1"

    invoke-static {p0, v0, v1, p2}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 1355
    const-string v2, "urn:uuid:edef8ba9-79d6-4ace-a3c8-27dcd51d21ed"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    const/16 v4, 0x2c

    const-string v5, "video/mp4"

    if-eqz v2, :cond_0

    .line 1356
    sget-object p1, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_URI:Ljava/util/regex/Pattern;

    invoke-static {p0, p1, p2}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    .line 1357
    new-instance p1, Landroidx/media3/common/DrmInitData$SchemeData;

    sget-object p2, Landroidx/media3/common/C;->WIDEVINE_UUID:Ljava/util/UUID;

    .line 1360
    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    invoke-direct {p1, p2, v5, p0}, Landroidx/media3/common/DrmInitData$SchemeData;-><init>(Ljava/util/UUID;Ljava/lang/String;[B)V

    return-object p1

    .line 1361
    :cond_0
    const-string v2, "com.widevine"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1362
    new-instance p1, Landroidx/media3/common/DrmInitData$SchemeData;

    sget-object p2, Landroidx/media3/common/C;->WIDEVINE_UUID:Ljava/util/UUID;

    const-string v0, "hls"

    invoke-static {p0}, Landroidx/media3/common/util/Util;->getUtf8Bytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-direct {p1, p2, v0, p0}, Landroidx/media3/common/DrmInitData$SchemeData;-><init>(Ljava/util/UUID;Ljava/lang/String;[B)V

    return-object p1

    .line 1363
    :cond_1
    const-string v2, "com.microsoft.playready"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1364
    sget-object p1, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_URI:Ljava/util/regex/Pattern;

    invoke-static {p0, p1, p2}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    .line 1365
    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    .line 1366
    sget-object p1, Landroidx/media3/common/C;->PLAYREADY_UUID:Ljava/util/UUID;

    invoke-static {p1, p0}, Landroidx/media3/extractor/mp4/PsshAtomUtil;->buildPsshAtom(Ljava/util/UUID;[B)[B

    move-result-object p0

    .line 1367
    new-instance p1, Landroidx/media3/common/DrmInitData$SchemeData;

    sget-object p2, Landroidx/media3/common/C;->PLAYREADY_UUID:Ljava/util/UUID;

    invoke-direct {p1, p2, v5, p0}, Landroidx/media3/common/DrmInitData$SchemeData;-><init>(Ljava/util/UUID;Ljava/lang/String;[B)V

    return-object p1

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private static parseEncryptionScheme(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1400
    const-string v0, "SAMPLE-AES-CENC"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "SAMPLE-AES-CTR"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 1402
    :cond_0
    const-string p0, "cbcs"

    goto :goto_1

    .line 1401
    :cond_1
    :goto_0
    const-string p0, "cenc"

    :goto_1
    return-object p0
.end method

.method private static parseIntAttr(Ljava/lang/String;Ljava/util/regex/Pattern;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 1406
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-static {p0, p1, v0}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private static parseLongAttr(Ljava/lang/String;Ljava/util/regex/Pattern;)J
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 1418
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-static {p0, p1, v0}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method private static parseMediaPlaylist(Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$LineIterator;Ljava/lang/String;)Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;
    .locals 114
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 724
    iget-boolean v2, v0, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;->hasIndependentSegments:Z

    .line 727
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 728
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 729
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 730
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 732
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 733
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 734
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 751
    new-instance v7, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$ServerControl;

    const-wide v22, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v24, 0x0

    const-wide v17, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v19, 0x0

    const-wide v20, -0x7fffffffffffffffL    # -4.9E-324

    move-object/from16 v16, v7

    invoke-direct/range {v16 .. v24}, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$ServerControl;-><init>(JZJJZ)V

    .line 762
    new-instance v9, Ljava/util/TreeMap;

    invoke-direct {v9}, Ljava/util/TreeMap;-><init>()V

    const/4 v10, 0x0

    const-wide/16 v16, 0x0

    .line 764
    const-string v12, ""

    move-object/from16 v21, v12

    move/from16 v36, v2

    move-object/from16 v57, v7

    move-wide/from16 v25, v16

    move-wide/from16 v29, v25

    move-wide/from16 v39, v29

    move-wide/from16 v51, v39

    move-wide/from16 v82, v51

    move-wide/from16 v84, v82

    move-wide/from16 v88, v84

    move-wide/from16 v90, v88

    move-object/from16 v42, v21

    const/4 v2, 0x0

    const-wide v22, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v24, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v31, 0x1

    const-wide v32, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v34, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v41, 0x0

    const/16 v55, 0x0

    const/16 v76, 0x0

    const-wide/16 v77, -0x1

    const/16 v79, 0x0

    const/16 v80, 0x0

    const/16 v81, 0x0

    const/16 v86, 0x0

    const/16 v87, 0x0

    move-object v7, v5

    const/4 v5, 0x0

    .line 767
    :cond_0
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$LineIterator;->hasNext()Z

    move-result v43

    if-eqz v43, :cond_5f

    .line 768
    invoke-virtual/range {p2 .. p2}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$LineIterator;->next()Ljava/lang/String;

    move-result-object v12

    .line 770
    const-string v11, "#EXT"

    invoke-virtual {v12, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 772
    invoke-interface {v8, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 775
    :cond_1
    const-string v11, "#EXT-X-PLAYLIST-TYPE"

    invoke-virtual {v12, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    const/16 v44, 0x2

    if-eqz v11, :cond_3

    .line 776
    sget-object v11, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_PLAYLIST_TYPE:Ljava/util/regex/Pattern;

    invoke-static {v12, v11, v3}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v11

    .line 777
    const-string v12, "VOD"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    .line 779
    :cond_2
    const-string v12, "EVENT"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/4 v2, 0x2

    goto :goto_0

    .line 782
    :cond_3
    const-string v11, "#EXT-X-I-FRAMES-ONLY"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    const/16 v86, 0x1

    goto :goto_0

    .line 784
    :cond_4
    const-string v11, "#EXT-X-START"

    invoke-virtual {v12, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    const-wide v45, 0x412e848000000000L    # 1000000.0

    if-eqz v11, :cond_5

    .line 785
    sget-object v11, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_TIME_OFFSET:Ljava/util/regex/Pattern;

    invoke-static {v12, v11}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseDoubleAttr(Ljava/lang/String;Ljava/util/regex/Pattern;)D

    move-result-wide v22

    move-object/from16 v92, v14

    mul-double v13, v22, v45

    double-to-long v13, v13

    .line 786
    sget-object v11, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_PRECISE:Ljava/util/regex/Pattern;

    .line 787
    invoke-static {v12, v11, v10}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseOptionalBooleanAttribute(Ljava/lang/String;Ljava/util/regex/Pattern;Z)Z

    move-result v24

    move-wide/from16 v22, v13

    :goto_1
    move-object/from16 v14, v92

    goto :goto_0

    :cond_5
    move-object/from16 v92, v14

    .line 788
    const-string v11, "#EXT-X-SERVER-CONTROL"

    invoke-virtual {v12, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 789
    invoke-static {v12}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseServerControl(Ljava/lang/String;)Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$ServerControl;

    move-result-object v57

    goto :goto_1

    .line 790
    :cond_6
    const-string v11, "#EXT-X-PART-INF"

    invoke-virtual {v12, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 791
    sget-object v11, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_PART_TARGET_DURATION:Ljava/util/regex/Pattern;

    invoke-static {v12, v11}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseDoubleAttr(Ljava/lang/String;Ljava/util/regex/Pattern;)D

    move-result-wide v11

    mul-double v11, v11, v45

    double-to-long v11, v11

    move-wide/from16 v34, v11

    goto :goto_1

    .line 793
    :cond_7
    const-string v11, "#EXT-X-MAP"

    invoke-virtual {v12, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    const-string v13, "@"

    if-eqz v11, :cond_d

    .line 794
    sget-object v11, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_URI:Ljava/util/regex/Pattern;

    invoke-static {v12, v11, v3}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v44

    .line 795
    sget-object v11, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_ATTR_BYTERANGE:Ljava/util/regex/Pattern;

    invoke-static {v12, v11, v3}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_8

    .line 797
    invoke-static {v11, v13}, Landroidx/media3/common/util/Util;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 798
    aget-object v12, v11, v10

    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v77

    .line 799
    array-length v12, v11

    const/4 v13, 0x1

    if-le v12, v13, :cond_8

    .line 800
    aget-object v12, v11, v13

    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v39

    :cond_8
    const-wide/16 v12, -0x1

    cmp-long v14, v77, v12

    if-nez v14, :cond_9

    move-wide/from16 v39, v16

    :cond_9
    move-object/from16 v12, v76

    move-object/from16 v13, v79

    if-eqz v12, :cond_b

    if-eqz v13, :cond_a

    goto :goto_2

    .line 809
    :cond_a
    const-string v0, "The encryption IV attribute must be present when an initialization segment is encrypted with METHOD=AES-128."

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/media3/common/ParserException;->createForMalformedManifest(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_b
    :goto_2
    const/16 v20, 0x0

    .line 814
    new-instance v87, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;

    move-object/from16 v43, v87

    move-wide/from16 v45, v39

    move-wide/from16 v47, v77

    move-object/from16 v49, v12

    move-object/from16 v50, v13

    invoke-direct/range {v43 .. v50}, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;-><init>(Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)V

    if-eqz v14, :cond_c

    add-long v39, v39, v77

    :cond_c
    move-object/from16 v76, v12

    move-object/from16 v79, v13

    move-object/from16 v14, v92

    const-wide/16 v77, -0x1

    goto/16 :goto_0

    :cond_d
    move-object/from16 v14, v76

    move-object/from16 v11, v79

    const/16 v20, 0x0

    .line 825
    const-string v10, "#EXT-X-TARGETDURATION"

    invoke-virtual {v12, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_e

    .line 826
    sget-object v10, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_TARGET_DURATION:Ljava/util/regex/Pattern;

    invoke-static {v12, v10}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseIntAttr(Ljava/lang/String;Ljava/util/regex/Pattern;)I

    move-result v10

    int-to-long v12, v10

    const-wide/32 v32, 0xf4240

    mul-long v32, v32, v12

    :goto_3
    move-object/from16 v79, v11

    :goto_4
    move-object/from16 v76, v14

    :goto_5
    move-object/from16 v14, v92

    :goto_6
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 827
    :cond_e
    const-string v10, "#EXT-X-MEDIA-SEQUENCE"

    invoke-virtual {v12, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_f

    .line 828
    sget-object v10, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_MEDIA_SEQUENCE:Ljava/util/regex/Pattern;

    invoke-static {v12, v10}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseLongAttr(Ljava/lang/String;Ljava/util/regex/Pattern;)J

    move-result-wide v84

    move-object/from16 v79, v11

    move-object/from16 v76, v14

    move-wide/from16 v29, v84

    goto :goto_5

    .line 830
    :cond_f
    const-string v10, "#EXT-X-VERSION"

    invoke-virtual {v12, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_10

    .line 831
    sget-object v10, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_VERSION:Ljava/util/regex/Pattern;

    invoke-static {v12, v10}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseIntAttr(Ljava/lang/String;Ljava/util/regex/Pattern;)I

    move-result v31

    goto :goto_3

    .line 832
    :cond_10
    const-string v10, "#EXT-X-DEFINE"

    invoke-virtual {v12, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_13

    .line 833
    sget-object v10, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_IMPORT:Ljava/util/regex/Pattern;

    invoke-static {v12, v10, v3}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_11

    .line 835
    iget-object v12, v0, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;->variableDefinitions:Ljava/util/Map;

    invoke-interface {v12, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    if-eqz v12, :cond_12

    .line 837
    invoke-virtual {v3, v10, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 842
    :cond_11
    sget-object v10, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_NAME:Ljava/util/regex/Pattern;

    .line 843
    invoke-static {v12, v10, v3}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v10

    sget-object v13, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_VALUE:Ljava/util/regex/Pattern;

    .line 844
    invoke-static {v12, v13, v3}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v12

    .line 842
    invoke-virtual {v3, v10, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_12
    :goto_7
    move-object/from16 v61, v3

    move-object/from16 v79, v5

    move-object/from16 v56, v7

    move-object/from16 v58, v21

    move-object/from16 v0, v80

    const/4 v1, 0x0

    move/from16 v80, v2

    move-object/from16 v21, v8

    move-object v2, v15

    move-wide/from16 v7, v84

    :goto_8
    move-object/from16 v84, v6

    move-object v6, v9

    goto/16 :goto_31

    .line 846
    :cond_13
    const-string v10, "#EXTINF"

    invoke-virtual {v12, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_14

    .line 847
    sget-object v10, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_MEDIA_DURATION:Ljava/util/regex/Pattern;

    invoke-static {v12, v10}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseTimeSecondsToUs(Ljava/lang/String;Ljava/util/regex/Pattern;)J

    move-result-wide v88

    .line 848
    sget-object v10, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_MEDIA_TITLE:Ljava/util/regex/Pattern;

    move-object/from16 v13, v21

    invoke-static {v12, v10, v13, v3}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v42

    goto/16 :goto_3

    :cond_14
    move-object/from16 v10, v21

    .line 849
    const-string v0, "#EXT-X-SKIP"

    invoke-virtual {v12, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const-wide/16 v48, 0x1

    if-eqz v0, :cond_1c

    .line 850
    sget-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_SKIPPED_SEGMENTS:Ljava/util/regex/Pattern;

    invoke-static {v12, v0}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseIntAttr(Ljava/lang/String;Ljava/util/regex/Pattern;)I

    move-result v0

    if-eqz v1, :cond_15

    .line 851
    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_15

    const/4 v12, 0x1

    goto :goto_9

    :cond_15
    const/4 v12, 0x0

    :goto_9
    invoke-static {v12}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 852
    invoke-static/range {p1 .. p1}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;

    iget-wide v12, v12, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->mediaSequence:J

    sub-long v12, v29, v12

    long-to-int v13, v12

    add-int/2addr v0, v13

    if-ltz v13, :cond_1b

    .line 854
    iget-object v12, v1, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-gt v0, v12, :cond_1b

    move-object/from16 v79, v11

    move-wide/from16 v11, v82

    :goto_a
    if-ge v13, v0, :cond_1a

    .line 859
    iget-object v14, v1, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    invoke-interface {v14, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;

    move-object/from16 v56, v7

    move-object/from16 v21, v8

    .line 860
    iget-wide v7, v1, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->mediaSequence:J

    cmp-long v41, v29, v7

    if-eqz v41, :cond_16

    .line 864
    iget v7, v1, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->discontinuitySequence:I

    sub-int v7, v7, v28

    iget v8, v14, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;->relativeDiscontinuitySequence:I

    add-int/2addr v7, v8

    .line 868
    invoke-virtual {v14, v11, v12, v7}, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;->copyWith(JI)Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;

    move-result-object v14

    .line 870
    :cond_16
    invoke-interface {v15, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 871
    iget-wide v7, v14, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;->durationUs:J

    add-long/2addr v11, v7

    .line 873
    iget-wide v7, v14, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;->byteRangeLength:J

    const-wide/16 v43, -0x1

    cmp-long v41, v7, v43

    if-eqz v41, :cond_17

    .line 874
    iget-wide v7, v14, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;->byteRangeOffset:J

    move/from16 v43, v0

    iget-wide v0, v14, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;->byteRangeLength:J

    add-long/2addr v7, v0

    move-wide/from16 v39, v7

    goto :goto_b

    :cond_17
    move/from16 v43, v0

    .line 876
    :goto_b
    iget v0, v14, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;->relativeDiscontinuitySequence:I

    .line 877
    iget-object v1, v14, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;->initializationSegment:Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;

    .line 878
    iget-object v7, v14, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;->drmInitData:Landroidx/media3/common/DrmInitData;

    .line 879
    iget-object v8, v14, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;->fullSegmentEncryptionKeyUri:Ljava/lang/String;

    move/from16 v41, v0

    .line 880
    iget-object v0, v14, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;->encryptionIV:Ljava/lang/String;

    if-eqz v0, :cond_18

    iget-object v0, v14, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;->encryptionIV:Ljava/lang/String;

    move-object/from16 v44, v1

    .line 881
    invoke-static/range {v84 .. v85}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    goto :goto_c

    :cond_18
    move-object/from16 v44, v1

    .line 882
    :goto_c
    iget-object v0, v14, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;->encryptionIV:Ljava/lang/String;

    move-object/from16 v79, v0

    :cond_19
    add-long v84, v84, v48

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v1, p1

    move-object v14, v8

    move-wide/from16 v51, v11

    move-object/from16 v8, v21

    move/from16 v81, v41

    move/from16 v0, v43

    move-object/from16 v87, v44

    move-object/from16 v41, v7

    move-object/from16 v7, v56

    goto :goto_a

    :cond_1a
    move-object/from16 v56, v7

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v21, v10

    move-wide/from16 v82, v11

    goto/16 :goto_4

    .line 856
    :cond_1b
    new-instance v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$DeltaUpdateException;

    invoke-direct {v0}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$DeltaUpdateException;-><init>()V

    throw v0

    :cond_1c
    move-object/from16 v56, v7

    move-object/from16 v21, v8

    .line 886
    const-string v0, "#EXT-X-KEY"

    invoke-virtual {v12, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 887
    sget-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_METHOD:Ljava/util/regex/Pattern;

    invoke-static {v12, v0, v3}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 888
    sget-object v1, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_KEYFORMAT:Ljava/util/regex/Pattern;

    .line 889
    const-string v7, "identity"

    invoke-static {v12, v1, v7, v3}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    .line 892
    const-string v8, "NONE"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1d

    .line 893
    invoke-virtual {v9}, Ljava/util/TreeMap;->clear()V

    move-object/from16 v0, v20

    move-object/from16 v41, v0

    move-object/from16 v79, v41

    goto :goto_e

    .line 896
    :cond_1d
    sget-object v8, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_IV:Ljava/util/regex/Pattern;

    invoke-static {v12, v8, v3}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v8

    .line 897
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1f

    .line 898
    const-string v1, "AES-128"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 900
    sget-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_URI:Ljava/util/regex/Pattern;

    invoke-static {v12, v0, v3}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v79, v8

    goto :goto_e

    :cond_1e
    move-object/from16 v79, v8

    move-object/from16 v0, v20

    goto :goto_e

    :cond_1f
    move-object/from16 v7, v80

    if-nez v7, :cond_20

    .line 907
    invoke-static {v0}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseEncryptionScheme(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v80

    goto :goto_d

    :cond_20
    move-object/from16 v80, v7

    .line 909
    :goto_d
    invoke-static {v12, v1, v3}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseDrmSchemeData(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Landroidx/media3/common/DrmInitData$SchemeData;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 912
    invoke-virtual {v9, v1, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v79, v8

    move-object/from16 v0, v20

    move-object/from16 v41, v0

    :goto_e
    move-object/from16 v1, p1

    move-object/from16 v76, v0

    move-object/from16 v8, v21

    move-object/from16 v7, v56

    move-object/from16 v14, v92

    :goto_f
    move-object/from16 v0, p0

    goto :goto_11

    :cond_21
    move-object/from16 v7, v80

    .line 916
    const-string v0, "#EXT-X-BYTERANGE"

    invoke-virtual {v12, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 917
    sget-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_BYTERANGE:Ljava/util/regex/Pattern;

    invoke-static {v12, v0, v3}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 918
    invoke-static {v0, v13}, Landroidx/media3/common/util/Util;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 919
    aget-object v8, v0, v1

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v77

    .line 920
    array-length v1, v0

    const/4 v8, 0x1

    if-le v1, v8, :cond_22

    .line 921
    aget-object v0, v0, v8

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v39

    :cond_22
    :goto_10
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v80, v7

    move-object/from16 v79, v11

    move-object/from16 v76, v14

    move-object/from16 v8, v21

    move-object/from16 v7, v56

    move-object/from16 v14, v92

    goto :goto_11

    :cond_23
    const/4 v8, 0x1

    .line 923
    const-string v0, "#EXT-X-DISCONTINUITY-SEQUENCE"

    invoke-virtual {v12, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/16 v1, 0x3a

    if-eqz v0, :cond_24

    .line 925
    invoke-virtual {v12, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/2addr v0, v8

    invoke-virtual {v12, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v80, v7

    move-object/from16 v79, v11

    move-object/from16 v76, v14

    move-object/from16 v8, v21

    move-object/from16 v7, v56

    move-object/from16 v14, v92

    const/16 v27, 0x1

    :goto_11
    move-object/from16 v21, v10

    goto/16 :goto_6

    .line 926
    :cond_24
    const-string v0, "#EXT-X-DISCONTINUITY"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    add-int/lit8 v81, v81, 0x1

    goto :goto_10

    .line 928
    :cond_25
    const-string v0, "#EXT-X-PROGRAM-DATE-TIME"

    invoke-virtual {v12, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    cmp-long v0, v25, v16

    if-nez v0, :cond_26

    .line 931
    invoke-virtual {v12, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-virtual {v12, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/common/util/Util;->parseXsDateTime(Ljava/lang/String;)J

    move-result-wide v12

    invoke-static {v12, v13}, Landroidx/media3/common/util/Util;->msToUs(J)J

    move-result-wide v12

    sub-long v25, v12, v82

    goto :goto_10

    :cond_26
    move/from16 v80, v2

    move-object/from16 v61, v3

    move-object/from16 v79, v5

    move-object v0, v7

    move-object/from16 v58, v10

    move-object v2, v15

    move-wide/from16 v7, v84

    const/4 v1, 0x0

    goto/16 :goto_8

    .line 934
    :cond_27
    const-string v0, "#EXT-X-GAP"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v80, v7

    move-object/from16 v79, v11

    move-object/from16 v76, v14

    move-object/from16 v8, v21

    move-object/from16 v7, v56

    move-object/from16 v14, v92

    const/16 v55, 0x1

    goto :goto_11

    .line 936
    :cond_28
    const-string v0, "#EXT-X-INDEPENDENT-SEGMENTS"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v80, v7

    move-object/from16 v79, v11

    move-object/from16 v76, v14

    move-object/from16 v8, v21

    move-object/from16 v7, v56

    move-object/from16 v14, v92

    const/16 v36, 0x1

    goto :goto_11

    .line 938
    :cond_29
    const-string v0, "#EXT-X-ENDLIST"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v80, v7

    move-object/from16 v79, v11

    move-object/from16 v76, v14

    move-object/from16 v8, v21

    move-object/from16 v7, v56

    move-object/from16 v14, v92

    const/16 v37, 0x1

    goto/16 :goto_11

    .line 940
    :cond_2a
    const-string v0, "#EXT-X-RENDITION-REPORT"

    invoke-virtual {v12, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 941
    sget-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_LAST_MSN:Ljava/util/regex/Pattern;

    move/from16 v80, v2

    move-object/from16 v79, v7

    const-wide/16 v1, -0x1

    invoke-static {v12, v0, v1, v2}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseOptionalLongAttr(Ljava/lang/String;Ljava/util/regex/Pattern;J)J

    move-result-wide v7

    .line 942
    sget-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_LAST_PART:Ljava/util/regex/Pattern;

    const/4 v1, -0x1

    invoke-static {v12, v0, v1}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseOptionalIntAttr(Ljava/lang/String;Ljava/util/regex/Pattern;I)I

    move-result v0

    .line 943
    sget-object v1, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_URI:Ljava/util/regex/Pattern;

    invoke-static {v12, v1, v3}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, p3

    .line 944
    invoke-static {v2, v1}, Landroidx/media3/common/util/UriUtil;->resolve(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 945
    new-instance v12, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$RenditionReport;

    invoke-direct {v12, v1, v7, v8, v0}, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$RenditionReport;-><init>(Landroid/net/Uri;JI)V

    invoke-interface {v6, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_12
    move-object/from16 v61, v3

    move-object/from16 v58, v10

    move-object v2, v15

    move-object/from16 v0, v79

    move-wide/from16 v7, v84

    const/4 v1, 0x0

    move-object/from16 v79, v5

    goto/16 :goto_8

    :cond_2b
    move/from16 v80, v2

    move-object/from16 v79, v7

    move-object/from16 v2, p3

    .line 946
    const-string v0, "#EXT-X-PRELOAD-HINT"

    invoke-virtual {v12, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_33

    if-eqz v5, :cond_2c

    :goto_13
    goto :goto_12

    .line 950
    :cond_2c
    sget-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_PRELOAD_HINT_TYPE:Ljava/util/regex/Pattern;

    invoke-static {v12, v0, v3}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 951
    const-string v1, "PART"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    goto :goto_13

    .line 954
    :cond_2d
    sget-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_URI:Ljava/util/regex/Pattern;

    invoke-static {v12, v0, v3}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v59

    .line 955
    sget-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_BYTERANGE_START:Ljava/util/regex/Pattern;

    const-wide/16 v7, -0x1

    .line 956
    invoke-static {v12, v0, v7, v8}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseOptionalLongAttr(Ljava/lang/String;Ljava/util/regex/Pattern;J)J

    move-result-wide v0

    .line 957
    sget-object v13, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_BYTERANGE_LENGTH:Ljava/util/regex/Pattern;

    .line 958
    invoke-static {v12, v13, v7, v8}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseOptionalLongAttr(Ljava/lang/String;Ljava/util/regex/Pattern;J)J

    move-result-wide v71

    move-wide/from16 v7, v84

    .line 961
    invoke-static {v7, v8, v14, v11}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->getSegmentEncryptionIV(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v68

    if-nez v41, :cond_2f

    .line 963
    invoke-virtual {v9}, Ljava/util/TreeMap;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_2f

    .line 964
    invoke-virtual {v9}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v12

    const/4 v13, 0x0

    new-array v2, v13, [Landroidx/media3/common/DrmInitData$SchemeData;

    invoke-interface {v12, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroidx/media3/common/DrmInitData$SchemeData;

    .line 965
    new-instance v12, Landroidx/media3/common/DrmInitData;

    move-object/from16 v13, v79

    invoke-direct {v12, v13, v2}, Landroidx/media3/common/DrmInitData;-><init>(Ljava/lang/String;[Landroidx/media3/common/DrmInitData$SchemeData;)V

    if-nez v38, :cond_2e

    .line 967
    invoke-static {v13, v2}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->getPlaylistProtectionSchemes(Ljava/lang/String;[Landroidx/media3/common/DrmInitData$SchemeData;)Landroidx/media3/common/DrmInitData;

    move-result-object v38

    :cond_2e
    move-object/from16 v41, v12

    goto :goto_14

    :cond_2f
    move-object/from16 v13, v79

    :goto_14
    const-wide/16 v43, -0x1

    cmp-long v2, v0, v43

    if-eqz v2, :cond_30

    cmp-long v12, v71, v43

    if-eqz v12, :cond_32

    .line 972
    :cond_30
    new-instance v5, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Part;

    if-eqz v2, :cond_31

    move-wide/from16 v69, v0

    goto :goto_15

    :cond_31
    move-wide/from16 v69, v16

    :goto_15
    const/16 v74, 0x0

    const/16 v75, 0x1

    const-wide/16 v61, 0x0

    const/16 v73, 0x0

    move-object/from16 v58, v5

    move-object/from16 v60, v87

    move/from16 v63, v81

    move-wide/from16 v64, v51

    move-object/from16 v66, v41

    move-object/from16 v67, v14

    .line 982
    invoke-direct/range {v58 .. v75}, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Part;-><init>(Ljava/lang/String;Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;JIJLandroidx/media3/common/DrmInitData;Ljava/lang/String;Ljava/lang/String;JJZZZ)V

    :cond_32
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v84, v7

    move-object/from16 v79, v11

    move-object/from16 v76, v14

    move-object/from16 v8, v21

    move-object/from16 v7, v56

    move/from16 v2, v80

    move-object/from16 v14, v92

    move-object/from16 v21, v10

    move-object/from16 v80, v13

    goto/16 :goto_6

    :cond_33
    move-object/from16 v0, v79

    move-wide/from16 v7, v84

    .line 988
    const-string v1, "#EXT-X-PART"

    invoke-virtual {v12, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 991
    invoke-static {v7, v8, v14, v11}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->getSegmentEncryptionIV(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v68

    .line 993
    sget-object v1, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_URI:Ljava/util/regex/Pattern;

    invoke-static {v12, v1, v3}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v59

    .line 994
    sget-object v1, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_ATTR_DURATION:Ljava/util/regex/Pattern;

    .line 995
    invoke-static {v12, v1}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseDoubleAttr(Ljava/lang/String;Ljava/util/regex/Pattern;)D

    move-result-wide v1

    mul-double v1, v1, v45

    double-to-long v1, v1

    move-object/from16 v79, v5

    .line 996
    sget-object v5, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_INDEPENDENT:Ljava/util/regex/Pattern;

    move-object/from16 v84, v6

    const/4 v6, 0x0

    .line 997
    invoke-static {v12, v5, v6}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseOptionalBooleanAttribute(Ljava/lang/String;Ljava/util/regex/Pattern;Z)Z

    move-result v5

    if-eqz v36, :cond_34

    .line 999
    invoke-interface/range {v56 .. v56}, Ljava/util/List;->isEmpty()Z

    move-result v43

    if-eqz v43, :cond_34

    const/16 v43, 0x1

    goto :goto_16

    :cond_34
    const/16 v43, 0x0

    :goto_16
    or-int v74, v5, v43

    .line 1000
    sget-object v5, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_GAP:Ljava/util/regex/Pattern;

    invoke-static {v12, v5, v6}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseOptionalBooleanAttribute(Ljava/lang/String;Ljava/util/regex/Pattern;Z)Z

    move-result v73

    .line 1002
    sget-object v5, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_ATTR_BYTERANGE:Ljava/util/regex/Pattern;

    invoke-static {v12, v5, v3}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_36

    .line 1005
    invoke-static {v5, v13}, Landroidx/media3/common/util/Util;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1006
    aget-object v12, v5, v6

    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    .line 1007
    array-length v6, v5

    move-wide/from16 v43, v12

    const/4 v12, 0x1

    if-le v6, v12, :cond_35

    .line 1008
    aget-object v5, v5, v12

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v90

    :cond_35
    const-wide/16 v12, -0x1

    goto :goto_17

    :cond_36
    const-wide/16 v12, -0x1

    const-wide/16 v43, -0x1

    :goto_17
    cmp-long v5, v43, v12

    if-nez v5, :cond_37

    move-wide/from16 v90, v16

    :cond_37
    if-nez v41, :cond_39

    .line 1014
    invoke-virtual {v9}, Ljava/util/TreeMap;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_39

    .line 1015
    invoke-virtual {v9}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v12

    const/4 v13, 0x0

    new-array v6, v13, [Landroidx/media3/common/DrmInitData$SchemeData;

    invoke-interface {v12, v6}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroidx/media3/common/DrmInitData$SchemeData;

    .line 1016
    new-instance v12, Landroidx/media3/common/DrmInitData;

    invoke-direct {v12, v0, v6}, Landroidx/media3/common/DrmInitData;-><init>(Ljava/lang/String;[Landroidx/media3/common/DrmInitData$SchemeData;)V

    if-nez v38, :cond_38

    .line 1018
    invoke-static {v0, v6}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->getPlaylistProtectionSchemes(Ljava/lang/String;[Landroidx/media3/common/DrmInitData$SchemeData;)Landroidx/media3/common/DrmInitData;

    move-result-object v38

    :cond_38
    move-object/from16 v41, v12

    .line 1021
    :cond_39
    new-instance v6, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Part;

    move-object/from16 v58, v6

    const/16 v75, 0x0

    move-object/from16 v60, v87

    move-wide/from16 v61, v1

    move/from16 v63, v81

    move-wide/from16 v64, v51

    move-object/from16 v66, v41

    move-object/from16 v67, v14

    move-wide/from16 v69, v90

    move-wide/from16 v71, v43

    invoke-direct/range {v58 .. v75}, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Part;-><init>(Ljava/lang/String;Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;JIJLandroidx/media3/common/DrmInitData;Ljava/lang/String;Ljava/lang/String;JJZZZ)V

    move-object/from16 v13, v56

    invoke-interface {v13, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-long v51, v51, v1

    if-eqz v5, :cond_3a

    add-long v90, v90, v43

    :cond_3a
    move-object/from16 v1, p1

    move-object/from16 v76, v14

    move-object/from16 v5, v79

    move/from16 v2, v80

    move-object/from16 v6, v84

    move-object/from16 v14, v92

    move-object/from16 v80, v0

    move-wide/from16 v84, v7

    move-object/from16 v79, v11

    move-object v7, v13

    move-object/from16 v8, v21

    goto/16 :goto_f

    :cond_3b
    move-object/from16 v79, v5

    move-object/from16 v84, v6

    move-object/from16 v13, v56

    .line 1040
    const-string v1, "#EXT-X-DATERANGE"

    invoke-virtual {v12, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_57

    sget-object v1, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_CLASS:Ljava/util/regex/Pattern;

    .line 1041
    invoke-static {v12, v1, v10, v3}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.apple.hls.interstitial"

    .line 1042
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_57

    .line 1043
    sget-object v1, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_ID:Ljava/util/regex/Pattern;

    invoke-static {v12, v1, v3}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v94

    .line 1045
    sget-object v1, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_ASSET_URI:Ljava/util/regex/Pattern;

    invoke-static {v12, v1, v3}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3c

    .line 1047
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object/from16 v95, v1

    goto :goto_18

    :cond_3c
    move-object/from16 v95, v20

    .line 1050
    :goto_18
    sget-object v1, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_ASSET_LIST_URI:Ljava/util/regex/Pattern;

    .line 1051
    invoke-static {v12, v1, v3}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3d

    .line 1053
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object/from16 v96, v1

    goto :goto_19

    :cond_3d
    move-object/from16 v96, v20

    .line 1055
    :goto_19
    sget-object v1, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_START_DATE:Ljava/util/regex/Pattern;

    .line 1056
    invoke-static {v12, v1, v3}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroidx/media3/common/util/Util;->parseXsDateTime(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Landroidx/media3/common/util/Util;->msToUs(J)J

    move-result-wide v97

    .line 1059
    sget-object v1, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_END_DATE:Ljava/util/regex/Pattern;

    .line 1060
    invoke-static {v12, v1, v3}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3e

    .line 1062
    invoke-static {v1}, Landroidx/media3/common/util/Util;->parseXsDateTime(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Landroidx/media3/common/util/Util;->msToUs(J)J

    move-result-wide v1

    move-wide/from16 v99, v1

    goto :goto_1a

    :cond_3e
    const-wide v99, -0x7fffffffffffffffL    # -4.9E-324

    .line 1064
    :goto_1a
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1065
    sget-object v2, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_CUE:Ljava/util/regex/Pattern;

    invoke-static {v12, v2, v3}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    .line 1066
    const-string v5, ","

    if-eqz v2, :cond_42

    .line 1067
    invoke-static {v2, v5}, Landroidx/media3/common/util/Util;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1068
    array-length v6, v2

    move-object/from16 v58, v10

    const/4 v10, 0x0

    :goto_1b
    if-ge v10, v6, :cond_43

    aget-object v48, v2, v10

    move-object/from16 v49, v2

    .line 1069
    invoke-virtual/range {v48 .. v48}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 1070
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v48

    sparse-switch v48, :sswitch_data_0

    move/from16 v48, v6

    :goto_1c
    const/4 v6, -0x1

    goto :goto_1e

    :sswitch_0
    move/from16 v48, v6

    const-string v6, "POST"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3f

    goto :goto_1d

    :cond_3f
    const/4 v6, 0x2

    goto :goto_1e

    :sswitch_1
    move/from16 v48, v6

    const-string v6, "ONCE"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_40

    goto :goto_1d

    :cond_40
    const/4 v6, 0x1

    goto :goto_1e

    :sswitch_2
    move/from16 v48, v6

    const-string v6, "PRE"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_41

    :goto_1d
    goto :goto_1c

    :cond_41
    const/4 v6, 0x0

    :goto_1e
    packed-switch v6, :pswitch_data_0

    goto :goto_1f

    .line 1074
    :pswitch_0
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1f
    add-int/lit8 v10, v10, 0x1

    move/from16 v6, v48

    move-object/from16 v2, v49

    goto :goto_1b

    :cond_42
    move-object/from16 v58, v10

    .line 1081
    :cond_43
    sget-object v2, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_ATTR_DURATION_PREFIXED:Ljava/util/regex/Pattern;

    move-object v6, v9

    const-wide/high16 v9, -0x4010000000000000L    # -1.0

    invoke-static {v12, v2, v9, v10}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseOptionalDoubleAttr(Ljava/lang/String;Ljava/util/regex/Pattern;D)D

    move-result-wide v48

    const-wide/16 v53, 0x0

    cmpl-double v2, v48, v53

    if-ltz v2, :cond_44

    mul-double v9, v48, v45

    double-to-long v9, v9

    move-wide/from16 v101, v9

    goto :goto_20

    :cond_44
    const-wide v101, -0x7fffffffffffffffL    # -4.9E-324

    .line 1086
    :goto_20
    sget-object v2, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_PLANNED_DURATION:Ljava/util/regex/Pattern;

    const-wide/high16 v9, -0x4010000000000000L    # -1.0

    invoke-static {v12, v2, v9, v10}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseOptionalDoubleAttr(Ljava/lang/String;Ljava/util/regex/Pattern;D)D

    move-result-wide v48

    cmpl-double v2, v48, v53

    if-ltz v2, :cond_45

    mul-double v9, v48, v45

    double-to-long v9, v9

    move-wide/from16 v103, v9

    goto :goto_21

    :cond_45
    const-wide v103, -0x7fffffffffffffffL    # -4.9E-324

    .line 1091
    :goto_21
    sget-object v2, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_END_ON_NEXT:Ljava/util/regex/Pattern;

    const/4 v9, 0x0

    invoke-static {v12, v2, v9}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseOptionalBooleanAttribute(Ljava/lang/String;Ljava/util/regex/Pattern;Z)Z

    move-result v106

    .line 1092
    sget-object v2, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_RESUME_OFFSET:Ljava/util/regex/Pattern;

    const-wide/16 v9, 0x1

    .line 1093
    invoke-static {v12, v2, v9, v10}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseOptionalDoubleAttr(Ljava/lang/String;Ljava/util/regex/Pattern;D)D

    move-result-wide v48

    cmpl-double v2, v48, v9

    if-eqz v2, :cond_46

    mul-double v9, v48, v45

    double-to-long v9, v9

    move-wide/from16 v107, v9

    goto :goto_22

    :cond_46
    const-wide v107, -0x7fffffffffffffffL    # -4.9E-324

    .line 1098
    :goto_22
    sget-object v2, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_PLAYOUT_LIMIT:Ljava/util/regex/Pattern;

    const-wide/high16 v9, -0x4010000000000000L    # -1.0

    invoke-static {v12, v2, v9, v10}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseOptionalDoubleAttr(Ljava/lang/String;Ljava/util/regex/Pattern;D)D

    move-result-wide v9

    cmpl-double v2, v9, v53

    if-ltz v2, :cond_47

    mul-double v9, v9, v45

    double-to-long v9, v9

    move-wide/from16 v109, v9

    goto :goto_23

    :cond_47
    const-wide v109, -0x7fffffffffffffffL    # -4.9E-324

    .line 1103
    :goto_23
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1104
    sget-object v9, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_SNAP:Ljava/util/regex/Pattern;

    invoke-static {v12, v9, v3}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_49

    .line 1106
    invoke-static {v9, v5}, Landroidx/media3/common/util/Util;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 1107
    array-length v10, v9

    move-object/from16 v59, v15

    const/4 v15, 0x0

    :goto_24
    if-ge v15, v10, :cond_4a

    aget-object v45, v9, v15

    move-object/from16 v46, v9

    .line 1108
    invoke-virtual/range {v45 .. v45}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .line 1109
    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move/from16 v45, v10

    const-string v10, "IN"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_48

    const-string v10, "OUT"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_48

    goto :goto_25

    .line 1112
    :cond_48
    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_25
    add-int/lit8 v15, v15, 0x1

    move/from16 v10, v45

    move-object/from16 v9, v46

    goto :goto_24

    :cond_49
    move-object/from16 v59, v15

    .line 1119
    :cond_4a
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1120
    sget-object v10, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_RESTRICT:Ljava/util/regex/Pattern;

    .line 1121
    invoke-static {v12, v10, v3}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_4c

    .line 1123
    invoke-static {v10, v5}, Landroidx/media3/common/util/Util;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1124
    array-length v10, v5

    const/4 v15, 0x0

    :goto_26
    if-ge v15, v10, :cond_4c

    aget-object v45, v5, v15

    move-object/from16 v46, v5

    .line 1125
    invoke-virtual/range {v45 .. v45}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 1126
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move/from16 v45, v10

    const-string v10, "JUMP"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4b

    const-string v10, "SKIP"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4b

    goto :goto_27

    .line 1129
    :cond_4b
    invoke-interface {v9, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_27
    add-int/lit8 v15, v15, 0x1

    move/from16 v10, v45

    move-object/from16 v5, v46

    goto :goto_26

    .line 1137
    :cond_4c
    new-instance v5, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct {v5}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    const/16 v10, 0x11

    .line 1139
    invoke-virtual {v12, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 1140
    sget-object v12, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_CLIENT_DEFINED_ATTRIBUTE_PREFIX:Ljava/util/regex/Pattern;

    invoke-virtual {v12, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v12

    .line 1141
    :goto_28
    invoke-virtual {v12}, Ljava/util/regex/Matcher;->find()Z

    move-result v15

    if-eqz v15, :cond_53

    .line 1142
    invoke-virtual {v12}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v15

    .line 1143
    invoke-virtual {v15}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v15}, Ljava/lang/String;->hashCode()I

    move-result v45

    sparse-switch v45, :sswitch_data_1

    move-object/from16 v45, v12

    :goto_29
    const/4 v12, -0x1

    goto :goto_2b

    :sswitch_3
    move-object/from16 v45, v12

    const-string v12, "X-ASSET-URI="

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_4d

    goto :goto_2a

    :cond_4d
    const/4 v12, 0x5

    goto :goto_2b

    :sswitch_4
    move-object/from16 v45, v12

    const-string v12, "X-RESUME-OFFSET="

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_4e

    goto :goto_2a

    :cond_4e
    const/4 v12, 0x4

    goto :goto_2b

    :sswitch_5
    move-object/from16 v45, v12

    const-string v12, "X-RESTRICT="

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_4f

    goto :goto_2a

    :cond_4f
    const/4 v12, 0x3

    goto :goto_2b

    :sswitch_6
    move-object/from16 v45, v12

    const-string v12, "X-ASSET-LIST="

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_50

    goto :goto_2a

    :cond_50
    const/4 v12, 0x2

    goto :goto_2b

    :sswitch_7
    move-object/from16 v45, v12

    const-string v12, "X-PLAYOUT-LIMIT="

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_51

    goto :goto_2a

    :cond_51
    const/4 v12, 0x1

    goto :goto_2b

    :sswitch_8
    move-object/from16 v45, v12

    const-string v12, "X-SNAP="

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_52

    :goto_2a
    goto :goto_29

    :cond_52
    const/4 v12, 0x0

    :goto_2b
    packed-switch v12, :pswitch_data_1

    .line 1156
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v12

    const/16 v46, 0x1

    add-int/lit8 v12, v12, -0x1

    move-object/from16 v56, v13

    const/4 v13, 0x0

    invoke-virtual {v15, v13, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 1154
    invoke-static {v10, v12, v3}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseClientDefinedAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$ClientDefinedAttribute;

    move-result-object v12

    .line 1153
    invoke-virtual {v5, v12}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    goto :goto_2c

    :pswitch_1
    move-object/from16 v56, v13

    :goto_2c
    move-object/from16 v12, v45

    move-object/from16 v13, v56

    goto/16 :goto_28

    :cond_53
    move-object/from16 v56, v13

    if-nez v96, :cond_54

    if-nez v95, :cond_55

    :cond_54
    if-eqz v96, :cond_56

    if-nez v95, :cond_56

    .line 1163
    :cond_55
    new-instance v10, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Interstitial;

    move-object/from16 v93, v10

    .line 1178
    invoke-virtual {v5}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v113

    move-object/from16 v105, v1

    move-object/from16 v111, v2

    move-object/from16 v112, v9

    invoke-direct/range {v93 .. v113}, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Interstitial;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;JJJJLjava/util/List;ZJJLjava/util/List;Ljava/util/List;Ljava/util/List;)V

    move-object/from16 v1, v92

    .line 1163
    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_30

    :cond_56
    move-object/from16 v1, v92

    goto/16 :goto_30

    :cond_57
    move-object v6, v9

    move-object/from16 v58, v10

    move-object/from16 v56, v13

    move-object/from16 v59, v15

    move-object/from16 v1, v92

    .line 1180
    const-string v2, "#"

    invoke-virtual {v12, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5e

    .line 1183
    invoke-static {v7, v8, v14, v11}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->getSegmentEncryptionIV(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    add-long v7, v7, v48

    .line 1186
    invoke-static {v12, v3}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->replaceVariableReferences(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v5

    .line 1187
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;

    const-wide/16 v12, -0x1

    cmp-long v10, v77, v12

    if-nez v10, :cond_58

    move-wide/from16 v12, v16

    goto :goto_2d

    :cond_58
    if-eqz v86, :cond_59

    if-nez v87, :cond_59

    if-nez v9, :cond_59

    .line 1197
    new-instance v9, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;

    const/16 v49, 0x0

    const/16 v50, 0x0

    const-wide/16 v45, 0x0

    move-object/from16 v43, v9

    move-object/from16 v44, v5

    move-wide/from16 v47, v39

    invoke-direct/range {v43 .. v50}, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;-><init>(Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)V

    .line 1204
    invoke-virtual {v4, v5, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_59
    move-wide/from16 v12, v39

    :goto_2d
    if-nez v41, :cond_5a

    .line 1207
    invoke-virtual {v6}, Ljava/util/TreeMap;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_5a

    .line 1208
    invoke-virtual {v6}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v15

    move-object/from16 v92, v1

    move-object/from16 v61, v3

    const/4 v1, 0x0

    new-array v3, v1, [Landroidx/media3/common/DrmInitData$SchemeData;

    invoke-interface {v15, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroidx/media3/common/DrmInitData$SchemeData;

    .line 1209
    new-instance v15, Landroidx/media3/common/DrmInitData;

    invoke-direct {v15, v0, v3}, Landroidx/media3/common/DrmInitData;-><init>(Ljava/lang/String;[Landroidx/media3/common/DrmInitData$SchemeData;)V

    if-nez v38, :cond_5b

    .line 1211
    invoke-static {v0, v3}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->getPlaylistProtectionSchemes(Ljava/lang/String;[Landroidx/media3/common/DrmInitData$SchemeData;)Landroidx/media3/common/DrmInitData;

    move-result-object v38

    goto :goto_2e

    :cond_5a
    move-object/from16 v92, v1

    move-object/from16 v61, v3

    const/4 v1, 0x0

    move-object/from16 v15, v41

    .line 1215
    :cond_5b
    :goto_2e
    new-instance v3, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;

    if-eqz v87, :cond_5c

    move-object/from16 v41, v87

    goto :goto_2f

    :cond_5c
    move-object/from16 v41, v9

    :goto_2f
    move-object/from16 v39, v3

    move-object/from16 v40, v5

    move-wide/from16 v43, v88

    move/from16 v45, v81

    move-wide/from16 v46, v82

    move-object/from16 v48, v15

    move-object/from16 v49, v14

    move-object/from16 v50, v2

    move-wide/from16 v51, v12

    move-wide/from16 v53, v77

    .line 1218
    invoke-direct/range {v39 .. v56}, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;-><init>(Ljava/lang/String;Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;Ljava/lang/String;JIJLandroidx/media3/common/DrmInitData;Ljava/lang/String;Ljava/lang/String;JJZLjava/util/List;)V

    move-object/from16 v2, v59

    .line 1215
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-long v51, v82, v88

    .line 1234
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    if-eqz v10, :cond_5d

    add-long v12, v12, v77

    :cond_5d
    move-wide/from16 v39, v12

    move-object/from16 v1, p1

    move-object v9, v6

    move-object/from16 v76, v14

    move-object/from16 v41, v15

    move-wide/from16 v88, v16

    move-wide/from16 v82, v51

    move-object/from16 v42, v58

    move-object/from16 v5, v79

    move-object/from16 v6, v84

    move-object/from16 v14, v92

    const/4 v10, 0x0

    const/16 v55, 0x0

    const-wide/16 v77, -0x1

    move-object v15, v2

    move-wide/from16 v84, v7

    move-object/from16 v79, v11

    move-object/from16 v8, v21

    move-object/from16 v21, v42

    move/from16 v2, v80

    move-object/from16 v80, v0

    move-object v7, v3

    move-object/from16 v3, v61

    goto :goto_32

    :cond_5e
    :goto_30
    move-object/from16 v92, v1

    move-object/from16 v61, v3

    move-object/from16 v2, v59

    const/4 v1, 0x0

    :goto_31
    move-object/from16 v1, p1

    move-object v15, v2

    move-object v9, v6

    move-object/from16 v76, v14

    move-object/from16 v3, v61

    move-object/from16 v5, v79

    move/from16 v2, v80

    move-object/from16 v6, v84

    move-object/from16 v14, v92

    const/4 v10, 0x0

    move-object/from16 v80, v0

    move-wide/from16 v84, v7

    move-object/from16 v79, v11

    move-object/from16 v8, v21

    move-object/from16 v7, v56

    move-object/from16 v21, v58

    :goto_32
    move-object/from16 v0, p0

    goto/16 :goto_0

    :cond_5f
    move/from16 v80, v2

    move-object/from16 v79, v5

    move-object/from16 v84, v6

    move-object/from16 v56, v7

    move-object/from16 v21, v8

    move-object/from16 v92, v14

    move-object v2, v15

    const/4 v1, 0x0

    .line 1243
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v3, 0x0

    .line 1244
    :goto_33
    invoke-interface/range {v84 .. v84}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_63

    move-object/from16 v4, v84

    .line 1245
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$RenditionReport;

    .line 1246
    iget-wide v6, v5, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$RenditionReport;->lastMediaSequence:J

    const-wide/16 v8, -0x1

    cmp-long v10, v6, v8

    if-nez v10, :cond_60

    .line 1248
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    int-to-long v6, v6

    add-long v6, v29, v6

    invoke-interface/range {v56 .. v56}, Ljava/util/List;->isEmpty()Z

    move-result v10

    int-to-long v10, v10

    sub-long/2addr v6, v10

    .line 1250
    :cond_60
    iget v10, v5, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$RenditionReport;->lastPartIndex:I

    const/4 v11, -0x1

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    if-ne v10, v11, :cond_62

    cmp-long v14, v34, v12

    if-eqz v14, :cond_62

    .line 1253
    invoke-interface/range {v56 .. v56}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_61

    invoke-static {v2}, Lcom/google/common/collect/Iterables;->getLast(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;

    iget-object v10, v10, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;->parts:Ljava/util/List;

    goto :goto_34

    :cond_61
    move-object/from16 v10, v56

    .line 1254
    :goto_34
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    const/4 v14, 0x1

    sub-int/2addr v10, v14

    goto :goto_35

    :cond_62
    const/4 v14, 0x1

    .line 1256
    :goto_35
    iget-object v15, v5, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$RenditionReport;->playlistUri:Landroid/net/Uri;

    new-instance v1, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$RenditionReport;

    iget-object v5, v5, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$RenditionReport;->playlistUri:Landroid/net/Uri;

    invoke-direct {v1, v5, v6, v7, v10}, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$RenditionReport;-><init>(Landroid/net/Uri;JI)V

    invoke-interface {v0, v15, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v84, v4

    const/4 v1, 0x0

    goto :goto_33

    :cond_63
    const/4 v14, 0x1

    move-object/from16 v7, v56

    if-eqz v79, :cond_64

    move-object/from16 v5, v79

    .line 1262
    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1265
    :cond_64
    new-instance v1, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;

    cmp-long v3, v25, v16

    if-eqz v3, :cond_65

    const/16 v76, 0x1

    goto :goto_36

    :cond_65
    const/16 v76, 0x0

    :goto_36
    move-object v5, v1

    move/from16 v6, v80

    move-object/from16 v56, v7

    move-object/from16 v7, p3

    move-object/from16 v8, v21

    move-wide/from16 v9, v22

    move/from16 v11, v24

    move-wide/from16 v12, v25

    move-object/from16 v3, v92

    move/from16 v14, v27

    move/from16 v15, v28

    move-wide/from16 v16, v29

    move/from16 v18, v31

    move-wide/from16 v19, v32

    move-wide/from16 v21, v34

    move/from16 v23, v36

    move/from16 v24, v37

    move/from16 v25, v76

    move-object/from16 v26, v38

    move-object/from16 v27, v2

    move-object/from16 v28, v56

    move-object/from16 v29, v57

    move-object/from16 v30, v0

    move-object/from16 v31, v3

    invoke-direct/range {v5 .. v31}, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;-><init>(ILjava/lang/String;Ljava/util/List;JZJZIJIJJZZZLandroidx/media3/common/DrmInitData;Ljava/util/List;Ljava/util/List;Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$ServerControl;Ljava/util/Map;Ljava/util/List;)V

    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x13683 -> :sswitch_2
        0x251681 -> :sswitch_1
        0x2590a0 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x7f5b7c02 -> :sswitch_8
        -0x8e0f436 -> :sswitch_7
        0x17ad642d -> :sswitch_6
        0x57c501cc -> :sswitch_5
        0x6837ce7f -> :sswitch_4
        0x6c2295e3 -> :sswitch_3
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private static parseMultivariantPlaylist(Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$LineIterator;Ljava/lang/String;)Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;
    .locals 36
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p1

    .line 385
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 386
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 387
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 388
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 389
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 390
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 391
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 392
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 393
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 394
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const/4 v10, 0x0

    const/4 v13, 0x0

    .line 401
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$LineIterator;->hasNext()Z

    move-result v14

    const-string v15, "/"

    const-string v9, "application/x-mpegURL"

    move/from16 v17, v10

    if-eqz v14, :cond_14

    .line 402
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$LineIterator;->next()Ljava/lang/String;

    move-result-object v14

    .line 404
    const-string v10, "#EXT"

    invoke-virtual {v14, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 406
    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 408
    :cond_0
    const-string v10, "#EXT-X-I-FRAME-STREAM-INF"

    invoke-virtual {v14, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    move-object/from16 v20, v7

    .line 410
    const-string v7, "#EXT-X-DEFINE"

    invoke-virtual {v14, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 411
    sget-object v7, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_NAME:Ljava/util/regex/Pattern;

    .line 412
    invoke-static {v14, v7, v11}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v7

    sget-object v9, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_VALUE:Ljava/util/regex/Pattern;

    .line 413
    invoke-static {v14, v9, v11}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v9

    .line 411
    invoke-virtual {v11, v7, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 414
    :cond_1
    const-string v7, "#EXT-X-INDEPENDENT-SEGMENTS"

    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    move-object/from16 v34, v3

    move-object/from16 v33, v4

    move-object/from16 v32, v5

    move-object/from16 v31, v6

    move-object/from16 v30, v8

    move-object/from16 v29, v12

    const/4 v10, 0x1

    goto/16 :goto_d

    .line 416
    :cond_2
    const-string v7, "#EXT-X-MEDIA"

    invoke-virtual {v14, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 419
    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 420
    :cond_3
    const-string v7, "#EXT-X-SESSION-KEY"

    invoke-virtual {v14, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 421
    sget-object v7, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_KEYFORMAT:Ljava/util/regex/Pattern;

    const-string v9, "identity"

    .line 422
    invoke-static {v14, v7, v9, v11}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v7

    .line 423
    invoke-static {v14, v7, v11}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseDrmSchemeData(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Landroidx/media3/common/DrmInitData$SchemeData;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 425
    sget-object v9, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_METHOD:Ljava/util/regex/Pattern;

    invoke-static {v14, v9, v11}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v9

    .line 426
    invoke-static {v9}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseEncryptionScheme(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 427
    new-instance v10, Landroidx/media3/common/DrmInitData;

    const/4 v14, 0x1

    new-array v14, v14, [Landroidx/media3/common/DrmInitData$SchemeData;

    const/4 v15, 0x0

    aput-object v7, v14, v15

    invoke-direct {v10, v9, v14}, Landroidx/media3/common/DrmInitData;-><init>(Ljava/lang/String;[Landroidx/media3/common/DrmInitData$SchemeData;)V

    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 429
    :cond_4
    const-string v7, "#EXT-X-STREAM-INF"

    invoke-virtual {v14, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_6

    if-eqz v10, :cond_5

    goto :goto_2

    :cond_5
    :goto_1
    move-object/from16 v34, v3

    move-object/from16 v33, v4

    move-object/from16 v32, v5

    move-object/from16 v31, v6

    move-object/from16 v30, v8

    move-object/from16 v29, v12

    move/from16 v10, v17

    goto/16 :goto_d

    .line 430
    :cond_6
    :goto_2
    const-string v7, "CLOSED-CAPTIONS=NONE"

    invoke-virtual {v14, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    or-int/2addr v13, v7

    if-eqz v10, :cond_7

    const/16 v7, 0x4000

    move/from16 v21, v13

    goto :goto_3

    :cond_7
    move/from16 v21, v13

    const/4 v7, 0x0

    .line 432
    :goto_3
    sget-object v13, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_BANDWIDTH:Ljava/util/regex/Pattern;

    invoke-static {v14, v13}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseIntAttr(Ljava/lang/String;Ljava/util/regex/Pattern;)I

    move-result v13

    move-object/from16 v29, v12

    .line 433
    sget-object v12, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_AVERAGE_BANDWIDTH:Ljava/util/regex/Pattern;

    move-object/from16 v30, v8

    const/4 v8, -0x1

    invoke-static {v14, v12, v8}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseOptionalIntAttr(Ljava/lang/String;Ljava/util/regex/Pattern;I)I

    move-result v12

    .line 434
    sget-object v8, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_VIDEO_RANGE:Ljava/util/regex/Pattern;

    invoke-static {v14, v8, v11}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v31, v6

    .line 435
    sget-object v6, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_CODECS:Ljava/util/regex/Pattern;

    invoke-static {v14, v6, v11}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v32, v5

    .line 436
    sget-object v5, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_SUPPLEMENTAL_CODECS:Ljava/util/regex/Pattern;

    .line 437
    invoke-static {v14, v5, v11}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v33, v4

    .line 440
    const-string v4, ","

    if-eqz v5, :cond_9

    .line 441
    invoke-static {v5, v4}, Landroidx/media3/common/util/Util;->splitAtFirst(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/16 v16, 0x0

    .line 443
    aget-object v5, v5, v16

    invoke-static {v5, v15}, Landroidx/media3/common/util/Util;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 444
    aget-object v15, v5, v16

    move-object/from16 v22, v15

    .line 445
    array-length v15, v5

    move-object/from16 v34, v3

    const/4 v3, 0x1

    if-le v15, v3, :cond_8

    .line 446
    aget-object v5, v5, v3

    move-object/from16 v35, v0

    move-object/from16 v3, v22

    goto :goto_5

    :cond_8
    move-object/from16 v35, v0

    move-object/from16 v3, v22

    goto :goto_4

    :cond_9
    move-object/from16 v34, v3

    move-object/from16 v35, v0

    const/4 v3, 0x0

    :goto_4
    const/4 v5, 0x0

    :goto_5
    const/4 v15, 0x2

    .line 449
    invoke-static {v6, v15}, Landroidx/media3/common/util/Util;->getCodecsOfType(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 450
    invoke-static {v8, v0, v3, v5}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->isDolbyVisionFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c

    if-eqz v3, :cond_a

    goto :goto_6

    :cond_a
    move-object v3, v0

    .line 453
    :goto_6
    invoke-static {v6, v15}, Landroidx/media3/common/util/Util;->getCodecsWithoutType(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 454
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    goto :goto_7

    :cond_b
    move-object v6, v3

    .line 457
    :cond_c
    :goto_7
    sget-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_RESOLUTION:Ljava/util/regex/Pattern;

    .line 458
    invoke-static {v14, v0, v11}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 462
    const-string v3, "x"

    invoke-static {v0, v3}, Landroidx/media3/common/util/Util;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    .line 463
    aget-object v4, v0, v3

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    .line 464
    aget-object v0, v0, v4

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-lez v3, :cond_e

    if-gtz v0, :cond_d

    goto :goto_8

    :cond_d
    move/from16 v19, v3

    goto :goto_9

    :cond_e
    :goto_8
    const/4 v0, -0x1

    const/16 v19, -0x1

    :goto_9
    move v3, v0

    move/from16 v0, v19

    goto :goto_a

    :cond_f
    const/4 v0, -0x1

    const/4 v3, -0x1

    .line 475
    :goto_a
    sget-object v4, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_FRAME_RATE:Ljava/util/regex/Pattern;

    .line 476
    invoke-static {v14, v4, v11}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_10

    .line 478
    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    goto :goto_b

    :cond_10
    const/high16 v4, -0x40800000    # -1.0f

    .line 480
    :goto_b
    sget-object v5, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_VIDEO:Ljava/util/regex/Pattern;

    invoke-static {v14, v5, v11}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v5

    .line 481
    sget-object v8, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_AUDIO:Ljava/util/regex/Pattern;

    invoke-static {v14, v8, v11}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v8

    .line 482
    sget-object v15, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_SUBTITLES:Ljava/util/regex/Pattern;

    .line 483
    invoke-static {v14, v15, v11}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v18, v15

    .line 484
    sget-object v15, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_CLOSED_CAPTIONS:Ljava/util/regex/Pattern;

    .line 485
    invoke-static {v14, v15, v11}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v15

    if-eqz v10, :cond_11

    .line 488
    sget-object v10, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_URI:Ljava/util/regex/Pattern;

    .line 489
    invoke-static {v14, v10, v11}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v10}, Landroidx/media3/common/util/UriUtil;->resolveToUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    goto :goto_c

    .line 490
    :cond_11
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$LineIterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_13

    .line 495
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$LineIterator;->next()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v11}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->replaceVariableReferences(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v10

    .line 496
    invoke-static {v1, v10}, Landroidx/media3/common/util/UriUtil;->resolveToUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 499
    :goto_c
    new-instance v14, Landroidx/media3/common/Format$Builder;

    invoke-direct {v14}, Landroidx/media3/common/Format$Builder;-><init>()V

    .line 501
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v14, v1}, Landroidx/media3/common/Format$Builder;->setId(I)Landroidx/media3/common/Format$Builder;

    move-result-object v1

    .line 502
    invoke-virtual {v1, v9}, Landroidx/media3/common/Format$Builder;->setContainerMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v1

    .line 503
    invoke-virtual {v1, v6}, Landroidx/media3/common/Format$Builder;->setCodecs(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v1

    .line 504
    invoke-virtual {v1, v12}, Landroidx/media3/common/Format$Builder;->setAverageBitrate(I)Landroidx/media3/common/Format$Builder;

    move-result-object v1

    .line 505
    invoke-virtual {v1, v13}, Landroidx/media3/common/Format$Builder;->setPeakBitrate(I)Landroidx/media3/common/Format$Builder;

    move-result-object v1

    .line 506
    invoke-virtual {v1, v0}, Landroidx/media3/common/Format$Builder;->setWidth(I)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    .line 507
    invoke-virtual {v0, v3}, Landroidx/media3/common/Format$Builder;->setHeight(I)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    .line 508
    invoke-virtual {v0, v4}, Landroidx/media3/common/Format$Builder;->setFrameRate(F)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    .line 509
    invoke-virtual {v0, v7}, Landroidx/media3/common/Format$Builder;->setRoleFlags(I)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    .line 510
    invoke-virtual {v0}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v24

    .line 511
    new-instance v0, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;

    move-object/from16 v22, v0

    move-object/from16 v23, v10

    move-object/from16 v25, v5

    move-object/from16 v26, v8

    move-object/from16 v27, v18

    move-object/from16 v28, v15

    invoke-direct/range {v22 .. v28}, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;-><init>(Landroid/net/Uri;Landroidx/media3/common/Format;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v35

    .line 515
    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-nez v1, :cond_12

    .line 517
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 518
    invoke-virtual {v0, v10, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 520
    :cond_12
    new-instance v3, Landroidx/media3/exoplayer/hls/HlsTrackMetadataEntry$VariantInfo;

    move-object/from16 v22, v3

    move/from16 v23, v12

    move/from16 v24, v13

    move-object/from16 v25, v5

    move-object/from16 v26, v8

    move-object/from16 v27, v18

    move-object/from16 v28, v15

    invoke-direct/range {v22 .. v28}, Landroidx/media3/exoplayer/hls/HlsTrackMetadataEntry$VariantInfo;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v10, v17

    move/from16 v13, v21

    :goto_d
    move-object/from16 v1, p1

    move-object/from16 v7, v20

    move-object/from16 v12, v29

    move-object/from16 v8, v30

    move-object/from16 v6, v31

    move-object/from16 v5, v32

    move-object/from16 v4, v33

    move-object/from16 v3, v34

    goto/16 :goto_0

    .line 491
    :cond_13
    const-string v0, "#EXT-X-STREAM-INF must be followed by another line"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/media3/common/ParserException;->createForMalformedManifest(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_14
    move-object/from16 v34, v3

    move-object/from16 v33, v4

    move-object/from16 v32, v5

    move-object/from16 v31, v6

    move-object/from16 v20, v7

    move-object/from16 v30, v8

    move-object/from16 v29, v12

    .line 532
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 533
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    const/4 v4, 0x0

    .line 534
    :goto_e
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_17

    .line 535
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;

    .line 536
    iget-object v6, v5, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;->url:Landroid/net/Uri;

    invoke-virtual {v1, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_16

    .line 537
    iget-object v6, v5, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;->format:Landroidx/media3/common/Format;

    iget-object v6, v6, Landroidx/media3/common/Format;->metadata:Landroidx/media3/common/Metadata;

    if-nez v6, :cond_15

    const/4 v6, 0x1

    goto :goto_f

    :cond_15
    const/4 v6, 0x0

    :goto_f
    invoke-static {v6}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 538
    new-instance v6, Landroidx/media3/exoplayer/hls/HlsTrackMetadataEntry;

    iget-object v7, v5, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;->url:Landroid/net/Uri;

    .line 542
    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    invoke-static {v7}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    const/4 v8, 0x0

    invoke-direct {v6, v8, v8, v7}, Landroidx/media3/exoplayer/hls/HlsTrackMetadataEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 543
    new-instance v7, Landroidx/media3/common/Metadata;

    const/4 v10, 0x1

    new-array v12, v10, [Landroidx/media3/common/Metadata$Entry;

    const/4 v10, 0x0

    aput-object v6, v12, v10

    invoke-direct {v7, v12}, Landroidx/media3/common/Metadata;-><init>([Landroidx/media3/common/Metadata$Entry;)V

    .line 544
    iget-object v6, v5, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;->format:Landroidx/media3/common/Format;

    invoke-virtual {v6}, Landroidx/media3/common/Format;->buildUpon()Landroidx/media3/common/Format$Builder;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroidx/media3/common/Format$Builder;->setMetadata(Landroidx/media3/common/Metadata;)Landroidx/media3/common/Format$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v6

    .line 545
    invoke-virtual {v5, v6}, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;->copyWithFormat(Landroidx/media3/common/Format;)Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_10

    :cond_16
    const/4 v8, 0x0

    :goto_10
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    :cond_17
    const/4 v8, 0x0

    move-object v1, v8

    move-object v10, v1

    const/4 v0, 0x0

    .line 549
    :goto_11
    invoke-virtual/range {v34 .. v34}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_29

    move-object/from16 v4, v34

    .line 550
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 551
    sget-object v6, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_GROUP_ID:Ljava/util/regex/Pattern;

    invoke-static {v5, v6, v11}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v6

    .line 552
    sget-object v7, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_NAME:Ljava/util/regex/Pattern;

    invoke-static {v5, v7, v11}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v7

    .line 553
    new-instance v12, Landroidx/media3/common/Format$Builder;

    invoke-direct {v12}, Landroidx/media3/common/Format$Builder;-><init>()V

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ":"

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 555
    invoke-virtual {v12, v8}, Landroidx/media3/common/Format$Builder;->setId(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v8

    .line 556
    invoke-virtual {v8, v7}, Landroidx/media3/common/Format$Builder;->setLabel(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v8

    .line 557
    invoke-virtual {v8, v9}, Landroidx/media3/common/Format$Builder;->setContainerMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v8

    .line 558
    invoke-static {v5}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseSelectionFlags(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v8, v12}, Landroidx/media3/common/Format$Builder;->setSelectionFlags(I)Landroidx/media3/common/Format$Builder;

    move-result-object v8

    .line 559
    invoke-static {v5, v11}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseRoleFlags(Ljava/lang/String;Ljava/util/Map;)I

    move-result v12

    invoke-virtual {v8, v12}, Landroidx/media3/common/Format$Builder;->setRoleFlags(I)Landroidx/media3/common/Format$Builder;

    move-result-object v8

    sget-object v12, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_LANGUAGE:Ljava/util/regex/Pattern;

    .line 560
    invoke-static {v5, v12, v11}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Landroidx/media3/common/Format$Builder;->setLanguage(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v8

    .line 562
    sget-object v12, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_URI:Ljava/util/regex/Pattern;

    invoke-static {v5, v12, v11}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v14, p1

    if-nez v12, :cond_18

    move-object/from16 v34, v4

    const/4 v12, 0x0

    goto :goto_12

    .line 563
    :cond_18
    invoke-static {v14, v12}, Landroidx/media3/common/util/UriUtil;->resolveToUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    move-object/from16 v34, v4

    .line 564
    :goto_12
    new-instance v4, Landroidx/media3/common/Metadata;

    move-object/from16 v21, v9

    const/4 v9, 0x1

    new-array v14, v9, [Landroidx/media3/common/Metadata$Entry;

    new-instance v9, Landroidx/media3/exoplayer/hls/HlsTrackMetadataEntry;

    move-object/from16 p0, v10

    .line 565
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v10

    invoke-direct {v9, v6, v7, v10}, Landroidx/media3/exoplayer/hls/HlsTrackMetadataEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    const/4 v10, 0x0

    aput-object v9, v14, v10

    invoke-direct {v4, v14}, Landroidx/media3/common/Metadata;-><init>([Landroidx/media3/common/Metadata$Entry;)V

    .line 566
    sget-object v9, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_TYPE:Ljava/util/regex/Pattern;

    invoke-static {v5, v9, v11}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v10

    const/4 v14, 0x3

    sparse-switch v10, :sswitch_data_0

    :goto_13
    const/4 v9, -0x1

    goto :goto_14

    :sswitch_0
    const-string v10, "VIDEO"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_19

    goto :goto_13

    :cond_19
    const/4 v9, 0x3

    goto :goto_14

    :sswitch_1
    const-string v10, "AUDIO"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1a

    goto :goto_13

    :cond_1a
    const/4 v9, 0x2

    goto :goto_14

    :sswitch_2
    const-string v10, "CLOSED-CAPTIONS"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1b

    goto :goto_13

    :cond_1b
    const/4 v9, 0x1

    goto :goto_14

    :sswitch_3
    const-string v10, "SUBTITLES"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1c

    goto :goto_13

    :cond_1c
    const/4 v9, 0x0

    :goto_14
    packed-switch v9, :pswitch_data_0

    :goto_15
    move-object/from16 v6, v31

    move-object/from16 v9, v32

    const/4 v5, 0x2

    const/16 v16, 0x0

    goto/16 :goto_1b

    .line 568
    :pswitch_0
    invoke-static {v2, v6}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->getVariantWithVideoGroup(Ljava/util/ArrayList;Ljava/lang/String;)Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;

    move-result-object v5

    if-eqz v5, :cond_1d

    .line 570
    iget-object v5, v5, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;->format:Landroidx/media3/common/Format;

    .line 572
    iget-object v9, v5, Landroidx/media3/common/Format;->codecs:Ljava/lang/String;

    const/4 v10, 0x2

    invoke-static {v9, v10}, Landroidx/media3/common/util/Util;->getCodecsOfType(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    .line 574
    invoke-virtual {v8, v9}, Landroidx/media3/common/Format$Builder;->setCodecs(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v10

    .line 575
    invoke-static {v9}, Landroidx/media3/common/MimeTypes;->getMediaMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v9

    iget v10, v5, Landroidx/media3/common/Format;->width:I

    .line 576
    invoke-virtual {v9, v10}, Landroidx/media3/common/Format$Builder;->setWidth(I)Landroidx/media3/common/Format$Builder;

    move-result-object v9

    iget v10, v5, Landroidx/media3/common/Format;->height:I

    .line 577
    invoke-virtual {v9, v10}, Landroidx/media3/common/Format$Builder;->setHeight(I)Landroidx/media3/common/Format$Builder;

    move-result-object v9

    iget v5, v5, Landroidx/media3/common/Format;->frameRate:F

    .line 578
    invoke-virtual {v9, v5}, Landroidx/media3/common/Format$Builder;->setFrameRate(F)Landroidx/media3/common/Format$Builder;

    :cond_1d
    if-nez v12, :cond_1e

    goto :goto_15

    .line 583
    :cond_1e
    invoke-virtual {v8, v4}, Landroidx/media3/common/Format$Builder;->setMetadata(Landroidx/media3/common/Metadata;)Landroidx/media3/common/Format$Builder;

    .line 584
    new-instance v4, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Rendition;

    invoke-virtual {v8}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v5

    invoke-direct {v4, v12, v5, v6, v7}, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Rendition;-><init>(Landroid/net/Uri;Landroidx/media3/common/Format;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v9, v33

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_15

    :pswitch_1
    move-object/from16 v9, v33

    .line 589
    invoke-static {v2, v6}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->getVariantWithAudioGroup(Ljava/util/ArrayList;Ljava/lang/String;)Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;

    move-result-object v10

    if-eqz v10, :cond_1f

    .line 592
    iget-object v14, v10, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;->format:Landroidx/media3/common/Format;

    iget-object v14, v14, Landroidx/media3/common/Format;->codecs:Ljava/lang/String;

    move-object/from16 v33, v9

    const/4 v9, 0x1

    invoke-static {v14, v9}, Landroidx/media3/common/util/Util;->getCodecsOfType(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    .line 593
    invoke-virtual {v8, v14}, Landroidx/media3/common/Format$Builder;->setCodecs(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    .line 594
    invoke-static {v14}, Landroidx/media3/common/MimeTypes;->getMediaMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    goto :goto_16

    :cond_1f
    move-object/from16 v33, v9

    const/4 v14, 0x0

    .line 597
    :goto_16
    sget-object v9, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_CHANNELS:Ljava/util/regex/Pattern;

    .line 598
    invoke-static {v5, v9, v11}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_20

    .line 600
    invoke-static {v5, v15}, Landroidx/media3/common/util/Util;->splitAtFirst(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    const/16 v16, 0x0

    aget-object v9, v9, v16

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 601
    invoke-virtual {v8, v9}, Landroidx/media3/common/Format$Builder;->setChannelCount(I)Landroidx/media3/common/Format$Builder;

    .line 602
    const-string v9, "audio/eac3"

    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_21

    const-string v9, "/JOC"

    invoke-virtual {v5, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_21

    .line 604
    const-string v5, "ec+3"

    invoke-virtual {v8, v5}, Landroidx/media3/common/Format$Builder;->setCodecs(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    const-string v14, "audio/eac3-joc"

    goto :goto_17

    :cond_20
    const/16 v16, 0x0

    .line 607
    :cond_21
    :goto_17
    invoke-virtual {v8, v14}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    if-eqz v12, :cond_22

    .line 609
    invoke-virtual {v8, v4}, Landroidx/media3/common/Format$Builder;->setMetadata(Landroidx/media3/common/Metadata;)Landroidx/media3/common/Format$Builder;

    .line 610
    new-instance v4, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Rendition;

    invoke-virtual {v8}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v5

    invoke-direct {v4, v12, v5, v6, v7}, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Rendition;-><init>(Landroid/net/Uri;Landroidx/media3/common/Format;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v9, v32

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_18

    :cond_22
    move-object/from16 v9, v32

    if-eqz v10, :cond_23

    .line 613
    invoke-virtual {v8}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v10

    move-object/from16 v6, v31

    const/4 v5, 0x2

    goto/16 :goto_1c

    :cond_23
    :goto_18
    move-object/from16 v6, v31

    const/4 v5, 0x2

    goto/16 :goto_1b

    :pswitch_2
    move-object/from16 v9, v32

    const/16 v16, 0x0

    .line 636
    sget-object v4, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_INSTREAM_ID:Ljava/util/regex/Pattern;

    invoke-static {v5, v4, v11}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    .line 638
    const-string v5, "CC"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_24

    const/4 v5, 0x2

    .line 640
    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const-string v6, "application/cea-608"

    goto :goto_19

    :cond_24
    const/4 v5, 0x2

    const/4 v6, 0x7

    .line 643
    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const-string v6, "application/cea-708"

    :goto_19
    if-nez v1, :cond_25

    .line 646
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 649
    :cond_25
    invoke-virtual {v8, v6}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v6

    .line 650
    invoke-virtual {v6, v4}, Landroidx/media3/common/Format$Builder;->setAccessibilityChannel(I)Landroidx/media3/common/Format$Builder;

    .line 651
    invoke-virtual {v8}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v10, p0

    move-object/from16 v6, v31

    goto :goto_1c

    :pswitch_3
    move-object/from16 v9, v32

    const/4 v5, 0x2

    const/16 v16, 0x0

    .line 618
    invoke-static {v2, v6}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->getVariantWithSubtitleGroup(Ljava/util/ArrayList;Ljava/lang/String;)Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;

    move-result-object v10

    if-eqz v10, :cond_26

    .line 621
    iget-object v10, v10, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;->format:Landroidx/media3/common/Format;

    iget-object v10, v10, Landroidx/media3/common/Format;->codecs:Ljava/lang/String;

    invoke-static {v10, v14}, Landroidx/media3/common/util/Util;->getCodecsOfType(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    .line 622
    invoke-virtual {v8, v10}, Landroidx/media3/common/Format$Builder;->setCodecs(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    .line 623
    invoke-static {v10}, Landroidx/media3/common/MimeTypes;->getMediaMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    goto :goto_1a

    :cond_26
    const/4 v10, 0x0

    :goto_1a
    if-nez v10, :cond_27

    .line 626
    const-string v10, "text/vtt"

    .line 628
    :cond_27
    invoke-virtual {v8, v10}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v10

    invoke-virtual {v10, v4}, Landroidx/media3/common/Format$Builder;->setMetadata(Landroidx/media3/common/Metadata;)Landroidx/media3/common/Format$Builder;

    if-eqz v12, :cond_28

    .line 630
    new-instance v4, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Rendition;

    invoke-virtual {v8}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v8

    invoke-direct {v4, v12, v8, v6, v7}, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Rendition;-><init>(Landroid/net/Uri;Landroidx/media3/common/Format;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v6, v31

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    :cond_28
    move-object/from16 v6, v31

    .line 632
    const-string v4, "HlsPlaylistParser"

    const-string v7, "EXT-X-MEDIA tag with missing mandatory URI attribute: skipping"

    invoke-static {v4, v7}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1b
    move-object/from16 v10, p0

    :goto_1c
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v31, v6

    move-object/from16 v32, v9

    move-object/from16 v9, v21

    const/4 v8, 0x0

    goto/16 :goto_11

    :cond_29
    move-object/from16 p0, v10

    move-object/from16 v6, v31

    move-object/from16 v9, v32

    if-eqz v13, :cond_2a

    .line 661
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    move-object v10, v0

    goto :goto_1d

    :cond_2a
    move-object v10, v1

    .line 664
    :goto_1d
    new-instance v13, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;

    move-object v0, v13

    move-object/from16 v1, p1

    move-object/from16 v2, v30

    move-object/from16 v4, v33

    move-object v5, v9

    move-object/from16 v7, v20

    move-object/from16 v8, p0

    move-object v9, v10

    move/from16 v10, v17

    move-object/from16 v12, v29

    invoke-direct/range {v0 .. v12}, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroidx/media3/common/Format;Ljava/util/List;ZLjava/util/Map;Ljava/util/List;)V

    return-object v13

    :sswitch_data_0
    .sparse-switch
        -0x392db8c5 -> :sswitch_3
        -0x13dc6572 -> :sswitch_2
        0x3bba3b6 -> :sswitch_1
        0x4de1c5b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static parseOptionalBooleanAttribute(Ljava/lang/String;Ljava/util/regex/Pattern;Z)Z
    .locals 0

    .line 1526
    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 1527
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 1528
    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "YES"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    return p2
.end method

.method private static parseOptionalDoubleAttr(Ljava/lang/String;Ljava/util/regex/Pattern;D)D
    .locals 0

    .line 1470
    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 1471
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 1472
    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p0

    return-wide p0

    :cond_0
    return-wide p2
.end method

.method private static parseOptionalIntAttr(Ljava/lang/String;Ljava/util/regex/Pattern;I)I
    .locals 0

    .line 1410
    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 1411
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 1412
    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    return p2
.end method

.method private static parseOptionalLongAttr(Ljava/lang/String;Ljava/util/regex/Pattern;J)J
    .locals 0

    .line 1422
    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 1423
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 1424
    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0

    :cond_0
    return-wide p2
.end method

.method private static parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/regex/Pattern;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1462
    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 1463
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object p2, p0

    check-cast p2, Ljava/lang/String;

    .line 1464
    :cond_0
    invoke-interface {p3}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_2

    if-nez p2, :cond_1

    goto :goto_0

    .line 1466
    :cond_1
    invoke-static {p2, p3}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->replaceVariableReferences(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p2

    :cond_2
    :goto_0
    return-object p2
.end method

.method private static parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/regex/Pattern;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1454
    invoke-static {p0, p1, v0, p2}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static parseRoleFlags(Ljava/lang/String;Ljava/util/Map;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 1327
    sget-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_CHARACTERISTICS:Ljava/util/regex/Pattern;

    .line 1328
    invoke-static {p0, v0, p1}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    .line 1329
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    return v0

    .line 1332
    :cond_0
    const-string p1, ","

    invoke-static {p0, p1}, Landroidx/media3/common/util/Util;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 1334
    const-string p1, "public.accessibility.describes-video"

    invoke-static {p0, p1}, Landroidx/media3/common/util/Util;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 v0, 0x200

    .line 1337
    :cond_1
    const-string p1, "public.accessibility.transcribes-spoken-dialog"

    invoke-static {p0, p1}, Landroidx/media3/common/util/Util;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    or-int/lit16 v0, v0, 0x1000

    .line 1340
    :cond_2
    const-string p1, "public.accessibility.describes-music-and-sound"

    invoke-static {p0, p1}, Landroidx/media3/common/util/Util;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    or-int/lit16 v0, v0, 0x400

    .line 1343
    :cond_3
    const-string p1, "public.easy-to-read"

    invoke-static {p0, p1}, Landroidx/media3/common/util/Util;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    or-int/lit16 v0, v0, 0x2000

    :cond_4
    return v0
.end method

.method private static parseSelectionFlags(Ljava/lang/String;)I
    .locals 3

    .line 1313
    sget-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_DEFAULT:Ljava/util/regex/Pattern;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseOptionalBooleanAttribute(Ljava/lang/String;Ljava/util/regex/Pattern;Z)Z

    move-result v0

    .line 1316
    sget-object v2, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_FORCED:Ljava/util/regex/Pattern;

    invoke-static {p0, v2, v1}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseOptionalBooleanAttribute(Ljava/lang/String;Ljava/util/regex/Pattern;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    or-int/lit8 v0, v0, 0x2

    .line 1319
    :cond_0
    sget-object v2, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_AUTOSELECT:Ljava/util/regex/Pattern;

    invoke-static {p0, v2, v1}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseOptionalBooleanAttribute(Ljava/lang/String;Ljava/util/regex/Pattern;Z)Z

    move-result p0

    if-eqz p0, :cond_1

    or-int/lit8 v0, v0, 0x4

    :cond_1
    return v0
.end method

.method private static parseServerControl(Ljava/lang/String;)Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$ServerControl;
    .locals 19

    move-object/from16 v0, p0

    .line 1373
    sget-object v1, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_CAN_SKIP_UNTIL:Ljava/util/regex/Pattern;

    const-wide/high16 v2, -0x3c20000000000000L    # -9.223372036854776E18

    .line 1374
    invoke-static {v0, v1, v2, v3}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseOptionalDoubleAttr(Ljava/lang/String;Ljava/util/regex/Pattern;D)D

    move-result-wide v4

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v8, 0x412e848000000000L    # 1000000.0

    cmpl-double v1, v4, v2

    if-nez v1, :cond_0

    move-wide v11, v6

    goto :goto_0

    :cond_0
    mul-double v4, v4, v8

    double-to-long v4, v4

    move-wide v11, v4

    .line 1379
    :goto_0
    sget-object v1, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_CAN_SKIP_DATE_RANGES:Ljava/util/regex/Pattern;

    const/4 v4, 0x0

    .line 1380
    invoke-static {v0, v1, v4}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseOptionalBooleanAttribute(Ljava/lang/String;Ljava/util/regex/Pattern;Z)Z

    move-result v13

    .line 1381
    sget-object v1, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_HOLD_BACK:Ljava/util/regex/Pattern;

    .line 1382
    invoke-static {v0, v1, v2, v3}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseOptionalDoubleAttr(Ljava/lang/String;Ljava/util/regex/Pattern;D)D

    move-result-wide v14

    cmpl-double v1, v14, v2

    if-nez v1, :cond_1

    move-wide v14, v6

    goto :goto_1

    :cond_1
    mul-double v14, v14, v8

    double-to-long v14, v14

    .line 1387
    :goto_1
    sget-object v1, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_PART_HOLD_BACK:Ljava/util/regex/Pattern;

    invoke-static {v0, v1, v2, v3}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseOptionalDoubleAttr(Ljava/lang/String;Ljava/util/regex/Pattern;D)D

    move-result-wide v16

    cmpl-double v1, v16, v2

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    mul-double v1, v16, v8

    double-to-long v6, v1

    :goto_2
    move-wide/from16 v16, v6

    .line 1392
    sget-object v1, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_CAN_BLOCK_RELOAD:Ljava/util/regex/Pattern;

    .line 1393
    invoke-static {v0, v1, v4}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseOptionalBooleanAttribute(Ljava/lang/String;Ljava/util/regex/Pattern;Z)Z

    move-result v18

    .line 1395
    new-instance v0, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$ServerControl;

    move-object v10, v0

    invoke-direct/range {v10 .. v18}, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$ServerControl;-><init>(JZJJZ)V

    return-object v0
.end method

.method private static parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/regex/Pattern;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 1442
    invoke-static {p0, p1, p2}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    return-object p2

    .line 1446
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Couldn\'t match "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1447
    invoke-virtual {p1}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " in "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    .line 1446
    invoke-static {p0, p1}, Landroidx/media3/common/ParserException;->createForMalformedManifest(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object p0

    throw p0
.end method

.method private static parseTimeSecondsToUs(Ljava/lang/String;Ljava/util/regex/Pattern;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 1430
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-static {p0, p1, v0}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    .line 1431
    new-instance p1, Ljava/math/BigDecimal;

    invoke-direct {p1, p0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 1432
    new-instance p0, Ljava/math/BigDecimal;

    const-wide/32 v0, 0xf4240

    invoke-direct {p0, v0, v1}, Ljava/math/BigDecimal;-><init>(J)V

    invoke-virtual {p1, p0}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigDecimal;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method private static replaceVariableReferences(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1508
    sget-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_VARIABLE_REFERENCE:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 1510
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1511
    :cond_0
    :goto_0
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 1512
    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 1513
    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1515
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/util/regex/Matcher;->quoteReplacement(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1514
    invoke-virtual {p0, v0, v1}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    goto :goto_0

    .line 1520
    :cond_1
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 1521
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static skipIgnorableWhitespace(Ljava/io/BufferedReader;ZI)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    .line 353
    invoke-static {p2}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    invoke-static {p2}, Landroidx/media3/common/util/Util;->isLinebreak(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 354
    :cond_0
    invoke-virtual {p0}, Ljava/io/BufferedReader;->read()I

    move-result p2

    goto :goto_0

    :cond_1
    return p2
.end method


# virtual methods
.method public parse(Landroid/net/Uri;Ljava/io/InputStream;)Landroidx/media3/exoplayer/hls/playlist/HlsPlaylist;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 290
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 291
    new-instance p2, Ljava/util/ArrayDeque;

    invoke-direct {p2}, Ljava/util/ArrayDeque;-><init>()V

    .line 294
    :try_start_0
    invoke-static {v0}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->checkPlaylistHeader(Ljava/io/BufferedReader;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    .line 298
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 299
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 300
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 302
    :cond_0
    const-string v3, "#EXT-X-STREAM-INF"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 303
    invoke-interface {p2, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 304
    new-instance v1, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$LineIterator;

    invoke-direct {v1, p2, v0}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$LineIterator;-><init>(Ljava/util/Queue;Ljava/io/BufferedReader;)V

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseMultivariantPlaylist(Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$LineIterator;Ljava/lang/String;)Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 324
    invoke-static {v0}, Landroidx/media3/common/util/Util;->closeQuietly(Ljava/io/Closeable;)V

    return-object p1

    .line 305
    :cond_1
    :try_start_1
    const-string v3, "#EXT-X-TARGETDURATION"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "#EXT-X-MEDIA-SEQUENCE"

    .line 306
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "#EXTINF"

    .line 307
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "#EXT-X-KEY"

    .line 308
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "#EXT-X-BYTERANGE"

    .line 309
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "#EXT-X-DISCONTINUITY"

    .line 310
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "#EXT-X-DISCONTINUITY-SEQUENCE"

    .line 311
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "#EXT-X-ENDLIST"

    .line 312
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    .line 320
    :cond_2
    invoke-interface {p2, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 313
    :cond_3
    :goto_1
    invoke-interface {p2, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 314
    iget-object v1, p0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->multivariantPlaylist:Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;

    iget-object v2, p0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->previousMediaPlaylist:Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;

    new-instance v3, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$LineIterator;

    invoke-direct {v3, p2, v0}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$LineIterator;-><init>(Ljava/util/Queue;Ljava/io/BufferedReader;)V

    .line 318
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    .line 314
    invoke-static {v1, v2, v3, p1}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parseMediaPlaylist(Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$LineIterator;Ljava/lang/String;)Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 324
    invoke-static {v0}, Landroidx/media3/common/util/Util;->closeQuietly(Ljava/io/Closeable;)V

    return-object p1

    :cond_4
    invoke-static {v0}, Landroidx/media3/common/util/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 326
    const-string p1, "Failed to parse the playlist, could not identify any tags."

    invoke-static {p1, v2}, Landroidx/media3/common/ParserException;->createForMalformedManifest(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object p1

    throw p1

    .line 295
    :cond_5
    :try_start_2
    const-string p1, "Input does not start with the #EXTM3U header."

    invoke-static {p1, v2}, Landroidx/media3/common/ParserException;->createForMalformedManifest(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object p1

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    .line 324
    invoke-static {v0}, Landroidx/media3/common/util/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 325
    throw p1
.end method

.method public bridge synthetic parse(Landroid/net/Uri;Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 76
    invoke-virtual {p0, p1, p2}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->parse(Landroid/net/Uri;Ljava/io/InputStream;)Landroidx/media3/exoplayer/hls/playlist/HlsPlaylist;

    move-result-object p1

    return-object p1
.end method
