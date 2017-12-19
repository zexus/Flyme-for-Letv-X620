.class public Lcom/letv/leui/preference/LeListPreference;
.super Landroid/preference/DialogPreference;
.source "LeListPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/leui/preference/LeListPreference$SavedState;,
        Lcom/letv/leui/preference/LeListPreference$DropdownPopup;,
        Lcom/letv/leui/preference/LeListPreference$1;,
        Lcom/letv/leui/preference/LeListPreference$2;,
        Lcom/letv/leui/preference/LeListPreference$3;
    }
.end annotation


# static fields
.field public static final GRAVITY_END:I = 0x4

.field public static final GRAVITY_START:I = 0x3

.field private static final MAX_ITEMS_MEASURED:I = 0xf

.field public static final MODE_BOTTOM_SHEET:I = 0x2

.field public static final MODE_DAY:I = 0x8

.field public static final MODE_DIALOG:I = 0x0

.field public static final MODE_DROPDOWN:I = 0x1

.field public static final MODE_NIGHT:I = 0x7


# instance fields
.field private final DISMISS_FADE_OUT:I

.field private final SHOWING_FADE_IN:I

.field animateDrawable:Landroid/graphics/drawable/Drawable;

.field private arrow:Landroid/view/View;

.field private bottomSheet:Lcom/letv/leui/widget/LeBottomSheet;

.field private bottomSheetListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private final delta:F

.field private divider:Landroid/graphics/drawable/Drawable;

.field handler:Landroid/os/Handler;

.field isAnimate:Z

.field private isInitValue:Z

.field private lastClickTime:J

.field private lePopGravity:I

.field private final listDrawable:I

.field private listTitleColorNormal:I

.field private listTitleColorSelected:I

.field private listViewSelector:I

.field private listViewSpaceHeight:I

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

