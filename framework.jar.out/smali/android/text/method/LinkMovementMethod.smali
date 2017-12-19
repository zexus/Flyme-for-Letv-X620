.class public Landroid/text/method/LinkMovementMethod;
.super Landroid/text/method/ScrollingMovementMethod;
.source "LinkMovementMethod.java"


# static fields
.field private static final CLICK:I = 0x1

.field private static final DOWN:I = 0x3

.field private static FROM_BELOW:Ljava/lang/Object; = null

.field private static final UP:I = 0x2

.field private static sInstance:Landroid/text/method/LinkMovementMethod;


# instance fields
.field private mLink:Landroid/text/style/ClickableSpan;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 287
    new-instance v0, Landroid/text/NoCopySpan$Concrete;

    invoke-direct {v0}, Landroid/text/NoCopySpan$Concrete;-><init>()V

    sput-object v0, Landroid/text/method/LinkMovementMethod;->FROM_BELOW:Ljava/lang/Object;

    .line 33
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/text/method/ScrollingMovementMethod;-><init>()V

    return-void
.end method

.method private action(ILandroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 25
    .param p1, "what"    # I
    .param p2, "widget"    # Landroid/widget/TextView;
    .param p3, "buffer"    # Landroid/text/Spannable;

    .prologue
    .line 97
    invoke-virtual/range {p2 .. p2}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v15

    .line 99
    .local v15, "layout":Landroid/text/Layout;
    invoke-virtual/range {p2 .. p2}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v23

    .line 100
    invoke-virtual/range {p2 .. p2}, Landroid/widget/TextView;->getTotalPaddingBottom()I

    move-result v24

    .line 99
    add-int v19, v23, v24

    .line 101
    .local v19, "padding":I
    invoke-virtual/range {p2 .. p2}, Landroid/widget/TextView;->getScrollY()I

    move-result v6

    .line 102
    .local v6, "areatop":I
    invoke-virtual/range {p2 .. p2}, Landroid/widget/TextView;->getHeight()I

    move-result v23

    add-int v23, v23, v6

    sub-int v5, v23, v19

    .line 104
    .local v5, "areabot":I
    invoke-virtual {v15, v6}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v17

    .line 105
    .local v17, "linetop":I
    invoke-virtual {v15, v5}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v16

    .line 107
    .local v16, "linebot":I
    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/text/Layout;->getLineStart(I)I

    move-result v12

    .line 108
    .local v12, "first":I
    invoke-virtual/range {v15 .. v16}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v14

    .line 110
    .local v14, "last":I
    const-class v23, Landroid/text/style/ClickableSpan;

    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-interface {v0, v12, v14, v1}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Landroid/text/style/ClickableSpan;

    .line 112
    .local v10, "candidates":[Landroid/text/style/ClickableSpan;
    invoke-static/range {p3 .. p3}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v4

    .line 113
    .local v4, "a":I
    invoke-static/range {p3 .. p3}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v7

    .line 115
    .local v7, "b":I
    invoke-static {v4, v7}, Ljava/lang/Math;->min(II)I

    move-result v21

    .line 116
    .local v21, "selStart":I
    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    move-result v20

    .line 118
    .local v20, "selEnd":I
    if-gez v21, :cond_0

    .line 119
    sget-object v23, Landroid/text/method/LinkMovementMethod;->FROM_BELOW:Ljava/lang/Object;

    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v23

    if-ltz v23, :cond_0

    .line 120
    invoke-interface/range {p3 .. p3}, Landroid/text/Spannable;->length()I

    move-result v20

    move/from16 v21, v20

    .line 124
    :cond_0
    move/from16 v0, v21

    if-le v0, v14, :cond_1

    .line 125
    const v20, 0x7fffffff

    const v21, 0x7fffffff

    .line 126
    :cond_1
    move/from16 v0, v20

    if-ge v0, v12, :cond_2

    .line 127
    const/16 v20, -0x1

    const/16 v21, -0x1

    .line 129
    :cond_2
    packed-switch p1, :pswitch_data_0

    .line 190
    :cond_3
    :goto_0
    const/16 v23, 0x0

    return v23

    .line 131
    :pswitch_0
    move/from16 v0, v21

    move/from16 v1, v20

    if-ne v0, v1, :cond_4

    .line 132
    const/16 v23, 0x0

    return v23

    .line 135
    :cond_4
    const-class v23, Landroid/text/style/ClickableSpan;

    move-object/from16 v0, p3

    move/from16 v1, v21

    move/from16 v2, v20

    move-object/from16 v3, v23

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v18

    check-cast v18, [Landroid/text/style/ClickableSpan;

    .line 137
    .local v18, "link":[Landroid/text/style/ClickableSpan;
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_5

    .line 138
    const/16 v23, 0x0

    return v23

    .line 140
    :cond_5
    const/16 v23, 0x0

    aget-object v23, v18, v23

    move-object/from16 v0, v23

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/text/style/ClickableSpan;->onClick(Landroid/view/View;)V

    goto :goto_0

    .line 146
    .end local v18    # "link":[Landroid/text/style/ClickableSpan;
    :pswitch_1
    const/4 v9, -0x1

    .line 147
    .local v9, "beststart":I
    const/4 v8, -0x1

    .line 149
    .local v8, "bestend":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_1
    array-length v0, v10

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v13, v0, :cond_8

    .line 150
    aget-object v23, v10, v13

    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v11

    .line 152
    .local v11, "end":I
    move/from16 v0, v20

    if-lt v11, v0, :cond_6

    move/from16 v0, v21

    move/from16 v1, v20

    if-ne v0, v1, :cond_7

    .line 153
    :cond_6
    if-le v11, v8, :cond_7

    .line 154
    aget-object v23, v10, v13

    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v9

    .line 155
    move v8, v11

    .line 149
    :cond_7
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 160
    .end local v11    # "end":I
    :cond_8
    if-ltz v9, :cond_3

    .line 161
    move-object/from16 v0, p3

    invoke-static {v0, v8, v9}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 162
    const/16 v23, 0x1

    return v23

    .line 168
    .end local v8    # "bestend":I
    .end local v9    # "beststart":I
    .end local v13    # "i":I
    :pswitch_2
    const v9, 0x7fffffff

    .line 169
    .restart local v9    # "beststart":I
    const v8, 0x7fffffff

    .line 171
    .restart local v8    # "bestend":I
    const/4 v13, 0x0

    .restart local v13    # "i":I
    :goto_2
    array-length v0, v10

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v13, v0, :cond_b

    .line 172
    aget-object v23, v10, v13

    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v22

    .line 174
    .local v22, "start":I
    move/from16 v0, v22

    move/from16 v1, v21

    if-gt v0, v1, :cond_9

    move/from16 v0, v21

    move/from16 v1, v20

    if-ne v0, v1, :cond_a

    .line 175
    :cond_9
    move/from16 v0, v22

    if-ge v0, v9, :cond_a

    .line 176
    move/from16 v9, v22

    .line 177
    aget-object v23, v10, v13

    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v8

    .line 171
    :cond_a
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 182
    .end local v22    # "start":I
    :cond_b
    const v23, 0x7fffffff

    move/from16 v0, v23

    if-ge v8, v0, :cond_3

    .line 183
    move-object/from16 v0, p3

    invoke-static {v0, v9, v8}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 184
    const/16 v23, 0x1

    return v23

    .line 129
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static getInstance()Landroid/text/method/MovementMethod;
    .locals 1

    .prologue
    .line 280
    sget-object v0, Landroid/text/method/LinkMovementMethod;->sInstance:Landroid/text/method/LinkMovementMethod;

    if-nez v0, :cond_0

    .line 281
    new-instance v0, Landroid/text/method/LinkMovementMethod;

    invoke-direct {v0}, Landroid/text/method/LinkMovementMethod;-><init>()V

    sput-object v0, Landroid/text/method/LinkMovementMethod;->sInstance:Landroid/text/method/LinkMovementMethod;

    .line 283
    :cond_0
    sget-object v0, Landroid/text/method/LinkMovementMethod;->sInstance:Landroid/text/method/LinkMovementMethod;

    return-object v0
.end method


# virtual methods
.method public canSelectArbitrarily()Z
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x1

    return v0
.end method

.method protected down(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 1
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;

    .prologue
    .line 71
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1, p2}, Landroid/text/method/LinkMovementMethod;->action(ILandroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    const/4 v0, 0x1

    return v0

    .line 75
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/text/method/ScrollingMovementMethod;->down(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v0

    return v0
.end method

.method protected handleMovementKey(Landroid/widget/TextView;Landroid/text/Spannable;IILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;
    .param p3, "keyCode"    # I
    .param p4, "movementMetaState"    # I
    .param p5, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    .line 46
    sparse-switch p3, :sswitch_data_0

    .line 57
    :cond_0
    invoke-super/range {p0 .. p5}, Landroid/text/method/ScrollingMovementMethod;->handleMovementKey(Landroid/widget/TextView;Landroid/text/Spannable;IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 49
    :sswitch_0
    invoke-static {p4}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    invoke-virtual {p5}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 51
    invoke-virtual {p5}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, v1, p1, p2}, Landroid/text/method/LinkMovementMethod;->action(ILandroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v0

    .line 50
    if-eqz v0, :cond_0

    .line 52
    return v1

    .line 46
    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method public initialize(Landroid/widget/TextView;Landroid/text/Spannable;)V
    .locals 1
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "text"    # Landroid/text/Spannable;

    .prologue
    .line 264
    invoke-static {p2}, Landroid/text/Selection;->removeSelection(Landroid/text/Spannable;)V

    .line 265
    sget-object v0, Landroid/text/method/LinkMovementMethod;->FROM_BELOW:Ljava/lang/Object;

    invoke-interface {p2, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 263
    return-void
.end method

.method protected left(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 1
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;

    .prologue
    .line 80
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1, p2}, Landroid/text/method/LinkMovementMethod;->action(ILandroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    const/4 v0, 0x1

    return v0

    .line 84
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/text/method/ScrollingMovementMethod;->left(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v0

    return v0
.end method

.method public onTakeFocus(Landroid/widget/TextView;Landroid/text/Spannable;I)V
    .locals 3
    .param p1, "view"    # Landroid/widget/TextView;
    .param p2, "text"    # Landroid/text/Spannable;
    .param p3, "dir"    # I

    .prologue
    const/4 v2, 0x0

    .line 270
    invoke-static {p2}, Landroid/text/Selection;->removeSelection(Landroid/text/Spannable;)V

    .line 272
    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_0

    .line 273
    sget-object v0, Landroid/text/method/LinkMovementMethod;->FROM_BELOW:Ljava/lang/Object;

    const/16 v1, 0x22

    invoke-interface {p2, v0, v2, v2, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 269
    :goto_0
    return-void

    .line 275
    :cond_0
    sget-object v0, Landroid/text/method/LinkMovementMethod;->FROM_BELOW:Ljava/lang/Object;

    invoke-interface {p2, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z
    .locals 15
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;
    .param p3, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 196
    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 198
    .local v1, "action":I
    const/4 v13, 0x1

    if-eq v1, v13, :cond_0

    .line 199
    if-nez v1, :cond_6

    .line 200
    :cond_0
    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getX()F

    move-result v13

    float-to-int v11, v13

    .line 201
    .local v11, "x":I
    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getY()F

    move-result v13

    float-to-int v12, v13

    .line 203
    .local v12, "y":I
    invoke-virtual/range {p1 .. p1}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v13

    sub-int/2addr v11, v13

    .line 204
    invoke-virtual/range {p1 .. p1}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v13

    sub-int/2addr v12, v13

    .line 206
    invoke-virtual/range {p1 .. p1}, Landroid/widget/TextView;->getScrollX()I

    move-result v13

    add-int/2addr v11, v13

    .line 207
    invoke-virtual/range {p1 .. p1}, Landroid/widget/TextView;->getScrollY()I

    move-result v13

    add-int/2addr v12, v13

    .line 209
    invoke-virtual/range {p1 .. p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    .line 210
    .local v3, "layout":Landroid/text/Layout;
    invoke-virtual {v3, v12}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v4

    .line 213
    .local v4, "line":I
    invoke-virtual {v3, v4}, Landroid/text/Layout;->getLineTop(I)I

    move-result v13

    int-to-float v8, v13

    .line 214
    .local v8, "lineTop":F
    invoke-virtual {v3, v4}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v13

    int-to-float v5, v13

    .line 215
    .local v5, "lineBottom":F
    invoke-virtual {v3, v4}, Landroid/text/Layout;->getLineRight(I)F

    move-result v7

    .line 216
    .local v7, "lineRight":F
    invoke-virtual {v3, v4}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v6

    .line 217
    .local v6, "lineLeft":F
    int-to-float v13, v11

    cmpg-float v13, v13, v6

    if-ltz v13, :cond_1

    int-to-float v13, v11

    cmpl-float v13, v13, v7

    if-lez v13, :cond_2

    .line 218
    :cond_1
    const/4 v13, 0x0

    return v13

    .line 217
    :cond_2
    int-to-float v13, v12

    cmpg-float v13, v13, v8

    if-ltz v13, :cond_1

    int-to-float v13, v12

    cmpl-float v13, v13, v5

    if-gtz v13, :cond_1

    .line 222
    int-to-float v13, v11

    invoke-virtual {v3, v4, v13}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v10

    .line 224
    .local v10, "off":I
    const-class v13, Landroid/text/style/ClickableSpan;

    move-object/from16 v0, p2

    invoke-interface {v0, v10, v10, v13}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Landroid/text/style/ClickableSpan;

    .line 226
    .local v9, "link":[Landroid/text/style/ClickableSpan;
    array-length v13, v9

    if-eqz v13, :cond_5

    .line 227
    const/4 v13, 0x1

    if-ne v1, v13, :cond_4

    .line 228
    const/4 v13, 0x0

    aget-object v13, v9, v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/text/style/ClickableSpan;->onClick(Landroid/view/View;)V

    .line 246
    :cond_3
    :goto_0
    const/4 v13, 0x1

    return v13

    .line 229
    :cond_4
    if-nez v1, :cond_3

    .line 234
    const/4 v13, 0x0

    aget-object v13, v9, v13

    instance-of v2, v13, Lcom/letv/leui/util/LeLinkify$LeURLSpan;

    .line 236
    .local v2, "isUrl":Z
    const/4 v13, 0x0

    aget-object v13, v9, v13

    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v13

    .line 237
    const/4 v14, 0x0

    aget-object v14, v9, v14

    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v14

    .line 235
    move-object/from16 v0, p2

    invoke-static {v0, v13, v14, v2}, Lcom/letv/leui/text/LeSelection;->setSelection(Landroid/text/Spannable;IIZ)V

    .line 238
    if-eqz v2, :cond_3

    .line 239
    const/4 v13, 0x0

    aget-object v13, v9, v13

    iput-object v13, p0, Landroid/text/method/LinkMovementMethod;->mLink:Landroid/text/style/ClickableSpan;

    .line 240
    const/4 v13, 0x0

    aget-object v13, v9, v13

    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v13

    .line 241
    const/4 v14, 0x0

    aget-object v14, v9, v14

    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v14

    .line 240
    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/widget/TextView;->invalidDisplayList(II)V

    goto :goto_0

    .line 248
    .end local v2    # "isUrl":Z
    :cond_5
    invoke-static/range {p2 .. p2}, Landroid/text/Selection;->removeSelection(Landroid/text/Spannable;)V

    .line 250
    iget-object v13, p0, Landroid/text/method/LinkMovementMethod;->mLink:Landroid/text/style/ClickableSpan;

    if-eqz v13, :cond_6

    .line 251
    iget-object v13, p0, Landroid/text/method/LinkMovementMethod;->mLink:Landroid/text/style/ClickableSpan;

    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v13

    .line 252
    iget-object v14, p0, Landroid/text/method/LinkMovementMethod;->mLink:Landroid/text/style/ClickableSpan;

    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v14

    .line 251
    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/widget/TextView;->invalidDisplayList(II)V

    .line 253
    const/4 v13, 0x0

    iput-object v13, p0, Landroid/text/method/LinkMovementMethod;->mLink:Landroid/text/style/ClickableSpan;

    .line 259
    .end local v3    # "layout":Landroid/text/Layout;
    .end local v4    # "line":I
    .end local v5    # "lineBottom":F
    .end local v6    # "lineLeft":F
    .end local v7    # "lineRight":F
    .end local v8    # "lineTop":F
    .end local v9    # "link":[Landroid/text/style/ClickableSpan;
    .end local v10    # "off":I
    .end local v11    # "x":I
    .end local v12    # "y":I
    :cond_6
    invoke-super/range {p0 .. p3}, Landroid/text/method/ScrollingMovementMethod;->onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z

    move-result v13

    return v13
.end method

.method protected right(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 1
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;

    .prologue
    .line 89
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1, p2}, Landroid/text/method/LinkMovementMethod;->action(ILandroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    const/4 v0, 0x1

    return v0

    .line 93
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/text/method/ScrollingMovementMethod;->right(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v0

    return v0
.end method

.method protected up(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 1
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;

    .prologue
    .line 62
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1, p2}, Landroid/text/method/LinkMovementMethod;->action(ILandroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    const/4 v0, 0x1

    return v0

    .line 66
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/text/method/ScrollingMovementMethod;->up(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v0

    return v0
.end method
