.class public abstract Lcom/letv/leui/widget/PinnedSectionAdapter;
.super Landroid/widget/BaseAdapter;
.source "PinnedSectionAdapter.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private mCount:I

.field private numberOfCellsSection:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private sectionCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 14
    const/4 v0, -0x1

    iput v0, p0, Lcom/letv/leui/widget/PinnedSectionAdapter;->mCount:I

    .line 160
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/PinnedSectionAdapter;->numberOfCellsSection:Ljava/util/HashMap;

    .line 162
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/PinnedSectionAdapter;->sectionCache:Ljava/util/HashMap;

    .line 12
    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/letv/leui/widget/PinnedSectionAdapter;->mCount:I

    if-gez v0, :cond_0

    .line 76
    invoke-virtual {p0}, Lcom/letv/leui/widget/PinnedSectionAdapter;->numberOfSections()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/PinnedSectionAdapter;->numberOfCellsBeforeSection(I)I

    move-result v0

    iput v0, p0, Lcom/letv/leui/widget/PinnedSectionAdapter;->mCount:I

    .line 78
    :cond_0
    iget v0, p0, Lcom/letv/leui/widget/PinnedSectionAdapter;->mCount:I

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 91
    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/PinnedSectionAdapter;->getSection(I)I

    move-result v0

    .line 92
    .local v0, "section":I
    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/PinnedSectionAdapter;->isSectionHeader(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 93
    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/PinnedSectionAdapter;->hasSectionHeaderView(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 94
    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/PinnedSectionAdapter;->getSectionHeaderItem(I)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 96
    :cond_0
    const/4 v1, 0x0

    return-object v1

    .line 98
    :cond_1
    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/PinnedSectionAdapter;->getRowInSection(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/letv/leui/widget/PinnedSectionAdapter;->getRowItem(II)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 103
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 205
    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/PinnedSectionAdapter;->getSection(I)I

    move-result v0

    .line 206
    .local v0, "section":I
    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/PinnedSectionAdapter;->isSectionHeader(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 207
    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/PinnedSectionAdapter;->getSectionHeaderItemViewType(I)I

    move-result v1

    return v1

    .line 209
    :cond_0
    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/PinnedSectionAdapter;->getRowInSection(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/letv/leui/widget/PinnedSectionAdapter;->getRowItemViewType(II)I

    move-result v1

    return v1
.end method

.method protected getRowInSection(I)I
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 143
    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/PinnedSectionAdapter;->getSection(I)I

    move-result v1

    .line 144
    .local v1, "section":I
    invoke-virtual {p0, v1}, Lcom/letv/leui/widget/PinnedSectionAdapter;->numberOfCellsBeforeSection(I)I

    move-result v2

    sub-int v0, p1, v2

    .line 145
    .local v0, "row":I
    invoke-virtual {p0, v1}, Lcom/letv/leui/widget/PinnedSectionAdapter;->hasSectionHeaderView(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 146
    add-int/lit8 v2, v0, -0x1

    return v2

    .line 148
    :cond_0
    return v0
.end method

.method public abstract getRowItem(II)Ljava/lang/Object;
.end method

.method public getRowItemViewType(II)I
    .locals 1
    .param p1, "section"    # I
    .param p2, "row"    # I

    .prologue
    .line 48
    const/4 v0, 0x0

    return v0
.end method

.method public abstract getRowView(IILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public getRowViewTypeCount()I
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x1

    return v0
.end method

.method protected getSection(I)I
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 127
    iget-object v1, p0, Lcom/letv/leui/widget/PinnedSectionAdapter;->sectionCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 128
    const/4 v0, 0x0

    .line 129
    .local v0, "section":I
    :goto_0
    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/PinnedSectionAdapter;->numberOfCellsBeforeSection(I)I

    move-result v1

    if-gt v1, p1, :cond_0

    .line 130
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 132
    :cond_0
    iget-object v1, p0, Lcom/letv/leui/widget/PinnedSectionAdapter;->sectionCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    add-int/lit8 v3, v0, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    .end local v0    # "section":I
    :cond_1
    iget-object v1, p0, Lcom/letv/leui/widget/PinnedSectionAdapter;->sectionCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method public getSectionHeaderItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "section"    # I

    .prologue
    .line 33
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSectionHeaderItemViewType(I)I
    .locals 1
    .param p1, "section"    # I

    .prologue
    .line 55
    const/4 v0, 0x0

    return v0
.end method

.method public getSectionHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "section"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 29
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSectionHeaderViewTypeCount()I
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    return v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 112
    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/PinnedSectionAdapter;->getSection(I)I

    move-result v0

    .line 113
    .local v0, "section":I
    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/PinnedSectionAdapter;->isSectionHeader(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 114
    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/PinnedSectionAdapter;->hasSectionHeaderView(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 115
    invoke-virtual {p0, v0, p2, p3}, Lcom/letv/leui/widget/PinnedSectionAdapter;->getSectionHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    return-object v1

    .line 117
    :cond_0
    const/4 v1, 0x0

    return-object v1

    .line 119
    :cond_1
    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/PinnedSectionAdapter;->getRowInSection(I)I

    move-result v1

    invoke-virtual {p0, v0, v1, p2, p3}, Lcom/letv/leui/widget/PinnedSectionAdapter;->getRowView(IILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public final getViewTypeCount()I
    .locals 2

    .prologue
    .line 218
    invoke-virtual {p0}, Lcom/letv/leui/widget/PinnedSectionAdapter;->getRowViewTypeCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/letv/leui/widget/PinnedSectionAdapter;->getSectionHeaderViewTypeCount()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public hasSectionHeaderView(I)Z
    .locals 1
    .param p1, "section"    # I

    .prologue
    .line 25
    const/4 v0, 0x0

    return v0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 83
    invoke-virtual {p0}, Lcom/letv/leui/widget/PinnedSectionAdapter;->getCount()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 226
    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/PinnedSectionAdapter;->isSectionHeader(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected isSectionHeader(I)Z
    .locals 3
    .param p1, "position"    # I

    .prologue
    const/4 v1, 0x0

    .line 156
    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/PinnedSectionAdapter;->getSection(I)I

    move-result v0

    .line 157
    .local v0, "section":I
    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/PinnedSectionAdapter;->hasSectionHeaderView(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/PinnedSectionAdapter;->numberOfCellsBeforeSection(I)I

    move-result v2

    if-ne v2, p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/letv/leui/widget/PinnedSectionAdapter;->numberOfCellsSection:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 189
    iget-object v0, p0, Lcom/letv/leui/widget/PinnedSectionAdapter;->sectionCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 190
    invoke-virtual {p0}, Lcom/letv/leui/widget/PinnedSectionAdapter;->numberOfSections()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/PinnedSectionAdapter;->numberOfCellsBeforeSection(I)I

    move-result v0

    iput v0, p0, Lcom/letv/leui/widget/PinnedSectionAdapter;->mCount:I

    .line 191
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 187
    return-void
.end method

.method public notifyDataSetInvalidated()V
    .locals 1

    .prologue
    .line 196
    invoke-virtual {p0}, Lcom/letv/leui/widget/PinnedSectionAdapter;->numberOfSections()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/PinnedSectionAdapter;->numberOfCellsBeforeSection(I)I

    move-result v0

    iput v0, p0, Lcom/letv/leui/widget/PinnedSectionAdapter;->mCount:I

    .line 197
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetInvalidated()V

    .line 195
    return-void
.end method

.method protected numberOfCellsBeforeSection(I)I
    .locals 9
    .param p1, "section"    # I

    .prologue
    .line 169
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 170
    .local v4, "startTime":J
    iget-object v6, p0, Lcom/letv/leui/widget/PinnedSectionAdapter;->numberOfCellsSection:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 172
    const/4 v0, 0x0

    .line 173
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/letv/leui/widget/PinnedSectionAdapter;->numberOfSections()I

    move-result v6

    invoke-static {v6, p1}, Ljava/lang/Math;->min(II)I

    move-result v6

    if-ge v1, v6, :cond_1

    .line 174
    invoke-virtual {p0, v1}, Lcom/letv/leui/widget/PinnedSectionAdapter;->hasSectionHeaderView(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 175
    add-int/lit8 v0, v0, 0x1

    .line 177
    :cond_0
    invoke-virtual {p0, v1}, Lcom/letv/leui/widget/PinnedSectionAdapter;->numberOfRows(I)I

    move-result v6

    add-int/2addr v0, v6

    .line 173
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 179
    :cond_1
    iget-object v6, p0, Lcom/letv/leui/widget/PinnedSectionAdapter;->numberOfCellsSection:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 183
    .local v2, "endTime":J
    iget-object v6, p0, Lcom/letv/leui/widget/PinnedSectionAdapter;->numberOfCellsSection:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    return v6
.end method

.method public abstract numberOfRows(I)I
.end method

.method public abstract numberOfSections()I
.end method

.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 63
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p0, p3}, Lcom/letv/leui/widget/PinnedSectionAdapter;->getSection(I)I

    move-result v4

    invoke-virtual {p0, p3}, Lcom/letv/leui/widget/PinnedSectionAdapter;->getRowInSection(I)I

    move-result v5

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v6, p4

    invoke-virtual/range {v1 .. v7}, Lcom/letv/leui/widget/PinnedSectionAdapter;->onRowItemClick(Landroid/widget/AdapterView;Landroid/view/View;IIJ)V

    .line 62
    return-void
.end method

.method public onRowItemClick(Landroid/widget/AdapterView;Landroid/view/View;IIJ)V
    .locals 0
    .param p2, "view"    # Landroid/view/View;
    .param p3, "section"    # I
    .param p4, "row"    # I
    .param p5, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IIJ)V"
        }
    .end annotation

    .prologue
    .line 66
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
