.class Lcom/android/server/PermissionDialog$PositiveOnclickListener;
.super Ljava/lang/Object;
.source "PermissionDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PermissionDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PositiveOnclickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/PermissionDialog;


# direct methods
.method constructor <init>(Lcom/android/server/PermissionDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/PermissionDialog;

    .prologue
    .line 196
    iput-object p1, p0, Lcom/android/server/PermissionDialog$PositiveOnclickListener;->this$0:Lcom/android/server/PermissionDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/server/PermissionDialog$PositiveOnclickListener;->this$0:Lcom/android/server/PermissionDialog;

    invoke-static {v0}, Lcom/android/server/PermissionDialog;->-get2(Lcom/android/server/PermissionDialog;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 199
    return-void
.end method
