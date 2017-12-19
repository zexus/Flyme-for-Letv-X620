.class public abstract Landroid/leuipowersavemode/command/ALetvDeepPowerSaveCommand;
.super Ljava/lang/Object;
.source "ALetvDeepPowerSaveCommand.java"

# interfaces
.implements Landroid/leuipowersavemode/command/LetvDeepPowerSaveCommand;


# static fields
.field protected static final TAG:Ljava/lang/String; = "leuiDeepPowerSave"


# instance fields
.field protected mCommandString:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-string/jumbo v0, ""

    iput-object v0, p0, Landroid/leuipowersavemode/command/ALetvDeepPowerSaveCommand;->mCommandString:Ljava/lang/String;

    .line 15
    return-void
.end method


# virtual methods
.method public commandToString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Landroid/leuipowersavemode/command/ALetvDeepPowerSaveCommand;->mCommandString:Ljava/lang/String;

    return-object v0
.end method

.method public disabled(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/leuipowersavemode/command/ALetvDeepPowerSaveCommand;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " disabled"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/leuipowersavemode/command/ALetvDeepPowerSaveCommand;->mCommandString:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public enabled(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/leuipowersavemode/command/ALetvDeepPowerSaveCommand;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " enabled"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/leuipowersavemode/command/ALetvDeepPowerSaveCommand;->mCommandString:Ljava/lang/String;

    .line 18
    return-void
.end method

.method public undo(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/leuipowersavemode/command/ALetvDeepPowerSaveCommand;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " undo"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/leuipowersavemode/command/ALetvDeepPowerSaveCommand;->mCommandString:Ljava/lang/String;

    .line 28
    return-void
.end method
