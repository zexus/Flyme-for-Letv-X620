.class public Lcom/letv/leui/widget/LeListPreferenceView;
.super Landroid/widget/LinearLayout;
.source "LeListPreferenceView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/leui/widget/LeListPreferenceView$OnChangeListener;,
        Lcom/letv/leui/widget/LeListPreferenceView$OnItemChangeListener;,
        Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup;,
        Lcom/letv/leui/widget/LeListPreferenceView$1;,
        Lcom/letv/leui/widget/LeListPreferenceView$2;,
        Lcom/letv/leui/widget/LeListPreferenceView$3;
    }
.end annotation


# static fields
.field public static final GRAVITY_END:I = 0x4

.field public static final GRAVITY_START:I = 0x3

.field private static final MAX_ITEMS_MEASURED:I = 0xf

.field public static final MODE_BOTTOM_SHEET:I = 0x2

.field public static final MODE_DIALOG:I = 0x0

.field public static final MODE_DROPDOWN:I = 0x1


# instance fields
.field private final DISMISS_FADE_OUT:I

.field private final SHOWING_FADE_IN:I

.field animateDrawable:Landroid/graphics/drawable/Drawable;

.field private arrow:Landroid/widget/ImageView;

.field private bottomSheet:Lcom/letv/leui/widget/LeBottomSheet;

.field private bottomSheetListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private final delta:F

.field handler:Landroid/os/Handler;

.field private icon:Landroid/widget/ImageView;

.field private iconDrawable:Landroid/graphics/drawable/Drawable;

.field isAnimate:Z

.field private lastClickTime:J

.field private layoutResouce:I

.field private lePopGravity:I

.field private listTitleColorNormal:I

.field private listTitleColorSelected:I

.field private mAnchorView:Landroid/view/View;

.field private mBottomSheetBtnText:Ljava/lang/String;

.field private mBottomSheetCheckIsOn:Z

.field private mBottomSheetTitleText:Ljava/lang/String;

.field mBtnListener:Landroid/view/View$OnClickListener;

.field private mClickedDialogEntryIndex:I

.field private mCurrentOrientation:I

.field private mDropDownWidth:I

