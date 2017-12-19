.class public final Lcom/mediatek/hotknot/HotKnotAdapter;
.super Ljava/lang/Object;
.source "HotKnotAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/hotknot/HotKnotAdapter$OnHotKnotCompleteCallback;,
        Lcom/mediatek/hotknot/HotKnotAdapter$CreateHotKnotMessageCallback;,
        Lcom/mediatek/hotknot/HotKnotAdapter$CreateHotKnotBeamUrisCallback;,
        Lcom/mediatek/hotknot/HotKnotAdapter$HotKnotProxySevice;
    }
.end annotation


# static fields
.field public static final ACTION_ADAPTER_STATE_CHANGED:Ljava/lang/String; = "com.mediatek.hotknot.action.ADAPTER_STATE_CHANGED"

.field public static final ACTION_HOTKNOT_SETTINGS:Ljava/lang/String; = "mediatek.settings.HOTKNOT_SETTINGS"

.field public static final ACTION_MESSAGE_DISCOVERED:Ljava/lang/String; = "com.mediatek.hotknot.action.MESSAGE_DISCOVERED"

.field public static final ERROR_DATA_TOO_LARGE:I = 0x1

.field public static final ERROR_SUCCESS:I = 0x0

.field public static final EXTRA_ADAPTER_STATE:Ljava/lang/String; = "com.mediatek.hotknot.extra.ADAPTER_STATE"

.field public static final EXTRA_DATA:Ljava/lang/String; = "com.mediatek.hotknot.extra.DATA"

.field static final HOTKNOT_SERVICE:Ljava/lang/String; = "hotknot_service"

.field public static final STATE_DISABLED:I = 0x1

.field public static final STATE_ENABLED:I = 0x2

.field static final TAG:Ljava/lang/String; = "HotKnotAdapter"

.field private static sDefaultService:Lcom/mediatek/hotknot/IHotKnotAdapter;

.field private static sLock:Ljava/lang/Object;


# instance fields
.field private mConnection:Landroid/content/ServiceConnection;

.field final mContext:Landroid/content/Context;

.field final mHotKnotActivityManager:Lcom/mediatek/hotknot/HotKnotActivityManager;

.field mService:Lcom/mediatek/hotknot/HotKnotAdapter$HotKnotProxySevice;


# direct methods
.method static synthetic -get0()Lcom/mediatek/hotknot/IHotKnotAdapter;
    .locals 1

    sget-object v0, Lcom/mediatek/hotknot/HotKnotAdapter;->sDefaultService:Lcom/mediatek/hotknot/IHotKnotAdapter;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/mediatek/hotknot/HotKnotAdapter;)Z
    .locals 1

    invoke-direct {p0}, Lcom/mediatek/hotknot/HotKnotAdapter;->getService()Z

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 106
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/mediatek/hotknot/HotKnotAdapter;->sLock:Ljava/lang/Object;

    .line 31
    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 310
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 311
    iput-object p1, p0, Lcom/mediatek/hotknot/HotKnotAdapter;->mContext:Landroid/content/Context;

    .line 312
    new-instance v0, Lcom/mediatek/hotknot/HotKnotActivityManager;

    invoke-direct {v0, p0}, Lcom/mediatek/hotknot/HotKnotActivityManager;-><init>(Lcom/mediatek/hotknot/HotKnotAdapter;)V

    iput-object v0, p0, Lcom/mediatek/hotknot/HotKnotAdapter;->mHotKnotActivityManager:Lcom/mediatek/hotknot/HotKnotActivityManager;

    .line 314
    new-instance v0, Lcom/mediatek/hotknot/HotKnotAdapter$HotKnotProxySevice;

    invoke-direct {v0, p0}, Lcom/mediatek/hotknot/HotKnotAdapter$HotKnotProxySevice;-><init>(Lcom/mediatek/hotknot/HotKnotAdapter;)V

    iput-object v0, p0, Lcom/mediatek/hotknot/HotKnotAdapter;->mService:Lcom/mediatek/hotknot/HotKnotAdapter$HotKnotProxySevice;

    .line 310
    return-void
