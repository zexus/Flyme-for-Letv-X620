.class public Lcom/android/server/power/xtend/ModulePropertiesInfo;
.super Ljava/lang/Object;
.source "ModulePropertiesInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/xtend/ModulePropertiesInfo$Mode;,
        Lcom/android/server/power/xtend/ModulePropertiesInfo$State;
    }
.end annotation


# instance fields
.field private mMode:Lcom/android/server/power/xtend/ModulePropertiesInfo$Mode;

.field private mState:Lcom/android/server/power/xtend/ModulePropertiesInfo$State;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    sget-object v0, Lcom/android/server/power/xtend/ModulePropertiesInfo$Mode;->MANUAL_MODE:Lcom/android/server/power/xtend/ModulePropertiesInfo$Mode;

    iput-object v0, p0, Lcom/android/server/power/xtend/ModulePropertiesInfo;->mMode:Lcom/android/server/power/xtend/ModulePropertiesInfo$Mode;

    .line 10
    sget-object v0, Lcom/android/server/power/xtend/ModulePropertiesInfo$State;->NO_SAVE:Lcom/android/server/power/xtend/ModulePropertiesInfo$State;

    iput-object v0, p0, Lcom/android/server/power/xtend/ModulePropertiesInfo;->mState:Lcom/android/server/power/xtend/ModulePropertiesInfo$State;

    .line 8
    return-void
.end method


# virtual methods
.method public getMode()Lcom/android/server/power/xtend/ModulePropertiesInfo$Mode;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/server/power/xtend/ModulePropertiesInfo;->mMode:Lcom/android/server/power/xtend/ModulePropertiesInfo$Mode;

    return-object v0
.end method

.method public getModeValue()I
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/server/power/xtend/ModulePropertiesInfo;->mMode:Lcom/android/server/power/xtend/ModulePropertiesInfo$Mode;

    invoke-virtual {v0}, Lcom/android/server/power/xtend/ModulePropertiesInfo$Mode;->getValue()I

    move-result v0

    return v0
.end method

.method public getState()Lcom/android/server/power/xtend/ModulePropertiesInfo$State;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/server/power/xtend/ModulePropertiesInfo;->mState:Lcom/android/server/power/xtend/ModulePropertiesInfo$State;

    return-object v0
.end method

.method public getStateValue()I
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/server/power/xtend/ModulePropertiesInfo;->mState:Lcom/android/server/power/xtend/ModulePropertiesInfo$State;

    invoke-virtual {v0}, Lcom/android/server/power/xtend/ModulePropertiesInfo$State;->getValue()I

    move-result v0

    return v0
.end method

.method public setMode(Lcom/android/server/power/xtend/ModulePropertiesInfo$Mode;)V
    .locals 0
    .param p1, "mode"    # Lcom/android/server/power/xtend/ModulePropertiesInfo$Mode;

    .prologue
    .line 14
    iput-object p1, p0, Lcom/android/server/power/xtend/ModulePropertiesInfo;->mMode:Lcom/android/server/power/xtend/ModulePropertiesInfo$Mode;

    .line 13
    return-void
.end method

.method public setState(Lcom/android/server/power/xtend/ModulePropertiesInfo$State;)V
    .locals 0
    .param p1, "state"    # Lcom/android/server/power/xtend/ModulePropertiesInfo$State;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/android/server/power/xtend/ModulePropertiesInfo;->mState:Lcom/android/server/power/xtend/ModulePropertiesInfo$State;

    .line 17
    return-void
.end method
