.class public Lcom/letv/leui/provider/Browser;
.super Ljava/lang/Object;
.source "Browser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/leui/provider/Browser$BookmarkColumns;,
        Lcom/letv/leui/provider/Browser$SearchColumns;
    }
.end annotation


# static fields
.field public static final BOOKMARKS_URI:Landroid/net/Uri;

.field public static final EXTRA_APPLICATION_ID:Ljava/lang/String; = "com.android.browser.application_id"

.field public static final EXTRA_CREATE_NEW_TAB:Ljava/lang/String; = "create_new_tab"

.field public static final EXTRA_HEADERS:Ljava/lang/String; = "com.android.browser.headers"

.field public static final EXTRA_SHARE_FAVICON:Ljava/lang/String; = "share_favicon"

.field public static final EXTRA_SHARE_SCREENSHOT:Ljava/lang/String; = "share_screenshot"

.field public static final HISTORY_PROJECTION:[Ljava/lang/String;

.field public static final HISTORY_PROJECTION_BOOKMARK_INDEX:I = 0x4

.field public static final HISTORY_PROJECTION_DATE_INDEX:I = 0x3

.field public static final HISTORY_PROJECTION_FAVICON_INDEX:I = 0x6

.field public static final HISTORY_PROJECTION_ID_INDEX:I = 0x0

.field public static final HISTORY_PROJECTION_THUMBNAIL_INDEX:I = 0x7

.field public static final HISTORY_PROJECTION_TITLE_INDEX:I = 0x5

.field public static final HISTORY_PROJECTION_TOUCH_ICON_INDEX:I = 0x8

.field public static final HISTORY_PROJECTION_URL_INDEX:I = 0x1

.field public static final HISTORY_PROJECTION_VISITS_INDEX:I = 0x2

.field public static final INITIAL_ZOOM_LEVEL:Ljava/lang/String; = "browser.initialZoomLevel"

.field private static final LOGTAG:Ljava/lang/String; = "browser"

.field private static final MAX_HISTORY_COUNT:I = 0xfa

.field public static final SEARCHES_PROJECTION:[Ljava/lang/String;

.field public static final SEARCHES_PROJECTION_DATE_INDEX:I = 0x2

.field public static final SEARCHES_PROJECTION_SEARCH_INDEX:I = 0x1

.field public static final SEARCHES_URI:Landroid/net/Uri;

.field public static final TRUNCATE_HISTORY_PROJECTION:[Ljava/lang/String;

.field public static final TRUNCATE_HISTORY_PROJECTION_ID_INDEX:I = 0x0

.field public static final TRUNCATE_N_OLDEST:I = 0x5


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 46
    const-string/jumbo v0, "content://browser/bookmarks"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/letv/leui/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    .line 80
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    .line 81
    const-string/jumbo v1, "_id"

    aput-object v1, v0, v3

    .line 82
    const-string/jumbo v1, "url"

    aput-object v1, v0, v4

    .line 83
    const-string/jumbo v1, "visits"

    aput-object v1, v0, v5

    .line 84
    const-string/jumbo v1, "date"

    aput-object v1, v0, v6

    .line 85
    const-string/jumbo v1, "bookmark"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 86
    const-string/jumbo v1, "title"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 87
    const-string/jumbo v1, "favicon"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 88
    const-string/jumbo v1, "thumbnail"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 89
    const-string/jumbo v1, "touch_icon"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 90
    const-string/jumbo v1, "user_entered"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 80
    sput-object v0, Lcom/letv/leui/provider/Browser;->HISTORY_PROJECTION:[Ljava/lang/String;

    .line 111
    new-array v0, v5, [Ljava/lang/String;

    .line 112
    const-string/jumbo v1, "_id"

    aput-object v1, v0, v3

    .line 113
    const-string/jumbo v1, "date"

    aput-object v1, v0, v4

    .line 111
    sput-object v0, Lcom/letv/leui/provider/Browser;->TRUNCATE_HISTORY_PROJECTION:[Ljava/lang/String;

    .line 127
    const-string/jumbo v0, "content://browser/searches"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/letv/leui/provider/Browser;->SEARCHES_URI:Landroid/net/Uri;

    .line 133
    new-array v0, v6, [Ljava/lang/String;

    .line 135
    const-string/jumbo v1, "_id"

    aput-object v1, v0, v3

    .line 136
    const-string/jumbo v1, "search"

    aput-object v1, v0, v4

    .line 137
    const-string/jumbo v1, "date"

    aput-object v1, v0, v5

    .line 133
    sput-object v0, Lcom/letv/leui/provider/Browser;->SEARCHES_PROJECTION:[Ljava/lang/String;

    .line 37
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final addOrUrlEquals(Ljava/lang/StringBuilder;)V
    .locals 1
    .param p0, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 261
    const-string/jumbo v0, " OR url = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    return-void
.end method

.method public static final addSearchUrl(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .locals 4
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "search"    # Ljava/lang/String;

    .prologue
    .line 530
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 531
    .local v0, "values":Landroid/content/ContentValues;
    const-string/jumbo v1, "search"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    const-string/jumbo v1, "date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 533
    sget-object v1, Lcom/letv/leui/provider/BrowserContract$Searches;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 528
    return-void
.end method

.method public static final canClearHistory(Landroid/content/ContentResolver;)Z
    .locals 9
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 430
    const/4 v6, 0x0

    .line 431
    .local v6, "cursor":Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 433
    .local v8, "ret":Z
    :try_start_0
    sget-object v1, Lcom/letv/leui/provider/BrowserContract$History;->CONTENT_URI:Landroid/net/Uri;

    .line 434
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string/jumbo v0, "id"

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string/jumbo v0, "visits"

    const/4 v3, 0x1

    aput-object v0, v2, v3

    .line 435
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    .line 433
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 436
    .local v6, "cursor":Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-lez v0, :cond_1

    const/4 v8, 0x1

    .line 440
    :goto_0
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 442
    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_0
    :goto_1
    return v8

    .line 436
    .restart local v6    # "cursor":Landroid/database/Cursor;
    :cond_1
    const/4 v8, 0x0

    goto :goto_0

    .line 437
    .end local v6    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v7

    .line 438
    .local v7, "e":Ljava/lang/IllegalStateException;
    :try_start_1
    const-string/jumbo v0, "browser"

    const-string/jumbo v1, "canClearHistory"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 440
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 439
    .end local v7    # "e":Ljava/lang/IllegalStateException;
    :catchall_0
    move-exception v0

    .line 440
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 439
    :cond_2
    throw v0
.end method

.method public static final clearHistory(Landroid/content/ContentResolver;)V
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 452
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/letv/leui/provider/Browser;->deleteHistoryWhere(Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 451
    return-void
.end method

.method public static final clearSearches(Landroid/content/ContentResolver;)V
    .locals 4
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 545
    :try_start_0
    sget-object v1, Lcom/letv/leui/provider/BrowserContract$Searches;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 541
    :goto_0
    return-void

    .line 546
    :catch_0
    move-exception v0

    .line 547
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string/jumbo v1, "browser"

    const-string/jumbo v2, "clearSearches"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static final deleteFromHistory(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .locals 4
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 518
    sget-object v0, Lcom/letv/leui/provider/BrowserContract$History;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v1, "url=?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 517
    return-void
.end method

.method public static final deleteHistoryTimeFrame(Landroid/content/ContentResolver;JJ)V
    .locals 7
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "begin"    # J
    .param p3, "end"    # J

    .prologue
    const-wide/16 v4, -0x1

    .line 494
    const-string/jumbo v0, "date"

    .line 495
    .local v0, "date":Ljava/lang/String;
    cmp-long v2, v4, p1

    if-nez v2, :cond_1

    .line 496
    cmp-long v2, v4, p3

    if-nez v2, :cond_0

    .line 497
    invoke-static {p0}, Lcom/letv/leui/provider/Browser;->clearHistory(Landroid/content/ContentResolver;)V

    .line 498
    return-void

    .line 500
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " < "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 507
    .local v1, "whereClause":Ljava/lang/String;
    :goto_0
    invoke-static {p0, v1}, Lcom/letv/leui/provider/Browser;->deleteHistoryWhere(Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 492
    return-void

    .line 501
    .end local v1    # "whereClause":Ljava/lang/String;
    :cond_1
    cmp-long v2, v4, p3

    if-nez v2, :cond_2

    .line 502
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " >= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "whereClause":Ljava/lang/String;
    goto :goto_0

    .line 504
    .end local v1    # "whereClause":Ljava/lang/String;
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " >= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 505
    const-string/jumbo v3, " < "

    .line 504
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 505
    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    .line 504
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "whereClause":Ljava/lang/String;
    goto :goto_0
.end method

.method private static final deleteHistoryWhere(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .locals 8
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "whereClause"    # Ljava/lang/String;

    .prologue
    .line 467
    const/4 v6, 0x0

    .line 469
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Lcom/letv/leui/provider/BrowserContract$History;->CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string/jumbo v0, "url"

    const/4 v3, 0x0

    aput-object v0, v2, v3

    .line 470
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p1

    .line 469
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 471
    .local v6, "cursor":Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 472
    sget-object v0, Lcom/letv/leui/provider/BrowserContract$History;->CONTENT_URI:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 478
    :cond_0
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 466
    :cond_1
    return-void

    .line 474
    .end local v6    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v7

    .line 475
    .local v7, "e":Ljava/lang/IllegalStateException;
    :try_start_1
    const-string/jumbo v0, "browser"

    const-string/jumbo v1, "deleteHistoryWhere"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 478
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 476
    :cond_2
    return-void

    .line 477
    .end local v7    # "e":Ljava/lang/IllegalStateException;
    :catchall_0
    move-exception v0

    .line 478
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 477
    :cond_3
    throw v0
.end method

.method public static final getAllBookmarks(Landroid/content/ContentResolver;)Landroid/database/Cursor;
    .locals 6
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 240
    sget-object v1, Lcom/letv/leui/provider/BrowserContract$Bookmarks;->CONTENT_URI:Landroid/net/Uri;

    .line 241
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string/jumbo v0, "url"

    const/4 v3, 0x0

    aput-object v0, v2, v3

    .line 242
    const-string/jumbo v3, "folder = 0"

    move-object v0, p0

    move-object v5, v4

    .line 240
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static final getAllVisitedUrls(Landroid/content/ContentResolver;)Landroid/database/Cursor;
    .locals 6
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 255
    sget-object v1, Lcom/letv/leui/provider/BrowserContract$Combined;->CONTENT_URI:Landroid/net/Uri;

    .line 256
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string/jumbo v0, "url"

    const/4 v4, 0x0

    aput-object v0, v2, v4

    .line 257
    const-string/jumbo v5, "created ASC"

    move-object v0, p0

    move-object v4, v3

    .line 255
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static final getVisitedHistory(Landroid/content/ContentResolver;)[Ljava/lang/String;
    .locals 10
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 364
    const/4 v6, 0x0

    .line 365
    .local v6, "c":Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 367
    .local v9, "str":[Ljava/lang/String;
    const/4 v0, 0x1

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    .line 368
    const-string/jumbo v0, "url"

    const/4 v1, 0x0

    aput-object v0, v2, v1

    .line 370
    .local v2, "projection":[Ljava/lang/String;
    sget-object v1, Lcom/letv/leui/provider/BrowserContract$History;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v3, "visits > 0"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 371
    .local v6, "c":Landroid/database/Cursor;
    if-nez v6, :cond_1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 382
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 371
    :cond_0
    return-object v0

    .line 372
    :cond_1
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    new-array v9, v0, [Ljava/lang/String;

    .line 373
    .local v9, "str":[Ljava/lang/String;
    const/4 v8, 0x0

    .line 374
    .local v8, "i":I
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 375
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v9, v8
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 376
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 382
    :cond_2
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 384
    .end local v2    # "projection":[Ljava/lang/String;
    .end local v6    # "c":Landroid/database/Cursor;
    .end local v8    # "i":I
    :cond_3
    :goto_1
    return-object v9

    .line 378
    .end local v9    # "str":[Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 379
    .local v7, "e":Ljava/lang/IllegalStateException;
    :try_start_2
    const-string/jumbo v0, "browser"

    const-string/jumbo v1, "getVisitedHistory"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 380
    const/4 v0, 0x0

    new-array v9, v0, [Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 382
    .restart local v9    # "str":[Ljava/lang/String;
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 381
    .end local v7    # "e":Ljava/lang/IllegalStateException;
    .end local v9    # "str":[Ljava/lang/String;
    :catchall_0
    move-exception v0

    .line 382
    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 381
    :cond_4
    throw v0
.end method

.method private static final getVisitedLike(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 265
    const/4 v7, 0x0

    .line 266
    .local v7, "secure":Z
    move-object v6, p1

    .line 267
    .local v6, "compareString":Ljava/lang/String;
    const-string/jumbo v0, "http://"

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 268
    const/4 v0, 0x7

    invoke-virtual {v6, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 273
    :cond_0
    :goto_0
    const-string/jumbo v0, "www."

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 274
    const/4 v0, 0x4

    invoke-virtual {v6, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 276
    :cond_1
    const/4 v8, 0x0

    .line 277
    .local v8, "whereClause":Ljava/lang/StringBuilder;
    if-eqz v7, :cond_3

    .line 278
    new-instance v8, Ljava/lang/StringBuilder;

    .end local v8    # "whereClause":Ljava/lang/StringBuilder;
    const-string/jumbo v0, "url = "

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 280
    .local v8, "whereClause":Ljava/lang/StringBuilder;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 279
    invoke-static {v8, v0}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 281
    invoke-static {v8}, Lcom/letv/leui/provider/Browser;->addOrUrlEquals(Ljava/lang/StringBuilder;)V

    .line 283
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "https://www."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 282
    invoke-static {v8, v0}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 299
    :goto_1
    sget-object v1, Lcom/letv/leui/provider/BrowserContract$History;->CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string/jumbo v0, "id"

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string/jumbo v0, "visits"

    const/4 v3, 0x1

    aput-object v0, v2, v3

    .line 300
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v5, v4

    .line 299
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 269
    .end local v8    # "whereClause":Ljava/lang/StringBuilder;
    :cond_2
    const-string/jumbo v0, "https://"

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 270
    const/16 v0, 0x8

    invoke-virtual {v6, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 271
    const/4 v7, 0x1

    goto :goto_0

    .line 285
    .local v8, "whereClause":Ljava/lang/StringBuilder;
    :cond_3
    new-instance v8, Ljava/lang/StringBuilder;

    .end local v8    # "whereClause":Ljava/lang/StringBuilder;
    const-string/jumbo v0, "url = "

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 286
    .local v8, "whereClause":Ljava/lang/StringBuilder;
    invoke-static {v8, v6}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 288
    invoke-static {v8}, Lcom/letv/leui/provider/Browser;->addOrUrlEquals(Ljava/lang/StringBuilder;)V

    .line 289
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "www."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 290
    .local v9, "wwwString":Ljava/lang/String;
    invoke-static {v8, v9}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 292
    invoke-static {v8}, Lcom/letv/leui/provider/Browser;->addOrUrlEquals(Ljava/lang/StringBuilder;)V

    .line 294
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 293
    invoke-static {v8, v0}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 295
    invoke-static {v8}, Lcom/letv/leui/provider/Browser;->addOrUrlEquals(Ljava/lang/StringBuilder;)V

    .line 297
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 296
    invoke-static {v8, v0}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public static final requestAllIcons(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/webkit/WebIconDatabase$IconListener;)V
    .locals 0
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "where"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/webkit/WebIconDatabase$IconListener;

    .prologue
    .line 563
    return-void
.end method

.method public static final saveBookmark(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 163
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.INSERT"

    sget-object v2, Lcom/letv/leui/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 164
    .local v0, "i":Landroid/content/Intent;
    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 165
    const-string/jumbo v1, "url"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 166
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 162
    return-void
.end method

.method public static final sendString(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 200
    const v0, 0x1040382

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/letv/leui/provider/Browser;->sendString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    return-void
.end method

.method public static final sendString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "stringToSend"    # Ljava/lang/String;
    .param p2, "chooserDialogTitle"    # Ljava/lang/String;

    .prologue
    .line 216
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.SEND"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 217
    .local v2, "send":Landroid/content/Intent;
    const-string/jumbo v3, "text/plain"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 218
    const-string/jumbo v3, "android.intent.extra.TEXT"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 221
    :try_start_0
    invoke-static {v2, p2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    .line 223
    .local v1, "i":Landroid/content/Intent;
    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 224
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    .end local v1    # "i":Landroid/content/Intent;
    :goto_0
    return-void

    .line 225
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/content/ActivityNotFoundException;
    goto :goto_0
.end method

.method public static final truncateHistory(Landroid/content/ContentResolver;)V
    .locals 9
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 400
    const/4 v6, 0x0

    .line 404
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Lcom/letv/leui/provider/BrowserContract$History;->CONTENT_URI:Landroid/net/Uri;

    .line 405
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const-string/jumbo v0, "id"

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string/jumbo v0, "url"

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const-string/jumbo v0, "date"

    const/4 v3, 0x2

    aput-object v0, v2, v3

    .line 406
    const-string/jumbo v5, "date ASC"

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    .line 404
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 408
    .local v6, "cursor":Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/16 v1, 0xfa

    if-lt v0, v1, :cond_0

    .line 410
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    const/4 v0, 0x5

    if-ge v8, v0, :cond_0

    .line 411
    sget-object v0, Lcom/letv/leui/provider/BrowserContract$History;->CONTENT_URI:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 412
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 411
    invoke-virtual {p0, v0, v1, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 413
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    .line 419
    .end local v8    # "i":I
    :cond_0
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 398
    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_1
    :goto_1
    return-void

    .line 410
    .restart local v6    # "cursor":Landroid/database/Cursor;
    .restart local v8    # "i":I
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 416
    .end local v6    # "cursor":Landroid/database/Cursor;
    .end local v8    # "i":I
    :catch_0
    move-exception v7

    .line 417
    .local v7, "e":Ljava/lang/IllegalStateException;
    :try_start_1
    const-string/jumbo v0, "browser"

    const-string/jumbo v1, "truncateHistory"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 419
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 418
    .end local v7    # "e":Ljava/lang/IllegalStateException;
    :catchall_0
    move-exception v0

    .line 419
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 418
    :cond_3
    throw v0
.end method

.method public static final updateVisitedHistory(Landroid/content/ContentResolver;Ljava/lang/String;Z)V
    .locals 10
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "real"    # Z

    .prologue
    .line 315
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 316
    .local v2, "now":J
    const/4 v0, 0x0

    .line 318
    .local v0, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-static {p0, p1}, Lcom/letv/leui/provider/Browser;->getVisitedLike(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 320
    .local v0, "c":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 321
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 322
    .local v5, "values":Landroid/content/ContentValues;
    if-eqz p2, :cond_1

    .line 323
    const-string/jumbo v7, "visits"

    const/4 v8, 0x1

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 327
    :goto_0
    const-string/jumbo v7, "date"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 328
    sget-object v7, Lcom/letv/leui/provider/BrowserContract$History;->CONTENT_URI:Landroid/net/Uri;

    const/4 v8, 0x0

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-static {v7, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    .line 329
    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 328
    invoke-virtual {p0, v7, v5, v8, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 353
    :goto_1
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 314
    .end local v0    # "c":Landroid/database/Cursor;
    .end local v5    # "values":Landroid/content/ContentValues;
    :cond_0
    :goto_2
    return-void

    .line 325
    .restart local v0    # "c":Landroid/database/Cursor;
    .restart local v5    # "values":Landroid/content/ContentValues;
    :cond_1
    :try_start_1
    const-string/jumbo v7, "user_entered"

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 350
    .end local v0    # "c":Landroid/database/Cursor;
    .end local v5    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v1

    .line 351
    .local v1, "e":Ljava/lang/IllegalStateException;
    :try_start_2
    const-string/jumbo v7, "browser"

    const-string/jumbo v8, "updateVisitedHistory"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 353
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 331
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    .restart local v0    # "c":Landroid/database/Cursor;
    :cond_2
    :try_start_3
    invoke-static {p0}, Lcom/letv/leui/provider/Browser;->truncateHistory(Landroid/content/ContentResolver;)V

    .line 332
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 335
    .restart local v5    # "values":Landroid/content/ContentValues;
    if-eqz p2, :cond_4

    .line 336
    const/4 v6, 0x1

    .line 337
    .local v6, "visits":I
    const/4 v4, 0x0

    .line 342
    .local v4, "user_entered":I
    :goto_3
    const-string/jumbo v7, "url"

    invoke-virtual {v5, v7, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    const-string/jumbo v7, "visits"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 344
    const-string/jumbo v7, "date"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 345
    const-string/jumbo v7, "title"

    invoke-virtual {v5, v7, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    const-string/jumbo v7, "created"

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 347
    const-string/jumbo v7, "user_entered"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 348
    sget-object v7, Lcom/letv/leui/provider/BrowserContract$History;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v7, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 352
    .end local v0    # "c":Landroid/database/Cursor;
    .end local v4    # "user_entered":I
    .end local v5    # "values":Landroid/content/ContentValues;
    .end local v6    # "visits":I
    :catchall_0
    move-exception v7

    .line 353
    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 352
    :cond_3
    throw v7

    .line 339
    .restart local v0    # "c":Landroid/database/Cursor;
    .restart local v5    # "values":Landroid/content/ContentValues;
    :cond_4
    const/4 v6, 0x0

    .line 340
    .restart local v6    # "visits":I
    const/4 v4, 0x1

    .restart local v4    # "user_entered":I
    goto :goto_3
.end method
