.class public final Lcom/android/server/power/plug/PlugInManager;
.super Ljava/lang/Object;
.source "PlugInManager.java"


# static fields
.field private static OPEN_XTEND:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/power/plug/PlugInManager;->OPEN_XTEND:Z

    .line 12
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static makeActivePlugIn(Landroid/content/Context;)Lcom/android/server/power/plug/IActivePlugIn;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    invoke-static {p0}, Lcom/android/server/activation/ActivePlugInImpl;->newInstance(Landroid/content/Context;)Lcom/android/server/activation/ActivePlugInImpl;

    move-result-object v0

    return-object v0
.end method

.method public static makePowerXtend(Landroid/content/Context;)Lcom/android/server/power/plug/IPowerXtendPlugIn;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    sget-boolean v0, Lcom/android/server/power/plug/PlugInManager;->OPEN_XTEND:Z

    invoke-static {p0, v0}, Lcom/android/server/power/xtend/PowerXtendPlugInImpl;->newInstance(Landroid/content/Context;Z)Lcom/android/server/power/xtend/PowerXtendPlugInImpl;

    move-result-object v0

    return-object v0
.end method
