.class public Lcom/android/internal/app/AlertController;
.super Ljava/lang/Object;
.source "AlertController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/AlertController$ButtonHandler;,
        Lcom/android/internal/app/AlertController$RecycleListView;,
        Lcom/android/internal/app/AlertController$AlertParams;,
        Lcom/android/internal/app/AlertController$CheckedItemAdapter;,
        Lcom/android/internal/app/AlertController$1;
    }
.end annotation


# static fields
.field private static synthetic -android_app_AlertDialog$ButtonPatternSwitchesValues:[I


# instance fields
.field private mAdapter:Landroid/widget/ListAdapter;

.field private mAlertDialogLayout:I

.field private final mButtonHandler:Landroid/view/View$OnClickListener;

.field private mButtonNegative:Landroid/widget/Button;

.field private mButtonNegativeEnabled:Z

.field private mButtonNegativeMessage:Landroid/os/Message;

.field private mButtonNegativePattern:Landroid/app/AlertDialog$ButtonPattern;

.field private mButtonNegativeText:Ljava/lang/CharSequence;

.field private mButtonNeutral:Landroid/widget/Button;

.field private mButtonNeutralEnabled:Z

.field private mButtonNeutralMessage:Landroid/os/Message;

.field private mButtonNeutralPattern:Landroid/app/AlertDialog$ButtonPattern;

.field private mButtonNeutralText:Ljava/lang/CharSequence;

.field private mButtonPanelLayoutHint:I

.field private mButtonPanelSideLayout:I

.field private mButtonPositive:Landroid/widget/Button;

.field private mButtonPositiveEnabled:Z

.field private mButtonPositiveMessage:Landroid/os/Message;

.field private mButtonPositivePattern:Landroid/app/AlertDialog$ButtonPattern;

.field private mButtonPositiveText:Ljava/lang/CharSequence;

.field private mCheckedItem:I

.field private final mContext:Landroid/content/Context;

.field private mCustomTitleView:Landroid/view/View;

.field private final mDialogInterface:Landroid/content/DialogInterface;

.field private mForceInverseBackground:Z

.field private mHandler:Landroid/os/Handler;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIconId:I

.field private mIconView:Landroid/widget/ImageView;

.field private mListItemLayout:I

.field private mListLayout:I

.field private mListView:Landroid/widget/ListView;

.field private mMessage:Ljava/lang/CharSequence;

.field private mMessageView:Landroid/widget/TextView;

.field private mMultiChoiceItemLayout:I

.field private mScrollView:Landroid/widget/ScrollView;

.field private mSingleChoiceItemLayout:I

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleView:Landroid/widget/TextView;

.field private mView:Landroid/view/View;

.field private mViewLayoutResId:I

.field private mViewSpacingBottom:I

.field private mViewSpacingLeft:I

.field private mViewSpacingRight:I

.field private mViewSpacingSpecified:Z

.field private mViewSpacingTop:I

.field private final mWindow:Landroid/view/Window;


# direct methods
.method static synthetic -get0(Lcom/android/internal/app/AlertController;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/internal/app/AlertController;)Landroid/os/Message;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonNegativeMessage:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/internal/app/AlertController;)I
    .locals 1

    iget v0, p0, Lcom/android/internal/app/AlertController;->mListLayout:I

    return v0
.end method

.method static synthetic -get11(Lcom/android/internal/app/AlertController;)I
    .locals 1

    iget v0, p0, Lcom/android/internal/app/AlertController;->mMultiChoiceItemLayout:I

    return v0
.end method

.method static synthetic -get12(Lcom/android/internal/app/AlertController;)I
    .locals 1

    iget v0, p0, Lcom/android/internal/app/AlertController;->mSingleChoiceItemLayout:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/internal/app/AlertController;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/internal/app/AlertController;)Landroid/os/Message;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonNeutralMessage:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/internal/app/AlertController;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/internal/app/AlertController;)Landroid/os/Message;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonPositiveMessage:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/internal/app/AlertController;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/internal/app/AlertController;)Landroid/content/DialogInterface;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mDialogInterface:Landroid/content/DialogInterface;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/internal/app/AlertController;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/internal/app/AlertController;)I
    .locals 1

    iget v0, p0, Lcom/android/internal/app/AlertController;->mListItemLayout:I

    return v0
.end method

.method private static synthetic -getandroid_app_AlertDialog$ButtonPatternSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/internal/app/AlertController;->-android_app_AlertDialog$ButtonPatternSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/app/AlertController;->-android_app_AlertDialog$ButtonPatternSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Landroid/app/AlertDialog$ButtonPattern;->values()[Landroid/app/AlertDialog$ButtonPattern;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Landroid/app/AlertDialog$ButtonPattern;->EXPECTATION:Landroid/app/AlertDialog$ButtonPattern;

    invoke-virtual {v1}, Landroid/app/AlertDialog$ButtonPattern;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v1, Landroid/app/AlertDialog$ButtonPattern;->NORMAL:Landroid/app/AlertDialog$ButtonPattern;

    invoke-virtual {v1}, Landroid/app/AlertDialog$ButtonPattern;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v1, Landroid/app/AlertDialog$ButtonPattern;->WARNING:Landroid/app/AlertDialog$ButtonPattern;

    invoke-virtual {v1}, Landroid/app/AlertDialog$ButtonPattern;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    sput-object v0, Lcom/android/internal/app/AlertController;->-android_app_AlertDialog$ButtonPatternSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_0
.end method

.method static synthetic -set0(Lcom/android/internal/app/AlertController;Landroid/widget/ListAdapter;)Landroid/widget/ListAdapter;
    .locals 0

    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/internal/app/AlertController;I)I
    .locals 0

    iput p1, p0, Lcom/android/internal/app/AlertController;->mCheckedItem:I

    return p1
.end method

