.class public abstract Lcom/letv/leui/widget/slide/LeFragmentSlidePagerAdapter;
.super Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;
.source "LeFragmentSlidePagerAdapter.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "LeFragSlidePagerAdapter"


# instance fields
.field private mCurTransaction:Landroid/app/FragmentTransaction;

.field private mCurrentPrimaryItem:Landroid/app/Fragment;

.field private final mFragmentManager:Landroid/app/FragmentManager;

.field private mFragments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private mSavedState:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/Fragment$SavedState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/FragmentManager;)V
    .locals 2
    .param p1, "fm"    # Landroid/app/FragmentManager;

    .prologue
    const/4 v1, 0x0

    .line 28
    invoke-direct {p0}, Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;-><init>()V

    .line 22
    iput-object v1, p0, Lcom/letv/leui/widget/slide/LeFragmentSlidePagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/slide/LeFragmentSlidePagerAdapter;->mSavedState:Ljava/util/ArrayList;

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/slide/LeFragmentSlidePagerAdapter;->mFragments:Ljava/util/ArrayList;

    .line 26
    iput-object v1, p0, Lcom/letv/leui/widget/slide/LeFragmentSlidePagerAdapter;->mCurrentPrimaryItem:Landroid/app/Fragment;

    .line 29
    iput-object p1, p0, Lcom/letv/leui/widget/slide/LeFragmentSlidePagerAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    .line 28
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 4
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    move-object v0, p3

    .line 79
    check-cast v0, Landroid/app/Fragment;

    .line 81
    .local v0, "fragment":Landroid/app/Fragment;
    iget-object v1, p0, Lcom/letv/leui/widget/slide/LeFragmentSlidePagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    if-nez v1, :cond_0

    .line 82
    iget-object v1, p0, Lcom/letv/leui/widget/slide/LeFragmentSlidePagerAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    iput-object v1, p0, Lcom/letv/leui/widget/slide/LeFragmentSlidePagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    .line 86
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/letv/leui/widget/slide/LeFragmentSlidePagerAdapter;->mSavedState:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gt v1, p2, :cond_1

    .line 87
    iget-object v1, p0, Lcom/letv/leui/widget/slide/LeFragmentSlidePagerAdapter;->mSavedState:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 89
    :cond_1
    iget-object v1, p0, Lcom/letv/leui/widget/slide/LeFragmentSlidePagerAdapter;->mSavedState:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/letv/leui/widget/slide/LeFragmentSlidePagerAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v2, v0}, Landroid/app/FragmentManager;->saveFragmentInstanceState(Landroid/app/Fragment;)Landroid/app/Fragment$SavedState;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 90
    iget-object v1, p0, Lcom/letv/leui/widget/slide/LeFragmentSlidePagerAdapter;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v1, p2, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 92
    iget-object v1, p0, Lcom/letv/leui/widget/slide/LeFragmentSlidePagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    invoke-virtual {v1, v0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 78
    return-void
.end method

.method public finishUpdate(Landroid/view/ViewGroup;)V
    .locals 2
    .param p1, "container"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v1, 0x0

    .line 113
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeFragmentSlidePagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeFragmentSlidePagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 115
    iput-object v1, p0, Lcom/letv/leui/widget/slide/LeFragmentSlidePagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    .line 116
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeFragmentSlidePagerAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 112
    :cond_0
    return-void
.end method

.method public abstract getItem(I)Landroid/app/Fragment;
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 6
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 47
    iget-object v3, p0, Lcom/letv/leui/widget/slide/LeFragmentSlidePagerAdapter;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, p2, :cond_0

    .line 48
    iget-object v3, p0, Lcom/letv/leui/widget/slide/LeFragmentSlidePagerAdapter;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    .line 49
    .local v0, "f":Landroid/app/Fragment;
    if-eqz v0, :cond_0

    .line 50
    return-object v0

    .line 54
    .end local v0    # "f":Landroid/app/Fragment;
    :cond_0
    iget-object v3, p0, Lcom/letv/leui/widget/slide/LeFragmentSlidePagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    if-nez v3, :cond_1

    .line 55
    iget-object v3, p0, Lcom/letv/leui/widget/slide/LeFragmentSlidePagerAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v3

    iput-object v3, p0, Lcom/letv/leui/widget/slide/LeFragmentSlidePagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    .line 58
    :cond_1
    invoke-virtual {p0, p2}, Lcom/letv/leui/widget/slide/LeFragmentSlidePagerAdapter;->getItem(I)Landroid/app/Fragment;

    move-result-object v1

    .line 60
    .local v1, "fragment":Landroid/app/Fragment;
    iget-object v3, p0, Lcom/letv/leui/widget/slide/LeFragmentSlidePagerAdapter;->mSavedState:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, p2, :cond_2

    .line 61
    iget-object v3, p0, Lcom/letv/leui/widget/slide/LeFragmentSlidePagerAdapter;->mSavedState:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Fragment$SavedState;

    .line 62
    .local v2, "fss":Landroid/app/Fragment$SavedState;
    if-eqz v2, :cond_2

    .line 63
    invoke-virtual {v1, v2}, Landroid/app/Fragment;->setInitialSavedState(Landroid/app/Fragment$SavedState;)V

    .line 66
    .end local v2    # "fss":Landroid/app/Fragment$SavedState;
    :cond_2
    :goto_0
    iget-object v3, p0, Lcom/letv/leui/widget/slide/LeFragmentSlidePagerAdapter;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gt v3, p2, :cond_3

    .line 67
    iget-object v3, p0, Lcom/letv/leui/widget/slide/LeFragmentSlidePagerAdapter;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 69
    :cond_3
    invoke-virtual {v1, v5}, Landroid/app/Fragment;->setMenuVisibility(Z)V

    .line 70
    invoke-virtual {v1, v5}, Landroid/app/Fragment;->setUserVisibleHint(Z)V

    .line 71
    iget-object v3, p0, Lcom/letv/leui/widget/slide/LeFragmentSlidePagerAdapter;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v3, p2, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 72
    iget-object v3, p0, Lcom/letv/leui/widget/slide/LeFragmentSlidePagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result v4

    invoke-virtual {v3, v4, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 74
    return-object v1
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 122
    check-cast p2, Landroid/app/Fragment;

    .end local p2    # "object":Ljava/lang/Object;
    invoke-virtual {p2}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .locals 12
    .param p1, "state"    # Landroid/os/Parcelable;
    .param p2, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    const/4 v11, 0x0

    .line 149
    if-eqz p1, :cond_4

    move-object v0, p1

    .line 150
    check-cast v0, Landroid/os/Bundle;

    .line 151
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {v0, p2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 152
    const-string/jumbo v8, "states"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v2

    .line 153
    .local v2, "fss":[Landroid/os/Parcelable;
    iget-object v8, p0, Lcom/letv/leui/widget/slide/LeFragmentSlidePagerAdapter;->mSavedState:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 154
    iget-object v8, p0, Lcom/letv/leui/widget/slide/LeFragmentSlidePagerAdapter;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 155
    if-eqz v2, :cond_0

    .line 156
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v8, v2

    if-ge v3, v8, :cond_0

    .line 157
    iget-object v9, p0, Lcom/letv/leui/widget/slide/LeFragmentSlidePagerAdapter;->mSavedState:Ljava/util/ArrayList;

    aget-object v8, v2, v3

    check-cast v8, Landroid/app/Fragment$SavedState;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 160
    .end local v3    # "i":I
    :cond_0
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v7

    .line 161
    .local v7, "keys":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "key$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 162
    .local v5, "key":Ljava/lang/String;
    const-string/jumbo v8, "f"

    invoke-virtual {v5, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 163
    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 164
    .local v4, "index":I
    iget-object v8, p0, Lcom/letv/leui/widget/slide/LeFragmentSlidePagerAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v8, v0, v5}, Landroid/app/FragmentManager;->getFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    .line 165
    .local v1, "f":Landroid/app/Fragment;
    if-eqz v1, :cond_3

    .line 166
    :goto_2
    iget-object v8, p0, Lcom/letv/leui/widget/slide/LeFragmentSlidePagerAdapter;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-gt v8, v4, :cond_2

    .line 167
    iget-object v8, p0, Lcom/letv/leui/widget/slide/LeFragmentSlidePagerAdapter;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 169
    :cond_2
    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Landroid/app/Fragment;->setMenuVisibility(Z)V

    .line 170
    iget-object v8, p0, Lcom/letv/leui/widget/slide/LeFragmentSlidePagerAdapter;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v8, v4, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 172
    :cond_3
    const-string/jumbo v8, "LeFragSlidePagerAdapter"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Bad fragment at key "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 148
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "f":Landroid/app/Fragment;
    .end local v2    # "fss":[Landroid/os/Parcelable;
    .end local v4    # "index":I
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "key$iterator":Ljava/util/Iterator;
    .end local v7    # "keys":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    :cond_4
    return-void
.end method

.method public saveState()Landroid/os/Parcelable;
    .locals 7

    .prologue
    .line 127
    const/4 v4, 0x0

    .line 128
    .local v4, "state":Landroid/os/Bundle;
    iget-object v5, p0, Lcom/letv/leui/widget/slide/LeFragmentSlidePagerAdapter;->mSavedState:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 129
    new-instance v4, Landroid/os/Bundle;

    .end local v4    # "state":Landroid/os/Bundle;
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 130
    .local v4, "state":Landroid/os/Bundle;
    iget-object v5, p0, Lcom/letv/leui/widget/slide/LeFragmentSlidePagerAdapter;->mSavedState:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v1, v5, [Landroid/app/Fragment$SavedState;

    .line 131
    .local v1, "fss":[Landroid/app/Fragment$SavedState;
    iget-object v5, p0, Lcom/letv/leui/widget/slide/LeFragmentSlidePagerAdapter;->mSavedState:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 132
    const-string/jumbo v5, "states"

    invoke-virtual {v4, v5, v1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 134
    .end local v1    # "fss":[Landroid/app/Fragment$SavedState;
    .end local v4    # "state":Landroid/os/Bundle;
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v5, p0, Lcom/letv/leui/widget/slide/LeFragmentSlidePagerAdapter;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 135
    iget-object v5, p0, Lcom/letv/leui/widget/slide/LeFragmentSlidePagerAdapter;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    .line 136
    .local v0, "f":Landroid/app/Fragment;
    if-eqz v0, :cond_2

    .line 137
    if-nez v4, :cond_1

    .line 138
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 140
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "f"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 141
    .local v3, "key":Ljava/lang/String;
    iget-object v5, p0, Lcom/letv/leui/widget/slide/LeFragmentSlidePagerAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v5, v4, v3, v0}, Landroid/app/FragmentManager;->putFragment(Landroid/os/Bundle;Ljava/lang/String;Landroid/app/Fragment;)V

    .line 134
    .end local v3    # "key":Ljava/lang/String;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 144
    .end local v0    # "f":Landroid/app/Fragment;
    :cond_3
    return-object v4
.end method

.method public setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 4
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    move-object v0, p3

    .line 97
    check-cast v0, Landroid/app/Fragment;

    .line 98
    .local v0, "fragment":Landroid/app/Fragment;
    iget-object v1, p0, Lcom/letv/leui/widget/slide/LeFragmentSlidePagerAdapter;->mCurrentPrimaryItem:Landroid/app/Fragment;

    if-eq v0, v1, :cond_2

    .line 99
    iget-object v1, p0, Lcom/letv/leui/widget/slide/LeFragmentSlidePagerAdapter;->mCurrentPrimaryItem:Landroid/app/Fragment;

    if-eqz v1, :cond_0

    .line 100
    iget-object v1, p0, Lcom/letv/leui/widget/slide/LeFragmentSlidePagerAdapter;->mCurrentPrimaryItem:Landroid/app/Fragment;

    invoke-virtual {v1, v2}, Landroid/app/Fragment;->setMenuVisibility(Z)V

    .line 101
    iget-object v1, p0, Lcom/letv/leui/widget/slide/LeFragmentSlidePagerAdapter;->mCurrentPrimaryItem:Landroid/app/Fragment;

    invoke-virtual {v1, v2}, Landroid/app/Fragment;->setUserVisibleHint(Z)V

    .line 103
    :cond_0
    if-eqz v0, :cond_1

    .line 104
    invoke-virtual {v0, v3}, Landroid/app/Fragment;->setMenuVisibility(Z)V

    .line 105
    invoke-virtual {v0, v3}, Landroid/app/Fragment;->setUserVisibleHint(Z)V

    .line 107
    :cond_1
    iput-object v0, p0, Lcom/letv/leui/widget/slide/LeFragmentSlidePagerAdapter;->mCurrentPrimaryItem:Landroid/app/Fragment;

    .line 96
    :cond_2
    return-void
.end method

.method public startUpdate(Landroid/view/ViewGroup;)V
    .locals 0
    .param p1, "container"    # Landroid/view/ViewGroup;

    .prologue
    .line 38
    return-void
.end method