.field private mMessages:[Ljava/lang/CharSequence;

.field private mMode:I

.field private mPopup:Lcom/letv/leui/preference/LeListPreference$DropdownPopup;

.field private mPreferenceView:Landroid/view/View;

.field private mShowMode:I

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

.field private mValue:Ljava/lang/String;

.field private mValueSet:Z

.field private messageView:Landroid/view/View;

.field private orgAlpha:F

.field orgDrawable:Landroid/graphics/drawable/Drawable;

.field private overlayTextSize:F

.field private popBackgroundDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method static synthetic -get0(Lcom/letv/leui/preference/LeListPreference;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreference;->arrow:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get1(Lcom/letv/leui/preference/LeListPreference;)Lcom/letv/leui/widget/LeBottomSheet;
    .locals 1

    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreference;->bottomSheet:Lcom/letv/leui/widget/LeBottomSheet;

    return-object v0
.end method

.method static synthetic -get10(Lcom/letv/leui/preference/LeListPreference;)[Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreference;->mEntries:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic -get11(Lcom/letv/leui/preference/LeListPreference;)[Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic -get12(Lcom/letv/leui/preference/LeListPreference;)[Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreference;->mMessages:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic -get13(Lcom/letv/leui/preference/LeListPreference;)Lcom/letv/leui/preference/LeListPreference$DropdownPopup;
    .locals 1

    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreference;->mPopup:Lcom/letv/leui/preference/LeListPreference$DropdownPopup;

    return-object v0
.end method

.method static synthetic -get14(Lcom/letv/leui/preference/LeListPreference;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreference;->mPreferenceView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get15(Lcom/letv/leui/preference/LeListPreference;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreference;->mTempRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic -get16(Lcom/letv/leui/preference/LeListPreference;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreference;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get17(Lcom/letv/leui/preference/LeListPreference;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreference;->messageView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get18(Lcom/letv/leui/preference/LeListPreference;)F
    .locals 1

    iget v0, p0, Lcom/letv/leui/preference/LeListPreference;->orgAlpha:F

    return v0
.end method

.method static synthetic -get19(Lcom/letv/leui/preference/LeListPreference;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreference;->popBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic -get2(Lcom/letv/leui/preference/LeListPreference;)I
    .locals 1

    iget v0, p0, Lcom/letv/leui/preference/LeListPreference;->lePopGravity:I

    return v0
.end method

.method static synthetic -get3(Lcom/letv/leui/preference/LeListPreference;)I
    .locals 1

    iget v0, p0, Lcom/letv/leui/preference/LeListPreference;->listTitleColorNormal:I

    return v0
.end method

.method static synthetic -get4(Lcom/letv/leui/preference/LeListPreference;)I
    .locals 1

    iget v0, p0, Lcom/letv/leui/preference/LeListPreference;->listTitleColorSelected:I

    return v0
.end method

.method static synthetic -get5(Lcom/letv/leui/preference/LeListPreference;)I
    .locals 1

    iget v0, p0, Lcom/letv/leui/preference/LeListPreference;->listViewSelector:I

    return v0
.end method

.method static synthetic -get6(Lcom/letv/leui/preference/LeListPreference;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreference;->mAnchorView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get7(Lcom/letv/leui/preference/LeListPreference;)I
    .locals 1

    iget v0, p0, Lcom/letv/leui/preference/LeListPreference;->mClickedDialogEntryIndex:I

    return v0
.end method

.method static synthetic -get8(Lcom/letv/leui/preference/LeListPreference;)I
    .locals 1

    iget v0, p0, Lcom/letv/leui/preference/LeListPreference;->mCurrentOrientation:I

    return v0
.end method

.method static synthetic -get9(Lcom/letv/leui/preference/LeListPreference;)I
    .locals 1

    iget v0, p0, Lcom/letv/leui/preference/LeListPreference;->mDropDownWidth:I

    return v0
.end method

.method static synthetic -set0(Lcom/letv/leui/preference/LeListPreference;I)I
    .locals 0

    iput p1, p0, Lcom/letv/leui/preference/LeListPreference;->mClickedDialogEntryIndex:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/letv/leui/preference/LeListPreference;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "newValue"    # Ljava/lang/Object;

    .prologue
    invoke-virtual {p0, p1}, Lcom/letv/leui/preference/LeListPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/letv/leui/preference/LeListPreference;)I
    .locals 1

    invoke-direct {p0}, Lcom/letv/leui/preference/LeListPreference;->getValueIndex()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/letv/leui/preference/LeListPreference;)V
    .locals 0

    invoke-virtual {p0}, Lcom/letv/leui/preference/LeListPreference;->notifyChanged()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 173
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/letv/leui/preference/LeListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 172
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 169
    const v0, 0x11600c8

    invoke-direct {p0, p1, p2, v0}, Lcom/letv/leui/preference/LeListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 168
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x2

    const/4 v5, -0x1

    const/4 v9, -0x2

    const/4 v8, 0x0

    .line 103
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 75
    iput v5, p0, Lcom/letv/leui/preference/LeListPreference;->listViewSelector:I

    .line 76
    iput v5, p0, Lcom/letv/leui/preference/LeListPreference;->listViewSpaceHeight:I

    .line 88
    iput-boolean v8, p0, Lcom/letv/leui/preference/LeListPreference;->isInitValue:Z

    .line 90
    const v5, 0x1080540

    iput v5, p0, Lcom/letv/leui/preference/LeListPreference;->listDrawable:I

    .line 98
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/letv/leui/preference/LeListPreference;->mBottomSheetCheckIsOn:Z

    .line 100
    const/16 v5, 0x8

    iput v5, p0, Lcom/letv/leui/preference/LeListPreference;->mShowMode:I

    .line 565
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lcom/letv/leui/preference/LeListPreference;->mTempRect:Landroid/graphics/Rect;

    .line 567
    iput v9, p0, Lcom/letv/leui/preference/LeListPreference;->mDropDownWidth:I

    .line 569
    iput v9, p0, Lcom/letv/leui/preference/LeListPreference;->mMaxDropDownHeight:I

    .line 571
    iput v10, p0, Lcom/letv/leui/preference/LeListPreference;->mMode:I

    .line 581
    iput v11, p0, Lcom/letv/leui/preference/LeListPreference;->lePopGravity:I

    .line 583
    iput v8, p0, Lcom/letv/leui/preference/LeListPreference;->listTitleColorNormal:I

    .line 585
    iput v8, p0, Lcom/letv/leui/preference/LeListPreference;->listTitleColorSelected:I

    .line 587
    const/4 v5, 0x0

    iput v5, p0, Lcom/letv/leui/preference/LeListPreference;->overlayTextSize:F

    .line 589
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/letv/leui/preference/LeListPreference;->lastClickTime:J

    .line 634
    new-instance v5, Lcom/letv/leui/preference/LeListPreference$1;

    invoke-direct {v5, p0}, Lcom/letv/leui/preference/LeListPreference$1;-><init>(Lcom/letv/leui/preference/LeListPreference;)V

    iput-object v5, p0, Lcom/letv/leui/preference/LeListPreference;->mBtnListener:Landroid/view/View$OnClickListener;

    .line 641
    new-instance v5, Lcom/letv/leui/preference/LeListPreference$2;

    invoke-direct {v5, p0}, Lcom/letv/leui/preference/LeListPreference$2;-><init>(Lcom/letv/leui/preference/LeListPreference;)V

    iput-object v5, p0, Lcom/letv/leui/preference/LeListPreference;->bottomSheetListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 780
    iput-boolean v8, p0, Lcom/letv/leui/preference/LeListPreference;->isAnimate:Z

    .line 849
    const/16 v5, 0x65

    iput v5, p0, Lcom/letv/leui/preference/LeListPreference;->SHOWING_FADE_IN:I

    .line 850
    const/16 v5, 0x66

    iput v5, p0, Lcom/letv/leui/preference/LeListPreference;->DISMISS_FADE_OUT:I

    .line 851
    const v5, 0x3d4ccccd    # 0.05f

    iput v5, p0, Lcom/letv/leui/preference/LeListPreference;->delta:F

    .line 852
    const/high16 v5, 0x3f800000    # 1.0f

    iput v5, p0, Lcom/letv/leui/preference/LeListPreference;->orgAlpha:F

    .line 854
    new-instance v5, Lcom/letv/leui/preference/LeListPreference$3;

    invoke-direct {v5, p0}, Lcom/letv/leui/preference/LeListPreference$3;-><init>(Lcom/letv/leui/preference/LeListPreference;)V

    iput-object v5, p0, Lcom/letv/leui/preference/LeListPreference;->handler:Landroid/os/Handler;

    .line 104
    sget-object v5, Lcom/android/internal/R$styleable;->LeListPreference:[I

    invoke-virtual {p1, p2, v5, p3, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 106
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v2

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 107
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v1

    .line 108
    .local v1, "attr":I
    packed-switch v1, :pswitch_data_0

    .line 106
    :cond_0
    :goto_1
    :pswitch_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 110
    :pswitch_1
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, p0, Lcom/letv/leui/preference/LeListPreference;->mEntries:[Ljava/lang/CharSequence;

    goto :goto_1

    .line 113
    :pswitch_2
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, p0, Lcom/letv/leui/preference/LeListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    goto :goto_1

    .line 116
    :pswitch_3
    invoke-virtual {v0, v1, v10}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v5

    iput v5, p0, Lcom/letv/leui/preference/LeListPreference;->mMode:I

    goto :goto_1

    .line 119
    :pswitch_4
    invoke-virtual {v0, v1, v11}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v5

    iput v5, p0, Lcom/letv/leui/preference/LeListPreference;->lePopGravity:I

    goto :goto_1

    .line 122
    :pswitch_5
    invoke-virtual {v0, v1, v9}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v5

    iput v5, p0, Lcom/letv/leui/preference/LeListPreference;->mDropDownWidth:I

    goto :goto_1

    .line 125
    :pswitch_6
    iget v5, p0, Lcom/letv/leui/preference/LeListPreference;->mMaxDropDownHeight:I

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v5

    iput v5, p0, Lcom/letv/leui/preference/LeListPreference;->mMaxDropDownHeight:I

    goto :goto_1

    .line 128
    :pswitch_7
    invoke-virtual {v0, v1, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p0, Lcom/letv/leui/preference/LeListPreference;->listViewSelector:I

    goto :goto_1

    .line 131
    :pswitch_8
    iget v5, p0, Lcom/letv/leui/preference/LeListPreference;->listViewSpaceHeight:I

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/letv/leui/preference/LeListPreference;->listViewSpaceHeight:I

    goto :goto_1

    .line 134
    :pswitch_9
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/letv/leui/preference/LeListPreference;->divider:Landroid/graphics/drawable/Drawable;

    .line 135
    iget-object v5, p0, Lcom/letv/leui/preference/LeListPreference;->divider:Landroid/graphics/drawable/Drawable;

    if-nez v5, :cond_0

    .line 136
    invoke-virtual {v0, v1, v8}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    .line 137
    .local v4, "popBackgroundColor":I
    if-eqz v4, :cond_0

    .line 138
    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v5, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v5, p0, Lcom/letv/leui/preference/LeListPreference;->divider:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 143
    .end local v4    # "popBackgroundColor":I
    :pswitch_a
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/letv/leui/preference/LeListPreference;->popBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 144
    iget-object v5, p0, Lcom/letv/leui/preference/LeListPreference;->popBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v5, :cond_0

    .line 145
    invoke-virtual {v0, v1, v8}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    .line 146
    .local v3, "popBackgrounColor":I
    if-eqz v3, :cond_0

    .line 147
    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v5, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v5, p0, Lcom/letv/leui/preference/LeListPreference;->popBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 152
    .end local v3    # "popBackgrounColor":I
    :pswitch_b
    invoke-virtual {v0, v1, v8}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    iput v5, p0, Lcom/letv/leui/preference/LeListPreference;->listTitleColorNormal:I

    goto :goto_1

    .line 155
    :pswitch_c
    invoke-virtual {v0, v1, v8}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    iput v5, p0, Lcom/letv/leui/preference/LeListPreference;->listTitleColorSelected:I

    goto :goto_1

    .line 162
    .end local v1    # "attr":I
    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 164
    invoke-virtual {p0}, Lcom/letv/leui/preference/LeListPreference;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/high16 v6, 0x1040000

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/letv/leui/preference/LeListPreference;->mBottomSheetBtnText:Ljava/lang/String;

    .line 102
    return-void

    .line 108
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_7
        :pswitch_9
        :pswitch_8
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_a
        :pswitch_0
        :pswitch_b
        :pswitch_c
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
    .line 668
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 670
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    iget-object v3, p0, Lcom/letv/leui/preference/LeListPreference;->mEntries:[Ljava/lang/CharSequence;

    if-eqz v3, :cond_0

    .line 671
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/letv/leui/preference/LeListPreference;->mEntries:[Ljava/lang/CharSequence;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 672
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 673
    .local v1, "item":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v3, "text"

    iget-object v4, p0, Lcom/letv/leui/preference/LeListPreference;->mEntries:[Ljava/lang/CharSequence;

    aget-object v4, v4, v0

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 674
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 671
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 678
    .end local v0    # "i":I
    .end local v1    # "item":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    return-object v2
.end method

.method private getSheetKeySet()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 682
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "text"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method private getValueIndex()I
    .locals 1

    .prologue
    .line 404
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreference;->mValue:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/letv/leui/preference/LeListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private onDismissAnimate(Landroid/view/View;Landroid/animation/Animator;)V
    .locals 1
    .param p1, "taget"    # Landroid/view/View;
    .param p2, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 785
    invoke-virtual {p2, p1}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 786
    new-instance v0, Lcom/letv/leui/preference/LeListPreference$7;

    invoke-direct {v0, p0}, Lcom/letv/leui/preference/LeListPreference$7;-><init>(Lcom/letv/leui/preference/LeListPreference;)V

    invoke-virtual {p2, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 807
    invoke-virtual {p2}, Landroid/animation/Animator;->start()V

    .line 784
    return-void
.end method

.method private showBottomSheet()V
    .locals 10

    .prologue
    const/4 v5, 0x0

    .line 614
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreference;->bottomSheet:Lcom/letv/leui/widget/LeBottomSheet;

    if-nez v0, :cond_0

    .line 615
    new-instance v0, Lcom/letv/leui/widget/LeBottomSheet;

    invoke-virtual {p0}, Lcom/letv/leui/preference/LeListPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/letv/leui/widget/LeBottomSheet;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/letv/leui/preference/LeListPreference;->bottomSheet:Lcom/letv/leui/widget/LeBottomSheet;

    .line 618
    :cond_0
    invoke-virtual {p0}, Lcom/letv/leui/preference/LeListPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 619
    invoke-virtual {p0}, Lcom/letv/leui/preference/LeListPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/leui/preference/LeListPreference;->mBottomSheetTitleText:Ljava/lang/String;

    .line 621
    :cond_1
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreference;->bottomSheet:Lcom/letv/leui/widget/LeBottomSheet;

    iget v1, p0, Lcom/letv/leui/preference/LeListPreference;->mShowMode:I

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/LeBottomSheet;->setShowMode(I)V

    .line 622
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreference;->bottomSheet:Lcom/letv/leui/widget/LeBottomSheet;

    invoke-virtual {p0}, Lcom/letv/leui/preference/LeListPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 623
    invoke-direct {p0}, Lcom/letv/leui/preference/LeListPreference;->getSheetData()Ljava/util/List;

    move-result-object v2

    .line 624
    invoke-direct {p0}, Lcom/letv/leui/preference/LeListPreference;->getSheetKeySet()[Ljava/lang/String;

    move-result-object v3

    .line 625
    iget-object v4, p0, Lcom/letv/leui/preference/LeListPreference;->bottomSheetListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 626
    iget-object v6, p0, Lcom/letv/leui/preference/LeListPreference;->mBottomSheetTitleText:Ljava/lang/String;

    iget-object v7, p0, Lcom/letv/leui/preference/LeListPreference;->mBottomSheetBtnText:Ljava/lang/String;

    iget-object v9, p0, Lcom/letv/leui/preference/LeListPreference;->mBtnListener:Landroid/view/View$OnClickListener;

    move v8, v5

    .line 622
    invoke-virtual/range {v0 .. v9}, Lcom/letv/leui/widget/LeBottomSheet;->setStyle(Landroid/content/Context;Ljava/util/List;[Ljava/lang/String;Landroid/widget/AdapterView$OnItemClickListener;ZLjava/lang/CharSequence;Ljava/lang/String;ZLandroid/view/View$OnClickListener;)V

    .line 627
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreference;->bottomSheet:Lcom/letv/leui/widget/LeBottomSheet;

    iget-object v1, p0, Lcom/letv/leui/preference/LeListPreference;->mUnableItemIndex:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/LeBottomSheet;->setUnableItemIndex(Ljava/util/ArrayList;)V

    .line 628
    invoke-direct {p0}, Lcom/letv/leui/preference/LeListPreference;->getValueIndex()I

    move-result v0

    iput v0, p0, Lcom/letv/leui/preference/LeListPreference;->mClickedDialogEntryIndex:I

    .line 629
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreference;->bottomSheet:Lcom/letv/leui/widget/LeBottomSheet;

    iget v1, p0, Lcom/letv/leui/preference/LeListPreference;->mClickedDialogEntryIndex:I

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/LeBottomSheet;->setCheckPos(I)V

    .line 630
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreference;->bottomSheet:Lcom/letv/leui/widget/LeBottomSheet;

    iget-boolean v1, p0, Lcom/letv/leui/preference/LeListPreference;->mBottomSheetCheckIsOn:Z

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/LeBottomSheet;->setCheckIsOn(Z)V

    .line 631
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreference;->bottomSheet:Lcom/letv/leui/widget/LeBottomSheet;

    invoke-virtual {v0}, Lcom/letv/leui/widget/LeBottomSheet;->appear()V

    .line 613
    return-void
.end method

.method private showDropdownPopup()V
    .locals 9

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 686
    invoke-virtual {p0}, Lcom/letv/leui/preference/LeListPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/letv/leui/preference/LeListPreference;->mCurrentOrientation:I

    .line 687
    invoke-virtual {p0}, Lcom/letv/leui/preference/LeListPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/android/internal/R$styleable;->AlertDialog:[I

    .line 688
    const v2, 0x101005d

    .line 687
    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 689
    .local v6, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 690
    new-instance v0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;

    invoke-virtual {p0}, Lcom/letv/leui/preference/LeListPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, v4, v3}, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;-><init>(Lcom/letv/leui/preference/LeListPreference;Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/letv/leui/preference/LeListPreference;->mPopup:Lcom/letv/leui/preference/LeListPreference$DropdownPopup;

    .line 692
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreference;->mPreferenceView:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setActivated(Z)V

    .line 693
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreference;->mPopup:Lcom/letv/leui/preference/LeListPreference$DropdownPopup;

    iget-object v1, p0, Lcom/letv/leui/preference/LeListPreference;->mAnchorView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->setAnchorView(Landroid/view/View;)V

    .line 694
    iget-object v8, p0, Lcom/letv/leui/preference/LeListPreference;->mPopup:Lcom/letv/leui/preference/LeListPreference$DropdownPopup;

    new-instance v0, Lcom/letv/leui/preference/LeListPreference$5;

    invoke-virtual {p0}, Lcom/letv/leui/preference/LeListPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 695
    iget-object v5, p0, Lcom/letv/leui/preference/LeListPreference;->mEntries:[Ljava/lang/CharSequence;

    .line 694
    const v3, 0x10900de

    .line 695
    const v4, 0x1020016

    move-object v1, p0

    .line 694
    invoke-direct/range {v0 .. v5}, Lcom/letv/leui/preference/LeListPreference$5;-><init>(Lcom/letv/leui/preference/LeListPreference;Landroid/content/Context;II[Ljava/lang/CharSequence;)V

    invoke-virtual {v8, v0}, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 723
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreference;->mPopup:Lcom/letv/leui/preference/LeListPreference$DropdownPopup;

    invoke-virtual {v0}, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->show()V

    .line 724
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreference;->handler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    .line 725
    .local v7, "msg":Landroid/os/Message;
    iget v0, p0, Lcom/letv/leui/preference/LeListPreference;->orgAlpha:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 726
    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    .line 685
    return-void
.end method


# virtual methods
.method public changeWindowAlpha(F)V
    .locals 3
    .param p1, "alpha"    # F

    .prologue
    .line 841
    invoke-virtual {p0}, Lcom/letv/leui/preference/LeListPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    instance-of v2, v2, Landroid/app/Activity;

    if-eqz v2, :cond_0

    .line 842
    invoke-virtual {p0}, Lcom/letv/leui/preference/LeListPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 843
    .local v1, "window":Landroid/view/Window;
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 844
    .local v0, "params":Landroid/view/WindowManager$LayoutParams;
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 845
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 840
    .end local v0    # "params":Landroid/view/WindowManager$LayoutParams;
    .end local v1    # "window":Landroid/view/Window;
    :cond_0
    return-void
.end method

.method public findIndexOfValue(Ljava/lang/String;)I
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 392
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/letv/leui/preference/LeListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    .line 393
    iget-object v1, p0, Lcom/letv/leui/preference/LeListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 394
    iget-object v1, p0, Lcom/letv/leui/preference/LeListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 395
    return v0

    .line 393
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 400
    .end local v0    # "i":I
    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public getEntries()[Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreference;->mEntries:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getEntry()Ljava/lang/CharSequence;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 380
    invoke-direct {p0}, Lcom/letv/leui/preference/LeListPreference;->getValueIndex()I

    move-result v0

    .line 381
    .local v0, "index":I
    if-ltz v0, :cond_0

    iget-object v2, p0, Lcom/letv/leui/preference/LeListPreference;->mEntries:[Ljava/lang/CharSequence;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/letv/leui/preference/LeListPreference;->mEntries:[Ljava/lang/CharSequence;

    aget-object v1, v1, v0

    :cond_0
    return-object v1
.end method

.method public getEntryValues()[Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getInputMethodManager(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 746
    const-string/jumbo v0, "input_method"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method public getMessages()[Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreference;->mMessages:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreference;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method public hide(Landroid/content/Context;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "windowToken"    # Landroid/os/IBinder;

    .prologue
    .line 741
    invoke-virtual {p0, p1}, Lcom/letv/leui/preference/LeListPreference;->getInputMethodManager(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 742
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 740
    return-void
.end method

.method public hideKeyBoard()V
    .locals 3

    .prologue
    .line 731
    :try_start_0
    invoke-virtual {p0}, Lcom/letv/leui/preference/LeListPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 732
    invoke-virtual {p0}, Lcom/letv/leui/preference/LeListPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 733
    invoke-virtual {p0}, Lcom/letv/leui/preference/LeListPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/letv/leui/preference/LeListPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Lcom/letv/leui/preference/LeListPreference;->hide(Landroid/content/Context;Landroid/os/IBinder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 729
    :cond_0
    :goto_0
    return-void

    .line 736
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 468
    iget-boolean v0, p0, Lcom/letv/leui/preference/LeListPreference;->isInitValue:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p0, :cond_1

    .line 469
    :cond_0
    iget v0, p0, Lcom/letv/leui/preference/LeListPreference;->mClickedDialogEntryIndex:I

    invoke-virtual {p0, v0}, Lcom/letv/leui/preference/LeListPreference;->setValueIndex(I)V

    .line 470
    invoke-virtual {p1, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 472
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/letv/leui/preference/LeListPreference;->lastClickTime:J

    .line 474
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/letv/leui/preference/LeListPreference;->isInitValue:Z

    .line 476
    :cond_1
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onBindView(Landroid/view/View;)V

    .line 477
    const v0, 0x102000b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/leui/preference/LeListPreference;->messageView:Landroid/view/View;

    .line 478
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreference;->messageView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 479
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreference;->messageView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 480
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreference;->mEntries:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/letv/leui/preference/LeListPreference;->getValueIndex()I

    move-result v0

    if-ltz v0, :cond_2

    invoke-direct {p0}, Lcom/letv/leui/preference/LeListPreference;->getValueIndex()I

    move-result v0

    iget-object v1, p0, Lcom/letv/leui/preference/LeListPreference;->mEntries:[Ljava/lang/CharSequence;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 481
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreference;->mMessages:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_3

    .line 482
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreference;->messageView:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/letv/leui/preference/LeListPreference;->mMessages:[Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/letv/leui/preference/LeListPreference;->mValue:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/letv/leui/preference/LeListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 467
    :cond_2
    :goto_0
    return-void

    .line 484
    :cond_3
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreference;->messageView:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/letv/leui/preference/LeListPreference;->mEntries:[Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/letv/leui/preference/LeListPreference;->mValue:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/letv/leui/preference/LeListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected onClick()V
    .locals 4

    .prologue
    .line 596
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/letv/leui/preference/LeListPreference;->lastClickTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1f4

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 597
    return-void

    .line 600
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/letv/leui/preference/LeListPreference;->lastClickTime:J

    .line 603
    invoke-virtual {p0}, Lcom/letv/leui/preference/LeListPreference;->hideKeyBoard()V

    .line 604
    iget v0, p0, Lcom/letv/leui/preference/LeListPreference;->mMode:I

    if-nez v0, :cond_1

    .line 605
    invoke-super {p0}, Landroid/preference/DialogPreference;->onClick()V

    .line 594
    :goto_0
    return-void

    .line 606
    :cond_1
    iget v0, p0, Lcom/letv/leui/preference/LeListPreference;->mMode:I

    const/4 v1, 0x2

    if-ne v1, v0, :cond_2

    .line 607
    invoke-direct {p0}, Lcom/letv/leui/preference/LeListPreference;->showBottomSheet()V

    goto :goto_0

    .line 609
    :cond_2
    invoke-direct {p0}, Lcom/letv/leui/preference/LeListPreference;->showDropdownPopup()V

    goto :goto_0
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 758
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/leui/preference/LeListPreference;->mPreferenceView:Landroid/view/View;

    .line 760
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreference;->mPreferenceView:Landroid/view/View;

    const v1, 0x102000b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/leui/preference/LeListPreference;->messageView:Landroid/view/View;

    .line 761
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreference;->mPreferenceView:Landroid/view/View;

    const v1, 0x102046e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/leui/preference/LeListPreference;->arrow:Landroid/view/View;

    .line 762
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreference;->arrow:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreference;->arrow:Landroid/view/View;

    :goto_0
    iput-object v0, p0, Lcom/letv/leui/preference/LeListPreference;->mAnchorView:Landroid/view/View;

    .line 763
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreference;->mPreferenceView:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setActivated(Z)V

    .line 764
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreference;->mPreferenceView:Landroid/view/View;

    new-instance v1, Lcom/letv/leui/preference/LeListPreference$6;

    invoke-direct {v1, p0}, Lcom/letv/leui/preference/LeListPreference$6;-><init>(Lcom/letv/leui/preference/LeListPreference;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 777
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreference;->mPreferenceView:Landroid/view/View;

    return-object v0

    .line 762
    :cond_0
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreference;->messageView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreference;->messageView:Landroid/view/View;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreference;->mPreferenceView:Landroid/view/View;

    goto :goto_0
.end method

.method protected onDialogClosed(Z)V
    .locals 3
    .param p1, "positiveResult"    # Z

    .prologue
    .line 440
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onDialogClosed(Z)V

    .line 442
    if-eqz p1, :cond_0

    iget v1, p0, Lcom/letv/leui/preference/LeListPreference;->mClickedDialogEntryIndex:I

    if-ltz v1, :cond_0

    iget-object v1, p0, Lcom/letv/leui/preference/LeListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    .line 443
    iget-object v1, p0, Lcom/letv/leui/preference/LeListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    iget v2, p0, Lcom/letv/leui/preference/LeListPreference;->mClickedDialogEntryIndex:I

    aget-object v1, v1, v2

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 444
    .local v0, "value":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/letv/leui/preference/LeListPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 445
    invoke-virtual {p0, v0}, Lcom/letv/leui/preference/LeListPreference;->setValue(Ljava/lang/String;)V

    .line 439
    .end local v0    # "value":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "index"    # I

    .prologue
    .line 452
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 4
    .param p1, "builder"    # Landroid/app/AlertDialog$Builder;

    .prologue
    const/4 v3, 0x0

    .line 409
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    .line 411
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreference;->mEntries:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    .line 412
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "ListPreference requires an entries array and an entryValues array."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 415
    :cond_1
    invoke-direct {p0}, Lcom/letv/leui/preference/LeListPreference;->getValueIndex()I

    move-result v0

    iput v0, p0, Lcom/letv/leui/preference/LeListPreference;->mClickedDialogEntryIndex:I

    .line 416
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreference;->mEntries:[Ljava/lang/CharSequence;

    iget v1, p0, Lcom/letv/leui/preference/LeListPreference;->mClickedDialogEntryIndex:I

    new-instance v2, Lcom/letv/leui/preference/LeListPreference$4;

    invoke-direct {v2, p0}, Lcom/letv/leui/preference/LeListPreference$4;-><init>(Lcom/letv/leui/preference/LeListPreference;)V

    invoke-virtual {p1, v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 434
    invoke-virtual {p1, v3, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 435
    invoke-virtual {p1, v3, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 408
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 507
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/letv/leui/preference/LeListPreference$SavedState;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 513
    check-cast v0, Lcom/letv/leui/preference/LeListPreference$SavedState;

    .line 514
    .local v0, "myState":Lcom/letv/leui/preference/LeListPreference$SavedState;
    invoke-virtual {v0}, Lcom/letv/leui/preference/LeListPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/preference/DialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 515
    iget-object v1, v0, Lcom/letv/leui/preference/LeListPreference$SavedState;->value:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/letv/leui/preference/LeListPreference;->setValue(Ljava/lang/String;)V

    .line 516
    iget-boolean v1, v0, Lcom/letv/leui/preference/LeListPreference$SavedState;->isBottomSheetShowing:Z

    if-eqz v1, :cond_0

    .line 517
    invoke-direct {p0}, Lcom/letv/leui/preference/LeListPreference;->showBottomSheet()V

    .line 506
    :cond_0
    return-void

    .line 509
    .end local v0    # "myState":Lcom/letv/leui/preference/LeListPreference$SavedState;
    :cond_1
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 510
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 493
    invoke-super {p0}, Landroid/preference/DialogPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 494
    .local v1, "superState":Landroid/os/Parcelable;
    invoke-virtual {p0}, Lcom/letv/leui/preference/LeListPreference;->isPersistent()Z

    move-result v2

    if-nez v2, :cond_0

    .line 496
    return-object v1

    .line 499
    :cond_0
    new-instance v0, Lcom/letv/leui/preference/LeListPreference$SavedState;

    invoke-direct {v0, v1}, Lcom/letv/leui/preference/LeListPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 500
    .local v0, "myState":Lcom/letv/leui/preference/LeListPreference$SavedState;
    invoke-virtual {p0}, Lcom/letv/leui/preference/LeListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/letv/leui/preference/LeListPreference$SavedState;->value:Ljava/lang/String;

    .line 501
    iget-object v2, p0, Lcom/letv/leui/preference/LeListPreference;->bottomSheet:Lcom/letv/leui/widget/LeBottomSheet;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/letv/leui/preference/LeListPreference;->bottomSheet:Lcom/letv/leui/widget/LeBottomSheet;

    invoke-virtual {v2}, Lcom/letv/leui/widget/LeBottomSheet;->isShowing()Z

    move-result v2

    :goto_0
    iput-boolean v2, v0, Lcom/letv/leui/preference/LeListPreference$SavedState;->isBottomSheetShowing:Z

    .line 502
    return-object v0

    .line 501
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 2
    .param p1, "restoreValue"    # Z
    .param p2, "defaultValue"    # Ljava/lang/Object;

    .prologue
    .line 457
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreference;->mValue:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/letv/leui/preference/LeListPreference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .end local p2    # "defaultValue":Ljava/lang/Object;
    :goto_0
    invoke-virtual {p0, p2}, Lcom/letv/leui/preference/LeListPreference;->setValue(Ljava/lang/String;)V

    .line 459
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreference;->mEntries:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/letv/leui/preference/LeListPreference;->getValueIndex()I

    move-result v0

    if-ltz v0, :cond_0

    invoke-direct {p0}, Lcom/letv/leui/preference/LeListPreference;->getValueIndex()I

    move-result v0

    iget-object v1, p0, Lcom/letv/leui/preference/LeListPreference;->mEntries:[Ljava/lang/CharSequence;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 460
    invoke-direct {p0}, Lcom/letv/leui/preference/LeListPreference;->getValueIndex()I

    move-result v0

    iput v0, p0, Lcom/letv/leui/preference/LeListPreference;->mClickedDialogEntryIndex:I

    .line 462
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/letv/leui/preference/LeListPreference;->isInitValue:Z

    .line 456
    return-void

    .line 457
    .restart local p2    # "defaultValue":Ljava/lang/Object;
    :cond_1
    check-cast p2, Ljava/lang/String;

    goto :goto_0
.end method

.method public setBottomSheetBtnText(Ljava/lang/String;)V
    .locals 1
    .param p1, "btnText"    # Ljava/lang/String;

    .prologue
    .line 331
    iput-object p1, p0, Lcom/letv/leui/preference/LeListPreference;->mBottomSheetBtnText:Ljava/lang/String;

    .line 333
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreference;->bottomSheet:Lcom/letv/leui/widget/LeBottomSheet;

    if-eqz v0, :cond_0

    .line 334
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreference;->bottomSheet:Lcom/letv/leui/widget/LeBottomSheet;

    invoke-virtual {v0}, Lcom/letv/leui/widget/LeBottomSheet;->getBtn_cancel()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 330
    :cond_0
    return-void
.end method

.method public setBottomSheetItemCheckIsOn(Z)V
    .locals 1
    .param p1, "checkIsOn"    # Z

    .prologue
    .line 289
    iput-boolean p1, p0, Lcom/letv/leui/preference/LeListPreference;->mBottomSheetCheckIsOn:Z

    .line 290
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreference;->bottomSheet:Lcom/letv/leui/widget/LeBottomSheet;

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreference;->bottomSheet:Lcom/letv/leui/widget/LeBottomSheet;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/LeBottomSheet;->setCheckIsOn(Z)V

    .line 288
    :cond_0
    return-void
.end method

.method public setBottomSheetItemChecked(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 278
    iput p1, p0, Lcom/letv/leui/preference/LeListPreference;->mClickedDialogEntryIndex:I

    .line 279
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreference;->bottomSheet:Lcom/letv/leui/widget/LeBottomSheet;

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreference;->bottomSheet:Lcom/letv/leui/widget/LeBottomSheet;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/LeBottomSheet;->setCheckPos(I)V

    .line 277
    :cond_0
    return-void
.end method

.method public setBottomSheetShowMode(I)V
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 344
    iput p1, p0, Lcom/letv/leui/preference/LeListPreference;->mShowMode:I

    .line 346
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreference;->bottomSheet:Lcom/letv/leui/widget/LeBottomSheet;

    if-eqz v0, :cond_0

    .line 347
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreference;->bottomSheet:Lcom/letv/leui/widget/LeBottomSheet;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/LeBottomSheet;->setShowMode(I)V

    .line 343
    :cond_0
    return-void
.end method

.method public setBottomSheetTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 319
    iput-object p1, p0, Lcom/letv/leui/preference/LeListPreference;->mBottomSheetTitleText:Ljava/lang/String;

    .line 321
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreference;->bottomSheet:Lcom/letv/leui/widget/LeBottomSheet;

    if-eqz v0, :cond_0

    .line 322
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreference;->bottomSheet:Lcom/letv/leui/widget/LeBottomSheet;

    invoke-virtual {v0}, Lcom/letv/leui/widget/LeBottomSheet;->getTitle()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 318
    :cond_0
    return-void
.end method

.method public setDropDownWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .prologue
    .line 827
    iput p1, p0, Lcom/letv/leui/preference/LeListPreference;->mDropDownWidth:I

    .line 826
    return-void
.end method

.method public setEntries(I)V
    .locals 1
    .param p1, "entriesResId"    # I

    .prologue
    .line 197
    invoke-virtual {p0}, Lcom/letv/leui/preference/LeListPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/letv/leui/preference/LeListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 196
    return-void
.end method

.method public setEntries([Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "entries"    # [Ljava/lang/CharSequence;

    .prologue
    .line 188
    iput-object p1, p0, Lcom/letv/leui/preference/LeListPreference;->mEntries:[Ljava/lang/CharSequence;

    .line 187
    return-void
.end method

.method public setEntryValues(I)V
    .locals 1
    .param p1, "entryValuesResId"    # I

    .prologue
    .line 239
    invoke-virtual {p0}, Lcom/letv/leui/preference/LeListPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/letv/leui/preference/LeListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 238
    return-void
.end method

.method public setEntryValues([Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "entryValues"    # [Ljava/lang/CharSequence;

    .prologue
    .line 230
    iput-object p1, p0, Lcom/letv/leui/preference/LeListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    .line 229
    return-void
.end method

.method public setItemColor(I)V
    .locals 1
    .param p1, "Color"    # I

    .prologue
    .line 309
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreference;->bottomSheet:Lcom/letv/leui/widget/LeBottomSheet;

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreference;->bottomSheet:Lcom/letv/leui/widget/LeBottomSheet;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/LeBottomSheet;->setCheckBoxItemColor(I)V

    .line 308
    :cond_0
    return-void
.end method

.method public setMaxDropDownHeight(I)V
    .locals 0
    .param p1, "maxHeight"    # I

    .prologue
    .line 837
    iput p1, p0, Lcom/letv/leui/preference/LeListPreference;->mMaxDropDownHeight:I

    .line 836
    return-void
.end method

.method public setMessages(I)V
    .locals 1
    .param p1, "messagesResId"    # I

    .prologue
    .line 218
    invoke-virtual {p0}, Lcom/letv/leui/preference/LeListPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/letv/leui/preference/LeListPreference;->setMessages([Ljava/lang/CharSequence;)V

    .line 217
    return-void
.end method

.method public setMessages([Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "messages"    # [Ljava/lang/CharSequence;

    .prologue
    .line 214
    iput-object p1, p0, Lcom/letv/leui/preference/LeListPreference;->mMessages:[Ljava/lang/CharSequence;

    .line 213
    return-void
.end method

.method public setMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 817
    iput p1, p0, Lcom/letv/leui/preference/LeListPreference;->mMode:I

    .line 816
    return-void
.end method

.method public setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V
    .locals 0
    .param p1, "onPreferenceChangeListener"    # Landroid/preference/Preference$OnPreferenceChangeListener;

    .prologue
    .line 752
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 750
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
    .line 300
    .local p1, "unableItemIndex":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iput-object p1, p0, Lcom/letv/leui/preference/LeListPreference;->mUnableItemIndex:Ljava/util/ArrayList;

    .line 302
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreference;->bottomSheet:Lcom/letv/leui/widget/LeBottomSheet;

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreference;->bottomSheet:Lcom/letv/leui/widget/LeBottomSheet;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/LeBottomSheet;->setUnableItemIndex(Ljava/util/ArrayList;)V

    .line 299
    :cond_0
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 260
    iget-object v1, p0, Lcom/letv/leui/preference/LeListPreference;->mValue:Ljava/lang/String;

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    .line 261
    .local v0, "changed":Z
    :goto_0
    if-nez v0, :cond_2

    iget-boolean v1, p0, Lcom/letv/leui/preference/LeListPreference;->mValueSet:Z

    if-eqz v1, :cond_2

    .line 258
    :cond_0
    :goto_1
    return-void

    .line 260
    .end local v0    # "changed":Z
    :cond_1
    const/4 v0, 0x1

    .restart local v0    # "changed":Z
    goto :goto_0

    .line 262
    :cond_2
    iput-object p1, p0, Lcom/letv/leui/preference/LeListPreference;->mValue:Ljava/lang/String;

    .line 263
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/letv/leui/preference/LeListPreference;->mValueSet:Z

    .line 264
    invoke-virtual {p0, p1}, Lcom/letv/leui/preference/LeListPreference;->persistString(Ljava/lang/String;)Z

    .line 265
    invoke-virtual {p0, p1}, Lcom/letv/leui/preference/LeListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/letv/leui/preference/LeListPreference;->mClickedDialogEntryIndex:I

    .line 266
    iget v1, p0, Lcom/letv/leui/preference/LeListPreference;->mClickedDialogEntryIndex:I

    invoke-virtual {p0, v1}, Lcom/letv/leui/preference/LeListPreference;->setBottomSheetItemChecked(I)V

    .line 267
    if-eqz v0, :cond_0

    .line 268
    invoke-virtual {p0}, Lcom/letv/leui/preference/LeListPreference;->notifyChanged()V

    goto :goto_1
.end method

.method public setValueIndex(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 359
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    if-ltz p1, :cond_0

    .line 360
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    aget-object v0, v0, p1

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/letv/leui/preference/LeListPreference;->setValue(Ljava/lang/String;)V

    .line 357
    :cond_0
    return-void
.end method
