.class public final Lcom/android/server/pm/Installer;
.super Lcom/android/server/SystemService;
.source "Installer.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Installer"


# instance fields
.field private final mInstaller:Lcom/android/internal/os/InstallerConnection;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 43
    new-instance v0, Lcom/android/internal/os/InstallerConnection;

    invoke-direct {v0}, Lcom/android/internal/os/InstallerConnection;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Installer;->mInstaller:Lcom/android/internal/os/InstallerConnection;

    .line 41
    return-void
.end method

.method private static escapeNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "arg"    # Ljava/lang/String;

    .prologue
    const/4 v1, -0x1

    .line 53
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    const-string/jumbo v0, "!"

    return-object v0

    .line 56
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ne v0, v1, :cond_1

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eq v0, v1, :cond_2

    .line 57
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_2
    return-object p0
.end method

.method private static isValidInstructionSet(Ljava/lang/String;)Z
    .locals 6
    .param p0, "instructionSet"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 472
    if-nez p0, :cond_0

    .line 473
    return v2

    .line 476
    :cond_0
    sget-object v3, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    array-length v4, v3

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_2

    aget-object v0, v3, v1

    .line 477
    .local v0, "abi":Ljava/lang/String;
    invoke-static {v0}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 478
    const/4 v1, 0x1

    return v1

    .line 476
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 482
    .end local v0    # "abi":Ljava/lang/String;
    :cond_2
    return v2
.end method


