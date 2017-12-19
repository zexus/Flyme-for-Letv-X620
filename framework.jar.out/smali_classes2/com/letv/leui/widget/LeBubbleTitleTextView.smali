.class public Lcom/letv/leui/widget/LeBubbleTitleTextView;
.super Lcom/letv/leui/widget/LeBubbleView;
.source "LeBubbleTitleTextView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private cancelImage:Landroid/widget/ImageView;

.field private contentTextView:Landroid/widget/TextView;

.field private titleText:Ljava/lang/String;

.field private titleTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/letv/leui/widget/LeBubbleView;-><init>(Landroid/content/Context;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lcom/letv/leui/widget/LeBubbleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 63
    invoke-direct {p0, p1, p2, p3}, Lcom/letv/leui/widget/LeBubbleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 62
    return-void
.end method

.method private increaseClickArea()V
    .locals 5

    .prologue
    .line 133
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 134
    .local v0, "conRlRect":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/letv/leui/widget/LeBubbleTitleTextView;->conRl:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->getHitRect(Landroid/graphics/Rect;)V

    .line 135
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 138
    .local v1, "rect":Landroid/graphics/Rect;
    iget v2, v1, Landroid/graphics/Rect;->right:I

    div-int/lit8 v2, v2, 0x2

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 141
    iget-object v2, p0, Lcom/letv/leui/widget/LeBubbleTitleTextView;->conRl:Landroid/widget/RelativeLayout;

    new-instance v3, Landroid/view/TouchDelegate;

    iget-object v4, p0, Lcom/letv/leui/widget/LeBubbleTitleTextView;->cancelImage:Landroid/widget/ImageView;

    invoke-direct {v3, v1, v4}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    .line 132
    return-void
.end method

.method private initCancelImageView()V
    .locals 2

    .prologue
    .line 72
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/letv/leui/widget/LeBubbleTitleTextView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/letv/leui/widget/LeBubbleTitleTextView;->cancelImage:Landroid/widget/ImageView;

    .line 71
    return-void
.end method

.method private initCancelView(I)V
    .locals 9
    .param p1, "conRlw"    # I

    .prologue
    const/high16 v8, 0x41500000    # 13.0f

    const/high16 v7, 0x41000000    # 8.0f

    .line 111
    iget-object v5, p0, Lcom/letv/leui/widget/LeBubbleTitleTextView;->cancelImage:Landroid/widget/ImageView;

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setId(I)V

    .line 112
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0, v8}, Lcom/letv/leui/widget/LeBubbleTitleTextView;->dip2px(F)I

    move-result v5

    invoke-virtual {p0, v8}, Lcom/letv/leui/widget/LeBubbleTitleTextView;->dip2px(F)I

    move-result v6

    invoke-direct {v2, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 114
    .local v2, "cancelParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v5, 0xa

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 115
    const/high16 v5, 0x41b00000    # 22.0f

    invoke-virtual {p0, v5}, Lcom/letv/leui/widget/LeBubbleTitleTextView;->dip2px(F)I

    move-result v5

    sub-int v5, p1, v5

    invoke-virtual {p0, v7}, Lcom/letv/leui/widget/LeBubbleTitleTextView;->dip2px(F)I

    move-result v6

    invoke-virtual {p0, v7}, Lcom/letv/leui/widget/LeBubbleTitleTextView;->dip2px(F)I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {v2, v5, v6, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 116
    iget-object v5, p0, Lcom/letv/leui/widget/LeBubbleTitleTextView;->cancelImage:Landroid/widget/ImageView;

    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 118
    const v0, 0x1080515

    .line 119
    .local v0, "cancel":I
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeBubbleTitleTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v5, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 121
    .local v4, "source":Landroid/graphics/Bitmap;
    iget v5, p0, Lcom/letv/leui/widget/LeBubbleTitleTextView;->curStyle:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 122
    const-string/jumbo v5, "#99FFFFFF"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    .line 126
    .local v3, "color":I
    :goto_0
    new-instance v1, Lcom/letv/leui/widget/TintedBitmapDrawable;

    iget-object v5, p0, Lcom/letv/leui/widget/LeBubbleTitleTextView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-direct {v1, v5, v4, v3}, Lcom/letv/leui/widget/TintedBitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;I)V

    .line 127
    .local v1, "cancelBitmapDrawable":Lcom/letv/leui/widget/TintedBitmapDrawable;
    iget-object v5, p0, Lcom/letv/leui/widget/LeBubbleTitleTextView;->cancelImage:Landroid/widget/ImageView;

    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 129
    invoke-direct {p0}, Lcom/letv/leui/widget/LeBubbleTitleTextView;->increaseClickArea()V

    .line 110
    return-void

    .line 124
    .end local v1    # "cancelBitmapDrawable":Lcom/letv/leui/widget/TintedBitmapDrawable;
    .end local v3    # "color":I
    :cond_0
    const-string/jumbo v5, "#99000000"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    .restart local v3    # "color":I
    goto :goto_0
.end method

.method private initContentTextView(ILjava/lang/String;)V
    .locals 5
    .param p1, "textColor"    # I
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    const/4 v4, -0x2

    const/high16 v3, 0x41b00000    # 22.0f

    .line 76
    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/letv/leui/widget/LeBubbleTitleTextView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/letv/leui/widget/LeBubbleTitleTextView;->contentTextView:Landroid/widget/TextView;

    .line 77
    iget-object v1, p0, Lcom/letv/leui/widget/LeBubbleTitleTextView;->contentTextView:Landroid/widget/TextView;

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setId(I)V

    .line 78
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 79
    .local v0, "contentTvParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0, v3}, Lcom/letv/leui/widget/LeBubbleTitleTextView;->dip2px(F)I

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p0, v2}, Lcom/letv/leui/widget/LeBubbleTitleTextView;->dip2px(F)I

    move-result v2

    invoke-virtual {p0, v3}, Lcom/letv/leui/widget/LeBubbleTitleTextView;->dip2px(F)I

    move-result v3

    const/high16 v4, 0x41700000    # 15.0f

    invoke-virtual {p0, v4}, Lcom/letv/leui/widget/LeBubbleTitleTextView;->dip2px(F)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 81
    iget-object v1, p0, Lcom/letv/leui/widget/LeBubbleTitleTextView;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getId()I

    move-result v1

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 82
    iget-object v1, p0, Lcom/letv/leui/widget/LeBubbleTitleTextView;->contentTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 84
    iget-object v1, p0, Lcom/letv/leui/widget/LeBubbleTitleTextView;->contentTextView:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 85
    iget-object v1, p0, Lcom/letv/leui/widget/LeBubbleTitleTextView;->contentTextView:Landroid/widget/TextView;

    const/high16 v2, 0x41600000    # 14.0f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 87
    iget-object v1, p0, Lcom/letv/leui/widget/LeBubbleTitleTextView;->contentTextView:Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    return-void