.field private mEntries:[Ljava/lang/CharSequence;

.field private mEntryValues:[Ljava/lang/CharSequence;

.field private mMaxDropDownHeight:I

.field private mOnChangeListener:Lcom/letv/leui/widget/LeListPreferenceView$OnChangeListener;

.field private mOnItemChangeListener:Lcom/letv/leui/widget/LeListPreferenceView$OnItemChangeListener;

.field private mPopup:Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup;

.field private mTempRect:Landroid/graphics/Rect;

.field private mUnableItemIndex:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mValueSet:Z

.field private messageView:Landroid/widget/TextView;

.field private orgAlpha:F

.field private overlayResouce:I

.field private rootView:Landroid/view/View;

.field private summary:Ljava/lang/CharSequence;

.field private summaryView:Landroid/widget/TextView;

.field private title:Ljava/lang/CharSequence;

.field private titleView:Landroid/widget/TextView;

.field private widgetResouce:I


# direct methods
.method static synthetic -get0(Lcom/letv/leui/widget/LeListPreferenceView;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/letv/leui/widget/LeListPreferenceView;->arrow:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -get1(Lcom/letv/leui/widget/LeListPreferenceView;)Lcom/letv/leui/widget/LeBottomSheet;
    .locals 1

    iget-object v0, p0, Lcom/letv/leui/widget/LeListPreferenceView;->bottomSheet:Lcom/letv/leui/widget/LeBottomSheet;

    return-object v0
.end method

.method static synthetic -get10(Lcom/letv/leui/widget/LeListPreferenceView;)[Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/letv/leui/widget/LeListPreferenceView;->mEntryValues:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic -get11(Lcom/letv/leui/widget/LeListPreferenceView;)I
    .locals 1

    iget v0, p0, Lcom/letv/leui/widget/LeListPreferenceView;->mMaxDropDownHeight:I

    return v0
.end method

.method static synthetic -get12(Lcom/letv/leui/widget/LeListPreferenceView;)Lcom/letv/leui/widget/LeListPreferenceView$OnChangeListener;
    .locals 1

    iget-object v0, p0, Lcom/letv/leui/widget/LeListPreferenceView;->mOnChangeListener:Lcom/letv/leui/widget/LeListPreferenceView$OnChangeListener;

    return-object v0
.end method

.method static synthetic -get13(Lcom/letv/leui/widget/LeListPreferenceView;)Lcom/letv/leui/widget/LeListPreferenceView$OnItemChangeListener;
    .locals 1

    iget-object v0, p0, Lcom/letv/leui/widget/LeListPreferenceView;->mOnItemChangeListener:Lcom/letv/leui/widget/LeListPreferenceView$OnItemChangeListener;

    return-object v0
.end method

.method static synthetic -get14(Lcom/letv/leui/widget/LeListPreferenceView;)Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup;
    .locals 1

    iget-object v0, p0, Lcom/letv/leui/widget/LeListPreferenceView;->mPopup:Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup;

    return-object v0
.end method

.method static synthetic -get15(Lcom/letv/leui/widget/LeListPreferenceView;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/letv/leui/widget/LeListPreferenceView;->mTempRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic -get16(Lcom/letv/leui/widget/LeListPreferenceView;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/letv/leui/widget/LeListPreferenceView;->messageView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get17(Lcom/letv/leui/widget/LeListPreferenceView;)F
    .locals 1

    iget v0, p0, Lcom/letv/leui/widget/LeListPreferenceView;->orgAlpha:F

    return v0
.end method

.method static synthetic -get18(Lcom/letv/leui/widget/LeListPreferenceView;)I
    .locals 1

    iget v0, p0, Lcom/letv/leui/widget/LeListPreferenceView;->overlayResouce:I

    return v0
.end method

.method static synthetic -get2(Lcom/letv/leui/widget/LeListPreferenceView;)I
    .locals 1

    iget v0, p0, Lcom/letv/leui/widget/LeListPreferenceView;->lePopGravity:I

    return v0
.end method

.method static synthetic -get3(Lcom/letv/leui/widget/LeListPreferenceView;)I
    .locals 1

    iget v0, p0, Lcom/letv/leui/widget/LeListPreferenceView;->listTitleColorNormal:I

    return v0
.end method

.method static synthetic -get4(Lcom/letv/leui/widget/LeListPreferenceView;)I
    .locals 1

    iget v0, p0, Lcom/letv/leui/widget/LeListPreferenceView;->listTitleColorSelected:I

    return v0
.end method

.method static synthetic -get5(Lcom/letv/leui/widget/LeListPreferenceView;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/letv/leui/widget/LeListPreferenceView;->mAnchorView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get6(Lcom/letv/leui/widget/LeListPreferenceView;)I
    .locals 1

    iget v0, p0, Lcom/letv/leui/widget/LeListPreferenceView;->mClickedDialogEntryIndex:I

    return v0
.end method

.method static synthetic -get7(Lcom/letv/leui/widget/LeListPreferenceView;)I
    .locals 1

    iget v0, p0, Lcom/letv/leui/widget/LeListPreferenceView;->mCurrentOrientation:I

    return v0
.end method

.method static synthetic -get8(Lcom/letv/leui/widget/LeListPreferenceView;)I
    .locals 1

    iget v0, p0, Lcom/letv/leui/widget/LeListPreferenceView;->mDropDownWidth:I

    return v0
.end method

.method static synthetic -get9(Lcom/letv/leui/widget/LeListPreferenceView;)[Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/letv/leui/widget/LeListPreferenceView;->mEntries:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic -set0(Lcom/letv/leui/widget/LeListPreferenceView;I)I
    .locals 0

    iput p1, p0, Lcom/letv/leui/widget/LeListPreferenceView;->mClickedDialogEntryIndex:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/letv/leui/widget/LeListPreferenceView;)V
    .locals 0

    invoke-direct {p0}, Lcom/letv/leui/widget/LeListPreferenceView;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 98
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/letv/leui/widget/LeListPreferenceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 97
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const v9, 0x1020018

    const/4 v8, 0x4

    const/4 v7, -0x2

    const/4 v6, 0x0

    .line 103
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    const v3, 0x10900c2

    iput v3, p0, Lcom/letv/leui/widget/LeListPreferenceView;->layoutResouce:I

    .line 40
    const v3, 0x10900c9

    iput v3, p0, Lcom/letv/leui/widget/LeListPreferenceView;->widgetResouce:I

    .line 42
    const v3, 0x10900c3

    iput v3, p0, Lcom/letv/leui/widget/LeListPreferenceView;->overlayResouce:I

    .line 65
    iput v8, p0, Lcom/letv/leui/widget/LeListPreferenceView;->lePopGravity:I

    .line 67
    iput v7, p0, Lcom/letv/leui/widget/LeListPreferenceView;->mDropDownWidth:I

    .line 69
    iput v7, p0, Lcom/letv/leui/widget/LeListPreferenceView;->mMaxDropDownHeight:I

    .line 83
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/letv/leui/widget/LeListPreferenceView;->mTempRect:Landroid/graphics/Rect;

    .line 95
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/letv/leui/widget/LeListPreferenceView;->mBottomSheetCheckIsOn:Z

    .line 389
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/letv/leui/widget/LeListPreferenceView;->lastClickTime:J

    .line 421
    new-instance v3, Lcom/letv/leui/widget/LeListPreferenceView$1;

    invoke-direct {v3, p0}, Lcom/letv/leui/widget/LeListPreferenceView$1;-><init>(Lcom/letv/leui/widget/LeListPreferenceView;)V

    iput-object v3, p0, Lcom/letv/leui/widget/LeListPreferenceView;->mBtnListener:Landroid/view/View$OnClickListener;

    .line 444
    new-instance v3, Lcom/letv/leui/widget/LeListPreferenceView$2;

    invoke-direct {v3, p0}, Lcom/letv/leui/widget/LeListPreferenceView$2;-><init>(Lcom/letv/leui/widget/LeListPreferenceView;)V

    iput-object v3, p0, Lcom/letv/leui/widget/LeListPreferenceView;->bottomSheetListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 522
    const/16 v3, 0x65

    iput v3, p0, Lcom/letv/leui/widget/LeListPreferenceView;->SHOWING_FADE_IN:I

    .line 523
    const/16 v3, 0x66

    iput v3, p0, Lcom/letv/leui/widget/LeListPreferenceView;->DISMISS_FADE_OUT:I

    .line 524
    const v3, 0x3d4ccccd    # 0.05f

    iput v3, p0, Lcom/letv/leui/widget/LeListPreferenceView;->delta:F

    .line 525
    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, p0, Lcom/letv/leui/widget/LeListPreferenceView;->orgAlpha:F

    .line 527
    new-instance v3, Lcom/letv/leui/widget/LeListPreferenceView$3;

    invoke-direct {v3, p0}, Lcom/letv/leui/widget/LeListPreferenceView$3;-><init>(Lcom/letv/leui/widget/LeListPreferenceView;)V

    iput-object v3, p0, Lcom/letv/leui/widget/LeListPreferenceView;->handler:Landroid/os/Handler;

    .line 568
    iput-boolean v6, p0, Lcom/letv/leui/widget/LeListPreferenceView;->isAnimate:Z

    .line 105
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x106012b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    iput v3, p0, Lcom/letv/leui/widget/LeListPreferenceView;->listTitleColorNormal:I

    .line 106
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x106012c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    iput v3, p0, Lcom/letv/leui/widget/LeListPreferenceView;->listTitleColorSelected:I

    .line 107
    sget-object v3, Lcom/android/internal/R$styleable;->LeListPreferenceView:[I

    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 110
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v2

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_0

    .line 111
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v1

    .line 112
    .local v1, "attr":I
    packed-switch v1, :pswitch_data_0

    .line 110
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 114
    :pswitch_0
    iget v3, p0, Lcom/letv/leui/widget/LeListPreferenceView;->overlayResouce:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lcom/letv/leui/widget/LeListPreferenceView;->overlayResouce:I

    goto :goto_1

    .line 117
    :pswitch_1
    iget v3, p0, Lcom/letv/leui/widget/LeListPreferenceView;->layoutResouce:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lcom/letv/leui/widget/LeListPreferenceView;->layoutResouce:I

    goto :goto_1

    .line 120
    :pswitch_2
    iget v3, p0, Lcom/letv/leui/widget/LeListPreferenceView;->widgetResouce:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lcom/letv/leui/widget/LeListPreferenceView;->widgetResouce:I

    goto :goto_1

    .line 123
    :pswitch_3
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lcom/letv/leui/widget/LeListPreferenceView;->mEntries:[Ljava/lang/CharSequence;

    goto :goto_1

    .line 126
    :pswitch_4
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lcom/letv/leui/widget/LeListPreferenceView;->mEntryValues:[Ljava/lang/CharSequence;

    goto :goto_1

    .line 129
    :pswitch_5
    invoke-virtual {v0, v1, v8}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iput v3, p0, Lcom/letv/leui/widget/LeListPreferenceView;->lePopGravity:I

    goto :goto_1

    .line 132
    :pswitch_6
    invoke-virtual {v0, v1, v7}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v3

    iput v3, p0, Lcom/letv/leui/widget/LeListPreferenceView;->mDropDownWidth:I

    goto :goto_1

    .line 135
    :pswitch_7
    iget v3, p0, Lcom/letv/leui/widget/LeListPreferenceView;->mMaxDropDownHeight:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v3

    iput v3, p0, Lcom/letv/leui/widget/LeListPreferenceView;->mMaxDropDownHeight:I

    goto :goto_1

    .line 138
    :pswitch_8
    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, p0, Lcom/letv/leui/widget/LeListPreferenceView;->listTitleColorNormal:I

    goto :goto_1

    .line 141
    :pswitch_9
    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, p0, Lcom/letv/leui/widget/LeListPreferenceView;->listTitleColorSelected:I

    goto :goto_1

    .line 144
    :pswitch_a
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/letv/leui/widget/LeListPreferenceView;->title:Ljava/lang/CharSequence;

    goto :goto_1

    .line 147
    :pswitch_b
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/letv/leui/widget/LeListPreferenceView;->summary:Ljava/lang/CharSequence;

    goto :goto_1

    .line 150
    :pswitch_c
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/letv/leui/widget/LeListPreferenceView;->iconDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 158
    .end local v1    # "attr":I
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 160
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeListPreferenceView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    iget v4, p0, Lcom/letv/leui/widget/LeListPreferenceView;->layoutResouce:I

    invoke-virtual {v3, v4, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/letv/leui/widget/LeListPreferenceView;->rootView:Landroid/view/View;

    .line 162
    iget v3, p0, Lcom/letv/leui/widget/LeListPreferenceView;->widgetResouce:I

    if-lez v3, :cond_1

    invoke-virtual {p0, v9}, Lcom/letv/leui/widget/LeListPreferenceView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 163
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeListPreferenceView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    iget v5, p0, Lcom/letv/leui/widget/LeListPreferenceView;->widgetResouce:I

    .line 164
    invoke-virtual {p0, v9}, Lcom/letv/leui/widget/LeListPreferenceView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 163
    invoke-virtual {v4, v5, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 167
    :cond_1
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeListPreferenceView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v4, 0x1040000

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/letv/leui/widget/LeListPreferenceView;->mBottomSheetBtnText:Ljava/lang/String;

    .line 169
    invoke-direct {p0}, Lcom/letv/leui/widget/LeListPreferenceView;->initView()V

    .line 102
    return-void

    .line 112
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_3
        :pswitch_1
        :pswitch_a
        :pswitch_b
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_0
    .end packed-switch
.end method

.method private getSheetData()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 429
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 431
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/letv/leui/widget/LeListPreferenceView;->mEntries:[Ljava/lang/CharSequence;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 432
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 433
    .local v1, "item":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v3, "text"

    iget-object v4, p0, Lcom/letv/leui/widget/LeListPreferenceView;->mEntries:[Ljava/lang/CharSequence;

    aget-object v4, v4, v0

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 431
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 437
    .end local v1    # "item":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    return-object v2
.end method

.method private getSheetKeySet()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 441
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "text"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method private initView()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 174
    const v0, 0x1020016

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeListPreferenceView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/letv/leui/widget/LeListPreferenceView;->titleView:Landroid/widget/TextView;

    .line 175
    const v0, 0x1020010

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeListPreferenceView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/letv/leui/widget/LeListPreferenceView;->summaryView:Landroid/widget/TextView;

    .line 176
    const v0, 0x102000b

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeListPreferenceView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/letv/leui/widget/LeListPreferenceView;->messageView:Landroid/widget/TextView;

    .line 177
    const v0, 0x1020006

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeListPreferenceView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/letv/leui/widget/LeListPreferenceView;->icon:Landroid/widget/ImageView;

    .line 179
    iget-object v0, p0, Lcom/letv/leui/widget/LeListPreferenceView;->icon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/letv/leui/widget/LeListPreferenceView;->iconDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    .line 181
    iget-object v0, p0, Lcom/letv/leui/widget/LeListPreferenceView;->icon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 182
    iget-object v0, p0, Lcom/letv/leui/widget/LeListPreferenceView;->icon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/letv/leui/widget/LeListPreferenceView;->iconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 188
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/letv/leui/widget/LeListPreferenceView;->titleView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 189
    iget-object v0, p0, Lcom/letv/leui/widget/LeListPreferenceView;->titleView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeListPreferenceView;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    :cond_1
    iget-object v0, p0, Lcom/letv/leui/widget/LeListPreferenceView;->summaryView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 193
    iget-object v0, p0, Lcom/letv/leui/widget/LeListPreferenceView;->summaryView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeListPreferenceView;->getSummary()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    :cond_2
    iget-object v0, p0, Lcom/letv/leui/widget/LeListPreferenceView;->messageView:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/letv/leui/widget/LeListPreferenceView;->mEntries:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_3

    .line 197
    iget v0, p0, Lcom/letv/leui/widget/LeListPreferenceView;->mClickedDialogEntryIndex:I

    if-ltz v0, :cond_3

    iget v0, p0, Lcom/letv/leui/widget/LeListPreferenceView;->mClickedDialogEntryIndex:I

    iget-object v1, p0, Lcom/letv/leui/widget/LeListPreferenceView;->mEntries:[Ljava/lang/CharSequence;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 198
    iget-object v0, p0, Lcom/letv/leui/widget/LeListPreferenceView;->messageView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/letv/leui/widget/LeListPreferenceView;->mEntries:[Ljava/lang/CharSequence;

    iget v2, p0, Lcom/letv/leui/widget/LeListPreferenceView;->mClickedDialogEntryIndex:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 201
    :cond_3
    iget-object v0, p0, Lcom/letv/leui/widget/LeListPreferenceView;->rootView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    const v0, 0x102046e

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeListPreferenceView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/letv/leui/widget/LeListPreferenceView;->arrow:Landroid/widget/ImageView;

    .line 205
    iget-object v0, p0, Lcom/letv/leui/widget/LeListPreferenceView;->arrow:Landroid/widget/ImageView;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/letv/leui/widget/LeListPreferenceView;->arrow:Landroid/widget/ImageView;

    :goto_1
    iput-object v0, p0, Lcom/letv/leui/widget/LeListPreferenceView;->mAnchorView:Landroid/view/View;

    .line 173
    return-void

    .line 184
    :cond_4
    iget-object v0, p0, Lcom/letv/leui/widget/LeListPreferenceView;->icon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 205
    :cond_5
    iget-object v0, p0, Lcom/letv/leui/widget/LeListPreferenceView;->messageView:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/letv/leui/widget/LeListPreferenceView;->messageView:Landroid/widget/TextView;

    goto :goto_1

    :cond_6
    move-object v0, p0

    goto :goto_1
.end method

.method private onDismissAnimate(Landroid/view/View;Landroid/animation/Animator;)V
    .locals 1
    .param p1, "taget"    # Landroid/view/View;
    .param p2, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 572
    invoke-virtual {p2, p1}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 573
    new-instance v0, Lcom/letv/leui/widget/LeListPreferenceView$5;

    invoke-direct {v0, p0}, Lcom/letv/leui/widget/LeListPreferenceView$5;-><init>(Lcom/letv/leui/widget/LeListPreferenceView;)V

    invoke-virtual {p2, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 594
    invoke-virtual {p2}, Landroid/animation/Animator;->start()V

    .line 571
    return-void
.end method

.method private showBottomSheet()V
    .locals 11

    .prologue
    const/4 v5, 0x0

    .line 401
    iget-object v0, p0, Lcom/letv/leui/widget/LeListPreferenceView;->bottomSheet:Lcom/letv/leui/widget/LeBottomSheet;

    if-nez v0, :cond_0

    .line 402
    new-instance v0, Lcom/letv/leui/widget/LeBottomSheet;

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeListPreferenceView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/letv/leui/widget/LeBottomSheet;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/letv/leui/widget/LeListPreferenceView;->bottomSheet:Lcom/letv/leui/widget/LeBottomSheet;

    .line 405
    :cond_0
    const v0, 0x1020016

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeListPreferenceView;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 406
    .local v10, "title":Landroid/widget/TextView;
    if-eqz v10, :cond_1

    .line 407
    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/leui/widget/LeListPreferenceView;->mBottomSheetTitleText:Ljava/lang/String;

    .line 409
    :cond_1
    iget-object v0, p0, Lcom/letv/leui/widget/LeListPreferenceView;->bottomSheet:Lcom/letv/leui/widget/LeBottomSheet;

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeListPreferenceView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 410
    invoke-direct {p0}, Lcom/letv/leui/widget/LeListPreferenceView;->getSheetData()Ljava/util/List;

    move-result-object v2

    .line 411
    invoke-direct {p0}, Lcom/letv/leui/widget/LeListPreferenceView;->getSheetKeySet()[Ljava/lang/String;

    move-result-object v3

    .line 412
    iget-object v4, p0, Lcom/letv/leui/widget/LeListPreferenceView;->bottomSheetListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 413
    iget-object v6, p0, Lcom/letv/leui/widget/LeListPreferenceView;->mBottomSheetTitleText:Ljava/lang/String;

    iget-object v7, p0, Lcom/letv/leui/widget/LeListPreferenceView;->mBottomSheetBtnText:Ljava/lang/String;

    iget-object v9, p0, Lcom/letv/leui/widget/LeListPreferenceView;->mBtnListener:Landroid/view/View$OnClickListener;

    move v8, v5

    .line 409
    invoke-virtual/range {v0 .. v9}, Lcom/letv/leui/widget/LeBottomSheet;->setStyle(Landroid/content/Context;Ljava/util/List;[Ljava/lang/String;Landroid/widget/AdapterView$OnItemClickListener;ZLjava/lang/CharSequence;Ljava/lang/String;ZLandroid/view/View$OnClickListener;)V

    .line 414
    iget-object v0, p0, Lcom/letv/leui/widget/LeListPreferenceView;->bottomSheet:Lcom/letv/leui/widget/LeBottomSheet;

    iget-object v1, p0, Lcom/letv/leui/widget/LeListPreferenceView;->mUnableItemIndex:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/LeBottomSheet;->setUnableItemIndex(Ljava/util/ArrayList;)V

    .line 415
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeListPreferenceView;->getValueIndex()I

    move-result v0

    iput v0, p0, Lcom/letv/leui/widget/LeListPreferenceView;->mClickedDialogEntryIndex:I

    .line 416
    iget-object v0, p0, Lcom/letv/leui/widget/LeListPreferenceView;->bottomSheet:Lcom/letv/leui/widget/LeBottomSheet;

    iget v1, p0, Lcom/letv/leui/widget/LeListPreferenceView;->mClickedDialogEntryIndex:I

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/LeBottomSheet;->setCheckPos(I)V

    .line 417
    iget-object v0, p0, Lcom/letv/leui/widget/LeListPreferenceView;->bottomSheet:Lcom/letv/leui/widget/LeBottomSheet;

    iget-boolean v1, p0, Lcom/letv/leui/widget/LeListPreferenceView;->mBottomSheetCheckIsOn:Z

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/LeBottomSheet;->setCheckIsOn(Z)V

    .line 418
    iget-object v0, p0, Lcom/letv/leui/widget/LeListPreferenceView;->bottomSheet:Lcom/letv/leui/widget/LeBottomSheet;

    invoke-virtual {v0}, Lcom/letv/leui/widget/LeBottomSheet;->appear()V

    .line 400
    return-void
.end method

.method private showDropdownPopup()V
    .locals 8

    .prologue
    .line 478
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeListPreferenceView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/letv/leui/widget/LeListPreferenceView;->mCurrentOrientation:I

    .line 480
    new-instance v0, Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup;

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeListPreferenceView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup;-><init>(Lcom/letv/leui/widget/LeListPreferenceView;Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/letv/leui/widget/LeListPreferenceView;->mPopup:Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup;

    .line 483
    iget-object v0, p0, Lcom/letv/leui/widget/LeListPreferenceView;->mPopup:Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup;

    iget-object v1, p0, Lcom/letv/leui/widget/LeListPreferenceView;->mAnchorView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup;->setAnchorView(Landroid/view/View;)V

    .line 484
    iget-object v7, p0, Lcom/letv/leui/widget/LeListPreferenceView;->mPopup:Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup;

    new-instance v0, Lcom/letv/leui/widget/LeListPreferenceView$4;

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeListPreferenceView;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 485
    iget-object v5, p0, Lcom/letv/leui/widget/LeListPreferenceView;->mEntries:[Ljava/lang/CharSequence;

    .line 484
    const v3, 0x10900de

    .line 485
    const v4, 0x1020016

    move-object v1, p0

    .line 484
    invoke-direct/range {v0 .. v5}, Lcom/letv/leui/widget/LeListPreferenceView$4;-><init>(Lcom/letv/leui/widget/LeListPreferenceView;Landroid/content/Context;II[Ljava/lang/CharSequence;)V

    invoke-virtual {v7, v0}, Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 515
    iget-object v0, p0, Lcom/letv/leui/widget/LeListPreferenceView;->mPopup:Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup;

    invoke-virtual {v0}, Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup;->show()V

    .line 516
    iget-object v0, p0, Lcom/letv/leui/widget/LeListPreferenceView;->handler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    .line 517
    .local v6, "msg":Landroid/os/Message;
    iget v0, p0, Lcom/letv/leui/widget/LeListPreferenceView;->orgAlpha:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, v6, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 518
    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 477
    return-void
.end method


# virtual methods
.method public changeWindowAlpha(F)V
    .locals 3
    .param p1, "alpha"    # F

    .prologue
    .line 559
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeListPreferenceView;->getContext()Landroid/content/Context;

    move-result-object v2

    instance-of v2, v2, Landroid/app/Activity;

    if-eqz v2, :cond_0

    .line 560
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeListPreferenceView;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 561
    .local v1, "window":Landroid/view/Window;
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 562
    .local v0, "params":Landroid/view/WindowManager$LayoutParams;
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 563
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 558
    .end local v0    # "params":Landroid/view/WindowManager$LayoutParams;
    .end local v1    # "window":Landroid/view/Window;
    :cond_0
    return-void
.end method

.method public findIndexOfValue(Ljava/lang/String;)I
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 211
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/letv/leui/widget/LeListPreferenceView;->mEntryValues:[Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    .line 212
    iget-object v1, p0, Lcom/letv/leui/widget/LeListPreferenceView;->mEntryValues:[Ljava/lang/CharSequence;

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 213
    iget-object v1, p0, Lcom/letv/leui/widget/LeListPreferenceView;->mEntryValues:[Ljava/lang/CharSequence;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 214
    return v0

    .line 212
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 219
    .end local v0    # "i":I
    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public getEntries()[Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/letv/leui/widget/LeListPreferenceView;->mEntries:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getEntryValues()[Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/letv/leui/widget/LeListPreferenceView;->mEntryValues:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getInputMethodManager(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 966
    const-string/jumbo v0, "input_method"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 2

    .prologue
    .line 230
    iget v0, p0, Lcom/letv/leui/widget/LeListPreferenceView;->mClickedDialogEntryIndex:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/letv/leui/widget/LeListPreferenceView;->mClickedDialogEntryIndex:I

    iget-object v1, p0, Lcom/letv/leui/widget/LeListPreferenceView;->mEntries:[Ljava/lang/CharSequence;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 231
    iget-object v0, p0, Lcom/letv/leui/widget/LeListPreferenceView;->mEntries:[Ljava/lang/CharSequence;

    iget v1, p0, Lcom/letv/leui/widget/LeListPreferenceView;->mClickedDialogEntryIndex:I

    aget-object v0, v0, v1

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 233
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 970
    iget-object v0, p0, Lcom/letv/leui/widget/LeListPreferenceView;->summary:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 979
    iget-object v0, p0, Lcom/letv/leui/widget/LeListPreferenceView;->title:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 2

    .prologue
    .line 223
    iget v0, p0, Lcom/letv/leui/widget/LeListPreferenceView;->mClickedDialogEntryIndex:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/letv/leui/widget/LeListPreferenceView;->mClickedDialogEntryIndex:I

    iget-object v1, p0, Lcom/letv/leui/widget/LeListPreferenceView;->mEntryValues:[Ljava/lang/CharSequence;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 224
    iget-object v0, p0, Lcom/letv/leui/widget/LeListPreferenceView;->mEntryValues:[Ljava/lang/CharSequence;

    iget v1, p0, Lcom/letv/leui/widget/LeListPreferenceView;->mClickedDialogEntryIndex:I

    aget-object v0, v0, v1

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 226
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getValueIndex()I
    .locals 1

    .prologue
    .line 238
    iget v0, p0, Lcom/letv/leui/widget/LeListPreferenceView;->mClickedDialogEntryIndex:I

    return v0
.end method

.method public hide(Landroid/content/Context;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "windowToken"    # Landroid/os/IBinder;

    .prologue
    .line 961
    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/LeListPreferenceView;->getInputMethodManager(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 962
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 960
    return-void
.end method

.method public hideKeyBoard()V
    .locals 3

    .prologue
    .line 951
    :try_start_0
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeListPreferenceView;->getContext()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 952
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeListPreferenceView;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 953
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeListPreferenceView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeListPreferenceView;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Lcom/letv/leui/widget/LeListPreferenceView;->hide(Landroid/content/Context;Landroid/os/IBinder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 949
    :cond_0
    :goto_0
    return-void

    .line 956
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 393
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/letv/leui/widget/LeListPreferenceView;->lastClickTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1f4

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 394
    return-void

    .line 397
    :cond_0
    invoke-direct {p0}, Lcom/letv/leui/widget/LeListPreferenceView;->showBottomSheet()V

    .line 392
    return-void
.end method

.method public setBottomSheetBtnText(Ljava/lang/String;)V
    .locals 1
    .param p1, "btnText"    # Ljava/lang/String;

    .prologue
    .line 382
    iput-object p1, p0, Lcom/letv/leui/widget/LeListPreferenceView;->mBottomSheetBtnText:Ljava/lang/String;

    .line 384
    iget-object v0, p0, Lcom/letv/leui/widget/LeListPreferenceView;->bottomSheet:Lcom/letv/leui/widget/LeBottomSheet;

    if-eqz v0, :cond_0

    .line 385
    iget-object v0, p0, Lcom/letv/leui/widget/LeListPreferenceView;->bottomSheet:Lcom/letv/leui/widget/LeBottomSheet;

    invoke-virtual {v0}, Lcom/letv/leui/widget/LeBottomSheet;->getBtn_cancel()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 381
    :cond_0
    return-void
.end method

.method public setBottomSheetItemCheckIsOn(Z)V
    .locals 1
    .param p1, "checkIsOn"    # Z

    .prologue
    .line 340
    iput-boolean p1, p0, Lcom/letv/leui/widget/LeListPreferenceView;->mBottomSheetCheckIsOn:Z

    .line 341
    iget-object v0, p0, Lcom/letv/leui/widget/LeListPreferenceView;->bottomSheet:Lcom/letv/leui/widget/LeBottomSheet;

    if-eqz v0, :cond_0

    .line 342
    iget-object v0, p0, Lcom/letv/leui/widget/LeListPreferenceView;->bottomSheet:Lcom/letv/leui/widget/LeBottomSheet;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/LeBottomSheet;->setCheckIsOn(Z)V

    .line 339
    :cond_0
    return-void
.end method

.method public setBottomSheetItemChecked(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 328
    iput p1, p0, Lcom/letv/leui/widget/LeListPreferenceView;->mClickedDialogEntryIndex:I

    .line 329
    iget-object v0, p0, Lcom/letv/leui/widget/LeListPreferenceView;->bottomSheet:Lcom/letv/leui/widget/LeBottomSheet;

    if-eqz v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/letv/leui/widget/LeListPreferenceView;->bottomSheet:Lcom/letv/leui/widget/LeBottomSheet;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/LeBottomSheet;->setCheckPos(I)V

    .line 332
    :cond_0
    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/LeListPreferenceView;->setValue(I)V

    .line 327
    return-void
.end method

.method public setBottomSheetTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 370
    iput-object p1, p0, Lcom/letv/leui/widget/LeListPreferenceView;->mBottomSheetTitleText:Ljava/lang/String;

    .line 372
    iget-object v0, p0, Lcom/letv/leui/widget/LeListPreferenceView;->bottomSheet:Lcom/letv/leui/widget/LeBottomSheet;

    if-eqz v0, :cond_0

    .line 373
    iget-object v0, p0, Lcom/letv/leui/widget/LeListPreferenceView;->bottomSheet:Lcom/letv/leui/widget/LeBottomSheet;

    invoke-virtual {v0}, Lcom/letv/leui/widget/LeBottomSheet;->getTitle()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 369
    :cond_0
    return-void
.end method

.method public setEntries(I)V
    .locals 1
    .param p1, "entriesResId"    # I

    .prologue
    .line 254
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeListPreferenceView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeListPreferenceView;->setEntries([Ljava/lang/CharSequence;)V

    .line 253
    return-void
.end method

.method public setEntries([Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "entries"    # [Ljava/lang/CharSequence;

    .prologue
    .line 243
    iput-object p1, p0, Lcom/letv/leui/widget/LeListPreferenceView;->mEntries:[Ljava/lang/CharSequence;

    .line 244
    const/4 v0, 0x0

    iput v0, p0, Lcom/letv/leui/widget/LeListPreferenceView;->mClickedDialogEntryIndex:I

    .line 245
    invoke-direct {p0}, Lcom/letv/leui/widget/LeListPreferenceView;->initView()V

    .line 242
    return-void
.end method

.method public setEntryValues(I)V
    .locals 1
    .param p1, "entryValuesResId"    # I

    .prologue
    .line 286
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeListPreferenceView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeListPreferenceView;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 285
    return-void
.end method

.method public setEntryValues([Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "entryValues"    # [Ljava/lang/CharSequence;

    .prologue
    .line 275
    iput-object p1, p0, Lcom/letv/leui/widget/LeListPreferenceView;->mEntryValues:[Ljava/lang/CharSequence;

    .line 277
    const/4 v0, 0x0

    iput v0, p0, Lcom/letv/leui/widget/LeListPreferenceView;->mClickedDialogEntryIndex:I

    .line 274
    return-void
.end method

.method public setItemColor(I)V
    .locals 1
    .param p1, "Color"    # I

    .prologue
    .line 360
    iget-object v0, p0, Lcom/letv/leui/widget/LeListPreferenceView;->bottomSheet:Lcom/letv/leui/widget/LeBottomSheet;

    if-eqz v0, :cond_0

    .line 361
    iget-object v0, p0, Lcom/letv/leui/widget/LeListPreferenceView;->bottomSheet:Lcom/letv/leui/widget/LeBottomSheet;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/LeBottomSheet;->setCheckBoxItemColor(I)V

    .line 359
    :cond_0
    return-void
.end method

.method public setOnChangeListener(Lcom/letv/leui/widget/LeListPreferenceView$OnChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/letv/leui/widget/LeListPreferenceView$OnChangeListener;

    .prologue
    .line 601
    iput-object p1, p0, Lcom/letv/leui/widget/LeListPreferenceView;->mOnChangeListener:Lcom/letv/leui/widget/LeListPreferenceView$OnChangeListener;

    .line 600
    return-void
.end method

.method public setOnItemClickListener(Lcom/letv/leui/widget/LeListPreferenceView$OnItemChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/letv/leui/widget/LeListPreferenceView$OnItemChangeListener;

    .prologue
    .line 611
    iput-object p1, p0, Lcom/letv/leui/widget/LeListPreferenceView;->mOnItemChangeListener:Lcom/letv/leui/widget/LeListPreferenceView$OnItemChangeListener;

    .line 610
    return-void
.end method

.method public setSummary(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "summary"    # Ljava/lang/CharSequence;

    .prologue
    .line 974
    iput-object p1, p0, Lcom/letv/leui/widget/LeListPreferenceView;->summary:Ljava/lang/CharSequence;

    .line 975
    invoke-direct {p0}, Lcom/letv/leui/widget/LeListPreferenceView;->initView()V

    .line 973
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 983
    iput-object p1, p0, Lcom/letv/leui/widget/LeListPreferenceView;->title:Ljava/lang/CharSequence;

    .line 984
    invoke-direct {p0}, Lcom/letv/leui/widget/LeListPreferenceView;->initView()V

    .line 982
    return-void
.end method

.method public setUnableItemIndex(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 351
    .local p1, "unableItemIndex":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iput-object p1, p0, Lcom/letv/leui/widget/LeListPreferenceView;->mUnableItemIndex:Ljava/util/ArrayList;

    .line 353
    iget-object v0, p0, Lcom/letv/leui/widget/LeListPreferenceView;->bottomSheet:Lcom/letv/leui/widget/LeBottomSheet;

    if-eqz v0, :cond_0

    .line 354
    iget-object v0, p0, Lcom/letv/leui/widget/LeListPreferenceView;->bottomSheet:Lcom/letv/leui/widget/LeBottomSheet;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/LeBottomSheet;->setUnableItemIndex(Ljava/util/ArrayList;)V

    .line 350
    :cond_0
    return-void
.end method

.method public setValue(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 317
    iget-object v0, p0, Lcom/letv/leui/widget/LeListPreferenceView;->mEntryValues:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LeListPreferenceView;->mEntryValues:[Ljava/lang/CharSequence;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    if-ltz p1, :cond_0

    .line 318
    iput p1, p0, Lcom/letv/leui/widget/LeListPreferenceView;->mClickedDialogEntryIndex:I

    .line 319
    invoke-direct {p0}, Lcom/letv/leui/widget/LeListPreferenceView;->initView()V

    .line 316
    :cond_0
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 311
    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/LeListPreferenceView;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 312
    .local v0, "index":I
    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeListPreferenceView;->setValue(I)V

    .line 305
    return-void
.end method
