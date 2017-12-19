.class public Lcom/android/server/ServiceWatcher;
.super Ljava/lang/Object;
.source "ServiceWatcher.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ServiceWatcher$NetWorkProviderSettingsObserver;,
        Lcom/android/server/ServiceWatcher$1;
    }
.end annotation


# static fields
.field private static final D:Z = true

.field private static final DEBUG:Z = true

.field public static final EXTRA_SERVICE_IS_MULTIUSER:Ljava/lang/String; = "serviceIsMultiuser"

.field public static final EXTRA_SERVICE_VERSION:Ljava/lang/String; = "serviceVersion"

.field private static final TAG:Ljava/lang/String; = "ServiceWatcher"


# instance fields
.field private final mAction:Ljava/lang/String;

.field private mBinder:Landroid/os/IBinder;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mIsMultiuser:Z

.field private mLock:Ljava/lang/Object;

.field private final mName:Ljava/lang/String;

.field private final mNewServiceWork:Ljava/lang/Runnable;

.field private mObserver:Lcom/android/server/ServiceWatcher$NetWorkProviderSettingsObserver;

.field private final mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field private mPackageName:Ljava/lang/String;

.field private final mPm:Landroid/content/pm/PackageManager;

.field private final mServicePackageName:Ljava/lang/String;

.field private final mSignatureSets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/HashSet",
            "<",
            "Landroid/content/pm/Signature;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mTag:Ljava/lang/String;

.field private mVersion:I