.end method

.method private initTitleTextView(I)V
    .locals 6
    .param p1, "textColor"    # I

    .prologue
    const/4 v4, -0x2

    const/high16 v3, 0x41b00000    # 22.0f

    const/4 v5, 0x1

    .line 91
    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/letv/leui/widget/LeBubbleTitleTextView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/letv/leui/widget/LeBubbleTitleTextView;->titleTextView:Landroid/widget/TextView;

    .line 92
    iget-object v1, p0, Lcom/letv/leui/widget/LeBubbleTitleTextView;->titleTextView:Landroid/widget/TextView;

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setId(I)V

    .line 93
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 94
    .local v0, "titleTvParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0, v3}, Lcom/letv/leui/widget/LeBubbleTitleTextView;->dip2px(F)I

    move-result v1

    const/high16 v2, 0x41700000    # 15.0f

    invoke-virtual {p0, v2}, Lcom/letv/leui/widget/LeBubbleTitleTextView;->dip2px(F)I

    move-result v2

    invoke-virtual {p0, v3}, Lcom/letv/leui/widget/LeBubbleTitleTextView;->dip2px(F)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 95
    iget-object v1, p0, Lcom/letv/leui/widget/LeBubbleTitleTextView;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 96
    iget-object v1, p0, Lcom/letv/leui/widget/LeBubbleTitleTextView;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 98
    iget v1, p0, Lcom/letv/leui/widget/LeBubbleTitleTextView;->curStyle:I

    if-ne v1, v5, :cond_0

    .line 99
    iget-object v1, p0, Lcom/letv/leui/widget/LeBubbleTitleTextView;->titleTextView:Landroid/widget/TextView;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 103
    :goto_0
    iget-object v1, p0, Lcom/letv/leui/widget/LeBubbleTitleTextView;->titleTextView:Landroid/widget/TextView;

    const/high16 v2, 0x41880000    # 17.0f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 105
    iget-object v1, p0, Lcom/letv/leui/widget/LeBubbleTitleTextView;->titleTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/letv/leui/widget/LeBubbleTitleTextView;->titleText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v5}, Ljava/io/PrintStream;->print(I)V

    .line 90
    return-void

    .line 101
    :cond_0
    iget-object v1, p0, Lcom/letv/leui/widget/LeBubbleTitleTextView;->titleTextView:Landroid/widget/TextView;

    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method


