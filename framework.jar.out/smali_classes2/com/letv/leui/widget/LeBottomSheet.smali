.class public Lcom/letv/leui/widget/LeBottomSheet;
.super Landroid/app/Dialog;
.source "LeBottomSheet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/leui/widget/LeBottomSheet$LeBotOnClickListener;,
        Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;
    }
.end annotation


# static fields
.field public static final BTN_CFM_COLOR_BLUE:I = -0xdc6a12

.field public static final BTN_CFM_COLOR_RED:I = -0x14c1d2

.field public static final BUTTON_DEFAULT_STYLE:I = 0x5

.field public static final BUTTON_HORIZONTAL_TITLE_CONTENT:I = 0x1

.field public static final BUTTON_PROGRESS:I = 0x6

.field public static final BUTTON_VERTICAL_TITLE_CONTENT:I = 0x3

.field public static final BUTTON_VERTICAL_TITLE_CONTENT_GAPLINE:I = 0x2

.field public static final BUTTON_VERTILCAL:I = 0x0

.field public static final DAY_MODE:I = 0x8

.field public static final DEFAULT_GRIDVIEW_ITEM_DELAY:F = 0.05f

.field public static final LISTVIEW:I = 0x0

.field public static final LISTVIEW_TITLE:I = 0x1

.field public static final NIGHT_MODE:I = 0x7

.field public static final SWITCH_BUTTON_STYLE_DIY:I = 0x4

.field private static final TAG:Ljava/lang/String; = "LeBottomSheet"

.field private static density:F


# instance fields
.field private ListItemColor:I

.field private MaxItemNum:I

.field private adapter:Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;

.field private animateToTextViewColor:Z

.field private boxBorderColor:I