# direct methods
.method static synthetic -get0(Lcom/android/server/ServiceWatcher;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/ServiceWatcher;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/ServiceWatcher;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/ServiceWatcher;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/ServiceWatcher;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/ServiceWatcher;->mName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/ServiceWatcher;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/ServiceWatcher;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/ServiceWatcher;Ljava/lang/String;)Z
    .locals 1
    .param p1, "justCheckThisPackage"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/ServiceWatcher;->bindBestPackageLocked(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/ServiceWatcher;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/ServiceWatcher;->unbindLocked()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/Runnable;Landroid/os/Handler;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "logTag"    # Ljava/lang/String;
    .param p3, "action"    # Ljava/lang/String;
    .param p4, "overlaySwitchResId"    # I
    .param p5, "defaultServicePackageNameResId"    # I
    .param p6, "initialPackageNamesResId"    # I
    .param p7, "newServiceWork"    # Ljava/lang/Runnable;
    .param p8, "handler"    # Landroid/os/Handler;

    .prologue
    .line 149
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/android/server/ServiceWatcher;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/Runnable;Landroid/os/Handler;)V

    .line 148
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/Runnable;Landroid/os/Handler;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "logTag"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "action"    # Ljava/lang/String;
    .param p5, "overlaySwitchResId"    # I
    .param p6, "defaultServicePackageNameResId"    # I
    .param p7, "initialPackageNamesResId"    # I
    .param p8, "newServiceWork"    # Ljava/lang/Runnable;
    .param p9, "handler"    # Landroid/os/Handler;

    .prologue
    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v6, Ljava/lang/Object;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    iput-object v6, p0, Lcom/android/server/ServiceWatcher;->mLock:Ljava/lang/Object;

    .line 89
    const/high16 v6, -0x80000000

    iput v6, p0, Lcom/android/server/ServiceWatcher;->mVersion:I

    .line 94
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/ServiceWatcher;->mIsMultiuser:Z

    .line 96
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/server/ServiceWatcher;->mObserver:Lcom/android/server/ServiceWatcher$NetWorkProviderSettingsObserver;

    .line 371
    new-instance v6, Lcom/android/server/ServiceWatcher$1;

    invoke-direct {v6, p0}, Lcom/android/server/ServiceWatcher$1;-><init>(Lcom/android/server/ServiceWatcher;)V

    iput-object v6, p0, Lcom/android/server/ServiceWatcher;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    .line 157
    iput-object p1, p0, Lcom/android/server/ServiceWatcher;->mContext:Landroid/content/Context;

    .line 158
    iput-object p2, p0, Lcom/android/server/ServiceWatcher;->mTag:Ljava/lang/String;

    .line 159
    iput-object p3, p0, Lcom/android/server/ServiceWatcher;->mName:Ljava/lang/String;

    .line 160
    iput-object p4, p0, Lcom/android/server/ServiceWatcher;->mAction:Ljava/lang/String;

    .line 161
    iget-object v6, p0, Lcom/android/server/ServiceWatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/ServiceWatcher;->mPm:Landroid/content/pm/PackageManager;

    .line 162
    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/android/server/ServiceWatcher;->mNewServiceWork:Ljava/lang/Runnable;

    .line 163
    move-object/from16 v0, p9

    iput-object v0, p0, Lcom/android/server/ServiceWatcher;->mHandler:Landroid/os/Handler;

    .line 164
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 167
    .local v4, "resources":Landroid/content/res/Resources;
    invoke-virtual {v4, p5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 168
    .local v1, "enableOverlay":Z
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 169
    .local v2, "initialPackageNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v1, :cond_0

    const-string/jumbo v6, "network"

    iget-object v7, p0, Lcom/android/server/ServiceWatcher;->mName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 172
    :cond_0
    move/from16 v0, p7

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 173
    .local v3, "pkgs":[Ljava/lang/String;
    if-eqz v3, :cond_1

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 174
    :cond_1
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/server/ServiceWatcher;->mServicePackageName:Ljava/lang/String;

    .line 175
    iget-object v6, p0, Lcom/android/server/ServiceWatcher;->mTag:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Overlay enabled, packages="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    .end local v3    # "pkgs":[Ljava/lang/String;
    :goto_0
    invoke-static {p1, v2}, Lcom/android/server/ServiceWatcher;->getSignatureSets(Landroid/content/Context;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/ServiceWatcher;->mSignatureSets:Ljava/util/List;

    .line 156
    return-void

    .line 179
    :cond_2
    invoke-virtual {v4, p6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 180
    .local v5, "servicePackageName":Ljava/lang/String;
    if-eqz v5, :cond_3

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    :cond_3
    iput-object v5, p0, Lcom/android/server/ServiceWatcher;->mServicePackageName:Ljava/lang/String;

    .line 182
    iget-object v6, p0, Lcom/android/server/ServiceWatcher;->mTag:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Overlay disabled, default package="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private LOGD(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 62
    const-string/jumbo v0, "ServiceWatcher"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    return-void
.end method

.method private bindBestPackageLocked(Ljava/lang/String;)Z
    .locals 18
    .param p1, "justCheckThisPackage"    # Ljava/lang/String;

    .prologue
    .line 232
    new-instance v5, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/ServiceWatcher;->mAction:Ljava/lang/String;

    invoke-direct {v5, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 233
    .local v5, "intent":Landroid/content/Intent;
    if-eqz p1, :cond_0

    .line 234
    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 236
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/ServiceWatcher;->mPm:Landroid/content/pm/PackageManager;

    .line 237
    const/16 v14, 0x80

    const/4 v15, 0x0

    .line 236
    invoke-virtual {v13, v5, v14, v15}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v11

    .line 238
    .local v11, "rInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/high16 v3, -0x80000000

    .line 239
    .local v3, "bestVersion":I
    const/4 v2, 0x0

    .line 240
    .local v2, "bestPackage":Ljava/lang/String;
    const/4 v1, 0x0

    .line 241
    .local v1, "bestIsMultiuser":Z
    if-eqz v11, :cond_8

    .line 242
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .end local v1    # "bestIsMultiuser":Z
    .end local v2    # "bestPackage":Ljava/lang/String;
    .local v10, "rInfo$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ResolveInfo;

    .line 243
    .local v9, "rInfo":Landroid/content/pm/ResolveInfo;
    iget-object v13, v9, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v8, v13, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 248
    .local v8, "packageName":Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/ServiceWatcher;->mPm:Landroid/content/pm/PackageManager;

    const/16 v14, 0x40

    invoke-virtual {v13, v8, v14}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7

    .line 249
    .local v7, "pInfo":Landroid/content/pm/PackageInfo;
    iget-object v13, v7, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/server/ServiceWatcher;->isSignatureMatch([Landroid/content/pm/Signature;)Z

    move-result v13

    if-nez v13, :cond_2

    .line 250
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/ServiceWatcher;->mTag:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " resolves service "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/ServiceWatcher;->mAction:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 251
    const-string/jumbo v15, ", but has wrong signature, ignoring"

    .line 250
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 254
    .end local v7    # "pInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v4

    .line 255
    .local v4, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/ServiceWatcher;->mTag:Ljava/lang/String;

    invoke-static {v13, v4}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 259
    .end local v4    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v7    # "pInfo":Landroid/content/pm/PackageInfo;
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/ServiceWatcher;->mName:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v8}, Lcom/android/server/ServiceWatcher;->isNetworkProvider(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_3

    .line 260
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/ServiceWatcher;->mTag:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " resolver service "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/ServiceWatcher;->mAction:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ","

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "mName="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/ServiceWatcher;->mName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 261
    const-string/jumbo v15, "different with setting provider ignoring"

    .line 260
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 266
    :cond_3
    const/high16 v12, -0x80000000

    .line 267
    .local v12, "version":I
    const/4 v6, 0x0

    .line 268
    .local v6, "isMultiuser":Z
    iget-object v13, v9, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v13, v13, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    if-eqz v13, :cond_4

    .line 269
    iget-object v13, v9, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v13, v13, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    .line 270
    const-string/jumbo v14, "serviceVersion"

    const/high16 v15, -0x80000000

    .line 269
    invoke-virtual {v13, v14, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v12

    .line 271
    iget-object v13, v9, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v13, v13, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v14, "serviceIsMultiuser"

    invoke-virtual {v13, v14}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    .line 274
    .end local v6    # "isMultiuser":Z
    :cond_4
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/ServiceWatcher;->mVersion:I

    if-le v12, v13, :cond_1

    .line 275
    move v3, v12

    .line 276
    move-object v2, v8

    .line 277
    .local v2, "bestPackage":Ljava/lang/String;
    move v1, v6

    .local v1, "bestIsMultiuser":Z
    goto/16 :goto_0

    .line 282
    .end local v1    # "bestIsMultiuser":Z
    .end local v2    # "bestPackage":Ljava/lang/String;
    .end local v7    # "pInfo":Landroid/content/pm/PackageInfo;
    .end local v8    # "packageName":Ljava/lang/String;
    .end local v9    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v12    # "version":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/ServiceWatcher;->mTag:Ljava/lang/String;

    const-string/jumbo v15, "bindBestPackage for %s : %s found %d, %s"

    const/4 v13, 0x4

    new-array v0, v13, [Ljava/lang/Object;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/ServiceWatcher;->mAction:Ljava/lang/String;

    const/16 v17, 0x0

    aput-object v13, v16, v17

    .line 283
    if-nez p1, :cond_6

    const-string/jumbo v13, ""

    :goto_1
    const/16 v17, 0x1

    aput-object v13, v16, v17

    .line 284
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/16 v17, 0x2

    aput-object v13, v16, v17

    .line 285
    if-nez v2, :cond_7

    const-string/jumbo v13, "no new best package"

    :goto_2
    const/16 v17, 0x3

    aput-object v13, v16, v17

    .line 282
    invoke-static/range {v15 .. v16}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v14, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    .end local v10    # "rInfo$iterator":Ljava/util/Iterator;
    :goto_3
    if-eqz v2, :cond_9

    .line 292
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v1}, Lcom/android/server/ServiceWatcher;->bindToPackageLocked(Ljava/lang/String;IZ)V

    .line 293
    const/4 v13, 0x1

    return v13

    .line 284
    .restart local v10    # "rInfo$iterator":Ljava/util/Iterator;
    :cond_6
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "("

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v17, ") "

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto :goto_1

    .line 286
    :cond_7
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "new best package: "

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto :goto_2

    .line 289
    .end local v10    # "rInfo$iterator":Ljava/util/Iterator;
    .local v1, "bestIsMultiuser":Z
    .local v2, "bestPackage":Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/ServiceWatcher;->mTag:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Unable to query intent services for action: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/ServiceWatcher;->mAction:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 295
    .end local v1    # "bestIsMultiuser":Z
    .end local v2    # "bestPackage":Ljava/lang/String;
    :cond_9
    const/4 v13, 0x0

    return v13
.end method

.method private bindToPackageLocked(Ljava/lang/String;IZ)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "version"    # I
    .param p3, "isMultiuser"    # Z

    .prologue
    .line 317
    invoke-direct {p0}, Lcom/android/server/ServiceWatcher;->unbindLocked()V

    .line 318
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/ServiceWatcher;->mAction:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 319
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 320
    iput-object p1, p0, Lcom/android/server/ServiceWatcher;->mPackageName:Ljava/lang/String;

    .line 321
    iput p2, p0, Lcom/android/server/ServiceWatcher;->mVersion:I

    .line 322
    iput-boolean p3, p0, Lcom/android/server/ServiceWatcher;->mIsMultiuser:Z

    .line 323
    iget-object v2, p0, Lcom/android/server/ServiceWatcher;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "binding "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " (version "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ") ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 324
    if-eqz p3, :cond_0

    const-string/jumbo v1, "multi"

    .line 323
    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 324
    const-string/jumbo v3, "-user)"

    .line 323
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    iget-object v2, p0, Lcom/android/server/ServiceWatcher;->mContext:Landroid/content/Context;

    .line 326
    iget-boolean v1, p0, Lcom/android/server/ServiceWatcher;->mIsMultiuser:Z

    if-eqz v1, :cond_1

    sget-object v1, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    .line 325
    :goto_1
    const v3, 0x40000005    # 2.0000012f

    invoke-virtual {v2, v0, p0, v3, v1}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    .line 316
    return-void

    .line 324
    :cond_0
    const-string/jumbo v1, "single"

    goto :goto_0

    .line 326
    :cond_1
    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    goto :goto_1
.end method

.method public static getSignatureSets(Landroid/content/Context;Ljava/util/List;)Ljava/util/ArrayList;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashSet",
            "<",
            "Landroid/content/pm/Signature;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 101
    .local p1, "initialPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 102
    .local v3, "pm":Landroid/content/pm/PackageManager;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 103
    .local v5, "sigSets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashSet<Landroid/content/pm/Signature;>;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    .local v7, "size":I
    :goto_0
    if-ge v1, v7, :cond_0

    .line 104
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 106
    .local v2, "pkg":Ljava/lang/String;
    :try_start_0
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 107
    .local v4, "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/pm/Signature;>;"
    const/16 v8, 0x40

    invoke-virtual {v3, v2, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v8

    iget-object v6, v8, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 108
    .local v6, "sigs":[Landroid/content/pm/Signature;
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 109
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    .end local v4    # "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/pm/Signature;>;"
    .end local v6    # "sigs":[Landroid/content/pm/Signature;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 110
    :catch_0
    move-exception v0

    .line 111
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v8, "ServiceWatcher"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " not found"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 114
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v2    # "pkg":Ljava/lang/String;
    :cond_0
    return-object v5
.end method

.method private isNetworkProvider(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "network"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 353
    const/4 v1, 0x0

    .line 354
    .local v1, "valid":Z
    if-eqz p1, :cond_3

    const-string/jumbo v2, "network"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 355
    iget-object v2, p0, Lcom/android/server/ServiceWatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 356
    const-string/jumbo v3, "network_provider_package"

    .line 355
    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 357
    .local v0, "settingPackage":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 358
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "set package="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " as default network provider"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/ServiceWatcher;->LOGD(Ljava/lang/String;)V

    .line 359
    iget-object v2, p0, Lcom/android/server/ServiceWatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "network_provider_package"

    invoke-static {v2, v3, p2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 362
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 363
    :cond_1
    const/4 v1, 0x1

    .line 368
    .end local v0    # "settingPackage":Ljava/lang/String;
    :cond_2
    :goto_0
    return v1

    .line 366
    :cond_3
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isSignatureMatch([Landroid/content/pm/Signature;)Z
    .locals 1
    .param p1, "signatures"    # [Landroid/content/pm/Signature;

    .prologue
    .line 349
    iget-object v0, p0, Lcom/android/server/ServiceWatcher;->mSignatureSets:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/android/server/ServiceWatcher;->isSignatureMatch([Landroid/content/pm/Signature;Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method public static isSignatureMatch([Landroid/content/pm/Signature;Ljava/util/List;)Z
    .locals 7
    .param p0, "signatures"    # [Landroid/content/pm/Signature;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/content/pm/Signature;",
            "Ljava/util/List",
            "<",
            "Ljava/util/HashSet",
            "<",
            "Landroid/content/pm/Signature;",
            ">;>;)Z"
        }
    .end annotation

    .prologue
    .local p1, "sigSets":Ljava/util/List;, "Ljava/util/List<Ljava/util/HashSet<Landroid/content/pm/Signature;>;>;"
    const/4 v5, 0x0

    .line 331
    if-nez p0, :cond_0

    return v5

    .line 334
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 335
    .local v0, "inputSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/pm/Signature;>;"
    array-length v6, p0

    move v4, v5

    :goto_0
    if-ge v4, v6, :cond_1

    aget-object v3, p0, v4

    .line 336
    .local v3, "s":Landroid/content/pm/Signature;
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 335
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 340
    .end local v3    # "s":Landroid/content/pm/Signature;
    :cond_1
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "referenceSet$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;

    .line 341
    .local v1, "referenceSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/pm/Signature;>;"
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 342
    const/4 v4, 0x1

    return v4

    .line 345
    .end local v1    # "referenceSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/pm/Signature;>;"
    :cond_3
    return v5
.end method

.method private unbindLocked()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 300
    iget-object v1, p0, Lcom/android/server/ServiceWatcher;->mPackageName:Ljava/lang/String;

    .line 301
    .local v1, "pkg":Ljava/lang/String;
    iput-object v2, p0, Lcom/android/server/ServiceWatcher;->mPackageName:Ljava/lang/String;

    .line 302
    const/high16 v2, -0x80000000

    iput v2, p0, Lcom/android/server/ServiceWatcher;->mVersion:I

    .line 303
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/ServiceWatcher;->mIsMultiuser:Z

    .line 304
    if-eqz v1, :cond_0

    .line 305
    iget-object v2, p0, Lcom/android/server/ServiceWatcher;->mTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unbinding "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    iget-object v2, p0, Lcom/android/server/ServiceWatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 310
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/ServiceWatcher;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v2}, Lcom/android/internal/content/PackageMonitor;->unregister()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 298
    :goto_0
    return-void

    .line 311
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method


# virtual methods
.method public getBestPackageName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 456
    iget-object v0, p0, Lcom/android/server/ServiceWatcher;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 457
    :try_start_0
    iget-object v1, p0, Lcom/android/server/ServiceWatcher;->mPackageName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 456
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public getBestVersion()I
    .locals 2

    .prologue
    .line 462
    iget-object v0, p0, Lcom/android/server/ServiceWatcher;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 463
    :try_start_0
    iget v1, p0, Lcom/android/server/ServiceWatcher;->mVersion:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    .line 462
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public getBinder()Landroid/os/IBinder;
    .locals 2

    .prologue
    .line 468
    iget-object v0, p0, Lcom/android/server/ServiceWatcher;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 469
    :try_start_0
    iget-object v1, p0, Lcom/android/server/ServiceWatcher;->mBinder:Landroid/os/IBinder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 468
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 429
    iget-object v2, p0, Lcom/android/server/ServiceWatcher;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 430
    :try_start_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 431
    .local v0, "packageName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/ServiceWatcher;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 432
    iget-object v1, p0, Lcom/android/server/ServiceWatcher;->mTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " connected"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    iput-object p2, p0, Lcom/android/server/ServiceWatcher;->mBinder:Landroid/os/IBinder;

    .line 434
    iget-object v1, p0, Lcom/android/server/ServiceWatcher;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/ServiceWatcher;->mNewServiceWork:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 435
    iget-object v1, p0, Lcom/android/server/ServiceWatcher;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/ServiceWatcher;->mNewServiceWork:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit v2

    .line 428
    return-void

    .line 438
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/server/ServiceWatcher;->mTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unexpected onServiceConnected: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 429
    .end local v0    # "packageName":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 5
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 445
    iget-object v2, p0, Lcom/android/server/ServiceWatcher;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 446
    :try_start_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 447
    .local v0, "packageName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/ServiceWatcher;->mTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " disconnected"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    iget-object v1, p0, Lcom/android/server/ServiceWatcher;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 450
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/ServiceWatcher;->mBinder:Landroid/os/IBinder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v2

    .line 444
    return-void

    .line 445
    .end local v0    # "packageName":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public start()Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 188
    iget-object v1, p0, Lcom/android/server/ServiceWatcher;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 189
    :try_start_0
    iget-object v0, p0, Lcom/android/server/ServiceWatcher;->mServicePackageName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/ServiceWatcher;->bindBestPackageLocked(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    monitor-exit v1

    return v0

    :cond_0
    monitor-exit v1

    .line 193
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 194
    .local v3, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 195
    iget-object v0, p0, Lcom/android/server/ServiceWatcher;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/ServiceWatcher$2;

    invoke-direct {v1, p0}, Lcom/android/server/ServiceWatcher$2;-><init>(Lcom/android/server/ServiceWatcher;)V

    .line 203
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v5, p0, Lcom/android/server/ServiceWatcher;->mHandler:Landroid/os/Handler;

    .line 195
    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 206
    iget-object v0, p0, Lcom/android/server/ServiceWatcher;->mServicePackageName:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 207
    iget-object v0, p0, Lcom/android/server/ServiceWatcher;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    iget-object v1, p0, Lcom/android/server/ServiceWatcher;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v4, v2, v6}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    .line 209
    :cond_1
    const-string/jumbo v0, "network"

    iget-object v1, p0, Lcom/android/server/ServiceWatcher;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 210
    new-instance v0, Lcom/android/server/ServiceWatcher$NetWorkProviderSettingsObserver;

    iget-object v1, p0, Lcom/android/server/ServiceWatcher;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/ServiceWatcher$NetWorkProviderSettingsObserver;-><init>(Lcom/android/server/ServiceWatcher;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/ServiceWatcher;->mObserver:Lcom/android/server/ServiceWatcher$NetWorkProviderSettingsObserver;

    .line 211
    iget-object v0, p0, Lcom/android/server/ServiceWatcher;->mObserver:Lcom/android/server/ServiceWatcher$NetWorkProviderSettingsObserver;

    invoke-virtual {v0}, Lcom/android/server/ServiceWatcher$NetWorkProviderSettingsObserver;->observer()V

    .line 213
    :cond_2
    return v6

    .line 188
    .end local v3    # "intentFilter":Landroid/content/IntentFilter;
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 218
    iget-object v0, p0, Lcom/android/server/ServiceWatcher;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 219
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/ServiceWatcher;->unbindLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 217
    return-void

    .line 218
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public switchUser()V
    .locals 2

    .prologue
    .line 474
    iget-object v1, p0, Lcom/android/server/ServiceWatcher;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 475
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/ServiceWatcher;->mIsMultiuser:Z

    if-nez v0, :cond_0

    .line 476
    invoke-direct {p0}, Lcom/android/server/ServiceWatcher;->unbindLocked()V

    .line 477
    iget-object v0, p0, Lcom/android/server/ServiceWatcher;->mServicePackageName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/ServiceWatcher;->bindBestPackageLocked(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 473
    return-void

    .line 474
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
