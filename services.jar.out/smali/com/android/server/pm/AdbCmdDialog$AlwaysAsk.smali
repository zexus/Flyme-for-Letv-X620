.class Lcom/android/server/pm/AdbCmdDialog$AlwaysAsk;
.super Ljava/lang/Object;
.source "AdbCmdDialog.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/AdbCmdDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AlwaysAsk"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/AdbCmdDialog;


# direct methods
.method constructor <init>(Lcom/android/server/pm/AdbCmdDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/pm/AdbCmdDialog;

    .prologue
    .line 169
    iput-object p1, p0, Lcom/android/server/pm/AdbCmdDialog$AlwaysAsk;->this$0:Lcom/android/server/pm/AdbCmdDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 170
    return-void
.end method