.end method

.method public static getDefaultAdapter(Landroid/content/Context;)Lcom/mediatek/hotknot/HotKnotAdapter;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 269
    if-nez p0, :cond_0

    .line 270
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "context cannot be null"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 273
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 274
    if-nez p0, :cond_1

    .line 275
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 276
    const-string/jumbo v2, "context not associated with any application (using a mock context?)"

    .line 275
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 279
    :cond_1
    const-string/jumbo v0, "content://com.mediatek.hotknot.Service/native_support"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 280
    .local v1, "queryUri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 282
    .local v7, "cursor":Landroid/database/Cursor;
    if-nez v7, :cond_2

    .line 283
    const-string/jumbo v0, "HotKnotAdapter"

    const-string/jumbo v3, "[getDefaultAdapter] cursor = null"

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    const-string/jumbo v0, "HotKnotAdapter"

    const-string/jumbo v3, "[getDefaultAdapter] Starting hotknot service for checking native service"

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    .line 287
    .local v9, "serviceIntent":Landroid/content/Intent;
    const-string/jumbo v0, "com.mediatek.hotknot.service"

    .line 288
    const-string/jumbo v3, "com.mediatek.hotknot.service.HotKnotService"

    .line 287
    invoke-virtual {v9, v0, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 289
    invoke-virtual {p0, v9}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 291
    return-object v2

    .line 294
    .end local v9    # "serviceIntent":Landroid/content/Intent;
    :cond_2
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 295
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 296
    .local v8, "isSupport":Ljava/lang/String;
    const-string/jumbo v0, "false"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 297
    const-string/jumbo v0, "HotKnotAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[getDefaultAdapter] isSupport = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 301
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 298
    return-object v2

    .line 301
    :cond_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 305
    new-instance v6, Lcom/mediatek/hotknot/HotKnotAdapter;

    invoke-direct {v6, p0}, Lcom/mediatek/hotknot/HotKnotAdapter;-><init>(Landroid/content/Context;)V

    .line 306
    .local v6, "adapter":Lcom/mediatek/hotknot/HotKnotAdapter;
    const-string/jumbo v0, "HotKnotAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[getDefaultAdapter] adapter = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", mService = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v6, Lcom/mediatek/hotknot/HotKnotAdapter;->mService:Lcom/mediatek/hotknot/HotKnotAdapter$HotKnotProxySevice;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    return-object v6

    .line 300
    .end local v6    # "adapter":Lcom/mediatek/hotknot/HotKnotAdapter;
    .end local v8    # "isSupport":Ljava/lang/String;
    :catchall_0
    move-exception v0

    .line 301
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 300
    throw v0
.end method

.method private getService()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 249
    const-string/jumbo v1, "hotknot_service"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 250
    .local v0, "binder":Landroid/os/IBinder;
    if-nez v0, :cond_0

    .line 251
    sput-object v2, Lcom/mediatek/hotknot/HotKnotAdapter;->sDefaultService:Lcom/mediatek/hotknot/IHotKnotAdapter;

    .line 252
    const-string/jumbo v1, "HotKnotAdapter"

    const-string/jumbo v2, "[getService] sDefaultService = null"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    return v3

    .line 255
    :cond_0
    invoke-interface {v0}, Landroid/os/IBinder;->pingBinder()Z

    move-result v1

    if-nez v1, :cond_1

    .line 256
    const-string/jumbo v1, "HotKnotAdapter"

    const-string/jumbo v2, "[getService] pingBinder is false"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    return v3

    .line 259
    :cond_1
    invoke-static {v0}, Lcom/mediatek/hotknot/IHotKnotAdapter$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/hotknot/IHotKnotAdapter;

    move-result-object v1

    sput-object v1, Lcom/mediatek/hotknot/HotKnotAdapter;->sDefaultService:Lcom/mediatek/hotknot/IHotKnotAdapter;

    .line 260
    const-string/jumbo v1, "HotKnotAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[getService] sDefaultService = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/mediatek/hotknot/HotKnotAdapter;->sDefaultService:Lcom/mediatek/hotknot/IHotKnotAdapter;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    const/4 v1, 0x1

    return v1
.end method


# virtual methods
.method public disable()Z
    .locals 2

    .prologue
    .line 373
    iget-object v0, p0, Lcom/mediatek/hotknot/HotKnotAdapter;->mService:Lcom/mediatek/hotknot/HotKnotAdapter$HotKnotProxySevice;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mediatek/hotknot/HotKnotAdapter$HotKnotProxySevice;->disable(Z)Z

    move-result v0

    return v0
.end method

.method public enable()Z
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lcom/mediatek/hotknot/HotKnotAdapter;->mService:Lcom/mediatek/hotknot/HotKnotAdapter$HotKnotProxySevice;

    invoke-virtual {v0}, Lcom/mediatek/hotknot/HotKnotAdapter$HotKnotProxySevice;->enable()Z

    move-result v0

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lcom/mediatek/hotknot/HotKnotAdapter;->mService:Lcom/mediatek/hotknot/HotKnotAdapter$HotKnotProxySevice;

    invoke-virtual {v0}, Lcom/mediatek/hotknot/HotKnotAdapter$HotKnotProxySevice;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public setHotKnotBeamUris([Landroid/net/Uri;Landroid/app/Activity;)V
    .locals 5
    .param p1, "uris"    # [Landroid/net/Uri;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 640
    if-nez p2, :cond_0

    .line 641
    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "activity cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 643
    :cond_0
    if-eqz p1, :cond_4

    .line 644
    const/4 v2, 0x0

    array-length v3, p1

    :goto_0
    if-ge v2, v3, :cond_4

    aget-object v1, p1, v2

    .line 645
    .local v1, "uri":Landroid/net/Uri;
    if-nez v1, :cond_1

    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "Uri not allowed to be null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 647
    :cond_1
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 648
    .local v0, "scheme":Ljava/lang/String;
    if-eqz v0, :cond_3

    const-string/jumbo v4, "file"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 649
    const-string/jumbo v4, "content"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 644
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 650
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "URI needs to have either scheme file or scheme content"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 655
    .end local v0    # "scheme":Ljava/lang/String;
    .end local v1    # "uri":Landroid/net/Uri;
    :cond_4
    iget-object v2, p0, Lcom/mediatek/hotknot/HotKnotAdapter;->mHotKnotActivityManager:Lcom/mediatek/hotknot/HotKnotActivityManager;

    invoke-virtual {v2, p2, p1}, Lcom/mediatek/hotknot/HotKnotActivityManager;->setHotKnotContent(Landroid/app/Activity;[Landroid/net/Uri;)V

    .line 639
    return-void
.end method

.method public setHotKnotBeamUrisCallback(Lcom/mediatek/hotknot/HotKnotAdapter$CreateHotKnotBeamUrisCallback;Landroid/app/Activity;)V
    .locals 2
    .param p1, "callback"    # Lcom/mediatek/hotknot/HotKnotAdapter$CreateHotKnotBeamUrisCallback;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 715
    if-nez p2, :cond_0

    .line 716
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "activity cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 718
    :cond_0
    iget-object v0, p0, Lcom/mediatek/hotknot/HotKnotAdapter;->mHotKnotActivityManager:Lcom/mediatek/hotknot/HotKnotActivityManager;

    invoke-virtual {v0, p2, p1}, Lcom/mediatek/hotknot/HotKnotActivityManager;->setHotKnotContentCallback(Landroid/app/Activity;Lcom/mediatek/hotknot/HotKnotAdapter$CreateHotKnotBeamUrisCallback;)V

    .line 713
    return-void
.end method

.method public setHotKnotMessage(Lcom/mediatek/hotknot/HotKnotMessage;Landroid/app/Activity;I)V
    .locals 2
    .param p1, "message"    # Lcom/mediatek/hotknot/HotKnotMessage;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "flags"    # I

    .prologue
    .line 448
    if-nez p2, :cond_0

    .line 449
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "activity cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 451
    :cond_0
    iget-object v0, p0, Lcom/mediatek/hotknot/HotKnotAdapter;->mHotKnotActivityManager:Lcom/mediatek/hotknot/HotKnotActivityManager;

    invoke-virtual {v0, p2, p1, p3}, Lcom/mediatek/hotknot/HotKnotActivityManager;->setHotKnotMessage(Landroid/app/Activity;Lcom/mediatek/hotknot/HotKnotMessage;I)V

    .line 447
    return-void
.end method

.method public varargs setHotKnotMessage(Lcom/mediatek/hotknot/HotKnotMessage;Landroid/app/Activity;[Landroid/app/Activity;)V
    .locals 6
    .param p1, "message"    # Lcom/mediatek/hotknot/HotKnotMessage;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "activities"    # [Landroid/app/Activity;

    .prologue
    const/4 v2, 0x0

    .line 428
    if-nez p2, :cond_0

    .line 429
    :try_start_0
    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "activity cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 438
    :catch_0
    move-exception v1

    .line 440
    .local v1, "e":Ljava/lang/IllegalStateException;
    throw v1

    .line 431
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/mediatek/hotknot/HotKnotAdapter;->mHotKnotActivityManager:Lcom/mediatek/hotknot/HotKnotActivityManager;

    const/4 v4, 0x0

    invoke-virtual {v3, p2, p1, v4}, Lcom/mediatek/hotknot/HotKnotActivityManager;->setHotKnotMessage(Landroid/app/Activity;Lcom/mediatek/hotknot/HotKnotMessage;I)V

    .line 432
    array-length v3, p3

    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v0, p3, v2

    .line 433
    .local v0, "a":Landroid/app/Activity;
    if-nez v0, :cond_1

    .line 434
    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "activities cannot contain null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 436
    :cond_1
    iget-object v4, p0, Lcom/mediatek/hotknot/HotKnotAdapter;->mHotKnotActivityManager:Lcom/mediatek/hotknot/HotKnotActivityManager;

    const/4 v5, 0x0

    invoke-virtual {v4, v0, p1, v5}, Lcom/mediatek/hotknot/HotKnotActivityManager;->setHotKnotMessage(Landroid/app/Activity;Lcom/mediatek/hotknot/HotKnotMessage;I)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    .line 432
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 426
    .end local v0    # "a":Landroid/app/Activity;
    :cond_2
    return-void
.end method

.method public setHotKnotMessageCallback(Lcom/mediatek/hotknot/HotKnotAdapter$CreateHotKnotMessageCallback;Landroid/app/Activity;I)V
    .locals 2
    .param p1, "callback"    # Lcom/mediatek/hotknot/HotKnotAdapter$CreateHotKnotMessageCallback;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "flags"    # I

    .prologue
    .line 523
    if-nez p2, :cond_0

    .line 524
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "activity cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 526
    :cond_0
    iget-object v0, p0, Lcom/mediatek/hotknot/HotKnotAdapter;->mHotKnotActivityManager:Lcom/mediatek/hotknot/HotKnotActivityManager;

    invoke-virtual {v0, p2, p1, p3}, Lcom/mediatek/hotknot/HotKnotActivityManager;->setHotKnotMessageCallback(Landroid/app/Activity;Lcom/mediatek/hotknot/HotKnotAdapter$CreateHotKnotMessageCallback;I)V

    .line 522
    return-void
.end method

.method public varargs setHotKnotMessageCallback(Lcom/mediatek/hotknot/HotKnotAdapter$CreateHotKnotMessageCallback;Landroid/app/Activity;[Landroid/app/Activity;)V
    .locals 6
    .param p1, "callback"    # Lcom/mediatek/hotknot/HotKnotAdapter$CreateHotKnotMessageCallback;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "activities"    # [Landroid/app/Activity;

    .prologue
    const/4 v2, 0x0

    .line 502
    if-nez p2, :cond_0

    .line 503
    :try_start_0
    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "activity cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 512
    :catch_0
    move-exception v1

    .line 514
    .local v1, "e":Ljava/lang/IllegalStateException;
    throw v1

    .line 505
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/mediatek/hotknot/HotKnotAdapter;->mHotKnotActivityManager:Lcom/mediatek/hotknot/HotKnotActivityManager;

    const/4 v4, 0x0

    invoke-virtual {v3, p2, p1, v4}, Lcom/mediatek/hotknot/HotKnotActivityManager;->setHotKnotMessageCallback(Landroid/app/Activity;Lcom/mediatek/hotknot/HotKnotAdapter$CreateHotKnotMessageCallback;I)V

    .line 506
    array-length v3, p3

    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v0, p3, v2

    .line 507
    .local v0, "a":Landroid/app/Activity;
    if-nez v0, :cond_1

    .line 508
    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "activities cannot contain null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 510
    :cond_1
    iget-object v4, p0, Lcom/mediatek/hotknot/HotKnotAdapter;->mHotKnotActivityManager:Lcom/mediatek/hotknot/HotKnotActivityManager;

    const/4 v5, 0x0

    invoke-virtual {v4, v0, p1, v5}, Lcom/mediatek/hotknot/HotKnotActivityManager;->setHotKnotMessageCallback(Landroid/app/Activity;Lcom/mediatek/hotknot/HotKnotAdapter$CreateHotKnotMessageCallback;I)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    .line 506
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 500
    .end local v0    # "a":Landroid/app/Activity;
    :cond_2
    return-void
.end method

.method public varargs setOnHotKnotCompleteCallback(Lcom/mediatek/hotknot/HotKnotAdapter$OnHotKnotCompleteCallback;Landroid/app/Activity;[Landroid/app/Activity;)V
    .locals 5
    .param p1, "callback"    # Lcom/mediatek/hotknot/HotKnotAdapter$OnHotKnotCompleteCallback;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "activities"    # [Landroid/app/Activity;

    .prologue
    .line 568
    if-nez p2, :cond_0

    .line 569
    :try_start_0
    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "activity cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 578
    :catch_0
    move-exception v1

    .line 580
    .local v1, "e":Ljava/lang/IllegalStateException;
    throw v1

    .line 571
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/mediatek/hotknot/HotKnotAdapter;->mHotKnotActivityManager:Lcom/mediatek/hotknot/HotKnotActivityManager;

    invoke-virtual {v2, p2, p1}, Lcom/mediatek/hotknot/HotKnotActivityManager;->setOnHotKnotCompleteCallback(Landroid/app/Activity;Lcom/mediatek/hotknot/HotKnotAdapter$OnHotKnotCompleteCallback;)V

    .line 572
    const/4 v2, 0x0

    array-length v3, p3

    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v0, p3, v2

    .line 573
    .local v0, "a":Landroid/app/Activity;
    if-nez v0, :cond_1

    .line 574
    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "activities cannot contain null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 576
    :cond_1
    iget-object v4, p0, Lcom/mediatek/hotknot/HotKnotAdapter;->mHotKnotActivityManager:Lcom/mediatek/hotknot/HotKnotActivityManager;

    invoke-virtual {v4, v0, p1}, Lcom/mediatek/hotknot/HotKnotActivityManager;->setOnHotKnotCompleteCallback(Landroid/app/Activity;Lcom/mediatek/hotknot/HotKnotAdapter$OnHotKnotCompleteCallback;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    .line 572
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 566
    .end local v0    # "a":Landroid/app/Activity;
    :cond_2
    return-void
.end method
