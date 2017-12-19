.class Lcom/android/server/pm/AdbCmdDialog$Allow;
.super Ljava/lang/Object;
.source "AdbCmdDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/AdbCmdDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Allow"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/AdbCmdDialog;


# direct methods
.method constructor <init>(Lcom/android/server/pm/AdbCmdDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/pm/AdbCmdDialog;

    .prologue
    .line 161
    iput-object p1, p0, Lcom/android/server/pm/AdbCmdDialog$Allow;->this$0:Lcom/android/server/pm/AdbCmdDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/server/pm/AdbCmdDialog$Allow;->this$0:Lcom/android/server/pm/AdbCmdDialog;

    invoke-static {v0}, Lcom/android/server/pm/AdbCmdDialog;->-get4(Lcom/android/server/pm/AdbCmdDialog;)Lcom/android/server/pm/AdbCmdDialog$DialogHandler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/pm/AdbCmdDialog$DialogHandler;->sendEmptyMessage(I)Z

    .line 164
    return-void
.end method
