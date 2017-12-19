.class Lcom/android/server/PermissionDialog$CheckboxChangeListener;
.super Ljava/lang/Object;
.source "PermissionDialog.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PermissionDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CheckboxChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/PermissionDialog;


# direct methods
.method constructor <init>(Lcom/android/server/PermissionDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/PermissionDialog;

    .prologue
    .line 212
    iput-object p1, p0, Lcom/android/server/PermissionDialog$CheckboxChangeListener;->this$0:Lcom/android/server/PermissionDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 215
    return-void
.end method