# virtual methods
.method public getCancelImage()Landroid/view/View;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/letv/leui/widget/LeBubbleTitleTextView;->cancelImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method protected initChildView(FIIFLjava/lang/String;)V
    .locals 2
    .param p1, "radius"    # F
    .param p2, "backgroundColor"    # I
    .param p3, "textColor"    # I
    .param p4, "textSize"    # F
    .param p5, "content"    # Ljava/lang/String;

    .prologue
    .line 147
    invoke-super/range {p0 .. p5}, Lcom/letv/leui/widget/LeBubbleView;->initChildView(FIIFLjava/lang/String;)V

    .line 149
    invoke-direct {p0}, Lcom/letv/leui/widget/LeBubbleTitleTextView;->initCancelImageView()V

    .line 151
    invoke-direct {p0, p3}, Lcom/letv/leui/widget/LeBubbleTitleTextView;->initTitleTextView(I)V

    .line 152
    iget-object v0, p0, Lcom/letv/leui/widget/LeBubbleTitleTextView;->conRl:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/letv/leui/widget/LeBubbleTitleTextView;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 154
    invoke-direct {p0, p3, p5}, Lcom/letv/leui/widget/LeBubbleTitleTextView;->initContentTextView(ILjava/lang/String;)V

    .line 155
    iget-object v0, p0, Lcom/letv/leui/widget/LeBubbleTitleTextView;->conRl:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/letv/leui/widget/LeBubbleTitleTextView;->contentTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 146
    return-void
.end method

.method protected onInitialize(Landroid/util/AttributeSet;ILandroid/content/res/TypedArray;)V
    .locals 1
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "defStyleAttr"    # I
    .param p3, "a"    # Landroid/content/res/TypedArray;

    .prologue
    .line 68
    const/4 v0, 0x5

    invoke-virtual {p3, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/leui/widget/LeBubbleTitleTextView;->titleText:Ljava/lang/String;

    .line 67
    return-void
.end method

.method protected onPostCallBack(II)V
    .locals 2
    .param p1, "conRlw"    # I
    .param p2, "conRlh"    # I

    .prologue
    .line 164
    invoke-super {p0, p1, p2}, Lcom/letv/leui/widget/LeBubbleView;->onPostCallBack(II)V

    .line 166
    invoke-direct {p0, p1}, Lcom/letv/leui/widget/LeBubbleTitleTextView;->initCancelView(I)V

    .line 167
    iget-object v0, p0, Lcom/letv/leui/widget/LeBubbleTitleTextView;->conRl:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/letv/leui/widget/LeBubbleTitleTextView;->cancelImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 163
    return-void
.end method

.method public setCancelImageOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "l"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 159
    iget-object v0, p0, Lcom/letv/leui/widget/LeBubbleTitleTextView;->cancelImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    return-void
.end method
