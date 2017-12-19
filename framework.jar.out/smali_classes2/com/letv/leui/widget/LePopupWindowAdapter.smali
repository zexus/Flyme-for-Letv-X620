.class public Lcom/letv/leui/widget/LePopupWindowAdapter;
.super Landroid/widget/BaseAdapter;
.source "LePopupWindowAdapter.java"

# interfaces
.implements Lcom/letv/leui/widget/DividerFilter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;,
        Lcom/letv/leui/widget/LePopupWindowAdapter$ItemData;
    }
.end annotation


# static fields
.field public static final DOUBLETEXTVIEW_CHECKBOX:I = 0xb

.field public static final DOUBLETEXTVIEW_EMPTY:I = 0xa

.field public static final DOUBLETEXTVIEW_IMG:I = 0xc

.field public static final DOUBLETEXTVIEW_SWTICH:I = 0xd

.field public static final LAYOUTTYPE_MAXNUM:I = 0x14

.field public static final SINGLETEXTVIEW_CHECKBOX:I = 0x1

.field public static final SINGLETEXTVIEW_EMPTY:I = 0x0

.field public static final SINGLETEXTVIEW_MULTI_CHECKBOX:I = 0x2

.field private static hasDoubleTxItem:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field public mItems:[Ljava/lang/CharSequence;

.field private mLayoutType:I

.field private mTypeNum:I

.field private myList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/letv/leui/widget/LePopupWindowAdapter$ItemData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    sput-boolean v0, Lcom/letv/leui/widget/LePopupWindowAdapter;->hasDoubleTxItem:Z

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "typeNum"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/letv/leui/widget/LePopupWindowAdapter$ItemData;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p2, "mList":Ljava/util/List;, "Ljava/util/List<Lcom/letv/leui/widget/LePopupWindowAdapter$ItemData;>;"
    const/4 v1, 0x1

    .line 46
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 40
    const/4 v0, -0x1

    iput v0, p0, Lcom/letv/leui/widget/LePopupWindowAdapter;->mLayoutType:I

    .line 47
    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindowAdapter;->myList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindowAdapter;->myList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 50
    :cond_0
    iput-object p2, p0, Lcom/letv/leui/widget/LePopupWindowAdapter;->myList:Ljava/util/List;

    .line 52
    if-gt p3, v1, :cond_1

    .line 53
    iput v1, p0, Lcom/letv/leui/widget/LePopupWindowAdapter;->mTypeNum:I

    .line 58
    :goto_0
    iput-object p1, p0, Lcom/letv/leui/widget/LePopupWindowAdapter;->mContext:Landroid/content/Context;

    .line 60
    const-string/jumbo v0, "layout_inflater"

    .line 59
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/letv/leui/widget/LePopupWindowAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 46
    return-void

    .line 55
    :cond_1
    const/16 v0, 0x14

    iput v0, p0, Lcom/letv/leui/widget/LePopupWindowAdapter;->mTypeNum:I

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;[Ljava/lang/CharSequence;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mItems"    # [Ljava/lang/CharSequence;
    .param p3, "layoutType"    # I

    .prologue
    .line 63
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 40
    const/4 v0, -0x1

    iput v0, p0, Lcom/letv/leui/widget/LePopupWindowAdapter;->mLayoutType:I

    .line 65
    iput-object p2, p0, Lcom/letv/leui/widget/LePopupWindowAdapter;->mItems:[Ljava/lang/CharSequence;

    .line 66
    iput p3, p0, Lcom/letv/leui/widget/LePopupWindowAdapter;->mLayoutType:I

    .line 67
    const/4 v0, 0x1

    iput v0, p0, Lcom/letv/leui/widget/LePopupWindowAdapter;->mTypeNum:I

    .line 69
    iput-object p1, p0, Lcom/letv/leui/widget/LePopupWindowAdapter;->mContext:Landroid/content/Context;

    .line 71
    const-string/jumbo v0, "layout_inflater"

    .line 70
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/letv/leui/widget/LePopupWindowAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 63
    return-void
.end method

.method private dip2px(F)I
    .locals 3
    .param p1, "dipValue"    # F

    .prologue
    .line 390
    iget-object v1, p0, Lcom/letv/leui/widget/LePopupWindowAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 391
    .local v0, "scale":F
    mul-float v1, p1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method


# virtual methods
.method public bottomDividerEnabled()Z
    .locals 1

    .prologue
    .line 354
    const/4 v0, 0x0

    return v0
.end method

.method public dividerEnabled(I)Z
    .locals 2
    .param p1, "position"    # I

    .prologue
    const/4 v1, 0x0

    .line 360
    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindowAdapter;->myList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindowAdapter;->myList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_0

    .line 361
    return v1

    .line 362
    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindowAdapter;->mItems:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindowAdapter;->mItems:[Ljava/lang/CharSequence;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_1

    .line 363
    return v1

    .line 365
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public forceDrawDivider(I)Z
    .locals 2
    .param p1, "position"    # I

    .prologue
    const/4 v1, 0x0

    .line 380
    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindowAdapter;->myList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindowAdapter;->myList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_0

    .line 381
    return v1

    .line 382
    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindowAdapter;->mItems:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindowAdapter;->mItems:[Ljava/lang/CharSequence;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_1

    .line 383
    return v1

    .line 385
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindowAdapter;->myList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindowAdapter;->myList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindowAdapter;->mItems:[Ljava/lang/CharSequence;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "arg0"    # I

    .prologue
    .line 85
    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindowAdapter;->myList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindowAdapter;->myList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindowAdapter;->mItems:[Ljava/lang/CharSequence;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "arg0"    # I

    .prologue
    .line 94
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 320
    iget v2, p0, Lcom/letv/leui/widget/LePopupWindowAdapter;->mLayoutType:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 321
    iget v2, p0, Lcom/letv/leui/widget/LePopupWindowAdapter;->mLayoutType:I

    return v2

    .line 323
    :cond_0
    iget-object v2, p0, Lcom/letv/leui/widget/LePopupWindowAdapter;->myList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/letv/leui/widget/LePopupWindowAdapter$ItemData;

    .line 324
    .local v0, "msg":Lcom/letv/leui/widget/LePopupWindowAdapter$ItemData;
    invoke-virtual {v0}, Lcom/letv/leui/widget/LePopupWindowAdapter$ItemData;->getType()I

    move-result v1

    .line 325
    .local v1, "type":I
    return v1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "arg2"    # Landroid/view/ViewGroup;

    .prologue
    const v11, -0xdc6a12

    const/high16 v10, 0x41940000    # 18.5f

    const/high16 v9, 0x41700000    # 15.0f

    const v8, -0xbebebf

    const/4 v7, 0x0

    .line 99
    invoke-virtual {p0}, Lcom/letv/leui/widget/LePopupWindowAdapter;->notifyDataSetChanged()V

    .line 101
    const/4 v2, 0x0

    .line 103
    .local v2, "textString":Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .line 104
    .local v1, "msg":Lcom/letv/leui/widget/LePopupWindowAdapter$ItemData;
    iget-object v4, p0, Lcom/letv/leui/widget/LePopupWindowAdapter;->myList:Ljava/util/List;

    if-eqz v4, :cond_0

    .line 105
    iget-object v4, p0, Lcom/letv/leui/widget/LePopupWindowAdapter;->myList:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "msg":Lcom/letv/leui/widget/LePopupWindowAdapter$ItemData;
    check-cast v1, Lcom/letv/leui/widget/LePopupWindowAdapter$ItemData;

    .line 106
    .local v1, "msg":Lcom/letv/leui/widget/LePopupWindowAdapter$ItemData;
    invoke-virtual {v1}, Lcom/letv/leui/widget/LePopupWindowAdapter$ItemData;->getMainText()Ljava/lang/CharSequence;

    move-result-object v2

    .line 111
    .end local v1    # "msg":Lcom/letv/leui/widget/LePopupWindowAdapter$ItemData;
    .local v2, "textString":Ljava/lang/CharSequence;
    :goto_0
    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/LePopupWindowAdapter;->getItemViewType(I)I

    move-result v3

    .line 112
    .local v3, "type":I
    const/4 v0, 0x0

    .line 114
    .local v0, "holder":Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;
    if-nez p2, :cond_6

    .line 115
    sparse-switch v3, :sswitch_data_0

    .line 308
    .end local v0    # "holder":Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;
    :goto_1
    return-object p2

    .line 109
    .end local v3    # "type":I
    .local v1, "msg":Lcom/letv/leui/widget/LePopupWindowAdapter$ItemData;
    .local v2, "textString":Ljava/lang/CharSequence;
    :cond_0
    iget-object v4, p0, Lcom/letv/leui/widget/LePopupWindowAdapter;->mItems:[Ljava/lang/CharSequence;

    aget-object v2, v4, p1

    .local v2, "textString":Ljava/lang/CharSequence;
    goto :goto_0

    .line 117
    .end local v1    # "msg":Lcom/letv/leui/widget/LePopupWindowAdapter$ItemData;
    .restart local v0    # "holder":Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;
    .restart local v3    # "type":I
    :sswitch_0
    const/4 v4, 0x1

    sput-boolean v4, Lcom/letv/leui/widget/LePopupWindowAdapter;->hasDoubleTxItem:Z

    .line 118
    new-instance v0, Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;

    .end local v0    # "holder":Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;
    invoke-direct {v0, p0}, Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;-><init>(Lcom/letv/leui/widget/LePopupWindowAdapter;)V

    .line 119
    .local v0, "holder":Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;
    iget-object v4, p0, Lcom/letv/leui/widget/LePopupWindowAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x10900b8

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 120
    const v4, 0x1020468

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-static {v0, v4}, Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;->-set2(Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 121
    const v4, 0x1020469

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-static {v0, v4}, Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;->-set3(Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 122
    const v4, 0x102046a

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/letv/leui/widget/LeCheckBox;

    invoke-static {v0, v4}, Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;->-set0(Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;Lcom/letv/leui/widget/LeCheckBox;)Lcom/letv/leui/widget/LeCheckBox;

    .line 124
    invoke-static {v0}, Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;->-get2(Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v1}, Lcom/letv/leui/widget/LePopupWindowAdapter$ItemData;->getMainText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    invoke-static {v0}, Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;->-get3(Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v1}, Lcom/letv/leui/widget/LePopupWindowAdapter$ItemData;->getSubText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    invoke-static {v0}, Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;->-get0(Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;)Lcom/letv/leui/widget/LeCheckBox;

    move-result-object v4

    invoke-virtual {v1}, Lcom/letv/leui/widget/LePopupWindowAdapter$ItemData;->getStutes()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/letv/leui/widget/LeCheckBox;->setChecked(Z)V

    .line 128
    invoke-virtual {v1}, Lcom/letv/leui/widget/LePopupWindowAdapter$ItemData;->getStutes()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 129
    invoke-static {v0}, Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;->-get2(Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 134
    :goto_2
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_1

    .line 131
    :cond_1
    invoke-static {v0}, Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;->-get2(Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2

    .line 138
    .local v0, "holder":Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;
    :sswitch_1
    const/4 v4, 0x1

    sput-boolean v4, Lcom/letv/leui/widget/LePopupWindowAdapter;->hasDoubleTxItem:Z

    .line 139
    new-instance v0, Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;

    .end local v0    # "holder":Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;
    invoke-direct {v0, p0}, Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;-><init>(Lcom/letv/leui/widget/LePopupWindowAdapter;)V

    .line 140
    .local v0, "holder":Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;
    iget-object v4, p0, Lcom/letv/leui/widget/LePopupWindowAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x10900b8

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 142
    const v4, 0x1020468

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-static {v0, v4}, Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;->-set2(Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 143
    const v4, 0x1020469

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-static {v0, v4}, Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;->-set3(Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 144
    const v4, 0x102046a

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/letv/leui/widget/LeCheckBox;

    invoke-static {v0, v4}, Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;->-set0(Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;Lcom/letv/leui/widget/LeCheckBox;)Lcom/letv/leui/widget/LeCheckBox;

    .line 145
    const v4, 0x102046b

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/letv/leui/widget/LeSwitch;

    invoke-static {v0, v4}, Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;->-set1(Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;Lcom/letv/leui/widget/LeSwitch;)Lcom/letv/leui/widget/LeSwitch;

    .line 147
    invoke-static {v0}, Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;->-get0(Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;)Lcom/letv/leui/widget/LeCheckBox;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lcom/letv/leui/widget/LeCheckBox;->setVisibility(I)V

    .line 148
    invoke-static {v0}, Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;->-get1(Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;)Lcom/letv/leui/widget/LeSwitch;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/letv/leui/widget/LeSwitch;->setVisibility(I)V

    .line 149
    invoke-static {v0}, Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;->-get2(Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v1}, Lcom/letv/leui/widget/LePopupWindowAdapter$ItemData;->getMainText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    invoke-static {v0}, Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;->-get3(Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v1}, Lcom/letv/leui/widget/LePopupWindowAdapter$ItemData;->getSubText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    invoke-static {v0}, Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;->-get1(Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;)Lcom/letv/leui/widget/LeSwitch;

    move-result-object v4

    invoke-virtual {v1}, Lcom/letv/leui/widget/LePopupWindowAdapter$ItemData;->getStutes()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/letv/leui/widget/LeSwitch;->setChecked(Z)V

    .line 152
    invoke-static {v0}, Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;->-get1(Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;)Lcom/letv/leui/widget/LeSwitch;

    move-result-object v4

    invoke-virtual {v4, v11}, Lcom/letv/leui/widget/LeSwitch;->setTrackColor(I)V

    .line 154
    invoke-static {v0}, Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;->-get2(Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 156
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 160
    .local v0, "holder":Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;
    :sswitch_2
    new-instance v0, Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;

    .end local v0    # "holder":Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;
    invoke-direct {v0, p0}, Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;-><init>(Lcom/letv/leui/widget/LePopupWindowAdapter;)V

    .line 161
    .local v0, "holder":Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;
    iget-object v4, p0, Lcom/letv/leui/widget/LePopupWindowAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x10900bb

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 162
    const v4, 0x1020468

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-static {v0, v4}, Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;->-set2(Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 163
    const v4, 0x102046a

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/letv/leui/widget/LeCheckBox;

    invoke-static {v0, v4}, Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;->-set0(Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;Lcom/letv/leui/widget/LeCheckBox;)Lcom/letv/leui/widget/LeCheckBox;

    .line 165
    invoke-static {v0}, Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;->-get0(Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;)Lcom/letv/leui/widget/LeCheckBox;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lcom/letv/leui/widget/LeCheckBox;->setVisibility(I)V

    .line 166
    invoke-static {v0}, Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;->-get2(Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v1}, Lcom/letv/leui/widget/LePopupWindowAdapter$ItemData;->getMainText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    sget-boolean v4, Lcom/letv/leui/widget/LePopupWindowAdapter;->hasDoubleTxItem:Z

    if-eqz v4, :cond_2

    .line 169
    invoke-static {v0}, Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;->-get2(Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;)Landroid/widget/TextView;

    move-result-object v4

    invoke-direct {p0, v10}, Lcom/letv/leui/widget/LePopupWindowAdapter;->dip2px(F)I

    move-result v5

    invoke-direct {p0, v10}, Lcom/letv/leui/widget/LePopupWindowAdapter;->dip2px(F)I

    move-result v6

    invoke-virtual {v4, v7, v5, v7, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 174
    :goto_3
    invoke-static {v0}, Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;->-get2(Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 176
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 171
    :cond_2
    invoke-static {v0}, Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;->-get2(Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;)Landroid/widget/TextView;

    move-result-object v4

    invoke-direct {p0, v9}, Lcom/letv/leui/widget/LePopupWindowAdapter;->dip2px(F)I

    move-result v5

    invoke-direct {p0, v9}, Lcom/letv/leui/widget/LePopupWindowAdapter;->dip2px(F)I

    move-result v6

    invoke-virtual {v4, v7, v5, v7, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_3

    .line 180
    .local v0, "holder":Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;
    :sswitch_3
    new-instance v0, Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;

    .end local v0    # "holder":Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;
    invoke-direct {v0, p0}, Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;-><init>(Lcom/letv/leui/widget/LePopupWindowAdapter;)V

    .line 181
    .local v0, "holder":Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;
    iget-object v4, p0, Lcom/letv/leui/widget/LePopupWindowAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x10900bb

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 182
    const v4, 0x1020468

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-static {v0, v4}, Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;->-set2(Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 183
    const v4, 0x102046a

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/letv/leui/widget/LeCheckBox;

    invoke-static {v0, v4}, Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;->-set0(Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;Lcom/letv/leui/widget/LeCheckBox;)Lcom/letv/leui/widget/LeCheckBox;

    .line 185
    invoke-static {v0}, Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;->-get2(Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v1}, Lcom/letv/leui/widget/LePopupWindowAdapter$ItemData;->getMainText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    invoke-static {v0}, Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;->-get0(Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;)Lcom/letv/leui/widget/LeCheckBox;

    move-result-object v4

    invoke-virtual {v1}, Lcom/letv/leui/widget/LePopupWindowAdapter$ItemData;->getStutes()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/letv/leui/widget/LeCheckBox;->setChecked(Z)V

    .line 188
    sget-boolean v4, Lcom/letv/leui/widget/LePopupWindowAdapter;->hasDoubleTxItem:Z

    if-eqz v4, :cond_3

    .line 189
    invoke-static {v0}, Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;->-get2(Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;)Landroid/widget/TextView;

    move-result-object v4

    invoke-direct {p0, v10}, Lcom/letv/leui/widget/LePopupWindowAdapter;->dip2px(F)I

    move-result v5

    invoke-direct {p0, v10}, Lcom/letv/leui/widget/LePopupWindowAdapter;->dip2px(F)I

    move-result v6

    invoke-virtual {v4, v7, v5, v7, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 194
    :goto_4
    invoke-virtual {v1}, Lcom/letv/leui/widget/LePopupWindowAdapter$ItemData;->getStutes()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 195
    invoke-static {v0}, Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;->-get2(Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 200
    :goto_5
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 191
    :cond_3
    invoke-static {v0}, Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;->-get2(Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;)Landroid/widget/TextView;

    move-result-object v4

    invoke-direct {p0, v9}, Lcom/letv/leui/widget/LePopupWindowAdapter;->dip2px(F)I

    move-result v5

    invoke-direct {p0, v9}, Lcom/letv/leui/widget/LePopupWindowAdapter;->dip2px(F)I

    move-result v6

    invoke-virtual {v4, v7, v5, v7, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_4

    .line 197
    :cond_4
    invoke-static {v0}, Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;->-get2(Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_5

    .line 204
    .local v0, "holder":Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;
    :sswitch_4
    new-instance v0, Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;

    .end local v0    # "holder":Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;
    invoke-direct {v0, p0}, Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;-><init>(Lcom/letv/leui/widget/LePopupWindowAdapter;)V

    .line 205
    .local v0, "holder":Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;
    iget-object v4, p0, Lcom/letv/leui/widget/LePopupWindowAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x10900ba

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 206
    const v4, 0x1020468

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-static {v0, v4}, Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;->-set2(Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 207
    const v4, 0x102046a

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/letv/leui/widget/LeCheckBox;

    invoke-static {v0, v4}, Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;->-set0(Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;Lcom/letv/leui/widget/LeCheckBox;)Lcom/letv/leui/widget/LeCheckBox;

    .line 209
    invoke-static {v0}, Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;->-get2(Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    invoke-static {v0}, Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;->-get0(Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;)Lcom/letv/leui/widget/LeCheckBox;

    move-result-object v4

    invoke-virtual {v4}, Lcom/letv/leui/widget/LeCheckBox;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 212
    invoke-static {v0}, Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;->-get2(Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 217
    :goto_6
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 214
    :cond_5
    invoke-static {v0}, Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;->-get2(Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_6

    .line 224
    .local v0, "holder":Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;
    :cond_6
    sparse-switch v3, :sswitch_data_1

    goto/16 :goto_1

    .line 251
    :sswitch_5
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "holder":Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;
    check-cast v0, Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;

    .line 252
    .local v0, "holder":Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;
    invoke-static {v0}, Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;->-get2(Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v1}, Lcom/letv/leui/widget/LePopupWindowAdapter$ItemData;->getMainText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 254
    sget-boolean v4, Lcom/letv/leui/widget/LePopupWindowAdapter;->hasDoubleTxItem:Z

    if-eqz v4, :cond_8

    .line 255
    invoke-static {v0}, Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;->-get2(Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;)Landroid/widget/TextView;

    move-result-object v4

    invoke-direct {p0, v10}, Lcom/letv/leui/widget/LePopupWindowAdapter;->dip2px(F)I

    move-result v5

    invoke-direct {p0, v10}, Lcom/letv/leui/widget/LePopupWindowAdapter;->dip2px(F)I

    move-result v6

    invoke-virtual {v4, v7, v5, v7, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 260
    :goto_7
    invoke-static {v0}, Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;->-get2(Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 262
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 226
    .local v0, "holder":Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;
    :sswitch_6
    const/4 v4, 0x1

    sput-boolean v4, Lcom/letv/leui/widget/LePopupWindowAdapter;->hasDoubleTxItem:Z

    .line 227
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "holder":Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;
    check-cast v0, Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;

    .line 228
    .local v0, "holder":Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;
    invoke-static {v0}, Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;->-get2(Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v1}, Lcom/letv/leui/widget/LePopupWindowAdapter$ItemData;->getMainText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 229
    invoke-static {v0}, Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;->-get3(Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v1}, Lcom/letv/leui/widget/LePopupWindowAdapter$ItemData;->getSubText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 230
    invoke-static {v0}, Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;->-get0(Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;)Lcom/letv/leui/widget/LeCheckBox;

    move-result-object v4

    invoke-virtual {v1}, Lcom/letv/leui/widget/LePopupWindowAdapter$ItemData;->getStutes()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/letv/leui/widget/LeCheckBox;->setChecked(Z)V

    .line 232
    invoke-virtual {v1}, Lcom/letv/leui/widget/LePopupWindowAdapter$ItemData;->getStutes()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 233
    invoke-static {v0}, Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;->-get2(Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1

    .line 235
    :cond_7
    invoke-static {v0}, Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;->-get2(Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1

    .line 240
    .local v0, "holder":Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;
    :sswitch_7
    const/4 v4, 0x1

    sput-boolean v4, Lcom/letv/leui/widget/LePopupWindowAdapter;->hasDoubleTxItem:Z

    .line 241
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "holder":Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;
    check-cast v0, Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;

    .line 242
    .local v0, "holder":Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;
    invoke-static {v0}, Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;->-get2(Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v1}, Lcom/letv/leui/widget/LePopupWindowAdapter$ItemData;->getMainText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 243
    invoke-static {v0}, Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;->-get3(Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v1}, Lcom/letv/leui/widget/LePopupWindowAdapter$ItemData;->getSubText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 244
    invoke-static {v0}, Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;->-get1(Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;)Lcom/letv/leui/widget/LeSwitch;

    move-result-object v4

    invoke-virtual {v1}, Lcom/letv/leui/widget/LePopupWindowAdapter$ItemData;->getStutes()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/letv/leui/widget/LeSwitch;->setChecked(Z)V

    .line 246
    invoke-static {v0}, Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;->-get2(Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1

    .line 257
    :cond_8
    invoke-static {v0}, Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;->-get2(Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;)Landroid/widget/TextView;

    move-result-object v4

    invoke-direct {p0, v9}, Lcom/letv/leui/widget/LePopupWindowAdapter;->dip2px(F)I

    move-result v5

    invoke-direct {p0, v9}, Lcom/letv/leui/widget/LePopupWindowAdapter;->dip2px(F)I

    move-result v6

    invoke-virtual {v4, v7, v5, v7, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    goto/16 :goto_7

    .line 266
    .local v0, "holder":Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;
    :sswitch_8
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "holder":Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;
    check-cast v0, Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;

    .line 267
    .local v0, "holder":Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;
    invoke-static {v0}, Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;->-get2(Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v1}, Lcom/letv/leui/widget/LePopupWindowAdapter$ItemData;->getMainText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 268
    invoke-static {v0}, Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;->-get0(Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;)Lcom/letv/leui/widget/LeCheckBox;

    move-result-object v4

    invoke-virtual {v1}, Lcom/letv/leui/widget/LePopupWindowAdapter$ItemData;->getStutes()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/letv/leui/widget/LeCheckBox;->setChecked(Z)V

    .line 270
    sget-boolean v4, Lcom/letv/leui/widget/LePopupWindowAdapter;->hasDoubleTxItem:Z

    if-eqz v4, :cond_9

    .line 271
    invoke-static {v0}, Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;->-get2(Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;)Landroid/widget/TextView;

    move-result-object v4

    invoke-direct {p0, v10}, Lcom/letv/leui/widget/LePopupWindowAdapter;->dip2px(F)I

    move-result v5

    invoke-direct {p0, v10}, Lcom/letv/leui/widget/LePopupWindowAdapter;->dip2px(F)I

    move-result v6

    invoke-virtual {v4, v7, v5, v7, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 276
    :goto_8
    invoke-virtual {v1}, Lcom/letv/leui/widget/LePopupWindowAdapter$ItemData;->getStutes()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 277
    invoke-static {v0}, Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;->-get2(Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1

    .line 273
    :cond_9
    invoke-static {v0}, Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;->-get2(Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;)Landroid/widget/TextView;

    move-result-object v4

    invoke-direct {p0, v9}, Lcom/letv/leui/widget/LePopupWindowAdapter;->dip2px(F)I

    move-result v5

    invoke-direct {p0, v9}, Lcom/letv/leui/widget/LePopupWindowAdapter;->dip2px(F)I

    move-result v6

    invoke-virtual {v4, v7, v5, v7, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_8

    .line 279
    :cond_a
    invoke-static {v0}, Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;->-get2(Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1

    .line 285
    .local v0, "holder":Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;
    :sswitch_9
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "holder":Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;
    check-cast v0, Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;

    .line 286
    .local v0, "holder":Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;
    invoke-static {v0}, Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;->-get2(Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 288
    invoke-static {v0}, Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;->-get0(Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;)Lcom/letv/leui/widget/LeCheckBox;

    move-result-object v4

    invoke-virtual {v4}, Lcom/letv/leui/widget/LeCheckBox;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 289
    invoke-static {v0}, Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;->-get2(Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 294
    :goto_9
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 291
    :cond_b
    invoke-static {v0}, Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;->-get2(Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_9

    .line 115
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x1 -> :sswitch_3
        0x2 -> :sswitch_4
        0xb -> :sswitch_0
        0xd -> :sswitch_1
    .end sparse-switch

    .line 224
    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_5
        0x1 -> :sswitch_8
        0x2 -> :sswitch_9
        0xb -> :sswitch_6
        0xd -> :sswitch_7
    .end sparse-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 334
    iget v0, p0, Lcom/letv/leui/widget/LePopupWindowAdapter;->mTypeNum:I

    return v0
.end method

.method public leftDividerMargin(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 370
    const/high16 v0, 0x41800000    # 16.0f

    invoke-direct {p0, v0}, Lcom/letv/leui/widget/LePopupWindowAdapter;->dip2px(F)I

    move-result v0

    return v0
.end method

.method public rightDividerMargin(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 375
    const/high16 v0, 0x41800000    # 16.0f

    invoke-direct {p0, v0}, Lcom/letv/leui/widget/LePopupWindowAdapter;->dip2px(F)I

    move-result v0

    return v0
.end method

.method public topDividerEnabled()Z
    .locals 1

    .prologue
    .line 349
    const/4 v0, 0x0

    return v0
.end method
