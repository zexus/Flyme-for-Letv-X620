.class public Lcom/letv/leui/widget/LeRadioPopupWindow;
.super Lcom/letv/leui/widget/LePinnedPopupWindow;
.source "LeRadioPopupWindow.java"


# instance fields
.field private mBoxInnerPadding:I

.field private mSelectedColor:Landroid/content/res/ColorStateList;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/letv/leui/widget/LeRadioPopupWindow;-><init>(Landroid/content/Context;Z)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isLayoutHorizontal"    # Z

    .prologue
    const/4 v1, 0x0

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/letv/leui/widget/LePinnedPopupWindow;-><init>(Landroid/content/Context;Z)V

    .line 21
    const/4 v0, -0x1

    iput v0, p0, Lcom/letv/leui/widget/LeRadioPopupWindow;->mBoxInnerPadding:I

    .line 30
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeRadioPopupWindow;->setPopupItemGravity(I)V

    .line 31
    invoke-virtual {p0, v1}, Lcom/letv/leui/widget/LeRadioPopupWindow;->setClipToScreenEnabled(Z)V

    .line 32
    invoke-virtual {p0, v1}, Lcom/letv/leui/widget/LeRadioPopupWindow;->setClippingEnabled(Z)V

    .line 28
    return-void
.end method


# virtual methods
.method protected addTextView(Ljava/lang/CharSequence;IIILcom/letv/leui/widget/LePinnedPopupWindow$OnItemClickListener;)Landroid/widget/TextView;
    .locals 7
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "id"    # I
    .param p3, "position"    # I
    .param p4, "length"    # I
    .param p5, "listener"    # Lcom/letv/leui/widget/LePinnedPopupWindow$OnItemClickListener;

    .prologue
    const/4 v6, -0x2

    const/4 v5, -0x1

    .line 84
    invoke-super/range {p0 .. p5}, Lcom/letv/leui/widget/LePinnedPopupWindow;->addTextView(Ljava/lang/CharSequence;IIILcom/letv/leui/widget/LePinnedPopupWindow$OnItemClickListener;)Landroid/widget/TextView;

    move-result-object v3

    .line 86
    .local v3, "textView":Landroid/widget/TextView;
    instance-of v4, v3, Lcom/letv/leui/widget/LeRadioButton;

    if-eqz v4, :cond_2

    move-object v2, v3

    .line 87
    check-cast v2, Lcom/letv/leui/widget/LeRadioButton;

    .line 88
    .local v2, "radioButton":Lcom/letv/leui/widget/LeRadioButton;
    invoke-virtual {v2}, Lcom/letv/leui/widget/LeRadioButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 89
    .local v1, "params":Landroid/view/ViewGroup$LayoutParams;
    if-nez v1, :cond_3

    .line 90
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    .end local v1    # "params":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v1, v5, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 98
    .restart local v1    # "params":Landroid/view/ViewGroup$LayoutParams;
    :goto_0
    invoke-virtual {v2, p2}, Lcom/letv/leui/widget/LeRadioButton;->setId(I)V

    .line 99
    iget-object v4, p0, Lcom/letv/leui/widget/LeRadioPopupWindow;->mSelectedColor:Landroid/content/res/ColorStateList;

    if-eqz v4, :cond_0

    .line 100
    iget-object v4, p0, Lcom/letv/leui/widget/LeRadioPopupWindow;->mSelectedColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v4}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/letv/leui/widget/LeRadioButton;->setArrowColorWithoutBorder(I)V

    .line 101
    iget-object v4, p0, Lcom/letv/leui/widget/LeRadioPopupWindow;->mSelectedColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v4}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v4

    invoke-virtual {v2, v2, v4}, Lcom/letv/leui/widget/LeRadioButton;->attachAnimateToTextViewColor(Landroid/widget/TextView;I)V

    .line 103
    :cond_0
    iget v4, p0, Lcom/letv/leui/widget/LeRadioPopupWindow;->mBoxInnerPadding:I

    if-ne v4, v5, :cond_1

    .line 104
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    .line 105
    .local v0, "paint":Landroid/text/TextPaint;
    invoke-virtual {v3}, Landroid/widget/TextView;->getTextSize()F

    move-result v4

    invoke-virtual {v0, v4}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 106
    const-string/jumbo v4, "\u3000"

    invoke-virtual {v0, v4}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/letv/leui/widget/LeRadioPopupWindow;->mBoxInnerPadding:I

    .line 108
    .end local v0    # "paint":Landroid/text/TextPaint;
    :cond_1
    iget v4, p0, Lcom/letv/leui/widget/LeRadioPopupWindow;->mBoxInnerPadding:I

    invoke-virtual {v2, v4}, Lcom/letv/leui/widget/LeRadioButton;->setBoxInnerPadding(I)V

    .line 110
    .end local v1    # "params":Landroid/view/ViewGroup$LayoutParams;
    .end local v2    # "radioButton":Lcom/letv/leui/widget/LeRadioButton;
    :cond_2
    return-object v3

    .line 95
    .restart local v1    # "params":Landroid/view/ViewGroup$LayoutParams;
    .restart local v2    # "radioButton":Lcom/letv/leui/widget/LeRadioButton;
    :cond_3
    iput v5, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 96
    iput v6, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0
