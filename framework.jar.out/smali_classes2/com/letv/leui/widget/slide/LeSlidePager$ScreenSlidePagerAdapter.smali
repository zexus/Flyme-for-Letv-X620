.class Lcom/letv/leui/widget/slide/LeSlidePager$ScreenSlidePagerAdapter;
.super Lcom/letv/leui/widget/slide/LeFragmentSlidePagerAdapter;
.source "LeSlidePager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/widget/slide/LeSlidePager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScreenSlidePagerAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/widget/slide/LeSlidePager;


# direct methods
.method public constructor <init>(Lcom/letv/leui/widget/slide/LeSlidePager;Landroid/app/FragmentManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/letv/leui/widget/slide/LeSlidePager;
    .param p2, "fm"    # Landroid/app/FragmentManager;

    .prologue
    .line 2981
    iput-object p1, p0, Lcom/letv/leui/widget/slide/LeSlidePager$ScreenSlidePagerAdapter;->this$0:Lcom/letv/leui/widget/slide/LeSlidePager;

    .line 2982
    invoke-direct {p0, p2}, Lcom/letv/leui/widget/slide/LeFragmentSlidePagerAdapter;-><init>(Landroid/app/FragmentManager;)V

    .line 2981
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 2992
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager$ScreenSlidePagerAdapter;->this$0:Lcom/letv/leui/widget/slide/LeSlidePager;

    invoke-static {v0}, Lcom/letv/leui/widget/slide/LeSlidePager;->-get4(Lcom/letv/leui/widget/slide/LeSlidePager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroid/app/Fragment;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 2987
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager$ScreenSlidePagerAdapter;->this$0:Lcom/letv/leui/widget/slide/LeSlidePager;

    invoke-static {v0}, Lcom/letv/leui/widget/slide/LeSlidePager;->-get4(Lcom/letv/leui/widget/slide/LeSlidePager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    return-object v0
.end method

.method public restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .locals 10
    .param p1, "state"    # Landroid/os/Parcelable;
    .param p2, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    const/4 v9, 0x0

    .line 3015
    iget-object v6, p0, Lcom/letv/leui/widget/slide/LeSlidePager$ScreenSlidePagerAdapter;->this$0:Lcom/letv/leui/widget/slide/LeSlidePager;

    invoke-static {v6}, Lcom/letv/leui/widget/slide/LeSlidePager;->-get3(Lcom/letv/leui/widget/slide/LeSlidePager;)Z

    move-result v6

    if-eqz v6, :cond_0

    return-void

    .line 3017
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/letv/leui/widget/slide/LeFragmentSlidePagerAdapter;->restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    .line 3018
    if-eqz p1, :cond_5

    move-object v0, p1

    .line 3019
    check-cast v0, Landroid/os/Bundle;

    .line 3020
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {v0, p2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 3021
    iget-object v6, p0, Lcom/letv/leui/widget/slide/LeSlidePager$ScreenSlidePagerAdapter;->this$0:Lcom/letv/leui/widget/slide/LeSlidePager;

    invoke-static {v6}, Lcom/letv/leui/widget/slide/LeSlidePager;->-get4(Lcom/letv/leui/widget/slide/LeSlidePager;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 3022
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v5

    .line 3023
    .local v5, "keys":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "key$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 3024
    .local v3, "key":Ljava/lang/String;
    const-string/jumbo v6, "lef"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 3025
    const/4 v6, 0x3

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 3026
    .local v2, "index":I
    iget-object v6, p0, Lcom/letv/leui/widget/slide/LeSlidePager$ScreenSlidePagerAdapter;->this$0:Lcom/letv/leui/widget/slide/LeSlidePager;

    invoke-static {v6}, Lcom/letv/leui/widget/slide/LeSlidePager;->-get5(Lcom/letv/leui/widget/slide/LeSlidePager;)Landroid/app/FragmentManager;

    move-result-object v6

    invoke-virtual {v6, v0, v3}, Landroid/app/FragmentManager;->getFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    .line 3027
    .local v1, "f":Landroid/app/Fragment;
    if-eqz v1, :cond_3

    .line 3028
    :goto_1
    iget-object v6, p0, Lcom/letv/leui/widget/slide/LeSlidePager$ScreenSlidePagerAdapter;->this$0:Lcom/letv/leui/widget/slide/LeSlidePager;

    invoke-static {v6}, Lcom/letv/leui/widget/slide/LeSlidePager;->-get4(Lcom/letv/leui/widget/slide/LeSlidePager;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-gt v6, v2, :cond_2

    .line 3029
    iget-object v6, p0, Lcom/letv/leui/widget/slide/LeSlidePager$ScreenSlidePagerAdapter;->this$0:Lcom/letv/leui/widget/slide/LeSlidePager;

    invoke-static {v6}, Lcom/letv/leui/widget/slide/LeSlidePager;->-get4(Lcom/letv/leui/widget/slide/LeSlidePager;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3031
    :cond_2
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroid/app/Fragment;->setMenuVisibility(Z)V

    .line 3032
    iget-object v6, p0, Lcom/letv/leui/widget/slide/LeSlidePager$ScreenSlidePagerAdapter;->this$0:Lcom/letv/leui/widget/slide/LeSlidePager;

    invoke-static {v6}, Lcom/letv/leui/widget/slide/LeSlidePager;->-get4(Lcom/letv/leui/widget/slide/LeSlidePager;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v2, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 3034
    :cond_3
    const-string/jumbo v6, "LeSlidePager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Bad fragment at key "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3038
    .end local v1    # "f":Landroid/app/Fragment;
    .end local v2    # "index":I
    .end local v3    # "key":Ljava/lang/String;
    :cond_4
    invoke-virtual {p0}, Lcom/letv/leui/widget/slide/LeSlidePager$ScreenSlidePagerAdapter;->notifyDataSetChanged()V

    .line 3014
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v4    # "key$iterator":Ljava/util/Iterator;
    .end local v5    # "keys":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    :cond_5
    return-void
.end method

.method public saveState()Landroid/os/Parcelable;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 2997
    iget-object v4, p0, Lcom/letv/leui/widget/slide/LeSlidePager$ScreenSlidePagerAdapter;->this$0:Lcom/letv/leui/widget/slide/LeSlidePager;

    invoke-static {v4}, Lcom/letv/leui/widget/slide/LeSlidePager;->-get3(Lcom/letv/leui/widget/slide/LeSlidePager;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v5

    .line 2999
    :cond_0
    invoke-super {p0}, Lcom/letv/leui/widget/slide/LeFragmentSlidePagerAdapter;->saveState()Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 3000
    .local v3, "state":Landroid/os/Bundle;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lcom/letv/leui/widget/slide/LeSlidePager$ScreenSlidePagerAdapter;->this$0:Lcom/letv/leui/widget/slide/LeSlidePager;

    invoke-static {v4}, Lcom/letv/leui/widget/slide/LeSlidePager;->-get4(Lcom/letv/leui/widget/slide/LeSlidePager;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_3

    .line 3001
    iget-object v4, p0, Lcom/letv/leui/widget/slide/LeSlidePager$ScreenSlidePagerAdapter;->this$0:Lcom/letv/leui/widget/slide/LeSlidePager;

    invoke-static {v4}, Lcom/letv/leui/widget/slide/LeSlidePager;->-get4(Lcom/letv/leui/widget/slide/LeSlidePager;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    .line 3002
    .local v0, "f":Landroid/app/Fragment;
    if-eqz v0, :cond_2

    .line 3003
    if-nez v3, :cond_1

    .line 3004
    new-instance v3, Landroid/os/Bundle;

    .end local v3    # "state":Landroid/os/Bundle;
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 3006
    .restart local v3    # "state":Landroid/os/Bundle;
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "lef"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3007
    .local v2, "key":Ljava/lang/String;
    iget-object v4, p0, Lcom/letv/leui/widget/slide/LeSlidePager$ScreenSlidePagerAdapter;->this$0:Lcom/letv/leui/widget/slide/LeSlidePager;

    invoke-static {v4}, Lcom/letv/leui/widget/slide/LeSlidePager;->-get5(Lcom/letv/leui/widget/slide/LeSlidePager;)Landroid/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4, v3, v2, v0}, Landroid/app/FragmentManager;->putFragment(Landroid/os/Bundle;Ljava/lang/String;Landroid/app/Fragment;)V

    .line 3000
    .end local v2    # "key":Ljava/lang/String;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3010
    .end local v0    # "f":Landroid/app/Fragment;
    :cond_3
    return-object v3
.end method
