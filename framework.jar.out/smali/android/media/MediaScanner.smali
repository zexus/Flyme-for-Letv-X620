.class public Landroid/media/MediaScanner;
.super Ljava/lang/Object;
.source "MediaScanner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaScanner$FileEntry;,
        Landroid/media/MediaScanner$PlaylistEntry;,
        Landroid/media/MediaScanner$MyMediaScannerClient;,
        Landroid/media/MediaScanner$MediaBulkDeleter;,
        Landroid/media/MediaScanner$WplHandler;
    }
.end annotation


# static fields
.field private static final ALARMS_DIR:Ljava/lang/String; = "/alarms/"

.field private static final ALARM_SET:Ljava/lang/String; = "alarm_set"

.field private static final DATE_MODIFIED_PLAYLISTS_COLUMN_INDEX:I = 0x2

.field private static final DEFAULT_RINGTONE_PROPERTY_PREFIX:Ljava/lang/String; = "ro.config."

.field private static final ENABLE_BULK_INSERTS:Z = true

.field private static final FILES_PRESCAN_DATE_MODIFIED_COLUMN_INDEX:I = 0x3

.field private static final FILES_PRESCAN_FORMAT_COLUMN_INDEX:I = 0x2

.field private static final FILES_PRESCAN_ID_COLUMN_INDEX:I = 0x0

.field private static final FILES_PRESCAN_PATH_COLUMN_INDEX:I = 0x1

