.class Landroid/widget/AppSecurityPermissions$BootCompleteOnClick;
.super Ljava/lang/Object;
.source "AppSecurityPermissions.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AppSecurityPermissions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BootCompleteOnClick"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/AppSecurityPermissions;


# direct methods
.method constructor <init>(Landroid/widget/AppSecurityPermissions;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/AppSecurityPermissions;

    .prologue
    .line 1294
    iput-object p1, p0, Landroid/widget/AppSecurityPermissions$BootCompleteOnClick;->this$0:Landroid/widget/AppSecurityPermissions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 17
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1296
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/AppSecurityPermissions$BootCompleteOnClick;->this$0:Landroid/widget/AppSecurityPermissions;

    invoke-static {v15}, Landroid/widget/AppSecurityPermissions;->-get0(Landroid/widget/AppSecurityPermissions;)Landroid/content/Context;

    move-result-object v15

    const-string/jumbo v16, "layout_inflater"

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/LayoutInflater;

    .line 1297
    .local v12, "mInflater":Landroid/view/LayoutInflater;
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/AppSecurityPermissions$BootCompleteOnClick;->this$0:Landroid/widget/AppSecurityPermissions;

    invoke-static {v15}, Landroid/widget/AppSecurityPermissions;->-get0(Landroid/widget/AppSecurityPermissions;)Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    .line 1299
    .local v14, "pm":Landroid/content/pm/PackageManager;
    const v15, 0x1090079

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v12, v15, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    .line 1300
    .local v9, "lePermBottemSheet":Landroid/view/ViewGroup;
    const v15, 0x1020066

    invoke-virtual {v9, v15}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 1301
    .local v6, "bottemSheetPermTitle":Landroid/widget/TextView;
    const v15, 0x1020067

    invoke-virtual {v9, v15}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    .line 1303
    .local v7, "bottemSheetPermViewGroup":Landroid/view/ViewGroup;
    const/4 v3, 0x0

    .line 1304
    .local v3, "PermInfo":Ljava/lang/CharSequence;
    const/4 v2, 0x0

    .line 1306
    .local v2, "PermDes":Ljava/lang/CharSequence;
    const v15, 0x109007a

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v12, v15, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup;

    .line 1307
    .local v10, "lePermBottemSheetItem":Landroid/view/ViewGroup;
    const v15, 0x1020068

    invoke-virtual {v10, v15}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 1308
    .local v5, "bottemSheetPermInfo":Landroid/widget/TextView;
    const v15, 0x1020069

    invoke-virtual {v10, v15}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 1309
    .local v4, "bottemSheetPermDes":Landroid/widget/TextView;
    const/4 v15, 0x0

    invoke-virtual {v5, v15}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1310
    const/4 v15, 0x0

    invoke-virtual {v4, v15}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1313
    :try_start_0
    const-string/jumbo v1, "android.permission.RECEIVE_BOOT_COMPLETED"

    .line 1314
    .local v1, "BootCompletePerm":Ljava/lang/String;
    const-string/jumbo v15, "android.permission.RECEIVE_BOOT_COMPLETED"

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v13

    .line 1315
    .local v13, "permInfoItem":Landroid/content/pm/PermissionInfo;
    invoke-virtual {v13, v14}, Landroid/content/pm/PermissionInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 1316
    .local v3, "PermInfo":Ljava/lang/CharSequence;
    invoke-virtual {v13, v14}, Landroid/content/pm/PermissionInfo;->loadDescription(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1320
    .end local v1    # "BootCompletePerm":Ljava/lang/String;
    .end local v2    # "PermDes":Ljava/lang/CharSequence;
    .end local v3    # "PermInfo":Ljava/lang/CharSequence;
    .end local v13    # "permInfoItem":Landroid/content/pm/PermissionInfo;
    :goto_0
    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1321
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1322
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1323
    invoke-virtual {v7, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1325
    new-instance v11, Lcom/letv/leui/widget/LeBottomSheet;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/AppSecurityPermissions$BootCompleteOnClick;->this$0:Landroid/widget/AppSecurityPermissions;

    invoke-static {v15}, Landroid/widget/AppSecurityPermissions;->-get0(Landroid/widget/AppSecurityPermissions;)Landroid/content/Context;

    move-result-object v15

    invoke-direct {v11, v15}, Lcom/letv/leui/widget/LeBottomSheet;-><init>(Landroid/content/Context;)V

    .line 1326
    .local v11, "mBottomSheet":Lcom/letv/leui/widget/LeBottomSheet;
    const/16 v15, 0x5a0

    invoke-virtual {v11, v15}, Lcom/letv/leui/widget/LeBottomSheet;->setMaxHeightInPixel(I)V

    .line 1327
    invoke-virtual {v11, v9}, Lcom/letv/leui/widget/LeBottomSheet;->setStyle(Landroid/view/View;)V

    .line 1328
    invoke-virtual {v11}, Lcom/letv/leui/widget/LeBottomSheet;->appear()V

    .line 1295
    return-void

    .line 1317
    .end local v11    # "mBottomSheet":Lcom/letv/leui/widget/LeBottomSheet;
    .restart local v2    # "PermDes":Ljava/lang/CharSequence;
    :catch_0
    move-exception v8

    .line 1318
    .local v8, "e":Ljava/lang/Exception;
    const-string/jumbo v15, "AppSecurityPermissions"

    const-string/jumbo v16, "Ignoring unknown permission: android.permission.RECEIVE_BOOT_COMPLETED"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