.method static synthetic -set2(Lcom/android/internal/app/AlertController;Landroid/widget/ListView;)Landroid/widget/ListView;
    .locals 0

    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/internal/app/AlertController;Z)V
    .locals 0
    .param p1, "clickable"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/app/AlertController;->setNegativeButtonClickable(Z)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/internal/app/AlertController;Z)V
    .locals 0
    .param p1, "clickable"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/app/AlertController;->setNeutralButtonClickable(Z)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/internal/app/AlertController;Z)V
    .locals 0
    .param p1, "clickable"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/app/AlertController;->setPositiveButtonClickable(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "di"    # Landroid/content/DialogInterface;
    .param p3, "window"    # Landroid/view/Window;

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-boolean v4, p0, Lcom/android/internal/app/AlertController;->mViewSpacingSpecified:Z

    .line 94
    sget-object v1, Landroid/app/AlertDialog$ButtonPattern;->NORMAL:Landroid/app/AlertDialog$ButtonPattern;

    iput-object v1, p0, Lcom/android/internal/app/AlertController;->mButtonPositivePattern:Landroid/app/AlertDialog$ButtonPattern;

    .line 96
    iput-boolean v2, p0, Lcom/android/internal/app/AlertController;->mButtonPositiveEnabled:Z

    .line 103
    sget-object v1, Landroid/app/AlertDialog$ButtonPattern;->NORMAL:Landroid/app/AlertDialog$ButtonPattern;

    iput-object v1, p0, Lcom/android/internal/app/AlertController;->mButtonNegativePattern:Landroid/app/AlertDialog$ButtonPattern;

    .line 105
    iput-boolean v2, p0, Lcom/android/internal/app/AlertController;->mButtonNegativeEnabled:Z

    .line 112
    sget-object v1, Landroid/app/AlertDialog$ButtonPattern;->NORMAL:Landroid/app/AlertDialog$ButtonPattern;

    iput-object v1, p0, Lcom/android/internal/app/AlertController;->mButtonNeutralPattern:Landroid/app/AlertDialog$ButtonPattern;

    .line 114
    iput-boolean v2, p0, Lcom/android/internal/app/AlertController;->mButtonNeutralEnabled:Z

    .line 121
    iput v4, p0, Lcom/android/internal/app/AlertController;->mIconId:I

    .line 133
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/app/AlertController;->mCheckedItem:I

    .line 142
    iput v4, p0, Lcom/android/internal/app/AlertController;->mButtonPanelLayoutHint:I

    .line 146
    new-instance v1, Lcom/android/internal/app/AlertController$1;

    invoke-direct {v1, p0}, Lcom/android/internal/app/AlertController$1;-><init>(Lcom/android/internal/app/AlertController;)V

    iput-object v1, p0, Lcom/android/internal/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    .line 203
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    .line 204
    iput-object p2, p0, Lcom/android/internal/app/AlertController;->mDialogInterface:Landroid/content/DialogInterface;

    .line 205
    iput-object p3, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    .line 206
    new-instance v1, Lcom/android/internal/app/AlertController$ButtonHandler;

    invoke-direct {v1, p2}, Lcom/android/internal/app/AlertController$ButtonHandler;-><init>(Landroid/content/DialogInterface;)V

    iput-object v1, p0, Lcom/android/internal/app/AlertController;->mHandler:Landroid/os/Handler;

    .line 209
    sget-object v1, Lcom/android/internal/R$styleable;->AlertDialog:[I

    .line 208
    const/4 v2, 0x0

    .line 209
    const v3, 0x101005d

    .line 208
    invoke-virtual {p1, v2, v1, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 212
    .local v0, "a":Landroid/content/res/TypedArray;
    const/16 v1, 0xa

    const v2, 0x1090026

    .line 211
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/android/internal/app/AlertController;->mAlertDialogLayout:I

    .line 214
    const/16 v1, 0xb

    .line 213
    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/android/internal/app/AlertController;->mButtonPanelSideLayout:I

    .line 216
    const/16 v1, 0xc

    const v2, 0x109014b

    .line 215
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/android/internal/app/AlertController;->mListLayout:I

    .line 219
    const/16 v1, 0xd

    .line 220
    const v2, 0x1090013

    .line 218
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/android/internal/app/AlertController;->mMultiChoiceItemLayout:I

    .line 222
    const/16 v1, 0xe

    .line 223
    const v2, 0x1090012

    .line 221
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/android/internal/app/AlertController;->mSingleChoiceItemLayout:I

    .line 225
    const/16 v1, 0xf

    .line 226
    const v2, 0x1090011

    .line 224
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/android/internal/app/AlertController;->mListItemLayout:I

    .line 228
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 202
    return-void
.end method

.method private applyLeuiStyle()V
    .locals 22

    .prologue
    .line 1399
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    move-object/from16 v19, v0

    const v20, 0x10203c8

    invoke-virtual/range {v19 .. v20}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 1400
    .local v9, "idView":Landroid/view/View;
    if-nez v9, :cond_0

    .line 1401
    return-void

    .line 1403
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    move-object/from16 v19, v0

    const v20, 0x102035e

    invoke-virtual/range {v19 .. v20}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/LinearLayout;

    .line 1404
    .local v17, "topPanel":Landroid/widget/LinearLayout;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    move-object/from16 v19, v0

    const v20, 0x102000b

    invoke-virtual/range {v19 .. v20}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 1405
    .local v11, "messageView":Landroid/widget/TextView;
    invoke-virtual/range {v17 .. v17}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v19

    if-nez v19, :cond_6

    const/16 v18, 0x1

    .line 1406
    .local v18, "topVisible":Z
    :goto_0
    if-eqz v11, :cond_7

    invoke-virtual {v11}, Landroid/widget/TextView;->getVisibility()I

    move-result v19

    if-nez v19, :cond_7

    const/4 v12, 0x1

    .line 1407
    .local v12, "messageVisible":Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    .line 1409
    .local v15, "res":Landroid/content/res/Resources;
    if-nez v18, :cond_1

    if-eqz v12, :cond_1

    .line 1410
    const v19, 0x1050195

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    .line 1411
    .local v13, "paddingTop":I
    invoke-virtual {v11}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v19

    invoke-virtual {v11}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v20

    invoke-virtual {v11}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v21

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v11, v0, v13, v1, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1415
    .end local v13    # "paddingTop":I
    :cond_1
    const v19, 0x1020006

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 1416
    .local v6, "iconView":Landroid/widget/ImageView;
    const v19, 0x1020360

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 1417
    .local v16, "titleText":Landroid/widget/TextView;
    if-eqz v6, :cond_8

    invoke-virtual {v6}, Landroid/widget/ImageView;->getVisibility()I

    move-result v19

    if-nez v19, :cond_8

    const/4 v7, 0x1

    .line 1418
    .local v7, "iconVisible":Z
    :goto_2
    if-eqz v7, :cond_2

    .line 1419
    const v19, 0x1050196

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 1420
    .local v8, "iconWidth":I
    const v19, 0x1050198

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 1421
    .local v5, "iconMarginEnd":I
    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/widget/LinearLayout$LayoutParams;

    .line 1422
    .local v14, "params":Landroid/widget/LinearLayout$LayoutParams;
    add-int v19, v8, v5

    move/from16 v0, v19

    iput v0, v14, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 1426
    .end local v5    # "iconMarginEnd":I
    .end local v8    # "iconWidth":I
    .end local v14    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_2
    const/16 v19, 0x3

    move/from16 v0, v19

    new-array v4, v0, [Landroid/widget/Button;

    .line 1427
    .local v4, "buttons":[Landroid/widget/Button;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    move-object/from16 v19, v0

    const v20, 0x1020019

    invoke-virtual/range {v19 .. v20}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/Button;

    const/16 v20, 0x0

    aput-object v19, v4, v20

    .line 1428
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    move-object/from16 v19, v0

    const v20, 0x102001a

    invoke-virtual/range {v19 .. v20}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/Button;

    const/16 v20, 0x1

    aput-object v19, v4, v20

    .line 1429
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    move-object/from16 v19, v0

    const v20, 0x102001b

    invoke-virtual/range {v19 .. v20}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/Button;

    const/16 v20, 0x2

    aput-object v19, v4, v20

    .line 1431
    const/4 v10, 0x1

    .line 1433
    .local v10, "isThemeLeuiLight":Z
    invoke-static {}, Lcom/android/internal/app/AlertController;->-getandroid_app_AlertDialog$ButtonPatternSwitchesValues()[I

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mButtonPositivePattern:Landroid/app/AlertDialog$ButtonPattern;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/app/AlertDialog$ButtonPattern;->ordinal()I

    move-result v20

    aget v19, v19, v20

    packed-switch v19, :pswitch_data_0

    .line 1453
    :goto_3
    :pswitch_0
    invoke-static {}, Lcom/android/internal/app/AlertController;->-getandroid_app_AlertDialog$ButtonPatternSwitchesValues()[I

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mButtonNegativePattern:Landroid/app/AlertDialog$ButtonPattern;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/app/AlertDialog$ButtonPattern;->ordinal()I

    move-result v20

    aget v19, v19, v20

    packed-switch v19, :pswitch_data_1

    .line 1475
    :goto_4
    invoke-static {}, Lcom/android/internal/app/AlertController;->-getandroid_app_AlertDialog$ButtonPatternSwitchesValues()[I

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mButtonNeutralPattern:Landroid/app/AlertDialog$ButtonPattern;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/app/AlertDialog$ButtonPattern;->ordinal()I

    move-result v20

    aget v19, v19, v20

    packed-switch v19, :pswitch_data_2

    .line 1495
    :goto_5
    :pswitch_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/app/AlertController;->mButtonPositiveEnabled:Z

    move/from16 v19, v0

    if-nez v19, :cond_3

    .line 1496
    const v19, 0x10e00c1

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 1497
    .local v3, "alpha":I
    const/16 v19, 0x0

    aget-object v19, v4, v19

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/app/AlertController;->mButtonPositiveEnabled:Z

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1498
    const/16 v19, 0x0

    aget-object v19, v4, v19

    const/16 v20, 0x0

    aget-object v20, v4, v20

    invoke-virtual/range {v20 .. v20}, Landroid/widget/Button;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/content/res/ColorStateList;->withAlpha(I)Landroid/content/res/ColorStateList;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1500
    .end local v3    # "alpha":I
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/app/AlertController;->mButtonNegativeEnabled:Z

    move/from16 v19, v0

    if-nez v19, :cond_4

    .line 1501
    const v19, 0x10e00c1

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 1502
    .restart local v3    # "alpha":I
    const/16 v19, 0x1

    aget-object v19, v4, v19

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/app/AlertController;->mButtonNegativeEnabled:Z

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1503
    const/16 v19, 0x1

    aget-object v19, v4, v19

    const/16 v20, 0x1

    aget-object v20, v4, v20

    invoke-virtual/range {v20 .. v20}, Landroid/widget/Button;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/content/res/ColorStateList;->withAlpha(I)Landroid/content/res/ColorStateList;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1505
    .end local v3    # "alpha":I
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/app/AlertController;->mButtonNeutralEnabled:Z

    move/from16 v19, v0

    if-nez v19, :cond_5

    .line 1506
    const v19, 0x10e00c1

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 1507
    .restart local v3    # "alpha":I
    const/16 v19, 0x2

    aget-object v19, v4, v19

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/app/AlertController;->mButtonNeutralEnabled:Z

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1508
    const/16 v19, 0x2

    aget-object v19, v4, v19

    const/16 v20, 0x2

    aget-object v20, v4, v20

    invoke-virtual/range {v20 .. v20}, Landroid/widget/Button;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/content/res/ColorStateList;->withAlpha(I)Landroid/content/res/ColorStateList;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1397
    .end local v3    # "alpha":I
    :cond_5
    return-void

    .line 1405
    .end local v4    # "buttons":[Landroid/widget/Button;
    .end local v6    # "iconView":Landroid/widget/ImageView;
    .end local v7    # "iconVisible":Z
    .end local v10    # "isThemeLeuiLight":Z
    .end local v12    # "messageVisible":Z
    .end local v15    # "res":Landroid/content/res/Resources;
    .end local v16    # "titleText":Landroid/widget/TextView;
    .end local v18    # "topVisible":Z
    :cond_6
    const/16 v18, 0x0

    .restart local v18    # "topVisible":Z
    goto/16 :goto_0

    .line 1406
    :cond_7
    const/4 v12, 0x0

    .restart local v12    # "messageVisible":Z
    goto/16 :goto_1

    .line 1417
    .restart local v6    # "iconView":Landroid/widget/ImageView;
    .restart local v15    # "res":Landroid/content/res/Resources;
    .restart local v16    # "titleText":Landroid/widget/TextView;
    :cond_8
    const/4 v7, 0x0

    .restart local v7    # "iconVisible":Z
    goto/16 :goto_2

    .line 1436
    .restart local v4    # "buttons":[Landroid/widget/Button;
    .restart local v10    # "isThemeLeuiLight":Z
    :pswitch_2
    const/16 v19, 0x0

    aget-object v19, v4, v19

    const v20, 0x1060110

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/Button;->setTextColor(I)V

    goto/16 :goto_3

    .line 1443
    :pswitch_3
    const/16 v19, 0x0

    aget-object v19, v4, v19

    const v20, 0x1060111

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/Button;->setTextColor(I)V

    goto/16 :goto_3

    .line 1456
    :pswitch_4
    const/16 v19, 0x1

    aget-object v19, v4, v19

    const v20, 0x1060110

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/Button;->setTextColor(I)V

    goto/16 :goto_4

    .line 1463
    :pswitch_5
    const/16 v19, 0x1

    aget-object v19, v4, v19

    const v20, 0x1060111

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/Button;->setTextColor(I)V

    goto/16 :goto_4

    .line 1469
    :pswitch_6
    const/16 v19, 0x1

    aget-object v19, v4, v19

    const/high16 v20, -0x1000000

    invoke-virtual/range {v19 .. v20}, Landroid/widget/Button;->setTextColor(I)V

    goto/16 :goto_4

    .line 1478
    :pswitch_7
    const/16 v19, 0x2

    aget-object v19, v4, v19

    const v20, 0x1060110

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/Button;->setTextColor(I)V

    goto/16 :goto_5

    .line 1485
    :pswitch_8
    const/16 v19, 0x2

    aget-object v19, v4, v19

    const v20, 0x1060111

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/Button;->setTextColor(I)V

    goto/16 :goto_5

    .line 1433
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 1453
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_6
        :pswitch_5
    .end packed-switch

    .line 1475
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_7
        :pswitch_1
        :pswitch_8
    .end packed-switch
.end method

.method static canTextInput(Landroid/view/View;)Z
    .locals 5
    .param p0, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 232
    invoke-virtual {p0}, Landroid/view/View;->onCheckIsTextEditor()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 233
    return v4

    .line 236
    :cond_0
    instance-of v2, p0, Landroid/view/ViewGroup;

    if-nez v2, :cond_1

    .line 237
    return v3

    :cond_1
    move-object v1, p0

    .line 240
    check-cast v1, Landroid/view/ViewGroup;

    .line 241
    .local v1, "vg":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 242
    .local v0, "i":I
    :cond_2
    if-lez v0, :cond_3

    .line 243
    add-int/lit8 v0, v0, -0x1

    .line 244
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    .line 245
    invoke-static {p0}, Lcom/android/internal/app/AlertController;->canTextInput(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 246
    return v4

    .line 250
    :cond_3
    return v3
.end method

.method private centerButton(Landroid/widget/Button;)V
    .locals 6
    .param p1, "button"    # Landroid/widget/Button;

    .prologue
    const/4 v5, 0x0

    .line 957
    invoke-virtual {p1}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 958
    .local v1, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v3, 0x1

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 959
    const/high16 v3, 0x3f000000    # 0.5f

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 960
    invoke-virtual {p1, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 961
    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v4, 0x1020363

    invoke-virtual {v3, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 962
    .local v0, "leftSpacer":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 963
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 965
    :cond_0
    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v4, 0x1020364

    invoke-virtual {v3, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 966
    .local v2, "rightSpacer":Landroid/view/View;
    if-eqz v2, :cond_1

    .line 967
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 956
    :cond_1
    return-void
.end method

.method private static manageScrollIndicators(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 3
    .param p0, "v"    # Landroid/view/View;
    .param p1, "upIndicator"    # Landroid/view/View;
    .param p2, "downIndicator"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 888
    if-eqz p1, :cond_0

    .line 889
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 891
    :cond_0
    if-eqz p2, :cond_1

    .line 892
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_1
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 887
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 889
    goto :goto_0

    :cond_3
    move v1, v2

    .line 892
    goto :goto_1
.end method

.method private resolvePanel(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;
    .locals 2
    .param p1, "customPanel"    # Landroid/view/View;
    .param p2, "defaultPanel"    # Landroid/view/View;

    .prologue
    .line 675
    if-nez p1, :cond_1

    .line 677
    instance-of v1, p2, Landroid/view/ViewStub;

    if-eqz v1, :cond_0

    .line 678
    check-cast p2, Landroid/view/ViewStub;

    .end local p2    # "defaultPanel":Landroid/view/View;
    invoke-virtual {p2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p2

    .line 681
    .restart local p2    # "defaultPanel":Landroid/view/View;
    :cond_0
    check-cast p2, Landroid/view/ViewGroup;

    .end local p2    # "defaultPanel":Landroid/view/View;
    return-object p2

    .line 685
    .restart local p2    # "defaultPanel":Landroid/view/View;
    :cond_1
    if-eqz p2, :cond_2

    .line 686
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 687
    .local v0, "parent":Landroid/view/ViewParent;
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    .line 688
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0    # "parent":Landroid/view/ViewParent;
    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 693
    :cond_2
    instance-of v1, p1, Landroid/view/ViewStub;

    if-eqz v1, :cond_3

    .line 694
    check-cast p1, Landroid/view/ViewStub;

    .end local p1    # "customPanel":Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p1

    .line 697
    .restart local p1    # "customPanel":Landroid/view/View;
    :cond_3
    check-cast p1, Landroid/view/ViewGroup;

    .end local p1    # "customPanel":Landroid/view/View;
    return-object p1
.end method

.method private selectContentView()I
    .locals 2

    .prologue
    .line 265
    iget v0, p0, Lcom/android/internal/app/AlertController;->mButtonPanelSideLayout:I

    if-nez v0, :cond_0

    .line 266
    iget v0, p0, Lcom/android/internal/app/AlertController;->mAlertDialogLayout:I

    return v0

    .line 268
    :cond_0
    iget v0, p0, Lcom/android/internal/app/AlertController;->mButtonPanelLayoutHint:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 269
    iget v0, p0, Lcom/android/internal/app/AlertController;->mButtonPanelSideLayout:I

    return v0

    .line 272
    :cond_1
    iget v0, p0, Lcom/android/internal/app/AlertController;->mAlertDialogLayout:I

    return v0
.end method

.method private setBackground(Landroid/content/res/TypedArray;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;ZZZ)V
    .locals 24
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "topPanel"    # Landroid/view/View;
    .param p3, "contentPanel"    # Landroid/view/View;
    .param p4, "customPanel"    # Landroid/view/View;
    .param p5, "buttonPanel"    # Landroid/view/View;
    .param p6, "hasTitle"    # Z
    .param p7, "hasCustomView"    # Z
    .param p8, "hasButtons"    # Z

    .prologue
    .line 973
    const/4 v10, 0x0

    .line 974
    .local v10, "fullDark":I
    const/16 v19, 0x0

    .line 975
    .local v19, "topDark":I
    const/4 v7, 0x0

    .line 976
    .local v7, "centerDark":I
    const/4 v4, 0x0

    .line 977
    .local v4, "bottomDark":I
    const/4 v9, 0x0

    .line 978
    .local v9, "fullBright":I
    const/16 v18, 0x0

    .line 979
    .local v18, "topBright":I
    const/4 v6, 0x0

    .line 980
    .local v6, "centerBright":I
    const/4 v3, 0x0

    .line 981
    .local v3, "bottomBright":I
    const/4 v5, 0x0

    .line 986
    .local v5, "bottomMedium":I
    const/16 v22, 0x12

    const/16 v23, 0x1

    .line 985
    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v15

    .line 987
    .local v15, "needsDefaultBackgrounds":Z
    if-eqz v15, :cond_0

    .line 988
    const v10, 0x108072e

    .line 989
    const v19, 0x108073c

    .line 990
    const v7, 0x108072b

    .line 991
    const v4, 0x1080728

    .line 992
    const v9, 0x108072d

    .line 993
    const v18, 0x108073b

    .line 994
    const v6, 0x108072a

    .line 995
    const v3, 0x1080727

    .line 996
    const v5, 0x1080729

    .line 999
    :cond_0
    const/16 v22, 0x5

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v18

    .line 1000
    const/16 v22, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v19

    .line 1001
    const/16 v22, 0x6

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    .line 1002
    const/16 v22, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    .line 1012
    const/16 v22, 0x4

    move/from16 v0, v22

    new-array v0, v0, [Landroid/view/View;

    move-object/from16 v21, v0

    .line 1013
    .local v21, "views":[Landroid/view/View;
    const/16 v22, 0x4

    move/from16 v0, v22

    new-array v13, v0, [Z

    .line 1014
    .local v13, "light":[Z
    const/4 v12, 0x0

    .line 1015
    .local v12, "lastView":Landroid/view/View;
    const/4 v11, 0x0

    .line 1017
    .local v11, "lastLight":Z
    const/16 v16, 0x0

    .line 1018
    .local v16, "pos":I
    if-eqz p6, :cond_1

    .line 1019
    aput-object p2, v21, v16

    .line 1020
    const/16 v22, 0x0

    aput-boolean v22, v13, v16

    .line 1021
    const/16 v16, 0x1

    .line 1029
    :cond_1
    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getVisibility()I

    move-result v22

    const/16 v23, 0x8

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_2

    const/16 p3, 0x0

    .end local p3    # "contentPanel":Landroid/view/View;
    :cond_2
    aput-object p3, v21, v16

    .line 1030
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    move-object/from16 v22, v0

    if-eqz v22, :cond_5

    const/16 v22, 0x1

    :goto_0
    aput-boolean v22, v13, v16

    .line 1031
    add-int/lit8 v16, v16, 0x1

    .line 1033
    if-eqz p7, :cond_3

    .line 1034
    aput-object p4, v21, v16

    .line 1035
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/app/AlertController;->mForceInverseBackground:Z

    move/from16 v22, v0

    aput-boolean v22, v13, v16

    .line 1036
    add-int/lit8 v16, v16, 0x1

    .line 1039
    :cond_3
    if-eqz p8, :cond_4

    .line 1040
    aput-object p5, v21, v16

    .line 1041
    const/16 v22, 0x1

    aput-boolean v22, v13, v16

    .line 1044
    :cond_4
    const/16 v17, 0x0

    .line 1045
    .local v17, "setView":Z
    const/16 v16, 0x0

    .end local v11    # "lastLight":Z
    .end local v12    # "lastView":Landroid/view/View;
    :goto_1
    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v16

    move/from16 v1, v22

    if-ge v0, v1, :cond_b

    .line 1046
    aget-object v20, v21, v16

    .line 1047
    .local v20, "v":Landroid/view/View;
    if-nez v20, :cond_6

    .line 1045
    :goto_2
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 1030
    .end local v17    # "setView":Z
    .end local v20    # "v":Landroid/view/View;
    .restart local v11    # "lastLight":Z
    .restart local v12    # "lastView":Landroid/view/View;
    :cond_5
    const/16 v22, 0x0

    goto :goto_0

    .line 1051
    .end local v11    # "lastLight":Z
    .end local v12    # "lastView":Landroid/view/View;
    .restart local v17    # "setView":Z
    .restart local v20    # "v":Landroid/view/View;
    :cond_6
    if-eqz v12, :cond_7

    .line 1052
    if-nez v17, :cond_9

    .line 1053
    if-eqz v11, :cond_8

    move/from16 v22, v18

    :goto_3
    move/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1057
    :goto_4
    const/16 v17, 0x1

    .line 1060
    :cond_7
    move-object/from16 v12, v20

    .line 1061
    .local v12, "lastView":Landroid/view/View;
    aget-boolean v11, v13, v16

    .local v11, "lastLight":Z
    goto :goto_2

    .end local v11    # "lastLight":Z
    .end local v12    # "lastView":Landroid/view/View;
    :cond_8
    move/from16 v22, v19

    .line 1053
    goto :goto_3

    .line 1055
    :cond_9
    if-eqz v11, :cond_a

    move/from16 v22, v6

    :goto_5
    move/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_4

    :cond_a
    move/from16 v22, v7

    goto :goto_5

    .line 1064
    .end local v20    # "v":Landroid/view/View;
    :cond_b
    if-eqz v12, :cond_c

    .line 1065
    if-eqz v17, :cond_10

    .line 1066
    const/16 v22, 0x7

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 1067
    const/16 v22, 0x8

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 1068
    const/16 v22, 0x3

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 1073
    if-eqz v11, :cond_f

    if-eqz p8, :cond_e

    move/from16 v22, v5

    .line 1072
    :goto_6
    move/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1082
    :cond_c
    :goto_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    .line 1083
    .local v14, "listView":Landroid/widget/ListView;
    if-eqz v14, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v22, v0

    if-eqz v22, :cond_d

    .line 1084
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1085
    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/internal/app/AlertController;->mCheckedItem:I

    .line 1086
    .local v8, "checkedItem":I
    const/16 v22, -0x1

    move/from16 v0, v22

    if-le v8, v0, :cond_d

    .line 1087
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v14, v8, v0}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 1088
    invoke-virtual {v14, v8}, Landroid/widget/ListView;->setSelection(I)V

    .line 972
    .end local v8    # "checkedItem":I
    :cond_d
    return-void

    .end local v14    # "listView":Landroid/widget/ListView;
    :cond_e
    move/from16 v22, v3

    .line 1073
    goto :goto_6

    :cond_f
    move/from16 v22, v4

    goto :goto_6

    .line 1075
    :cond_10
    const/16 v22, 0x4

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    .line 1076
    const/16 v22, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    .line 1078
    if-eqz v11, :cond_11

    move/from16 v22, v9

    :goto_8
    move/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_7

    :cond_11
    move/from16 v22, v10

    goto :goto_8
.end method

.method private setNegativeButtonClickable(Z)V
    .locals 1
    .param p1, "clickable"    # Z

    .prologue
    .line 526
    iget-boolean v0, p0, Lcom/android/internal/app/AlertController;->mButtonNegativeEnabled:Z

    if-eq v0, p1, :cond_0

    .line 527
    iput-boolean p1, p0, Lcom/android/internal/app/AlertController;->mButtonNegativeEnabled:Z

    .line 525
    :cond_0
    return-void
.end method

.method private setNeutralButtonClickable(Z)V
    .locals 1
    .param p1, "clickable"    # Z

    .prologue
    .line 558
    iget-boolean v0, p0, Lcom/android/internal/app/AlertController;->mButtonNeutralEnabled:Z

    if-eq v0, p1, :cond_0

    .line 559
    iput-boolean p1, p0, Lcom/android/internal/app/AlertController;->mButtonNeutralEnabled:Z

    .line 557
    :cond_0
    return-void
.end method

.method private setPositiveButtonClickable(Z)V
    .locals 1
    .param p1, "clickable"    # Z

    .prologue
    .line 494
    iget-boolean v0, p0, Lcom/android/internal/app/AlertController;->mButtonPositiveEnabled:Z

    if-eq v0, p1, :cond_0

    .line 495
    iput-boolean p1, p0, Lcom/android/internal/app/AlertController;->mButtonPositiveEnabled:Z

    .line 493
    :cond_0
    return-void
.end method

.method private setupButtons(Landroid/view/ViewGroup;)V
    .locals 6
    .param p1, "buttonPanel"    # Landroid/view/ViewGroup;

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 900
    const/4 v1, 0x0

    .line 901
    .local v1, "whichButtons":I
    const v2, 0x1020019

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    .line 902
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 904
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 905
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 912
    :goto_0
    const v2, 0x102001a

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    .line 913
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 915
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 916
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 924
    :goto_1
    const v2, 0x102001b

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    .line 925
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 927
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 928
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 936
    :goto_2
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/internal/app/AlertController;->shouldCenterSingleButton(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 897
    const/4 v2, 0x1

    .line 941
    if-ne v1, v2, :cond_5

    .line 942
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-direct {p0, v2}, Lcom/android/internal/app/AlertController;->centerButton(Landroid/widget/Button;)V

    .line 950
    :cond_0
    :goto_3
    if-eqz v1, :cond_7

    const/4 v0, 0x1

    .line 951
    .local v0, "hasButtons":Z
    :goto_4
    if-nez v0, :cond_1

    .line 952
    invoke-virtual {p1, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 896
    :cond_1
    return-void

    .line 907
    .end local v0    # "hasButtons":Z
    :cond_2
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 908
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 909
    const/4 v1, 0x1

    goto :goto_0

    .line 918
    :cond_3
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 919
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 921
    or-int/lit8 v1, v1, 0x2

    goto :goto_1

    .line 930
    :cond_4
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 931
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 933
    or-int/lit8 v1, v1, 0x4

    goto :goto_2

    .line 898
    :cond_5
    const/4 v2, 0x2

    .line 943
    if-ne v1, v2, :cond_6

    .line 944
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-direct {p0, v2}, Lcom/android/internal/app/AlertController;->centerButton(Landroid/widget/Button;)V

    goto :goto_3

    .line 899
    :cond_6
    const/4 v2, 0x4

    .line 945
    if-ne v1, v2, :cond_0

    .line 946
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-direct {p0, v2}, Lcom/android/internal/app/AlertController;->centerButton(Landroid/widget/Button;)V

    goto :goto_3

    .line 950
    :cond_7
    const/4 v0, 0x0

    .restart local v0    # "hasButtons":Z
    goto :goto_4
.end method

.method private setupContent(Landroid/view/ViewGroup;)V
    .locals 6
    .param p1, "contentPanel"    # Landroid/view/ViewGroup;

    .prologue
    const/16 v5, 0x8

    const/4 v4, -0x1

    .line 860
    const v2, 0x1020366

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ScrollView;

    iput-object v2, p0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    .line 861
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ScrollView;->setFocusable(Z)V

    .line 864
    const v2, 0x102000b

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    .line 865
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    if-nez v2, :cond_0

    .line 866
    return-void

    .line 869
    :cond_0
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    if-eqz v2, :cond_1

    .line 870
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 859
    :goto_0
    return-void

    .line 872
    :cond_1
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 873
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/ScrollView;->removeView(Landroid/view/View;)V

    .line 875
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    if-eqz v2, :cond_2

    .line 876
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v2}, Landroid/widget/ScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 877
    .local v1, "scrollParent":Landroid/view/ViewGroup;
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 878
    .local v0, "childIndex":I
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 879
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    .line 880
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 879
    invoke-virtual {v1, v2, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 882
    .end local v0    # "childIndex":I
    .end local v1    # "scrollParent":Landroid/view/ViewGroup;
    :cond_2
    invoke-virtual {p1, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method private setupCustomContent(Landroid/view/ViewGroup;)V
    .locals 8
    .param p1, "customPanel"    # Landroid/view/ViewGroup;

    .prologue
    const/high16 v7, 0x20000

    const/4 v5, 0x0

    const/4 v6, -0x1

    .line 781
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mView:Landroid/view/View;

    if-eqz v4, :cond_2

    .line 782
    iget-object v1, p0, Lcom/android/internal/app/AlertController;->mView:Landroid/view/View;

    .line 790
    :goto_0
    if-eqz v1, :cond_4

    const/4 v2, 0x1

    .line 791
    .local v2, "hasCustomView":Z
    :goto_1
    if-eqz v2, :cond_5

    invoke-static {v1}, Lcom/android/internal/app/AlertController;->canTextInput(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 796
    :goto_2
    if-eqz v2, :cond_6

    .line 797
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v5, 0x102002b

    invoke-virtual {v4, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 798
    .local v0, "custom":Landroid/widget/FrameLayout;
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 800
    iget-boolean v4, p0, Lcom/android/internal/app/AlertController;->mViewSpacingSpecified:Z

    if-eqz v4, :cond_0

    .line 802
    iget v4, p0, Lcom/android/internal/app/AlertController;->mViewSpacingLeft:I

    iget v5, p0, Lcom/android/internal/app/AlertController;->mViewSpacingTop:I

    iget v6, p0, Lcom/android/internal/app/AlertController;->mViewSpacingRight:I

    iget v7, p0, Lcom/android/internal/app/AlertController;->mViewSpacingBottom:I

    .line 801
    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 805
    :cond_0
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    if-eqz v4, :cond_1

    .line 806
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, 0x0

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 779
    .end local v0    # "custom":Landroid/widget/FrameLayout;
    :cond_1
    :goto_3
    return-void

    .line 783
    .end local v2    # "hasCustomView":Z
    :cond_2
    iget v4, p0, Lcom/android/internal/app/AlertController;->mViewLayoutResId:I

    if-eqz v4, :cond_3

    .line 784
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 785
    .local v3, "inflater":Landroid/view/LayoutInflater;
    iget v4, p0, Lcom/android/internal/app/AlertController;->mViewLayoutResId:I

    invoke-virtual {v3, v4, p1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .local v1, "customView":Landroid/view/View;
    goto :goto_0

    .line 787
    .end local v1    # "customView":Landroid/view/View;
    .end local v3    # "inflater":Landroid/view/LayoutInflater;
    :cond_3
    const/4 v1, 0x0

    .local v1, "customView":Landroid/view/View;
    goto :goto_0

    .line 790
    .end local v1    # "customView":Landroid/view/View;
    :cond_4
    const/4 v2, 0x0

    .restart local v2    # "hasCustomView":Z
    goto :goto_1

    .line 792
    :cond_5
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v4, v7, v7}, Landroid/view/Window;->setFlags(II)V

    goto :goto_2

    .line 809
    :cond_6
    const/16 v4, 0x8

    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_3
.end method

.method private setupDecor()V
    .locals 4

    .prologue
    .line 644
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 645
    .local v0, "decor":Landroid/view/View;
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v3, 0x102035d

    invoke-virtual {v2, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 646
    .local v1, "parent":Landroid/view/View;
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 647
    new-instance v2, Lcom/android/internal/app/AlertController$2;

    invoke-direct {v2, p0, v1}, Lcom/android/internal/app/AlertController$2;-><init>(Lcom/android/internal/app/AlertController;Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 659
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 660
    invoke-virtual {v0}, Landroid/view/View;->requestApplyInsets()V

    .line 643
    :cond_0
    return-void
.end method

.method private setupTitle(Landroid/view/ViewGroup;)V
    .locals 9
    .param p1, "topPanel"    # Landroid/view/ViewGroup;

    .prologue
    const v6, 0x102035f

    const/4 v5, 0x0

    const/16 v8, 0x8

    .line 814
    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mCustomTitleView:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 816
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    .line 817
    const/4 v3, -0x1

    const/4 v4, -0x2

    .line 816
    invoke-direct {v1, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 819
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mCustomTitleView:Landroid/view/View;

    invoke-virtual {p1, v3, v5, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 822
    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v3, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 823
    .local v2, "titleTemplate":Landroid/view/View;
    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    .line 813
    .end local v1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v2    # "titleTemplate":Landroid/view/View;
    :goto_0
    return-void

    .line 825
    :cond_0
    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v4, 0x1020006

    invoke-virtual {v3, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    .line 827
    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x0

    .line 828
    .local v0, "hasTextTitle":Z
    :goto_1
    if-eqz v0, :cond_4

    .line 830
    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v4, 0x1020360

    invoke-virtual {v3, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/internal/app/AlertController;->mTitleView:Landroid/widget/TextView;

    .line 831
    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mTitleView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 836
    iget v3, p0, Lcom/android/internal/app/AlertController;->mIconId:I

    if-eqz v3, :cond_2

    .line 837
    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    iget v4, p0, Lcom/android/internal/app/AlertController;->mIconId:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 827
    .end local v0    # "hasTextTitle":Z
    :cond_1
    const/4 v0, 0x1

    .restart local v0    # "hasTextTitle":Z
    goto :goto_1

    .line 838
    :cond_2
    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_3

    .line 839
    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 843
    :cond_3
    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mTitleView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v4

    .line 844
    iget-object v5, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v5

    .line 845
    iget-object v6, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v6

    .line 846
    iget-object v7, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v7

    .line 843
    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 847
    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 851
    :cond_4
    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v3, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 852
    .restart local v2    # "titleTemplate":Landroid/view/View;
    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    .line 853
    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 854
    invoke-virtual {p1, v8}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method private setupView()V
    .locals 28

    .prologue
    .line 701
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v24, 0x102035d

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v22

    .line 702
    .local v22, "parentPanel":Landroid/view/View;
    const v4, 0x102035e

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    .line 703
    .local v19, "defaultTopPanel":Landroid/view/View;
    const v4, 0x1020365

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    .line 704
    .local v18, "defaultContentPanel":Landroid/view/View;
    const v4, 0x1020362

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    .line 708
    .local v17, "defaultButtonPanel":Landroid/view/View;
    const v4, 0x1020367

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    .line 709
    .local v8, "customPanel":Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/internal/app/AlertController;->setupCustomContent(Landroid/view/ViewGroup;)V

    .line 711
    const v4, 0x102035e

    invoke-virtual {v8, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v16

    .line 712
    .local v16, "customTopPanel":Landroid/view/View;
    const v4, 0x1020365

    invoke-virtual {v8, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v15

    .line 713
    .local v15, "customContentPanel":Landroid/view/View;
    const v4, 0x1020362

    invoke-virtual {v8, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v14

    .line 716
    .local v14, "customButtonPanel":Landroid/view/View;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/internal/app/AlertController;->resolvePanel(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v6

    .line 717
    .local v6, "topPanel":Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v15, v1}, Lcom/android/internal/app/AlertController;->resolvePanel(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v7

    .line 718
    .local v7, "contentPanel":Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v14, v1}, Lcom/android/internal/app/AlertController;->resolvePanel(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v9

    .line 720
    .local v9, "buttonPanel":Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/internal/app/AlertController;->setupContent(Landroid/view/ViewGroup;)V

    .line 721
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/internal/app/AlertController;->setupButtons(Landroid/view/ViewGroup;)V

    .line 722
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/internal/app/AlertController;->setupTitle(Landroid/view/ViewGroup;)V

    .line 724
    if-eqz v8, :cond_7

    .line 725
    invoke-virtual {v8}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v4

    const/16 v24, 0x8

    move/from16 v0, v24

    if-eq v4, v0, :cond_6

    const/4 v11, 0x1

    .line 726
    .local v11, "hasCustomPanel":Z
    :goto_0
    if-eqz v6, :cond_9

    .line 727
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v4

    const/16 v24, 0x8

    move/from16 v0, v24

    if-eq v4, v0, :cond_8

    const/4 v10, 0x1

    .line 728
    .local v10, "hasTopPanel":Z
    :goto_1
    if-eqz v9, :cond_b

    .line 729
    invoke-virtual {v9}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v4

    const/16 v24, 0x8

    move/from16 v0, v24

    if-eq v4, v0, :cond_a

    const/4 v12, 0x1

    .line 732
    .local v12, "hasButtonPanel":Z
    :goto_2
    if-nez v12, :cond_1

    .line 733
    if-eqz v7, :cond_0

    .line 734
    const v4, 0x102036b

    invoke-virtual {v7, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v23

    .line 735
    .local v23, "spacer":Landroid/view/View;
    if-eqz v23, :cond_0

    .line 736
    const/4 v4, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 739
    .end local v23    # "spacer":Landroid/view/View;
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const/16 v24, 0x1

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Landroid/view/Window;->setCloseOnTouchOutsideIfNotSet(Z)V

    .line 742
    :cond_1
    if-eqz v10, :cond_4

    .line 744
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v4, :cond_2

    .line 745
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    const/16 v24, 0x1

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Landroid/widget/ScrollView;->setClipToPadding(Z)V

    .line 750
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    if-nez v4, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    if-eqz v4, :cond_c

    .line 751
    :cond_3
    const v4, 0x1020361

    invoke-virtual {v6, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v20

    .line 756
    .local v20, "divider":Landroid/view/View;
    :goto_3
    if-eqz v20, :cond_4

    .line 757
    const/4 v4, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 762
    .end local v20    # "divider":Landroid/view/View;
    :cond_4
    if-nez v11, :cond_5

    .line 763
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    if-eqz v4, :cond_d

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    .line 764
    .local v13, "content":Landroid/view/View;
    :goto_4
    if-eqz v13, :cond_5

    .line 765
    if-eqz v10, :cond_e

    const/4 v4, 0x1

    move/from16 v24, v4

    .line 766
    :goto_5
    if-eqz v12, :cond_f

    const/4 v4, 0x2

    .line 765
    :goto_6
    or-int v21, v24, v4

    .line 768
    .local v21, "indicators":I
    const/4 v4, 0x3

    .line 767
    move/from16 v0, v21

    invoke-virtual {v13, v0, v4}, Landroid/view/View;->setScrollIndicators(II)V

    .line 772
    .end local v13    # "content":Landroid/view/View;
    .end local v21    # "indicators":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    .line 773
    sget-object v24, Lcom/android/internal/R$styleable;->AlertDialog:[I

    const/16 v25, 0x0

    const v26, 0x101005d

    const/16 v27, 0x0

    .line 772
    move-object/from16 v0, v25

    move-object/from16 v1, v24

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    .local v5, "a":Landroid/content/res/TypedArray;
    move-object/from16 v4, p0

    .line 774
    invoke-direct/range {v4 .. v12}, Lcom/android/internal/app/AlertController;->setBackground(Landroid/content/res/TypedArray;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;ZZZ)V

    .line 776
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 700
    return-void

    .line 725
    .end local v5    # "a":Landroid/content/res/TypedArray;
    .end local v10    # "hasTopPanel":Z
    .end local v11    # "hasCustomPanel":Z
    .end local v12    # "hasButtonPanel":Z
    :cond_6
    const/4 v11, 0x0

    .restart local v11    # "hasCustomPanel":Z
    goto/16 :goto_0

    .line 724
    .end local v11    # "hasCustomPanel":Z
    :cond_7
    const/4 v11, 0x0

    .restart local v11    # "hasCustomPanel":Z
    goto/16 :goto_0

    .line 727
    :cond_8
    const/4 v10, 0x0

    .restart local v10    # "hasTopPanel":Z
    goto/16 :goto_1

    .line 726
    .end local v10    # "hasTopPanel":Z
    :cond_9
    const/4 v10, 0x0

    .restart local v10    # "hasTopPanel":Z
    goto/16 :goto_1

    .line 729
    :cond_a
    const/4 v12, 0x0

    .restart local v12    # "hasButtonPanel":Z
    goto/16 :goto_2

    .line 728
    .end local v12    # "hasButtonPanel":Z
    :cond_b
    const/4 v12, 0x0

    .restart local v12    # "hasButtonPanel":Z
    goto/16 :goto_2

    .line 750
    :cond_c
    if-nez v11, :cond_3

    .line 753
    const v4, 0x1020369

    invoke-virtual {v6, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v20

    .restart local v20    # "divider":Landroid/view/View;
    goto :goto_3

    .line 763
    .end local v20    # "divider":Landroid/view/View;
    :cond_d
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    .restart local v13    # "content":Landroid/view/View;
    goto :goto_4

    .line 765
    :cond_e
    const/4 v4, 0x0

    move/from16 v24, v4

    goto :goto_5

    .line 766
    :cond_f
    const/4 v4, 0x0

    goto :goto_6
.end method

.method private static shouldCenterSingleButton(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 197
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 198
    .local v0, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const v4, 0x1160017

    invoke-virtual {v3, v4, v0, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 199
    iget v3, v0, Landroid/util/TypedValue;->data:I

    if-eqz v3, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method


# virtual methods
.method public getButton(I)Landroid/widget/Button;
    .locals 1
    .param p1, "whichButton"    # I

    .prologue
    .line 621
    packed-switch p1, :pswitch_data_0

    .line 629
    const/4 v0, 0x0

    return-object v0

    .line 623
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    return-object v0

    .line 625
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    return-object v0

    .line 627
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    return-object v0

    .line 621
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getIconAttributeResId(I)I
    .locals 3
    .param p1, "attrId"    # I

    .prologue
    .line 607
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 608
    .local v0, "out":Landroid/util/TypedValue;
    iget-object v1, p0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 609
    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    return v1
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 617
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method public installContent()V
    .locals 3

    .prologue
    .line 255
    iget-object v1, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/Window;->requestFeature(I)Z

    .line 256
    invoke-direct {p0}, Lcom/android/internal/app/AlertController;->selectContentView()I

    move-result v0

    .line 257
    .local v0, "contentView":I
    iget-object v1, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v1, v0}, Landroid/view/Window;->setContentView(I)V

    .line 258
    invoke-direct {p0}, Lcom/android/internal/app/AlertController;->setupView()V

    .line 259
    invoke-direct {p0}, Lcom/android/internal/app/AlertController;->setupDecor()V

    .line 261
    invoke-direct {p0}, Lcom/android/internal/app/AlertController;->applyLeuiStyle()V

    .line 253
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 635
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, p2}, Landroid/widget/ScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 640
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, p2}, Landroid/widget/ScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V
    .locals 2
    .param p1, "whichButton"    # I
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "listener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p4, "msg"    # Landroid/os/Message;

    .prologue
    .line 350
    if-nez p4, :cond_0

    if-eqz p3, :cond_0

    .line 351
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p4

    .line 354
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 372
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Button does not exist"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 357
    :pswitch_0
    iput-object p2, p0, Lcom/android/internal/app/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    .line 358
    iput-object p4, p0, Lcom/android/internal/app/AlertController;->mButtonPositiveMessage:Landroid/os/Message;

    .line 348
    :goto_0
    return-void

    .line 362
    :pswitch_1
    iput-object p2, p0, Lcom/android/internal/app/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    .line 363
    iput-object p4, p0, Lcom/android/internal/app/AlertController;->mButtonNegativeMessage:Landroid/os/Message;

    goto :goto_0

    .line 367
    :pswitch_2
    iput-object p2, p0, Lcom/android/internal/app/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    .line 368
    iput-object p4, p0, Lcom/android/internal/app/AlertController;->mButtonNeutralMessage:Landroid/os/Message;

    goto :goto_0

    .line 354
    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;Landroid/app/AlertDialog$ButtonPattern;)V
    .locals 2
    .param p1, "whichButton"    # I
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "listener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p4, "msg"    # Landroid/os/Message;
    .param p5, "pattern"    # Landroid/app/AlertDialog$ButtonPattern;

    .prologue
    .line 393
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/app/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 395
    packed-switch p1, :pswitch_data_0

    .line 410
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Button does not exist"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 398
    :pswitch_0
    iput-object p5, p0, Lcom/android/internal/app/AlertController;->mButtonPositivePattern:Landroid/app/AlertDialog$ButtonPattern;

    .line 391
    :goto_0
    return-void

    .line 402
    :pswitch_1
    iput-object p5, p0, Lcom/android/internal/app/AlertController;->mButtonNegativePattern:Landroid/app/AlertDialog$ButtonPattern;

    goto :goto_0

    .line 406
    :pswitch_2
    iput-object p5, p0, Lcom/android/internal/app/AlertController;->mButtonNeutralPattern:Landroid/app/AlertDialog$ButtonPattern;

    goto :goto_0

    .line 395
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setButtonEnabled(IZ)V
    .locals 2
    .param p1, "whichButton"    # I
    .param p2, "enabled"    # Z

    .prologue
    .line 421
    packed-switch p1, :pswitch_data_0

    .line 436
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Button does not exist"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 424
    :pswitch_0
    invoke-virtual {p0, p2}, Lcom/android/internal/app/AlertController;->setPositiveButtonEnabled(Z)V

    .line 420
    :goto_0
    return-void

    .line 428
    :pswitch_1
    invoke-virtual {p0, p2}, Lcom/android/internal/app/AlertController;->setNegativeButtonEnabled(Z)V

    goto :goto_0

    .line 432
    :pswitch_2
    invoke-virtual {p0, p2}, Lcom/android/internal/app/AlertController;->setNeutralButtonEnabled(Z)V

    goto :goto_0

    .line 421
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setButtonPanelLayoutHint(I)V
    .locals 0
    .param p1, "layoutHint"    # I

    .prologue
    .line 332
    iput p1, p0, Lcom/android/internal/app/AlertController;->mButtonPanelLayoutHint:I

    .line 331
    return-void
.end method

.method public setCustomTitle(Landroid/view/View;)V
    .locals 0
    .param p1, "customTitleView"    # Landroid/view/View;

    .prologue
    .line 286
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mCustomTitleView:Landroid/view/View;

    .line 285
    return-void
.end method

.method public setIcon(I)V
    .locals 2
    .param p1, "resId"    # I

    .prologue
    const/4 v0, 0x0

    .line 570
    iput-object v0, p0, Lcom/android/internal/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 571
    iput p1, p0, Lcom/android/internal/app/AlertController;->mIconId:I

    .line 573
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 574
    if-eqz p1, :cond_1

    .line 575
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/internal/app/AlertController;->mIconId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 569
    :cond_0
    :goto_0
    return-void

    .line 577
    :cond_1
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 588
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 589
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/app/AlertController;->mIconId:I

    .line 591
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 592
    if-eqz p1, :cond_1

    .line 593
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 587
    :cond_0
    :goto_0
    return-void

    .line 595
    :cond_1
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setInverseBackgroundForced(Z)V
    .locals 0
    .param p1, "forceInverseBackground"    # Z

    .prologue
    .line 613
    iput-boolean p1, p0, Lcom/android/internal/app/AlertController;->mForceInverseBackground:Z

    .line 612
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 290
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    .line 291
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 289
    :cond_0
    return-void
.end method

.method public setNegativeButtonEnabled(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    .line 505
    iget-boolean v2, p0, Lcom/android/internal/app/AlertController;->mButtonNegativeEnabled:Z

    if-eq v2, p1, :cond_0

    .line 506
    iput-boolean p1, p0, Lcom/android/internal/app/AlertController;->mButtonNegativeEnabled:Z

    .line 507
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v3, 0x102001a

    invoke-virtual {v2, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 508
    .local v1, "button":Landroid/widget/Button;
    if-eqz v1, :cond_0

    .line 509
    invoke-virtual {v1, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 510
    if-eqz p1, :cond_1

    .line 511
    invoke-virtual {v1}, Landroid/widget/Button;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v2

    const/16 v3, 0xff

    invoke-virtual {v2, v3}, Landroid/content/res/ColorStateList;->withAlpha(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 504
    .end local v1    # "button":Landroid/widget/Button;
    :cond_0
    :goto_0
    return-void

    .line 513
    .restart local v1    # "button":Landroid/widget/Button;
    :cond_1
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e00c1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 514
    .local v0, "alpha":I
    invoke-virtual {v1}, Landroid/widget/Button;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/ColorStateList;->withAlpha(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0
.end method

.method public setNegativeButtonPattern(Landroid/app/AlertDialog$ButtonPattern;)V
    .locals 0
    .param p1, "pattern"    # Landroid/app/AlertDialog$ButtonPattern;

    .prologue
    .line 455
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mButtonNegativePattern:Landroid/app/AlertDialog$ButtonPattern;

    .line 454
    return-void
.end method

.method public setNeutralButtonEnabled(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    .line 537
    iget-boolean v2, p0, Lcom/android/internal/app/AlertController;->mButtonNeutralEnabled:Z

    if-eq v2, p1, :cond_0

    .line 538
    iput-boolean p1, p0, Lcom/android/internal/app/AlertController;->mButtonNeutralEnabled:Z

    .line 539
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v3, 0x102001b

    invoke-virtual {v2, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 540
    .local v1, "button":Landroid/widget/Button;
    if-eqz v1, :cond_0

    .line 541
    invoke-virtual {v1, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 542
    if-eqz p1, :cond_1

    .line 543
    invoke-virtual {v1}, Landroid/widget/Button;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v2

    const/16 v3, 0xff

    invoke-virtual {v2, v3}, Landroid/content/res/ColorStateList;->withAlpha(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 536
    .end local v1    # "button":Landroid/widget/Button;
    :cond_0
    :goto_0
    return-void

    .line 545
    .restart local v1    # "button":Landroid/widget/Button;
    :cond_1
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e00c1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 546
    .local v0, "alpha":I
    invoke-virtual {v1}, Landroid/widget/Button;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/ColorStateList;->withAlpha(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0
.end method

.method public setNeutralButtonPattern(Landroid/app/AlertDialog$ButtonPattern;)V
    .locals 0
    .param p1, "pattern"    # Landroid/app/AlertDialog$ButtonPattern;

    .prologue
    .line 464
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mButtonNeutralPattern:Landroid/app/AlertDialog$ButtonPattern;

    .line 463
    return-void
.end method

.method public setPositiveButtonEnabled(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    .line 473
    iget-boolean v2, p0, Lcom/android/internal/app/AlertController;->mButtonPositiveEnabled:Z

    if-eq v2, p1, :cond_0

    .line 474
    iput-boolean p1, p0, Lcom/android/internal/app/AlertController;->mButtonPositiveEnabled:Z

    .line 475
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v3, 0x1020019

    invoke-virtual {v2, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 476
    .local v1, "button":Landroid/widget/Button;
    if-eqz v1, :cond_0

    .line 477
    invoke-virtual {v1, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 478
    if-eqz p1, :cond_1

    .line 479
    invoke-virtual {v1}, Landroid/widget/Button;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v2

    const/16 v3, 0xff

    invoke-virtual {v2, v3}, Landroid/content/res/ColorStateList;->withAlpha(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 472
    .end local v1    # "button":Landroid/widget/Button;
    :cond_0
    :goto_0
    return-void

    .line 481
    .restart local v1    # "button":Landroid/widget/Button;
    :cond_1
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e00c1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 482
    .local v0, "alpha":I
    invoke-virtual {v1}, Landroid/widget/Button;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/ColorStateList;->withAlpha(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0
.end method

.method public setPositiveButtonPattern(Landroid/app/AlertDialog$ButtonPattern;)V
    .locals 0
    .param p1, "pattern"    # Landroid/app/AlertDialog$ButtonPattern;

    .prologue
    .line 446
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mButtonPositivePattern:Landroid/app/AlertDialog$ButtonPattern;

    .line 445
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 276
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mTitle:Ljava/lang/CharSequence;

    .line 277
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 275
    :cond_0
    return-void
.end method

.method public setView(I)V
    .locals 1
    .param p1, "layoutResId"    # I

    .prologue
    .line 300
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/AlertController;->mView:Landroid/view/View;

    .line 301
    iput p1, p0, Lcom/android/internal/app/AlertController;->mViewLayoutResId:I

    .line 302
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/AlertController;->mViewSpacingSpecified:Z

    .line 299
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 309
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mView:Landroid/view/View;

    .line 310
    iput v0, p0, Lcom/android/internal/app/AlertController;->mViewLayoutResId:I

    .line 311
    iput-boolean v0, p0, Lcom/android/internal/app/AlertController;->mViewSpacingSpecified:Z

    .line 308
    return-void
.end method

.method public setView(Landroid/view/View;IIII)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewSpacingLeft"    # I
    .param p3, "viewSpacingTop"    # I
    .param p4, "viewSpacingRight"    # I
    .param p5, "viewSpacingBottom"    # I

    .prologue
    .line 319
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mView:Landroid/view/View;

    .line 320
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/app/AlertController;->mViewLayoutResId:I

    .line 321
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/AlertController;->mViewSpacingSpecified:Z

    .line 322
    iput p2, p0, Lcom/android/internal/app/AlertController;->mViewSpacingLeft:I

    .line 323
    iput p3, p0, Lcom/android/internal/app/AlertController;->mViewSpacingTop:I

    .line 324
    iput p4, p0, Lcom/android/internal/app/AlertController;->mViewSpacingRight:I

    .line 325
    iput p5, p0, Lcom/android/internal/app/AlertController;->mViewSpacingBottom:I

    .line 318
    return-void
.end method