.field private btnColor:[I

.field private btnStr:[Ljava/lang/String;

.field private btn_cancel:Landroid/widget/Button;

.field private btn_confirm:Landroid/widget/Button;

.field private buttons:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/Button;",
            ">;"
        }
    .end annotation
.end field

.field private checkBox:Lcom/letv/leui/widget/LeCheckBox;

.field private checkBoxArrowColor:I

.field private checkBoxOffColor:I

.field private checkBoxOnColor:I

.field private checkIsOn:Z

.field private checkList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private checkPos:I

.field private checkbox_ctn:Landroid/widget/LinearLayout;

.field private checkedIndexList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private content:Landroid/widget/TextView;

.field private contentAtCenter:Z

.field private diyLine1:Landroid/widget/ImageView;

.field private diyLine2:Landroid/widget/ImageView;

.field private gapLine_1:Landroid/widget/ImageView;

.field private gapLine_2:Landroid/widget/ImageView;

.field private gapLine_3:Landroid/widget/ImageView;

.field private gridView:Landroid/widget/GridView;

.field private iconView:Landroid/widget/ImageView;

.field private isChangeItemColor:Z

.field private isSelected:[Z

.field private isShowDivideLine:Z

.field private isSinglebox:Z

.field private itemColorMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private itemLimit:Z

.field private itemNum:I

.field private layoutForDiy:Landroid/widget/LinearLayout;

.field private listView:Landroid/widget/ListView;

.field private listviewTitle_tailImg:Landroid/widget/ImageView;

.field private listviewTitle_tailText:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field private mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private mDialog:Lcom/letv/leui/widget/LeBottomSheet;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mLeBotOnClickListener:Lcom/letv/leui/widget/LeBottomSheet$LeBotOnClickListener;

.field private mLinkMovementEnabled:Z

.field private mListCustomView:Z

.field private mMenuView:Landroid/view/View;

.field private mView:Landroid/view/View;

.field private maxHeightInPixel:I

.field private menuContainer:Landroid/view/ViewGroup;

.field private moreItem:Z

.field private onLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

.field private progressBar:Landroid/widget/ProgressBar;

.field private showMode:I

.field private slideFromTop:Z

.field private style:I

.field private subTitle:Landroid/widget/TextView;

.field private tailTextColor:I

.field private title:Landroid/widget/TextView;

.field private unableItemIndex:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private usePressEffect:Z


# direct methods
.method static synthetic -get0(Lcom/letv/leui/widget/LeBottomSheet;)I
    .locals 1

    iget v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->ListItemColor:I

    return v0
.end method

.method static synthetic -get1(Lcom/letv/leui/widget/LeBottomSheet;)Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;
    .locals 1

    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->adapter:Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;

    return-object v0
.end method

.method static synthetic -get10(Lcom/letv/leui/widget/LeBottomSheet;)I
    .locals 1

    iget v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->checkPos:I

    return v0
.end method

.method static synthetic -get11(Lcom/letv/leui/widget/LeBottomSheet;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->checkedIndexList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get12(Lcom/letv/leui/widget/LeBottomSheet;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->isChangeItemColor:Z

    return v0
.end method

.method static synthetic -get13(Lcom/letv/leui/widget/LeBottomSheet;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->isSinglebox:Z

    return v0
.end method

.method static synthetic -get14(Lcom/letv/leui/widget/LeBottomSheet;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->itemColorMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic -get15(Lcom/letv/leui/widget/LeBottomSheet;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->listView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic -get16(Lcom/letv/leui/widget/LeBottomSheet;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get17(Lcom/letv/leui/widget/LeBottomSheet;)Lcom/letv/leui/widget/LeBottomSheet$LeBotOnClickListener;
    .locals 1

    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->mLeBotOnClickListener:Lcom/letv/leui/widget/LeBottomSheet$LeBotOnClickListener;

    return-object v0
.end method

.method static synthetic -get18(Lcom/letv/leui/widget/LeBottomSheet;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->mMenuView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get19(Lcom/letv/leui/widget/LeBottomSheet;)I
    .locals 1

    iget v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->maxHeightInPixel:I

    return v0
.end method

.method static synthetic -get2(Lcom/letv/leui/widget/LeBottomSheet;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->animateToTextViewColor:Z

    return v0
.end method

.method static synthetic -get20(Lcom/letv/leui/widget/LeBottomSheet;)Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->menuContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic -get21(Lcom/letv/leui/widget/LeBottomSheet;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->moreItem:Z

    return v0
.end method

.method static synthetic -get22(Lcom/letv/leui/widget/LeBottomSheet;)I
    .locals 1

    iget v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->showMode:I

    return v0
.end method

.method static synthetic -get23(Lcom/letv/leui/widget/LeBottomSheet;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->slideFromTop:Z

    return v0
.end method

.method static synthetic -get24(Lcom/letv/leui/widget/LeBottomSheet;)I
    .locals 1

    iget v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->tailTextColor:I

    return v0
.end method

.method static synthetic -get25(Lcom/letv/leui/widget/LeBottomSheet;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->unableItemIndex:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get26(Lcom/letv/leui/widget/LeBottomSheet;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->usePressEffect:Z

    return v0
.end method

.method static synthetic -get3(Lcom/letv/leui/widget/LeBottomSheet;)I
    .locals 1

    iget v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->boxBorderColor:I

    return v0
.end method

.method static synthetic -get4(Lcom/letv/leui/widget/LeBottomSheet;)Lcom/letv/leui/widget/LeCheckBox;
    .locals 1

    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->checkBox:Lcom/letv/leui/widget/LeCheckBox;

    return-object v0
.end method

.method static synthetic -get5(Lcom/letv/leui/widget/LeBottomSheet;)I
    .locals 1

    iget v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->checkBoxArrowColor:I

    return v0
.end method

.method static synthetic -get6(Lcom/letv/leui/widget/LeBottomSheet;)I
    .locals 1

    iget v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->checkBoxOffColor:I

    return v0
.end method

.method static synthetic -get7(Lcom/letv/leui/widget/LeBottomSheet;)I
    .locals 1

    iget v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->checkBoxOnColor:I

    return v0
.end method

.method static synthetic -get8(Lcom/letv/leui/widget/LeBottomSheet;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->checkIsOn:Z

    return v0
.end method

.method static synthetic -get9(Lcom/letv/leui/widget/LeBottomSheet;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->checkList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -set0(Lcom/letv/leui/widget/LeBottomSheet;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/letv/leui/widget/LeBottomSheet;->checkIsOn:Z

    return p1
.end method

.method static synthetic -set1(Lcom/letv/leui/widget/LeBottomSheet;I)I
    .locals 0

    iput p1, p0, Lcom/letv/leui/widget/LeBottomSheet;->checkPos:I

    return p1
.end method

.method static synthetic -set2(Lcom/letv/leui/widget/LeBottomSheet;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcom/letv/leui/widget/LeBottomSheet;->checkedIndexList:Ljava/util/ArrayList;

    return-object p1
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 291
    const v0, 0x103051c

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 78
    iput-boolean v3, p0, Lcom/letv/leui/widget/LeBottomSheet;->isSinglebox:Z

    .line 79
    iput-boolean v3, p0, Lcom/letv/leui/widget/LeBottomSheet;->itemLimit:Z

    .line 155
    iput v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->tailTextColor:I

    .line 158
    const v0, -0xdc6a12

    iput v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->ListItemColor:I

    .line 175
    iput-boolean v2, p0, Lcom/letv/leui/widget/LeBottomSheet;->contentAtCenter:Z

    .line 193
    iput-boolean v2, p0, Lcom/letv/leui/widget/LeBottomSheet;->moreItem:Z

    .line 201
    iput-boolean v2, p0, Lcom/letv/leui/widget/LeBottomSheet;->slideFromTop:Z

    .line 210
    iput-boolean v2, p0, Lcom/letv/leui/widget/LeBottomSheet;->mLinkMovementEnabled:Z

    .line 249
    iput v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->maxHeightInPixel:I

    .line 310
    const/4 v0, 0x6

    iput v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->MaxItemNum:I

    .line 320
    iput v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->checkPos:I

    .line 695
    iput-boolean v3, p0, Lcom/letv/leui/widget/LeBottomSheet;->isChangeItemColor:Z

    .line 697
    iput-boolean v3, p0, Lcom/letv/leui/widget/LeBottomSheet;->animateToTextViewColor:Z

    .line 1253
    iput-boolean v2, p0, Lcom/letv/leui/widget/LeBottomSheet;->mListCustomView:Z

    .line 1254
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->mView:Landroid/view/View;

    .line 1350
    iput-boolean v3, p0, Lcom/letv/leui/widget/LeBottomSheet;->checkIsOn:Z

    .line 1372
    iput-boolean v3, p0, Lcom/letv/leui/widget/LeBottomSheet;->usePressEffect:Z

    .line 1705
    iput v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->checkBoxOnColor:I

    .line 1706
    iput v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->checkBoxOffColor:I

    .line 1707
    iput v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->checkBoxArrowColor:I

    .line 1723
    iput v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->boxBorderColor:I

    .line 292
    iput-object p0, p0, Lcom/letv/leui/widget/LeBottomSheet;->mDialog:Lcom/letv/leui/widget/LeBottomSheet;

    .line 293
    invoke-direct {p0, p1, v2}, Lcom/letv/leui/widget/LeBottomSheet;->init(Landroid/content/Context;Z)V

    .line 290
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 282
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 78
    iput-boolean v2, p0, Lcom/letv/leui/widget/LeBottomSheet;->isSinglebox:Z

    .line 79
    iput-boolean v2, p0, Lcom/letv/leui/widget/LeBottomSheet;->itemLimit:Z

    .line 155
    iput v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->tailTextColor:I

    .line 158
    const v0, -0xdc6a12

    iput v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->ListItemColor:I

    .line 175
    iput-boolean v3, p0, Lcom/letv/leui/widget/LeBottomSheet;->contentAtCenter:Z

    .line 193
    iput-boolean v3, p0, Lcom/letv/leui/widget/LeBottomSheet;->moreItem:Z

    .line 201
    iput-boolean v3, p0, Lcom/letv/leui/widget/LeBottomSheet;->slideFromTop:Z

    .line 210
    iput-boolean v3, p0, Lcom/letv/leui/widget/LeBottomSheet;->mLinkMovementEnabled:Z

    .line 249
    iput v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->maxHeightInPixel:I

    .line 310
    const/4 v0, 0x6

    iput v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->MaxItemNum:I

    .line 320
    iput v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->checkPos:I

    .line 695
    iput-boolean v2, p0, Lcom/letv/leui/widget/LeBottomSheet;->isChangeItemColor:Z

    .line 697
    iput-boolean v2, p0, Lcom/letv/leui/widget/LeBottomSheet;->animateToTextViewColor:Z

    .line 1253
    iput-boolean v3, p0, Lcom/letv/leui/widget/LeBottomSheet;->mListCustomView:Z

    .line 1254
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->mView:Landroid/view/View;

    .line 1350
    iput-boolean v2, p0, Lcom/letv/leui/widget/LeBottomSheet;->checkIsOn:Z

    .line 1372
    iput-boolean v2, p0, Lcom/letv/leui/widget/LeBottomSheet;->usePressEffect:Z

    .line 1705
    iput v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->checkBoxOnColor:I

    .line 1706
    iput v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->checkBoxOffColor:I

    .line 1707
    iput v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->checkBoxArrowColor:I

    .line 1723
    iput v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->boxBorderColor:I

    .line 283
    const v0, 0x1030520

    if-ne p2, v0, :cond_0

    .line 284
    iput-boolean v2, p0, Lcom/letv/leui/widget/LeBottomSheet;->slideFromTop:Z

    .line 286
    :cond_0
    iput-object p0, p0, Lcom/letv/leui/widget/LeBottomSheet;->mDialog:Lcom/letv/leui/widget/LeBottomSheet;

    .line 287
    iget-boolean v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->slideFromTop:Z

    invoke-direct {p0, p1, v0}, Lcom/letv/leui/widget/LeBottomSheet;->init(Landroid/content/Context;Z)V

    .line 281
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "b"    # Z

    .prologue
    .line 297
    invoke-direct {p0, p1}, Lcom/letv/leui/widget/LeBottomSheet;-><init>(Landroid/content/Context;)V

    .line 296
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZZ)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "b"    # Z
    .param p3, "isWithOut"    # Z

    .prologue
    .line 307
    if-eqz p3, :cond_0

    const v0, 0x103051e

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/letv/leui/widget/LeBottomSheet;-><init>(Landroid/content/Context;I)V

    .line 306
    return-void

    .line 307
    :cond_0
    const v0, 0x103051c

    goto :goto_0
.end method

.method private static dip2px(F)I
    .locals 2
    .param p0, "dp"    # F

    .prologue
    .line 278
    sget v0, Lcom/letv/leui/widget/LeBottomSheet;->density:F

    mul-float/2addr v0, p0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private getWidget()V
    .locals 2

    .prologue
    .line 1157
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->menuContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1158
    const v0, 0x1090090

    invoke-direct {p0, v0}, Lcom/letv/leui/widget/LeBottomSheet;->inflateCustomLayout(I)V

    .line 1159
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->mMenuView:Landroid/view/View;

    const v1, 0x10203e3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->title:Landroid/widget/TextView;

    .line 1160
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->mMenuView:Landroid/view/View;

    const v1, 0x10203e4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->content:Landroid/widget/TextView;

    .line 1162
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->content:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->subTitle:Landroid/widget/TextView;

    .line 1163
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->mMenuView:Landroid/view/View;

    const v1, 0x10203e9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/letv/leui/widget/LeCheckBox;

    iput-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->checkBox:Lcom/letv/leui/widget/LeCheckBox;

    .line 1164
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->mMenuView:Landroid/view/View;

    const v1, 0x10203e8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->checkbox_ctn:Landroid/widget/LinearLayout;

    .line 1165
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->mMenuView:Landroid/view/View;

    const v1, 0x10203ea

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->gapLine_1:Landroid/widget/ImageView;

    .line 1166
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->mMenuView:Landroid/view/View;

    const v1, 0x10203ec

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->gapLine_2:Landroid/widget/ImageView;

    .line 1167
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->mMenuView:Landroid/view/View;

    const v1, 0x10203eb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->btn_confirm:Landroid/widget/Button;

    .line 1168
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->mMenuView:Landroid/view/View;

    const v1, 0x10203ed

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->btn_cancel:Landroid/widget/Button;

    .line 1169
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->mMenuView:Landroid/view/View;

    const v1, 0x10203e6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->layoutForDiy:Landroid/widget/LinearLayout;

    .line 1170
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->mMenuView:Landroid/view/View;

    const v1, 0x10203e5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->diyLine1:Landroid/widget/ImageView;

    .line 1171
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->mMenuView:Landroid/view/View;

    const v1, 0x10203e7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->diyLine2:Landroid/widget/ImageView;

    .line 1172
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->content:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/ScrollingMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 1156
    return-void
.end method

.method private getWidgetForThreeBtn()V
    .locals 3

    .prologue
    .line 1178
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->menuContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1179
    const v0, 0x1090092

    invoke-direct {p0, v0}, Lcom/letv/leui/widget/LeBottomSheet;->inflateCustomLayout(I)V

    .line 1180
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->mMenuView:Landroid/view/View;

    const v1, 0x10203e3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->title:Landroid/widget/TextView;

    .line 1181
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->mMenuView:Landroid/view/View;

    const v1, 0x10203e4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->content:Landroid/widget/TextView;

    .line 1182
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->mMenuView:Landroid/view/View;

    const v1, 0x10203ea

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->gapLine_1:Landroid/widget/ImageView;

    .line 1183
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->mMenuView:Landroid/view/View;

    const v1, 0x10203ec

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->gapLine_2:Landroid/widget/ImageView;

    .line 1184
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->mMenuView:Landroid/view/View;

    const v1, 0x10203f0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->gapLine_3:Landroid/widget/ImageView;

    .line 1185
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->buttons:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 1186
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->buttons:Ljava/util/ArrayList;

    .line 1188
    :cond_0
    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->buttons:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->mMenuView:Landroid/view/View;

    const v2, 0x10203ee

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1189
    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->buttons:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->mMenuView:Landroid/view/View;

    const v2, 0x10203ef

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1190
    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->buttons:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->mMenuView:Landroid/view/View;

    const v2, 0x10203f1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1177
    return-void
.end method

.method private inflateCustomLayout(I)V
    .locals 2
    .param p1, "resource"    # I

    .prologue
    .line 1338
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->mInflater:Landroid/view/LayoutInflater;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->mMenuView:Landroid/view/View;

    .line 1337
    return-void
.end method

.method private init(Landroid/content/Context;Z)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "slideFromTop"    # Z

    .prologue
    const/4 v4, 0x0

    .line 1312
    iput-object p1, p0, Lcom/letv/leui/widget/LeBottomSheet;->mContext:Landroid/content/Context;

    .line 1313
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    sput v2, Lcom/letv/leui/widget/LeBottomSheet;->density:F

    .line 1317
    if-eqz p2, :cond_2

    .line 1318
    iget-object v2, p0, Lcom/letv/leui/widget/LeBottomSheet;->mDialog:Lcom/letv/leui/widget/LeBottomSheet;

    invoke-virtual {v2}, Lcom/letv/leui/widget/LeBottomSheet;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x30

    invoke-virtual {v2, v3}, Landroid/view/Window;->setGravity(I)V

    .line 1322
    :goto_0
    iget-object v2, p0, Lcom/letv/leui/widget/LeBottomSheet;->mDialog:Lcom/letv/leui/widget/LeBottomSheet;

    invoke-virtual {v2}, Lcom/letv/leui/widget/LeBottomSheet;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 1323
    .local v0, "dialogWindow":Landroid/view/Window;
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1324
    .local v1, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {v0}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1326
    iget-object v2, p0, Lcom/letv/leui/widget/LeBottomSheet;->mInflater:Landroid/view/LayoutInflater;

    if-nez v2, :cond_0

    .line 1327
    const-string/jumbo v2, "layout_inflater"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    iput-object v2, p0, Lcom/letv/leui/widget/LeBottomSheet;->mInflater:Landroid/view/LayoutInflater;

    .line 1329
    :cond_0
    iget-object v2, p0, Lcom/letv/leui/widget/LeBottomSheet;->menuContainer:Landroid/view/ViewGroup;

    if-nez v2, :cond_1

    .line 1330
    iget-object v2, p0, Lcom/letv/leui/widget/LeBottomSheet;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x109008d

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/letv/leui/widget/LeBottomSheet;->menuContainer:Landroid/view/ViewGroup;

    .line 1331
    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v2, v3, :cond_1

    .line 1332
    iget-object v2, p0, Lcom/letv/leui/widget/LeBottomSheet;->menuContainer:Landroid/view/ViewGroup;

    iget v3, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setMinimumWidth(I)V

    .line 1311
    :cond_1
    return-void

    .line 1320
    .end local v0    # "dialogWindow":Landroid/view/Window;
    .end local v1    # "dm":Landroid/util/DisplayMetrics;
    :cond_2
    iget-object v2, p0, Lcom/letv/leui/widget/LeBottomSheet;->mDialog:Lcom/letv/leui/widget/LeBottomSheet;

    invoke-virtual {v2}, Lcom/letv/leui/widget/LeBottomSheet;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x50

    invoke-virtual {v2, v3}, Landroid/view/Window;->setGravity(I)V

    goto :goto_0
.end method

.method private setBottomButton()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 863
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->btn_confirm:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 864
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->btn_cancel:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 865
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->btn_cancel:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setSelected(Z)V

    .line 867
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->btnColor:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->btnColor:[I

    array-length v0, v0

    if-ne v0, v4, :cond_0

    .line 868
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->btn_cancel:Landroid/widget/Button;

    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->btnColor:[I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 869
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->btn_confirm:Landroid/widget/Button;

    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->btnColor:[I

    aget v1, v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 871
    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->btnStr:[Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->btnStr:[Ljava/lang/String;

    array-length v0, v0

    if-ne v0, v4, :cond_1

    .line 872
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->btn_cancel:Landroid/widget/Button;

    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->btnStr:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 873
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->btn_confirm:Landroid/widget/Button;

    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->btnStr:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 878
    :goto_0
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->btn_cancel:Landroid/widget/Button;

    new-instance v1, Lcom/letv/leui/widget/LeBottomSheet$10;

    invoke-direct {v1, p0}, Lcom/letv/leui/widget/LeBottomSheet$10;-><init>(Lcom/letv/leui/widget/LeBottomSheet;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 888
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->btn_confirm:Landroid/widget/Button;

    new-instance v1, Lcom/letv/leui/widget/LeBottomSheet$11;

    invoke-direct {v1, p0}, Lcom/letv/leui/widget/LeBottomSheet$11;-><init>(Lcom/letv/leui/widget/LeBottomSheet;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 862
    return-void

    .line 875
    :cond_1
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->btn_cancel:Landroid/widget/Button;

    const v1, 0x10405ff

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 876
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->btn_confirm:Landroid/widget/Button;

    const v1, 0x104060e

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0
.end method

.method private setContentView()V
    .locals 3

    .prologue
    .line 1291
    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->menuContainer:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/letv/leui/widget/LeBottomSheet;->mMenuView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1292
    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->mDialog:Lcom/letv/leui/widget/LeBottomSheet;

    if-eqz v1, :cond_0

    .line 1293
    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->mDialog:Lcom/letv/leui/widget/LeBottomSheet;

    iget-object v2, p0, Lcom/letv/leui/widget/LeBottomSheet;->menuContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Lcom/letv/leui/widget/LeBottomSheet;->setContentView(Landroid/view/View;)V

    .line 1295
    :cond_0
    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->menuContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 1296
    .local v0, "vto":Landroid/view/ViewTreeObserver;
    new-instance v1, Lcom/letv/leui/widget/LeBottomSheet$13;

    invoke-direct {v1, p0}, Lcom/letv/leui/widget/LeBottomSheet$13;-><init>(Lcom/letv/leui/widget/LeBottomSheet;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1290
    return-void
.end method

.method private setDialogWidth()V
    .locals 5

    .prologue
    .line 1271
    iget-object v2, p0, Lcom/letv/leui/widget/LeBottomSheet;->mDialog:Lcom/letv/leui/widget/LeBottomSheet;

    if-eqz v2, :cond_0

    .line 1272
    iget-object v2, p0, Lcom/letv/leui/widget/LeBottomSheet;->mDialog:Lcom/letv/leui/widget/LeBottomSheet;

    invoke-virtual {v2}, Lcom/letv/leui/widget/LeBottomSheet;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 1273
    .local v0, "dialogWindow":Landroid/view/Window;
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1274
    .local v1, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {v0}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1275
    iget-object v2, p0, Lcom/letv/leui/widget/LeBottomSheet;->menuContainer:Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 1276
    iget-object v2, p0, Lcom/letv/leui/widget/LeBottomSheet;->menuContainer:Landroid/view/ViewGroup;

    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v4, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setMinimumWidth(I)V

    .line 1270
    .end local v0    # "dialogWindow":Landroid/view/Window;
    .end local v1    # "dm":Landroid/util/DisplayMetrics;
    :cond_0
    return-void
.end method

.method private setNightMode()V
    .locals 8

    .prologue
    const/high16 v7, -0x1000000

    const v6, 0x108050d

    const/4 v5, -0x1

    const v4, 0x1effffff

    .line 99
    iget-object v2, p0, Lcom/letv/leui/widget/LeBottomSheet;->mMenuView:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 100
    iget-object v2, p0, Lcom/letv/leui/widget/LeBottomSheet;->mMenuView:Landroid/view/View;

    const v3, -0x1aebebec

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 101
    :cond_0
    iget-object v2, p0, Lcom/letv/leui/widget/LeBottomSheet;->listView:Landroid/widget/ListView;

    if-eqz v2, :cond_1

    .line 102
    iget-object v2, p0, Lcom/letv/leui/widget/LeBottomSheet;->listView:Landroid/widget/ListView;

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 103
    :cond_1
    iget-object v2, p0, Lcom/letv/leui/widget/LeBottomSheet;->btn_cancel:Landroid/widget/Button;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/letv/leui/widget/LeBottomSheet;->btn_cancel:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getCurrentTextColor()I

    move-result v2

    if-ne v2, v7, :cond_2

    .line 104
    iget-object v2, p0, Lcom/letv/leui/widget/LeBottomSheet;->btn_cancel:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setTextColor(I)V

    .line 105
    :cond_2
    iget-object v2, p0, Lcom/letv/leui/widget/LeBottomSheet;->btn_confirm:Landroid/widget/Button;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/letv/leui/widget/LeBottomSheet;->btn_confirm:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getCurrentTextColor()I

    move-result v2

    if-ne v2, v7, :cond_3

    .line 106
    iget-object v2, p0, Lcom/letv/leui/widget/LeBottomSheet;->btn_confirm:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setTextColor(I)V

    .line 107
    :cond_3
    iget-object v2, p0, Lcom/letv/leui/widget/LeBottomSheet;->title:Landroid/widget/TextView;

    if-eqz v2, :cond_4

    .line 108
    iget-object v2, p0, Lcom/letv/leui/widget/LeBottomSheet;->title:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 109
    :cond_4
    iget-object v2, p0, Lcom/letv/leui/widget/LeBottomSheet;->gapLine_2:Landroid/widget/ImageView;

    if-eqz v2, :cond_5

    .line 110
    iget-object v2, p0, Lcom/letv/leui/widget/LeBottomSheet;->gapLine_2:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 111
    :cond_5
    iget-object v2, p0, Lcom/letv/leui/widget/LeBottomSheet;->gapLine_1:Landroid/widget/ImageView;

    if-eqz v2, :cond_6

    .line 112
    iget-object v2, p0, Lcom/letv/leui/widget/LeBottomSheet;->gapLine_1:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 113
    :cond_6
    iget-object v2, p0, Lcom/letv/leui/widget/LeBottomSheet;->diyLine1:Landroid/widget/ImageView;

    if-eqz v2, :cond_7

    .line 114
    iget-object v2, p0, Lcom/letv/leui/widget/LeBottomSheet;->diyLine1:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 115
    :cond_7
    iget-object v2, p0, Lcom/letv/leui/widget/LeBottomSheet;->diyLine2:Landroid/widget/ImageView;

    if-eqz v2, :cond_8

    .line 116
    iget-object v2, p0, Lcom/letv/leui/widget/LeBottomSheet;->diyLine2:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 117
    :cond_8
    iget-object v2, p0, Lcom/letv/leui/widget/LeBottomSheet;->content:Landroid/widget/TextView;

    if-eqz v2, :cond_9

    .line 118
    iget-object v2, p0, Lcom/letv/leui/widget/LeBottomSheet;->content:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 119
    :cond_9
    iget-object v2, p0, Lcom/letv/leui/widget/LeBottomSheet;->checkBox:Lcom/letv/leui/widget/LeCheckBox;

    if-eqz v2, :cond_a

    .line 120
    iget-object v2, p0, Lcom/letv/leui/widget/LeBottomSheet;->checkBox:Lcom/letv/leui/widget/LeCheckBox;

    invoke-virtual {v2, v5}, Lcom/letv/leui/widget/LeCheckBox;->setTextColor(I)V

    .line 121
    :cond_a
    iget-object v2, p0, Lcom/letv/leui/widget/LeBottomSheet;->btn_cancel:Landroid/widget/Button;

    if-eqz v2, :cond_b

    .line 122
    iget-object v2, p0, Lcom/letv/leui/widget/LeBottomSheet;->btn_cancel:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 123
    :cond_b
    iget-object v2, p0, Lcom/letv/leui/widget/LeBottomSheet;->btn_confirm:Landroid/widget/Button;

    if-eqz v2, :cond_c

    .line 124
    iget-object v2, p0, Lcom/letv/leui/widget/LeBottomSheet;->btn_confirm:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 127
    :cond_c
    iget-object v2, p0, Lcom/letv/leui/widget/LeBottomSheet;->buttons:Ljava/util/ArrayList;

    if-eqz v2, :cond_e

    .line 128
    iget-object v2, p0, Lcom/letv/leui/widget/LeBottomSheet;->buttons:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "button$iterator":Ljava/util/Iterator;
    :cond_d
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 129
    .local v0, "button":Landroid/widget/Button;
    if-eqz v0, :cond_d

    .line 130
    invoke-virtual {v0, v6}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0

    .line 134
    .end local v0    # "button":Landroid/widget/Button;
    .end local v1    # "button$iterator":Ljava/util/Iterator;
    :cond_e
    iget-object v2, p0, Lcom/letv/leui/widget/LeBottomSheet;->gapLine_3:Landroid/widget/ImageView;

    if-eqz v2, :cond_f

    .line 135
    iget-object v2, p0, Lcom/letv/leui/widget/LeBottomSheet;->gapLine_3:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 98
    :cond_f
    return-void
.end method

.method private setProgress(Ljava/lang/CharSequence;[Ljava/lang/String;ILandroid/view/View$OnClickListener;)V
    .locals 7
    .param p1, "titleText"    # Ljava/lang/CharSequence;
    .param p2, "btn_text"    # [Ljava/lang/String;
    .param p3, "btnCfmColor"    # I
    .param p4, "listener_cfm"    # Landroid/view/View$OnClickListener;

    .prologue
    const/high16 v4, 0x41800000    # 16.0f

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/16 v3, 0x8

    .line 1195
    invoke-direct {p0}, Lcom/letv/leui/widget/LeBottomSheet;->getWidget()V

    .line 1196
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1197
    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->title:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1200
    :cond_0
    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->content:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1201
    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->checkBox:Lcom/letv/leui/widget/LeCheckBox;

    invoke-virtual {v1, v3}, Lcom/letv/leui/widget/LeCheckBox;->setVisibility(I)V

    .line 1202
    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->checkbox_ctn:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1203
    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->diyLine2:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1204
    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->diyLine1:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1205
    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->btn_cancel:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 1206
    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->gapLine_2:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1208
    if-eqz p2, :cond_3

    .line 1209
    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->btn_confirm:Landroid/widget/Button;

    aget-object v2, p2, v6

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1210
    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->btn_confirm:Landroid/widget/Button;

    invoke-virtual {v1, p3}, Landroid/widget/Button;->setTextColor(I)V

    .line 1215
    :goto_0
    if-eqz p4, :cond_1

    .line 1216
    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->btn_confirm:Landroid/widget/Button;

    invoke-virtual {v1, p4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1218
    :cond_1
    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->layoutForDiy:Landroid/widget/LinearLayout;

    invoke-static {v4}, Lcom/letv/leui/widget/LeBottomSheet;->dip2px(F)I

    move-result v2

    const/high16 v3, 0x41900000    # 18.0f

    invoke-static {v3}, Lcom/letv/leui/widget/LeBottomSheet;->dip2px(F)I

    move-result v3

    invoke-static {v4}, Lcom/letv/leui/widget/LeBottomSheet;->dip2px(F)I

    move-result v4

    invoke-virtual {v1, v2, v3, v4, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1219
    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->progressBar:Landroid/widget/ProgressBar;

    if-nez v1, :cond_2

    .line 1220
    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x109009a

    invoke-virtual {v1, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->progressBar:Landroid/widget/ProgressBar;

    .line 1221
    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->progressBar:Landroid/widget/ProgressBar;

    const v2, -0x131314

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setBackgroundColor(I)V

    .line 1222
    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1080505

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1223
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1224
    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1226
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_2
    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->layoutForDiy:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/letv/leui/widget/LeBottomSheet;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1227
    invoke-direct {p0}, Lcom/letv/leui/widget/LeBottomSheet;->setContentView()V

    .line 1194
    return-void

    .line 1212
    :cond_3
    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->btn_confirm:Landroid/widget/Button;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 1213
    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->gapLine_1:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public appear()V
    .locals 0

    .prologue
    .line 1287
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeBottomSheet;->show()V

    .line 1286
    return-void
.end method

.method public disappear()V
    .locals 0

    .prologue
    .line 1267
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 1266
    return-void
.end method

.method public getBtn_cancel()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->btn_cancel:Landroid/widget/Button;

    return-object v0
.end method

.method public getBtn_confirm()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->btn_confirm:Landroid/widget/Button;

    return-object v0
.end method

.method public getCheckBox()Landroid/widget/CheckBox;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->checkBox:Lcom/letv/leui/widget/LeCheckBox;

    return-object v0
.end method

.method public getCheckBoxItemColor()I
    .locals 1

    .prologue
    .line 165
    iget v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->ListItemColor:I

    return v0
.end method

.method public getCheckPos()I
    .locals 1

    .prologue
    .line 340
    iget v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->checkPos:I

    return v0
.end method

.method public getContent()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->content:Landroid/widget/TextView;

    return-object v0
.end method

.method public getData()Ljava/util/List;
    .locals 1
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
    .line 455
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->mData:Ljava/util/List;

    return-object v0
.end method

.method public getGridView()Landroid/widget/GridView;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->gridView:Landroid/widget/GridView;

    return-object v0
.end method

.method public getIconView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->iconView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getLayoutForDiy()Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->layoutForDiy:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->listView:Landroid/widget/ListView;

    return-object v0
.end method

.method public getListviewDatas()Ljava/util/List;
    .locals 2
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
    const/4 v1, 0x0

    .line 1365
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->listView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1366
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->adapter:Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;

    invoke-static {v0}, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;->-get0(Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 1368
    :cond_0
    return-object v1
.end method

.method public getListviewTitle_tailImg()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->listviewTitle_tailImg:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getListviewTitle_tailText()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->listviewTitle_tailText:Landroid/widget/TextView;

    return-object v0
.end method

.method public getMaxHeightInPixel()I
    .locals 1

    .prologue
    .line 242
    iget v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->maxHeightInPixel:I

    return v0
.end method

.method public getMaxItemNum()I
    .locals 1

    .prologue
    .line 313
    iget v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->MaxItemNum:I

    return v0
.end method

.method public getProgressBar()Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 1231
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->progressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method public getSubTitle()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->subTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTitle()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->title:Landroid/widget/TextView;

    return-object v0
.end method

.method public getmDialog()Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->mDialog:Lcom/letv/leui/widget/LeBottomSheet;

    return-object v0
.end method

.method public getmMenuView()Landroid/view/View;
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->mMenuView:Landroid/view/View;

    return-object v0
.end method

.method public isCheckIsOn()Z
    .locals 1

    .prologue
    .line 1346
    iget-boolean v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->checkIsOn:Z

    return v0
.end method

.method public isLinkMovementEnabled()Z
    .locals 1

    .prologue
    .line 213
    iget-boolean v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->mLinkMovementEnabled:Z

    return v0
.end method

.method public setBoxBorderColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 1731
    iput p1, p0, Lcom/letv/leui/widget/LeBottomSheet;->boxBorderColor:I

    .line 1730
    return-void
.end method

.method public setBtnDivideLineShow(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 712
    iput-boolean p1, p0, Lcom/letv/leui/widget/LeBottomSheet;->isShowDivideLine:Z

    .line 711
    return-void
.end method

.method public setCheckBoxItemColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 161
    iput p1, p0, Lcom/letv/leui/widget/LeBottomSheet;->ListItemColor:I

    .line 160
    return-void
.end method

.method public setCheckIsOn(Z)V
    .locals 0
    .param p1, "checkIsOn"    # Z

    .prologue
    .line 1342
    iput-boolean p1, p0, Lcom/letv/leui/widget/LeBottomSheet;->checkIsOn:Z

    .line 1341
    return-void
.end method

.method public setCheckPos(I)V
    .locals 2
    .param p1, "checkPos"    # I

    .prologue
    .line 323
    iput p1, p0, Lcom/letv/leui/widget/LeBottomSheet;->checkPos:I

    .line 325
    iget-boolean v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->isSinglebox:Z

    if-nez v0, :cond_1

    .line 326
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->checkedIndexList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 327
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->checkedIndexList:Ljava/util/ArrayList;

    .line 329
    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->checkedIndexList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 330
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->checkedIndexList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 334
    :cond_1
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->mDialog:Lcom/letv/leui/widget/LeBottomSheet;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->mDialog:Lcom/letv/leui/widget/LeBottomSheet;

    invoke-virtual {v0}, Lcom/letv/leui/widget/LeBottomSheet;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->adapter:Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;

    if-eqz v0, :cond_2

    .line 335
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->adapter:Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;

    invoke-virtual {v0}, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;->notifyDataSetChanged()V

    .line 322
    :cond_2
    return-void
.end method

.method public setCloseOnTouchOutside(Z)V
    .locals 2
    .param p1, "close"    # Z

    .prologue
    .line 1360
    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->mDialog:Lcom/letv/leui/widget/LeBottomSheet;

    invoke-virtual {v1}, Lcom/letv/leui/widget/LeBottomSheet;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 1361
    .local v0, "window":Landroid/view/Window;
    invoke-virtual {v0, p1}, Landroid/view/Window;->setCloseOnTouchOutside(Z)V

    .line 1359
    return-void
.end method

.method public setContentAtCenter(Z)V
    .locals 2
    .param p1, "contentAtCenter"    # Z

    .prologue
    .line 169
    iput-boolean p1, p0, Lcom/letv/leui/widget/LeBottomSheet;->contentAtCenter:Z

    .line 170
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->mDialog:Lcom/letv/leui/widget/LeBottomSheet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->content:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->content:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->content:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 168
    :cond_0
    return-void
.end method

.method public setCustomView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1261
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->layoutForDiy:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 1262
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->layoutForDiy:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1260
    :cond_0
    return-void
.end method

.method public setData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 459
    .local p1, "mData":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    iput-object p1, p0, Lcom/letv/leui/widget/LeBottomSheet;->mData:Ljava/util/List;

    .line 458
    return-void
.end method

.method public setItemColor(II)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "color"    # I

    .prologue
    .line 1385
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->itemColorMap:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 1386
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->itemColorMap:Ljava/util/Map;

    .line 1388
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->animateToTextViewColor:Z

    .line 1389
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->itemColorMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1384
    return-void
.end method

.method public setItemLimit(Z)V
    .locals 0
    .param p1, "itemLimit"    # Z

    .prologue
    .line 148
    iput-boolean p1, p0, Lcom/letv/leui/widget/LeBottomSheet;->itemLimit:Z

    .line 147
    return-void
.end method

.method public setItemText(ILjava/lang/String;)V
    .locals 7
    .param p1, "position"    # I
    .param p2, "str"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 1736
    if-eqz p2, :cond_0

    if-gez p1, :cond_1

    .line 1737
    :cond_0
    return-void

    .line 1736
    :cond_1
    iget-object v4, p0, Lcom/letv/leui/widget/LeBottomSheet;->adapter:Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;

    invoke-static {v4}, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;->-get0(Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-gt p1, v4, :cond_0

    .line 1740
    iget-object v4, p0, Lcom/letv/leui/widget/LeBottomSheet;->adapter:Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;

    invoke-static {v4}, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;->-get0(Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    iget-object v5, p0, Lcom/letv/leui/widget/LeBottomSheet;->adapter:Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;

    invoke-static {v5}, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;->-get2(Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v6

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1741
    .local v1, "adapterStr":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1742
    .local v2, "index":I
    iget-object v4, p0, Lcom/letv/leui/widget/LeBottomSheet;->adapter:Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;

    invoke-static {v4}, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;->-get1(Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1743
    const/4 v2, 0x1

    .line 1746
    :cond_2
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1747
    iget-object v4, p0, Lcom/letv/leui/widget/LeBottomSheet;->adapter:Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;

    invoke-static {v4}, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;->-get0(Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    iget-object v5, p0, Lcom/letv/leui/widget/LeBottomSheet;->adapter:Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;

    invoke-static {v5}, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;->-get2(Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v2

    invoke-interface {v4, v5, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1749
    :cond_3
    iget-object v4, p0, Lcom/letv/leui/widget/LeBottomSheet;->listView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v4

    if-gt v4, p1, :cond_4

    iget-object v4, p0, Lcom/letv/leui/widget/LeBottomSheet;->listView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v4

    if-gt p1, v4, :cond_4

    .line 1750
    iget-object v4, p0, Lcom/letv/leui/widget/LeBottomSheet;->listView:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/letv/leui/widget/LeBottomSheet;->listView:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v5

    sub-int v5, p1, v5

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1751
    .local v0, "ChildView":Landroid/view/View;
    if-eqz v0, :cond_4

    .line 1752
    const v4, 0x10203fb

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 1753
    .local v3, "tv":Landroid/widget/TextView;
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1756
    .end local v0    # "ChildView":Landroid/view/View;
    .end local v3    # "tv":Landroid/widget/TextView;
    :cond_4
    iget-object v4, p0, Lcom/letv/leui/widget/LeBottomSheet;->mDialog:Lcom/letv/leui/widget/LeBottomSheet;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/letv/leui/widget/LeBottomSheet;->mDialog:Lcom/letv/leui/widget/LeBottomSheet;

    invoke-virtual {v4}, Lcom/letv/leui/widget/LeBottomSheet;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/letv/leui/widget/LeBottomSheet;->adapter:Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;

    if-eqz v4, :cond_5

    .line 1757
    iget-object v4, p0, Lcom/letv/leui/widget/LeBottomSheet;->adapter:Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;

    invoke-virtual {v4}, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;->notifyDataSetChanged()V

    .line 1735
    :cond_5
    return-void
.end method

.method public setLinkMovementEnabled(Z)V
    .locals 0
    .param p1, "linkMovementEnabled"    # Z

    .prologue
    .line 221
    iput-boolean p1, p0, Lcom/letv/leui/widget/LeBottomSheet;->mLinkMovementEnabled:Z

    .line 220
    return-void
.end method

.method public setListCustomView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1256
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->mListCustomView:Z

    .line 1257
    iput-object p1, p0, Lcom/letv/leui/widget/LeBottomSheet;->mView:Landroid/view/View;

    .line 1255
    return-void
.end method

.method public setMaxHeightInPixel(I)V
    .locals 0
    .param p1, "maxHeightInPixel"    # I

    .prologue
    .line 246
    iput p1, p0, Lcom/letv/leui/widget/LeBottomSheet;->maxHeightInPixel:I

    .line 245
    return-void
.end method

.method public setMaxItemNum(I)V
    .locals 0
    .param p1, "maxItemNum"    # I

    .prologue
    .line 317
    iput p1, p0, Lcom/letv/leui/widget/LeBottomSheet;->MaxItemNum:I

    .line 316
    return-void
.end method

.method public setOnItemClickChangeItemColor(Z)V
    .locals 0
    .param p1, "isChange"    # Z

    .prologue
    .line 700
    iput-boolean p1, p0, Lcom/letv/leui/widget/LeBottomSheet;->isChangeItemColor:Z

    .line 701
    iput-boolean p1, p0, Lcom/letv/leui/widget/LeBottomSheet;->animateToTextViewColor:Z

    .line 699
    return-void
.end method

.method public setShowMode(I)V
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 91
    const/4 v0, 0x7

    if-eq p1, v0, :cond_0

    .line 92
    const/16 v0, 0x8

    iput v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->showMode:I

    .line 90
    :goto_0
    return-void

    .line 94
    :cond_0
    iput p1, p0, Lcom/letv/leui/widget/LeBottomSheet;->showMode:I

    goto :goto_0
.end method

.method public setSinglebox(Z)V
    .locals 0
    .param p1, "isSinglebox"    # Z

    .prologue
    .line 143
    iput-boolean p1, p0, Lcom/letv/leui/widget/LeBottomSheet;->isSinglebox:Z

    .line 144
    iput-boolean p1, p0, Lcom/letv/leui/widget/LeBottomSheet;->animateToTextViewColor:Z

    .line 142
    return-void
.end method

.method public setStyle(I)V
    .locals 1
    .param p1, "layoutResource"    # I

    .prologue
    .line 1240
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->menuContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1241
    invoke-direct {p0, p1}, Lcom/letv/leui/widget/LeBottomSheet;->inflateCustomLayout(I)V

    .line 1242
    invoke-direct {p0}, Lcom/letv/leui/widget/LeBottomSheet;->setContentView()V

    .line 1239
    return-void
.end method

.method public setStyle(ILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/widget/CompoundButton$OnCheckedChangeListener;[Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 11
    .param p1, "style"    # I
    .param p2, "listener_cfm"    # Landroid/view/View$OnClickListener;
    .param p3, "listener_cle"    # Landroid/view/View$OnClickListener;
    .param p4, "checkbox_listener"    # Landroid/widget/CompoundButton$OnCheckedChangeListener;
    .param p5, "btn_text"    # [Ljava/lang/String;
    .param p6, "titleText"    # Ljava/lang/CharSequence;
    .param p7, "contentText"    # Ljava/lang/CharSequence;
    .param p8, "checkboxText"    # Ljava/lang/String;

    .prologue
    .line 1044
    const v9, -0x14c1d2

    const/4 v10, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    .line 1043
    invoke-virtual/range {v0 .. v10}, Lcom/letv/leui/widget/LeBottomSheet;->setStyle(ILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/widget/CompoundButton$OnCheckedChangeListener;[Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;IZ)V

    .line 1041
    return-void
.end method

.method public setStyle(ILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/widget/CompoundButton$OnCheckedChangeListener;[Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;IZ)V
    .locals 11
    .param p1, "style"    # I
    .param p2, "listener_cfm"    # Landroid/view/View$OnClickListener;
    .param p3, "listener_cle"    # Landroid/view/View$OnClickListener;
    .param p4, "checkbox_listener"    # Landroid/widget/CompoundButton$OnCheckedChangeListener;
    .param p5, "btn_text"    # [Ljava/lang/String;
    .param p6, "titleText"    # Ljava/lang/CharSequence;
    .param p7, "contentText"    # Ljava/lang/CharSequence;
    .param p8, "checkboxText"    # Ljava/lang/String;
    .param p9, "btnCfmColor"    # I
    .param p10, "useDiyLayout"    # Z

    .prologue
    .line 1152
    const/4 v0, 0x2

    new-array v9, v0, [I

    const/4 v0, 0x0

    aput p9, v9, v0

    const/high16 v0, -0x1000000

    const/4 v1, 0x1

    aput v0, v9, v1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v10, p10

    .line 1151
    invoke-virtual/range {v0 .. v10}, Lcom/letv/leui/widget/LeBottomSheet;->setStyle(ILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/widget/CompoundButton$OnCheckedChangeListener;[Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;[IZ)V

    .line 1149
    return-void
.end method

.method public setStyle(ILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/widget/CompoundButton$OnCheckedChangeListener;[Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;[IZ)V
    .locals 2
    .param p1, "style"    # I
    .param p2, "listener_cfm"    # Landroid/view/View$OnClickListener;
    .param p3, "listener_cle"    # Landroid/view/View$OnClickListener;
    .param p4, "checkbox_listener"    # Landroid/widget/CompoundButton$OnCheckedChangeListener;
    .param p5, "btn_text"    # [Ljava/lang/String;
    .param p6, "titleText"    # Ljava/lang/CharSequence;
    .param p7, "contentText"    # Ljava/lang/CharSequence;
    .param p8, "checkboxText"    # Ljava/lang/String;
    .param p9, "btnColors"    # [I
    .param p10, "useDiyLayout"    # Z

    .prologue
    .line 1057
    iput p1, p0, Lcom/letv/leui/widget/LeBottomSheet;->style:I

    .line 1058
    iget v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->style:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    .line 1059
    const/4 v0, 0x0

    aget v0, p9, v0

    invoke-direct {p0, p6, p5, v0, p2}, Lcom/letv/leui/widget/LeBottomSheet;->setProgress(Ljava/lang/CharSequence;[Ljava/lang/String;ILandroid/view/View$OnClickListener;)V

    .line 1060
    iget v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->showMode:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 1061
    invoke-direct {p0}, Lcom/letv/leui/widget/LeBottomSheet;->setNightMode()V

    .line 1063
    :cond_0
    return-void

    .line 1065
    :cond_1
    invoke-direct {p0}, Lcom/letv/leui/widget/LeBottomSheet;->getWidget()V

    .line 1067
    if-eqz p4, :cond_2

    if-nez p8, :cond_3

    :cond_2
    if-nez p6, :cond_3

    if-nez p7, :cond_3

    .line 1068
    if-eqz p10, :cond_f

    .line 1071
    :cond_3
    :goto_0
    if-nez p6, :cond_4

    if-nez p7, :cond_4

    if-eqz p10, :cond_4

    .line 1072
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->diyLine1:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1074
    :cond_4
    if-nez p10, :cond_5

    .line 1075
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->layoutForDiy:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1076
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->diyLine1:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1077
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->diyLine2:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1080
    :cond_5
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1081
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->title:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1089
    :cond_6
    :goto_1
    invoke-static {p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1090
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->content:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1098
    :cond_7
    :goto_2
    if-eqz p4, :cond_8

    if-nez p8, :cond_12

    .line 1099
    :cond_8
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->checkBox:Lcom/letv/leui/widget/LeCheckBox;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/LeCheckBox;->setVisibility(I)V

    .line 1100
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->checkbox_ctn:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1101
    if-eqz p10, :cond_9

    .line 1102
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->gapLine_1:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1122
    :cond_9
    :goto_3
    if-eqz p2, :cond_a

    .line 1123
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->btn_confirm:Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1125
    :cond_a
    if-eqz p3, :cond_b

    .line 1126
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->btn_cancel:Landroid/widget/Button;

    invoke-virtual {v0, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1128
    :cond_b
    if-eqz p5, :cond_c

    array-length v0, p5

    const/4 v1, 0x1

    if-lt v0, v1, :cond_c

    array-length v0, p9

    const/4 v1, 0x1

    if-lt v0, v1, :cond_c

    .line 1129
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->btn_confirm:Landroid/widget/Button;

    const/4 v1, 0x0

    aget-object v1, p5, v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1130
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->btn_confirm:Landroid/widget/Button;

    const/4 v1, 0x0

    aget v1, p9, v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 1132
    :cond_c
    array-length v0, p5

    const/4 v1, 0x1

    if-ne v0, v1, :cond_14

    .line 1133
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->btn_cancel:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 1134
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->gapLine_2:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1139
    :cond_d
    :goto_4
    iget v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->showMode:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_e

    .line 1140
    invoke-direct {p0}, Lcom/letv/leui/widget/LeBottomSheet;->setNightMode()V

    .line 1143
    :cond_e
    invoke-direct {p0}, Lcom/letv/leui/widget/LeBottomSheet;->setContentView()V

    .line 1055
    return-void

    .line 1069
    :cond_f
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->gapLine_1:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 1083
    :cond_10
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->title:Landroid/widget/TextView;

    invoke-virtual {v0, p6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1084
    iget-boolean v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->mLinkMovementEnabled:Z

    if-eqz v0, :cond_6

    .line 1085
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->title:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    goto/16 :goto_1

    .line 1092
    :cond_11
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->content:Landroid/widget/TextView;

    invoke-virtual {v0, p7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1093
    iget-boolean v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->mLinkMovementEnabled:Z

    if-eqz v0, :cond_7

    .line 1094
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->content:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    goto/16 :goto_2

    .line 1098
    :cond_12
    invoke-virtual {p8}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 1105
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->checkBox:Lcom/letv/leui/widget/LeCheckBox;

    invoke-virtual {v0, p8}, Lcom/letv/leui/widget/LeCheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 1106
    if-eqz p4, :cond_13

    .line 1107
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->checkBox:Lcom/letv/leui/widget/LeCheckBox;

    invoke-virtual {v0, p4}, Lcom/letv/leui/widget/LeCheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1110
    :cond_13
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->checkbox_ctn:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/letv/leui/widget/LeBottomSheet$12;

    invoke-direct {v1, p0}, Lcom/letv/leui/widget/LeBottomSheet$12;-><init>(Lcom/letv/leui/widget/LeBottomSheet;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_3

    .line 1135
    :cond_14
    array-length v0, p5

    const/4 v1, 0x2

    if-ne v0, v1, :cond_d

    array-length v0, p9

    const/4 v1, 0x2

    if-ne v0, v1, :cond_d

    .line 1136
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->btn_cancel:Landroid/widget/Button;

    const/4 v1, 0x1

    aget-object v1, p5, v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1137
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->btn_cancel:Landroid/widget/Button;

    const/4 v1, 0x1

    aget v1, p9, v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_4
.end method

.method public setStyle(ILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;[Ljava/lang/String;)V
    .locals 6
    .param p1, "style"    # I
    .param p2, "listener_cfm"    # Landroid/view/View$OnClickListener;
    .param p3, "listener_cle"    # Landroid/view/View$OnClickListener;
    .param p4, "btn_text"    # [Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 976
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/letv/leui/widget/LeBottomSheet;->setStyle(ILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;[Ljava/lang/String;Z)V

    .line 974
    return-void
.end method

.method public setStyle(ILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;[Ljava/lang/String;Z)V
    .locals 11
    .param p1, "style"    # I
    .param p2, "listener_cfm"    # Landroid/view/View$OnClickListener;
    .param p3, "listener_cle"    # Landroid/view/View$OnClickListener;
    .param p4, "btn_text"    # [Ljava/lang/String;
    .param p5, "WithSubTitle"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 983
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 984
    const-string/jumbo v6, "LeBottomSheet"

    const-string/jumbo v7, "LeBottomSheet"

    const/4 v1, 0x5

    const/4 v4, 0x0

    const/4 v8, 0x0

    .line 985
    const v9, -0x14c1d2

    const/4 v10, 0x1

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    .line 984
    invoke-virtual/range {v0 .. v10}, Lcom/letv/leui/widget/LeBottomSheet;->setStyle(ILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/widget/CompoundButton$OnCheckedChangeListener;[Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;IZ)V

    .line 990
    :goto_0
    return-void

    .line 987
    :cond_0
    const/4 v1, 0x5

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v8}, Lcom/letv/leui/widget/LeBottomSheet;->setStyle(ILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/widget/CompoundButton$OnCheckedChangeListener;[Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setStyle(Landroid/content/Context;Ljava/util/List;[Ljava/lang/String;Landroid/widget/AdapterView$OnItemClickListener;Landroid/view/View$OnClickListener;Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "keyName"    # [Ljava/lang/String;
    .param p4, "listener"    # Landroid/widget/AdapterView$OnItemClickListener;
    .param p5, "btn_listener"    # Landroid/view/View$OnClickListener;
    .param p6, "checkbox_listener"    # Landroid/widget/CompoundButton$OnCheckedChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;[",
            "Ljava/lang/String;",
            "Landroid/widget/AdapterView$OnItemClickListener;",
            "Landroid/view/View$OnClickListener;",
            "Landroid/widget/CompoundButton$OnCheckedChangeListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 561
    .local p2, "data":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/letv/leui/widget/LeBottomSheet;->setStyle(Landroid/content/Context;Ljava/util/List;[Ljava/lang/String;Landroid/widget/AdapterView$OnItemClickListener;Landroid/view/View$OnClickListener;Landroid/widget/CompoundButton$OnCheckedChangeListener;Z)V

    .line 559
    return-void
.end method

.method public setStyle(Landroid/content/Context;Ljava/util/List;[Ljava/lang/String;Landroid/widget/AdapterView$OnItemClickListener;Landroid/view/View$OnClickListener;Landroid/widget/CompoundButton$OnCheckedChangeListener;Z)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "keyName"    # [Ljava/lang/String;
    .param p4, "listener"    # Landroid/widget/AdapterView$OnItemClickListener;
    .param p5, "btn_listener"    # Landroid/view/View$OnClickListener;
    .param p6, "checkbox_listener"    # Landroid/widget/CompoundButton$OnCheckedChangeListener;
    .param p7, "noCheckbox"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;[",
            "Ljava/lang/String;",
            "Landroid/widget/AdapterView$OnItemClickListener;",
            "Landroid/view/View$OnClickListener;",
            "Landroid/widget/CompoundButton$OnCheckedChangeListener;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 469
    .local p2, "data":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    iput-object p2, p0, Lcom/letv/leui/widget/LeBottomSheet;->mData:Ljava/util/List;

    .line 470
    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->mData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->itemNum:I

    .line 471
    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->menuContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 472
    const v1, 0x1090094

    invoke-direct {p0, v1}, Lcom/letv/leui/widget/LeBottomSheet;->inflateCustomLayout(I)V

    .line 473
    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->mMenuView:Landroid/view/View;

    const v2, 0x10203f9

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->btn_cancel:Landroid/widget/Button;

    .line 474
    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->mMenuView:Landroid/view/View;

    const v2, 0x10203f6

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    iput-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->gridView:Landroid/widget/GridView;

    .line 475
    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->mMenuView:Landroid/view/View;

    const v2, 0x10203f5

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->title:Landroid/widget/TextView;

    .line 476
    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->mMenuView:Landroid/view/View;

    const v2, 0x10203f8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/letv/leui/widget/LeCheckBox;

    iput-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->checkBox:Lcom/letv/leui/widget/LeCheckBox;

    .line 477
    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->btn_cancel:Landroid/widget/Button;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setSelected(Z)V

    .line 478
    iget v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->itemNum:I

    const/4 v2, 0x3

    if-lt v1, v2, :cond_0

    .line 479
    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->gridView:Landroid/widget/GridView;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 481
    :cond_0
    iget v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->itemNum:I

    const/4 v2, 0x6

    if-gt v1, v2, :cond_1

    .line 482
    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->gridView:Landroid/widget/GridView;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setOverScrollMode(I)V

    .line 484
    :cond_1
    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->gridView:Landroid/widget/GridView;

    invoke-virtual {v1}, Landroid/widget/GridView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    .line 486
    .local v8, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->itemNum:I

    const/4 v2, 0x3

    if-gt v1, v2, :cond_8

    .line 496
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->gridView:Landroid/widget/GridView;

    invoke-virtual {v1, v8}, Landroid/widget/GridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 497
    iget v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->itemNum:I

    const/16 v2, 0x9

    if-gt v1, v2, :cond_a

    .line 498
    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->gridView:Landroid/widget/GridView;

    new-instance v2, Lcom/letv/leui/widget/LeBottomSheetImageAdapter;

    iget-object v3, p0, Lcom/letv/leui/widget/LeBottomSheet;->mData:Ljava/util/List;

    invoke-direct {v2, p1, v3, p3}, Lcom/letv/leui/widget/LeBottomSheetImageAdapter;-><init>(Landroid/content/Context;Ljava/util/List;[Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 526
    :goto_1
    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->gridView:Landroid/widget/GridView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setVerticalFadingEdgeEnabled(Z)V

    .line 527
    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->gridView:Landroid/widget/GridView;

    const/high16 v2, 0x42200000    # 40.0f

    invoke-static {v2}, Lcom/letv/leui/widget/LeBottomSheet;->dip2px(F)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setFadingEdgeLength(I)V

    .line 528
    if-eqz p4, :cond_3

    .line 529
    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->gridView:Landroid/widget/GridView;

    invoke-virtual {v1, p4}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 531
    :cond_3
    if-eqz p5, :cond_4

    .line 532
    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->btn_cancel:Landroid/widget/Button;

    invoke-virtual {v1, p5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 534
    :cond_4
    if-eqz p7, :cond_5

    .line 535
    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->checkBox:Lcom/letv/leui/widget/LeCheckBox;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/letv/leui/widget/LeCheckBox;->setVisibility(I)V

    .line 537
    :cond_5
    if-eqz p6, :cond_6

    .line 538
    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->checkBox:Lcom/letv/leui/widget/LeCheckBox;

    invoke-virtual {v1, p6}, Lcom/letv/leui/widget/LeCheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 539
    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->mMenuView:Landroid/view/View;

    const v2, 0x10203f7

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->checkbox_ctn:Landroid/widget/LinearLayout;

    .line 540
    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->checkbox_ctn:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/letv/leui/widget/LeBottomSheet$4;

    invoke-direct {v2, p0}, Lcom/letv/leui/widget/LeBottomSheet$4;-><init>(Lcom/letv/leui/widget/LeBottomSheet;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 551
    :cond_6
    iget v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->showMode:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_7

    .line 552
    invoke-direct {p0}, Lcom/letv/leui/widget/LeBottomSheet;->setNightMode()V

    .line 554
    :cond_7
    invoke-direct {p0}, Lcom/letv/leui/widget/LeBottomSheet;->setContentView()V

    .line 467
    return-void

    .line 490
    :cond_8
    iget v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->itemNum:I

    const/4 v2, 0x3

    if-le v1, v2, :cond_9

    iget v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->itemNum:I

    const/4 v2, 0x6

    if-gt v1, v2, :cond_9

    .line 491
    const/high16 v1, 0x432e0000    # 174.0f

    invoke-static {v1}, Lcom/letv/leui/widget/LeBottomSheet;->dip2px(F)I

    move-result v1

    iput v1, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    .line 492
    :cond_9
    iget v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->itemNum:I

    const/4 v2, 0x6

    if-le v1, v2, :cond_2

    .line 493
    const/high16 v1, 0x43700000    # 240.0f

    invoke-static {v1}, Lcom/letv/leui/widget/LeBottomSheet;->dip2px(F)I

    move-result v1

    iput v1, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto/16 :goto_0

    .line 500
    :cond_a
    new-instance v0, Landroid/widget/SimpleAdapter;

    iget-object v2, p0, Lcom/letv/leui/widget/LeBottomSheet;->mData:Ljava/util/List;

    .line 501
    const v1, 0x10203f3

    const v3, 0x10203f4

    filled-new-array {v1, v3}, [I

    move-result-object v5

    .line 500
    const v3, 0x1090093

    move-object v1, p1

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 503
    .local v0, "adapter":Landroid/widget/SimpleAdapter;
    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->gridView:Landroid/widget/GridView;

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 505
    new-instance v1, Lcom/letv/leui/widget/LeBottomSheet$3;

    invoke-direct {v1, p0}, Lcom/letv/leui/widget/LeBottomSheet$3;-><init>(Lcom/letv/leui/widget/LeBottomSheet;)V

    invoke-virtual {v0, v1}, Landroid/widget/SimpleAdapter;->setViewBinder(Landroid/widget/SimpleAdapter$ViewBinder;)V

    .line 519
    const v1, 0x10a0044

    invoke-static {p1, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v6

    .line 520
    .local v6, "animation":Landroid/view/animation/Animation;
    new-instance v7, Landroid/view/animation/LayoutAnimationController;

    invoke-direct {v7, v6}, Landroid/view/animation/LayoutAnimationController;-><init>(Landroid/view/animation/Animation;)V

    .line 521
    .local v7, "lac":Landroid/view/animation/LayoutAnimationController;
    const/4 v1, 0x0

    invoke-virtual {v7, v1}, Landroid/view/animation/LayoutAnimationController;->setOrder(I)V

    .line 522
    const v1, 0x3d4ccccd    # 0.05f

    invoke-virtual {v7, v1}, Landroid/view/animation/LayoutAnimationController;->setDelay(F)V

    .line 523
    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->gridView:Landroid/widget/GridView;

    invoke-virtual {v1, v7}, Landroid/widget/GridView;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    goto/16 :goto_1
.end method

.method public setStyle(Landroid/content/Context;Ljava/util/List;[Ljava/lang/String;Landroid/widget/AdapterView$OnItemClickListener;ZI)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "keyName"    # [Ljava/lang/String;
    .param p4, "listener"    # Landroid/widget/AdapterView$OnItemClickListener;
    .param p5, "hasLogo"    # Z
    .param p6, "style"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;[",
            "Ljava/lang/String;",
            "Landroid/widget/AdapterView$OnItemClickListener;",
            "ZI)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 966
    .local p2, "data":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/letv/leui/widget/LeBottomSheet;->setStyle(Landroid/content/Context;Ljava/util/List;[Ljava/lang/String;Landroid/widget/AdapterView$OnItemClickListener;ZIZ)V

    .line 964
    return-void
.end method

.method public setStyle(Landroid/content/Context;Ljava/util/List;[Ljava/lang/String;Landroid/widget/AdapterView$OnItemClickListener;ZIZ)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "keyName"    # [Ljava/lang/String;
    .param p4, "listener"    # Landroid/widget/AdapterView$OnItemClickListener;
    .param p5, "hasLogo"    # Z
    .param p6, "style"    # I
    .param p7, "WithTailImg"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;[",
            "Ljava/lang/String;",
            "Landroid/widget/AdapterView$OnItemClickListener;",
            "ZIZ)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 956
    .local p2, "data":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    invoke-virtual/range {v0 .. v8}, Lcom/letv/leui/widget/LeBottomSheet;->setStyle(Landroid/content/Context;Ljava/util/List;[Ljava/lang/String;Landroid/widget/AdapterView$OnItemClickListener;ZIZZ)V

    .line 954
    return-void
.end method

.method public setStyle(Landroid/content/Context;Ljava/util/List;[Ljava/lang/String;Landroid/widget/AdapterView$OnItemClickListener;ZIZZ)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "keyName"    # [Ljava/lang/String;
    .param p4, "listener"    # Landroid/widget/AdapterView$OnItemClickListener;
    .param p5, "hasLogo"    # Z
    .param p6, "style"    # I
    .param p7, "WithTailImg"    # Z
    .param p8, "WithTitleTail"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;[",
            "Ljava/lang/String;",
            "Landroid/widget/AdapterView$OnItemClickListener;",
            "ZIZZ)V"
        }
    .end annotation

    .prologue
    .line 946
    .local p2, "data":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v9}, Lcom/letv/leui/widget/LeBottomSheet;->setStyle(Landroid/content/Context;Ljava/util/List;[Ljava/lang/String;Landroid/widget/AdapterView$OnItemClickListener;ZIZZLandroid/view/View$OnClickListener;)V

    .line 944
    return-void
.end method

.method public setStyle(Landroid/content/Context;Ljava/util/List;[Ljava/lang/String;Landroid/widget/AdapterView$OnItemClickListener;ZIZZLandroid/view/View$OnClickListener;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "keyName"    # [Ljava/lang/String;
    .param p4, "listener"    # Landroid/widget/AdapterView$OnItemClickListener;
    .param p5, "hasLogo"    # Z
    .param p6, "style"    # I
    .param p7, "WithTailImg"    # Z
    .param p8, "WithTeTail"    # Z
    .param p9, "btnListener"    # Landroid/view/View$OnClickListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;[",
            "Ljava/lang/String;",
            "Landroid/widget/AdapterView$OnItemClickListener;",
            "ZIZZ",
            "Landroid/view/View$OnClickListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 719
    .local p2, "data":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    iput-object p2, p0, Lcom/letv/leui/widget/LeBottomSheet;->mData:Ljava/util/List;

    .line 720
    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->mData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->itemNum:I

    .line 721
    iget v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->itemNum:I

    new-array v1, v1, [Z

    iput-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->isSelected:[Z

    .line 722
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    iget v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->itemNum:I

    if-ge v8, v1, :cond_0

    .line 723
    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->isSelected:[Z

    const/4 v2, 0x0

    aput-boolean v2, v1, v8

    .line 722
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 725
    :cond_0
    move/from16 v0, p6

    iput v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->style:I

    .line 726
    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->menuContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 728
    packed-switch p6, :pswitch_data_0

    .line 753
    :pswitch_0
    const v1, 0x1090097

    invoke-direct {p0, v1}, Lcom/letv/leui/widget/LeBottomSheet;->inflateCustomLayout(I)V

    .line 754
    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->mMenuView:Landroid/view/View;

    const v2, 0x1020408

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->gapLine_1:Landroid/widget/ImageView;

    .line 755
    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->mMenuView:Landroid/view/View;

    const v2, 0x102040a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->gapLine_2:Landroid/widget/ImageView;

    .line 756
    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->mMenuView:Landroid/view/View;

    const v2, 0x1020406

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->diyLine1:Landroid/widget/ImageView;

    .line 757
    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->mMenuView:Landroid/view/View;

    const v2, 0x10203e7

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->diyLine2:Landroid/widget/ImageView;

    .line 758
    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->mMenuView:Landroid/view/View;

    const v2, 0x10203e6

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->layoutForDiy:Landroid/widget/LinearLayout;

    .line 759
    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->mMenuView:Landroid/view/View;

    const v2, 0x1020409

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->btn_cancel:Landroid/widget/Button;

    .line 760
    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->mMenuView:Landroid/view/View;

    const v2, 0x102040b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->btn_confirm:Landroid/widget/Button;

    .line 761
    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->mMenuView:Landroid/view/View;

    const v2, 0x1020407

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->listView:Landroid/widget/ListView;

    .line 762
    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->mData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lcom/letv/leui/widget/LeBottomSheet;->MaxItemNum:I

    if-le v1, v2, :cond_6

    .line 763
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->moreItem:Z

    .line 770
    :goto_1
    iget-boolean v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->isShowDivideLine:Z

    if-eqz v1, :cond_1

    .line 771
    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->gapLine_2:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 773
    :cond_1
    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->btn_confirm:Landroid/widget/Button;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 774
    new-instance v1, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;

    iget-object v4, p0, Lcom/letv/leui/widget/LeBottomSheet;->mData:Ljava/util/List;

    move-object v2, p0

    move-object v3, p1

    move-object v5, p3

    move v6, p5

    move/from16 v7, p7

    invoke-direct/range {v1 .. v7}, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;-><init>(Lcom/letv/leui/widget/LeBottomSheet;Landroid/content/Context;Ljava/util/List;[Ljava/lang/String;ZZ)V

    iput-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->adapter:Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;

    .line 775
    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->listView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/letv/leui/widget/LeBottomSheet;->adapter:Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 776
    if-eqz p4, :cond_2

    .line 777
    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->listView:Landroid/widget/ListView;

    new-instance v2, Lcom/letv/leui/widget/LeBottomSheet$7;

    invoke-direct {v2, p0, p4}, Lcom/letv/leui/widget/LeBottomSheet$7;-><init>(Lcom/letv/leui/widget/LeBottomSheet;Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 787
    :cond_2
    if-eqz p9, :cond_7

    .line 788
    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->btn_cancel:Landroid/widget/Button;

    move-object/from16 v0, p9

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 789
    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->btn_cancel:Landroid/widget/Button;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setSelected(Z)V

    .line 796
    :goto_2
    iget v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->showMode:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_8

    .line 797
    invoke-direct {p0}, Lcom/letv/leui/widget/LeBottomSheet;->setNightMode()V

    .line 801
    :goto_3
    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->listView:Landroid/widget/ListView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 804
    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->mLeBotOnClickListener:Lcom/letv/leui/widget/LeBottomSheet$LeBotOnClickListener;

    if-eqz v1, :cond_3

    .line 805
    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->gapLine_1:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 806
    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->gapLine_2:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 807
    invoke-direct {p0}, Lcom/letv/leui/widget/LeBottomSheet;->setBottomButton()V

    .line 808
    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->listView:Landroid/widget/ListView;

    new-instance v2, Lcom/letv/leui/widget/LeBottomSheet$8;

    invoke-direct {v2, p0}, Lcom/letv/leui/widget/LeBottomSheet$8;-><init>(Lcom/letv/leui/widget/LeBottomSheet;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 827
    :cond_3
    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->listView:Landroid/widget/ListView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setVerticalFadingEdgeEnabled(Z)V

    .line 828
    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->listView:Landroid/widget/ListView;

    const/high16 v2, 0x41600000    # 14.0f

    invoke-static {v2}, Lcom/letv/leui/widget/LeBottomSheet;->dip2px(F)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setFadingEdgeLength(I)V

    .line 830
    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->mMenuView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v9

    .line 832
    .local v9, "vto":Landroid/view/ViewTreeObserver;
    new-instance v1, Lcom/letv/leui/widget/LeBottomSheet$9;

    invoke-direct {v1, p0}, Lcom/letv/leui/widget/LeBottomSheet$9;-><init>(Lcom/letv/leui/widget/LeBottomSheet;)V

    invoke-virtual {v9, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 850
    iget-boolean v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->mListCustomView:Z

    if-eqz v1, :cond_4

    .line 851
    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->diyLine2:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 852
    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->layoutForDiy:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 853
    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->layoutForDiy:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/letv/leui/widget/LeBottomSheet;->mView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 856
    :cond_4
    invoke-direct {p0}, Lcom/letv/leui/widget/LeBottomSheet;->setContentView()V

    .line 717
    return-void

    .line 730
    .end local v9    # "vto":Landroid/view/ViewTreeObserver;
    :pswitch_1
    const v1, 0x1090098

    invoke-direct {p0, v1}, Lcom/letv/leui/widget/LeBottomSheet;->inflateCustomLayout(I)V

    .line 731
    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->mMenuView:Landroid/view/View;

    const v2, 0x1020411

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->gapLine_1:Landroid/widget/ImageView;

    .line 732
    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->mMenuView:Landroid/view/View;

    const v2, 0x1020413

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->gapLine_2:Landroid/widget/ImageView;

    .line 733
    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->mMenuView:Landroid/view/View;

    const v2, 0x102040f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->diyLine1:Landroid/widget/ImageView;

    .line 734
    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->mMenuView:Landroid/view/View;

    const v2, 0x10203e7

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->diyLine2:Landroid/widget/ImageView;

    .line 735
    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->mMenuView:Landroid/view/View;

    const v2, 0x10203e6

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->layoutForDiy:Landroid/widget/LinearLayout;

    .line 736
    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->mMenuView:Landroid/view/View;

    const v2, 0x1020412

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->btn_cancel:Landroid/widget/Button;

    .line 737
    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->mMenuView:Landroid/view/View;

    const v2, 0x102040b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->btn_confirm:Landroid/widget/Button;

    .line 738
    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->mMenuView:Landroid/view/View;

    const v2, 0x102040c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->title:Landroid/widget/TextView;

    .line 739
    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->mMenuView:Landroid/view/View;

    const v2, 0x1020410

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->listView:Landroid/widget/ListView;

    .line 740
    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->mMenuView:Landroid/view/View;

    const v2, 0x102040d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->listviewTitle_tailText:Landroid/widget/TextView;

    .line 741
    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->mMenuView:Landroid/view/View;

    const v2, 0x102040e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->listviewTitle_tailImg:Landroid/widget/ImageView;

    .line 742
    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->mData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lcom/letv/leui/widget/LeBottomSheet;->MaxItemNum:I

    if-le v1, v2, :cond_5

    .line 743
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->moreItem:Z

    .line 747
    :goto_4
    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->listviewTitle_tailText:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 748
    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->listviewTitle_tailImg:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1

    .line 745
    :cond_5
    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->listView:Landroid/widget/ListView;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOverScrollMode(I)V

    goto :goto_4

    .line 765
    :cond_6
    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->listView:Landroid/widget/ListView;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOverScrollMode(I)V

    goto/16 :goto_1

    .line 791
    :cond_7
    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->gapLine_1:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 792
    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->btn_cancel:Landroid/widget/Button;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_2

    .line 799
    :cond_8
    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->listView:Landroid/widget/ListView;

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const v3, -0x393835

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_3

    .line 728
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setStyle(Landroid/content/Context;Ljava/util/List;[Ljava/lang/String;Landroid/widget/AdapterView$OnItemClickListener;ZLjava/lang/CharSequence;Ljava/lang/String;ZLandroid/view/View$OnClickListener;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "keyName"    # [Ljava/lang/String;
    .param p4, "listener"    # Landroid/widget/AdapterView$OnItemClickListener;
    .param p5, "hasLogo"    # Z
    .param p6, "titleText"    # Ljava/lang/CharSequence;
    .param p7, "btnText"    # Ljava/lang/String;
    .param p8, "WithTailImg"    # Z
    .param p9, "btnListener"    # Landroid/view/View$OnClickListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;[",
            "Ljava/lang/String;",
            "Landroid/widget/AdapterView$OnItemClickListener;",
            "Z",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/String;",
            "Z",
            "Landroid/view/View$OnClickListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 571
    .local p2, "data":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-static/range {p6 .. p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 572
    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move/from16 v6, p5

    move/from16 v8, p8

    move-object/from16 v10, p9

    invoke-virtual/range {v1 .. v10}, Lcom/letv/leui/widget/LeBottomSheet;->setStyle(Landroid/content/Context;Ljava/util/List;[Ljava/lang/String;Landroid/widget/AdapterView$OnItemClickListener;ZIZZLandroid/view/View$OnClickListener;)V

    .line 576
    :goto_0
    invoke-static/range {p6 .. p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 577
    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->title:Landroid/widget/TextView;

    move-object/from16 v0, p6

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 578
    iget-boolean v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->mLinkMovementEnabled:Z

    if-eqz v1, :cond_0

    .line 579
    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->title:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 582
    :cond_0
    invoke-static/range {p7 .. p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 583
    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->btn_cancel:Landroid/widget/Button;

    move-object/from16 v0, p7

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 569
    :cond_1
    return-void

    .line 574
    :cond_2
    const/4 v7, 0x1

    const/4 v9, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move/from16 v6, p5

    move/from16 v8, p8

    move-object/from16 v10, p9

    invoke-virtual/range {v1 .. v10}, Lcom/letv/leui/widget/LeBottomSheet;->setStyle(Landroid/content/Context;Ljava/util/List;[Ljava/lang/String;Landroid/widget/AdapterView$OnItemClickListener;ZIZZLandroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public setStyle(Landroid/content/Context;Ljava/util/List;[Ljava/lang/String;ZIZZLcom/letv/leui/widget/LeBottomSheet$LeBotOnClickListener;[Ljava/lang/String;[I)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "keyName"    # [Ljava/lang/String;
    .param p4, "hasLogo"    # Z
    .param p5, "style"    # I
    .param p6, "WithTailImg"    # Z
    .param p7, "WithTitleTail"    # Z
    .param p8, "botOnClickListener"    # Lcom/letv/leui/widget/LeBottomSheet$LeBotOnClickListener;
    .param p9, "btnStr"    # [Ljava/lang/String;
    .param p10, "btnColor"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;[",
            "Ljava/lang/String;",
            "ZIZZ",
            "Lcom/letv/leui/widget/LeBottomSheet$LeBotOnClickListener;",
            "[",
            "Ljava/lang/String;",
            "[I)V"
        }
    .end annotation

    .prologue
    .line 916
    .local p2, "data":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->isSinglebox:Z

    .line 917
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->animateToTextViewColor:Z

    .line 918
    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->checkedIndexList:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 919
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->checkedIndexList:Ljava/util/ArrayList;

    .line 921
    :cond_0
    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->mLeBotOnClickListener:Lcom/letv/leui/widget/LeBottomSheet$LeBotOnClickListener;

    .line 922
    move-object/from16 v0, p9

    iput-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->btnStr:[Ljava/lang/String;

    .line 923
    move-object/from16 v0, p10

    iput-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->btnColor:[I

    .line 924
    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v6, p4

    move v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-virtual/range {v1 .. v9}, Lcom/letv/leui/widget/LeBottomSheet;->setStyle(Landroid/content/Context;Ljava/util/List;[Ljava/lang/String;Landroid/widget/AdapterView$OnItemClickListener;ZIZZ)V

    .line 915
    return-void
.end method

.method public setStyle(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/widget/CompoundButton$OnCheckedChangeListener;[Ljava/lang/String;ILjava/lang/CharSequence;)V
    .locals 3
    .param p1, "listener_1"    # Landroid/view/View$OnClickListener;
    .param p2, "listener_2"    # Landroid/view/View$OnClickListener;
    .param p3, "checkbox_listener"    # Landroid/widget/CompoundButton$OnCheckedChangeListener;
    .param p4, "btn_text"    # [Ljava/lang/String;
    .param p5, "imgResource"    # I
    .param p6, "permissionText"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v2, 0x1

    .line 412
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->menuContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 413
    const v0, 0x109008f

    invoke-direct {p0, v0}, Lcom/letv/leui/widget/LeBottomSheet;->inflateCustomLayout(I)V

    .line 414
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->mMenuView:Landroid/view/View;

    const v1, 0x10203e0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->btn_confirm:Landroid/widget/Button;

    .line 415
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->mMenuView:Landroid/view/View;

    const v1, 0x10203e2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->btn_cancel:Landroid/widget/Button;

    .line 416
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->mMenuView:Landroid/view/View;

    const v1, 0x10203dc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->content:Landroid/widget/TextView;

    .line 417
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->content:Landroid/widget/TextView;

    invoke-virtual {v0, p6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 418
    iget-boolean v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->mLinkMovementEnabled:Z

    if-eqz v0, :cond_0

    .line 419
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->content:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 421
    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->mMenuView:Landroid/view/View;

    const v1, 0x10203db

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->iconView:Landroid/widget/ImageView;

    .line 422
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 423
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->btn_confirm:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setSelected(Z)V

    .line 424
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->mMenuView:Landroid/view/View;

    const v1, 0x10203de

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/letv/leui/widget/LeCheckBox;

    iput-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->checkBox:Lcom/letv/leui/widget/LeCheckBox;

    .line 425
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->checkBox:Lcom/letv/leui/widget/LeCheckBox;

    invoke-virtual {v0, p3}, Lcom/letv/leui/widget/LeCheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 426
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->mMenuView:Landroid/view/View;

    const v1, 0x10203dd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->checkbox_ctn:Landroid/widget/LinearLayout;

    .line 427
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->checkbox_ctn:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/letv/leui/widget/LeBottomSheet$2;

    invoke-direct {v1, p0}, Lcom/letv/leui/widget/LeBottomSheet$2;-><init>(Lcom/letv/leui/widget/LeBottomSheet;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 438
    if-eqz p1, :cond_1

    .line 439
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->btn_confirm:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 442
    :cond_1
    if-eqz p2, :cond_2

    .line 443
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->btn_cancel:Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 445
    :cond_2
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->btn_confirm:Landroid/widget/Button;

    const/4 v1, 0x0

    aget-object v1, p4, v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 446
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->btn_cancel:Landroid/widget/Button;

    aget-object v1, p4, v2

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 447
    invoke-direct {p0}, Lcom/letv/leui/widget/LeBottomSheet;->setContentView()V

    .line 410
    return-void
.end method

.method public setStyle(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/widget/CompoundButton$OnCheckedChangeListener;[Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V
    .locals 8
    .param p1, "listener_1"    # Landroid/view/View$OnClickListener;
    .param p2, "listener_2"    # Landroid/view/View$OnClickListener;
    .param p3, "checkbox_listener"    # Landroid/widget/CompoundButton$OnCheckedChangeListener;
    .param p4, "btn_text"    # [Ljava/lang/String;
    .param p5, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p6, "permissionText"    # Ljava/lang/CharSequence;

    .prologue
    .line 402
    const v7, -0xdc6a12

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/letv/leui/widget/LeBottomSheet;->setStyle(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/widget/CompoundButton$OnCheckedChangeListener;[Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;I)V

    .line 400
    return-void
.end method

.method public setStyle(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/widget/CompoundButton$OnCheckedChangeListener;[Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;I)V
    .locals 2
    .param p1, "listener_1"    # Landroid/view/View$OnClickListener;
    .param p2, "listener_2"    # Landroid/view/View$OnClickListener;
    .param p3, "checkbox_listener"    # Landroid/widget/CompoundButton$OnCheckedChangeListener;
    .param p4, "btn_text"    # [Ljava/lang/String;
    .param p5, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p6, "permissionText"    # Ljava/lang/CharSequence;
    .param p7, "btnCfmColor"    # I

    .prologue
    .line 349
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->menuContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 350
    const v0, 0x109008f

    invoke-direct {p0, v0}, Lcom/letv/leui/widget/LeBottomSheet;->inflateCustomLayout(I)V

    .line 351
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->mMenuView:Landroid/view/View;

    const v1, 0x10203e0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->btn_confirm:Landroid/widget/Button;

    .line 352
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->mMenuView:Landroid/view/View;

    const v1, 0x10203e2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->btn_cancel:Landroid/widget/Button;

    .line 353
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->mMenuView:Landroid/view/View;

    const v1, 0x10203dc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->content:Landroid/widget/TextView;

    .line 354
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->mMenuView:Landroid/view/View;

    const v1, 0x10203df

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->gapLine_1:Landroid/widget/ImageView;

    .line 355
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->mMenuView:Landroid/view/View;

    const v1, 0x10203e1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->gapLine_2:Landroid/widget/ImageView;

    .line 356
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->content:Landroid/widget/TextView;

    invoke-virtual {v0, p6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 358
    iget-boolean v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->mLinkMovementEnabled:Z

    if-eqz v0, :cond_0

    .line 359
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->content:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 361
    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->mMenuView:Landroid/view/View;

    const v1, 0x10203db

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->iconView:Landroid/widget/ImageView;

    .line 362
    if-nez p5, :cond_4

    .line 363
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->iconView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 368
    :goto_0
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->content:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 370
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->mMenuView:Landroid/view/View;

    const v1, 0x10203de

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/letv/leui/widget/LeCheckBox;

    iput-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->checkBox:Lcom/letv/leui/widget/LeCheckBox;

    .line 371
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->checkBox:Lcom/letv/leui/widget/LeCheckBox;

    invoke-virtual {v0, p3}, Lcom/letv/leui/widget/LeCheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 372
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->mMenuView:Landroid/view/View;

    const v1, 0x10203dd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->checkbox_ctn:Landroid/widget/LinearLayout;

    .line 373
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->checkbox_ctn:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/letv/leui/widget/LeBottomSheet$1;

    invoke-direct {v1, p0}, Lcom/letv/leui/widget/LeBottomSheet$1;-><init>(Lcom/letv/leui/widget/LeBottomSheet;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 383
    if-eqz p1, :cond_1

    .line 384
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->btn_confirm:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 386
    :cond_1
    if-eqz p2, :cond_2

    .line 387
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->btn_cancel:Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 389
    :cond_2
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->btn_confirm:Landroid/widget/Button;

    const/4 v1, 0x0

    aget-object v1, p4, v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 390
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->btn_confirm:Landroid/widget/Button;

    invoke-virtual {v0, p7}, Landroid/widget/Button;->setTextColor(I)V

    .line 391
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->btn_cancel:Landroid/widget/Button;

    const/4 v1, 0x1

    aget-object v1, p4, v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 392
    iget v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->showMode:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_3

    .line 393
    invoke-direct {p0}, Lcom/letv/leui/widget/LeBottomSheet;->setNightMode()V

    .line 395
    :cond_3
    invoke-direct {p0}, Lcom/letv/leui/widget/LeBottomSheet;->setContentView()V

    .line 347
    return-void

    .line 366
    :cond_4
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setStyle(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1246
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->menuContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1247
    const v0, 0x109008e

    invoke-direct {p0, v0}, Lcom/letv/leui/widget/LeBottomSheet;->inflateCustomLayout(I)V

    .line 1248
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->mMenuView:Landroid/view/View;

    const v1, 0x10203da

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->layoutForDiy:Landroid/widget/LinearLayout;

    .line 1249
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->layoutForDiy:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1250
    invoke-direct {p0}, Lcom/letv/leui/widget/LeBottomSheet;->setContentView()V

    .line 1245
    return-void
.end method

.method public setStyleForTopSlideinListView(Landroid/content/Context;Ljava/util/List;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/widget/AdapterView$OnItemClickListener;III)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "keyName"    # [Ljava/lang/String;
    .param p4, "actionString"    # [Ljava/lang/String;
    .param p5, "btnString"    # Ljava/lang/String;
    .param p6, "btnListener"    # Landroid/view/View$OnClickListener;
    .param p7, "exitListner"    # Landroid/view/View$OnClickListener;
    .param p8, "itemListener"    # Landroid/widget/AdapterView$OnItemClickListener;
    .param p9, "actionBarColor"    # I
    .param p10, "btnTextColor"    # I
    .param p11, "actionBarTextColor"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/view/View$OnClickListener;",
            "Landroid/view/View$OnClickListener;",
            "Landroid/widget/AdapterView$OnItemClickListener;",
            "III)V"
        }
    .end annotation

    .prologue
    .line 594
    .local p2, "data":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->itemNum:I

    .line 595
    iget v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->itemNum:I

    const/4 v2, 0x6

    if-lt v1, v2, :cond_0

    .line 596
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->moreItem:Z

    .line 600
    :goto_0
    array-length v1, p3

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    .line 601
    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->checkList:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 602
    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->checkList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 606
    :goto_1
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v8, v1, :cond_2

    .line 607
    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->checkList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 606
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 598
    .end local v8    # "i":I
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->moreItem:Z

    goto :goto_0

    .line 604
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->checkList:Ljava/util/List;

    goto :goto_1

    .line 610
    :cond_2
    const v1, 0x1090099

    invoke-direct {p0, v1}, Lcom/letv/leui/widget/LeBottomSheet;->inflateCustomLayout(I)V

    .line 611
    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->mMenuView:Landroid/view/View;

    const v2, 0x102040c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->title:Landroid/widget/TextView;

    .line 612
    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->mMenuView:Landroid/view/View;

    const v2, 0x1020410

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->listView:Landroid/widget/ListView;

    .line 613
    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->mMenuView:Landroid/view/View;

    const v2, 0x1020412

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->btn_cancel:Landroid/widget/Button;

    .line 614
    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->mMenuView:Landroid/view/View;

    const v2, 0x102040d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->listviewTitle_tailText:Landroid/widget/TextView;

    .line 615
    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->mMenuView:Landroid/view/View;

    const v2, 0x1020411

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->gapLine_1:Landroid/widget/ImageView;

    .line 616
    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->title:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    .line 618
    .local v7, "actionBar":Landroid/widget/LinearLayout;
    move/from16 v0, p9

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 619
    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->listviewTitle_tailText:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setClickable(Z)V

    .line 620
    if-eqz p7, :cond_3

    .line 621
    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->listviewTitle_tailText:Landroid/widget/TextView;

    move-object/from16 v0, p7

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 623
    :cond_3
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    if-nez p6, :cond_a

    .line 624
    :cond_4
    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->btn_cancel:Landroid/widget/Button;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 625
    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->gapLine_1:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const/high16 v2, 0x41600000    # 14.0f

    invoke-static {v2}, Lcom/letv/leui/widget/LeBottomSheet;->dip2px(F)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v4, v5, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 634
    :cond_5
    :goto_3
    if-eqz p4, :cond_6

    .line 635
    array-length v1, p4

    const/4 v2, 0x1

    if-ne v1, v2, :cond_b

    .line 636
    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->title:Landroid/widget/TextView;

    const/4 v2, 0x0

    aget-object v2, p4, v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 637
    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->title:Landroid/widget/TextView;

    move/from16 v0, p11

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 647
    :cond_6
    :goto_4
    iget-boolean v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->moreItem:Z

    if-nez v1, :cond_7

    .line 648
    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->listView:Landroid/widget/ListView;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOverScrollMode(I)V

    .line 650
    :cond_7
    new-instance v1, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move/from16 v6, p9

    invoke-direct/range {v1 .. v6}, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;-><init>(Lcom/letv/leui/widget/LeBottomSheet;Landroid/content/Context;Ljava/util/List;[Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->adapter:Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;

    .line 651
    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->listView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/letv/leui/widget/LeBottomSheet;->adapter:Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 653
    if-eqz p8, :cond_8

    .line 654
    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->listView:Landroid/widget/ListView;

    new-instance v2, Lcom/letv/leui/widget/LeBottomSheet$5;

    move-object/from16 v0, p8

    invoke-direct {v2, p0, p3, v0}, Lcom/letv/leui/widget/LeBottomSheet$5;-><init>(Lcom/letv/leui/widget/LeBottomSheet;[Ljava/lang/String;Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 670
    :cond_8
    iget-boolean v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->itemLimit:Z

    if-eqz v1, :cond_9

    .line 671
    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->mMenuView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v9

    .line 672
    .local v9, "vto":Landroid/view/ViewTreeObserver;
    new-instance v1, Lcom/letv/leui/widget/LeBottomSheet$6;

    invoke-direct {v1, p0}, Lcom/letv/leui/widget/LeBottomSheet$6;-><init>(Lcom/letv/leui/widget/LeBottomSheet;)V

    invoke-virtual {v9, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 690
    .end local v9    # "vto":Landroid/view/ViewTreeObserver;
    :cond_9
    invoke-direct {p0}, Lcom/letv/leui/widget/LeBottomSheet;->setContentView()V

    .line 592
    return-void

    .line 627
    :cond_a
    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->btn_cancel:Landroid/widget/Button;

    invoke-virtual {v1, p5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 628
    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->btn_cancel:Landroid/widget/Button;

    move/from16 v0, p10

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 629
    if-eqz p6, :cond_5

    .line 630
    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->btn_cancel:Landroid/widget/Button;

    move-object/from16 v0, p6

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3

    .line 639
    :cond_b
    array-length v1, p4

    const/4 v2, 0x2

    if-ne v1, v2, :cond_6

    .line 640
    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->title:Landroid/widget/TextView;

    const/4 v2, 0x0

    aget-object v2, p4, v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 641
    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->title:Landroid/widget/TextView;

    move/from16 v0, p11

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 642
    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->listviewTitle_tailText:Landroid/widget/TextView;

    const/4 v2, 0x1

    aget-object v2, p4, v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 643
    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet;->listviewTitle_tailText:Landroid/widget/TextView;

    move/from16 v0, p11

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_4
.end method

.method public setTailTextColor(I)V
    .locals 0
    .param p1, "tailTextColor"    # I

    .prologue
    .line 152
    iput p1, p0, Lcom/letv/leui/widget/LeBottomSheet;->tailTextColor:I

    .line 151
    return-void
.end method

.method public setThreeBtn(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 5
    .param p4, "titleText"    # Ljava/lang/CharSequence;
    .param p5, "contentText"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View$OnClickListener;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "onClickListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View$OnClickListener;>;"
    .local p2, "btn_texts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p3, "btn_colors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/16 v4, 0x8

    .line 999
    invoke-direct {p0}, Lcom/letv/leui/widget/LeBottomSheet;->getWidgetForThreeBtn()V

    .line 1000
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1001
    iget-object v2, p0, Lcom/letv/leui/widget/LeBottomSheet;->title:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1009
    :cond_0
    :goto_0
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1010
    iget-object v2, p0, Lcom/letv/leui/widget/LeBottomSheet;->content:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1018
    :cond_1
    :goto_1
    if-nez p4, :cond_2

    if-nez p5, :cond_2

    .line 1019
    iget-object v2, p0, Lcom/letv/leui/widget/LeBottomSheet;->gapLine_1:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1023
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_5

    .line 1024
    iget-object v2, p0, Lcom/letv/leui/widget/LeBottomSheet;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 1025
    .local v1, "temp":Landroid/widget/Button;
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1026
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 1027
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1023
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1003
    .end local v0    # "i":I
    .end local v1    # "temp":Landroid/widget/Button;
    :cond_3
    iget-object v2, p0, Lcom/letv/leui/widget/LeBottomSheet;->title:Landroid/widget/TextView;

    invoke-virtual {v2, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1004
    iget-boolean v2, p0, Lcom/letv/leui/widget/LeBottomSheet;->mLinkMovementEnabled:Z

    if-eqz v2, :cond_0

    .line 1005
    iget-object v2, p0, Lcom/letv/leui/widget/LeBottomSheet;->title:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    goto :goto_0

    .line 1012
    :cond_4
    iget-object v2, p0, Lcom/letv/leui/widget/LeBottomSheet;->content:Landroid/widget/TextView;

    invoke-virtual {v2, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1013
    iget-boolean v2, p0, Lcom/letv/leui/widget/LeBottomSheet;->mLinkMovementEnabled:Z

    if-eqz v2, :cond_1

    .line 1014
    iget-object v2, p0, Lcom/letv/leui/widget/LeBottomSheet;->content:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    goto :goto_1

    .line 1030
    .restart local v0    # "i":I
    :cond_5
    iget v2, p0, Lcom/letv/leui/widget/LeBottomSheet;->showMode:I

    const/4 v3, 0x7

    if-ne v2, v3, :cond_6

    .line 1031
    invoke-direct {p0}, Lcom/letv/leui/widget/LeBottomSheet;->setNightMode()V

    .line 1033
    :cond_6
    invoke-direct {p0}, Lcom/letv/leui/widget/LeBottomSheet;->setContentView()V

    .line 997
    return-void
.end method

.method public setTrackBoxColor(III)V
    .locals 0
    .param p1, "colorOn"    # I
    .param p2, "colorOff"    # I
    .param p3, "arrowColor"    # I

    .prologue
    .line 1718
    iput p1, p0, Lcom/letv/leui/widget/LeBottomSheet;->checkBoxOnColor:I

    .line 1719
    iput p2, p0, Lcom/letv/leui/widget/LeBottomSheet;->checkBoxOffColor:I

    .line 1720
    iput p3, p0, Lcom/letv/leui/widget/LeBottomSheet;->checkBoxArrowColor:I

    .line 1717
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
    .line 1353
    .local p1, "unableItemIndex":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iput-object p1, p0, Lcom/letv/leui/widget/LeBottomSheet;->unableItemIndex:Ljava/util/ArrayList;

    .line 1354
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->mDialog:Lcom/letv/leui/widget/LeBottomSheet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->mDialog:Lcom/letv/leui/widget/LeBottomSheet;

    invoke-virtual {v0}, Lcom/letv/leui/widget/LeBottomSheet;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->adapter:Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;

    if-eqz v0, :cond_0

    .line 1355
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet;->adapter:Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;

    invoke-virtual {v0}, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;->notifyDataSetChanged()V

    .line 1352
    :cond_0
    return-void
.end method

.method public setUsePressEffect(Z)V
    .locals 0
    .param p1, "usePressEffect"    # Z

    .prologue
    .line 1376
    iput-boolean p1, p0, Lcom/letv/leui/widget/LeBottomSheet;->usePressEffect:Z

    .line 1375
    return-void
.end method

.method public show()V
    .locals 0

    .prologue
    .line 1282
    invoke-direct {p0}, Lcom/letv/leui/widget/LeBottomSheet;->setDialogWidth()V

    .line 1283
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 1281
    return-void
.end method
