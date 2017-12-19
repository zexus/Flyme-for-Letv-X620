.class Landroid/widget/AppSecurityPermissions$PermissionItemView$1;
.super Ljava/lang/Object;
.source "AppSecurityPermissions.java"

# interfaces
.implements Lcom/letv/leui/widget/LeListPreferenceView$OnChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/AppSecurityPermissions$PermissionItemView;->setPermission(Landroid/app/AppOpsUtils$AppOpsItem;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/AppSecurityPermissions$PermissionItemView;

.field final synthetic val$permItem:Landroid/app/AppOpsUtils$AppOpsItem;


# direct methods
.method constructor <init>(Landroid/widget/AppSecurityPermissions$PermissionItemView;Landroid/app/AppOpsUtils$AppOpsItem;)V
    .locals 0
    .param p1, "this$1"    # Landroid/widget/AppSecurityPermissions$PermissionItemView;
    .param p2, "val$permItem"    # Landroid/app/AppOpsUtils$AppOpsItem;

    .prologue
    .line 249
    iput-object p1, p0, Landroid/widget/AppSecurityPermissions$PermissionItemView$1;->this$1:Landroid/widget/AppSecurityPermissions$PermissionItemView;

    iput-object p2, p0, Landroid/widget/AppSecurityPermissions$PermissionItemView$1;->val$permItem:Landroid/app/AppOpsUtils$AppOpsItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Lcom/letv/leui/widget/LeListPreferenceView;Ljava/lang/Object;)V
    .locals 5
    .param p1, "view"    # Lcom/letv/leui/widget/LeListPreferenceView;
    .param p2, "mValue"    # Ljava/lang/Object;

    .prologue
    .line 251
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 252
    .local v1, "value":I
    const/4 v0, -0x1

    .line 253
    .local v0, "permRelult":I
    if-nez v1, :cond_0

    .line 254
    const/4 v0, 0x0

    .line 262
    :goto_0
    const-string/jumbo v2, "AppSecurityPermissions"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "install------permItem.group_name is"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/widget/AppSecurityPermissions$PermissionItemView$1;->val$permItem:Landroid/app/AppOpsUtils$AppOpsItem;

    iget-object v4, v4, Landroid/app/AppOpsUtils$AppOpsItem;->group_name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "permRelult is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    iget-object v2, p0, Landroid/widget/AppSecurityPermissions$PermissionItemView$1;->val$permItem:Landroid/app/AppOpsUtils$AppOpsItem;

    iput v0, v2, Landroid/app/AppOpsUtils$AppOpsItem;->mode:I

    .line 250
    return-void

    .line 255
    :cond_0
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 256
    const/4 v0, 0x1

    goto :goto_0

    .line 257
    :cond_1
    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 258
    const/4 v0, 0x4

    goto :goto_0

    .line 260
    :cond_2
    const/4 v0, 0x4

    goto :goto_0
.end method