# virtual methods
.method public changeUidRoot(Ljava/lang/String;I)I
    .locals 3
    .param p1, "pakageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 508
    if-nez p1, :cond_0

    .line 509
    const-string/jumbo v1, "Installer"

    const-string/jumbo v2, "changeUidRoot pakageName is null"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    const/4 v1, -0x1

    return v1

    .line 512
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "changeuidroot "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 513
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 514
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 515
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 517
    iget-object v1, p0, Lcom/android/server/pm/Installer;->mInstaller:Lcom/android/internal/os/InstallerConnection;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/os/InstallerConnection;->execute(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public clearUserData(Ljava/lang/String;I)I
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 294
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/pm/Installer;->clearUserData(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public clearUserData(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 3
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    const/16 v2, 0x20

    .line 298
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "rmuserdata"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 299
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 300
    invoke-static {p1}, Lcom/android/server/pm/Installer;->escapeNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 302
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 304
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 305
    iget-object v1, p0, Lcom/android/server/pm/Installer;->mInstaller:Lcom/android/internal/os/InstallerConnection;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/os/InstallerConnection;->execute(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public copyCompleteApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)I
    .locals 3
    .param p1, "fromUuid"    # Ljava/lang/String;
    .param p2, "toUuid"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "dataAppName"    # Ljava/lang/String;
    .param p5, "appId"    # I
    .param p6, "seinfo"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0x20

    .line 276
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "cpcompleteapp"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 277
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 278
    invoke-static {p1}, Lcom/android/server/pm/Installer;->escapeNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 280
    invoke-static {p2}, Lcom/android/server/pm/Installer;->escapeNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 282
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 284
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 286
    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 287
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 288
    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    iget-object v1, p0, Lcom/android/server/pm/Installer;->mInstaller:Lcom/android/internal/os/InstallerConnection;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/os/InstallerConnection;->execute(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public createOatDir(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p1, "oatDir"    # Ljava/lang/String;
    .param p2, "dexInstructionSet"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0x20

    .line 448
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "createoatdir"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 449
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 450
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 451
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 452
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 453
    iget-object v1, p0, Lcom/android/server/pm/Installer;->mInstaller:Lcom/android/internal/os/InstallerConnection;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/os/InstallerConnection;->execute(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public createUserConfig(I)I
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 254
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mkuserconfig"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 255
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 256
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 257
    iget-object v1, p0, Lcom/android/server/pm/Installer;->mInstaller:Lcom/android/internal/os/InstallerConnection;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/os/InstallerConnection;->execute(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public createUserData(Ljava/lang/String;IILjava/lang/String;)I
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "userId"    # I
    .param p4, "seinfo"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 235
    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/Installer;->createUserData(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public createUserData(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)I
    .locals 3
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "userId"    # I
    .param p5, "seinfo"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0x20

    .line 239
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mkuserdata"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 240
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 241
    invoke-static {p1}, Lcom/android/server/pm/Installer;->escapeNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 243
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 245
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 246
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 247
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 248
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 249
    if-eqz p5, :cond_0

    .end local p5    # "seinfo":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    iget-object v1, p0, Lcom/android/server/pm/Installer;->mInstaller:Lcom/android/internal/os/InstallerConnection;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/os/InstallerConnection;->execute(Ljava/lang/String;)I

    move-result v1

    return v1

    .line 249
    .restart local p5    # "seinfo":Ljava/lang/String;
    :cond_0
    const-string/jumbo p5, "!"

    goto :goto_0
.end method

.method public deleteCacheFiles(Ljava/lang/String;I)I
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 203
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/pm/Installer;->deleteCacheFiles(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public deleteCacheFiles(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 3
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    const/16 v2, 0x20

    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "rmcache"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 208
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 209
    invoke-static {p1}, Lcom/android/server/pm/Installer;->escapeNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 211
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 213
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 214
    iget-object v1, p0, Lcom/android/server/pm/Installer;->mInstaller:Lcom/android/internal/os/InstallerConnection;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/os/InstallerConnection;->execute(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public deleteCodeCacheFiles(Ljava/lang/String;I)I
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 219
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/pm/Installer;->deleteCodeCacheFiles(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public deleteCodeCacheFiles(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 3
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    const/16 v2, 0x20

    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "rmcodecache"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 224
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 225
    invoke-static {p1}, Lcom/android/server/pm/Installer;->escapeNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 227
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 229
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 230
    iget-object v1, p0, Lcom/android/server/pm/Installer;->mInstaller:Lcom/android/internal/os/InstallerConnection;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/os/InstallerConnection;->execute(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public dexopt(Ljava/lang/String;IZLjava/lang/String;I)I
    .locals 6
    .param p1, "apkPath"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "isPublic"    # Z
    .param p4, "instructionSet"    # Ljava/lang/String;
    .param p5, "dexoptNeeded"    # I

    .prologue
    .line 85
    invoke-static {p4}, Lcom/android/server/pm/Installer;->isValidInstructionSet(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 86
    const-string/jumbo v0, "Installer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid instruction set: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    const/4 v0, -0x1

    return v0

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstaller:Lcom/android/internal/os/InstallerConnection;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/os/InstallerConnection;->dexopt(Ljava/lang/String;IZLjava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public dexopt(Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;IZZLjava/lang/String;)I
    .locals 10
    .param p1, "apkPath"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "isPublic"    # Z
    .param p4, "pkgName"    # Ljava/lang/String;
    .param p5, "instructionSet"    # Ljava/lang/String;
    .param p6, "dexoptNeeded"    # I
    .param p7, "vmSafeMode"    # Z
    .param p8, "debuggable"    # Z
    .param p9, "outputPath"    # Ljava/lang/String;

    .prologue
    .line 96
    invoke-static {p5}, Lcom/android/server/pm/Installer;->isValidInstructionSet(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 97
    const-string/jumbo v0, "Installer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid instruction set: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    const/4 v0, -0x1

    return v0

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstaller:Lcom/android/internal/os/InstallerConnection;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Lcom/android/internal/os/InstallerConnection;->dexopt(Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;IZZLjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public fixUid(Ljava/lang/String;II)I
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "gid"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 185
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/pm/Installer;->fixUid(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public fixUid(Ljava/lang/String;Ljava/lang/String;II)I
    .locals 3
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "gid"    # I

    .prologue
    const/16 v2, 0x20

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "fixuid"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 190
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 191
    invoke-static {p1}, Lcom/android/server/pm/Installer;->escapeNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 193
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 195
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 196
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 197
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 198
    iget-object v1, p0, Lcom/android/server/pm/Installer;->mInstaller:Lcom/android/internal/os/InstallerConnection;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/os/InstallerConnection;->execute(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public freeCache(J)I
    .locals 1
    .param p1, "freeStorageSize"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 322
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/pm/Installer;->freeCache(Ljava/lang/String;J)I

    move-result v0

    return v0
.end method

.method public freeCache(Ljava/lang/String;J)I
    .locals 4
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "freeStorageSize"    # J

    .prologue
    const/16 v2, 0x20

    .line 326
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "freecache"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 327
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 328
    invoke-static {p1}, Lcom/android/server/pm/Installer;->escapeNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 330
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    iget-object v1, p0, Lcom/android/server/pm/Installer;->mInstaller:Lcom/android/internal/os/InstallerConnection;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/os/InstallerConnection;->execute(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public getSizeInfo(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/content/pm/PackageStats;)I
    .locals 10
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "persona"    # I
    .param p3, "apkPath"    # Ljava/lang/String;
    .param p4, "libDirPath"    # Ljava/lang/String;
    .param p5, "fwdLockApkPath"    # Ljava/lang/String;
    .param p6, "asecPath"    # Ljava/lang/String;
    .param p7, "instructionSets"    # [Ljava/lang/String;
    .param p8, "pStats"    # Landroid/content/pm/PackageStats;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 337
    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/pm/Installer;->getSizeInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/content/pm/PackageStats;)I

    move-result v0

    return v0
.end method

.method public getSizeInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/content/pm/PackageStats;)I
    .locals 10
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "persona"    # I
    .param p4, "apkPath"    # Ljava/lang/String;
    .param p5, "libDirPath"    # Ljava/lang/String;
    .param p6, "fwdLockApkPath"    # Ljava/lang/String;
    .param p7, "asecPath"    # Ljava/lang/String;
    .param p8, "instructionSets"    # [Ljava/lang/String;
    .param p9, "pStats"    # Landroid/content/pm/PackageStats;

    .prologue
    .line 344
    const/4 v7, 0x0

    move-object/from16 v0, p8

    array-length v8, v0

    :goto_0
    if-ge v7, v8, :cond_1

    aget-object v4, p8, v7

    .line 345
    .local v4, "instructionSet":Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/pm/Installer;->isValidInstructionSet(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 346
    const-string/jumbo v7, "Installer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Invalid instruction set: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    const/4 v7, -0x1

    return v7

    .line 344
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 351
    .end local v4    # "instructionSet":Ljava/lang/String;
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "getsize"

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 352
    .local v2, "builder":Ljava/lang/StringBuilder;
    const/16 v7, 0x20

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 353
    invoke-static {p1}, Lcom/android/server/pm/Installer;->escapeNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    const/16 v7, 0x20

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 355
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    const/16 v7, 0x20

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 357
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 358
    const/16 v7, 0x20

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 359
    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    const/16 v7, 0x20

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 363
    if-eqz p5, :cond_3

    .end local p5    # "libDirPath":Ljava/lang/String;
    :goto_1
    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    const/16 v7, 0x20

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 365
    if-eqz p6, :cond_4

    .end local p6    # "fwdLockApkPath":Ljava/lang/String;
    :goto_2
    move-object/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    const/16 v7, 0x20

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 367
    if-eqz p7, :cond_5

    .end local p7    # "asecPath":Ljava/lang/String;
    :goto_3
    move-object/from16 v0, p7

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    const/16 v7, 0x20

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 371
    const/4 v7, 0x0

    aget-object v7, p8, v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    iget-object v7, p0, Lcom/android/server/pm/Installer;->mInstaller:Lcom/android/internal/os/InstallerConnection;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/internal/os/InstallerConnection;->transact(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 374
    .local v6, "s":Ljava/lang/String;
    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 376
    .local v5, "res":[Ljava/lang/String;
    if-eqz v5, :cond_2

    array-length v7, v5

    const/4 v8, 0x5

    if-eq v7, v8, :cond_6

    .line 377
    :cond_2
    const/4 v7, -0x1

    return v7

    .line 363
    .end local v5    # "res":[Ljava/lang/String;
    .end local v6    # "s":Ljava/lang/String;
    .restart local p5    # "libDirPath":Ljava/lang/String;
    .restart local p6    # "fwdLockApkPath":Ljava/lang/String;
    .restart local p7    # "asecPath":Ljava/lang/String;
    :cond_3
    const-string/jumbo p5, "!"

    goto :goto_1

    .line 365
    .end local p5    # "libDirPath":Ljava/lang/String;
    :cond_4
    const-string/jumbo p6, "!"

    goto :goto_2

    .line 367
    .end local p6    # "fwdLockApkPath":Ljava/lang/String;
    :cond_5
    const-string/jumbo p7, "!"

    goto :goto_3

    .line 380
    .end local p7    # "asecPath":Ljava/lang/String;
    .restart local v5    # "res":[Ljava/lang/String;
    .restart local v6    # "s":Ljava/lang/String;
    :cond_6
    const/4 v7, 0x1

    :try_start_0
    aget-object v7, v5, v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    move-object/from16 v0, p9

    iput-wide v8, v0, Landroid/content/pm/PackageStats;->codeSize:J

    .line 381
    const/4 v7, 0x2

    aget-object v7, v5, v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    move-object/from16 v0, p9

    iput-wide v8, v0, Landroid/content/pm/PackageStats;->dataSize:J

    .line 382
    const/4 v7, 0x3

    aget-object v7, v5, v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    move-object/from16 v0, p9

    iput-wide v8, v0, Landroid/content/pm/PackageStats;->cacheSize:J

    .line 383
    const/4 v7, 0x4

    aget-object v7, v5, v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    move-object/from16 v0, p9

    iput-wide v8, v0, Landroid/content/pm/PackageStats;->externalCodeSize:J

    .line 384
    const/4 v7, 0x0

    aget-object v7, v5, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    return v7

    .line 385
    :catch_0
    move-exception v3

    .line 386
    .local v3, "e":Ljava/lang/NumberFormatException;
    const/4 v7, -0x1

    return v7
.end method

.method public idmap(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 3
    .param p1, "targetApkPath"    # Ljava/lang/String;
    .param p2, "overlayApkPath"    # Ljava/lang/String;
    .param p3, "uid"    # I

    .prologue
    const/16 v2, 0x20

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "idmap"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 107
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 108
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 110
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 112
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 113
    iget-object v1, p0, Lcom/android/server/pm/Installer;->mInstaller:Lcom/android/internal/os/InstallerConnection;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/os/InstallerConnection;->execute(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public install(Ljava/lang/String;IILjava/lang/String;)I
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "gid"    # I
    .param p4, "seinfo"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 65
    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/Installer;->install(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public install(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)I
    .locals 3
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "gid"    # I
    .param p5, "seinfo"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0x20

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "install"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 71
    invoke-static {p1}, Lcom/android/server/pm/Installer;->escapeNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 79
    if-eqz p5, :cond_0

    .end local p5    # "seinfo":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    iget-object v1, p0, Lcom/android/server/pm/Installer;->mInstaller:Lcom/android/internal/os/InstallerConnection;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/os/InstallerConnection;->execute(Ljava/lang/String;)I

    move-result v1

    return v1

    .line 79
    .restart local p5    # "seinfo":Ljava/lang/String;
    :cond_0
    const-string/jumbo p5, "!"

    goto :goto_0
.end method

.method public linkFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p1, "relativePath"    # Ljava/lang/String;
    .param p2, "fromBase"    # Ljava/lang/String;
    .param p3, "toBase"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0x20

    .line 458
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "linkfile"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 459
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 460
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 461
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 462
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 464
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    iget-object v1, p0, Lcom/android/server/pm/Installer;->mInstaller:Lcom/android/internal/os/InstallerConnection;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/os/InstallerConnection;->execute(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public linkNativeLibraryDirectory(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 1
    .param p1, "dataPath"    # Ljava/lang/String;
    .param p2, "nativeLibPath32"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 396
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/pm/Installer;->linkNativeLibraryDirectory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public linkNativeLibraryDirectory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 4
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "dataPath"    # Ljava/lang/String;
    .param p3, "nativeLibPath32"    # Ljava/lang/String;
    .param p4, "userId"    # I

    .prologue
    const/4 v3, -0x1

    const/16 v2, 0x20

    .line 408
    if-nez p2, :cond_0

    .line 409
    const-string/jumbo v1, "Installer"

    const-string/jumbo v2, "linkNativeLibraryDirectory dataPath is null"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    return v3

    .line 411
    :cond_0
    if-nez p3, :cond_1

    .line 412
    const-string/jumbo v1, "Installer"

    const-string/jumbo v2, "linkNativeLibraryDirectory nativeLibPath is null"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    return v3

    .line 416
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "linklib"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 417
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 418
    invoke-static {p1}, Lcom/android/server/pm/Installer;->escapeNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 420
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 422
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 424
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 426
    iget-object v1, p0, Lcom/android/server/pm/Installer;->mInstaller:Lcom/android/internal/os/InstallerConnection;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/os/InstallerConnection;->execute(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public markBootComplete(Ljava/lang/String;)I
    .locals 4
    .param p1, "instructionSet"    # Ljava/lang/String;

    .prologue
    .line 309
    invoke-static {p1}, Lcom/android/server/pm/Installer;->isValidInstructionSet(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 310
    const-string/jumbo v1, "Installer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid instruction set: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    const/4 v1, -0x1

    return v1

    .line 314
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "markbootcomplete"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 315
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 316
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    iget-object v1, p0, Lcom/android/server/pm/Installer;->mInstaller:Lcom/android/internal/os/InstallerConnection;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/os/InstallerConnection;->execute(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public moveFiles()I
    .locals 2

    .prologue
    .line 391
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstaller:Lcom/android/internal/os/InstallerConnection;

    const-string/jumbo v1, "movefiles"

    invoke-virtual {v0, v1}, Lcom/android/internal/os/InstallerConnection;->execute(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public movedex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .param p1, "srcPath"    # Ljava/lang/String;
    .param p2, "dstPath"    # Ljava/lang/String;
    .param p3, "instructionSet"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0x20

    .line 117
    invoke-static {p3}, Lcom/android/server/pm/Installer;->isValidInstructionSet(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 118
    const-string/jumbo v1, "Installer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid instruction set: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    const/4 v1, -0x1

    return v1

    .line 122
    :cond_0
    const-string/jumbo v1, "Installer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "movedex("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "movedex"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 125
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 126
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 128
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 130
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    iget-object v1, p0, Lcom/android/server/pm/Installer;->mInstaller:Lcom/android/internal/os/InstallerConnection;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/os/InstallerConnection;->execute(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public moveodex(Ljava/lang/String;IZ)I
    .locals 5
    .param p1, "apkPath"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "isPublic"    # Z

    .prologue
    const/16 v4, 0x20

    .line 487
    const-string/jumbo v1, "Installer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "moveodex("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "moveodex"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 489
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 490
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 491
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 492
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 493
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 494
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 495
    iget-object v1, p0, Lcom/android/server/pm/Installer;->mInstaller:Lcom/android/internal/os/InstallerConnection;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/os/InstallerConnection;->execute(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 48
    const-string/jumbo v0, "Installer"

    const-string/jumbo v1, "Waiting for installd to be ready."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstaller:Lcom/android/internal/os/InstallerConnection;

    invoke-virtual {v0}, Lcom/android/internal/os/InstallerConnection;->waitForConnection()V

    .line 47
    return-void
.end method

.method public remove(Ljava/lang/String;I)I
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 160
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/pm/Installer;->remove(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public remove(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 3
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    const/16 v2, 0x20

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "remove"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 165
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 166
    invoke-static {p1}, Lcom/android/server/pm/Installer;->escapeNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 168
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 170
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 171
    iget-object v1, p0, Lcom/android/server/pm/Installer;->mInstaller:Lcom/android/internal/os/InstallerConnection;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/os/InstallerConnection;->execute(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public removeUserDataDirs(I)I
    .locals 1
    .param p1, "userId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 262
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/pm/Installer;->removeUserDataDirs(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public removeUserDataDirs(Ljava/lang/String;I)I
    .locals 3
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    const/16 v2, 0x20

    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "rmuser"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 267
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 268
    invoke-static {p1}, Lcom/android/server/pm/Installer;->escapeNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 270
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 271
    iget-object v1, p0, Lcom/android/server/pm/Installer;->mInstaller:Lcom/android/internal/os/InstallerConnection;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/os/InstallerConnection;->execute(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public rename(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p1, "oldname"    # Ljava/lang/String;
    .param p2, "newname"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0x20

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "rename"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 176
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 177
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 179
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    iget-object v1, p0, Lcom/android/server/pm/Installer;->mInstaller:Lcom/android/internal/os/InstallerConnection;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/os/InstallerConnection;->execute(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public restoreconData(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "seinfo"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 431
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/pm/Installer;->restoreconData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public restoreconData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 4
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "seinfo"    # Ljava/lang/String;
    .param p4, "uid"    # I

    .prologue
    const/4 v1, 0x0

    const/16 v3, 0x20

    .line 435
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "restorecondata"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 436
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 437
    invoke-static {p1}, Lcom/android/server/pm/Installer;->escapeNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 439
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 441
    if-eqz p3, :cond_1

    .end local p3    # "seinfo":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 442
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 443
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 444
    iget-object v2, p0, Lcom/android/server/pm/Installer;->mInstaller:Lcom/android/internal/os/InstallerConnection;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/os/InstallerConnection;->execute(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 441
    .restart local p3    # "seinfo":Ljava/lang/String;
    :cond_1
    const-string/jumbo p3, "!"

    goto :goto_0
.end method

.method public rmPackageDir(Ljava/lang/String;)I
    .locals 3
    .param p1, "packageDir"    # Ljava/lang/String;

    .prologue
    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "rmpackagedir"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 153
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 154
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    iget-object v1, p0, Lcom/android/server/pm/Installer;->mInstaller:Lcom/android/internal/os/InstallerConnection;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/os/InstallerConnection;->execute(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public rmdex(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .param p1, "codePath"    # Ljava/lang/String;
    .param p2, "instructionSet"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0x20

    .line 135
    invoke-static {p2}, Lcom/android/server/pm/Installer;->isValidInstructionSet(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 136
    const-string/jumbo v1, "Installer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid instruction set: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    const/4 v1, -0x1

    return v1

    .line 140
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "rmdex"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 141
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 142
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 144
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    iget-object v1, p0, Lcom/android/server/pm/Installer;->mInstaller:Lcom/android/internal/os/InstallerConnection;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/os/InstallerConnection;->execute(Ljava/lang/String;)I

    move-result v1

    return v1
.end method
