.class public Landroid/app/DownloadManager$Request;
.super Ljava/lang/Object;
.source "DownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/DownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Request"
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field public static final NETWORK_BLUETOOTH:I = 0x4

.field public static final NETWORK_MOBILE:I = 0x1

.field public static final NETWORK_WIFI:I = 0x2

.field private static final SCANNABLE_VALUE_NO:I = 0x2

.field private static final SCANNABLE_VALUE_YES:I = 0x0

.field public static final VISIBILITY_HIDDEN:I = 0x2

.field public static final VISIBILITY_VISIBLE:I = 0x0

.field public static final VISIBILITY_VISIBLE_NOTIFY_COMPLETED:I = 0x1

.field public static final VISIBILITY_VISIBLE_NOTIFY_ONLY_COMPLETION:I = 0x3


# instance fields
.field private mAllowedNetworkTypes:I

.field private mDescription:Ljava/lang/CharSequence;

.field private mDestinationUri:Landroid/net/Uri;

.field private mIsVisibleInDownloadsUi:Z

.field private mMeteredAllowed:Z

.field private mMimeType:Ljava/lang/String;

.field private mNeedConfirmDownload:Z

.field private mNotificationVisibility:I

.field private mRequestHeaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mRoamingAllowed:Z

.field private mScannable:Z

.field private mTitle:Ljava/lang/CharSequence;

.field private mUri:Landroid/net/Uri;

.field private mUseSystemCache:Z

.field private mUserAgent:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-class v0, Landroid/app/DownloadManager$Request;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Landroid/app/DownloadManager$Request;->-assertionsDisabled:Z

    .line 410
    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>(Landroid/net/Uri;)V
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 492
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 432
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/app/DownloadManager$Request;->mRequestHeaders:Ljava/util/List;

    .line 436
    const/4 v1, -0x1

    iput v1, p0, Landroid/app/DownloadManager$Request;->mAllowedNetworkTypes:I

    .line 437
    iput-boolean v3, p0, Landroid/app/DownloadManager$Request;->mRoamingAllowed:Z

    .line 438
    iput-boolean v3, p0, Landroid/app/DownloadManager$Request;->mMeteredAllowed:Z

    .line 439
    iput-boolean v3, p0, Landroid/app/DownloadManager$Request;->mIsVisibleInDownloadsUi:Z

    .line 440
    iput-boolean v2, p0, Landroid/app/DownloadManager$Request;->mScannable:Z

    .line 441
    iput-boolean v2, p0, Landroid/app/DownloadManager$Request;->mUseSystemCache:Z

    .line 443
    iput-boolean v2, p0, Landroid/app/DownloadManager$Request;->mNeedConfirmDownload:Z

    .line 487
    iput v2, p0, Landroid/app/DownloadManager$Request;->mNotificationVisibility:I

    .line 493
    if-nez p1, :cond_0

    .line 494
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 496
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 497
    .local v0, "scheme":Ljava/lang/String;
    if-eqz v0, :cond_2

    const-string/jumbo v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "https"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 500
    :cond_1
    iput-object p1, p0, Landroid/app/DownloadManager$Request;->mUri:Landroid/net/Uri;

    .line 492
    return-void

    .line 498
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Can only download HTTP/HTTPS URIs: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "uriString"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 503
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 432
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/DownloadManager$Request;->mRequestHeaders:Ljava/util/List;

    .line 436
    const/4 v0, -0x1

    iput v0, p0, Landroid/app/DownloadManager$Request;->mAllowedNetworkTypes:I

    .line 437
    iput-boolean v2, p0, Landroid/app/DownloadManager$Request;->mRoamingAllowed:Z

    .line 438
    iput-boolean v2, p0, Landroid/app/DownloadManager$Request;->mMeteredAllowed:Z

    .line 439
    iput-boolean v2, p0, Landroid/app/DownloadManager$Request;->mIsVisibleInDownloadsUi:Z

    .line 440
    iput-boolean v1, p0, Landroid/app/DownloadManager$Request;->mScannable:Z

    .line 441
    iput-boolean v1, p0, Landroid/app/DownloadManager$Request;->mUseSystemCache:Z

    .line 443
    iput-boolean v1, p0, Landroid/app/DownloadManager$Request;->mNeedConfirmDownload:Z

    .line 487
    iput v1, p0, Landroid/app/DownloadManager$Request;->mNotificationVisibility:I

    .line 504
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/app/DownloadManager$Request;->mUri:Landroid/net/Uri;

    .line 503
    return-void
