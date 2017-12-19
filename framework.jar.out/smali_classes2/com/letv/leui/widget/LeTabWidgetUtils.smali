.class public Lcom/letv/leui/widget/LeTabWidgetUtils;
.super Ljava/lang/Object;
.source "LeTabWidgetUtils.java"


# static fields
.field private static final SCALE_TAB_WIDTH_IF_1_TAB_ONLY:F = 3.0f


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createDefaultFloatingView(Landroid/view/LayoutInflater;I)Landroid/view/View;
    .locals 4
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "floatIconId"    # I

    .prologue
    .line 243
    const v1, 0x10900df

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 244
    .local v0, "view":Landroid/widget/ImageView;
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 245
    return-object v0
.end method

.method public static createDefaultFloatingViewLayoutParams(Landroid/content/Context;)Landroid/view/WindowManager$LayoutParams;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    const/4 v2, -0x2

    .line 249
    if-nez p0, :cond_0

    .line 250
    return-object v1

    .line 252
    :cond_0
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 254
    .local v0, "wmParams":Landroid/view/WindowManager$LayoutParams;
    const/4 v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 255
    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 257
    const v1, 0x40028

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 260
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 261
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 262
    const/4 v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 263
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050140

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 264
    const/16 v1, 0x50

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 265
    return-object v0
.end method