.end method

.method public check(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 56
    iget-object v0, p0, Lcom/letv/leui/widget/LeRadioPopupWindow;->mContentView:Landroid/view/ViewGroup;

    instance-of v0, v0, Landroid/widget/RadioGroup;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/letv/leui/widget/LeRadioPopupWindow;->mContentView:Landroid/view/ViewGroup;

    check-cast v0, Landroid/widget/RadioGroup;

    invoke-virtual {v0, p1}, Landroid/widget/RadioGroup;->check(I)V

    .line 55
    :cond_0
    return-void
.end method

.method public getCheckedRadioButtonId()I
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/letv/leui/widget/LeRadioPopupWindow;->mContentView:Landroid/view/ViewGroup;

    instance-of v0, v0, Landroid/widget/RadioGroup;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/letv/leui/widget/LeRadioPopupWindow;->mContentView:Landroid/view/ViewGroup;

    check-cast v0, Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    return v0

    .line 65
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getContainView(Landroid/content/Context;)Landroid/view/ViewGroup;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, -0x2

    .line 37
    iget-object v3, p0, Lcom/letv/leui/widget/LeRadioPopupWindow;->mContentView:Landroid/view/ViewGroup;

    if-nez v3, :cond_0

    .line 38
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeRadioPopupWindow;->isLayoutHorizontal()Z

    move-result v1

    .line 39
    .local v1, "isHorizontal":Z
    new-instance v2, Landroid/widget/RadioGroup;

    invoke-direct {v2, p1}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;)V

    .line 40
    .local v2, "radioGroup":Landroid/widget/RadioGroup;
    if-eqz v1, :cond_1

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v2, v3}, Landroid/widget/RadioGroup;->setOrientation(I)V

    .line 41
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 43
    .local v0, "contentParams":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v2, v0}, Landroid/widget/RadioGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 45
    const v3, 0x10805bf

    .line 44
    invoke-virtual {v2, v3}, Landroid/widget/RadioGroup;->setBackgroundResource(I)V

    .line 46
    iput-object v2, p0, Lcom/letv/leui/widget/LeRadioPopupWindow;->mContentView:Landroid/view/ViewGroup;

    .line 48
    .end local v0    # "contentParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v1    # "isHorizontal":Z
    .end local v2    # "radioGroup":Landroid/widget/RadioGroup;
    :cond_0
    iget-object v3, p0, Lcom/letv/leui/widget/LeRadioPopupWindow;->mContentView:Landroid/view/ViewGroup;

    return-object v3

    .line 40
    .restart local v1    # "isHorizontal":Z
    .restart local v2    # "radioGroup":Landroid/widget/RadioGroup;
    :cond_1
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public getPopupItemLayoutResId()I
    .locals 1

    .prologue
    .line 52
    const v0, 0x10900ae

    return v0
.end method

.method public getRadioGroup()Landroid/widget/RadioGroup;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/letv/leui/widget/LeRadioPopupWindow;->mContentView:Landroid/view/ViewGroup;

    check-cast v0, Landroid/widget/RadioGroup;

    return-object v0
.end method

.method public setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/widget/RadioGroup$OnCheckedChangeListener;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/letv/leui/widget/LeRadioPopupWindow;->mContentView:Landroid/view/ViewGroup;

    instance-of v0, v0, Landroid/widget/RadioGroup;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/letv/leui/widget/LeRadioPopupWindow;->mContentView:Landroid/view/ViewGroup;

    check-cast v0, Landroid/widget/RadioGroup;

    invoke-virtual {v0, p1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 76
    :cond_0
    return-void
.end method

.method public setSelectedColor(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1, "color"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/letv/leui/widget/LeRadioPopupWindow;->mSelectedColor:Landroid/content/res/ColorStateList;

    .line 72
    return-void
.end method
