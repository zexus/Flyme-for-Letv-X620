.class public abstract Landroid/app/Notification$Style;
.super Ljava/lang/Object;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Notification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Style"
.end annotation


# instance fields
.field private mBigContentTitle:Ljava/lang/CharSequence;

.field protected mBuilder:Landroid/app/Notification$Builder;

.field protected mSummaryText:Ljava/lang/CharSequence;

.field protected mSummaryTextSet:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3837
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3843
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/Notification$Style;->mSummaryText:Ljava/lang/CharSequence;

    .line 3848
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/Notification$Style;->mSummaryTextSet:Z

    .line 3837
    return-void
.end method


# virtual methods
.method public addExtras(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 3939
    iget-boolean v0, p0, Landroid/app/Notification$Style;->mSummaryTextSet:Z

    if-eqz v0, :cond_0

    .line 3940
    const-string/jumbo v0, "android.summaryText"

    iget-object v1, p0, Landroid/app/Notification$Style;->mSummaryText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 3942
    :cond_0
    iget-object v0, p0, Landroid/app/Notification$Style;->mBigContentTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 3943
    const-string/jumbo v0, "android.title.big"

    iget-object v1, p0, Landroid/app/Notification$Style;->mBigContentTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 3945
    :cond_1
    const-string/jumbo v0, "android.template"

    invoke-virtual {p0}, Landroid/app/Notification$Style;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3938
    return-void
.end method

.method protected applyTopPadding(Landroid/widget/RemoteViews;)V
    .locals 6
    .param p1, "contentView"    # Landroid/widget/RemoteViews;

    .prologue
    const/4 v2, 0x0

    .line 3929
    iget-object v0, p0, Landroid/app/Notification$Style;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v0}, Landroid/app/Notification$Builder;->-get3(Landroid/app/Notification$Builder;)Landroid/content/Context;

    move-result-object v0

    .line 3930
    iget-object v1, p0, Landroid/app/Notification$Style;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v1}, Landroid/app/Notification$Builder;->-get4(Landroid/app/Notification$Builder;)Z

    move-result v1

    .line 3931
    iget-object v4, p0, Landroid/app/Notification$Style;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v4}, Landroid/app/Notification$Builder;->-get3(Landroid/app/Notification$Builder;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->fontScale:F

    .line 3929
    invoke-static {v0, v1, v4}, Landroid/app/Notification$Builder;->calculateTopPadding(Landroid/content/Context;ZF)I

    move-result v3

    .line 3932
    .local v3, "topPadding":I
    const v1, 0x10204c8

    move-object v0, p1

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/RemoteViews;->setViewPadding(IIIII)V

    .line 3928
    return-void
.end method

.method public build()Landroid/app/Notification;
    .locals 1

    .prologue
    .line 4005
    invoke-virtual {p0}, Landroid/app/Notification$Style;->checkBuilder()V

    .line 4006
    iget-object v0, p0, Landroid/app/Notification$Style;->mBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method public buildStyled(Landroid/app/Notification;)Landroid/app/Notification;
    .locals 0
    .param p1, "wip"    # Landroid/app/Notification;

    .prologue
    .line 3966
    invoke-virtual {p0, p1}, Landroid/app/Notification$Style;->populateTickerView(Landroid/app/Notification;)V

    .line 3967
    invoke-virtual {p0, p1}, Landroid/app/Notification$Style;->populateContentView(Landroid/app/Notification;)V

    .line 3968
    invoke-virtual {p0, p1}, Landroid/app/Notification$Style;->populateBigContentView(Landroid/app/Notification;)V

    .line 3969
    invoke-virtual {p0, p1}, Landroid/app/Notification$Style;->populateHeadsUpContentView(Landroid/app/Notification;)V

    .line 3970
    return-object p1
.end method

.method protected checkBuilder()V
    .locals 2

    .prologue
    .line 3878
    iget-object v0, p0, Landroid/app/Notification$Style;->mBuilder:Landroid/app/Notification$Builder;

    if-nez v0, :cond_0

    .line 3879
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Style requires a valid Builder object"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3877
    :cond_0
    return-void
.end method

.method protected getStandardView(I)Landroid/widget/RemoteViews;
    .locals 9
    .param p1, "layoutId"    # I

    .prologue
    const v8, 0x10204ba

    const v7, 0x10200b3

    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 3884
    invoke-virtual {p0}, Landroid/app/Notification$Style;->checkBuilder()V

    .line 3887
    iget-object v3, p0, Landroid/app/Notification$Style;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v3}, Landroid/app/Notification$Builder;->-get2(Landroid/app/Notification$Builder;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 3888
    .local v1, "oldBuilderContentTitle":Ljava/lang/CharSequence;
    iget-object v3, p0, Landroid/app/Notification$Style;->mBigContentTitle:Ljava/lang/CharSequence;

    if-eqz v3, :cond_0

    .line 3889
    iget-object v3, p0, Landroid/app/Notification$Style;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v4, p0, Landroid/app/Notification$Style;->mBigContentTitle:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 3892
    :cond_0
    iget-object v3, p0, Landroid/app/Notification$Style;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v3, p1}, Landroid/app/Notification$Builder;->-wrap0(Landroid/app/Notification$Builder;I)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 3894
    .local v0, "contentView":Landroid/widget/RemoteViews;
    iget-object v3, p0, Landroid/app/Notification$Style;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v3, v1}, Landroid/app/Notification$Builder;->-set1(Landroid/app/Notification$Builder;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 3896
    iget-object v3, p0, Landroid/app/Notification$Style;->mBigContentTitle:Ljava/lang/CharSequence;

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/app/Notification$Style;->mBigContentTitle:Ljava/lang/CharSequence;

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3897
    const v3, 0x10204c8

    invoke-virtual {v0, v3, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 3904
    :goto_0
    iget-boolean v3, p0, Landroid/app/Notification$Style;->mSummaryTextSet:Z

    if-eqz v3, :cond_3

    iget-object v2, p0, Landroid/app/Notification$Style;->mSummaryText:Ljava/lang/CharSequence;

    .line 3906
    .local v2, "overflowText":Ljava/lang/CharSequence;
    :goto_1
    if-eqz v2, :cond_4

    .line 3907
    iget-object v3, p0, Landroid/app/Notification$Style;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v3, v2}, Landroid/app/Notification$Builder;->-wrap7(Landroid/app/Notification$Builder;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v7, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 3908
    invoke-static {}, Landroid/app/Notification;->-get0()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_1

    .line 3909
    invoke-virtual {v0, v8, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 3911
    :cond_1
    const v3, 0x10204bb

    invoke-virtual {v0, v3, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 3919
    :goto_2
    return-object v0

    .line 3899
    .end local v2    # "overflowText":Ljava/lang/CharSequence;
    :cond_2
    const v3, 0x10204c8

    invoke-virtual {v0, v3, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_0

    .line 3905
    :cond_3
    iget-object v3, p0, Landroid/app/Notification$Style;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v3}, Landroid/app/Notification$Builder;->-get6(Landroid/app/Notification$Builder;)Ljava/lang/CharSequence;

    move-result-object v2

    .restart local v2    # "overflowText":Ljava/lang/CharSequence;
    goto :goto_1

    .line 3914
    :cond_4
    const-string/jumbo v3, ""

    invoke-virtual {v0, v7, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 3915
    invoke-virtual {v0, v8, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 3916
    const v3, 0x10204bb

    invoke-virtual {v0, v3, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_2
.end method

.method protected hasProgress()Z
    .locals 1

    .prologue
    .line 4015
    const/4 v0, 0x1

    return v0
.end method

.method protected internalSetBigContentTitle(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 3857
    iput-object p1, p0, Landroid/app/Notification$Style;->mBigContentTitle:Ljava/lang/CharSequence;

    .line 3856
    return-void
.end method

.method protected internalSetSummaryText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "cs"    # Ljava/lang/CharSequence;

    .prologue
    .line 3864
    iput-object p1, p0, Landroid/app/Notification$Style;->mSummaryText:Ljava/lang/CharSequence;

    .line 3865
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Notification$Style;->mSummaryTextSet:Z

    .line 3863
    return-void
.end method

.method protected populateBigContentView(Landroid/app/Notification;)V
    .locals 0
    .param p1, "wip"    # Landroid/app/Notification;

    .prologue
    .line 3991
    return-void
.end method

.method protected populateContentView(Landroid/app/Notification;)V
    .locals 0
    .param p1, "wip"    # Landroid/app/Notification;

    .prologue
    .line 3986
    return-void
.end method

.method protected populateHeadsUpContentView(Landroid/app/Notification;)V
    .locals 0
    .param p1, "wip"    # Landroid/app/Notification;

    .prologue
    .line 3996
    return-void
.end method

.method protected populateTickerView(Landroid/app/Notification;)V
    .locals 0
    .param p1, "wip"    # Landroid/app/Notification;

    .prologue
    .line 3982
    return-void
.end method

.method public purgeResources()V
    .locals 0

    .prologue
    .line 3976
    return-void
.end method

.method protected restoreFromExtras(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 3952
    const-string/jumbo v0, "android.summaryText"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3953
    const-string/jumbo v0, "android.summaryText"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Notification$Style;->mSummaryText:Ljava/lang/CharSequence;

    .line 3954
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Notification$Style;->mSummaryTextSet:Z

    .line 3956
    :cond_0
    const-string/jumbo v0, "android.title.big"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3957
    const-string/jumbo v0, "android.title.big"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Notification$Style;->mBigContentTitle:Ljava/lang/CharSequence;

    .line 3951
    :cond_1
    return-void
.end method

.method public setBuilder(Landroid/app/Notification$Builder;)V
    .locals 1
    .param p1, "builder"    # Landroid/app/Notification$Builder;

    .prologue
    .line 3869
    iget-object v0, p0, Landroid/app/Notification$Style;->mBuilder:Landroid/app/Notification$Builder;

    if-eq v0, p1, :cond_0

    .line 3870
    iput-object p1, p0, Landroid/app/Notification$Style;->mBuilder:Landroid/app/Notification$Builder;

    .line 3871
    iget-object v0, p0, Landroid/app/Notification$Style;->mBuilder:Landroid/app/Notification$Builder;

    if-eqz v0, :cond_0

    .line 3872
    iget-object v0, p0, Landroid/app/Notification$Style;->mBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v0, p0}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 3868
    :cond_0
    return-void
.end method
