.class public Landroid/app/AppOpsUtils$AppOpsItem;
.super Ljava/lang/Object;
.source "AppOpsUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/AppOpsUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AppOpsItem"
.end annotation


# instance fields
.field public costMoney:Z

.field public featureNames:[Ljava/lang/String;

.field public group_desc:Ljava/lang/String;

.field public group_name:Ljava/lang/String;

.field public group_title:Ljava/lang/String;

.field public group_type:I

.field public mode:I

.field public ops:[I

.field public order:I

.field public perms:[Ljava/lang/String;

.field final synthetic this$0:Landroid/app/AppOpsUtils;


# direct methods
.method constructor <init>(Landroid/app/AppOpsUtils;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[IZ[Ljava/lang/String;)V
    .locals 7
    .param p1, "this$0"    # Landroid/app/AppOpsUtils;
    .param p2, "group_type"    # I
    .param p3, "group_title"    # Ljava/lang/String;
    .param p4, "order"    # I
    .param p5, "group_name"    # Ljava/lang/String;
    .param p6, "group_desc"    # Ljava/lang/String;
    .param p7, "perms"    # [Ljava/lang/String;
    .param p8, "ops"    # [I
    .param p9, "costMoney"    # Z
    .param p10, "featureNames"    # [Ljava/lang/String;

    .prologue
    .line 504
    iput-object p1, p0, Landroid/app/AppOpsUtils$AppOpsItem;->this$0:Landroid/app/AppOpsUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 505
    iput p2, p0, Landroid/app/AppOpsUtils$AppOpsItem;->group_type:I

    .line 506
    iput-object p3, p0, Landroid/app/AppOpsUtils$AppOpsItem;->group_title:Ljava/lang/String;

    .line 507
    iput p4, p0, Landroid/app/AppOpsUtils$AppOpsItem;->order:I

    .line 508
    iput-object p5, p0, Landroid/app/AppOpsUtils$AppOpsItem;->group_name:Ljava/lang/String;

    .line 509
    iput-object p6, p0, Landroid/app/AppOpsUtils$AppOpsItem;->group_desc:Ljava/lang/String;

    .line 510
    iput-object p7, p0, Landroid/app/AppOpsUtils$AppOpsItem;->perms:[Ljava/lang/String;

    .line 511
    iput-object p8, p0, Landroid/app/AppOpsUtils$AppOpsItem;->ops:[I

    .line 512
    move/from16 v0, p9

    iput-boolean v0, p0, Landroid/app/AppOpsUtils$AppOpsItem;->costMoney:Z

    .line 513
    move-object/from16 v0, p10

    iput-object v0, p0, Landroid/app/AppOpsUtils$AppOpsItem;->featureNames:[Ljava/lang/String;

    .line 514
    iget-boolean v3, p1, Landroid/app/AppOpsUtils;->isFirst:Z

    if-eqz v3, :cond_6

    .line 515
    const/4 v1, 0x0

    .line 516
    .local v1, "change":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    move-object/from16 v0, p10

    array-length v3, v0

    if-ge v2, v3, :cond_2

    .line 517
    iget-object v3, p1, Landroid/app/AppOpsUtils;->pm:Landroid/content/pm/PackageManager;

    aget-object v4, p10, v2

    const-string/jumbo v5, "FeatureTypeWhite"

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getFeatureMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    iget-object v4, p1, Landroid/app/AppOpsUtils;->packageName:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 518
    const/4 v3, 0x0

    iput v3, p0, Landroid/app/AppOpsUtils$AppOpsItem;->mode:I

    .line 519
    const/4 v1, 0x1

    .line 516
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 520
    :cond_0
    iget-object v3, p1, Landroid/app/AppOpsUtils;->pm:Landroid/content/pm/PackageManager;

    aget-object v4, p10, v2

    const-string/jumbo v5, "FeatureTypeBlack"

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getFeatureMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    iget-object v4, p1, Landroid/app/AppOpsUtils;->packageName:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 521
    const/4 v3, 0x1

    iput v3, p0, Landroid/app/AppOpsUtils$AppOpsItem;->mode:I

    .line 522
    const/4 v1, 0x1

    goto :goto_1

    .line 524
    :cond_1
    if-eqz v1, :cond_3

    .line 504
    .end local v1    # "change":Z
    .end local v2    # "i":I
    :cond_2
    :goto_2
    return-void

    .line 527
    .restart local v1    # "change":Z
    .restart local v2    # "i":I
    :cond_3
    iget-object v3, p1, Landroid/app/AppOpsUtils;->pm:Landroid/content/pm/PackageManager;

    const-string/jumbo v4, "appops_aboard"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 528
    iget-object v3, p1, Landroid/app/AppOpsUtils;->aom:Landroid/app/AppOpsManager;

    const/4 v3, 0x0

    aget v3, p8, v3

    invoke-static {v3}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v3

    iput v3, p0, Landroid/app/AppOpsUtils$AppOpsItem;->mode:I

    goto :goto_1

    .line 529
    :cond_4
    iget-object v3, p1, Landroid/app/AppOpsUtils;->pm:Landroid/content/pm/PackageManager;

    const-string/jumbo v4, "safe_show_phone_and_sms_permisson_detail"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 530
    iget-object v3, p1, Landroid/app/AppOpsUtils;->aom:Landroid/app/AppOpsManager;

    const/4 v3, 0x0

    aget v3, p8, v3

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/app/AppOpsManager;->opToDefaultMode(IZZ)I

    move-result v3

    iput v3, p0, Landroid/app/AppOpsUtils$AppOpsItem;->mode:I

    goto :goto_1

    .line 532
    :cond_5
    iget-object v3, p1, Landroid/app/AppOpsUtils;->aom:Landroid/app/AppOpsManager;

    const/4 v3, 0x0

    aget v3, p8, v3

    const/4 v4, 0x1

    invoke-static {v3, v4}, Landroid/app/AppOpsManager;->opToDefaultMode(IZ)I

    move-result v3

    iput v3, p0, Landroid/app/AppOpsUtils$AppOpsItem;->mode:I

    goto :goto_1

    .line 538
    .end local v1    # "change":Z
    .end local v2    # "i":I
    :cond_6
    iget-object v3, p1, Landroid/app/AppOpsUtils;->aom:Landroid/app/AppOpsManager;

    const/4 v4, 0x0

    aget v4, p8, v4

    iget v5, p1, Landroid/app/AppOpsUtils;->uid:I

    iget-object v6, p1, Landroid/app/AppOpsUtils;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v6}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I

    move-result v3

    iput v3, p0, Landroid/app/AppOpsUtils$AppOpsItem;->mode:I

    goto :goto_2
.end method
