.class Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;
.super Landroid/widget/BaseAdapter;
.source "ResolverActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ResolverActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ResolveListAdapter"
.end annotation


# instance fields
.field private final mBaseResolveList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field mDisplayList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mFilterLastUsed:Z

.field private mHasExtendedInfo:Z

.field protected final mInflater:Landroid/view/LayoutInflater;

.field private final mInitialIntents:[Landroid/content/Intent;

.field private final mIntents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private mLastChosen:Landroid/content/pm/ResolveInfo;

.field private mLastChosenPosition:I

.field private final mLaunchedFromUid:I

.field mOrigResolveList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mOtherProfile:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

.field final synthetic this$0:Lcom/android/internal/app/ResolverActivity;


# direct methods
.method public constructor <init>(Lcom/android/internal/app/ResolverActivity;Landroid/content/Context;Ljava/util/List;[Landroid/content/Intent;Ljava/util/List;IZ)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/internal/app/ResolverActivity;
    .param p2, "context"    # Landroid/content/Context;
    .param p4, "initialIntents"    # [Landroid/content/Intent;
    .param p6, "launchedFromUid"    # I
    .param p7, "filterLastUsed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;[",
            "Landroid/content/Intent;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;IZ)V"
        }
    .end annotation

    .prologue
    .line 1310
    .local p3, "payloadIntents":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    .local p5, "rList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 1307
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mLastChosenPosition:I

    .line 1313
    iput-object p3, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mIntents:Ljava/util/List;

    .line 1314
    iput-object p4, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mInitialIntents:[Landroid/content/Intent;

    .line 1315
    iput-object p5, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mBaseResolveList:Ljava/util/List;

    .line 1316
    iput p6, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mLaunchedFromUid:I

    .line 1317
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 1318
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mDisplayList:Ljava/util/List;

    .line 1319
    iput-boolean p7, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mFilterLastUsed:Z

    .line 1320
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->rebuildList()V

    .line 1312
    return-void
.end method

.method private addResolveInfo(Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;)V
    .locals 2
    .param p1, "dri"    # Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    .prologue
    .line 1750
    invoke-static {p1}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->-get1(Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ResolveInfo;->targetUserId:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mOtherProfile:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    if-nez v0, :cond_0

    .line 1753
    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mOtherProfile:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    .line 1749
    :goto_0
    return-void

    .line 1755
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private addResolveInfoWithAlternates(Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 11
    .param p1, "rci"    # Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    .param p2, "extraInfo"    # Ljava/lang/CharSequence;
    .param p3, "roLabel"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v1, 0x0

    .line 1723
    invoke-virtual {p1}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getCount()I

    move-result v9

    .line 1724
    .local v9, "count":I
    invoke-virtual {p1, v1}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getIntentAt(I)Landroid/content/Intent;

    move-result-object v2

    .line 1725
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {p1, v1}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    .line 1726
    .local v3, "add":Landroid/content/pm/ResolveInfo;
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v1, v4, v2}, Lcom/android/internal/app/ResolverActivity;->getReplacementIntent(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v6

    .line 1727
    .local v6, "replaceIntent":Landroid/content/Intent;
    new-instance v0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    move-object v4, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;-><init>(Lcom/android/internal/app/ResolverActivity;Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)V

    .line 1729
    .local v0, "dri":Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;
    invoke-direct {p0, v0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->addResolveInfo(Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;)V

    .line 1730
    if-ne v6, v2, :cond_0

    .line 1733
    const/4 v10, 0x1

    .local v10, "i":I
    move v7, v9

    .local v7, "N":I
    :goto_0
    if-ge v10, v7, :cond_0

    .line 1734
    invoke-virtual {p1, v10}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getIntentAt(I)Landroid/content/Intent;

    move-result-object v8

    .line 1735
    .local v8, "altIntent":Landroid/content/Intent;
    invoke-virtual {v0, v8}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->addAlternateSourceIntent(Landroid/content/Intent;)V

    .line 1733
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 1738
    .end local v7    # "N":I
    .end local v8    # "altIntent":Landroid/content/Intent;
    .end local v10    # "i":I
    :cond_0
    invoke-direct {p0, v3}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->updateLastChosenPosition(Landroid/content/pm/ResolveInfo;)V

    .line 1722
    return-void
.end method

.method private addResolveListDedupe(Ljava/util/List;Landroid/content/Intent;Ljava/util/List;)V
    .locals 11
    .param p2, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
            ">;",
            "Landroid/content/Intent;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1636
    .local p1, "into":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;>;"
    .local p3, "from":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    .line 1637
    .local v1, "fromCount":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    .line 1638
    .local v3, "intoCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 1639
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 1640
    .local v5, "newInfo":Landroid/content/pm/ResolveInfo;
    const/4 v0, 0x0

    .line 1642
    .local v0, "found":Z
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    if-ge v4, v3, :cond_0

    .line 1643
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    .line 1644
    .local v6, "rci":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    invoke-direct {p0, v5, v6}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->isSameResolvedComponent(Landroid/content/pm/ResolveInfo;Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1645
    const/4 v0, 0x1

    .line 1646
    invoke-virtual {v6, p2, v5}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->add(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;)V

    .line 1650
    .end local v6    # "rci":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    :cond_0
    if-nez v0, :cond_1

    .line 1651
    new-instance v7, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    new-instance v8, Landroid/content/ComponentName;

    .line 1652
    iget-object v9, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v10, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 1651
    invoke-direct {v8, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v7, v8, p2, v5}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;-><init>(Landroid/content/ComponentName;Landroid/content/Intent;Landroid/content/pm/ResolveInfo;)V

    invoke-interface {p1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1638
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1642
    .restart local v6    # "rci":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1635
    .end local v0    # "found":Z
    .end local v4    # "j":I
    .end local v5    # "newInfo":Landroid/content/pm/ResolveInfo;
    .end local v6    # "rci":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    :cond_3
    return-void
.end method

.method private isSameResolvedComponent(Landroid/content/pm/ResolveInfo;Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;)Z
    .locals 3
    .param p1, "a"    # Landroid/content/pm/ResolveInfo;
    .param p2, "b"    # Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    .prologue
    .line 1659
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1660
    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v2, p2, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->name:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1661
    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v2, p2, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->name:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1660
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private onBindView(Landroid/view/View;Lcom/android/internal/app/ResolverActivity$TargetInfo;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "info"    # Lcom/android/internal/app/ResolverActivity$TargetInfo;

    .prologue
    .line 1904
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/ResolverActivity$ViewHolder;

    .line 1905
    .local v1, "holder":Lcom/android/internal/app/ResolverActivity$ViewHolder;
    iget-object v2, v1, Lcom/android/internal/app/ResolverActivity$ViewHolder;->shareTitle:Landroid/widget/TextView;

    invoke-interface {p2}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->getDisplayLabel()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1906
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    iget-boolean v2, v2, Lcom/android/internal/app/ResolverActivity;->isNightMode:Z

    if-eqz v2, :cond_0

    .line 1907
    const-string/jumbo v2, "#dfdfdf"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    .line 1908
    .local v0, "blackTvColor":I
    iget-object v2, v1, Lcom/android/internal/app/ResolverActivity$ViewHolder;->shareTitle:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1911
    .end local v0    # "blackTvColor":I
    :cond_0
    const-string/jumbo v2, "ResolverActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onBindView "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p2}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->getDisplayLabel()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1928
    instance-of v2, p2, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    if-eqz v2, :cond_1

    move-object v2, p2

    .line 1929
    check-cast v2, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    invoke-virtual {v2}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->hasDisplayIcon()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1932
    :cond_1
    :goto_0
    iget-object v2, v1, Lcom/android/internal/app/ResolverActivity$ViewHolder;->shareIcon:Landroid/widget/ImageView;

    invoke-interface {p2}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->getDisplayIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1877
    return-void

    .line 1930
    :cond_2
    new-instance v3, Lcom/android/internal/app/ResolverActivity$LoadAdapterIconTask;

    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    move-object v2, p2

    check-cast v2, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    invoke-direct {v3, v4, v2}, Lcom/android/internal/app/ResolverActivity$LoadAdapterIconTask;-><init>(Lcom/android/internal/app/ResolverActivity;Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v3, v2}, Lcom/android/internal/app/ResolverActivity$LoadAdapterIconTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private processGroup(Ljava/util/List;IILcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;Ljava/lang/CharSequence;)V
    .locals 15
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "ro"    # Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    .param p5, "roLabel"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
            ">;II",
            "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
            "Ljava/lang/CharSequence;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1675
    .local p1, "rList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;>;"
    sub-int v13, p3, p2

    add-int/lit8 v9, v13, 0x1

    .line 1676
    .local v9, "num":I
    const/4 v13, 0x1

    if-ne v9, v13, :cond_1

    .line 1678
    const/4 v13, 0x0

    move-object/from16 v0, p4

    move-object/from16 v1, p5

    invoke-direct {p0, v0, v13, v1}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->addResolveInfoWithAlternates(Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 1673
    :cond_0
    return-void

    .line 1680
    :cond_1
    const/4 v13, 0x1

    iput-boolean v13, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mHasExtendedInfo:Z

    .line 1681
    const/4 v12, 0x0

    .line 1682
    .local v12, "usePkg":Z
    const/4 v13, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v13}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v13

    iget-object v13, v13, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v13, v13, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1683
    iget-object v14, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-static {v14}, Lcom/android/internal/app/ResolverActivity;->-get18(Lcom/android/internal/app/ResolverActivity;)Landroid/content/pm/PackageManager;

    move-result-object v14

    .line 1682
    invoke-virtual {v13, v14}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v11

    .line 1684
    .local v11, "startApp":Ljava/lang/CharSequence;
    if-nez v11, :cond_2

    .line 1685
    const/4 v12, 0x1

    .line 1687
    :cond_2
    if-nez v12, :cond_5

    .line 1690
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 1691
    .local v3, "duplicates":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/CharSequence;>;"
    invoke-virtual {v3, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1692
    add-int/lit8 v5, p2, 0x1

    .local v5, "j":I
    :goto_0
    move/from16 v0, p3

    if-gt v5, v0, :cond_4

    .line 1693
    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v7

    .line 1694
    .local v7, "jRi":Landroid/content/pm/ResolveInfo;
    iget-object v13, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v13, v13, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v14, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-static {v14}, Lcom/android/internal/app/ResolverActivity;->-get18(Lcom/android/internal/app/ResolverActivity;)Landroid/content/pm/PackageManager;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 1695
    .local v6, "jApp":Ljava/lang/CharSequence;
    if-eqz v6, :cond_3

    invoke-virtual {v3, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 1696
    :cond_3
    const/4 v12, 0x1

    .line 1703
    .end local v6    # "jApp":Ljava/lang/CharSequence;
    .end local v7    # "jRi":Landroid/content/pm/ResolveInfo;
    :cond_4
    invoke-virtual {v3}, Ljava/util/HashSet;->clear()V

    .line 1705
    .end local v3    # "duplicates":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/CharSequence;>;"
    .end local v5    # "j":I
    :cond_5
    move/from16 v8, p2

    .local v8, "k":I
    :goto_1
    move/from16 v0, p3

    if-gt v8, v0, :cond_0

    .line 1706
    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    .line 1707
    .local v10, "rci":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    const/4 v13, 0x0

    invoke-virtual {v10, v13}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 1709
    .local v2, "add":Landroid/content/pm/ResolveInfo;
    if-eqz v12, :cond_7

    .line 1711
    iget-object v13, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v13, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 1716
    .local v4, "extraInfo":Ljava/lang/CharSequence;
    :goto_2
    move-object/from16 v0, p5

    invoke-direct {p0, v10, v4, v0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->addResolveInfoWithAlternates(Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 1705
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 1699
    .end local v2    # "add":Landroid/content/pm/ResolveInfo;
    .end local v4    # "extraInfo":Ljava/lang/CharSequence;
    .end local v8    # "k":I
    .end local v10    # "rci":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    .restart local v3    # "duplicates":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/CharSequence;>;"
    .restart local v5    # "j":I
    .restart local v6    # "jApp":Ljava/lang/CharSequence;
    .restart local v7    # "jRi":Landroid/content/pm/ResolveInfo;
    :cond_6
    invoke-virtual {v3, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1692
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1714
    .end local v3    # "duplicates":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/CharSequence;>;"
    .end local v5    # "j":I
    .end local v6    # "jApp":Ljava/lang/CharSequence;
    .end local v7    # "jRi":Landroid/content/pm/ResolveInfo;
    .restart local v2    # "add":Landroid/content/pm/ResolveInfo;
    .restart local v8    # "k":I
    .restart local v10    # "rci":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    :cond_7
    iget-object v13, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v13, v13, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v14, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-static {v14}, Lcom/android/internal/app/ResolverActivity;->-get18(Lcom/android/internal/app/ResolverActivity;)Landroid/content/pm/PackageManager;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    .restart local v4    # "extraInfo":Ljava/lang/CharSequence;
    goto :goto_2
.end method

.method private rebuildList()V
    .locals 51

    .prologue
    .line 1398
    const/16 v26, 0x0

    .line 1401
    .local v26, "currentResolveList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;>;"
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v4}, Lcom/android/internal/app/ResolverActivity;->getTargetIntent()Landroid/content/Intent;

    move-result-object v40

    .line 1402
    .local v40, "primaryIntent":Landroid/content/Intent;
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    .line 1403
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v5}, Lcom/android/internal/app/ResolverActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    move-object/from16 v0, v40

    invoke-virtual {v0, v5}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v5

    .line 1404
    const/high16 v8, 0x10000

    .line 1402
    move-object/from16 v0, v40

    invoke-interface {v4, v0, v5, v8}, Landroid/content/pm/IPackageManager;->getLastChosenActivity(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mLastChosen:Landroid/content/pm/ResolveInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1410
    .end local v40    # "primaryIntent":Landroid/content/Intent;
    :goto_0
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mOtherProfile:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    .line 1411
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 1412
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mBaseResolveList:Ljava/util/List;

    if-eqz v4, :cond_3

    .line 1413
    new-instance v26, Ljava/util/ArrayList;

    .end local v26    # "currentResolveList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;>;"
    invoke-direct/range {v26 .. v26}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mOrigResolveList:Ljava/util/List;

    .line 1414
    .local v26, "currentResolveList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v4}, Lcom/android/internal/app/ResolverActivity;->getTargetIntent()Landroid/content/Intent;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mBaseResolveList:Ljava/util/List;

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1, v4, v5}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->addResolveListDedupe(Ljava/util/List;Landroid/content/Intent;Ljava/util/List;)V

    .line 1455
    .end local v26    # "currentResolveList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;>;"
    :cond_0
    if-eqz v26, :cond_1b

    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    move-result v21

    .local v21, "N":I
    if-lez v21, :cond_1b

    .line 1458
    const/4 v4, 0x0

    move-object/from16 v0, v26

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    .line 1459
    .local v12, "rci0":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    const/4 v4, 0x0

    invoke-virtual {v12, v4}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v41

    .line 1460
    .local v41, "r0":Landroid/content/pm/ResolveInfo;
    const/16 v29, 0x1

    .local v29, "i":I
    :goto_1
    move/from16 v0, v29

    move/from16 v1, v21

    if-ge v0, v1, :cond_c

    .line 1461
    move-object/from16 v0, v26

    move/from16 v1, v29

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v7

    .line 1468
    .local v7, "ri":Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, v41

    iget v4, v0, Landroid/content/pm/ResolveInfo;->priority:I

    iget v5, v7, Landroid/content/pm/ResolveInfo;->priority:I

    if-ne v4, v5, :cond_1

    .line 1469
    move-object/from16 v0, v41

    iget-boolean v4, v0, Landroid/content/pm/ResolveInfo;->isDefault:Z

    iget-boolean v5, v7, Landroid/content/pm/ResolveInfo;->isDefault:Z

    if-eq v4, v5, :cond_b

    .line 1470
    :cond_1
    :goto_2
    move/from16 v0, v29

    move/from16 v1, v21

    if-ge v0, v1, :cond_b

    .line 1471
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mOrigResolveList:Ljava/util/List;

    move-object/from16 v0, v26

    if-ne v4, v0, :cond_2

    .line 1472
    new-instance v4, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mOrigResolveList:Ljava/util/List;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mOrigResolveList:Ljava/util/List;

    .line 1474
    :cond_2
    move-object/from16 v0, v26

    move/from16 v1, v29

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1475
    add-int/lit8 v21, v21, -0x1

    goto :goto_2

    .line 1405
    .end local v7    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v12    # "rci0":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    .end local v21    # "N":I
    .end local v29    # "i":I
    .end local v41    # "r0":Landroid/content/pm/ResolveInfo;
    .local v26, "currentResolveList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;>;"
    :catch_0
    move-exception v45

    .line 1406
    .local v45, "re":Landroid/os/RemoteException;
    const-string/jumbo v4, "ResolverActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Error calling setLastChosenActivity\n"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v45

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1416
    .end local v45    # "re":Landroid/os/RemoteException;
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->shouldGetResolvedFilter()Z

    move-result v48

    .line 1417
    .local v48, "shouldGetResolvedFilter":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v4}, Lcom/android/internal/app/ResolverActivity;->shouldGetActivityMetadata()Z

    move-result v47

    .line 1418
    .local v47, "shouldGetActivityMetadata":Z
    const/16 v29, 0x0

    .restart local v29    # "i":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mIntents:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v21

    .end local v26    # "currentResolveList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;>;"
    .restart local v21    # "N":I
    :goto_3
    move/from16 v0, v29

    move/from16 v1, v21

    if-ge v0, v1, :cond_8

    .line 1419
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mIntents:Ljava/util/List;

    move/from16 v0, v29

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Landroid/content/Intent;

    .line 1420
    .local v34, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-static {v4}, Lcom/android/internal/app/ResolverActivity;->-get18(Lcom/android/internal/app/ResolverActivity;)Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 1422
    if-eqz v48, :cond_6

    const/16 v4, 0x40

    .line 1421
    :goto_4
    const/high16 v8, 0x10000

    or-int/2addr v8, v4

    .line 1423
    if-eqz v47, :cond_7

    const/16 v4, 0x80

    .line 1421
    :goto_5
    or-int/2addr v4, v8

    .line 1420
    move-object/from16 v0, v34

    invoke-virtual {v5, v0, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v33

    .line 1424
    .local v33, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v33, :cond_5

    .line 1425
    if-nez v26, :cond_4

    .line 1426
    new-instance v26, Ljava/util/ArrayList;

    invoke-direct/range {v26 .. v26}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mOrigResolveList:Ljava/util/List;

    .line 1428
    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v34

    move-object/from16 v3, v33

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->addResolveListDedupe(Ljava/util/List;Landroid/content/Intent;Ljava/util/List;)V

    .line 1418
    :cond_5
    add-int/lit8 v29, v29, 0x1

    goto :goto_3

    .line 1422
    .end local v33    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_6
    const/4 v4, 0x0

    goto :goto_4

    .line 1423
    :cond_7
    const/4 v4, 0x0

    goto :goto_5

    .line 1437
    .end local v34    # "intent":Landroid/content/Intent;
    :cond_8
    if-eqz v26, :cond_0

    .line 1438
    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v29, v4, -0x1

    :goto_6
    if-ltz v29, :cond_0

    .line 1439
    move-object/from16 v0, v26

    move/from16 v1, v29

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    .line 1440
    const/4 v5, 0x0

    .line 1439
    invoke-virtual {v4, v5}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    iget-object v0, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v23, v0

    .line 1442
    .local v23, "ai":Landroid/content/pm/ActivityInfo;
    move-object/from16 v0, v23

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mLaunchedFromUid:I

    .line 1443
    move-object/from16 v0, v23

    iget-object v8, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object/from16 v0, v23

    iget-boolean v9, v0, Landroid/content/pm/ActivityInfo;->exported:Z

    .line 1441
    invoke-static {v4, v5, v8, v9}, Landroid/app/ActivityManager;->checkComponentPermission(Ljava/lang/String;IIZ)I

    move-result v28

    .line 1444
    .local v28, "granted":I
    if-eqz v28, :cond_a

    .line 1446
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mOrigResolveList:Ljava/util/List;

    move-object/from16 v0, v26

    if-ne v4, v0, :cond_9

    .line 1447
    new-instance v4, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mOrigResolveList:Ljava/util/List;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mOrigResolveList:Ljava/util/List;

    .line 1449
    :cond_9
    move-object/from16 v0, v26

    move/from16 v1, v29

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1438
    :cond_a
    add-int/lit8 v29, v29, -0x1

    goto :goto_6

    .line 1460
    .end local v23    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v28    # "granted":I
    .end local v47    # "shouldGetActivityMetadata":Z
    .end local v48    # "shouldGetResolvedFilter":Z
    .restart local v7    # "ri":Landroid/content/pm/ResolveInfo;
    .restart local v12    # "rci0":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    .restart local v41    # "r0":Landroid/content/pm/ResolveInfo;
    :cond_b
    add-int/lit8 v29, v29, 0x1

    goto/16 :goto_1

    .line 1489
    .end local v7    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_c
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    const-class v4, Lcom/mediatek/common/media/IRCSePriorityExt;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-static {v4, v8}, Lcom/mediatek/common/MPlugin;->createInstance(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/common/media/IRCSePriorityExt;

    invoke-static {v5, v4}, Lcom/android/internal/app/ResolverActivity;->-set3(Lcom/android/internal/app/ResolverActivity;Lcom/mediatek/common/media/IRCSePriorityExt;)Lcom/mediatek/common/media/IRCSePriorityExt;

    .line 1490
    const-string/jumbo v4, "ResolverActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "RCSe Plugin initiated "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-static {v8}, Lcom/android/internal/app/ResolverActivity;->-get20(Lcom/android/internal/app/ResolverActivity;)Lcom/mediatek/common/media/IRCSePriorityExt;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1491
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-static {v4}, Lcom/android/internal/app/ResolverActivity;->-get20(Lcom/android/internal/app/ResolverActivity;)Lcom/mediatek/common/media/IRCSePriorityExt;

    move-result-object v4

    if-eqz v4, :cond_f

    .line 1492
    invoke-interface/range {v26 .. v26}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v32

    .local v32, "info$iterator":Ljava/util/Iterator;
    :cond_d
    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    .line 1493
    .local v31, "info":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    invoke-virtual/range {v31 .. v31}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getCount()I

    move-result v25

    .line 1494
    .local v25, "count":I
    const/16 v27, 0x0

    .line 1495
    .local v27, "found":Z
    const/16 v30, 0x0

    .local v30, "index":I
    :goto_7
    move/from16 v0, v30

    move/from16 v1, v25

    if-ge v0, v1, :cond_e

    .line 1496
    move-object/from16 v0, v31

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v24, v0

    .line 1498
    .local v24, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    move-object/from16 v0, v24

    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v5, "com.orangelabs.rcs"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 1499
    const-string/jumbo v4, "ResolverActivity"

    const-string/jumbo v5, "rebuild list after sort"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1500
    move-object/from16 v0, v26

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1501
    const/4 v4, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v31

    invoke-interface {v0, v4, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1502
    const/16 v27, 0x1

    .line 1506
    .end local v24    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :cond_e
    if-eqz v27, :cond_d

    .line 1511
    .end local v25    # "count":I
    .end local v27    # "found":Z
    .end local v30    # "index":I
    .end local v31    # "info":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    .end local v32    # "info$iterator":Ljava/util/Iterator;
    :cond_f
    new-instance v39, Ljava/util/ArrayList;

    invoke-direct/range {v39 .. v39}, Ljava/util/ArrayList;-><init>()V

    .line 1515
    .local v39, "packageNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mInitialIntents:[Landroid/content/Intent;

    if-eqz v4, :cond_15

    .line 1516
    const/16 v29, 0x0

    :goto_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mInitialIntents:[Landroid/content/Intent;

    array-length v4, v4

    move/from16 v0, v29

    if-ge v0, v4, :cond_15

    .line 1517
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mInitialIntents:[Landroid/content/Intent;

    aget-object v6, v4, v29

    .line 1518
    .local v6, "ii":Landroid/content/Intent;
    if-nez v6, :cond_11

    .line 1516
    :goto_9
    add-int/lit8 v29, v29, 0x1

    goto :goto_8

    .line 1495
    .end local v6    # "ii":Landroid/content/Intent;
    .end local v39    # "packageNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v24    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v25    # "count":I
    .restart local v27    # "found":Z
    .restart local v30    # "index":I
    .restart local v31    # "info":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    .restart local v32    # "info$iterator":Ljava/util/Iterator;
    :cond_10
    add-int/lit8 v30, v30, 0x1

    goto :goto_7

    .line 1522
    .end local v24    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v25    # "count":I
    .end local v27    # "found":Z
    .end local v30    # "index":I
    .end local v31    # "info":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    .end local v32    # "info$iterator":Ljava/util/Iterator;
    .restart local v6    # "ii":Landroid/content/Intent;
    .restart local v39    # "packageNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_11
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v4}, Lcom/android/internal/app/ResolverActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x0

    .line 1521
    invoke-virtual {v6, v4, v5}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v23

    .line 1523
    .restart local v23    # "ai":Landroid/content/pm/ActivityInfo;
    if-nez v23, :cond_12

    .line 1524
    const-string/jumbo v4, "ResolverActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "No activity found for "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 1527
    :cond_12
    new-instance v7, Landroid/content/pm/ResolveInfo;

    invoke-direct {v7}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 1528
    .restart local v7    # "ri":Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, v23

    iput-object v0, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1530
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    const-string/jumbo v5, "user"

    invoke-virtual {v4, v5}, Lcom/android/internal/app/ResolverActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v50

    check-cast v50, Landroid/os/UserManager;

    .line 1531
    .local v50, "userManager":Landroid/os/UserManager;
    instance-of v4, v6, Landroid/content/pm/LabeledIntent;

    if-eqz v4, :cond_13

    move-object/from16 v36, v6

    .line 1532
    check-cast v36, Landroid/content/pm/LabeledIntent;

    .line 1533
    .local v36, "li":Landroid/content/pm/LabeledIntent;
    invoke-virtual/range {v36 .. v36}, Landroid/content/pm/LabeledIntent;->getSourcePackage()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v7, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    .line 1534
    invoke-virtual/range {v36 .. v36}, Landroid/content/pm/LabeledIntent;->getLabelResource()I

    move-result v4

    iput v4, v7, Landroid/content/pm/ResolveInfo;->labelRes:I

    .line 1535
    invoke-virtual/range {v36 .. v36}, Landroid/content/pm/LabeledIntent;->getNonLocalizedLabel()Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, v7, Landroid/content/pm/ResolveInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 1536
    invoke-virtual/range {v36 .. v36}, Landroid/content/pm/LabeledIntent;->getIconResource()I

    move-result v4

    iput v4, v7, Landroid/content/pm/ResolveInfo;->icon:I

    .line 1537
    iget v4, v7, Landroid/content/pm/ResolveInfo;->icon:I

    iput v4, v7, Landroid/content/pm/ResolveInfo;->iconResourceId:I

    .line 1540
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-static {v4}, Lcom/android/internal/app/ResolverActivity;->-get20(Lcom/android/internal/app/ResolverActivity;)Lcom/mediatek/common/media/IRCSePriorityExt;

    move-result-object v4

    if-eqz v4, :cond_13

    .line 1542
    invoke-virtual/range {v36 .. v36}, Landroid/content/pm/LabeledIntent;->getSourcePackage()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v39

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1547
    .end local v36    # "li":Landroid/content/pm/LabeledIntent;
    :cond_13
    invoke-virtual/range {v50 .. v50}, Landroid/os/UserManager;->isManagedProfile()Z

    move-result v4

    if-eqz v4, :cond_14

    .line 1548
    const/4 v4, 0x1

    iput-boolean v4, v7, Landroid/content/pm/ResolveInfo;->noResourceId:Z

    .line 1549
    const/4 v4, 0x0

    iput v4, v7, Landroid/content/pm/ResolveInfo;->icon:I

    .line 1551
    :cond_14
    new-instance v4, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    .line 1552
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v8}, Lcom/android/internal/app/ResolverActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    const/4 v9, 0x0

    move-object v10, v6

    .line 1551
    invoke-direct/range {v4 .. v10}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;-><init>(Lcom/android/internal/app/ResolverActivity;Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->addResolveInfo(Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;)V

    goto/16 :goto_9

    .line 1557
    .end local v6    # "ii":Landroid/content/Intent;
    .end local v7    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v23    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v50    # "userManager":Landroid/os/UserManager;
    :cond_15
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-static {v4}, Lcom/android/internal/app/ResolverActivity;->-get20(Lcom/android/internal/app/ResolverActivity;)Lcom/mediatek/common/media/IRCSePriorityExt;

    move-result-object v4

    if-eqz v4, :cond_16

    .line 1558
    const/16 v43, -0x1

    .line 1559
    .local v43, "rcseIndex":I
    const-string/jumbo v4, "ResolverActivity"

    const-string/jumbo v5, "mRCSePriorityExt to sort the list"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1561
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-static {v4}, Lcom/android/internal/app/ResolverActivity;->-get20(Lcom/android/internal/app/ResolverActivity;)Lcom/mediatek/common/media/IRCSePriorityExt;

    move-result-object v4

    move-object/from16 v0, v39

    invoke-interface {v4, v0}, Lcom/mediatek/common/media/IRCSePriorityExt;->sortTheListForRCSe(Ljava/util/ArrayList;)I

    move-result v43

    .line 1562
    const/4 v4, -0x1

    move/from16 v0, v43

    if-eq v0, v4, :cond_16

    .line 1563
    const-string/jumbo v4, "ResolverActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "mRCSePriorityExt to sort the list index is"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v43

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1564
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mDisplayList:Ljava/util/List;

    move/from16 v0, v43

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    .line 1565
    .local v44, "rcseInfo":Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mDisplayList:Ljava/util/List;

    move/from16 v0, v43

    invoke-interface {v4, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1566
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mDisplayList:Ljava/util/List;

    const/4 v5, 0x0

    move-object/from16 v0, v44

    invoke-interface {v4, v5, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1573
    .end local v43    # "rcseIndex":I
    .end local v44    # "rcseInfo":Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;
    :cond_16
    const/4 v4, 0x0

    move-object/from16 v0, v26

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    .end local v12    # "rci0":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    check-cast v12, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    .line 1574
    .restart local v12    # "rci0":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    const/4 v4, 0x0

    invoke-virtual {v12, v4}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v41

    .line 1575
    const/4 v10, 0x0

    .line 1576
    .local v10, "start":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-static {v4}, Lcom/android/internal/app/ResolverActivity;->-get18(Lcom/android/internal/app/ResolverActivity;)Landroid/content/pm/PackageManager;

    move-result-object v4

    move-object/from16 v0, v41

    invoke-virtual {v0, v4}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v13

    .line 1577
    .local v13, "r0Label":Ljava/lang/CharSequence;
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mHasExtendedInfo:Z

    .line 1578
    const/16 v29, 0x1

    :goto_a
    move/from16 v0, v29

    move/from16 v1, v21

    if-ge v0, v1, :cond_1a

    .line 1579
    if-nez v13, :cond_17

    .line 1580
    move-object/from16 v0, v41

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v13, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 1582
    :cond_17
    move-object/from16 v0, v26

    move/from16 v1, v29

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    .line 1583
    .local v42, "rci":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    const/4 v4, 0x0

    move-object/from16 v0, v42

    invoke-virtual {v0, v4}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v7

    .line 1584
    .restart local v7    # "ri":Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-static {v4}, Lcom/android/internal/app/ResolverActivity;->-get18(Lcom/android/internal/app/ResolverActivity;)Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v7, v4}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v46

    .line 1585
    .local v46, "riLabel":Ljava/lang/CharSequence;
    if-nez v46, :cond_18

    .line 1586
    iget-object v4, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v46, v0

    .line 1588
    :cond_18
    move-object/from16 v0, v46

    invoke-virtual {v0, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 1578
    :goto_b
    add-int/lit8 v29, v29, 0x1

    goto :goto_a

    .line 1591
    :cond_19
    add-int/lit8 v11, v29, -0x1

    move-object/from16 v8, p0

    move-object/from16 v9, v26

    invoke-direct/range {v8 .. v13}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->processGroup(Ljava/util/List;IILcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;Ljava/lang/CharSequence;)V

    .line 1592
    move-object/from16 v12, v42

    .line 1593
    move-object/from16 v41, v7

    .line 1594
    move-object/from16 v13, v46

    .line 1595
    move/from16 v10, v29

    goto :goto_b

    .line 1598
    .end local v7    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v42    # "rci":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    .end local v46    # "riLabel":Ljava/lang/CharSequence;
    :cond_1a
    add-int/lit8 v11, v21, -0x1

    move-object/from16 v8, p0

    move-object/from16 v9, v26

    invoke-direct/range {v8 .. v13}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->processGroup(Ljava/util/List;IILcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;Ljava/lang/CharSequence;)V

    .line 1603
    .end local v10    # "start":I
    .end local v12    # "rci0":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    .end local v13    # "r0Label":Ljava/lang/CharSequence;
    .end local v21    # "N":I
    .end local v29    # "i":I
    .end local v39    # "packageNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v41    # "r0":Landroid/content/pm/ResolveInfo;
    :cond_1b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mOtherProfile:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    if-eqz v4, :cond_1c

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mLastChosenPosition:I

    if-ltz v4, :cond_1c

    .line 1604
    const/4 v4, -0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mLastChosenPosition:I

    .line 1605
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mFilterLastUsed:Z

    .line 1608
    :cond_1c
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->onListRebuilt()V

    .line 1612
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-static {v4}, Lcom/android/internal/app/ResolverActivity;->-get14(Lcom/android/internal/app/ResolverActivity;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_20

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-static {v4}, Lcom/android/internal/app/ResolverActivity;->-get14(Lcom/android/internal/app/ResolverActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_20

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-static {v4}, Lcom/android/internal/app/ResolverActivity;->-get23(Lcom/android/internal/app/ResolverActivity;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_20

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-static {v4}, Lcom/android/internal/app/ResolverActivity;->-get23(Lcom/android/internal/app/ResolverActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_20

    .line 1613
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-static {v4}, Lcom/letv/leui/util/LeResolveUtils;->getPriorShareApp(Landroid/app/Activity;)Ljava/util/List;

    move-result-object v38

    .line 1614
    .local v38, "mainShareAppList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v37

    .line 1615
    .local v37, "listSize":I
    const/16 v35, 0x0

    .local v35, "j":I
    :goto_c
    invoke-interface/range {v38 .. v38}, Ljava/util/List;->size()I

    move-result v4

    move/from16 v0, v35

    if-ge v0, v4, :cond_20

    .line 1616
    move-object/from16 v0, v38

    move/from16 v1, v35

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 1617
    .local v22, "activityName":Ljava/lang/String;
    const/16 v29, 0x0

    .restart local v29    # "i":I
    :goto_d
    move/from16 v0, v29

    move/from16 v1, v37

    if-ge v0, v1, :cond_1d

    .line 1618
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mDisplayList:Ljava/util/List;

    move/from16 v0, v29

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    invoke-static {v4}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->-get1(Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v49, v0

    .line 1619
    .local v49, "tempName":Ljava/lang/String;
    move-object/from16 v0, v22

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 1615
    .end local v49    # "tempName":Ljava/lang/String;
    :cond_1d
    add-int/lit8 v35, v35, 0x1

    goto :goto_c

    .line 1621
    .restart local v49    # "tempName":Ljava/lang/String;
    :cond_1e
    add-int/lit8 v4, v37, -0x1

    move/from16 v0, v29

    if-ne v0, v4, :cond_1f

    .line 1622
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mDisplayList:Ljava/util/List;

    new-instance v14, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    move-object/from16 v0, v38

    move/from16 v1, v35

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/pm/ResolveInfo;

    .line 1623
    move-object/from16 v0, v38

    move/from16 v1, v35

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v8}, Lcom/android/internal/app/ResolverActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v18

    .line 1622
    const/16 v16, 0x0

    .line 1623
    const/16 v19, 0x0

    const/16 v20, 0x0

    .line 1622
    invoke-direct/range {v14 .. v20}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;-><init>(Lcom/android/internal/app/ResolverActivity;Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)V

    invoke-interface {v5, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1617
    :cond_1f
    add-int/lit8 v29, v29, 0x1

    goto :goto_d

    .line 1630
    .end local v22    # "activityName":Ljava/lang/String;
    .end local v29    # "i":I
    .end local v35    # "j":I
    .end local v37    # "listSize":I
    .end local v38    # "mainShareAppList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v49    # "tempName":Ljava/lang/String;
    :cond_20
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mDisplayList:Ljava/util/List;

    invoke-static {v4, v5}, Lcom/android/internal/app/ResolverActivity;->-wrap2(Lcom/android/internal/app/ResolverActivity;Ljava/util/List;)V

    .line 1397
    return-void
.end method

.method private updateLastChosenPosition(Landroid/content/pm/ResolveInfo;)V
    .locals 2
    .param p1, "info"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 1742
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mLastChosen:Landroid/content/pm/ResolveInfo;

    if-eqz v0, :cond_0

    .line 1743
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mLastChosen:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1742
    if-eqz v0, :cond_0

    .line 1744
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mLastChosen:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1742
    if-eqz v0, :cond_0

    .line 1745
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mLastChosenPosition:I

    .line 1741
    :cond_0
    return-void
.end method


# virtual methods
.method public final bindView(ILandroid/view/View;)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 1874
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getItem(I)Lcom/android/internal/app/ResolverActivity$TargetInfo;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->onBindView(Landroid/view/View;Lcom/android/internal/app/ResolverActivity$TargetInfo;)V

    .line 1873
    return-void
.end method

.method public final createView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 1844
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1845
    .local v1, "view":Landroid/view/View;
    new-instance v0, Lcom/android/internal/app/ResolverActivity$ViewHolder;

    invoke-direct {v0, v1}, Lcom/android/internal/app/ResolverActivity$ViewHolder;-><init>(Landroid/view/View;)V

    .line 1846
    .local v0, "holder":Lcom/android/internal/app/ResolverActivity$ViewHolder;
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1847
    return-object v1
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 1782
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x4

    return v0
.end method

.method public getDisplayInfoAt(I)Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1794
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    return-object v0
.end method

.method public getDisplayInfoCount()I
    .locals 1

    .prologue
    .line 1790
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method protected getDisplayResolveInfo(I)Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1831
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    return-object v0
.end method

.method protected getDisplayResolveInfoCount()I
    .locals 1

    .prologue
    .line 1826
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getFilteredItem()Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;
    .locals 1

    .prologue
    .line 1369
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFilteredPosition()I
    .locals 1

    .prologue
    .line 1377
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mFilterLastUsed:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mLastChosenPosition:I

    if-ltz v0, :cond_0

    .line 1378
    iget v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mLastChosenPosition:I

    return v0

    .line 1380
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getItem(I)Lcom/android/internal/app/ResolverActivity$TargetInfo;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 1805
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ResolverActivity$TargetInfo;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 1797
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getItem(I)Lcom/android/internal/app/ResolverActivity$TargetInfo;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 1809
    int-to-long v0, p1

    return-wide v0
.end method

.method public getList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1937
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mDisplayList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1938
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mDisplayList:Ljava/util/List;

    return-object v0

    .line 1940
    :cond_0
    return-object v1
.end method

.method public getOtherProfile()Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;
    .locals 1

    .prologue
    .line 1373
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mOtherProfile:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    return-object v0
.end method

.method public getScore(Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;)F
    .locals 2
    .param p1, "target"    # Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    .prologue
    .line 1394
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-static {v0}, Lcom/android/internal/app/ResolverActivity;->-get21(Lcom/android/internal/app/ResolverActivity;)Lcom/android/internal/app/ResolverComparator;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->getResolvedComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ResolverComparator;->getScore(Landroid/content/ComponentName;)F

    move-result v0

    return v0
.end method

.method public getUnfilteredCount()I
    .locals 1

    .prologue
    .line 1786
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 1835
    move-object v0, p2

    .line 1836
    .local v0, "view":Landroid/view/View;
    if-nez v0, :cond_0

    .line 1837
    invoke-virtual {p0, p3}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->createView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1839
    :cond_0
    add-int/lit8 v1, p1, 0x4

    invoke-virtual {p0, v1}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getItem(I)Lcom/android/internal/app/ResolverActivity$TargetInfo;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->onBindView(Landroid/view/View;Lcom/android/internal/app/ResolverActivity$TargetInfo;)V

    .line 1840
    return-object v0
.end method

.method public handlePackagesChanged()V
    .locals 3

    .prologue
    .line 1326
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 1328
    .local v1, "oldItemCount":I
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->rebuildList()V

    .line 1329
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->notifyDataSetChanged()V

    .line 1332
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 1335
    .local v0, "newItemCount":I
    if-nez v0, :cond_0

    .line 1337
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v2}, Lcom/android/internal/app/ResolverActivity;->finish()V

    .line 1323
    :cond_0
    return-void
.end method

.method public hasExtendedInfo()Z
    .locals 1

    .prologue
    .line 1813
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mHasExtendedInfo:Z

    return v0
.end method

.method public hasFilteredItem()Z
    .locals 1

    .prologue
    .line 1389
    const/4 v0, 0x0

    return v0
.end method

.method public hasResolvedTarget(Landroid/content/pm/ResolveInfo;)Z
    .locals 3
    .param p1, "info"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 1817
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .local v0, "N":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1818
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    invoke-virtual {v2}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/internal/app/ResolverActivity;->resolveInfoMatch(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1819
    const/4 v2, 0x1

    return v2

    .line 1817
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1822
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method public onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 1857
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 1858
    const v4, 0x10900d6

    const/4 v5, 0x0

    .line 1857
    invoke-virtual {v3, v4, p1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 1859
    .local v2, "view":Landroid/view/View;
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v3}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v0, v3, Landroid/content/res/Configuration;->fontScale:F

    .line 1860
    .local v0, "fontScale":F
    float-to-double v4, v0

    const-wide v6, 0x3ff4cccccccccccdL    # 1.3

    cmpl-double v3, v4, v6

    if-lez v3, :cond_0

    .line 1861
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 1862
    .local v1, "params":Landroid/view/ViewGroup$LayoutParams;
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v3}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10501fd

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1863
    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1865
    .end local v1    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    return-object v2
.end method

.method public onListRebuilt()V
    .locals 0

    .prologue
    .line 1664
    return-void
.end method

.method public resolveInfoForPosition(IZ)Landroid/content/pm/ResolveInfo;
    .locals 1
    .param p1, "position"    # I
    .param p2, "filtered"    # Z

    .prologue
    .line 1760
    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getItem(I)Lcom/android/internal/app/ResolverActivity$TargetInfo;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ResolverActivity$TargetInfo;

    goto :goto_0
.end method

.method public shouldGetResolvedFilter()Z
    .locals 1

    .prologue
    .line 1669
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mFilterLastUsed:Z

    return v0
.end method

.method public showsExtendedInfo(Lcom/android/internal/app/ResolverActivity$TargetInfo;)Z
    .locals 1
    .param p1, "info"    # Lcom/android/internal/app/ResolverActivity$TargetInfo;

    .prologue
    .line 1870
    invoke-interface {p1}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->getExtendedInfo()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public targetInfoForPosition(IZ)Lcom/android/internal/app/ResolverActivity$TargetInfo;
    .locals 1
    .param p1, "position"    # I
    .param p2, "filtered"    # Z

    .prologue
    .line 1765
    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getItem(I)Lcom/android/internal/app/ResolverActivity$TargetInfo;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ResolverActivity$TargetInfo;

    goto :goto_0
.end method