.end method

.method private encodeHttpHeaders(Landroid/content/ContentValues;)V
    .locals 6
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 861
    const/4 v3, 0x0

    .line 862
    .local v3, "index":I
    iget-object v4, p0, Landroid/app/DownloadManager$Request;->mRequestHeaders:Ljava/util/List;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "header$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 863
    .local v0, "header":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v4, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 864
    .local v2, "headerString":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "http_header_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 865
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 860
    .end local v0    # "header":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "headerString":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private putIfNonNull(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "contentValues"    # Landroid/content/ContentValues;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;

    .prologue
    .line 870
    if-eqz p3, :cond_0

    .line 871
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 869
    :cond_0
    return-void
.end method

.method private setDestinationFromBase(Ljava/io/File;Ljava/lang/String;)V
    .locals 3
    .param p1, "base"    # Ljava/io/File;
    .param p2, "subPath"    # Ljava/lang/String;

    .prologue
    .line 623
    if-nez p2, :cond_0

    .line 624
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "subPath cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 626
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/app/DownloadManager$Request;->mDestinationUri:Landroid/net/Uri;

    .line 628
    const-string/jumbo v0, "DownloadManager/Framework"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDestinationFromBase: mDestinationUri "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 629
    iget-object v2, p0, Landroid/app/DownloadManager$Request;->mDestinationUri:Landroid/net/Uri;

    .line 628
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    return-void
.end method


