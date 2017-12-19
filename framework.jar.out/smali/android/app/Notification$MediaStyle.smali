.class public Landroid/app/Notification$MediaStyle;
.super Landroid/app/Notification$Style;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Notification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MediaStyle"
.end annotation


# static fields
.field static final MAX_MEDIA_BUTTONS:I = 0x5

.field static final MAX_MEDIA_BUTTONS_IN_COMPACT:I = 0x3


# instance fields
.field private mActionsToShowInCompact:[I

.field private mToken:Landroid/media/session/MediaSession$Token;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 4489
    invoke-direct {p0}, Landroid/app/Notification$Style;-><init>()V

    .line 4486
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/Notification$MediaStyle;->mActionsToShowInCompact:[I

    .line 4489
    return-void
.end method

.method public constructor <init>(Landroid/app/Notification$Builder;)V
    .locals 1
    .param p1, "builder"    # Landroid/app/Notification$Builder;

    .prologue
    .line 4492
    invoke-direct {p0}, Landroid/app/Notification$Style;-><init>()V

    .line 4486
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/Notification$MediaStyle;->mActionsToShowInCompact:[I

    .line 4493
    invoke-virtual {p0, p1}, Landroid/app/Notification$MediaStyle;->setBuilder(Landroid/app/Notification$Builder;)V

    .line 4492
    return-void
.end method

.method private generateMediaActionButton(Landroid/app/Notification$Action;)Landroid/widget/RemoteViews;
    .locals 8
    .param p1, "action"    # Landroid/app/Notification$Action;

    .prologue
    const/4 v3, -0x1

    const v1, 0x102044f

    .line 4573
    iget-object v2, p1, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    if-nez v2, :cond_1

    const/4 v7, 0x1

    .line 4574
    .local v7, "tombstone":Z
    :goto_0
    new-instance v0, Landroid/app/Notification$BuilderRemoteViews;

    iget-object v2, p0, Landroid/app/Notification$MediaStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v2}, Landroid/app/Notification$Builder;->-get3(Landroid/app/Notification$Builder;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 4575
    const v4, 0x10900fc

    .line 4574
    invoke-direct {v0, v2, v4}, Landroid/app/Notification$BuilderRemoteViews;-><init>(Landroid/content/pm/ApplicationInfo;I)V

    .line 4576
    .local v0, "button":Landroid/widget/RemoteViews;
    invoke-virtual {p1}, Landroid/app/Notification$Action;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewIcon(ILandroid/graphics/drawable/Icon;)V

    .line 4579
    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    .line 4577
    const/4 v2, 0x0

    move v4, v3

    move v6, v3

    invoke-virtual/range {v0 .. v6}, Landroid/widget/RemoteViews;->setDrawableParameters(IZIILandroid/graphics/PorterDuff$Mode;I)V

    .line 4580
    if-nez v7, :cond_0

    .line 4581
    iget-object v2, p1, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 4583
    :cond_0
    iget-object v2, p1, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 4584
    return-object v0

    .line 4573
    .end local v0    # "button":Landroid/widget/RemoteViews;
    .end local v7    # "tombstone":Z
    :cond_1
    const/4 v7, 0x0

    .restart local v7    # "tombstone":Z
    goto :goto_0
.end method

.method private getBigLayoutResource(I)I
    .locals 1
    .param p1, "actionCount"    # I

    .prologue
    .line 4634
    const/4 v0, 0x3

    if-gt p1, v0, :cond_0

    .line 4635
    const v0, 0x1090101

    return v0

    .line 4637
    :cond_0
    const v0, 0x1090100

    return v0
.end method

.method private hideRightIcon(Landroid/widget/RemoteViews;)V
    .locals 2
    .param p1, "contentView"    # Landroid/widget/RemoteViews;

    .prologue
    .line 4642
    const v0, 0x1020040

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 4641
    return-void
.end method

.method private makeMediaBigContentView()Landroid/widget/RemoteViews;
    .locals 8

    .prologue
    const v7, 0x10204b8

    const/4 v6, 0x0

    .line 4615
    iget-object v4, p0, Landroid/app/Notification$MediaStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v4}, Landroid/app/Notification$Builder;->-get0(Landroid/app/Notification$Builder;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 4616
    .local v0, "actionCount":I
    iget-object v4, p0, Landroid/app/Notification$MediaStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-direct {p0, v0}, Landroid/app/Notification$MediaStyle;->getBigLayoutResource(I)I

    move-result v5

    invoke-static {v4, v5, v6}, Landroid/app/Notification$Builder;->-wrap1(Landroid/app/Notification$Builder;IZ)Landroid/widget/RemoteViews;

    move-result-object v1

    .line 4619
    .local v1, "big":Landroid/widget/RemoteViews;
    if-lez v0, :cond_0

    .line 4620
    invoke-virtual {v1, v7}, Landroid/widget/RemoteViews;->removeAllViews(I)V

    .line 4621
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 4622
    iget-object v4, p0, Landroid/app/Notification$MediaStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v4}, Landroid/app/Notification$Builder;->-get0(Landroid/app/Notification$Builder;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/Notification$Action;

    invoke-direct {p0, v4}, Landroid/app/Notification$MediaStyle;->generateMediaActionButton(Landroid/app/Notification$Action;)Landroid/widget/RemoteViews;

    move-result-object v2

    .line 4623
    .local v2, "button":Landroid/widget/RemoteViews;
    invoke-virtual {v1, v7, v2}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    .line 4621
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4626
    .end local v2    # "button":Landroid/widget/RemoteViews;
    .end local v3    # "i":I
    :cond_0
    invoke-direct {p0, v1}, Landroid/app/Notification$MediaStyle;->styleText(Landroid/widget/RemoteViews;)V

    .line 4627
    invoke-direct {p0, v1}, Landroid/app/Notification$MediaStyle;->hideRightIcon(Landroid/widget/RemoteViews;)V

    .line 4628
    invoke-virtual {p0, v1}, Landroid/app/Notification$MediaStyle;->applyTopPadding(Landroid/widget/RemoteViews;)V

    .line 4629
    const v4, 0x102000d

    const/16 v5, 0x8

    invoke-virtual {v1, v4, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 4630
    return-object v1
.end method

.method private makeMediaContentView()Landroid/widget/RemoteViews;
    .locals 11

    .prologue
    const v8, 0x10204b8

    const/4 v10, 0x0

    .line 4588
    iget-object v6, p0, Landroid/app/Notification$MediaStyle;->mBuilder:Landroid/app/Notification$Builder;

    .line 4589
    const v7, 0x1090105

    .line 4588
    invoke-static {v6, v7, v10}, Landroid/app/Notification$Builder;->-wrap1(Landroid/app/Notification$Builder;IZ)Landroid/widget/RemoteViews;

    move-result-object v5

    .line 4591
    .local v5, "view":Landroid/widget/RemoteViews;
    iget-object v6, p0, Landroid/app/Notification$MediaStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v6}, Landroid/app/Notification$Builder;->-get0(Landroid/app/Notification$Builder;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 4592
    .local v4, "numActions":I
    iget-object v6, p0, Landroid/app/Notification$MediaStyle;->mActionsToShowInCompact:[I

    if-nez v6, :cond_0

    .line 4593
    const/4 v0, 0x0

    .line 4595
    .local v0, "N":I
    :goto_0
    if-lez v0, :cond_2

    .line 4596
    invoke-virtual {v5, v8}, Landroid/widget/RemoteViews;->removeAllViews(I)V

    .line 4597
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v0, :cond_2

    .line 4598
    if-lt v3, v4, :cond_1

    .line 4599
    new-instance v6, Ljava/lang/IllegalArgumentException;

    .line 4600
    const-string/jumbo v7, "setShowActionsInCompactView: action %d out of bounds (max %d)"

    .line 4599
    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    .line 4601
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    add-int/lit8 v9, v4, -0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x1

    aput-object v9, v8, v10

    .line 4599
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 4594
    .end local v0    # "N":I
    .end local v3    # "i":I
    :cond_0
    iget-object v6, p0, Landroid/app/Notification$MediaStyle;->mActionsToShowInCompact:[I

    array-length v6, v6

    const/4 v7, 0x3

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v0

    .restart local v0    # "N":I
    goto :goto_0

    .line 4604
    .restart local v3    # "i":I
    :cond_1
    iget-object v6, p0, Landroid/app/Notification$MediaStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v6}, Landroid/app/Notification$Builder;->-get0(Landroid/app/Notification$Builder;)Ljava/util/ArrayList;

    move-result-object v6

    iget-object v7, p0, Landroid/app/Notification$MediaStyle;->mActionsToShowInCompact:[I

    aget v7, v7, v3

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Notification$Action;

    .line 4605
    .local v1, "action":Landroid/app/Notification$Action;
    invoke-direct {p0, v1}, Landroid/app/Notification$MediaStyle;->generateMediaActionButton(Landroid/app/Notification$Action;)Landroid/widget/RemoteViews;

    move-result-object v2

    .line 4606
    .local v2, "button":Landroid/widget/RemoteViews;
    invoke-virtual {v5, v8, v2}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    .line 4597
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 4609
    .end local v1    # "action":Landroid/app/Notification$Action;
    .end local v2    # "button":Landroid/widget/RemoteViews;
    .end local v3    # "i":I
    :cond_2
    invoke-direct {p0, v5}, Landroid/app/Notification$MediaStyle;->styleText(Landroid/widget/RemoteViews;)V

    .line 4610
    invoke-direct {p0, v5}, Landroid/app/Notification$MediaStyle;->hideRightIcon(Landroid/widget/RemoteViews;)V

    .line 4611
    return-object v5
.end method

.method private styleText(Landroid/widget/RemoteViews;)V
    .locals 4
    .param p1, "contentView"    # Landroid/widget/RemoteViews;

    .prologue
    .line 4649
    iget-object v2, p0, Landroid/app/Notification$MediaStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v2}, Landroid/app/Notification$Builder;->-get3(Landroid/app/Notification$Builder;)Landroid/content/Context;

    move-result-object v2

    .line 4650
    const v3, 0x1060051

    .line 4649
    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v0

    .line 4651
    .local v0, "primaryColor":I
    iget-object v2, p0, Landroid/app/Notification$MediaStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v2}, Landroid/app/Notification$Builder;->-get3(Landroid/app/Notification$Builder;)Landroid/content/Context;

    move-result-object v2

    .line 4652
    const v3, 0x1060052

    .line 4651
    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v1

    .line 4653
    .local v1, "secondaryColor":I
    const v2, 0x1020016

    invoke-virtual {p1, v2, v0}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 4654
    iget-object v2, p0, Landroid/app/Notification$MediaStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v2}, Landroid/app/Notification$Builder;->-wrap3(Landroid/app/Notification$Builder;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4655
    iget-object v2, p0, Landroid/app/Notification$MediaStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v2}, Landroid/app/Notification$Builder;->-get7(Landroid/app/Notification$Builder;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4656
    const v2, 0x10204c7

    invoke-virtual {p1, v2, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 4661
    :cond_0
    :goto_0
    const v2, 0x1020015

    invoke-virtual {p1, v2, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 4662
    const v2, 0x10200b3

    invoke-virtual {p1, v2, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 4663
    const v2, 0x10204bc

    invoke-virtual {p1, v2, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 4648
    return-void

    .line 4658
    :cond_1
    const v2, 0x10200ca

    invoke-virtual {p1, v2, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    goto :goto_0
.end method


# virtual methods
.method public addExtras(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 4547
    invoke-super {p0, p1}, Landroid/app/Notification$Style;->addExtras(Landroid/os/Bundle;)V

    .line 4549
    iget-object v0, p0, Landroid/app/Notification$MediaStyle;->mToken:Landroid/media/session/MediaSession$Token;

    if-eqz v0, :cond_0

    .line 4550
    const-string/jumbo v0, "android.mediaSession"

    iget-object v1, p0, Landroid/app/Notification$MediaStyle;->mToken:Landroid/media/session/MediaSession$Token;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 4552
    :cond_0
    iget-object v0, p0, Landroid/app/Notification$MediaStyle;->mActionsToShowInCompact:[I

    if-eqz v0, :cond_1

    .line 4553
    const-string/jumbo v0, "android.compactActions"

    iget-object v1, p0, Landroid/app/Notification$MediaStyle;->mActionsToShowInCompact:[I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 4546
    :cond_1
    return-void
.end method

.method public buildStyled(Landroid/app/Notification;)Landroid/app/Notification;
    .locals 1
    .param p1, "wip"    # Landroid/app/Notification;

    .prologue
    .line 4521
    invoke-super {p0, p1}, Landroid/app/Notification$Style;->buildStyled(Landroid/app/Notification;)Landroid/app/Notification;

    .line 4522
    iget-object v0, p1, Landroid/app/Notification;->category:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 4523
    const-string/jumbo v0, "transport"

    iput-object v0, p1, Landroid/app/Notification;->category:Ljava/lang/String;

    .line 4525
    :cond_0
    return-object p1
.end method

.method protected hasProgress()Z
    .locals 1

    .prologue
    .line 4671
    const/4 v0, 0x0

    return v0
.end method

.method public populateBigContentView(Landroid/app/Notification;)V
    .locals 2
    .param p1, "wip"    # Landroid/app/Notification;

    .prologue
    .line 4541
    iget-object v0, p0, Landroid/app/Notification$MediaStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-direct {p0}, Landroid/app/Notification$MediaStyle;->makeMediaBigContentView()Landroid/widget/RemoteViews;

    move-result-object v1

    invoke-static {v0, p1, v1}, Landroid/app/Notification$Builder;->-wrap8(Landroid/app/Notification$Builder;Landroid/app/Notification;Landroid/widget/RemoteViews;)V

    .line 4540
    return-void
.end method

.method public populateContentView(Landroid/app/Notification;)V
    .locals 2
    .param p1, "wip"    # Landroid/app/Notification;

    .prologue
    .line 4533
    iget-object v0, p0, Landroid/app/Notification$MediaStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-direct {p0}, Landroid/app/Notification$MediaStyle;->makeMediaContentView()Landroid/widget/RemoteViews;

    move-result-object v1

    invoke-static {v0, p1, v1}, Landroid/app/Notification$Builder;->-wrap9(Landroid/app/Notification$Builder;Landroid/app/Notification;Landroid/widget/RemoteViews;)V

    .line 4532
    return-void
.end method

.method protected restoreFromExtras(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 4562
    invoke-super {p0, p1}, Landroid/app/Notification$Style;->restoreFromExtras(Landroid/os/Bundle;)V

    .line 4564
    const-string/jumbo v0, "android.mediaSession"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4565
    const-string/jumbo v0, "android.mediaSession"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSession$Token;

    iput-object v0, p0, Landroid/app/Notification$MediaStyle;->mToken:Landroid/media/session/MediaSession$Token;

    .line 4567
    :cond_0
    const-string/jumbo v0, "android.compactActions"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4568
    const-string/jumbo v0, "android.compactActions"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Landroid/app/Notification$MediaStyle;->mActionsToShowInCompact:[I

    .line 4561
    :cond_1
    return-void
.end method

.method public setMediaSession(Landroid/media/session/MediaSession$Token;)Landroid/app/Notification$MediaStyle;
    .locals 0
    .param p1, "token"    # Landroid/media/session/MediaSession$Token;

    .prologue
    .line 4512
    iput-object p1, p0, Landroid/app/Notification$MediaStyle;->mToken:Landroid/media/session/MediaSession$Token;

    .line 4513
    return-object p0
.end method

.method public varargs setShowActionsInCompactView([I)Landroid/app/Notification$MediaStyle;
    .locals 0
    .param p1, "actions"    # [I

    .prologue
    .line 4503
    iput-object p1, p0, Landroid/app/Notification$MediaStyle;->mActionsToShowInCompact:[I

    .line 4504
    return-object p0
.end method
