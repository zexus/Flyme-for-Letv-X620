.class public Landroid/preference/PreferenceGroupAdapter;
.super Landroid/widget/BaseAdapter;
.source "PreferenceGroupAdapter.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeInternalListener;
.implements Lcom/letv/leui/widget/DividerFilter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;,
        Landroid/preference/PreferenceGroupAdapter$1;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PreferenceGroupAdapter"

.field private static sWrapperLayoutParams:Landroid/view/ViewGroup$LayoutParams;


# instance fields
.field private dividerFilter:Lcom/letv/leui/widget/DividerFilter;

.field private mHandler:Landroid/os/Handler;

.field private mHasReturnedViewTypeCount:Z

.field private mHighlightedDrawable:Landroid/graphics/drawable/Drawable;

.field private mHighlightedPosition:I

.field private volatile mIsSyncing:Z

.field private mPreferenceGroup:Landroid/preference/PreferenceGroup;

.field private mPreferenceLayouts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;",
            ">;"
        }
    .end annotation
.end field

.field private mPreferenceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field private mSyncRunnable:Ljava/lang/Runnable;

.field private mTempPreferenceLayout:Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;


# direct methods
.method static synthetic -wrap0(Landroid/preference/PreferenceGroupAdapter;)V
    .locals 0

    invoke-direct {p0}, Landroid/preference/PreferenceGroupAdapter;->syncMyPreferences()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 187
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    .line 188
    const/4 v1, -0x1

    const/4 v2, -0x2

    .line 187
    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    sput-object v0, Landroid/preference/PreferenceGroupAdapter;->sWrapperLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/preference/PreferenceGroup;)V
    .locals 3
    .param p1, "preferenceGroup"    # Landroid/preference/PreferenceGroup;

    .prologue
    const/4 v2, 0x0

    .line 213
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 91
    new-instance v0, Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;-><init>(Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;)V

    iput-object v0, p0, Landroid/preference/PreferenceGroupAdapter;->mTempPreferenceLayout:Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;

    .line 96
    iput-boolean v2, p0, Landroid/preference/PreferenceGroupAdapter;->mHasReturnedViewTypeCount:Z

    .line 98
    iput-boolean v2, p0, Landroid/preference/PreferenceGroupAdapter;->mIsSyncing:Z

    .line 100
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroid/preference/PreferenceGroupAdapter;->mHandler:Landroid/os/Handler;

    .line 178
    new-instance v0, Landroid/preference/PreferenceGroupAdapter$1;

    invoke-direct {v0, p0}, Landroid/preference/PreferenceGroupAdapter$1;-><init>(Landroid/preference/PreferenceGroupAdapter;)V

    iput-object v0, p0, Landroid/preference/PreferenceGroupAdapter;->mSyncRunnable:Ljava/lang/Runnable;

    .line 184
    const/4 v0, -0x1

    iput v0, p0, Landroid/preference/PreferenceGroupAdapter;->mHighlightedPosition:I

    .line 214
    iput-object p1, p0, Landroid/preference/PreferenceGroupAdapter;->mPreferenceGroup:Landroid/preference/PreferenceGroup;

    .line 216
    iget-object v0, p0, Landroid/preference/PreferenceGroupAdapter;->mPreferenceGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, p0}, Landroid/preference/PreferenceGroup;->setOnPreferenceChangeInternalListener(Landroid/preference/Preference$OnPreferenceChangeInternalListener;)V

    .line 218
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/preference/PreferenceGroupAdapter;->mPreferenceList:Ljava/util/List;

    .line 219
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/preference/PreferenceGroupAdapter;->mPreferenceLayouts:Ljava/util/ArrayList;

    .line 221
    invoke-direct {p0}, Landroid/preference/PreferenceGroupAdapter;->syncMyPreferences()V

    .line 213
    return-void
.end method