# virtual methods
.method public addRequestHeader(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;
    .locals 2
    .param p1, "header"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 650
    if-nez p1, :cond_0

    .line 651
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "header cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 653
    :cond_0
    const-string/jumbo v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 654
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "header may not contain \':\'"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 656
    :cond_1
    if-nez p2, :cond_2

    .line 657
    const-string/jumbo p2, ""

    .line 659
    :cond_2
    iget-object v0, p0, Landroid/app/DownloadManager$Request;->mRequestHeaders:Ljava/util/List;

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 660
    return-object p0
.end method

.method public allowScanningByMediaScanner()V
    .locals 1

    .prologue
    .line 637
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/DownloadManager$Request;->mScannable:Z

    .line 636
    return-void
.end method

.method public setAllowedNetworkTypes(I)Landroid/app/DownloadManager$Request;
    .locals 0
    .param p1, "flags"    # I

    .prologue
    .line 746
    iput p1, p0, Landroid/app/DownloadManager$Request;->mAllowedNetworkTypes:I

    .line 747
    return-object p0
.end method

.method public setAllowedOverMetered(Z)Landroid/app/DownloadManager$Request;
    .locals 0
    .param p1, "allow"    # Z

    .prologue
    .line 768
    iput-boolean p1, p0, Landroid/app/DownloadManager$Request;->mMeteredAllowed:Z

    .line 769
    return-object p0
.end method

.method public setAllowedOverRoaming(Z)Landroid/app/DownloadManager$Request;
    .locals 0
    .param p1, "allowed"    # Z

    .prologue
    .line 757
    iput-boolean p1, p0, Landroid/app/DownloadManager$Request;->mRoamingAllowed:Z

    .line 758
    return-object p0
.end method

.method public setDescription(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;
    .locals 0
    .param p1, "description"    # Ljava/lang/CharSequence;

    .prologue
    .line 679
    iput-object p1, p0, Landroid/app/DownloadManager$Request;->mDescription:Ljava/lang/CharSequence;

    .line 680
    return-object p0
.end method

.method public setDestinationInExternalFilesDir(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dirType"    # Ljava/lang/String;
    .param p3, "subPath"    # Ljava/lang/String;

    .prologue
    .line 565
    invoke-virtual {p1, p2}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 566
    .local v0, "file":Ljava/io/File;
    if-nez v0, :cond_0

    .line 567
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Failed to get external storage files directory"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 568
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 569
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_2

    .line 570
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 571
    const-string/jumbo v3, " already exists and is not a directory"

    .line 570
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 574
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_2

    .line 575
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unable to create directory: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 576
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 575
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 579
    :cond_2
    invoke-direct {p0, v0, p3}, Landroid/app/DownloadManager$Request;->setDestinationFromBase(Ljava/io/File;Ljava/lang/String;)V

    .line 580
    return-object p0
.end method

.method public setDestinationInExternalPublicDir(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;
    .locals 4
    .param p1, "dirType"    # Ljava/lang/String;
    .param p2, "subPath"    # Ljava/lang/String;

    .prologue
    .line 599
    invoke-static {p1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 601
    .local v0, "file":Ljava/io/File;
    const-string/jumbo v1, "DownloadManager/Framework"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setExternalPublicDir: dirType "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 602
    const-string/jumbo v3, " subPath "

    .line 601
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 603
    const-string/jumbo v3, "file"

    .line 601
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    if-nez v0, :cond_0

    .line 606
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Failed to get external storage public directory"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 607
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 608
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_2

    .line 609
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 610
    const-string/jumbo v3, " already exists and is not a directory"

    .line 609
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 613
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_2

    .line 614
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unable to create directory: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 615
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 614
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 618
    :cond_2
    invoke-direct {p0, v0, p2}, Landroid/app/DownloadManager$Request;->setDestinationFromBase(Ljava/io/File;Ljava/lang/String;)V

    .line 619
    return-object p0
.end method

.method public setDestinationToSystemCache()Landroid/app/DownloadManager$Request;
    .locals 1

    .prologue
    .line 541
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/DownloadManager$Request;->mUseSystemCache:Z

    .line 542
    return-object p0
.end method

.method public setDestinationUri(Landroid/net/Uri;)Landroid/app/DownloadManager$Request;
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 521
    iput-object p1, p0, Landroid/app/DownloadManager$Request;->mDestinationUri:Landroid/net/Uri;

    .line 522
    const-string/jumbo v0, "DownloadManager/Framework"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDestinationUri: mDestinationUri "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 523
    iget-object v2, p0, Landroid/app/DownloadManager$Request;->mDestinationUri:Landroid/net/Uri;

    .line 522
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    return-object p0
.end method

.method public setMimeType(Ljava/lang/String;)Landroid/app/DownloadManager$Request;
    .locals 0
    .param p1, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 691
    iput-object p1, p0, Landroid/app/DownloadManager$Request;->mMimeType:Ljava/lang/String;

    .line 692
    return-object p0
.end method

.method public setNeedConfirmDownload(Z)Landroid/app/DownloadManager$Request;
    .locals 0
    .param p1, "isNeedConfrim"    # Z

    .prologue
    .line 791
    iput-boolean p1, p0, Landroid/app/DownloadManager$Request;->mNeedConfirmDownload:Z

    .line 792
    return-object p0
.end method

.method public setNotificationVisibility(I)Landroid/app/DownloadManager$Request;
    .locals 0
    .param p1, "visibility"    # I

    .prologue
    .line 732
    iput p1, p0, Landroid/app/DownloadManager$Request;->mNotificationVisibility:I

    .line 733
    return-object p0
.end method

.method public setShowRunningNotification(Z)Landroid/app/DownloadManager$Request;
    .locals 1
    .param p1, "show"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 710
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/DownloadManager$Request;->setNotificationVisibility(I)Landroid/app/DownloadManager$Request;

    move-result-object v0

    :goto_0
    return-object v0

    .line 711
    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/app/DownloadManager$Request;->setNotificationVisibility(I)Landroid/app/DownloadManager$Request;

    move-result-object v0

    goto :goto_0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;
    .locals 0
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 670
    iput-object p1, p0, Landroid/app/DownloadManager$Request;->mTitle:Ljava/lang/CharSequence;

    .line 671
    return-object p0
.end method

.method public setUserAgent(Ljava/lang/String;)Landroid/app/DownloadManager$Request;
    .locals 3
    .param p1, "userAgent"    # Ljava/lang/String;

    .prologue
    .line 804
    iput-object p1, p0, Landroid/app/DownloadManager$Request;->mUserAgent:Ljava/lang/String;

    .line 805
    const-string/jumbo v0, "DownloadManager/Framework"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setUserAgent: userAgent is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    return-object p0
.end method

.method public setVisibleInDownloadsUi(Z)Landroid/app/DownloadManager$Request;
    .locals 0
    .param p1, "isVisible"    # Z

    .prologue
    .line 779
    iput-boolean p1, p0, Landroid/app/DownloadManager$Request;->mIsVisibleInDownloadsUi:Z

    .line 780
    return-object p0
.end method

.method toContentValues(Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 814
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 815
    .local v0, "values":Landroid/content/ContentValues;
    sget-boolean v1, Landroid/app/DownloadManager$Request;->-assertionsDisabled:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/app/DownloadManager$Request;->mUri:Landroid/net/Uri;

    if-eqz v1, :cond_0

    move v1, v4

    :goto_0
    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_0
    move v1, v3

    goto :goto_0

    .line 816
    :cond_1
    const-string/jumbo v1, "uri"

    iget-object v5, p0, Landroid/app/DownloadManager$Request;->mUri:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 817
    const-string/jumbo v1, "is_public_api"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 818
    const-string/jumbo v1, "notificationpackage"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 820
    iget-object v1, p0, Landroid/app/DownloadManager$Request;->mDestinationUri:Landroid/net/Uri;

    if-eqz v1, :cond_6

    .line 821
    const-string/jumbo v1, "destination"

    const/4 v5, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 822
    const-string/jumbo v1, "hint"

    iget-object v5, p0, Landroid/app/DownloadManager$Request;->mDestinationUri:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 830
    :goto_1
    const-string/jumbo v1, "scanned"

    iget-boolean v5, p0, Landroid/app/DownloadManager$Request;->mScannable:Z

    if-eqz v5, :cond_2

    move v2, v3

    :cond_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 833
    iget-object v1, p0, Landroid/app/DownloadManager$Request;->mRequestHeaders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 834
    invoke-direct {p0, v0}, Landroid/app/DownloadManager$Request;->encodeHttpHeaders(Landroid/content/ContentValues;)V

    .line 837
    :cond_3
    const-string/jumbo v1, "title"

    iget-object v2, p0, Landroid/app/DownloadManager$Request;->mTitle:Ljava/lang/CharSequence;

    invoke-direct {p0, v0, v1, v2}, Landroid/app/DownloadManager$Request;->putIfNonNull(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Object;)V

    .line 838
    const-string/jumbo v1, "description"

    iget-object v2, p0, Landroid/app/DownloadManager$Request;->mDescription:Ljava/lang/CharSequence;

    invoke-direct {p0, v0, v1, v2}, Landroid/app/DownloadManager$Request;->putIfNonNull(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Object;)V

    .line 839
    const-string/jumbo v1, "mimetype"

    iget-object v2, p0, Landroid/app/DownloadManager$Request;->mMimeType:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Landroid/app/DownloadManager$Request;->putIfNonNull(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Object;)V

    .line 841
    const-string/jumbo v1, "visibility"

    iget v2, p0, Landroid/app/DownloadManager$Request;->mNotificationVisibility:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 842
    const-string/jumbo v1, "allowed_network_types"

    iget v2, p0, Landroid/app/DownloadManager$Request;->mAllowedNetworkTypes:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 843
    const-string/jumbo v1, "allow_roaming"

    iget-boolean v2, p0, Landroid/app/DownloadManager$Request;->mRoamingAllowed:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 844
    const-string/jumbo v1, "allow_metered"

    iget-boolean v2, p0, Landroid/app/DownloadManager$Request;->mMeteredAllowed:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 845
    const-string/jumbo v1, "is_visible_in_downloads_ui"

    iget-boolean v2, p0, Landroid/app/DownloadManager$Request;->mIsVisibleInDownloadsUi:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 847
    iget-object v1, p0, Landroid/app/DownloadManager$Request;->mUserAgent:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 848
    const-string/jumbo v1, "useragent"

    iget-object v2, p0, Landroid/app/DownloadManager$Request;->mUserAgent:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 852
    :cond_4
    iget-boolean v1, p0, Landroid/app/DownloadManager$Request;->mNeedConfirmDownload:Z

    if-eqz v1, :cond_5

    .line 853
    const-string/jumbo v1, "need_confrim_download"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 857
    :cond_5
    return-object v0

    .line 824
    :cond_6
    const-string/jumbo v5, "destination"

    .line 825
    iget-boolean v1, p0, Landroid/app/DownloadManager$Request;->mUseSystemCache:Z

    if-eqz v1, :cond_7

    .line 826
    const/4 v1, 0x5

    .line 825
    :goto_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 824
    invoke-virtual {v0, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_1

    :cond_7
    move v1, v2

    .line 827
    goto :goto_2
.end method