.method public static createFloatingIndicatorView(Landroid/view/LayoutInflater;Landroid/widget/TabWidget;ILjava/lang/String;Landroid/view/View;)Landroid/view/View;
    .locals 4
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "tw"    # Landroid/widget/TabWidget;
    .param p2, "iconId"    # I
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "floatingView"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 275
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 276
    :cond_0
    return-object v3

    .line 275
    :cond_1
    if-eqz p4, :cond_0

    .line 278
    invoke-static {p0, p1, p2, p3}, Lcom/letv/leui/widget/LeTabWidgetUtils;->createIndicatorView(Landroid/view/LayoutInflater;Landroid/widget/TabWidget;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 280
    .local v0, "normalView":Landroid/view/View;
    new-instance v2, Lcom/letv/leui/widget/LeOverflowTab;

    invoke-virtual {p1}, Landroid/widget/TabWidget;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/letv/leui/widget/LeOverflowTab;-><init>(Landroid/content/Context;)V

    .line 282
    .local v2, "view":Lcom/letv/leui/widget/LeOverflowTab;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 283
    .local v1, "params2":Landroid/widget/LinearLayout$LayoutParams;
    if-eqz v1, :cond_2

    .line 284
    invoke-virtual {v2, v1}, Lcom/letv/leui/widget/LeOverflowTab;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 287
    :cond_2
    invoke-virtual {v2, v0}, Lcom/letv/leui/widget/LeOverflowTab;->setNormalView(Landroid/view/View;)V

    .line 288
    invoke-virtual {v2, p4}, Lcom/letv/leui/widget/LeOverflowTab;->setFloatView(Landroid/view/View;)V

    .line 290
    return-object v2
.end method

.method public static createIndicatorView(Landroid/view/LayoutInflater;Landroid/widget/TabWidget;ILjava/lang/String;)Landroid/view/View;
    .locals 5
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "tw"    # Landroid/widget/TabWidget;
    .param p2, "iconId"    # I
    .param p3, "title"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 82
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 83
    :cond_0
    return-object v3

    .line 85
    :cond_1
    const/4 v2, 0x0

    .line 86
    .local v2, "v":Landroid/view/View;
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 93
    :cond_2
    const v3, 0x1090081

    invoke-virtual {p0, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 96
    .local v2, "v":Landroid/view/View;
    :goto_0
    const v3, 0x1020006

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 97
    .local v0, "imgView":Landroid/widget/ImageView;
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 99
    return-object v2

    .line 88
    .end local v0    # "imgView":Landroid/widget/ImageView;
    .local v2, "v":Landroid/view/View;
    :cond_3
    const v3, 0x1090082

    invoke-virtual {p0, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 89
    .local v2, "v":Landroid/view/View;
    const v3, 0x1020016

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 90
    .local v1, "tv":Landroid/widget/TextView;
    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private static hasTitle(Landroid/widget/TabWidget;)Z
    .locals 6
    .param p0, "tw"    # Landroid/widget/TabWidget;

    .prologue
    const/4 v5, 0x1

    .line 103
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 104
    invoke-virtual {p0, v0}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 105
    .local v2, "tab":Landroid/view/View;
    if-eqz v2, :cond_0

    instance-of v4, v2, Landroid/view/ViewGroup;

    if-eqz v4, :cond_0

    move-object v3, v2

    .line 106
    check-cast v3, Landroid/view/ViewGroup;

    .line 107
    .local v3, "vGroup":Landroid/view/ViewGroup;
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-gt v4, v5, :cond_1

    .line 103
    .end local v3    # "vGroup":Landroid/view/ViewGroup;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 110
    .restart local v3    # "vGroup":Landroid/view/ViewGroup;
    :cond_1
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 111
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    instance-of v4, v4, Landroid/widget/TextView;

    if-eqz v4, :cond_2

    .line 112
    return v5

    .line 110
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 117
    .end local v1    # "j":I
    .end local v2    # "tab":Landroid/view/View;
    .end local v3    # "vGroup":Landroid/view/ViewGroup;
    :cond_3
    const/4 v4, 0x0

    return v4
.end method

.method public static setTabWidgetLayout(Landroid/app/Activity;Landroid/widget/LinearLayout;Z)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "bottomView"    # Landroid/widget/LinearLayout;
    .param p2, "hasTitle"    # Z

    .prologue
    const/4 v1, 0x0

    .line 135
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 136
    :cond_0
    return-void

    .line 135
    :cond_1
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2, v1}, Lcom/letv/leui/widget/LeTabWidgetUtils;->setTabWidgetLayout(Landroid/content/Context;Landroid/widget/LinearLayout;ZZ)V

    .line 134
    return-void
.end method

.method public static setTabWidgetLayout(Landroid/app/Activity;Landroid/widget/TabWidget;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "tw"    # Landroid/widget/TabWidget;

    .prologue
    .line 124
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/letv/leui/widget/LeTabWidgetUtils;->setTabWidgetLayout(Landroid/app/Activity;Landroid/widget/TabWidget;Z)V

    .line 123
    return-void
.end method

.method public static setTabWidgetLayout(Landroid/app/Activity;Landroid/widget/TabWidget;Z)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "tw"    # Landroid/widget/TabWidget;
    .param p2, "isDialerApp"    # Z

    .prologue
    .line 128
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 129
    :cond_0
    return-void

    .line 128
    :cond_1
    invoke-virtual {p1}, Landroid/widget/TabWidget;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    invoke-static {p1}, Lcom/letv/leui/widget/LeTabWidgetUtils;->hasTitle(Landroid/widget/TabWidget;)Z

    move-result v0

    invoke-static {p0, p1, v0, p2}, Lcom/letv/leui/widget/LeTabWidgetUtils;->setTabWidgetLayout(Landroid/content/Context;Landroid/widget/LinearLayout;ZZ)V

    .line 127
    return-void
.end method

.method public static setTabWidgetLayout(Landroid/content/Context;Landroid/widget/LinearLayout;ZZ)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bottomView"    # Landroid/widget/LinearLayout;
    .param p2, "hasTitle"    # Z
    .param p3, "isDialerApp"    # Z

    .prologue
    const/4 v9, 0x0

    .line 166
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 167
    :cond_0
    return-void

    .line 166
    :cond_1
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v8

    if-eqz v8, :cond_0

    .line 169
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 172
    .local v4, "res":Landroid/content/res/Resources;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v5, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 175
    .local v5, "screenWidth":I
    const/4 v7, 0x0

    .line 177
    .local v7, "tabWidth":I
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 178
    .local v0, "count":I
    const/4 v1, 0x0

    .line 180
    .local v1, "end":I
    packed-switch v0, :pswitch_data_0

    .line 206
    :goto_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_6

    .line 207
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 210
    .local v6, "tab":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 211
    .local v3, "params":Landroid/view/ViewGroup$MarginLayoutParams;
    if-nez v3, :cond_2

    .line 212
    new-instance v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .end local v3    # "params":Landroid/view/ViewGroup$MarginLayoutParams;
    const/4 v8, -0x2

    invoke-direct {v3, v7, v8}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 213
    .restart local v3    # "params":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {v3, v9, v9, v9, v9}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 217
    :cond_2
    if-nez v2, :cond_4

    .line 218
    iput v1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 220
    const/4 v8, 0x1

    if-ne v0, v8, :cond_3

    .line 221
    iput v1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 233
    :goto_2
    iput v7, v3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 236
    invoke-virtual {v6, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 206
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 182
    .end local v2    # "i":I
    .end local v3    # "params":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v6    # "tab":Landroid/view/View;
    :pswitch_0
    const v8, 0x1050132

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v7

    .line 183
    mul-int v8, v7, v0

    sub-int v8, v5, v8

    div-int/lit8 v1, v8, 0x2

    goto :goto_0

    .line 186
    :pswitch_1
    const v8, 0x1050133

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v7

    .line 187
    mul-int/lit8 v8, v7, 0x2

    sub-int v8, v5, v8

    div-int/lit8 v1, v8, 0x2

    .line 188
    goto :goto_0

    .line 190
    :pswitch_2
    const v8, 0x1050134

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 191
    mul-int/lit8 v8, v1, 0x2

    sub-int v8, v5, v8

    div-int/lit8 v7, v8, 0x3

    goto :goto_0

    .line 194
    :pswitch_3
    div-int/lit8 v7, v5, 0x4

    goto :goto_0

    .line 197
    :pswitch_4
    div-int/lit8 v7, v5, 0x5

    goto :goto_0

    .line 223
    .restart local v2    # "i":I
    .restart local v3    # "params":Landroid/view/ViewGroup$MarginLayoutParams;
    .restart local v6    # "tab":Landroid/view/View;
    :cond_3
    iput v9, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_2

    .line 225
    :cond_4
    add-int/lit8 v8, v0, -0x1

    if-ne v2, v8, :cond_5

    .line 226
    iput v9, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 227
    iput v1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_2

    .line 229
    :cond_5
    iput v9, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 230
    iput v9, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_2

    .line 239
    .end local v3    # "params":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v6    # "tab":Landroid/view/View;
    :cond_6
    invoke-static {v4, p1}, Lcom/letv/leui/widget/LeTabWidgetUtils;->setTouchGlowWidth2HeightRatio(Landroid/content/res/Resources;Landroid/view/ViewGroup;)V

    .line 165
    return-void

    .line 180
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private static setTouchGlowWidth2HeightRatio(Landroid/content/res/Resources;Landroid/view/ViewGroup;)V
    .locals 6
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "vGroup"    # Landroid/view/ViewGroup;

    .prologue
    const/high16 v5, 0x42c80000    # 100.0f

    .line 142
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 143
    .local v0, "childCnt":I
    const/high16 v3, 0x40000000    # 2.0f

    .line 145
    .local v3, "width2HeightRatio":F
    const/4 v4, 0x1

    if-ne v0, v4, :cond_2

    .line 146
    const v4, 0x10e00c7

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    int-to-float v4, v4

    div-float v3, v4, v5

    .line 157
    :cond_0
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_6

    .line 158
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 159
    .local v2, "view":Landroid/view/View;
    if-eqz v2, :cond_1

    instance-of v4, v2, Lcom/letv/leui/widget/LeGlowRelativeLayout;

    if-eqz v4, :cond_1

    .line 160
    check-cast v2, Lcom/letv/leui/widget/LeGlowRelativeLayout;

    .end local v2    # "view":Landroid/view/View;
    invoke-virtual {v2, v3}, Lcom/letv/leui/widget/LeGlowRelativeLayout;->setPressScaleMultiple(F)V

    .line 157
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 147
    .end local v1    # "i":I
    :cond_2
    const/4 v4, 0x2

    if-ne v0, v4, :cond_3

    .line 148
    const v4, 0x10e00c8

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    int-to-float v4, v4

    div-float v3, v4, v5

    goto :goto_0

    .line 149
    :cond_3
    const/4 v4, 0x3

    if-ne v0, v4, :cond_4

    .line 150
    const v4, 0x10e00c9

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    int-to-float v4, v4

    div-float v3, v4, v5

    goto :goto_0

    .line 151
    :cond_4
    const/4 v4, 0x4

    if-ne v0, v4, :cond_5

    .line 152
    const v4, 0x10e00ca

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    int-to-float v4, v4

    div-float v3, v4, v5

    goto :goto_0

    .line 153
    :cond_5
    const/4 v4, 0x5

    if-ne v0, v4, :cond_0

    .line 154
    const v4, 0x10e00cb

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    int-to-float v4, v4

    div-float v3, v4, v5

    goto :goto_0

    .line 141
    .restart local v1    # "i":I
    :cond_6
    return-void
.end method