.method private addPreferenceClassName(Landroid/preference/Preference;)V
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 289
    const/4 v2, 0x0

    invoke-direct {p0, p1, v2}, Landroid/preference/PreferenceGroupAdapter;->createPreferenceLayout(Landroid/preference/Preference;Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;)Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;

    move-result-object v1

    .line 290
    .local v1, "pl":Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;
    iget-object v2, p0, Landroid/preference/PreferenceGroupAdapter;->mPreferenceLayouts:Ljava/util/ArrayList;

    invoke-static {v2, v1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v0

    .line 293
    .local v0, "insertPos":I
    if-gez v0, :cond_0

    .line 295
    mul-int/lit8 v2, v0, -0x1

    add-int/lit8 v0, v2, -0x1

    .line 296
    iget-object v2, p0, Landroid/preference/PreferenceGroupAdapter;->mPreferenceLayouts:Ljava/util/ArrayList;

    invoke-virtual {v2, v0, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 288
    :cond_0
    return-void
.end method

.method private createPreferenceLayout(Landroid/preference/Preference;Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;)Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "in"    # Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;

    .prologue
    const/4 v1, 0x0

    .line 281
    if-eqz p2, :cond_0

    move-object v0, p2

    .line 282
    .local v0, "pl":Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;
    :goto_0
    invoke-virtual {p1}, Landroid/preference/Preference;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;->-set0(Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;Ljava/lang/String;)Ljava/lang/String;

    .line 283
    invoke-virtual {p1}, Landroid/preference/Preference;->getLayoutResource()I

    move-result v1

    invoke-static {v0, v1}, Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;->-set1(Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;I)I

    .line 284
    invoke-virtual {p1}, Landroid/preference/Preference;->getWidgetLayoutResource()I

    move-result v1

    invoke-static {v0, v1}, Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;->-set2(Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;I)I

    .line 285
    return-object v0

    .line 281
    .end local v0    # "pl":Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;
    :cond_0
    new-instance v0, Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;

    invoke-direct {v0, v1}, Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;-><init>(Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;)V

    .restart local v0    # "pl":Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;
    goto :goto_0
.end method

.method private flattenPreferenceGroup(Ljava/util/List;Landroid/preference/PreferenceGroup;)V
    .locals 6
    .param p2, "group"    # Landroid/preference/PreferenceGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/preference/Preference;",
            ">;",
            "Landroid/preference/PreferenceGroup;",
            ")V"
        }
    .end annotation

    .prologue
    .line 247
    .local p1, "preferences":Ljava/util/List;, "Ljava/util/List<Landroid/preference/Preference;>;"
    invoke-virtual {p2}, Landroid/preference/PreferenceGroup;->sortPreferences()V

    .line 252
    monitor-enter p2

    .line 253
    :try_start_0
    invoke-virtual {p2}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    .line 254
    .local v1, "groupSize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 255
    invoke-virtual {p2, v2}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v3

    .line 257
    .local v3, "preference":Landroid/preference/Preference;
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 259
    iget-boolean v5, p0, Landroid/preference/PreferenceGroupAdapter;->mHasReturnedViewTypeCount:Z

    if-nez v5, :cond_0

    invoke-virtual {v3}, Landroid/preference/Preference;->canRecycleLayout()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 260
    invoke-direct {p0, v3}, Landroid/preference/PreferenceGroupAdapter;->addPreferenceClassName(Landroid/preference/Preference;)V

    .line 263
    :cond_0
    instance-of v5, v3, Landroid/preference/PreferenceGroup;

    if-eqz v5, :cond_1

    .line 264
    move-object v0, v3

    check-cast v0, Landroid/preference/PreferenceGroup;

    move-object v4, v0

    .line 265
    .local v4, "preferenceAsGroup":Landroid/preference/PreferenceGroup;
    invoke-virtual {v4}, Landroid/preference/PreferenceGroup;->isOnSameScreenAsChildren()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 266
    invoke-direct {p0, p1, v4}, Landroid/preference/PreferenceGroupAdapter;->flattenPreferenceGroup(Ljava/util/List;Landroid/preference/PreferenceGroup;)V

    .line 270
    .end local v4    # "preferenceAsGroup":Landroid/preference/PreferenceGroup;
    :cond_1
    invoke-virtual {v3, p0}, Landroid/preference/Preference;->setOnPreferenceChangeInternalListener(Landroid/preference/Preference$OnPreferenceChangeInternalListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 254
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v3    # "preference":Landroid/preference/Preference;
    :cond_2
    monitor-exit p2

    .line 245
    return-void

    .line 252
    .end local v1    # "groupSize":I
    .end local v2    # "i":I
    :catchall_0
    move-exception v5

    monitor-exit p2

    throw v5
.end method

.method private getHighlightItemViewType()I
    .locals 1

    .prologue
    .line 378
    invoke-virtual {p0}, Landroid/preference/PreferenceGroupAdapter;->getViewTypeCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method private syncMyPreferences()V
    .locals 2

    .prologue
    .line 225
    monitor-enter p0

    .line 226
    :try_start_0
    iget-boolean v1, p0, Landroid/preference/PreferenceGroupAdapter;->mIsSyncing:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit p0

    .line 227
    return-void

    .line 230
    :cond_0
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Landroid/preference/PreferenceGroupAdapter;->mIsSyncing:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 233
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/preference/PreferenceGroupAdapter;->mPreferenceList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 234
    .local v0, "newPreferenceList":Ljava/util/List;, "Ljava/util/List<Landroid/preference/Preference;>;"
    iget-object v1, p0, Landroid/preference/PreferenceGroupAdapter;->mPreferenceGroup:Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v0, v1}, Landroid/preference/PreferenceGroupAdapter;->flattenPreferenceGroup(Ljava/util/List;Landroid/preference/PreferenceGroup;)V

    .line 235
    iput-object v0, p0, Landroid/preference/PreferenceGroupAdapter;->mPreferenceList:Ljava/util/List;

    .line 237
    invoke-virtual {p0}, Landroid/preference/PreferenceGroupAdapter;->notifyDataSetChanged()V

    .line 239
    monitor-enter p0

    .line 240
    const/4 v1, 0x0

    :try_start_2
    iput-boolean v1, p0, Landroid/preference/PreferenceGroupAdapter;->mIsSyncing:Z

    .line 241
    invoke-virtual {p0}, Landroid/preference/PreferenceGroupAdapter;->notifyAll()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    .line 224
    return-void

    .line 225
    .end local v0    # "newPreferenceList":Ljava/util/List;, "Ljava/util/List<Landroid/preference/Preference;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 239
    .restart local v0    # "newPreferenceList":Ljava/util/List;, "Ljava/util/List<Landroid/preference/Preference;>;"
    :catchall_1
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 360
    const/4 v0, 0x0

    return v0
.end method

.method public bottomDividerEnabled()Z
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Landroid/preference/PreferenceGroupAdapter;->dividerFilter:Lcom/letv/leui/widget/DividerFilter;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Landroid/preference/PreferenceGroupAdapter;->dividerFilter:Lcom/letv/leui/widget/DividerFilter;

    invoke-interface {v0}, Lcom/letv/leui/widget/DividerFilter;->bottomDividerEnabled()Z

    move-result v0

    return v0

    .line 132
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public dividerEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 137
    iget-object v0, p0, Landroid/preference/PreferenceGroupAdapter;->dividerFilter:Lcom/letv/leui/widget/DividerFilter;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Landroid/preference/PreferenceGroupAdapter;->dividerFilter:Lcom/letv/leui/widget/DividerFilter;

    invoke-interface {v0, p1}, Lcom/letv/leui/widget/DividerFilter;->dividerEnabled(I)Z

    move-result v0

    return v0

    .line 140
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public forceDrawDivider(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 166
    iget-object v0, p0, Landroid/preference/PreferenceGroupAdapter;->dividerFilter:Lcom/letv/leui/widget/DividerFilter;

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Landroid/preference/PreferenceGroupAdapter;->dividerFilter:Lcom/letv/leui/widget/DividerFilter;

    invoke-interface {v0, p1}, Lcom/letv/leui/widget/DividerFilter;->forceDrawDivider(I)Z

    move-result v0

    return v0

    .line 169
    :cond_0
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceGroupAdapter;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 170
    invoke-virtual {p0}, Landroid/preference/PreferenceGroupAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-eq p1, v0, :cond_1

    .line 171
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceGroupAdapter;->isEnabled(I)Z

    move-result v0

    .line 169
    if-eqz v0, :cond_2

    .line 172
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 174
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Landroid/preference/PreferenceGroupAdapter;->mPreferenceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getDividerFilter()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Landroid/preference/PreferenceGroupAdapter;->dividerFilter:Lcom/letv/leui/widget/DividerFilter;

    return-object v0
.end method

.method public getItem(I)Landroid/preference/Preference;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 305
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Landroid/preference/PreferenceGroupAdapter;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 306
    :cond_1
    iget-object v0, p0, Landroid/preference/PreferenceGroupAdapter;->mPreferenceList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 304
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceGroupAdapter;->getItem(I)Landroid/preference/Preference;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 310
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Landroid/preference/PreferenceGroupAdapter;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0

    .line 311
    :cond_1
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceGroupAdapter;->getItem(I)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/Preference;->getId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 5
    .param p1, "position"    # I

    .prologue
    const/4 v4, -0x1

    .line 383
    iget v2, p0, Landroid/preference/PreferenceGroupAdapter;->mHighlightedPosition:I

    if-ne p1, v2, :cond_0

    .line 384
    invoke-direct {p0}, Landroid/preference/PreferenceGroupAdapter;->getHighlightItemViewType()I

    move-result v2

    return v2

    .line 387
    :cond_0
    iget-boolean v2, p0, Landroid/preference/PreferenceGroupAdapter;->mHasReturnedViewTypeCount:Z

    if-nez v2, :cond_1

    .line 388
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/preference/PreferenceGroupAdapter;->mHasReturnedViewTypeCount:Z

    .line 391
    :cond_1
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceGroupAdapter;->getItem(I)Landroid/preference/Preference;

    move-result-object v0

    .line 392
    .local v0, "preference":Landroid/preference/Preference;
    invoke-virtual {v0}, Landroid/preference/Preference;->canRecycleLayout()Z

    move-result v2

    if-nez v2, :cond_2

    .line 393
    return v4

    .line 396
    :cond_2
    iget-object v2, p0, Landroid/preference/PreferenceGroupAdapter;->mTempPreferenceLayout:Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;

    invoke-direct {p0, v0, v2}, Landroid/preference/PreferenceGroupAdapter;->createPreferenceLayout(Landroid/preference/Preference;Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;)Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;

    move-result-object v2

    iput-object v2, p0, Landroid/preference/PreferenceGroupAdapter;->mTempPreferenceLayout:Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;

    .line 398
    iget-object v2, p0, Landroid/preference/PreferenceGroupAdapter;->mPreferenceLayouts:Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/preference/PreferenceGroupAdapter;->mTempPreferenceLayout:Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;

    invoke-static {v2, v3}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v1

    .line 399
    .local v1, "viewType":I
    if-gez v1, :cond_3

    .line 402
    return v4

    .line 404
    :cond_3
    return v1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 329
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceGroupAdapter;->getItem(I)Landroid/preference/Preference;

    move-result-object v0

    .line 331
    .local v0, "preference":Landroid/preference/Preference;
    iget-object v3, p0, Landroid/preference/PreferenceGroupAdapter;->mTempPreferenceLayout:Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;

    invoke-direct {p0, v0, v3}, Landroid/preference/PreferenceGroupAdapter;->createPreferenceLayout(Landroid/preference/Preference;Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;)Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;

    move-result-object v3

    iput-object v3, p0, Landroid/preference/PreferenceGroupAdapter;->mTempPreferenceLayout:Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;

    .line 335
    iget-object v3, p0, Landroid/preference/PreferenceGroupAdapter;->mPreferenceLayouts:Ljava/util/ArrayList;

    iget-object v4, p0, Landroid/preference/PreferenceGroupAdapter;->mTempPreferenceLayout:Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;

    invoke-static {v3, v4}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v3

    if-ltz v3, :cond_0

    .line 336
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceGroupAdapter;->getItemViewType(I)I

    move-result v3

    invoke-direct {p0}, Landroid/preference/PreferenceGroupAdapter;->getHighlightItemViewType()I

    move-result v4

    if-ne v3, v4, :cond_1

    .line 337
    :cond_0
    const/4 p2, 0x0

    .line 339
    .end local p2    # "convertView":Landroid/view/View;
    :cond_1
    invoke-virtual {v0, p2, p3}, Landroid/preference/Preference;->getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 340
    .local v1, "result":Landroid/view/View;
    iget v3, p0, Landroid/preference/PreferenceGroupAdapter;->mHighlightedPosition:I

    if-ne p1, v3, :cond_2

    iget-object v3, p0, Landroid/preference/PreferenceGroupAdapter;->mHighlightedDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_2

    .line 341
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 342
    .local v2, "wrapper":Landroid/view/ViewGroup;
    sget-object v3, Landroid/preference/PreferenceGroupAdapter;->sWrapperLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 343
    iget-object v3, p0, Landroid/preference/PreferenceGroupAdapter;->mHighlightedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 344
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 345
    move-object v1, v2

    .line 347
    .end local v2    # "wrapper":Landroid/view/ViewGroup;
    :cond_2
    return-object v1
.end method

.method public getViewTypeCount()I
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 410
    iget-boolean v0, p0, Landroid/preference/PreferenceGroupAdapter;->mHasReturnedViewTypeCount:Z

    if-nez v0, :cond_0

    .line 411
    iput-boolean v1, p0, Landroid/preference/PreferenceGroupAdapter;->mHasReturnedViewTypeCount:Z

    .line 414
    :cond_0
    iget-object v0, p0, Landroid/preference/PreferenceGroupAdapter;->mPreferenceLayouts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 374
    const/4 v0, 0x1

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 352
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Landroid/preference/PreferenceGroupAdapter;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    .line 353
    :cond_1
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceGroupAdapter;->getItem(I)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/Preference;->isSelectable()Z

    move-result v0

    return v0
.end method

.method public leftDividerMargin(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 145
    iget-object v1, p0, Landroid/preference/PreferenceGroupAdapter;->mPreferenceGroup:Landroid/preference/PreferenceGroup;

    if-nez v1, :cond_0

    .line 146
    const/4 v1, 0x0

    return v1

    .line 147
    :cond_0
    iget-object v1, p0, Landroid/preference/PreferenceGroupAdapter;->mPreferenceGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1}, Landroid/preference/PreferenceGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 149
    .local v0, "r":Landroid/content/res/Resources;
    iget-object v1, p0, Landroid/preference/PreferenceGroupAdapter;->dividerFilter:Lcom/letv/leui/widget/DividerFilter;

    if-nez v1, :cond_1

    .line 150
    new-instance v1, Lcom/letv/leui/preference/LeDividerFilterImp;

    invoke-direct {v1, p0, v0}, Lcom/letv/leui/preference/LeDividerFilterImp;-><init>(Landroid/preference/PreferenceGroupAdapter;Landroid/content/res/Resources;)V

    iput-object v1, p0, Landroid/preference/PreferenceGroupAdapter;->dividerFilter:Lcom/letv/leui/widget/DividerFilter;

    .line 153
    :cond_1
    iget-object v1, p0, Landroid/preference/PreferenceGroupAdapter;->dividerFilter:Lcom/letv/leui/widget/DividerFilter;

    invoke-interface {v1, p1}, Lcom/letv/leui/widget/DividerFilter;->leftDividerMargin(I)I

    move-result v1

    return v1
.end method

.method public onPreferenceChange(Landroid/preference/Preference;)V
    .locals 0
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 364
    invoke-virtual {p0}, Landroid/preference/PreferenceGroupAdapter;->notifyDataSetChanged()V

    .line 363
    return-void
.end method

.method public onPreferenceHierarchyChange(Landroid/preference/Preference;)V
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 368
    iget-object v0, p0, Landroid/preference/PreferenceGroupAdapter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/preference/PreferenceGroupAdapter;->mSyncRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 369
    iget-object v0, p0, Landroid/preference/PreferenceGroupAdapter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/preference/PreferenceGroupAdapter;->mSyncRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 367
    return-void
.end method

.method public rightDividerMargin(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 158
    iget-object v0, p0, Landroid/preference/PreferenceGroupAdapter;->dividerFilter:Lcom/letv/leui/widget/DividerFilter;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Landroid/preference/PreferenceGroupAdapter;->dividerFilter:Lcom/letv/leui/widget/DividerFilter;

    invoke-interface {v0, p1}, Lcom/letv/leui/widget/DividerFilter;->rightDividerMargin(I)I

    move-result v0

    return v0

    .line 161
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setDividerFilter(Ljava/lang/Object;)V
    .locals 1
    .param p1, "dividerFilter"    # Ljava/lang/Object;

    .prologue
    .line 114
    instance-of v0, p1, Lcom/letv/leui/widget/DividerFilter;

    if-eqz v0, :cond_0

    .line 115
    check-cast p1, Lcom/letv/leui/widget/DividerFilter;

    .end local p1    # "dividerFilter":Ljava/lang/Object;
    iput-object p1, p0, Landroid/preference/PreferenceGroupAdapter;->dividerFilter:Lcom/letv/leui/widget/DividerFilter;

    .line 116
    invoke-virtual {p0}, Landroid/preference/PreferenceGroupAdapter;->notifyDataSetChanged()V

    .line 113
    :cond_0
    return-void
.end method

.method public setHighlighted(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 318
    iput p1, p0, Landroid/preference/PreferenceGroupAdapter;->mHighlightedPosition:I

    .line 317
    return-void
.end method

.method public setHighlightedDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 325
    iput-object p1, p0, Landroid/preference/PreferenceGroupAdapter;->mHighlightedDrawable:Landroid/graphics/drawable/Drawable;

    .line 324
    return-void
.end method

.method public topDividerEnabled()Z
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Landroid/preference/PreferenceGroupAdapter;->dividerFilter:Lcom/letv/leui/widget/DividerFilter;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Landroid/preference/PreferenceGroupAdapter;->dividerFilter:Lcom/letv/leui/widget/DividerFilter;

    invoke-interface {v0}, Lcom/letv/leui/widget/DividerFilter;->topDividerEnabled()Z

    move-result v0

    return v0

    .line 124
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