.field private static final FILES_PRESCAN_PROJECTION:[Ljava/lang/String;

.field private static final ID3_GENRES:[Ljava/lang/String;

.field private static final ID_PLAYLISTS_COLUMN_INDEX:I = 0x0

.field private static final ID_PROJECTION:[Ljava/lang/String;

.field public static final IS_SUPPORT_DRM:Z

.field private static final MIME_APPLICATION_OCTET_STREAM:Ljava/lang/String; = "application/octet-stream"

.field private static final MUSIC_DIR:Ljava/lang/String; = "/music/"

.field private static final NOTIFICATIONS_DIR:Ljava/lang/String; = "/notifications/"

.field private static final NOTIFICATION_MAIL_SET:Ljava/lang/String; = "notification_mail_set"

.field private static final NOTIFICATION_SET:Ljava/lang/String; = "notification_set"

.field private static final NOTIFICATION_SMS_SET:Ljava/lang/String; = "notification_sms_set"

.field private static final NOTI_TYPE_EMAIL:I = 0x3

.field private static final NOTI_TYPE_NOTIFICATION:I = 0x1

.field private static final NOTI_TYPE_SMS:I = 0x2

.field private static final PATH_PLAYLISTS_COLUMN_INDEX:I = 0x1

.field private static final PLAYLIST_MEMBERS_PROJECTION:[Ljava/lang/String;

.field private static final PODCAST_DIR:Ljava/lang/String; = "/podcasts/"

.field private static final RINGTONES_DIR:Ljava/lang/String; = "/ringtones/"

.field private static final RINGTONE_SET:Ljava/lang/String; = "ringtone_set"

.field private static final TAG:Ljava/lang/String; = "MediaScanner"

.field private static mMediaPaths:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mNoMediaPaths:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAudioUri:Landroid/net/Uri;

.field private final mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

.field private mCaseInsensitivePaths:Z

.field private final mClient:Landroid/media/MediaScanner$MyMediaScannerClient;

.field private mContext:Landroid/content/Context;

.field private mContext1:I

.field private mDefaultAlarmAlertFilename:Ljava/lang/String;

.field private mDefaultAlarmSet:Z

.field private mDefaultMailFilename:Ljava/lang/String;

.field private mDefaultNotificationFilename:Ljava/lang/String;

.field private mDefaultNotificationMailSet:Z

.field private mDefaultNotificationSet:Z

.field private mDefaultNotificationSmsSet:Z

.field private mDefaultRingtoneFilename:Ljava/lang/String;

.field private mDefaultRingtoneSet:Z

.field private mDefaultSmsFilename:Ljava/lang/String;

.field private mDrmManagerClient:Landroid/drm/DrmManagerClient;

.field private final mExternalIsEmulated:Z

.field private final mExternalStoragePath:Ljava/lang/String;

.field private mFilesUri:Landroid/net/Uri;

.field private mFilesUriNoNotify:Landroid/net/Uri;

.field private mImagesUri:Landroid/net/Uri;

.field private mLimitBmpFileSize:J

.field private mLimitGifFileSize:J

.field private mMediaInserter:Landroid/media/MediaInserter;

.field private mMediaProvider:Landroid/content/IContentProvider;

.field private mMtpObjectHandle:I

.field private mNativeContext:J

.field private mNotfType:I

.field private mOriginalCount:I

.field private mOriginalVideoCount:I

.field private mPackageName:Ljava/lang/String;

.field private mPlayLists:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/MediaScanner$FileEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mPlaylistEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/MediaScanner$PlaylistEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mPlaylistFilePathList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPlaylistsUri:Landroid/net/Uri;

.field private mProcessGenres:Z

.field private mProcessPlaylists:Z

.field private mThumbsUri:Landroid/net/Uri;

.field private mVideoThumbsUri:Landroid/net/Uri;

.field private mVideoUri:Landroid/net/Uri;

.field private mWasEmptyPriorToScan:Z


# direct methods
.method static synthetic -get0()[Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/media/MediaScanner;->ID3_GENRES:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Landroid/media/MediaScanner;)Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Landroid/media/MediaScanner;->mAudioUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic -get10(Landroid/media/MediaScanner;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/media/MediaScanner;->mDefaultNotificationSmsSet:Z

    return v0
.end method

.method static synthetic -get11(Landroid/media/MediaScanner;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/media/MediaScanner;->mDefaultRingtoneFilename:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get12(Landroid/media/MediaScanner;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/media/MediaScanner;->mDefaultRingtoneSet:Z

    return v0
.end method

.method static synthetic -get13(Landroid/media/MediaScanner;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/media/MediaScanner;->mDefaultSmsFilename:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get14(Landroid/media/MediaScanner;)Landroid/drm/DrmManagerClient;
    .locals 1

    iget-object v0, p0, Landroid/media/MediaScanner;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    return-object v0
.end method

.method static synthetic -get15(Landroid/media/MediaScanner;)Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Landroid/media/MediaScanner;->mFilesUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic -get16(Landroid/media/MediaScanner;)Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Landroid/media/MediaScanner;->mImagesUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic -get17(Landroid/media/MediaScanner;)J
    .locals 2

    iget-wide v0, p0, Landroid/media/MediaScanner;->mLimitBmpFileSize:J

    return-wide v0
.end method

.method static synthetic -get18(Landroid/media/MediaScanner;)J
    .locals 2

    iget-wide v0, p0, Landroid/media/MediaScanner;->mLimitGifFileSize:J

    return-wide v0
.end method

.method static synthetic -get19(Landroid/media/MediaScanner;)Landroid/media/MediaInserter;
    .locals 1

    iget-object v0, p0, Landroid/media/MediaScanner;->mMediaInserter:Landroid/media/MediaInserter;

    return-object v0
.end method

.method static synthetic -get2(Landroid/media/MediaScanner;)Landroid/graphics/BitmapFactory$Options;
    .locals 1

    iget-object v0, p0, Landroid/media/MediaScanner;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    return-object v0
.end method

.method static synthetic -get20(Landroid/media/MediaScanner;)Landroid/content/IContentProvider;
    .locals 1

    iget-object v0, p0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    return-object v0
.end method

.method static synthetic -get21(Landroid/media/MediaScanner;)I
    .locals 1

    iget v0, p0, Landroid/media/MediaScanner;->mMtpObjectHandle:I

    return v0
.end method

.method static synthetic -get22(Landroid/media/MediaScanner;)I
    .locals 1

    iget v0, p0, Landroid/media/MediaScanner;->mNotfType:I

    return v0
.end method

.method static synthetic -get23(Landroid/media/MediaScanner;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/media/MediaScanner;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get24(Landroid/media/MediaScanner;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Landroid/media/MediaScanner;->mPlayLists:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get25(Landroid/media/MediaScanner;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Landroid/media/MediaScanner;->mPlaylistFilePathList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get26(Landroid/media/MediaScanner;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/media/MediaScanner;->mProcessGenres:Z

    return v0
.end method

.method static synthetic -get27(Landroid/media/MediaScanner;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/media/MediaScanner;->mProcessPlaylists:Z

    return v0
.end method

.method static synthetic -get28(Landroid/media/MediaScanner;)Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Landroid/media/MediaScanner;->mVideoUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic -get29(Landroid/media/MediaScanner;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/media/MediaScanner;->mWasEmptyPriorToScan:Z

    return v0
.end method

.method static synthetic -get3(Landroid/media/MediaScanner;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/media/MediaScanner;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get4(Landroid/media/MediaScanner;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/media/MediaScanner;->mDefaultAlarmAlertFilename:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get5(Landroid/media/MediaScanner;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/media/MediaScanner;->mDefaultAlarmSet:Z

    return v0
.end method

.method static synthetic -get6(Landroid/media/MediaScanner;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/media/MediaScanner;->mDefaultMailFilename:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get7(Landroid/media/MediaScanner;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/media/MediaScanner;->mDefaultNotificationFilename:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get8(Landroid/media/MediaScanner;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/media/MediaScanner;->mDefaultNotificationMailSet:Z

    return v0
.end method

.method static synthetic -get9(Landroid/media/MediaScanner;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/media/MediaScanner;->mDefaultNotificationSet:Z

    return v0
.end method

.method static synthetic -set0(Landroid/media/MediaScanner;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/media/MediaScanner;->mDefaultAlarmSet:Z

    return p1
.end method

.method static synthetic -set1(Landroid/media/MediaScanner;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/media/MediaScanner;->mDefaultNotificationMailSet:Z

    return p1
.end method

.method static synthetic -set2(Landroid/media/MediaScanner;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/media/MediaScanner;->mDefaultNotificationSet:Z

    return p1
.end method

.method static synthetic -set3(Landroid/media/MediaScanner;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/media/MediaScanner;->mDefaultNotificationSmsSet:Z

    return p1
.end method

.method static synthetic -set4(Landroid/media/MediaScanner;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/media/MediaScanner;->mDefaultRingtoneSet:Z

    return p1
.end method

.method static synthetic -set5(Landroid/media/MediaScanner;Landroid/drm/DrmManagerClient;)Landroid/drm/DrmManagerClient;
    .locals 0

    iput-object p1, p0, Landroid/media/MediaScanner;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    return-object p1
.end method

.method static synthetic -set6(Landroid/media/MediaScanner;I)I
    .locals 0

    iput p1, p0, Landroid/media/MediaScanner;->mNotfType:I

    return p1
.end method

.method static synthetic -wrap0(Landroid/media/MediaScanner;)Z
    .locals 1

    invoke-direct {p0}, Landroid/media/MediaScanner;->isDrmEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Ljava/lang/String;)Z
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    invoke-static {p0}, Landroid/media/MediaScanner;->isNoMediaFile(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Landroid/media/MediaScanner;Ljava/lang/String;)Z
    .locals 1
    .param p1, "mimetype"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Landroid/media/MediaScanner;->isValueslessMimeType(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Landroid/media/MediaScanner;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "line"    # Ljava/lang/String;
    .param p2, "playListDirectory"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/media/MediaScanner;->cachePlaylistEntry(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap4(Landroid/media/MediaScanner;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaScannerClient;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "client"    # Landroid/media/MediaScannerClient;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/media/MediaScanner;->processFile(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaScannerClient;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 123
    const-string/jumbo v0, "media_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 124
    invoke-static {}, Landroid/media/MediaScanner;->native_init()V

    .line 129
    new-array v0, v6, [Ljava/lang/String;

    .line 130
    const-string/jumbo v1, "_id"

    aput-object v1, v0, v2

    .line 131
    const-string/jumbo v1, "_data"

    aput-object v1, v0, v3

    .line 132
    const-string/jumbo v1, "format"

    aput-object v1, v0, v4

    .line 133
    const-string/jumbo v1, "date_modified"

    aput-object v1, v0, v5

    .line 129
    sput-object v0, Landroid/media/MediaScanner;->FILES_PRESCAN_PROJECTION:[Ljava/lang/String;

    .line 136
    new-array v0, v3, [Ljava/lang/String;

    .line 137
    const-string/jumbo v1, "_id"

    aput-object v1, v0, v2

    .line 136
    sput-object v0, Landroid/media/MediaScanner;->ID_PROJECTION:[Ljava/lang/String;

    .line 150
    new-array v0, v3, [Ljava/lang/String;

    .line 151
    const-string/jumbo v1, "playlist_id"

    aput-object v1, v0, v2

    .line 150
    sput-object v0, Landroid/media/MediaScanner;->PLAYLIST_MEMBERS_PROJECTION:[Ljava/lang/String;

    .line 164
    const/16 v0, 0x94

    new-array v0, v0, [Ljava/lang/String;

    .line 166
    const-string/jumbo v1, "Blues"

    aput-object v1, v0, v2

    .line 167
    const-string/jumbo v1, "Classic Rock"

    aput-object v1, v0, v3

    .line 168
    const-string/jumbo v1, "Country"

    aput-object v1, v0, v4

    .line 169
    const-string/jumbo v1, "Dance"

    aput-object v1, v0, v5

    .line 170
    const-string/jumbo v1, "Disco"

    aput-object v1, v0, v6

    .line 171
    const-string/jumbo v1, "Funk"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 172
    const-string/jumbo v1, "Grunge"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 173
    const-string/jumbo v1, "Hip-Hop"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 174
    const-string/jumbo v1, "Jazz"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 175
    const-string/jumbo v1, "Metal"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 176
    const-string/jumbo v1, "New Age"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 177
    const-string/jumbo v1, "Oldies"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 178
    const-string/jumbo v1, "Other"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 179
    const-string/jumbo v1, "Pop"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 180
    const-string/jumbo v1, "R&B"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    .line 181
    const-string/jumbo v1, "Rap"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 182
    const-string/jumbo v1, "Reggae"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    .line 183
    const-string/jumbo v1, "Rock"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    .line 184
    const-string/jumbo v1, "Techno"

    const/16 v2, 0x12

    aput-object v1, v0, v2

    .line 185
    const-string/jumbo v1, "Industrial"

    const/16 v2, 0x13

    aput-object v1, v0, v2

    .line 186
    const-string/jumbo v1, "Alternative"

    const/16 v2, 0x14

    aput-object v1, v0, v2

    .line 187
    const-string/jumbo v1, "Ska"

    const/16 v2, 0x15

    aput-object v1, v0, v2

    .line 188
    const-string/jumbo v1, "Death Metal"

    const/16 v2, 0x16

    aput-object v1, v0, v2

    .line 189
    const-string/jumbo v1, "Pranks"

    const/16 v2, 0x17

    aput-object v1, v0, v2

    .line 190
    const-string/jumbo v1, "Soundtrack"

    const/16 v2, 0x18

    aput-object v1, v0, v2

    .line 191
    const-string/jumbo v1, "Euro-Techno"

    const/16 v2, 0x19

    aput-object v1, v0, v2

    .line 192
    const-string/jumbo v1, "Ambient"

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    .line 193
    const-string/jumbo v1, "Trip-Hop"

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    .line 194
    const-string/jumbo v1, "Vocal"

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    .line 195
    const-string/jumbo v1, "Jazz+Funk"

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    .line 196
    const-string/jumbo v1, "Fusion"

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    .line 197
    const-string/jumbo v1, "Trance"

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    .line 198
    const-string/jumbo v1, "Classical"

    const/16 v2, 0x20

    aput-object v1, v0, v2

    .line 199
    const-string/jumbo v1, "Instrumental"

    const/16 v2, 0x21

    aput-object v1, v0, v2

    .line 200
    const-string/jumbo v1, "Acid"

    const/16 v2, 0x22

    aput-object v1, v0, v2

    .line 201
    const-string/jumbo v1, "House"

    const/16 v2, 0x23

    aput-object v1, v0, v2

    .line 202
    const-string/jumbo v1, "Game"

    const/16 v2, 0x24

    aput-object v1, v0, v2

    .line 203
    const-string/jumbo v1, "Sound Clip"

    const/16 v2, 0x25

    aput-object v1, v0, v2

    .line 204
    const-string/jumbo v1, "Gospel"

    const/16 v2, 0x26

    aput-object v1, v0, v2

    .line 205
    const-string/jumbo v1, "Noise"

    const/16 v2, 0x27

    aput-object v1, v0, v2

    .line 206
    const-string/jumbo v1, "AlternRock"

    const/16 v2, 0x28

    aput-object v1, v0, v2

    .line 207
    const-string/jumbo v1, "Bass"

    const/16 v2, 0x29

    aput-object v1, v0, v2

    .line 208
    const-string/jumbo v1, "Soul"

    const/16 v2, 0x2a

    aput-object v1, v0, v2

    .line 209
    const-string/jumbo v1, "Punk"

    const/16 v2, 0x2b

    aput-object v1, v0, v2

    .line 210
    const-string/jumbo v1, "Space"

    const/16 v2, 0x2c

    aput-object v1, v0, v2

    .line 211
    const-string/jumbo v1, "Meditative"

    const/16 v2, 0x2d

    aput-object v1, v0, v2

    .line 212
    const-string/jumbo v1, "Instrumental Pop"

    const/16 v2, 0x2e

    aput-object v1, v0, v2

    .line 213
    const-string/jumbo v1, "Instrumental Rock"

    const/16 v2, 0x2f

    aput-object v1, v0, v2

    .line 214
    const-string/jumbo v1, "Ethnic"

    const/16 v2, 0x30

    aput-object v1, v0, v2

    .line 215
    const-string/jumbo v1, "Gothic"

    const/16 v2, 0x31

    aput-object v1, v0, v2

    .line 216
    const-string/jumbo v1, "Darkwave"

    const/16 v2, 0x32

    aput-object v1, v0, v2

    .line 217
    const-string/jumbo v1, "Techno-Industrial"

    const/16 v2, 0x33

    aput-object v1, v0, v2

    .line 218
    const-string/jumbo v1, "Electronic"

    const/16 v2, 0x34

    aput-object v1, v0, v2

    .line 219
    const-string/jumbo v1, "Pop-Folk"

    const/16 v2, 0x35

    aput-object v1, v0, v2

    .line 220
    const-string/jumbo v1, "Eurodance"

    const/16 v2, 0x36

    aput-object v1, v0, v2

    .line 221
    const-string/jumbo v1, "Dream"

    const/16 v2, 0x37

    aput-object v1, v0, v2

    .line 222
    const-string/jumbo v1, "Southern Rock"

    const/16 v2, 0x38

    aput-object v1, v0, v2

    .line 223
    const-string/jumbo v1, "Comedy"

    const/16 v2, 0x39

    aput-object v1, v0, v2

    .line 224
    const-string/jumbo v1, "Cult"

    const/16 v2, 0x3a

    aput-object v1, v0, v2

    .line 225
    const-string/jumbo v1, "Gangsta"

    const/16 v2, 0x3b

    aput-object v1, v0, v2

    .line 226
    const-string/jumbo v1, "Top 40"

    const/16 v2, 0x3c

    aput-object v1, v0, v2

    .line 227
    const-string/jumbo v1, "Christian Rap"

    const/16 v2, 0x3d

    aput-object v1, v0, v2

    .line 228
    const-string/jumbo v1, "Pop/Funk"

    const/16 v2, 0x3e

    aput-object v1, v0, v2

    .line 229
    const-string/jumbo v1, "Jungle"

    const/16 v2, 0x3f

    aput-object v1, v0, v2

    .line 230
    const-string/jumbo v1, "Native American"

    const/16 v2, 0x40

    aput-object v1, v0, v2

    .line 231
    const-string/jumbo v1, "Cabaret"

    const/16 v2, 0x41

    aput-object v1, v0, v2

    .line 232
    const-string/jumbo v1, "New Wave"

    const/16 v2, 0x42

    aput-object v1, v0, v2

    .line 233
    const-string/jumbo v1, "Psychadelic"

    const/16 v2, 0x43

    aput-object v1, v0, v2

    .line 234
    const-string/jumbo v1, "Rave"

    const/16 v2, 0x44

    aput-object v1, v0, v2

    .line 235
    const-string/jumbo v1, "Showtunes"

    const/16 v2, 0x45

    aput-object v1, v0, v2

    .line 236
    const-string/jumbo v1, "Trailer"

    const/16 v2, 0x46

    aput-object v1, v0, v2

    .line 237
    const-string/jumbo v1, "Lo-Fi"

    const/16 v2, 0x47

    aput-object v1, v0, v2

    .line 238
    const-string/jumbo v1, "Tribal"

    const/16 v2, 0x48

    aput-object v1, v0, v2

    .line 239
    const-string/jumbo v1, "Acid Punk"

    const/16 v2, 0x49

    aput-object v1, v0, v2

    .line 240
    const-string/jumbo v1, "Acid Jazz"

    const/16 v2, 0x4a

    aput-object v1, v0, v2

    .line 241
    const-string/jumbo v1, "Polka"

    const/16 v2, 0x4b

    aput-object v1, v0, v2

    .line 242
    const-string/jumbo v1, "Retro"

    const/16 v2, 0x4c

    aput-object v1, v0, v2

    .line 243
    const-string/jumbo v1, "Musical"

    const/16 v2, 0x4d

    aput-object v1, v0, v2

    .line 244
    const-string/jumbo v1, "Rock & Roll"

    const/16 v2, 0x4e

    aput-object v1, v0, v2

    .line 245
    const-string/jumbo v1, "Hard Rock"

    const/16 v2, 0x4f

    aput-object v1, v0, v2

    .line 247
    const-string/jumbo v1, "Folk"

    const/16 v2, 0x50

    aput-object v1, v0, v2

    .line 248
    const-string/jumbo v1, "Folk-Rock"

    const/16 v2, 0x51

    aput-object v1, v0, v2

    .line 249
    const-string/jumbo v1, "National Folk"

    const/16 v2, 0x52

    aput-object v1, v0, v2

    .line 250
    const-string/jumbo v1, "Swing"

    const/16 v2, 0x53

    aput-object v1, v0, v2

    .line 251
    const-string/jumbo v1, "Fast Fusion"

    const/16 v2, 0x54

    aput-object v1, v0, v2

    .line 252
    const-string/jumbo v1, "Bebob"

    const/16 v2, 0x55

    aput-object v1, v0, v2

    .line 253
    const-string/jumbo v1, "Latin"

    const/16 v2, 0x56

    aput-object v1, v0, v2

    .line 254
    const-string/jumbo v1, "Revival"

    const/16 v2, 0x57

    aput-object v1, v0, v2

    .line 255
    const-string/jumbo v1, "Celtic"

    const/16 v2, 0x58

    aput-object v1, v0, v2

    .line 256
    const-string/jumbo v1, "Bluegrass"

    const/16 v2, 0x59

    aput-object v1, v0, v2

    .line 257
    const-string/jumbo v1, "Avantgarde"

    const/16 v2, 0x5a

    aput-object v1, v0, v2

    .line 258
    const-string/jumbo v1, "Gothic Rock"

    const/16 v2, 0x5b

    aput-object v1, v0, v2

    .line 259
    const-string/jumbo v1, "Progressive Rock"

    const/16 v2, 0x5c

    aput-object v1, v0, v2

    .line 260
    const-string/jumbo v1, "Psychedelic Rock"

    const/16 v2, 0x5d

    aput-object v1, v0, v2

    .line 261
    const-string/jumbo v1, "Symphonic Rock"

    const/16 v2, 0x5e

    aput-object v1, v0, v2

    .line 262
    const-string/jumbo v1, "Slow Rock"

    const/16 v2, 0x5f

    aput-object v1, v0, v2

    .line 263
    const-string/jumbo v1, "Big Band"

    const/16 v2, 0x60

    aput-object v1, v0, v2

    .line 264
    const-string/jumbo v1, "Chorus"

    const/16 v2, 0x61

    aput-object v1, v0, v2

    .line 265
    const-string/jumbo v1, "Easy Listening"

    const/16 v2, 0x62

    aput-object v1, v0, v2

    .line 266
    const-string/jumbo v1, "Acoustic"

    const/16 v2, 0x63

    aput-object v1, v0, v2

    .line 267
    const-string/jumbo v1, "Humour"

    const/16 v2, 0x64

    aput-object v1, v0, v2

    .line 268
    const-string/jumbo v1, "Speech"

    const/16 v2, 0x65

    aput-object v1, v0, v2

    .line 269
    const-string/jumbo v1, "Chanson"

    const/16 v2, 0x66

    aput-object v1, v0, v2

    .line 270
    const-string/jumbo v1, "Opera"

    const/16 v2, 0x67

    aput-object v1, v0, v2

    .line 271
    const-string/jumbo v1, "Chamber Music"

    const/16 v2, 0x68

    aput-object v1, v0, v2

    .line 272
    const-string/jumbo v1, "Sonata"

    const/16 v2, 0x69

    aput-object v1, v0, v2

    .line 273
    const-string/jumbo v1, "Symphony"

    const/16 v2, 0x6a

    aput-object v1, v0, v2

    .line 274
    const-string/jumbo v1, "Booty Bass"

    const/16 v2, 0x6b

    aput-object v1, v0, v2

    .line 275
    const-string/jumbo v1, "Primus"

    const/16 v2, 0x6c

    aput-object v1, v0, v2

    .line 276
    const-string/jumbo v1, "Porn Groove"

    const/16 v2, 0x6d

    aput-object v1, v0, v2

    .line 277
    const-string/jumbo v1, "Satire"

    const/16 v2, 0x6e

    aput-object v1, v0, v2

    .line 278
    const-string/jumbo v1, "Slow Jam"

    const/16 v2, 0x6f

    aput-object v1, v0, v2

    .line 279
    const-string/jumbo v1, "Club"

    const/16 v2, 0x70

    aput-object v1, v0, v2

    .line 280
    const-string/jumbo v1, "Tango"

    const/16 v2, 0x71

    aput-object v1, v0, v2

    .line 281
    const-string/jumbo v1, "Samba"

    const/16 v2, 0x72

    aput-object v1, v0, v2

    .line 282
    const-string/jumbo v1, "Folklore"

    const/16 v2, 0x73

    aput-object v1, v0, v2

    .line 283
    const-string/jumbo v1, "Ballad"

    const/16 v2, 0x74

    aput-object v1, v0, v2

    .line 284
    const-string/jumbo v1, "Power Ballad"

    const/16 v2, 0x75

    aput-object v1, v0, v2

    .line 285
    const-string/jumbo v1, "Rhythmic Soul"

    const/16 v2, 0x76

    aput-object v1, v0, v2

    .line 286
    const-string/jumbo v1, "Freestyle"

    const/16 v2, 0x77

    aput-object v1, v0, v2

    .line 287
    const-string/jumbo v1, "Duet"

    const/16 v2, 0x78

    aput-object v1, v0, v2

    .line 288
    const-string/jumbo v1, "Punk Rock"

    const/16 v2, 0x79

    aput-object v1, v0, v2

    .line 289
    const-string/jumbo v1, "Drum Solo"

    const/16 v2, 0x7a

    aput-object v1, v0, v2

    .line 290
    const-string/jumbo v1, "A capella"

    const/16 v2, 0x7b

    aput-object v1, v0, v2

    .line 291
    const-string/jumbo v1, "Euro-House"

    const/16 v2, 0x7c

    aput-object v1, v0, v2

    .line 292
    const-string/jumbo v1, "Dance Hall"

    const/16 v2, 0x7d

    aput-object v1, v0, v2

    .line 294
    const-string/jumbo v1, "Goa"

    const/16 v2, 0x7e

    aput-object v1, v0, v2

    .line 295
    const-string/jumbo v1, "Drum & Bass"

    const/16 v2, 0x7f

    aput-object v1, v0, v2

    .line 296
    const-string/jumbo v1, "Club-House"

    const/16 v2, 0x80

    aput-object v1, v0, v2

    .line 297
    const-string/jumbo v1, "Hardcore"

    const/16 v2, 0x81

    aput-object v1, v0, v2

    .line 298
    const-string/jumbo v1, "Terror"

    const/16 v2, 0x82

    aput-object v1, v0, v2

    .line 299
    const-string/jumbo v1, "Indie"

    const/16 v2, 0x83

    aput-object v1, v0, v2

    .line 300
    const-string/jumbo v1, "Britpop"

    const/16 v2, 0x84

    aput-object v1, v0, v2

    .line 301
    const/4 v1, 0x0

    const/16 v2, 0x85

    aput-object v1, v0, v2

    .line 302
    const-string/jumbo v1, "Polsk Punk"

    const/16 v2, 0x86

    aput-object v1, v0, v2

    .line 303
    const-string/jumbo v1, "Beat"

    const/16 v2, 0x87

    aput-object v1, v0, v2

    .line 304
    const-string/jumbo v1, "Christian Gangsta"

    const/16 v2, 0x88

    aput-object v1, v0, v2

    .line 305
    const-string/jumbo v1, "Heavy Metal"

    const/16 v2, 0x89

    aput-object v1, v0, v2

    .line 306
    const-string/jumbo v1, "Black Metal"

    const/16 v2, 0x8a

    aput-object v1, v0, v2

    .line 307
    const-string/jumbo v1, "Crossover"

    const/16 v2, 0x8b

    aput-object v1, v0, v2

    .line 308
    const-string/jumbo v1, "Contemporary Christian"

    const/16 v2, 0x8c

    aput-object v1, v0, v2

    .line 309
    const-string/jumbo v1, "Christian Rock"

    const/16 v2, 0x8d

    aput-object v1, v0, v2

    .line 310
    const-string/jumbo v1, "Merengue"

    const/16 v2, 0x8e

    aput-object v1, v0, v2

    .line 311
    const-string/jumbo v1, "Salsa"

    const/16 v2, 0x8f

    aput-object v1, v0, v2

    .line 312
    const-string/jumbo v1, "Thrash Metal"

    const/16 v2, 0x90

    aput-object v1, v0, v2

    .line 313
    const-string/jumbo v1, "Anime"

    const/16 v2, 0x91

    aput-object v1, v0, v2

    .line 314
    const-string/jumbo v1, "JPop"

    const/16 v2, 0x92

    aput-object v1, v0, v2

    .line 315
    const-string/jumbo v1, "Synthpop"

    const/16 v2, 0x93

    aput-object v1, v0, v2

    .line 164
    sput-object v0, Landroid/media/MediaScanner;->ID3_GENRES:[Ljava/lang/String;

    .line 415
    const-string/jumbo v0, "ro.mtk_oma_drm_support"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/media/MediaScanner;->IS_SUPPORT_DRM:Z

    .line 1835
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/media/MediaScanner;->mNoMediaPaths:Ljava/util/HashMap;

    .line 1836
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/media/MediaScanner;->mMediaPaths:Ljava/util/HashMap;

    .line 120
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    const-wide v4, 0x7fffffffffffffffL

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 429
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    iput v1, p0, Landroid/media/MediaScanner;->mNotfType:I

    .line 347
    iput-boolean v1, p0, Landroid/media/MediaScanner;->mWasEmptyPriorToScan:Z

    .line 379
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v1, p0, Landroid/media/MediaScanner;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    .line 408
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/media/MediaScanner;->mPlaylistEntries:Ljava/util/ArrayList;

    .line 414
    iput-object v3, p0, Landroid/media/MediaScanner;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    .line 426
    iput-wide v4, p0, Landroid/media/MediaScanner;->mLimitBmpFileSize:J

    .line 427
    iput-wide v4, p0, Landroid/media/MediaScanner;->mLimitGifFileSize:J

    .line 471
    new-instance v1, Landroid/media/MediaScanner$MyMediaScannerClient;

    invoke-direct {v1, p0, v3}, Landroid/media/MediaScanner$MyMediaScannerClient;-><init>(Landroid/media/MediaScanner;Landroid/media/MediaScanner$MyMediaScannerClient;)V

    iput-object v1, p0, Landroid/media/MediaScanner;->mClient:Landroid/media/MediaScanner$MyMediaScannerClient;

    .line 2339
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/media/MediaScanner;->mPlaylistFilePathList:Ljava/util/ArrayList;

    .line 430
    invoke-direct {p0}, Landroid/media/MediaScanner;->native_setup()V

    .line 431
    iput-object p1, p0, Landroid/media/MediaScanner;->mContext:Landroid/content/Context;

    .line 432
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/media/MediaScanner;->mPackageName:Ljava/lang/String;

    .line 433
    iget-object v1, p0, Landroid/media/MediaScanner;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 434
    iget-object v1, p0, Landroid/media/MediaScanner;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 436
    invoke-direct {p0}, Landroid/media/MediaScanner;->setDefaultRingtoneFileNames()V

    .line 438
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/media/MediaScanner;->mExternalStoragePath:Ljava/lang/String;

    .line 439
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v1

    iput-boolean v1, p0, Landroid/media/MediaScanner;->mExternalIsEmulated:Z

    .line 443
    const-string/jumbo v1, "activity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 444
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 445
    const-wide/32 v2, 0x600000

    iput-wide v2, p0, Landroid/media/MediaScanner;->mLimitBmpFileSize:J

    .line 446
    const-wide/32 v2, 0xa00000

    iput-wide v2, p0, Landroid/media/MediaScanner;->mLimitGifFileSize:J

    .line 429
    :goto_0
    return-void

    .line 448
    :cond_0
    const-wide/32 v2, 0x3400000

    iput-wide v2, p0, Landroid/media/MediaScanner;->mLimitBmpFileSize:J

    .line 449
    const-wide/32 v2, 0x1400000

    iput-wide v2, p0, Landroid/media/MediaScanner;->mLimitGifFileSize:J

    goto :goto_0
.end method

.method private cachePlaylistEntry(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "line"    # Ljava/lang/String;
    .param p2, "playListDirectory"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 2036
    new-instance v1, Landroid/media/MediaScanner$PlaylistEntry;

    const/4 v4, 0x0

    invoke-direct {v1, v4}, Landroid/media/MediaScanner$PlaylistEntry;-><init>(Landroid/media/MediaScanner$PlaylistEntry;)V

    .line 2038
    .local v1, "entry":Landroid/media/MediaScanner$PlaylistEntry;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 2039
    .local v2, "entryLength":I
    :goto_0
    if-lez v2, :cond_0

    add-int/lit8 v4, v2, -0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-eqz v4, :cond_0

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 2042
    :cond_0
    const/4 v4, 0x3

    if-ge v2, v4, :cond_1

    return-void

    .line 2043
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_2

    invoke-virtual {p1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 2047
    :cond_2
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2048
    .local v0, "ch1":C
    const/16 v4, 0x2f

    if-eq v0, v4, :cond_4

    .line 2049
    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x3a

    if-ne v4, v5, :cond_5

    const/4 v4, 0x2

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x5c

    if-ne v4, v5, :cond_5

    const/4 v3, 0x1

    .line 2051
    .local v3, "fullPath":Z
    :goto_1
    if-nez v3, :cond_3

    .line 2052
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2053
    :cond_3
    iput-object p1, v1, Landroid/media/MediaScanner$PlaylistEntry;->path:Ljava/lang/String;

    .line 2056
    iget-object v4, p0, Landroid/media/MediaScanner;->mPlaylistEntries:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2035
    return-void

    .line 2048
    .end local v3    # "fullPath":Z
    :cond_4
    const/4 v3, 0x1

    .restart local v3    # "fullPath":Z
    goto :goto_1

    .line 2049
    .end local v3    # "fullPath":Z
    :cond_5
    const/4 v3, 0x0

    .restart local v3    # "fullPath":Z
    goto :goto_1
.end method

.method public static clearMediaPathCache(ZZ)V
    .locals 2
    .param p0, "clearMediaPaths"    # Z
    .param p1, "clearNoMediaPaths"    # Z

    .prologue
    .line 1840
    const-class v1, Landroid/media/MediaScanner;

    monitor-enter v1

    .line 1841
    if-eqz p0, :cond_0

    .line 1842
    :try_start_0
    sget-object v0, Landroid/media/MediaScanner;->mMediaPaths:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1844
    :cond_0
    if-eqz p1, :cond_1

    .line 1845
    sget-object v0, Landroid/media/MediaScanner;->mNoMediaPaths:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v1

    .line 1839
    return-void

    .line 1840
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private inScanDirectory(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 3
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "directories"    # [Ljava/lang/String;

    .prologue
    .line 1547
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_1

    .line 1548
    aget-object v0, p2, v1

    .line 1549
    .local v0, "directory":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1550
    const/4 v2, 0x1

    return v2

    .line 1547
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1553
    .end local v0    # "directory":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method private initialize(Ljava/lang/String;)V
    .locals 4
    .param p1, "volumeName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 1710
    iget-object v0, p0, Landroid/media/MediaScanner;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "media"

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->acquireProvider(Ljava/lang/String;)Landroid/content/IContentProvider;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    .line 1712
    invoke-static {p1}, Landroid/provider/MediaStore$Audio$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mAudioUri:Landroid/net/Uri;

    .line 1713
    invoke-static {p1}, Landroid/provider/MediaStore$Video$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mVideoUri:Landroid/net/Uri;

    .line 1714
    invoke-static {p1}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mImagesUri:Landroid/net/Uri;

    .line 1715
    invoke-static {p1}, Landroid/provider/MediaStore$Images$Thumbnails;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mThumbsUri:Landroid/net/Uri;

    .line 1716
    invoke-static {p1}, Landroid/provider/MediaStore$Video$Thumbnails;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mVideoThumbsUri:Landroid/net/Uri;

    .line 1717
    invoke-static {p1}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mFilesUri:Landroid/net/Uri;

    .line 1718
    iget-object v0, p0, Landroid/media/MediaScanner;->mFilesUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "nonotify"

    const-string/jumbo v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mFilesUriNoNotify:Landroid/net/Uri;

    .line 1720
    const-string/jumbo v0, "internal"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1722
    iput-boolean v3, p0, Landroid/media/MediaScanner;->mProcessPlaylists:Z

    .line 1723
    iput-boolean v3, p0, Landroid/media/MediaScanner;->mProcessGenres:Z

    .line 1724
    invoke-static {p1}, Landroid/provider/MediaStore$Audio$Playlists;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mPlaylistsUri:Landroid/net/Uri;

    .line 1726
    iput-boolean v3, p0, Landroid/media/MediaScanner;->mCaseInsensitivePaths:Z

    .line 1709
    :cond_0
    return-void
.end method

.method private isDrmEnabled()Z
    .locals 2

    .prologue
    .line 474
    const-string/jumbo v1, "drm.service.enabled"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 475
    .local v0, "prop":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isNoMediaFile(Ljava/lang/String;)Z
    .locals 10
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    const/16 v9, 0xa

    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 1802
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1803
    .local v6, "file":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    return v4

    .line 1808
    :cond_0
    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    .line 1809
    .local v7, "lastSlash":I
    if-ltz v7, :cond_6

    add-int/lit8 v0, v7, 0x2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_6

    .line 1811
    add-int/lit8 v0, v7, 0x1

    const-string/jumbo v2, "._"

    const/4 v3, 0x2

    invoke-virtual {p0, v0, v2, v4, v3}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1812
    return v1

    .line 1818
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v2, v0, -0x4

    const-string/jumbo v3, ".jpg"

    const/4 v5, 0x4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1819
    add-int/lit8 v2, v7, 0x1

    const-string/jumbo v3, "AlbumArt_{"

    move-object v0, p0

    move v5, v9

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1820
    add-int/lit8 v2, v7, 0x1

    const-string/jumbo v3, "AlbumArt."

    const/16 v5, 0x9

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    .line 1819
    if-eqz v0, :cond_3

    .line 1821
    :cond_2
    return v1

    .line 1823
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v7

    add-int/lit8 v8, v0, -0x1

    .line 1824
    .local v8, "length":I
    const/16 v0, 0x11

    if-ne v8, v0, :cond_4

    .line 1825
    add-int/lit8 v2, v7, 0x1

    const-string/jumbo v3, "AlbumArtSmall"

    const/16 v5, 0xd

    move-object v0, p0

    .line 1824
    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1826
    :cond_4
    if-ne v8, v9, :cond_6

    .line 1827
    add-int/lit8 v2, v7, 0x1

    const-string/jumbo v3, "Folder"

    const/4 v5, 0x6

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    .line 1824
    if-eqz v0, :cond_6

    .line 1828
    :cond_5
    return v1

    .line 1832
    .end local v8    # "length":I
    :cond_6
    return v4
.end method

.method public static isNoMediaPath(Ljava/lang/String;)Z
    .locals 9
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    const/16 v7, 0x2f

    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 1851
    if-nez p0, :cond_0

    .line 1852
    return v6

    .line 1855
    :cond_0
    const-string/jumbo v5, "/."

    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-ltz v5, :cond_1

    .line 1856
    return v8

    .line 1859
    :cond_1
    invoke-virtual {p0, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 1860
    .local v1, "firstSlash":I
    if-gtz v1, :cond_2

    .line 1861
    return v6

    .line 1863
    :cond_2
    invoke-virtual {p0, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1865
    .local v3, "parent":Ljava/lang/String;
    const-class v6, Landroid/media/MediaScanner;

    monitor-enter v6

    .line 1866
    :try_start_0
    sget-object v5, Landroid/media/MediaScanner;->mNoMediaPaths:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-eqz v5, :cond_3

    monitor-exit v6

    .line 1867
    return v8

    .line 1868
    :cond_3
    :try_start_1
    sget-object v5, Landroid/media/MediaScanner;->mMediaPaths:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 1871
    const/4 v2, 0x1

    .line 1872
    .local v2, "offset":I
    :goto_0
    if-ltz v2, :cond_6

    .line 1873
    const/16 v5, 0x2f

    invoke-virtual {p0, v5, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 1874
    .local v4, "slashIndex":I
    if-le v4, v2, :cond_4

    .line 1875
    add-int/lit8 v4, v4, 0x1

    .line 1876
    new-instance v0, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x0

    invoke-virtual {p0, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, ".nomedia"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1877
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1879
    sget-object v5, Landroid/media/MediaScanner;->mNoMediaPaths:Ljava/util/HashMap;

    const-string/jumbo v7, ""

    invoke-virtual {v5, v3, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v6

    .line 1880
    return v8

    .line 1884
    .end local v0    # "file":Ljava/io/File;
    :cond_4
    if-ne v4, v2, :cond_5

    .line 1885
    add-int/lit8 v4, v4, 0x1

    .line 1888
    :cond_5
    move v2, v4

    goto :goto_0

    .line 1890
    .end local v4    # "slashIndex":I
    :cond_6
    :try_start_2
    sget-object v5, Landroid/media/MediaScanner;->mMediaPaths:Ljava/util/HashMap;

    const-string/jumbo v7, ""

    invoke-virtual {v5, v3, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v2    # "offset":I
    :cond_7
    monitor-exit v6

    .line 1894
    invoke-static {p0}, Landroid/media/MediaScanner;->isNoMediaFile(Ljava/lang/String;)Z

    move-result v5

    return v5

    .line 1865
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method private isValueslessMimeType(Ljava/lang/String;)Z
    .locals 4
    .param p1, "mimetype"    # Ljava/lang/String;

    .prologue
    .line 2322
    const/4 v0, 0x0

    .line 2323
    .local v0, "valueless":Z
    const-string/jumbo v1, "application/octet-stream"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2324
    const/4 v0, 0x1

    .line 2325
    const-string/jumbo v1, "MediaScanner"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isValueslessMimeType: mimetype="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2327
    :cond_0
    return v0
.end method

.method private matchEntries(JLjava/lang/String;)Z
    .locals 7
    .param p1, "rowId"    # J
    .param p3, "data"    # Ljava/lang/String;

    .prologue
    const v6, 0x7fffffff

    .line 2012
    iget-object v5, p0, Landroid/media/MediaScanner;->mPlaylistEntries:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 2013
    .local v3, "len":I
    const/4 v0, 0x1

    .line 2014
    .local v0, "done":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_3

    .line 2015
    iget-object v5, p0, Landroid/media/MediaScanner;->mPlaylistEntries:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaScanner$PlaylistEntry;

    .line 2016
    .local v1, "entry":Landroid/media/MediaScanner$PlaylistEntry;
    iget v5, v1, Landroid/media/MediaScanner$PlaylistEntry;->bestmatchlevel:I

    if-ne v5, v6, :cond_1

    .line 2014
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2019
    :cond_1
    const/4 v0, 0x0

    .line 2020
    iget-object v5, v1, Landroid/media/MediaScanner$PlaylistEntry;->path:Ljava/lang/String;

    invoke-virtual {p3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2021
    iput-wide p1, v1, Landroid/media/MediaScanner$PlaylistEntry;->bestmatchid:J

    .line 2022
    iput v6, v1, Landroid/media/MediaScanner$PlaylistEntry;->bestmatchlevel:I

    goto :goto_1

    .line 2026
    :cond_2
    iget-object v5, v1, Landroid/media/MediaScanner$PlaylistEntry;->path:Ljava/lang/String;

    invoke-direct {p0, p3, v5}, Landroid/media/MediaScanner;->matchPaths(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 2027
    .local v4, "matchLength":I
    iget v5, v1, Landroid/media/MediaScanner$PlaylistEntry;->bestmatchlevel:I

    if-le v4, v5, :cond_0

    .line 2028
    iput-wide p1, v1, Landroid/media/MediaScanner$PlaylistEntry;->bestmatchid:J

    .line 2029
    iput v4, v1, Landroid/media/MediaScanner$PlaylistEntry;->bestmatchlevel:I

    goto :goto_1

    .line 2032
    .end local v1    # "entry":Landroid/media/MediaScanner$PlaylistEntry;
    .end local v4    # "matchLength":I
    :cond_3
    return v0
.end method

.method private matchPaths(Ljava/lang/String;Ljava/lang/String;)I
    .locals 13
    .param p1, "path1"    # Ljava/lang/String;
    .param p2, "path2"    # Ljava/lang/String;

    .prologue
    .line 1985
    const/4 v10, 0x0

    .line 1986
    .local v10, "result":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    .line 1987
    .local v8, "end1":I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v9

    .line 1989
    .local v9, "end2":I
    :goto_0
    if-lez v8, :cond_0

    if-lez v9, :cond_0

    .line 1990
    const/16 v0, 0x2f

    add-int/lit8 v1, v8, -0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v11

    .line 1991
    .local v11, "slash1":I
    const/16 v0, 0x2f

    add-int/lit8 v1, v9, -0x1

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v12

    .line 1992
    .local v12, "slash2":I
    const/16 v0, 0x5c

    add-int/lit8 v1, v8, -0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v6

    .line 1993
    .local v6, "backSlash1":I
    const/16 v0, 0x5c

    add-int/lit8 v1, v9, -0x1

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v7

    .line 1994
    .local v7, "backSlash2":I
    if-le v11, v6, :cond_1

    move v2, v11

    .line 1995
    .local v2, "start1":I
    :goto_1
    if-le v12, v7, :cond_2

    move v4, v12

    .line 1996
    .local v4, "start2":I
    :goto_2
    if-gez v2, :cond_3

    const/4 v2, 0x0

    .line 1997
    :goto_3
    if-gez v4, :cond_4

    const/4 v4, 0x0

    .line 1998
    :goto_4
    sub-int v5, v8, v2

    .line 1999
    .local v5, "length":I
    sub-int v0, v9, v4

    if-eq v0, v5, :cond_5

    .line 2007
    .end local v2    # "start1":I
    .end local v4    # "start2":I
    .end local v5    # "length":I
    .end local v6    # "backSlash1":I
    .end local v7    # "backSlash2":I
    .end local v11    # "slash1":I
    .end local v12    # "slash2":I
    :cond_0
    return v10

    .line 1994
    .restart local v6    # "backSlash1":I
    .restart local v7    # "backSlash2":I
    .restart local v11    # "slash1":I
    .restart local v12    # "slash2":I
    :cond_1
    move v2, v6

    .restart local v2    # "start1":I
    goto :goto_1

    .line 1995
    :cond_2
    move v4, v7

    .restart local v4    # "start2":I
    goto :goto_2

    .line 1996
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1997
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 2000
    .restart local v5    # "length":I
    :cond_5
    const/4 v1, 0x1

    move-object v0, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2001
    add-int/lit8 v10, v10, 0x1

    .line 2002
    add-int/lit8 v8, v2, -0x1

    .line 2003
    add-int/lit8 v9, v4, -0x1

    goto :goto_0
.end method

.method private final native native_finalize()V
.end method

.method private static final native native_init()V
.end method

.method private final native native_setup()V
.end method

.method private postscan([Ljava/lang/String;)V
    .locals 3
    .param p1, "directories"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1687
    iget-boolean v0, p0, Landroid/media/MediaScanner;->mProcessPlaylists:Z

    if-eqz v0, :cond_0

    .line 1688
    invoke-direct {p0}, Landroid/media/MediaScanner;->processPlayLists()V

    .line 1691
    :cond_0
    iget v0, p0, Landroid/media/MediaScanner;->mOriginalCount:I

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/media/MediaScanner;->mOriginalVideoCount:I

    if-nez v0, :cond_2

    .line 1692
    :cond_1
    iget-object v0, p0, Landroid/media/MediaScanner;->mImagesUri:Landroid/net/Uri;

    const-string/jumbo v1, "external"

    invoke-static {v1}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1691
    if-eqz v0, :cond_2

    .line 1693
    invoke-direct {p0}, Landroid/media/MediaScanner;->pruneDeadThumbnailFiles()V

    .line 1697
    :cond_2
    iput-object v2, p0, Landroid/media/MediaScanner;->mPlayLists:Ljava/util/ArrayList;

    .line 1698
    iput-object v2, p0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    .line 1684
    return-void
.end method

.method private prescan(Ljava/lang/String;Z)V
    .locals 36
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "prescanFiles"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1397
    const-string/jumbo v4, "MediaScanner"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "prescan>>> filePath="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, ",prescanFiles="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1398
    const/16 v20, 0x0

    .line 1399
    .local v20, "c":Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 1400
    .local v8, "where":Ljava/lang/String;
    const/4 v9, 0x0

    .line 1402
    .local v9, "selectionArgs":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner;->mPlayLists:Ljava/util/ArrayList;

    if-nez v4, :cond_8

    .line 1403
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/media/MediaScanner;->mPlayLists:Ljava/util/ArrayList;

    .line 1408
    :goto_0
    if-eqz p1, :cond_9

    .line 1410
    const-string/jumbo v8, "_id>? AND _data=?"

    .line 1412
    .local v8, "where":Ljava/lang/String;
    const/4 v4, 0x2

    new-array v9, v4, [Ljava/lang/String;

    .end local v9    # "selectionArgs":[Ljava/lang/String;
    const-string/jumbo v4, ""

    const/4 v5, 0x0

    aput-object v4, v9, v5

    const/4 v4, 0x1

    aput-object p1, v9, v4

    .line 1422
    .local v9, "selectionArgs":[Ljava/lang/String;
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner;->mFilesUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v19

    .line 1423
    .local v19, "builder":Landroid/net/Uri$Builder;
    const-string/jumbo v4, "deletedata"

    const-string/jumbo v5, "false"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1424
    new-instance v21, Landroid/media/MediaScanner$MediaBulkDeleter;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/MediaScanner;->mPackageName:Ljava/lang/String;

    .line 1425
    invoke-virtual/range {v19 .. v19}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v7

    .line 1424
    move-object/from16 v0, v21

    invoke-direct {v0, v4, v5, v7}, Landroid/media/MediaScanner$MediaBulkDeleter;-><init>(Landroid/content/IContentProvider;Ljava/lang/String;Landroid/net/Uri;)V

    .line 1428
    .local v21, "deleter":Landroid/media/MediaScanner$MediaBulkDeleter;
    const/16 v18, 0x0

    .line 1429
    .local v18, "audioCount":I
    const-wide/high16 v26, -0x8000000000000000L

    .line 1433
    .local v26, "lastId":J
    if-eqz p2, :cond_2

    .line 1438
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner;->mFilesUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    const-string/jumbo v5, "limit"

    const-string/jumbo v7, "1000"

    invoke-virtual {v4, v5, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v6

    .line 1439
    .local v6, "limitUri":Landroid/net/Uri;
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/media/MediaScanner;->mWasEmptyPriorToScan:Z

    .line 1442
    .end local v20    # "c":Landroid/database/Cursor;
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v26

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v9, v5

    .line 1443
    if-eqz v20, :cond_1

    .line 1444
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 1445
    const/16 v20, 0x0

    .line 1447
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/MediaScanner;->mPackageName:Ljava/lang/String;

    sget-object v7, Landroid/media/MediaScanner;->FILES_PRESCAN_PROJECTION:[Ljava/lang/String;

    .line 1448
    const-string/jumbo v10, "_id"

    const/4 v11, 0x0

    .line 1447
    invoke-interface/range {v4 .. v11}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v20

    .line 1449
    .local v20, "c":Landroid/database/Cursor;
    if-nez v20, :cond_a

    .line 1501
    .end local v6    # "limitUri":Landroid/net/Uri;
    .end local v20    # "c":Landroid/database/Cursor;
    :cond_2
    if-eqz v20, :cond_3

    .line 1502
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 1504
    :cond_3
    invoke-virtual/range {v21 .. v21}, Landroid/media/MediaScanner$MediaBulkDeleter;->flush()V

    .line 1509
    const/4 v4, 0x0

    :try_start_1
    move-object/from16 v0, p0

    iput v4, v0, Landroid/media/MediaScanner;->mOriginalCount:I

    .line 1510
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/media/MediaScanner;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/media/MediaScanner;->mImagesUri:Landroid/net/Uri;

    sget-object v13, Landroid/media/MediaScanner;->ID_PROJECTION:[Ljava/lang/String;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-interface/range {v10 .. v17}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v20

    .line 1511
    .restart local v20    # "c":Landroid/database/Cursor;
    if-eqz v20, :cond_4

    .line 1512
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->getCount()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Landroid/media/MediaScanner;->mOriginalCount:I

    .line 1513
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 1515
    const/16 v20, 0x0

    .line 1517
    .end local v20    # "c":Landroid/database/Cursor;
    :cond_4
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Landroid/media/MediaScanner;->mOriginalVideoCount:I

    .line 1518
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/media/MediaScanner;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/media/MediaScanner;->mVideoUri:Landroid/net/Uri;

    sget-object v13, Landroid/media/MediaScanner;->ID_PROJECTION:[Ljava/lang/String;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-interface/range {v10 .. v17}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v20

    .line 1519
    .restart local v20    # "c":Landroid/database/Cursor;
    if-eqz v20, :cond_5

    .line 1520
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->getCount()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Landroid/media/MediaScanner;->mOriginalVideoCount:I

    .line 1521
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 1523
    const/16 v20, 0x0

    .line 1526
    .end local v20    # "c":Landroid/database/Cursor;
    :cond_5
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/media/MediaScanner;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/media/MediaScanner;->mAudioUri:Landroid/net/Uri;

    sget-object v13, Landroid/media/MediaScanner;->ID_PROJECTION:[Ljava/lang/String;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-interface/range {v10 .. v17}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v20

    .line 1527
    .restart local v20    # "c":Landroid/database/Cursor;
    if-eqz v20, :cond_6

    .line 1528
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->getCount()I

    move-result v18

    .line 1529
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1531
    const/16 v20, 0x0

    .line 1535
    .end local v20    # "c":Landroid/database/Cursor;
    :cond_6
    if-eqz v20, :cond_7

    .line 1536
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 1542
    :cond_7
    const-string/jumbo v4, "MediaScanner"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "prescan<<< imageCount="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v7, v0, Landroid/media/MediaScanner;->mOriginalCount:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, ",videoCount="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v7, v0, Landroid/media/MediaScanner;->mOriginalVideoCount:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1543
    const-string/jumbo v7, ", audioCount="

    .line 1542
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1543
    const-string/jumbo v7, ", lastId="

    .line 1542
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v26

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1543
    const-string/jumbo v7, ",isEmpty="

    .line 1542
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1543
    move-object/from16 v0, p0

    iget-boolean v7, v0, Landroid/media/MediaScanner;->mWasEmptyPriorToScan:Z

    .line 1542
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1395
    return-void

    .line 1405
    .end local v18    # "audioCount":I
    .end local v19    # "builder":Landroid/net/Uri$Builder;
    .end local v21    # "deleter":Landroid/media/MediaScanner$MediaBulkDeleter;
    .end local v26    # "lastId":J
    .local v8, "where":Ljava/lang/String;
    .local v9, "selectionArgs":[Ljava/lang/String;
    .local v20, "c":Landroid/database/Cursor;
    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner;->mPlayLists:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_0

    .line 1414
    :cond_9
    const-string/jumbo v8, "_id>?"

    .line 1415
    .local v8, "where":Ljava/lang/String;
    const/4 v4, 0x1

    new-array v9, v4, [Ljava/lang/String;

    .end local v9    # "selectionArgs":[Ljava/lang/String;
    const-string/jumbo v4, ""

    const/4 v5, 0x0

    aput-object v4, v9, v5

    .local v9, "selectionArgs":[Ljava/lang/String;
    goto/16 :goto_1

    .line 1453
    .restart local v6    # "limitUri":Landroid/net/Uri;
    .restart local v18    # "audioCount":I
    .restart local v19    # "builder":Landroid/net/Uri$Builder;
    .local v20, "c":Landroid/database/Cursor;
    .restart local v21    # "deleter":Landroid/media/MediaScanner$MediaBulkDeleter;
    .restart local v26    # "lastId":J
    :cond_a
    :try_start_2
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->getCount()I

    move-result v31

    .line 1455
    .local v31, "num":I
    if-eqz v31, :cond_2

    .line 1458
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/media/MediaScanner;->mWasEmptyPriorToScan:Z

    .line 1459
    :cond_b
    :goto_2
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1460
    const/4 v4, 0x0

    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v34

    .line 1461
    .local v34, "rowId":J
    const/4 v4, 0x1

    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v33

    .line 1462
    .local v33, "path":Ljava/lang/String;
    const/4 v4, 0x2

    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    .line 1463
    .local v25, "format":I
    const/4 v4, 0x3

    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v28

    .line 1464
    .local v28, "lastModified":J
    move-wide/from16 v26, v34

    .line 1469
    if-eqz v33, :cond_b

    const-string/jumbo v4, "/"

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v4

    if-eqz v4, :cond_b

    .line 1470
    const/16 v23, 0x0

    .line 1472
    .local v23, "exists":Z
    :try_start_3
    sget v4, Landroid/system/OsConstants;->F_OK:I

    move-object/from16 v0, v33

    invoke-static {v0, v4}, Landroid/system/Os;->access(Ljava/lang/String;I)Z
    :try_end_3
    .catch Landroid/system/ErrnoException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v23

    .line 1477
    .end local v23    # "exists":Z
    :goto_3
    if-nez v23, :cond_b

    :try_start_4
    invoke-static/range {v25 .. v25}, Landroid/mtp/MtpConstants;->isAbstractObject(I)Z

    move-result v4

    if-nez v4, :cond_b

    .line 1482
    invoke-static/range {v33 .. v33}, Landroid/media/MediaFile;->getFileType(Ljava/lang/String;)Landroid/media/MediaFile$MediaFileType;

    move-result-object v30

    .line 1483
    .local v30, "mediaFileType":Landroid/media/MediaFile$MediaFileType;
    if-nez v30, :cond_d

    const/16 v24, 0x0

    .line 1485
    .local v24, "fileType":I
    :goto_4
    invoke-static/range {v24 .. v24}, Landroid/media/MediaFile;->isPlayListFileType(I)Z

    move-result v4

    if-nez v4, :cond_b

    .line 1486
    move-object/from16 v0, v21

    move-wide/from16 v1, v34

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaScanner$MediaBulkDeleter;->delete(J)V

    .line 1487
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "/.nomedia"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1488
    invoke-virtual/range {v21 .. v21}, Landroid/media/MediaScanner$MediaBulkDeleter;->flush()V

    .line 1489
    new-instance v4, Ljava/io/File;

    move-object/from16 v0, v33

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v32

    .line 1490
    .local v32, "parent":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/MediaScanner;->mPackageName:Ljava/lang/String;

    const-string/jumbo v7, "unhide"

    .line 1491
    const/4 v10, 0x0

    .line 1490
    move-object/from16 v0, v32

    invoke-interface {v4, v5, v7, v0, v10}, Landroid/content/IContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_2

    .line 1500
    .end local v6    # "limitUri":Landroid/net/Uri;
    .end local v20    # "c":Landroid/database/Cursor;
    .end local v24    # "fileType":I
    .end local v25    # "format":I
    .end local v28    # "lastModified":J
    .end local v30    # "mediaFileType":Landroid/media/MediaFile$MediaFileType;
    .end local v31    # "num":I
    .end local v32    # "parent":Ljava/lang/String;
    .end local v33    # "path":Ljava/lang/String;
    .end local v34    # "rowId":J
    :catchall_0
    move-exception v4

    .line 1501
    if-eqz v20, :cond_c

    .line 1502
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 1504
    :cond_c
    invoke-virtual/range {v21 .. v21}, Landroid/media/MediaScanner$MediaBulkDeleter;->flush()V

    .line 1500
    throw v4

    .line 1473
    .restart local v6    # "limitUri":Landroid/net/Uri;
    .restart local v20    # "c":Landroid/database/Cursor;
    .restart local v23    # "exists":Z
    .restart local v25    # "format":I
    .restart local v28    # "lastModified":J
    .restart local v31    # "num":I
    .restart local v33    # "path":Ljava/lang/String;
    .restart local v34    # "rowId":J
    :catch_0
    move-exception v22

    .line 1475
    .local v22, "e1":Landroid/system/ErrnoException;
    :try_start_5
    const-string/jumbo v4, "MediaScanner"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "prescan: ErrnoException! path="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v33

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1483
    .end local v22    # "e1":Landroid/system/ErrnoException;
    .end local v23    # "exists":Z
    .restart local v30    # "mediaFileType":Landroid/media/MediaFile$MediaFileType;
    :cond_d
    move-object/from16 v0, v30

    iget v0, v0, Landroid/media/MediaFile$MediaFileType;->fileType:I

    move/from16 v24, v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .restart local v24    # "fileType":I
    goto :goto_4

    .line 1534
    .end local v6    # "limitUri":Landroid/net/Uri;
    .end local v20    # "c":Landroid/database/Cursor;
    .end local v24    # "fileType":I
    .end local v25    # "format":I
    .end local v28    # "lastModified":J
    .end local v30    # "mediaFileType":Landroid/media/MediaFile$MediaFileType;
    .end local v31    # "num":I
    .end local v33    # "path":Ljava/lang/String;
    .end local v34    # "rowId":J
    :catchall_1
    move-exception v4

    .line 1535
    if-eqz v20, :cond_e

    .line 1536
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 1534
    :cond_e
    throw v4
.end method

.method private processCachedPlaylist(Landroid/database/Cursor;Landroid/content/ContentValues;Landroid/net/Uri;)V
    .locals 12
    .param p1, "fileList"    # Landroid/database/Cursor;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "playlistUri"    # Landroid/net/Uri;

    .prologue
    const/4 v9, 0x0

    .line 2060
    const/4 v8, -0x1

    invoke-interface {p1, v8}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 2061
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 2062
    invoke-interface {p1, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 2063
    .local v6, "rowId":J
    const/4 v8, 0x1

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2064
    .local v0, "data":Ljava/lang/String;
    invoke-direct {p0, v6, v7, v0}, Landroid/media/MediaScanner;->matchEntries(JLjava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 2069
    .end local v0    # "data":Ljava/lang/String;
    .end local v6    # "rowId":J
    :cond_1
    iget-object v8, p0, Landroid/media/MediaScanner;->mPlaylistEntries:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 2070
    .local v5, "len":I
    const/4 v4, 0x0

    .line 2071
    .local v4, "index":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v5, :cond_3

    .line 2072
    iget-object v8, p0, Landroid/media/MediaScanner;->mPlaylistEntries:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaScanner$PlaylistEntry;

    .line 2073
    .local v2, "entry":Landroid/media/MediaScanner$PlaylistEntry;
    iget v8, v2, Landroid/media/MediaScanner$PlaylistEntry;->bestmatchlevel:I

    if-lez v8, :cond_2

    .line 2075
    :try_start_0
    invoke-virtual {p2}, Landroid/content/ContentValues;->clear()V

    .line 2076
    const-string/jumbo v8, "play_order"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2077
    const-string/jumbo v8, "audio_id"

    iget-wide v10, v2, Landroid/media/MediaScanner$PlaylistEntry;->bestmatchid:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {p2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2078
    iget-object v8, p0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v9, p0, Landroid/media/MediaScanner;->mPackageName:Ljava/lang/String;

    invoke-interface {v8, v9, p3, p2}, Landroid/content/IContentProvider;->insert(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2079
    add-int/lit8 v4, v4, 0x1

    .line 2071
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2080
    :catch_0
    move-exception v1

    .line 2081
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v8, "MediaScanner"

    const-string/jumbo v9, "RemoteException in MediaScanner.processCachedPlaylist()"

    invoke-static {v8, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2082
    return-void

    .line 2086
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "entry":Landroid/media/MediaScanner$PlaylistEntry;
    :cond_3
    iget-object v8, p0, Landroid/media/MediaScanner;->mPlaylistEntries:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 2059
    return-void
.end method

.method private native processDirectory(Ljava/lang/String;Landroid/media/MediaScannerClient;)V
.end method

.method private native processFile(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaScannerClient;)V
.end method

.method private processM3uPlayList(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Landroid/database/Cursor;)V
    .locals 8
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "playListDirectory"    # Ljava/lang/String;
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "values"    # Landroid/content/ContentValues;
    .param p5, "fileList"    # Landroid/database/Cursor;

    .prologue
    .line 2091
    const/4 v3, 0x0

    .line 2093
    .local v3, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2094
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2095
    new-instance v4, Ljava/io/BufferedReader;

    .line 2096
    new-instance v5, Ljava/io/InputStreamReader;

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v6, 0x2000

    .line 2095
    invoke-direct {v4, v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2097
    .local v4, "reader":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .end local v3    # "reader":Ljava/io/BufferedReader;
    move-result-object v2

    .line 2098
    .local v2, "line":Ljava/lang/String;
    iget-object v5, p0, Landroid/media/MediaScanner;->mPlaylistEntries:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 2099
    :goto_0
    if-eqz v2, :cond_1

    .line 2101
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x23

    if-eq v5, v6, :cond_0

    .line 2102
    invoke-direct {p0, v2, p2}, Landroid/media/MediaScanner;->cachePlaylistEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 2104
    :cond_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 2107
    :cond_1
    invoke-direct {p0, p5, p4, p3}, Landroid/media/MediaScanner;->processCachedPlaylist(Landroid/database/Cursor;Landroid/content/ContentValues;Landroid/net/Uri;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v3, v4

    .line 2113
    .end local v2    # "line":Ljava/lang/String;
    .end local v4    # "reader":Ljava/io/BufferedReader;
    :cond_2
    if-eqz v3, :cond_3

    .line 2114
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2090
    .end local v1    # "f":Ljava/io/File;
    :cond_3
    :goto_1
    return-void

    .line 2115
    .restart local v1    # "f":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 2116
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v5, "MediaScanner"

    const-string/jumbo v6, "IOException in MediaScanner.processM3uPlayList()"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 2109
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "f":Ljava/io/File;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :catch_1
    move-exception v0

    .line 2110
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_2
    :try_start_3
    const-string/jumbo v5, "MediaScanner"

    const-string/jumbo v6, "IOException in MediaScanner.processM3uPlayList()"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2113
    if-eqz v3, :cond_3

    .line 2114
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 2115
    :catch_2
    move-exception v0

    .line 2116
    const-string/jumbo v5, "MediaScanner"

    const-string/jumbo v6, "IOException in MediaScanner.processM3uPlayList()"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 2111
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 2113
    :goto_3
    if-eqz v3, :cond_4

    .line 2114
    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 2111
    :cond_4
    :goto_4
    throw v5

    .line 2115
    :catch_3
    move-exception v0

    .line 2116
    .restart local v0    # "e":Ljava/io/IOException;
    const-string/jumbo v6, "MediaScanner"

    const-string/jumbo v7, "IOException in MediaScanner.processM3uPlayList()"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 2111
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "f":Ljava/io/File;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "reader":Ljava/io/BufferedReader;
    .local v3, "reader":Ljava/io/BufferedReader;
    goto :goto_3

    .line 2109
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :catch_4
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    move-object v3, v4

    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    goto :goto_2
.end method

.method private processPlayList(Landroid/media/MediaScanner$FileEntry;Landroid/database/Cursor;)V
    .locals 20
    .param p1, "entry"    # Landroid/media/MediaScanner$FileEntry;
    .param p2, "fileList"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2219
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    move-object/from16 v17, v0

    .line 2220
    .local v17, "path":Ljava/lang/String;
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 2221
    .local v5, "values":Landroid/content/ContentValues;
    const/16 v2, 0x2f

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v14

    .line 2222
    .local v14, "lastSlash":I
    if-gez v14, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "bad path "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2224
    :cond_0
    move-object/from16 v0, p1

    iget-wide v0, v0, Landroid/media/MediaScanner$FileEntry;->mRowId:J

    move-wide/from16 v18, v0

    .line 2227
    .local v18, "rowId":J
    const-string/jumbo v2, "name"

    invoke-virtual {v5, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 2228
    .local v16, "name":Ljava/lang/String;
    if-nez v16, :cond_1

    .line 2229
    const-string/jumbo v2, "title"

    invoke-virtual {v5, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 2230
    if-nez v16, :cond_1

    .line 2232
    const/16 v2, 0x2e

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v13

    .line 2233
    .local v13, "lastDot":I
    if-gez v13, :cond_3

    add-int/lit8 v2, v14, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    .line 2238
    .end local v13    # "lastDot":I
    :cond_1
    :goto_0
    const-string/jumbo v2, "name"

    move-object/from16 v0, v16

    invoke-virtual {v5, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2239
    const-string/jumbo v2, "date_modified"

    move-object/from16 v0, p1

    iget-wide v6, v0, Landroid/media/MediaScanner$FileEntry;->mLastModified:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2241
    const-wide/16 v2, 0x0

    cmp-long v2, v18, v2

    if-nez v2, :cond_4

    .line 2242
    const-string/jumbo v2, "_data"

    move-object/from16 v0, v17

    invoke-virtual {v5, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2243
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaScanner;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/MediaScanner;->mPlaylistsUri:Landroid/net/Uri;

    invoke-interface {v2, v3, v6, v5}, Landroid/content/IContentProvider;->insert(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v4

    .line 2244
    .local v4, "uri":Landroid/net/Uri;
    invoke-static {v4}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v18

    .line 2245
    const-string/jumbo v2, "members"

    invoke-static {v4, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 2255
    .local v9, "membersUri":Landroid/net/Uri;
    :goto_1
    add-int/lit8 v2, v14, 0x1

    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 2256
    .local v8, "playListDirectory":Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Landroid/media/MediaFile;->getFileType(Ljava/lang/String;)Landroid/media/MediaFile$MediaFileType;

    move-result-object v15

    .line 2257
    .local v15, "mediaFileType":Landroid/media/MediaFile$MediaFileType;
    if-nez v15, :cond_5

    const/4 v12, 0x0

    .line 2259
    .local v12, "fileType":I
    :goto_2
    const/16 v2, 0x1f5

    if-ne v12, v2, :cond_6

    move-object/from16 v6, p0

    move-object/from16 v7, v17

    move-object v10, v5

    move-object/from16 v11, p2

    .line 2260
    invoke-direct/range {v6 .. v11}, Landroid/media/MediaScanner;->processM3uPlayList(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Landroid/database/Cursor;)V

    .line 2218
    :cond_2
    :goto_3
    return-void

    .line 2234
    .end local v4    # "uri":Landroid/net/Uri;
    .end local v8    # "playListDirectory":Ljava/lang/String;
    .end local v9    # "membersUri":Landroid/net/Uri;
    .end local v12    # "fileType":I
    .end local v15    # "mediaFileType":Landroid/media/MediaFile$MediaFileType;
    .restart local v13    # "lastDot":I
    :cond_3
    add-int/lit8 v2, v14, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    goto :goto_0

    .line 2247
    .end local v13    # "lastDot":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaScanner;->mPlaylistsUri:Landroid/net/Uri;

    move-wide/from16 v0, v18

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 2248
    .restart local v4    # "uri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaScanner;->mPackageName:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v2 .. v7}, Landroid/content/IContentProvider;->update(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2251
    const-string/jumbo v2, "members"

    invoke-static {v4, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 2252
    .restart local v9    # "membersUri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaScanner;->mPackageName:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface {v2, v3, v9, v6, v7}, Landroid/content/IContentProvider;->delete(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1

    .line 2257
    .restart local v8    # "playListDirectory":Ljava/lang/String;
    .restart local v15    # "mediaFileType":Landroid/media/MediaFile$MediaFileType;
    :cond_5
    iget v12, v15, Landroid/media/MediaFile$MediaFileType;->fileType:I

    .restart local v12    # "fileType":I
    goto :goto_2

    .line 2261
    :cond_6
    const/16 v2, 0x1f6

    if-ne v12, v2, :cond_7

    move-object/from16 v6, p0

    move-object/from16 v7, v17

    move-object v10, v5

    move-object/from16 v11, p2

    .line 2262
    invoke-direct/range {v6 .. v11}, Landroid/media/MediaScanner;->processPlsPlayList(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Landroid/database/Cursor;)V

    goto :goto_3

    .line 2263
    :cond_7
    const/16 v2, 0x1f7

    if-ne v12, v2, :cond_2

    move-object/from16 v6, p0

    move-object/from16 v7, v17

    move-object v10, v5

    move-object/from16 v11, p2

    .line 2264
    invoke-direct/range {v6 .. v11}, Landroid/media/MediaScanner;->processWplPlayList(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Landroid/database/Cursor;)V

    goto :goto_3
.end method

.method private processPlayLists()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2269
    iget-object v0, p0, Landroid/media/MediaScanner;->mPlayLists:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .line 2270
    .local v11, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/MediaScanner$FileEntry;>;"
    const/4 v10, 0x0

    .line 2274
    .local v10, "fileList":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/media/MediaScanner;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/media/MediaScanner;->mFilesUri:Landroid/net/Uri;

    sget-object v3, Landroid/media/MediaScanner;->FILES_PRESCAN_PROJECTION:[Ljava/lang/String;

    .line 2275
    const-string/jumbo v4, "media_type=2"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 2274
    invoke-interface/range {v0 .. v7}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v10

    .line 2276
    .local v10, "fileList":Landroid/database/Cursor;
    :cond_0
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2277
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/media/MediaScanner$FileEntry;

    .line 2279
    .local v9, "entry":Landroid/media/MediaScanner$FileEntry;
    iget-boolean v0, v9, Landroid/media/MediaScanner$FileEntry;->mLastModifiedChanged:Z

    if-eqz v0, :cond_0

    .line 2280
    invoke-direct {p0, v9, v10}, Landroid/media/MediaScanner;->processPlayList(Landroid/media/MediaScanner$FileEntry;Landroid/database/Cursor;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 2283
    .end local v9    # "entry":Landroid/media/MediaScanner$FileEntry;
    .end local v10    # "fileList":Landroid/database/Cursor;
    :catch_0
    move-exception v8

    .line 2285
    .local v8, "e1":Landroid/os/RemoteException;
    :try_start_1
    const-string/jumbo v0, "MediaScanner"

    const-string/jumbo v1, "processPlayLists: RemoteException!"

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2287
    if-eqz v10, :cond_1

    .line 2288
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 2268
    .end local v8    # "e1":Landroid/os/RemoteException;
    :cond_1
    :goto_1
    return-void

    .line 2287
    .restart local v10    # "fileList":Landroid/database/Cursor;
    :cond_2
    if-eqz v10, :cond_1

    .line 2288
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 2286
    .end local v10    # "fileList":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    .line 2287
    if-eqz v10, :cond_3

    .line 2288
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 2286
    :cond_3
    throw v0
.end method

.method private processPlsPlayList(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Landroid/database/Cursor;)V
    .locals 9
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "playListDirectory"    # Ljava/lang/String;
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "values"    # Landroid/content/ContentValues;
    .param p5, "fileList"    # Landroid/database/Cursor;

    .prologue
    .line 2123
    const/4 v4, 0x0

    .line 2125
    .local v4, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2126
    .local v2, "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2127
    new-instance v5, Ljava/io/BufferedReader;

    .line 2128
    new-instance v6, Ljava/io/InputStreamReader;

    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v7, 0x2000

    .line 2127
    invoke-direct {v5, v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2129
    .local v5, "reader":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .end local v4    # "reader":Ljava/io/BufferedReader;
    move-result-object v3

    .line 2130
    .local v3, "line":Ljava/lang/String;
    iget-object v6, p0, Landroid/media/MediaScanner;->mPlaylistEntries:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 2131
    :goto_0
    if-eqz v3, :cond_1

    .line 2133
    const-string/jumbo v6, "File"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2134
    const/16 v6, 0x3d

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 2135
    .local v1, "equals":I
    if-lez v1, :cond_0

    .line 2136
    add-int/lit8 v6, v1, 0x1

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6, p2}, Landroid/media/MediaScanner;->cachePlaylistEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 2139
    .end local v1    # "equals":I
    :cond_0
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 2142
    :cond_1
    invoke-direct {p0, p5, p4, p3}, Landroid/media/MediaScanner;->processCachedPlaylist(Landroid/database/Cursor;Landroid/content/ContentValues;Landroid/net/Uri;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v4, v5

    .line 2148
    .end local v3    # "line":Ljava/lang/String;
    .end local v5    # "reader":Ljava/io/BufferedReader;
    :cond_2
    if-eqz v4, :cond_3

    .line 2149
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2122
    .end local v2    # "f":Ljava/io/File;
    :cond_3
    :goto_1
    return-void

    .line 2150
    .restart local v2    # "f":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 2151
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v6, "MediaScanner"

    const-string/jumbo v7, "IOException in MediaScanner.processPlsPlayList()"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 2144
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "f":Ljava/io/File;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :catch_1
    move-exception v0

    .line 2145
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_2
    :try_start_3
    const-string/jumbo v6, "MediaScanner"

    const-string/jumbo v7, "IOException in MediaScanner.processPlsPlayList()"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2148
    if-eqz v4, :cond_3

    .line 2149
    :try_start_4
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 2150
    :catch_2
    move-exception v0

    .line 2151
    const-string/jumbo v6, "MediaScanner"

    const-string/jumbo v7, "IOException in MediaScanner.processPlsPlayList()"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 2146
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 2148
    :goto_3
    if-eqz v4, :cond_4

    .line 2149
    :try_start_5
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 2146
    :cond_4
    :goto_4
    throw v6

    .line 2150
    :catch_3
    move-exception v0

    .line 2151
    .restart local v0    # "e":Ljava/io/IOException;
    const-string/jumbo v7, "MediaScanner"

    const-string/jumbo v8, "IOException in MediaScanner.processPlsPlayList()"

    invoke-static {v7, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 2146
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "f":Ljava/io/File;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v6

    move-object v4, v5

    .end local v5    # "reader":Ljava/io/BufferedReader;
    .local v4, "reader":Ljava/io/BufferedReader;
    goto :goto_3

    .line 2144
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :catch_4
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    move-object v4, v5

    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    goto :goto_2
.end method

.method private processWplPlayList(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Landroid/database/Cursor;)V
    .locals 8
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "playListDirectory"    # Ljava/lang/String;
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "values"    # Landroid/content/ContentValues;
    .param p5, "fileList"    # Landroid/database/Cursor;

    .prologue
    .line 2192
    const/4 v3, 0x0

    .line 2194
    .local v3, "fis":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2195
    .local v2, "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2196
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2198
    .local v4, "fis":Ljava/io/FileInputStream;
    :try_start_1
    iget-object v5, p0, Landroid/media/MediaScanner;->mPlaylistEntries:Ljava/util/ArrayList;

    .end local v3    # "fis":Ljava/io/FileInputStream;
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 2199
    const-string/jumbo v5, "UTF-8"

    invoke-static {v5}, Landroid/util/Xml;->findEncodingByName(Ljava/lang/String;)Landroid/util/Xml$Encoding;

    move-result-object v5

    .line 2200
    new-instance v6, Landroid/media/MediaScanner$WplHandler;

    invoke-direct {v6, p0, p2, p3, p5}, Landroid/media/MediaScanner$WplHandler;-><init>(Landroid/media/MediaScanner;Ljava/lang/String;Landroid/net/Uri;Landroid/database/Cursor;)V

    invoke-virtual {v6}, Landroid/media/MediaScanner$WplHandler;->getContentHandler()Lorg/xml/sax/ContentHandler;

    move-result-object v6

    .line 2199
    invoke-static {v4, v5, v6}, Landroid/util/Xml;->parse(Ljava/io/InputStream;Landroid/util/Xml$Encoding;Lorg/xml/sax/ContentHandler;)V

    .line 2202
    invoke-direct {p0, p5, p4, p3}, Landroid/media/MediaScanner;->processCachedPlaylist(Landroid/database/Cursor;Landroid/content/ContentValues;Landroid/net/Uri;)V
    :try_end_1
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v3, v4

    .line 2210
    .end local v4    # "fis":Ljava/io/FileInputStream;
    :cond_0
    if-eqz v3, :cond_1

    .line 2211
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2191
    .end local v2    # "f":Ljava/io/File;
    :cond_1
    :goto_0
    return-void

    .line 2212
    .restart local v2    # "f":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 2213
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v5, "MediaScanner"

    const-string/jumbo v6, "IOException in MediaScanner.processWplPlayList()"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2206
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "f":Ljava/io/File;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catch_1
    move-exception v0

    .line 2207
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2210
    if-eqz v3, :cond_1

    .line 2211
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 2212
    :catch_2
    move-exception v0

    .line 2213
    const-string/jumbo v5, "MediaScanner"

    const-string/jumbo v6, "IOException in MediaScanner.processWplPlayList()"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2204
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catch_3
    move-exception v1

    .line 2205
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .local v1, "e":Lorg/xml/sax/SAXException;
    :goto_2
    :try_start_5
    invoke-virtual {v1}, Lorg/xml/sax/SAXException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2210
    if-eqz v3, :cond_1

    .line 2211
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_0

    .line 2212
    :catch_4
    move-exception v0

    .line 2213
    .restart local v0    # "e":Ljava/io/IOException;
    const-string/jumbo v5, "MediaScanner"

    const-string/jumbo v6, "IOException in MediaScanner.processWplPlayList()"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2208
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "e":Lorg/xml/sax/SAXException;
    :catchall_0
    move-exception v5

    .line 2210
    :goto_3
    if-eqz v3, :cond_2

    .line 2211
    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 2208
    :cond_2
    :goto_4
    throw v5

    .line 2212
    :catch_5
    move-exception v0

    .line 2213
    .restart local v0    # "e":Ljava/io/IOException;
    const-string/jumbo v6, "MediaScanner"

    const-string/jumbo v7, "IOException in MediaScanner.processWplPlayList()"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 2208
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "f":Ljava/io/File;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .local v3, "fis":Ljava/io/FileInputStream;
    goto :goto_3

    .line 2204
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    :catch_6
    move-exception v1

    .restart local v1    # "e":Lorg/xml/sax/SAXException;
    move-object v3, v4

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    goto :goto_2

    .line 2206
    .end local v1    # "e":Lorg/xml/sax/SAXException;
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    :catch_7
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    move-object v3, v4

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method private pruneDeadThumbnailFiles()V
    .locals 25

    .prologue
    .line 1557
    const-string/jumbo v2, "MediaScanner"

    const-string/jumbo v3, "pruneDeadThumbnailFiles>>>"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1558
    new-instance v14, Ljava/util/HashSet;

    invoke-direct {v14}, Ljava/util/HashSet;-><init>()V

    .line 1559
    .local v14, "existingFiles":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1560
    invoke-static {}, Landroid/media/MiniThumbFile;->getMiniThumbFileDirectoryPath()Ljava/lang/String;

    move-result-object v3

    .line 1559
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1561
    .local v11, "directory":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v17

    .line 1562
    .local v17, "files":[Ljava/lang/String;
    if-nez v17, :cond_0

    .line 1563
    const/4 v2, 0x0

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v17, v0

    .line 1565
    :cond_0
    const/16 v19, 0x0

    .local v19, "i":I
    :goto_0
    move-object/from16 v0, v17

    array-length v2, v0

    move/from16 v0, v19

    if-ge v0, v2, :cond_1

    .line 1566
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v17, v19

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 1567
    .local v18, "fullPathString":Ljava/lang/String;
    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1565
    add-int/lit8 v19, v19, 0x1

    goto :goto_0

    .line 1570
    .end local v18    # "fullPathString":Ljava/lang/String;
    :cond_1
    const/16 v20, 0x0

    .line 1571
    .local v20, "imageThumbCount":I
    const/16 v24, 0x0

    .line 1572
    .local v24, "videoThumbCount":I
    const/4 v10, 0x0

    .line 1575
    .local v10, "c":Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    .line 1576
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaScanner;->mPackageName:Ljava/lang/String;

    .line 1577
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner;->mThumbsUri:Landroid/net/Uri;

    .line 1578
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "_data"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 1579
    const/4 v6, 0x0

    .line 1580
    const/4 v7, 0x0

    .line 1581
    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 1575
    invoke-interface/range {v2 .. v9}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v10

    .line 1582
    .local v10, "c":Landroid/database/Cursor;
    if-eqz v10, :cond_3

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1583
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v20

    .line 1585
    :cond_2
    const/4 v2, 0x0

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 1586
    .restart local v18    # "fullPathString":Ljava/lang/String;
    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1587
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1590
    .end local v18    # "fullPathString":Ljava/lang/String;
    :cond_3
    if-eqz v10, :cond_4

    .line 1591
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1592
    const/4 v10, 0x0

    .line 1595
    .end local v10    # "c":Landroid/database/Cursor;
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    .line 1596
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaScanner;->mPackageName:Ljava/lang/String;

    .line 1597
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner;->mVideoThumbsUri:Landroid/net/Uri;

    .line 1598
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "_data"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 1599
    const/4 v6, 0x0

    .line 1600
    const/4 v7, 0x0

    .line 1601
    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 1595
    invoke-interface/range {v2 .. v9}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v10

    .line 1602
    .restart local v10    # "c":Landroid/database/Cursor;
    if-eqz v10, :cond_6

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1603
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v24

    .line 1605
    :cond_5
    const/4 v2, 0x0

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 1606
    .restart local v18    # "fullPathString":Ljava/lang/String;
    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1607
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_5

    .line 1609
    .end local v18    # "fullPathString":Ljava/lang/String;
    :cond_6
    if-eqz v10, :cond_7

    .line 1610
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1611
    const/4 v10, 0x0

    .line 1614
    .end local v10    # "c":Landroid/database/Cursor;
    :cond_7
    if-gtz v20, :cond_8

    if-lez v24, :cond_b

    .line 1615
    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/media/MiniThumbFile;->getMiniThumbFilePrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 1616
    .local v22, "miniThumbFilePath":Ljava/lang/String;
    invoke-virtual {v14}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .line 1617
    .local v21, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_9
    :goto_1
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1618
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    .line 1619
    .local v23, "path":Ljava/lang/String;
    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1620
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 1634
    .end local v21    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v22    # "miniThumbFilePath":Ljava/lang/String;
    .end local v23    # "path":Ljava/lang/String;
    :catch_0
    move-exception v12

    .line 1636
    .local v12, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string/jumbo v2, "MediaScanner"

    const-string/jumbo v3, "pruneDeadThumbnailFiles: RemoteException!"

    invoke-static {v2, v3, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1638
    if-eqz v10, :cond_a

    .line 1639
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1642
    .end local v12    # "e":Landroid/os/RemoteException;
    :cond_a
    :goto_2
    const-string/jumbo v2, "MediaScanner"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "pruneDeadThumbnailFiles<<< for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1556
    return-void

    .line 1625
    :cond_b
    :try_start_2
    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, "fileToDelete$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 1626
    .local v15, "fileToDelete":Ljava/lang/String;
    const-string/jumbo v2, "MediaScanner"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "delete dead thumbnail file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1628
    :try_start_3
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    .line 1629
    :catch_1
    move-exception v13

    .line 1631
    .local v13, "ex":Ljava/lang/SecurityException;
    :try_start_4
    const-string/jumbo v2, "MediaScanner"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "pruneDeadThumbnailFiles: path="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    .line 1637
    .end local v13    # "ex":Ljava/lang/SecurityException;
    .end local v15    # "fileToDelete":Ljava/lang/String;
    .end local v16    # "fileToDelete$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    .line 1638
    if-eqz v10, :cond_c

    .line 1639
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1637
    :cond_c
    throw v2

    .line 1638
    .restart local v16    # "fileToDelete$iterator":Ljava/util/Iterator;
    :cond_d
    if-eqz v10, :cond_a

    .line 1639
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_2
.end method

.method private releaseResources()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1703
    iget-object v0, p0, Landroid/media/MediaScanner;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    if-eqz v0, :cond_0

    .line 1704
    iget-object v0, p0, Landroid/media/MediaScanner;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v0}, Landroid/drm/DrmManagerClient;->release()V

    .line 1705
    iput-object v1, p0, Landroid/media/MediaScanner;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    .line 1701
    :cond_0
    return-void
.end method

.method private setDefaultRingtoneFileNames()V
    .locals 3

    .prologue
    .line 454
    const-string/jumbo v0, "ro.config.ringtone"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mDefaultRingtoneFilename:Ljava/lang/String;

    .line 456
    const-string/jumbo v0, "ro.config.notification_sound"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mDefaultNotificationFilename:Ljava/lang/String;

    .line 458
    const-string/jumbo v0, "ro.config.alarm_alert"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mDefaultAlarmAlertFilename:Ljava/lang/String;

    .line 461
    const-string/jumbo v0, "ro.config.sms_sound"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mDefaultSmsFilename:Ljava/lang/String;

    .line 463
    const-string/jumbo v0, "ro.config.mail_sound"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mDefaultMailFilename:Ljava/lang/String;

    .line 467
    const-string/jumbo v0, "MediaScanner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDefaultRingtoneFileNames: ringtone="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MediaScanner;->mDefaultRingtoneFilename:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 468
    const-string/jumbo v2, ",notification="

    .line 467
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 468
    iget-object v2, p0, Landroid/media/MediaScanner;->mDefaultNotificationFilename:Ljava/lang/String;

    .line 467
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 468
    const-string/jumbo v2, ",alarm="

    .line 467
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 468
    iget-object v2, p0, Landroid/media/MediaScanner;->mDefaultAlarmAlertFilename:Ljava/lang/String;

    .line 467
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    return-void
.end method


# virtual methods
.method public native extractAlbumArt(Ljava/io/FileDescriptor;)[B
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 2315
    iget-object v0, p0, Landroid/media/MediaScanner;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    .line 2316
    invoke-direct {p0}, Landroid/media/MediaScanner;->native_finalize()V

    .line 2314
    return-void
.end method

.method makeEntryFor(Ljava/lang/String;)Landroid/media/MediaScanner$FileEntry;
    .locals 16
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 1960
    const/4 v14, 0x0

    .line 1962
    .local v14, "c":Landroid/database/Cursor;
    :try_start_0
    const-string/jumbo v5, "_data=?"

    .line 1963
    .local v5, "where":Ljava/lang/String;
    const/4 v1, 0x1

    new-array v6, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v6, v1

    .line 1964
    .local v6, "selectionArgs":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaScanner;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaScanner;->mFilesUriNoNotify:Landroid/net/Uri;

    sget-object v4, Landroid/media/MediaScanner;->FILES_PRESCAN_PROJECTION:[Ljava/lang/String;

    .line 1965
    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 1964
    invoke-interface/range {v1 .. v8}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v14

    .line 1966
    .local v14, "c":Landroid/database/Cursor;
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1967
    const/4 v1, 0x0

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 1968
    .local v8, "rowId":J
    const/4 v1, 0x2

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 1969
    .local v13, "format":I
    const/4 v1, 0x3

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 1970
    .local v11, "lastModified":J
    new-instance v7, Landroid/media/MediaScanner$FileEntry;

    move-object/from16 v10, p1

    invoke-direct/range {v7 .. v13}, Landroid/media/MediaScanner$FileEntry;-><init>(JLjava/lang/String;JI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1976
    if-eqz v14, :cond_0

    .line 1977
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 1970
    :cond_0
    return-object v7

    .line 1976
    .end local v8    # "rowId":J
    .end local v11    # "lastModified":J
    .end local v13    # "format":I
    :cond_1
    if-eqz v14, :cond_2

    .line 1977
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 1980
    .end local v5    # "where":Ljava/lang/String;
    .end local v6    # "selectionArgs":[Ljava/lang/String;
    .end local v14    # "c":Landroid/database/Cursor;
    :cond_2
    :goto_0
    const/4 v1, 0x0

    return-object v1

    .line 1972
    :catch_0
    move-exception v15

    .line 1974
    .local v15, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string/jumbo v1, "MediaScanner"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "makeEntryFor: RemoteException! path="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1976
    if-eqz v14, :cond_2

    .line 1977
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1975
    .end local v15    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    .line 1976
    if-eqz v14, :cond_3

    .line 1977
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 1975
    :cond_3
    throw v1
.end method

.method public postScanAll(Ljava/util/ArrayList;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2364
    .local p1, "playlistFilePathList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/media/MediaScanner;->mProcessPlaylists:Z

    if-eqz v3, :cond_3

    .line 2365
    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "path$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 2366
    .local v5, "path":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/media/MediaScanner;->makeEntryFor(Ljava/lang/String;)Landroid/media/MediaScanner$FileEntry;

    move-result-object v2

    .line 2367
    .local v2, "entry":Landroid/media/MediaScanner$FileEntry;
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2368
    .local v12, "file":Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    .line 2370
    .local v6, "lastModified":J
    if-eqz v2, :cond_6

    iget-wide v0, v2, Landroid/media/MediaScanner$FileEntry;->mLastModified:J

    move-wide/from16 v16, v0

    sub-long v10, v6, v16

    .line 2371
    .local v10, "delta":J
    :goto_1
    const-wide/16 v16, 0x1

    cmp-long v3, v10, v16

    if-gtz v3, :cond_0

    const-wide/16 v16, -0x1

    cmp-long v3, v10, v16

    if-gez v3, :cond_7

    :cond_0
    const/4 v14, 0x1

    .line 2372
    .local v14, "wasModified":Z
    :goto_2
    if-eqz v2, :cond_1

    if-eqz v14, :cond_2

    .line 2373
    :cond_1
    if-eqz v14, :cond_8

    .line 2374
    iput-wide v6, v2, Landroid/media/MediaScanner$FileEntry;->mLastModified:J

    .line 2378
    :goto_3
    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/media/MediaScanner$FileEntry;->mLastModifiedChanged:Z

    .line 2380
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaScanner;->mPlayLists:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2384
    .end local v2    # "entry":Landroid/media/MediaScanner$FileEntry;
    .end local v5    # "path":Ljava/lang/String;
    .end local v6    # "lastModified":J
    .end local v10    # "delta":J
    .end local v12    # "file":Ljava/io/File;
    .end local v13    # "path$iterator":Ljava/util/Iterator;
    .end local v14    # "wasModified":Z
    :catch_0
    move-exception v9

    .line 2385
    .local v9, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "MediaScanner"

    const-string/jumbo v4, "RemoteException in MediaScanner.scan()"

    invoke-static {v3, v4, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2388
    .end local v9    # "e":Landroid/os/RemoteException;
    :cond_3
    :goto_4
    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/MediaScanner;->mOriginalCount:I

    if-eqz v3, :cond_4

    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/MediaScanner;->mOriginalVideoCount:I

    if-nez v3, :cond_5

    .line 2389
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaScanner;->mImagesUri:Landroid/net/Uri;

    const-string/jumbo v4, "external"

    invoke-static {v4}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 2388
    if-eqz v3, :cond_5

    .line 2390
    invoke-direct/range {p0 .. p0}, Landroid/media/MediaScanner;->pruneDeadThumbnailFiles()V

    .line 2394
    :cond_5
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/media/MediaScanner;->mPlayLists:Ljava/util/ArrayList;

    .line 2395
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    .line 2396
    const-string/jumbo v3, "MediaScanner"

    const-string/jumbo v4, "postScanAll"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2360
    return-void

    .line 2370
    .restart local v2    # "entry":Landroid/media/MediaScanner$FileEntry;
    .restart local v5    # "path":Ljava/lang/String;
    .restart local v6    # "lastModified":J
    .restart local v12    # "file":Ljava/io/File;
    .restart local v13    # "path$iterator":Ljava/util/Iterator;
    :cond_6
    const-wide/16 v10, 0x0

    .restart local v10    # "delta":J
    goto :goto_1

    .line 2371
    :cond_7
    const/4 v14, 0x0

    .restart local v14    # "wasModified":Z
    goto :goto_2

    .line 2376
    :cond_8
    :try_start_1
    new-instance v2, Landroid/media/MediaScanner$FileEntry;

    .end local v2    # "entry":Landroid/media/MediaScanner$FileEntry;
    const-wide/16 v3, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v8}, Landroid/media/MediaScanner$FileEntry;-><init>(JLjava/lang/String;JI)V

    .restart local v2    # "entry":Landroid/media/MediaScanner$FileEntry;
    goto :goto_3

    .line 2382
    .end local v2    # "entry":Landroid/media/MediaScanner$FileEntry;
    .end local v5    # "path":Ljava/lang/String;
    .end local v6    # "lastModified":J
    .end local v10    # "delta":J
    .end local v12    # "file":Ljava/io/File;
    .end local v14    # "wasModified":Z
    :cond_9
    invoke-direct/range {p0 .. p0}, Landroid/media/MediaScanner;->processPlayLists()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4
.end method

.method public preScanAll(Ljava/lang/String;)V
    .locals 3
    .param p1, "volume"    # Ljava/lang/String;

    .prologue
    .line 2347
    :try_start_0
    invoke-direct {p0, p1}, Landroid/media/MediaScanner;->initialize(Ljava/lang/String;)V

    .line 2348
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Landroid/media/MediaScanner;->prescan(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2345
    :goto_0
    return-void

    .line 2349
    :catch_0
    move-exception v0

    .line 2350
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "MediaScanner"

    const-string/jumbo v2, "RemoteException in MediaScanner.scan()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public release()V
    .locals 0

    .prologue
    .line 2310
    invoke-direct {p0}, Landroid/media/MediaScanner;->native_finalize()V

    .line 2309
    return-void
.end method

.method public scanDirectories([Ljava/lang/String;Ljava/lang/String;)V
    .locals 18
    .param p1, "directories"    # [Ljava/lang/String;
    .param p2, "volumeName"    # Ljava/lang/String;

    .prologue
    .line 1732
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 1733
    .local v12, "start":J
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/media/MediaScanner;->initialize(Ljava/lang/String;)V

    .line 1734
    const/4 v14, 0x0

    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Landroid/media/MediaScanner;->prescan(Ljava/lang/String;Z)V

    .line 1735
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 1739
    .local v8, "prescan":J
    new-instance v14, Landroid/media/MediaInserter;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mPackageName:Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x1f4

    invoke-direct/range {v14 .. v17}, Landroid/media/MediaInserter;-><init>(Landroid/content/IContentProvider;Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/media/MediaScanner;->mMediaInserter:Landroid/media/MediaInserter;

    .line 1742
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    move-object/from16 v0, p1

    array-length v14, v0

    if-ge v5, v14, :cond_0

    .line 1743
    aget-object v14, p1, v5

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/MediaScanner;->mClient:Landroid/media/MediaScanner$MyMediaScannerClient;

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Landroid/media/MediaScanner;->processDirectory(Ljava/lang/String;Landroid/media/MediaScannerClient;)V

    .line 1742
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1748
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/media/MediaScanner;->mMediaInserter:Landroid/media/MediaInserter;

    invoke-virtual {v14}, Landroid/media/MediaInserter;->flushAll()V

    .line 1749
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/media/MediaScanner;->mMediaInserter:Landroid/media/MediaInserter;

    .line 1752
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 1753
    .local v10, "scan":J
    invoke-direct/range {p0 .. p1}, Landroid/media/MediaScanner;->postscan([Ljava/lang/String;)V

    .line 1754
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 1757
    .local v6, "end":J
    const-string/jumbo v14, "MediaScanner"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, " prescan time: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sub-long v16, v8, v12

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "ms\n"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1758
    const-string/jumbo v14, "MediaScanner"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "    scan time: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sub-long v16, v10, v8

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "ms\n"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1759
    const-string/jumbo v14, "MediaScanner"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "postscan time: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sub-long v16, v6, v10

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "ms\n"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1760
    const-string/jumbo v14, "MediaScanner"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "   total time: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sub-long v16, v6, v12

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "ms\n"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1771
    invoke-direct/range {p0 .. p0}, Landroid/media/MediaScanner;->releaseResources()V

    .line 1730
    .end local v5    # "i":I
    .end local v6    # "end":J
    .end local v8    # "prescan":J
    .end local v10    # "scan":J
    .end local v12    # "start":J
    :goto_1
    return-void

    .line 1768
    :catch_0
    move-exception v3

    .line 1769
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string/jumbo v14, "MediaScanner"

    const-string/jumbo v15, "RemoteException in MediaScanner.scan()"

    invoke-static {v14, v15, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1771
    invoke-direct/range {p0 .. p0}, Landroid/media/MediaScanner;->releaseResources()V

    goto :goto_1

    .line 1765
    .end local v3    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v4

    .line 1767
    .local v4, "e":Ljava/lang/UnsupportedOperationException;
    :try_start_2
    const-string/jumbo v14, "MediaScanner"

    const-string/jumbo v15, "UnsupportedOperationException in MediaScanner.scan()"

    invoke-static {v14, v15, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1771
    invoke-direct/range {p0 .. p0}, Landroid/media/MediaScanner;->releaseResources()V

    goto :goto_1

    .line 1762
    .end local v4    # "e":Ljava/lang/UnsupportedOperationException;
    :catch_2
    move-exception v2

    .line 1764
    .local v2, "e":Landroid/database/SQLException;
    :try_start_3
    const-string/jumbo v14, "MediaScanner"

    const-string/jumbo v15, "SQLException in MediaScanner.scan()"

    invoke-static {v14, v15, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1771
    invoke-direct/range {p0 .. p0}, Landroid/media/MediaScanner;->releaseResources()V

    goto :goto_1

    .line 1770
    .end local v2    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v14

    .line 1771
    invoke-direct/range {p0 .. p0}, Landroid/media/MediaScanner;->releaseResources()V

    .line 1770
    throw v14
.end method

.method public scanFolders(Landroid/os/Handler;[Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/ArrayList;
    .locals 18
    .param p1, "insertHanlder"    # Landroid/os/Handler;
    .param p2, "folders"    # [Ljava/lang/String;
    .param p3, "volume"    # Ljava/lang/String;
    .param p4, "isSingelFile"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2413
    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Landroid/media/MediaScanner;->initialize(Ljava/lang/String;)V

    .line 2416
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaScanner;->mPlayLists:Ljava/util/ArrayList;

    if-nez v3, :cond_0

    .line 2417
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/media/MediaScanner;->mPlayLists:Ljava/util/ArrayList;

    .line 2424
    :goto_0
    new-instance v3, Landroid/media/MediaInserter;

    const/16 v5, 0x64

    move-object/from16 v0, p1

    invoke-direct {v3, v0, v5}, Landroid/media/MediaInserter;-><init>(Landroid/os/Handler;I)V

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/media/MediaScanner;->mMediaInserter:Landroid/media/MediaInserter;

    .line 2427
    const/4 v3, 0x0

    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v16, v3

    :goto_1
    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_2

    aget-object v4, p2, v16

    .line 2428
    .local v4, "path":Ljava/lang/String;
    if-eqz p4, :cond_1

    .line 2429
    new-instance v15, Ljava/io/File;

    invoke-direct {v15, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2430
    .local v15, "file":Ljava/io/File;
    invoke-virtual {v15}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long v6, v8, v10

    .line 2431
    .local v6, "lastModifiedSeconds":J
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaScanner;->mClient:Landroid/media/MediaScanner$MyMediaScannerClient;

    invoke-virtual {v15}, Ljava/io/File;->length()J

    move-result-wide v8

    .line 2432
    invoke-virtual {v15}, Ljava/io/File;->isDirectory()Z

    move-result v10

    invoke-static {v4}, Landroid/media/MediaScanner;->isNoMediaPath(Ljava/lang/String;)Z

    move-result v12

    .line 2431
    const/4 v5, 0x0

    .line 2432
    const/4 v11, 0x0

    .line 2431
    invoke-virtual/range {v3 .. v12}, Landroid/media/MediaScanner$MyMediaScannerClient;->doScanFile(Ljava/lang/String;Ljava/lang/String;JJZZZ)Landroid/net/Uri;

    .line 2427
    .end local v6    # "lastModifiedSeconds":J
    .end local v15    # "file":Ljava/io/File;
    :goto_2
    add-int/lit8 v3, v16, 0x1

    move/from16 v16, v3

    goto :goto_1

    .line 2419
    .end local v4    # "path":Ljava/lang/String;
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaScanner;->mPlayLists:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 2442
    :catch_0
    move-exception v2

    .line 2444
    .local v2, "e":Landroid/database/SQLException;
    const-string/jumbo v3, "MediaScanner"

    const-string/jumbo v5, "SQLException in MediaScanner.scan()"

    invoke-static {v3, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2453
    .end local v2    # "e":Landroid/database/SQLException;
    :goto_3
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/media/MediaScanner;->mPlayLists:Ljava/util/ArrayList;

    .line 2454
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    .line 2456
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaScanner;->mPlaylistFilePathList:Ljava/util/ArrayList;

    return-object v3

    .line 2434
    .restart local v4    # "path":Ljava/lang/String;
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaScanner;->mClient:Landroid/media/MediaScanner$MyMediaScannerClient;

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v3}, Landroid/media/MediaScanner;->processDirectory(Ljava/lang/String;Landroid/media/MediaScannerClient;)V
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_2

    .line 2445
    .end local v4    # "path":Ljava/lang/String;
    :catch_1
    move-exception v14

    .line 2447
    .local v14, "e":Ljava/lang/UnsupportedOperationException;
    const-string/jumbo v3, "MediaScanner"

    const-string/jumbo v5, "UnsupportedOperationException in MediaScanner.scan()"

    invoke-static {v3, v5, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 2439
    .end local v14    # "e":Ljava/lang/UnsupportedOperationException;
    :cond_2
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaScanner;->mMediaInserter:Landroid/media/MediaInserter;

    invoke-virtual {v3}, Landroid/media/MediaInserter;->flushAll()V

    .line 2440
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/media/MediaScanner;->mMediaInserter:Landroid/media/MediaInserter;
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    .line 2448
    :catch_2
    move-exception v13

    .line 2449
    .local v13, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "MediaScanner"

    const-string/jumbo v5, "RemoteException in MediaScanner.scan()"

    invoke-static {v3, v5, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3
.end method

.method public scanFolders([Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/ArrayList;
    .locals 18
    .param p1, "folders"    # [Ljava/lang/String;
    .param p2, "volume"    # Ljava/lang/String;
    .param p3, "isSingelFileOrEmptyFolder"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2471
    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/media/MediaScanner;->initialize(Ljava/lang/String;)V

    .line 2474
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaScanner;->mPlayLists:Ljava/util/ArrayList;

    if-nez v3, :cond_2

    .line 2475
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/media/MediaScanner;->mPlayLists:Ljava/util/ArrayList;

    .line 2482
    :goto_0
    new-instance v3, Landroid/media/MediaInserter;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/media/MediaScanner;->mPackageName:Ljava/lang/String;

    const/16 v9, 0x1f4

    invoke-direct {v3, v5, v8, v9}, Landroid/media/MediaInserter;-><init>(Landroid/content/IContentProvider;Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/media/MediaScanner;->mMediaInserter:Landroid/media/MediaInserter;

    .line 2485
    const/4 v3, 0x0

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v16, v3

    :goto_1
    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_3

    aget-object v4, p1, v16

    .line 2486
    .local v4, "folder":Ljava/lang/String;
    new-instance v15, Ljava/io/File;

    invoke-direct {v15, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2487
    .local v15, "file":Ljava/io/File;
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2489
    invoke-virtual {v15}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long v6, v8, v10

    .line 2490
    .local v6, "lastModifiedSeconds":J
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaScanner;->mClient:Landroid/media/MediaScanner$MyMediaScannerClient;

    invoke-virtual {v15}, Ljava/io/File;->length()J

    move-result-wide v8

    .line 2491
    invoke-virtual {v15}, Ljava/io/File;->isDirectory()Z

    move-result v10

    invoke-static {v4}, Landroid/media/MediaScanner;->isNoMediaPath(Ljava/lang/String;)Z

    move-result v12

    .line 2490
    const/4 v5, 0x0

    .line 2491
    const/4 v11, 0x0

    .line 2490
    invoke-virtual/range {v3 .. v12}, Landroid/media/MediaScanner$MyMediaScannerClient;->doScanFile(Ljava/lang/String;Ljava/lang/String;JJZZZ)Landroid/net/Uri;

    .line 2494
    .end local v6    # "lastModifiedSeconds":J
    :cond_0
    if-nez p3, :cond_1

    .line 2495
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaScanner;->mClient:Landroid/media/MediaScanner$MyMediaScannerClient;

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v3}, Landroid/media/MediaScanner;->processDirectory(Ljava/lang/String;Landroid/media/MediaScannerClient;)V

    .line 2485
    :cond_1
    add-int/lit8 v3, v16, 0x1

    move/from16 v16, v3

    goto :goto_1

    .line 2477
    .end local v4    # "folder":Ljava/lang/String;
    .end local v15    # "file":Ljava/io/File;
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaScanner;->mPlayLists:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 2504
    :catch_0
    move-exception v2

    .line 2506
    .local v2, "e":Landroid/database/SQLException;
    const-string/jumbo v3, "MediaScanner"

    const-string/jumbo v5, "SQLException in MediaScanner.scan()"

    invoke-static {v3, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2515
    .end local v2    # "e":Landroid/database/SQLException;
    :goto_2
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/media/MediaScanner;->mPlayLists:Ljava/util/ArrayList;

    .line 2516
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    .line 2518
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaScanner;->mPlaylistFilePathList:Ljava/util/ArrayList;

    return-object v3

    .line 2501
    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaScanner;->mMediaInserter:Landroid/media/MediaInserter;

    invoke-virtual {v3}, Landroid/media/MediaInserter;->flushAll()V

    .line 2502
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/media/MediaScanner;->mMediaInserter:Landroid/media/MediaInserter;
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_2

    .line 2507
    :catch_1
    move-exception v14

    .line 2509
    .local v14, "e":Ljava/lang/UnsupportedOperationException;
    const-string/jumbo v3, "MediaScanner"

    const-string/jumbo v5, "UnsupportedOperationException in MediaScanner.scan()"

    invoke-static {v3, v5, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 2510
    .end local v14    # "e":Ljava/lang/UnsupportedOperationException;
    :catch_2
    move-exception v13

    .line 2511
    .local v13, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "MediaScanner"

    const-string/jumbo v5, "RemoteException in MediaScanner.scan()"

    invoke-static {v3, v5, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method public scanMtpFile(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 27
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "volumeName"    # Ljava/lang/String;
    .param p3, "objectHandle"    # I
    .param p4, "format"    # I

    .prologue
    .line 1898
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/media/MediaScanner;->initialize(Ljava/lang/String;)V

    .line 1899
    invoke-static/range {p1 .. p1}, Landroid/media/MediaFile;->getFileType(Ljava/lang/String;)Landroid/media/MediaFile$MediaFileType;

    move-result-object v26

    .line 1900
    .local v26, "mediaFileType":Landroid/media/MediaFile$MediaFileType;
    if-nez v26, :cond_3

    const/16 v25, 0x0

    .line 1901
    .local v25, "fileType":I
    :goto_0
    new-instance v23, Ljava/io/File;

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1902
    .local v23, "file":Ljava/io/File;
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    const-wide/16 v10, 0x3e8

    div-long v14, v4, v10

    .line 1904
    .local v14, "lastModifiedSeconds":J
    invoke-static/range {v25 .. v25}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static/range {v25 .. v25}, Landroid/media/MediaFile;->isVideoFileType(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1924
    :cond_0
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/media/MediaScanner;->mMtpObjectHandle:I

    .line 1925
    const/16 v24, 0x0

    .line 1927
    .local v24, "fileList":Landroid/database/Cursor;
    :try_start_0
    invoke-static/range {v25 .. v25}, Landroid/media/MediaFile;->isPlayListFileType(I)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1929
    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Landroid/media/MediaScanner;->prescan(Ljava/lang/String;Z)V

    .line 1931
    invoke-virtual/range {p0 .. p1}, Landroid/media/MediaScanner;->makeEntryFor(Ljava/lang/String;)Landroid/media/MediaScanner$FileEntry;

    move-result-object v22

    .line 1932
    .local v22, "entry":Landroid/media/MediaScanner$FileEntry;
    if-eqz v22, :cond_1

    .line 1933
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/media/MediaScanner;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/media/MediaScanner;->mFilesUri:Landroid/net/Uri;

    .line 1934
    sget-object v13, Landroid/media/MediaScanner;->FILES_PRESCAN_PROJECTION:[Ljava/lang/String;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 1933
    invoke-interface/range {v10 .. v17}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    .end local v14    # "lastModifiedSeconds":J
    move-result-object v24

    .line 1935
    .local v24, "fileList":Landroid/database/Cursor;
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Landroid/media/MediaScanner;->processPlayList(Landroid/media/MediaScanner$FileEntry;Landroid/database/Cursor;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1948
    .end local v22    # "entry":Landroid/media/MediaScanner$FileEntry;
    .end local v24    # "fileList":Landroid/database/Cursor;
    :cond_1
    :goto_1
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Landroid/media/MediaScanner;->mMtpObjectHandle:I

    .line 1949
    if-eqz v24, :cond_2

    .line 1950
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V

    .line 1952
    :cond_2
    invoke-direct/range {p0 .. p0}, Landroid/media/MediaScanner;->releaseResources()V

    .line 1897
    :goto_2
    return-void

    .line 1900
    .end local v23    # "file":Ljava/io/File;
    .end local v25    # "fileType":I
    :cond_3
    move-object/from16 v0, v26

    iget v0, v0, Landroid/media/MediaFile$MediaFileType;->fileType:I

    move/from16 v25, v0

    .restart local v25    # "fileType":I
    goto :goto_0

    .line 1905
    .restart local v14    # "lastModifiedSeconds":J
    .restart local v23    # "file":Ljava/io/File;
    :cond_4
    invoke-static/range {v25 .. v25}, Landroid/media/MediaFile;->isImageFileType(I)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static/range {v25 .. v25}, Landroid/media/MediaFile;->isPlayListFileType(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1906
    invoke-static/range {v25 .. v25}, Landroid/media/MediaFile;->isDrmFileType(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1909
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 1911
    .local v7, "values":Landroid/content/ContentValues;
    const-string/jumbo v6, "_size"

    const/16 v4, 0x3001

    move/from16 v0, p4

    if-ne v0, v4, :cond_5

    const-wide/16 v4, 0x0

    :goto_3
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v7, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1913
    const-string/jumbo v4, "date_modified"

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1915
    const/4 v4, 0x1

    :try_start_1
    new-array v9, v4, [Ljava/lang/String;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v9, v5

    .line 1916
    .local v9, "whereArgs":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/MediaScanner;->mPackageName:Ljava/lang/String;

    invoke-static/range {p2 .. p2}, Landroid/provider/MediaStore$Files;->getMtpObjectsUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 1917
    const-string/jumbo v8, "_id=?"

    .line 1916
    invoke-interface/range {v4 .. v9}, Landroid/content/IContentProvider;->update(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1921
    .end local v9    # "whereArgs":[Ljava/lang/String;
    :goto_4
    return-void

    .line 1911
    :cond_5
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->length()J

    move-result-wide v4

    goto :goto_3

    .line 1918
    :catch_0
    move-exception v21

    .line 1919
    .local v21, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "MediaScanner"

    const-string/jumbo v5, "RemoteException in scanMtpFile"

    move-object/from16 v0, v21

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 1939
    .end local v7    # "values":Landroid/content/ContentValues;
    .end local v21    # "e":Landroid/os/RemoteException;
    .local v24, "fileList":Landroid/database/Cursor;
    :cond_6
    const/4 v4, 0x0

    :try_start_2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4}, Landroid/media/MediaScanner;->prescan(Ljava/lang/String;Z)V

    .line 1942
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/media/MediaScanner;->mClient:Landroid/media/MediaScanner$MyMediaScannerClient;

    move-object/from16 v0, v26

    iget-object v13, v0, Landroid/media/MediaFile$MediaFileType;->mimeType:Ljava/lang/String;

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->length()J

    move-result-wide v16

    .line 1943
    const/16 v4, 0x3001

    move/from16 v0, p4

    if-ne v0, v4, :cond_8

    const/16 v18, 0x1

    :goto_5
    invoke-static/range {p1 .. p1}, Landroid/media/MediaScanner;->isNoMediaPath(Ljava/lang/String;)Z

    move-result v20

    const/16 v19, 0x1

    move-object/from16 v12, p1

    .line 1942
    invoke-virtual/range {v11 .. v20}, Landroid/media/MediaScanner$MyMediaScannerClient;->doScanFile(Ljava/lang/String;Ljava/lang/String;JJZZZ)Landroid/net/Uri;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    .line 1945
    .end local v14    # "lastModifiedSeconds":J
    .end local v24    # "fileList":Landroid/database/Cursor;
    :catch_1
    move-exception v21

    .line 1946
    .restart local v21    # "e":Landroid/os/RemoteException;
    :try_start_3
    const-string/jumbo v4, "MediaScanner"

    const-string/jumbo v5, "RemoteException in MediaScanner.scanFile()"

    move-object/from16 v0, v21

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1948
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Landroid/media/MediaScanner;->mMtpObjectHandle:I

    .line 1949
    if-eqz v24, :cond_7

    .line 1950
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V

    .line 1952
    :cond_7
    invoke-direct/range {p0 .. p0}, Landroid/media/MediaScanner;->releaseResources()V

    goto/16 :goto_2

    .line 1943
    .end local v21    # "e":Landroid/os/RemoteException;
    .restart local v14    # "lastModifiedSeconds":J
    .restart local v24    # "fileList":Landroid/database/Cursor;
    :cond_8
    const/16 v18, 0x0

    goto :goto_5

    .line 1947
    .end local v14    # "lastModifiedSeconds":J
    .end local v24    # "fileList":Landroid/database/Cursor;
    :catchall_0
    move-exception v4

    .line 1948
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Landroid/media/MediaScanner;->mMtpObjectHandle:I

    .line 1949
    if-eqz v24, :cond_9

    .line 1950
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V

    .line 1952
    :cond_9
    invoke-direct/range {p0 .. p0}, Landroid/media/MediaScanner;->releaseResources()V

    .line 1947
    throw v4
.end method

.method public scanSingleFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 12
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "volumeName"    # Ljava/lang/String;
    .param p3, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 1778
    :try_start_0
    invoke-direct {p0, p2}, Landroid/media/MediaScanner;->initialize(Ljava/lang/String;)V

    .line 1779
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Landroid/media/MediaScanner;->prescan(Ljava/lang/String;Z)V

    .line 1781
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1782
    .local v11, "file":Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1783
    const-string/jumbo v1, "MediaScanner"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "scanSingleFile: Not exist path="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1784
    const/4 v1, 0x0

    .line 1797
    invoke-direct {p0}, Landroid/media/MediaScanner;->releaseResources()V

    .line 1784
    return-object v1

    .line 1788
    :cond_0
    :try_start_1
    invoke-virtual {v11}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    const-wide/16 v6, 0x3e8

    div-long v4, v2, v6

    .line 1791
    .local v4, "lastModifiedSeconds":J
    iget-object v1, p0, Landroid/media/MediaScanner;->mClient:Landroid/media/MediaScanner$MyMediaScannerClient;

    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v6

    .line 1792
    invoke-virtual {v11}, Ljava/io/File;->isDirectory()Z

    move-result v8

    invoke-static {p1}, Landroid/media/MediaScanner;->isNoMediaPath(Ljava/lang/String;)Z

    move-result v10

    const/4 v9, 0x1

    move-object v2, p1

    move-object v3, p3

    .line 1791
    invoke-virtual/range {v1 .. v10}, Landroid/media/MediaScanner$MyMediaScannerClient;->doScanFile(Ljava/lang/String;Ljava/lang/String;JJZZZ)Landroid/net/Uri;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 1797
    invoke-direct {p0}, Landroid/media/MediaScanner;->releaseResources()V

    .line 1791
    return-object v1

    .line 1793
    .end local v4    # "lastModifiedSeconds":J
    .end local v11    # "file":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 1794
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v1, "MediaScanner"

    const-string/jumbo v2, "RemoteException in MediaScanner.scanFile()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1795
    const/4 v1, 0x0

    .line 1797
    invoke-direct {p0}, Landroid/media/MediaScanner;->releaseResources()V

    .line 1795
    return-object v1

    .line 1796
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    .line 1797
    invoke-direct {p0}, Landroid/media/MediaScanner;->releaseResources()V

    .line 1796
    throw v1
.end method

.method public native setLocale(Ljava/lang/String;)V
.end method
