.class public Landroid/widget/TextView;
.super Landroid/view/View;
.source "TextView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;
.implements Lcom/letv/leui/util/LeLinkify$OnURLClickListener;
.implements Lcom/letv/leui/text/LeTextInterface;


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/TextView$Drawables;,
        Landroid/widget/TextView$OnEditorActionListener;,
        Landroid/widget/TextView$BufferType;,
        Landroid/widget/TextView$SavedState;,
        Landroid/widget/TextView$CharWrapper;,
        Landroid/widget/TextView$Marquee;,
        Landroid/widget/TextView$ChangeWatcher;,
        Landroid/widget/TextView$OnURLClickEventListener;
    }
.end annotation


# static fields
.field private static synthetic -android_text_Layout$AlignmentSwitchesValues:[I = null

.field static final ACCESSIBILITY_ACTION_PROCESS_TEXT_START_ID:I = 0x10000100

.field private static final ACCESSIBILITY_ACTION_SHARE:I = 0x10000000

.field private static final ANIMATED_SCROLL_GAP:I = 0xfa

.field private static final CHANGE_WATCHER_PRIORITY:I = 0x64

.field static final DEBUG_EXTRACT:Z = false

.field private static final DECIMAL:I = 0x4

.field private static final EMPTY_SPANNED:Landroid/text/Spanned;

.field private static final EMS:I = 0x1

.field private static final HIGHLIGHT_COLOR_DEFAULT:I = 0x6633b5e5

.field static final ID_COPY:I = 0x1020021

.field static final ID_CUT:I = 0x1020020

.field static final ID_PASTE:I = 0x1020022

.field static final ID_PASTE_AS_PLAIN_TEXT:I = 0x1020031

.field static final ID_REDO:I = 0x1020033

.field static final ID_REPLACE:I = 0x1020034

.field static final ID_SELECT_ALL:I = 0x102001f

.field static final ID_SHARE:I = 0x1020035

.field static final ID_UNDO:I = 0x1020032

.field private static final LINES:I = 0x1

.field static final LOG_TAG:Ljava/lang/String; = "TextView"

.field private static final MARQUEE_FADE_NORMAL:I = 0x0

.field private static final MARQUEE_FADE_SWITCH_SHOW_ELLIPSIS:I = 0x1

.field private static final MARQUEE_FADE_SWITCH_SHOW_FADE:I = 0x2

.field private static final MONOSPACE:I = 0x3

.field private static final MULTILINE_STATE_SET:[I

.field private static final NO_FILTERS:[Landroid/text/InputFilter;

.field private static final PIXELS:I = 0x2

.field static final PROCESS_TEXT_REQUEST_CODE:I = 0x64

.field private static final SANS:I = 0x1

.field private static final SERIF:I = 0x2

.field private static final SIGNED:I = 0x2

.field private static final TEMP_RECTF:Landroid/graphics/RectF;

.field private static final UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

.field private static final VERY_WIDE:I = 0x100000

.field static sLastCutCopyOrTextChangedTime:J


# instance fields
.field private hasUintSpWithStyle:Z

.field private isFontSizeEnlarge:Z

.field private mAllowTransformationLengthChange:Z

.field private mAutoLinkMask:I

.field private mBoring:Landroid/text/BoringLayout$Metrics;

.field private mBottomSheet:Lcom/letv/leui/text/LeTextViewBottomSheet;

.field private mBreakStrategy:I

.field private mBufferType:Landroid/widget/TextView$BufferType;

.field private mChangeWatcher:Landroid/widget/TextView$ChangeWatcher;

.field private mCharWrapper:Landroid/widget/TextView$CharWrapper;

.field private mCurHintTextColor:I

.field private mCurTextColor:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "text"
    .end annotation
.end field

.field private volatile mCurrentSpellCheckerLocaleCache:Ljava/util/Locale;

.field mCursorDrawableRes:I

.field private mDeferScroll:I

.field private mDesiredHeightAtMeasure:I

.field private mDispatchTemporaryDetach:Z

.field mDrawables:Landroid/widget/TextView$Drawables;

.field private mEditableFactory:Landroid/text/Editable$Factory;

.field private mEditor:Landroid/widget/Editor;

.field private mEllipsize:Landroid/text/TextUtils$TruncateAt;

.field private mFilters:[Landroid/text/InputFilter;

.field private mFirstTouch:Z

.field private mFreezesText:Z

.field private mGravity:I

.field mHighlightColor:I

.field private final mHighlightPaint:Landroid/graphics/Paint;

.field private mHighlightPath:Landroid/graphics/Path;

.field private mHighlightPathBogus:Z

.field private mHint:Ljava/lang/CharSequence;

.field private mHintBoring:Landroid/text/BoringLayout$Metrics;

.field private mHintLayout:Landroid/text/Layout;

.field private mHintTextColor:Landroid/content/res/ColorStateList;

.field private mHorizontallyScrolling:Z

.field private mHyphenationFrequency:I

.field private mIncludePad:Z

.field private mLastLayoutDirection:I

.field private mLastScroll:J

.field private mLastTouchUpTime:J

.field private mLayout:Landroid/text/Layout;

.field mLeTextInfo:Lcom/letv/leui/text/LeTextOpt$LeTextInfo;

.field private mLinkTextColor:Landroid/content/res/ColorStateList;

.field private mLinksClickable:Z

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/text/TextWatcher;",
            ">;"
        }
    .end annotation
.end field

.field private mLocaleChanged:Z

.field private mMarquee:Landroid/widget/TextView$Marquee;

.field private mMarqueeFadeMode:I

.field private mMarqueeRepeatLimit:I

.field mMaxLength:I

.field private mMaxMode:I

.field private mMaxWidth:I

.field private mMaxWidthMode:I

.field private mMaximum:I

.field private mMinMode:I

.field private mMinWidth:I

.field private mMinWidthMode:I

.field private mMinimum:I

.field private mMovement:Landroid/text/method/MovementMethod;

.field private mOldMaxMode:I

.field private mOldMaximum:I

.field private mPreDrawListenerDetached:Z

.field private mPreDrawRegistered:Z

.field private mPreventDefaultMovement:Z

.field private mRestartMarquee:Z

.field private mSavedHintLayout:Landroid/text/BoringLayout;

.field private mSavedLayout:Landroid/text/BoringLayout;

.field private mSavedMarqueeModeLayout:Landroid/text/Layout;

.field private mScroller:Landroid/widget/Scroller;

.field private mShadowColor:I

.field private mShadowDx:F

.field private mShadowDy:F

.field private mShadowRadius:F

.field private mSingleLine:Z

.field private mSmartFit:Z

.field private mSmartFitPaint:Landroid/graphics/Paint;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "text"
    .end annotation
.end field

.field private mSpacingAdd:F

.field private mSpacingMult:F

.field private mSpannableFactory:Landroid/text/Spannable$Factory;

.field private mTempRect:Landroid/graphics/Rect;

.field mTemporaryDetach:Z

.field private mText:Ljava/lang/CharSequence;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "text"
    .end annotation
.end field

.field private mTextColor:Landroid/content/res/ColorStateList;

.field private mTextDir:Landroid/text/TextDirectionHeuristic;

.field mTextEditSuggestionItemLayout:I

.field private final mTextPaint:Landroid/text/TextPaint;

.field mTextSelectHandleLeftRes:I

.field mTextSelectHandleRes:I

.field mTextSelectHandleRightRes:I

.field private mTextViewDiscardNextActionUp:Z

.field private mTransformation:Landroid/text/method/TransformationMethod;

.field private mTransformed:Ljava/lang/CharSequence;

.field private mURLEventListener:Landroid/widget/TextView$OnURLClickEventListener;

.field private mUserSetTextScaleX:Z

.field private preText:Ljava/lang/String;

.field private textSize:I

.field private textSizeEnlargeMode:I


# direct methods
.method static synthetic -get0(Landroid/widget/TextView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Landroid/widget/TextView;)Landroid/widget/Editor;
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    return-object v0
.end method

.method static synthetic -get2(Landroid/widget/TextView;)Landroid/text/Layout;
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    return-object v0
.end method

.method static synthetic -get3(Landroid/widget/TextView;)Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method private static synthetic -getandroid_text_Layout$AlignmentSwitchesValues()[I
    .locals 3

    sget-object v0, Landroid/widget/TextView;->-android_text_Layout$AlignmentSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Landroid/widget/TextView;->-android_text_Layout$AlignmentSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Landroid/text/Layout$Alignment;->values()[Landroid/text/Layout$Alignment;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    invoke-virtual {v1}, Landroid/text/Layout$Alignment;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_0
    :try_start_1
    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    invoke-virtual {v1}, Landroid/text/Layout$Alignment;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_1
    :try_start_2
    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    invoke-virtual {v1}, Landroid/text/Layout$Alignment;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    :try_start_3
    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    invoke-virtual {v1}, Landroid/text/Layout$Alignment;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_3
    :try_start_4
    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    invoke-virtual {v1}, Landroid/text/Layout$Alignment;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_4
    sput-object v0, Landroid/widget/TextView;->-android_text_Layout$AlignmentSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1

    :catch_4
    move-exception v1

    goto :goto_0
.end method

.method static synthetic -wrap0(I)Z
    .locals 1
    .param p0, "inputType"    # I

    .prologue
    invoke-static {p0}, Landroid/widget/TextView;->isPasswordInputType(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Landroid/widget/TextView;)Z
    .locals 1

    invoke-direct {p0}, Landroid/widget/TextView;->shouldSpeakPasswordsForAccessibility()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Landroid/widget/TextView;Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "after"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->sendBeforeTextChanged(Ljava/lang/CharSequence;III)V

    return-void
.end method

.method static synthetic -wrap3(Landroid/widget/TextView;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/TextView;->updateTextServicesLocaleLocked()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 296
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    sput-object v1, Landroid/widget/TextView;->TEMP_RECTF:Landroid/graphics/RectF;

    .line 302
    new-array v1, v3, [Landroid/text/InputFilter;

    sput-object v1, Landroid/widget/TextView;->NO_FILTERS:[Landroid/text/InputFilter;

    .line 303
    new-instance v1, Landroid/text/SpannedString;

    const-string/jumbo v2, ""

    invoke-direct {v1, v2}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    sput-object v1, Landroid/widget/TextView;->EMPTY_SPANNED:Landroid/text/Spanned;

    .line 308
    new-array v1, v4, [I

    const v2, 0x101034d

    aput v2, v1, v3

    sput-object v1, Landroid/widget/TextView;->MULTILINE_STATE_SET:[I

    .line 667
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 668
    .local v0, "p":Landroid/graphics/Paint;
    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 670
    const-string/jumbo v1, "H"

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 7114
    new-instance v1, Landroid/text/BoringLayout$Metrics;

    invoke-direct {v1}, Landroid/text/BoringLayout$Metrics;-><init>()V

    sput-object v1, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    .line 260
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 694
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 693
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 698
    const v0, 0x1010084

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 697
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 702
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 701
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 78
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 708
    invoke-direct/range {p0 .. p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 339
    invoke-static {}, Landroid/text/Editable$Factory;->getInstance()Landroid/text/Editable$Factory;

    move-result-object v75

    move-object/from16 v0, v75

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mEditableFactory:Landroid/text/Editable$Factory;

    .line 340
    invoke-static {}, Landroid/text/Spannable$Factory;->getInstance()Landroid/text/Spannable$Factory;

    move-result-object v75

    move-object/from16 v0, v75

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mSpannableFactory:Landroid/text/Spannable$Factory;

    .line 533
    const/16 v75, 0x3

    move/from16 v0, v75

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mMarqueeRepeatLimit:I

    .line 535
    const/16 v75, -0x1

    move/from16 v0, v75

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mLastLayoutDirection:I

    .line 542
    const/16 v75, 0x0

    move/from16 v0, v75

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mMarqueeFadeMode:I

    .line 553
    sget-object v75, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    move-object/from16 v0, v75

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mBufferType:Landroid/widget/TextView$BufferType;

    .line 570
    const/16 v75, 0x0

    move/from16 v0, v75

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mLocaleChanged:Z

    .line 577
    const v75, 0x800033

    move/from16 v0, v75

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mGravity:I

    .line 581
    const/16 v75, 0x1

    move/from16 v0, v75

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mLinksClickable:Z

    .line 583
    const/high16 v75, 0x3f800000    # 1.0f

    move/from16 v0, v75

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mSpacingMult:F

    .line 584
    const/16 v75, 0x0

    move/from16 v0, v75

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mSpacingAdd:F

    .line 589
    const v75, 0x7fffffff

    move/from16 v0, v75

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mMaximum:I

    .line 590
    const/16 v75, 0x1

    move/from16 v0, v75

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mMaxMode:I

    .line 591
    const/16 v75, 0x0

    move/from16 v0, v75

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mMinimum:I

    .line 592
    const/16 v75, 0x1

    move/from16 v0, v75

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mMinMode:I

    .line 594
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mMaximum:I

    move/from16 v75, v0

    move/from16 v0, v75

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mOldMaximum:I

    .line 595
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mMaxMode:I

    move/from16 v75, v0

    move/from16 v0, v75

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mOldMaxMode:I

    .line 597
    const v75, 0x7fffffff

    move/from16 v0, v75

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mMaxWidth:I

    .line 598
    const/16 v75, 0x2

    move/from16 v0, v75

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mMaxWidthMode:I

    .line 599
    const/16 v75, 0x0

    move/from16 v0, v75

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mMinWidth:I

    .line 600
    const/16 v75, 0x2

    move/from16 v0, v75

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mMinWidthMode:I

    .line 605
    const/16 v75, 0x0

    move/from16 v0, v75

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mSmartFit:Z

    .line 606
    const/16 v75, 0xf

    move/from16 v0, v75

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->textSize:I

    .line 607
    const-string/jumbo v75, ""

    move-object/from16 v0, v75

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->preText:Ljava/lang/String;

    .line 609
    const/16 v75, -0x1

    move/from16 v0, v75

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mDesiredHeightAtMeasure:I

    .line 610
    const/16 v75, 0x1

    move/from16 v0, v75

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mIncludePad:Z

    .line 611
    const/16 v75, -0x1

    move/from16 v0, v75

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mDeferScroll:I

    .line 623
    sget-object v75, Landroid/widget/TextView;->NO_FILTERS:[Landroid/text/InputFilter;

    move-object/from16 v0, v75

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mFilters:[Landroid/text/InputFilter;

    .line 625
    const/16 v75, -0x1

    move/from16 v0, v75

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mMaxLength:I

    .line 635
    const v75, 0x6633b5e5

    move/from16 v0, v75

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mHighlightColor:I

    .line 638
    const/16 v75, 0x1

    move/from16 v0, v75

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mHighlightPathBogus:Z

    .line 640
    const/16 v75, 0x0

    move/from16 v0, v75

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mFirstTouch:Z

    .line 641
    const-wide/16 v76, 0x0

    move-wide/from16 v0, v76

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/TextView;->mLastTouchUpTime:J

    .line 10767
    const/16 v75, 0x0

    move/from16 v0, v75

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mTextViewDiscardNextActionUp:Z

    .line 10770
    const/16 v75, 0x0

    move-object/from16 v0, v75

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mLeTextInfo:Lcom/letv/leui/text/LeTextOpt$LeTextInfo;

    .line 10998
    const/16 v75, 0x0

    move/from16 v0, v75

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->isFontSizeEnlarge:Z

    .line 10999
    const/16 v75, 0x0

    move/from16 v0, v75

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->textSizeEnlargeMode:I

    .line 11000
    const/16 v75, 0x0

    move/from16 v0, v75

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->hasUintSpWithStyle:Z

    .line 710
    const-string/jumbo v75, ""

    move-object/from16 v0, v75

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .line 712
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v60

    .line 713
    .local v60, "res":Landroid/content/res/Resources;
    invoke-virtual/range {v60 .. v60}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v19

    .line 715
    .local v19, "compat":Landroid/content/res/CompatibilityInfo;
    new-instance v75, Landroid/text/TextPaint;

    const/16 v76, 0x1

    invoke-direct/range {v75 .. v76}, Landroid/text/TextPaint;-><init>(I)V

    move-object/from16 v0, v75

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    .line 716
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v75, v0

    invoke-virtual/range {v60 .. v60}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v76

    move-object/from16 v0, v76

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    move/from16 v76, v0

    move/from16 v0, v76

    move-object/from16 v1, v75

    iput v0, v1, Landroid/text/TextPaint;->density:F

    .line 717
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v75, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    move/from16 v76, v0

    invoke-virtual/range {v75 .. v76}, Landroid/text/TextPaint;->setCompatibilityScaling(F)V

    .line 719
    new-instance v75, Landroid/graphics/Paint;

    const/16 v76, 0x1

    invoke-direct/range {v75 .. v76}, Landroid/graphics/Paint;-><init>(I)V

    move-object/from16 v0, v75

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mHighlightPaint:Landroid/graphics/Paint;

    .line 720
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHighlightPaint:Landroid/graphics/Paint;

    move-object/from16 v75, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    move/from16 v76, v0

    invoke-virtual/range {v75 .. v76}, Landroid/graphics/Paint;->setCompatibilityScaling(F)V

    .line 722
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getDefaultMovementMethod()Landroid/text/method/MovementMethod;

    move-result-object v75

    move-object/from16 v0, v75

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    .line 724
    const/16 v75, 0x0

    move-object/from16 v0, v75

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    .line 726
    const/16 v68, 0x0

    .line 727
    .local v68, "textColorHighlight":I
    const/16 v67, 0x0

    .line 728
    .local v67, "textColor":Landroid/content/res/ColorStateList;
    const/16 v69, 0x0

    .line 729
    .local v69, "textColorHint":Landroid/content/res/ColorStateList;
    const/16 v70, 0x0

    .line 730
    .local v70, "textColorLink":Landroid/content/res/ColorStateList;
    const/16 v43, 0x0

    .line 731
    .local v43, "fontFamily":Ljava/lang/String;
    const/16 v44, 0x0

    .line 732
    .local v44, "fontFamilyExplicit":Z
    const/16 v72, -0x1

    .line 733
    .local v72, "typefaceIndex":I
    const/16 v64, -0x1

    .line 734
    .local v64, "styleIndex":I
    const/4 v7, 0x0

    .line 735
    .local v7, "allCaps":Z
    const/16 v62, 0x0

    .line 736
    .local v62, "shadowcolor":I
    const/16 v31, 0x0

    .local v31, "dx":F
    const/16 v32, 0x0

    .local v32, "dy":F
    const/16 v59, 0x0

    .line 737
    .local v59, "r":F
    const/16 v37, 0x0

    .line 738
    .local v37, "elegant":Z
    const/16 v50, 0x0

    .line 739
    .local v50, "letterSpacing":F
    const/16 v45, 0x0

    .line 740
    .local v45, "fontFeatureSettings":Ljava/lang/String;
    const/16 v75, 0x0

    move/from16 v0, v75

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mBreakStrategy:I

    .line 741
    const/16 v75, 0x0

    move/from16 v0, v75

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mHyphenationFrequency:I

    .line 743
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v71

    .line 746
    .local v71, "theme":Landroid/content/res/Resources$Theme;
    new-instance v75, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;

    move-object/from16 v0, v75

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    move-object/from16 v0, v75

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mLeTextInfo:Lcom/letv/leui/text/LeTextOpt$LeTextInfo;

    .line 751
    sget-object v75, Lcom/android/internal/R$styleable;->LeEnlargeTextSize:[I

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v75

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v13

    .line 752
    .local v13, "b":Landroid/content/res/TypedArray;
    if-eqz v13, :cond_0

    .line 753
    const/16 v75, 0x0

    const/16 v76, 0x0

    move/from16 v0, v75

    move/from16 v1, v76

    invoke-virtual {v13, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v75

    move/from16 v0, v75

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->isFontSizeEnlarge:Z

    .line 754
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->textSizeEnlargeMode:I

    move/from16 v75, v0

    const/16 v76, 0x1

    move/from16 v0, v76

    move/from16 v1, v75

    invoke-virtual {v13, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v75

    move/from16 v0, v75

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->textSizeEnlargeMode:I

    .line 756
    :cond_0
    invoke-virtual {v13}, Landroid/content/res/TypedArray;->recycle()V

    .line 766
    sget-object v75, Lcom/android/internal/R$styleable;->TextViewAppearance:[I

    .line 765
    move-object/from16 v0, v71

    move-object/from16 v1, p2

    move-object/from16 v2, v75

    move/from16 v3, p3

    move/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 767
    .local v6, "a":Landroid/content/res/TypedArray;
    const/4 v9, 0x0

    .line 769
    .local v9, "appearance":Landroid/content/res/TypedArray;
    const/16 v75, 0x0

    const/16 v76, -0x1

    .line 768
    move/from16 v0, v75

    move/from16 v1, v76

    invoke-virtual {v6, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    .line 770
    .local v8, "ap":I
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 771
    const/16 v75, -0x1

    move/from16 v0, v75

    if-eq v8, v0, :cond_1

    .line 773
    sget-object v75, Lcom/android/internal/R$styleable;->TextAppearance:[I

    .line 772
    move-object/from16 v0, v71

    move-object/from16 v1, v75

    invoke-virtual {v0, v8, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v9

    .line 775
    .end local v9    # "appearance":Landroid/content/res/TypedArray;
    :cond_1
    if-eqz v9, :cond_4

    .line 776
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v53

    .line 777
    .local v53, "n":I
    const/16 v47, 0x0

    .end local v7    # "allCaps":Z
    .end local v37    # "elegant":Z
    .end local v43    # "fontFamily":Ljava/lang/String;
    .end local v45    # "fontFeatureSettings":Ljava/lang/String;
    .end local v67    # "textColor":Landroid/content/res/ColorStateList;
    .end local v69    # "textColorHint":Landroid/content/res/ColorStateList;
    .end local v70    # "textColorLink":Landroid/content/res/ColorStateList;
    .local v47, "i":I
    :goto_0
    move/from16 v0, v47

    move/from16 v1, v53

    if-ge v0, v1, :cond_3

    .line 778
    move/from16 v0, v47

    invoke-virtual {v9, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v10

    .line 780
    .local v10, "attr":I
    packed-switch v10, :pswitch_data_0

    .line 777
    :cond_2
    :goto_1
    add-int/lit8 v47, v47, 0x1

    goto :goto_0

    .line 782
    :pswitch_0
    move/from16 v0, v68

    invoke-virtual {v9, v10, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v68

    goto :goto_1

    .line 786
    :pswitch_1
    invoke-virtual {v9, v10}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v67

    .local v67, "textColor":Landroid/content/res/ColorStateList;
    goto :goto_1

    .line 790
    .end local v67    # "textColor":Landroid/content/res/ColorStateList;
    :pswitch_2
    invoke-virtual {v9, v10}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v69

    .local v69, "textColorHint":Landroid/content/res/ColorStateList;
    goto :goto_1

    .line 794
    .end local v69    # "textColorHint":Landroid/content/res/ColorStateList;
    :pswitch_3
    invoke-virtual {v9, v10}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v70

    .local v70, "textColorLink":Landroid/content/res/ColorStateList;
    goto :goto_1

    .line 798
    .end local v70    # "textColorLink":Landroid/content/res/ColorStateList;
    :pswitch_4
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->textSize:I

    move/from16 v75, v0

    move/from16 v0, v75

    invoke-virtual {v9, v10, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v75

    move/from16 v0, v75

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->textSize:I

    .line 800
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->isFontSizeEnlarge:Z

    move/from16 v75, v0

    if-eqz v75, :cond_2

    .line 801
    const/16 v75, 0x0

    move/from16 v0, v75

    invoke-virtual {v9, v10, v0}, Landroid/content/res/TypedArray;->isTextViewUnitSp(IZ)Z

    move-result v75

    move/from16 v0, v75

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->hasUintSpWithStyle:Z

    goto :goto_1

    .line 808
    :pswitch_5
    const/16 v75, -0x1

    move/from16 v0, v75

    invoke-virtual {v9, v10, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v72

    goto :goto_1

    .line 812
    :pswitch_6
    invoke-virtual {v9, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v43

    .local v43, "fontFamily":Ljava/lang/String;
    goto :goto_1

    .line 816
    .end local v43    # "fontFamily":Ljava/lang/String;
    :pswitch_7
    const/16 v75, -0x1

    move/from16 v0, v75

    invoke-virtual {v9, v10, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v64

    goto :goto_1

    .line 820
    :pswitch_8
    const/16 v75, 0x0

    move/from16 v0, v75

    invoke-virtual {v9, v10, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    .local v7, "allCaps":Z
    goto :goto_1

    .line 824
    .end local v7    # "allCaps":Z
    :pswitch_9
    const/16 v75, 0x0

    move/from16 v0, v75

    invoke-virtual {v9, v10, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v62

    goto :goto_1

    .line 828
    :pswitch_a
    const/16 v75, 0x0

    move/from16 v0, v75

    invoke-virtual {v9, v10, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v31

    goto :goto_1

    .line 832
    :pswitch_b
    const/16 v75, 0x0

    move/from16 v0, v75

    invoke-virtual {v9, v10, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v32

    goto :goto_1

    .line 836
    :pswitch_c
    const/16 v75, 0x0

    move/from16 v0, v75

    invoke-virtual {v9, v10, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v59

    goto/16 :goto_1

    .line 840
    :pswitch_d
    const/16 v75, 0x0

    move/from16 v0, v75

    invoke-virtual {v9, v10, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v37

    .local v37, "elegant":Z
    goto/16 :goto_1

    .line 844
    .end local v37    # "elegant":Z
    :pswitch_e
    const/16 v75, 0x0

    move/from16 v0, v75

    invoke-virtual {v9, v10, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v50

    goto/16 :goto_1

    .line 848
    :pswitch_f
    invoke-virtual {v9, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v45

    .local v45, "fontFeatureSettings":Ljava/lang/String;
    goto/16 :goto_1

    .line 853
    .end local v10    # "attr":I
    .end local v45    # "fontFeatureSettings":Ljava/lang/String;
    :cond_3
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    .line 856
    .end local v47    # "i":I
    .end local v53    # "n":I
    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getDefaultEditable()Z

    move-result v36

    .line 857
    .local v36, "editable":Z
    const/16 v48, 0x0

    .line 858
    .local v48, "inputMethod":Ljava/lang/CharSequence;
    const/16 v55, 0x0

    .line 859
    .local v55, "numeric":I
    const/16 v20, 0x0

    .line 860
    .local v20, "digits":Ljava/lang/CharSequence;
    const/16 v58, 0x0

    .line 861
    .local v58, "phone":Z
    const/4 v12, 0x0

    .line 862
    .local v12, "autotext":Z
    const/4 v11, -0x1

    .line 863
    .local v11, "autocap":I
    const/4 v15, 0x0

    .line 864
    .local v15, "buffertype":I
    const/16 v61, 0x0

    .line 865
    .local v61, "selectallonfocus":Z
    const/16 v24, 0x0

    .local v24, "drawableLeft":Landroid/graphics/drawable/Drawable;
    const/16 v30, 0x0

    .local v30, "drawableTop":Landroid/graphics/drawable/Drawable;
    const/16 v26, 0x0

    .line 866
    .local v26, "drawableRight":Landroid/graphics/drawable/Drawable;
    const/16 v22, 0x0

    .local v22, "drawableBottom":Landroid/graphics/drawable/Drawable;
    const/16 v27, 0x0

    .local v27, "drawableStart":Landroid/graphics/drawable/Drawable;
    const/16 v23, 0x0

    .line 867
    .local v23, "drawableEnd":Landroid/graphics/drawable/Drawable;
    const/16 v28, 0x0

    .line 868
    .local v28, "drawableTint":Landroid/content/res/ColorStateList;
    const/16 v29, 0x0

    .line 869
    .local v29, "drawableTintMode":Landroid/graphics/PorterDuff$Mode;
    const/16 v25, 0x0

    .line 870
    .local v25, "drawablePadding":I
    const/16 v38, -0x1

    .line 871
    .local v38, "ellipsize":I
    const/16 v63, 0x0

    .line 872
    .local v63, "singleLine":Z
    const/16 v52, -0x1

    .line 873
    .local v52, "maxlength":I
    const-string/jumbo v66, ""

    .line 874
    .local v66, "text":Ljava/lang/CharSequence;
    const/16 v46, 0x0

    .line 875
    .local v46, "hint":Ljava/lang/CharSequence;
    const/16 v56, 0x0

    .line 876
    .local v56, "password":Z
    const/16 v49, 0x0

    .line 879
    .local v49, "inputType":I
    sget-object v75, Lcom/android/internal/R$styleable;->TextView:[I

    .line 878
    move-object/from16 v0, v71

    move-object/from16 v1, p2

    move-object/from16 v2, v75

    move/from16 v3, p3

    move/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 881
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v53

    .line 882
    .restart local v53    # "n":I
    const/16 v47, 0x0

    .end local v12    # "autotext":Z
    .end local v20    # "digits":Ljava/lang/CharSequence;
    .end local v22    # "drawableBottom":Landroid/graphics/drawable/Drawable;
    .end local v23    # "drawableEnd":Landroid/graphics/drawable/Drawable;
    .end local v24    # "drawableLeft":Landroid/graphics/drawable/Drawable;
    .end local v26    # "drawableRight":Landroid/graphics/drawable/Drawable;
    .end local v27    # "drawableStart":Landroid/graphics/drawable/Drawable;
    .end local v28    # "drawableTint":Landroid/content/res/ColorStateList;
    .end local v29    # "drawableTintMode":Landroid/graphics/PorterDuff$Mode;
    .end local v30    # "drawableTop":Landroid/graphics/drawable/Drawable;
    .end local v46    # "hint":Ljava/lang/CharSequence;
    .end local v48    # "inputMethod":Ljava/lang/CharSequence;
    .end local v56    # "password":Z
    .end local v58    # "phone":Z
    .end local v61    # "selectallonfocus":Z
    .end local v63    # "singleLine":Z
    .restart local v47    # "i":I
    :goto_2
    move/from16 v0, v47

    move/from16 v1, v53

    if-ge v0, v1, :cond_6

    .line 883
    move/from16 v0, v47

    invoke-virtual {v6, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v10

    .line 885
    .restart local v10    # "attr":I
    packed-switch v10, :pswitch_data_1

    .line 882
    :cond_5
    :goto_3
    :pswitch_10
    add-int/lit8 v47, v47, 0x1

    goto :goto_2

    .line 887
    :pswitch_11
    move/from16 v0, v36

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v36

    goto :goto_3

    .line 891
    :pswitch_12
    invoke-virtual {v6, v10}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v48

    .local v48, "inputMethod":Ljava/lang/CharSequence;
    goto :goto_3

    .line 895
    .end local v48    # "inputMethod":Ljava/lang/CharSequence;
    :pswitch_13
    move/from16 v0, v55

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v55

    goto :goto_3

    .line 899
    :pswitch_14
    invoke-virtual {v6, v10}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v20

    .local v20, "digits":Ljava/lang/CharSequence;
    goto :goto_3

    .line 903
    .end local v20    # "digits":Ljava/lang/CharSequence;
    :pswitch_15
    move/from16 v0, v58

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v58

    .local v58, "phone":Z
    goto :goto_3

    .line 907
    .end local v58    # "phone":Z
    :pswitch_16
    invoke-virtual {v6, v10, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v12

    .local v12, "autotext":Z
    goto :goto_3

    .line 911
    .end local v12    # "autotext":Z
    :pswitch_17
    invoke-virtual {v6, v10, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v11

    goto :goto_3

    .line 915
    :pswitch_18
    invoke-virtual {v6, v10, v15}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v15

    goto :goto_3

    .line 919
    :pswitch_19
    move/from16 v0, v61

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v61

    .local v61, "selectallonfocus":Z
    goto :goto_3

    .line 923
    .end local v61    # "selectallonfocus":Z
    :pswitch_1a
    const/16 v75, 0x0

    move/from16 v0, v75

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v75

    move/from16 v0, v75

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mAutoLinkMask:I

    goto :goto_3

    .line 927
    :pswitch_1b
    const/16 v75, 0x1

    move/from16 v0, v75

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v75

    move/from16 v0, v75

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mLinksClickable:Z

    goto :goto_3

    .line 931
    :pswitch_1c
    invoke-virtual {v6, v10}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v24

    .local v24, "drawableLeft":Landroid/graphics/drawable/Drawable;
    goto :goto_3

    .line 935
    .end local v24    # "drawableLeft":Landroid/graphics/drawable/Drawable;
    :pswitch_1d
    invoke-virtual {v6, v10}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v30

    .local v30, "drawableTop":Landroid/graphics/drawable/Drawable;
    goto :goto_3

    .line 939
    .end local v30    # "drawableTop":Landroid/graphics/drawable/Drawable;
    :pswitch_1e
    invoke-virtual {v6, v10}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v26

    .local v26, "drawableRight":Landroid/graphics/drawable/Drawable;
    goto :goto_3

    .line 943
    .end local v26    # "drawableRight":Landroid/graphics/drawable/Drawable;
    :pswitch_1f
    invoke-virtual {v6, v10}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v22

    .local v22, "drawableBottom":Landroid/graphics/drawable/Drawable;
    goto :goto_3

    .line 947
    .end local v22    # "drawableBottom":Landroid/graphics/drawable/Drawable;
    :pswitch_20
    invoke-virtual {v6, v10}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v27

    .local v27, "drawableStart":Landroid/graphics/drawable/Drawable;
    goto :goto_3

    .line 951
    .end local v27    # "drawableStart":Landroid/graphics/drawable/Drawable;
    :pswitch_21
    invoke-virtual {v6, v10}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v23

    .local v23, "drawableEnd":Landroid/graphics/drawable/Drawable;
    goto :goto_3

    .line 955
    .end local v23    # "drawableEnd":Landroid/graphics/drawable/Drawable;
    :pswitch_22
    invoke-virtual {v6, v10}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v28

    .local v28, "drawableTint":Landroid/content/res/ColorStateList;
    goto :goto_3

    .line 959
    .end local v28    # "drawableTint":Landroid/content/res/ColorStateList;
    :pswitch_23
    const/16 v75, -0x1

    move/from16 v0, v75

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v75

    move/from16 v0, v75

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v29

    .local v29, "drawableTintMode":Landroid/graphics/PorterDuff$Mode;
    goto/16 :goto_3

    .line 963
    .end local v29    # "drawableTintMode":Landroid/graphics/PorterDuff$Mode;
    :pswitch_24
    move/from16 v0, v25

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v25

    goto/16 :goto_3

    .line 967
    :pswitch_25
    const/16 v75, -0x1

    move/from16 v0, v75

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v75

    move-object/from16 v0, p0

    move/from16 v1, v75

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    goto/16 :goto_3

    .line 971
    :pswitch_26
    const/16 v75, -0x1

    move/from16 v0, v75

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v75

    move-object/from16 v0, p0

    move/from16 v1, v75

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxHeight(I)V

    goto/16 :goto_3

    .line 975
    :pswitch_27
    const/16 v75, -0x1

    move/from16 v0, v75

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v75

    move-object/from16 v0, p0

    move/from16 v1, v75

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLines(I)V

    goto/16 :goto_3

    .line 979
    :pswitch_28
    const/16 v75, -0x1

    move/from16 v0, v75

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v75

    move-object/from16 v0, p0

    move/from16 v1, v75

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHeight(I)V

    goto/16 :goto_3

    .line 983
    :pswitch_29
    const/16 v75, -0x1

    move/from16 v0, v75

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v75

    move-object/from16 v0, p0

    move/from16 v1, v75

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMinLines(I)V

    goto/16 :goto_3

    .line 987
    :pswitch_2a
    const/16 v75, -0x1

    move/from16 v0, v75

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v75

    move-object/from16 v0, p0

    move/from16 v1, v75

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMinHeight(I)V

    goto/16 :goto_3

    .line 991
    :pswitch_2b
    const/16 v75, -0x1

    move/from16 v0, v75

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v75

    move-object/from16 v0, p0

    move/from16 v1, v75

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxEms(I)V

    goto/16 :goto_3

    .line 995
    :pswitch_2c
    const/16 v75, -0x1

    move/from16 v0, v75

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v75

    move-object/from16 v0, p0

    move/from16 v1, v75

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    goto/16 :goto_3

    .line 999
    :pswitch_2d
    const/16 v75, -0x1

    move/from16 v0, v75

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v75

    move-object/from16 v0, p0

    move/from16 v1, v75

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEms(I)V

    goto/16 :goto_3

    .line 1003
    :pswitch_2e
    const/16 v75, -0x1

    move/from16 v0, v75

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v75

    move-object/from16 v0, p0

    move/from16 v1, v75

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setWidth(I)V

    goto/16 :goto_3

    .line 1007
    :pswitch_2f
    const/16 v75, -0x1

    move/from16 v0, v75

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v75

    move-object/from16 v0, p0

    move/from16 v1, v75

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMinEms(I)V

    goto/16 :goto_3

    .line 1011
    :pswitch_30
    const/16 v75, -0x1

    move/from16 v0, v75

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v75

    move-object/from16 v0, p0

    move/from16 v1, v75

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMinWidth(I)V

    goto/16 :goto_3

    .line 1015
    :pswitch_31
    const/16 v75, -0x1

    move/from16 v0, v75

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v75

    move-object/from16 v0, p0

    move/from16 v1, v75

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    goto/16 :goto_3

    .line 1019
    :pswitch_32
    invoke-virtual {v6, v10}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v46

    .local v46, "hint":Ljava/lang/CharSequence;
    goto/16 :goto_3

    .line 1023
    .end local v46    # "hint":Ljava/lang/CharSequence;
    :pswitch_33
    invoke-virtual {v6, v10}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v66

    goto/16 :goto_3

    .line 1027
    :pswitch_34
    const/16 v75, 0x0

    move/from16 v0, v75

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v75

    if-eqz v75, :cond_5

    .line 1028
    const/16 v75, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v75

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    goto/16 :goto_3

    .line 1033
    :pswitch_35
    move/from16 v0, v63

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v63

    .local v63, "singleLine":Z
    goto/16 :goto_3

    .line 1037
    .end local v63    # "singleLine":Z
    :pswitch_36
    move/from16 v0, v38

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v38

    goto/16 :goto_3

    .line 1041
    :pswitch_37
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mMarqueeRepeatLimit:I

    move/from16 v75, v0

    move/from16 v0, v75

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v75

    move-object/from16 v0, p0

    move/from16 v1, v75

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMarqueeRepeatLimit(I)V

    goto/16 :goto_3

    .line 1045
    :pswitch_38
    const/16 v75, 0x1

    move/from16 v0, v75

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v75

    if-nez v75, :cond_5

    .line 1046
    const/16 v75, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v75

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    goto/16 :goto_3

    .line 1051
    :pswitch_39
    const/16 v75, 0x1

    move/from16 v0, v75

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v75

    if-nez v75, :cond_5

    .line 1052
    const/16 v75, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v75

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setCursorVisible(Z)V

    goto/16 :goto_3

    .line 1057
    :pswitch_3a
    const/16 v75, -0x1

    move/from16 v0, v75

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v52

    goto/16 :goto_3

    .line 1061
    :pswitch_3b
    const/high16 v75, 0x3f800000    # 1.0f

    move/from16 v0, v75

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v75

    move-object/from16 v0, p0

    move/from16 v1, v75

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextScaleX(F)V

    goto/16 :goto_3

    .line 1065
    :pswitch_3c
    const/16 v75, 0x0

    move/from16 v0, v75

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v75

    move/from16 v0, v75

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mFreezesText:Z

    goto/16 :goto_3

    .line 1069
    :pswitch_3d
    const/16 v75, 0x0

    move/from16 v0, v75

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v62

    goto/16 :goto_3

    .line 1073
    :pswitch_3e
    const/16 v75, 0x0

    move/from16 v0, v75

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v31

    goto/16 :goto_3

    .line 1077
    :pswitch_3f
    const/16 v75, 0x0

    move/from16 v0, v75

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v32

    goto/16 :goto_3

    .line 1081
    :pswitch_40
    const/16 v75, 0x0

    move/from16 v0, v75

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v59

    goto/16 :goto_3

    .line 1085
    :pswitch_41
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->isEnabled()Z

    move-result v75

    move/from16 v0, v75

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v75

    move-object/from16 v0, p0

    move/from16 v1, v75

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    goto/16 :goto_3

    .line 1089
    :pswitch_42
    move/from16 v0, v68

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v68

    goto/16 :goto_3

    .line 1093
    :pswitch_43
    invoke-virtual {v6, v10}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v67

    .restart local v67    # "textColor":Landroid/content/res/ColorStateList;
    goto/16 :goto_3

    .line 1097
    .end local v67    # "textColor":Landroid/content/res/ColorStateList;
    :pswitch_44
    invoke-virtual {v6, v10}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v69

    .restart local v69    # "textColorHint":Landroid/content/res/ColorStateList;
    goto/16 :goto_3

    .line 1101
    .end local v69    # "textColorHint":Landroid/content/res/ColorStateList;
    :pswitch_45
    invoke-virtual {v6, v10}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v70

    .restart local v70    # "textColorLink":Landroid/content/res/ColorStateList;
    goto/16 :goto_3

    .line 1105
    .end local v70    # "textColorLink":Landroid/content/res/ColorStateList;
    :pswitch_46
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->textSize:I

    move/from16 v75, v0

    move/from16 v0, v75

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v75

    move/from16 v0, v75

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->textSize:I

    .line 1107
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->isFontSizeEnlarge:Z

    move/from16 v75, v0

    if-eqz v75, :cond_5

    .line 1108
    const/16 v75, 0x0

    move/from16 v0, v75

    invoke-virtual {v9, v10, v0}, Landroid/content/res/TypedArray;->isTextViewUnitSp(IZ)Z

    move-result v75

    move/from16 v0, v75

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->hasUintSpWithStyle:Z

    goto/16 :goto_3

    .line 1115
    :pswitch_47
    move/from16 v0, v72

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v72

    goto/16 :goto_3

    .line 1119
    :pswitch_48
    move/from16 v0, v64

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v64

    goto/16 :goto_3

    .line 1123
    :pswitch_49
    invoke-virtual {v6, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v43

    .line 1124
    .restart local v43    # "fontFamily":Ljava/lang/String;
    const/16 v44, 0x1

    .line 1125
    goto/16 :goto_3

    .line 1128
    .end local v43    # "fontFamily":Ljava/lang/String;
    :pswitch_4a
    move/from16 v0, v56

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v56

    .local v56, "password":Z
    goto/16 :goto_3

    .line 1132
    .end local v56    # "password":Z
    :pswitch_4b
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move/from16 v75, v0

    move/from16 v0, v75

    float-to-int v0, v0

    move/from16 v75, v0

    move/from16 v0, v75

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v75

    move/from16 v0, v75

    int-to-float v0, v0

    move/from16 v75, v0

    move/from16 v0, v75

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mSpacingAdd:F

    goto/16 :goto_3

    .line 1136
    :pswitch_4c
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    move/from16 v75, v0

    move/from16 v0, v75

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v75

    move/from16 v0, v75

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mSpacingMult:F

    goto/16 :goto_3

    .line 1140
    :pswitch_4d
    const/16 v75, 0x0

    move/from16 v0, v75

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v49

    goto/16 :goto_3

    .line 1144
    :pswitch_4e
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 1145
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move-object/from16 v75, v0

    const/16 v76, 0x1

    move/from16 v0, v76

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v76

    move/from16 v0, v76

    move-object/from16 v1, v75

    iput-boolean v0, v1, Landroid/widget/Editor;->mAllowUndo:Z

    goto/16 :goto_3

    .line 1149
    :pswitch_4f
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 1150
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move-object/from16 v75, v0

    invoke-virtual/range {v75 .. v75}, Landroid/widget/Editor;->createInputContentTypeIfNeeded()V

    .line 1151
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move-object/from16 v75, v0

    move-object/from16 v0, v75

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    move-object/from16 v75, v0

    .line 1152
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move-object/from16 v76, v0

    move-object/from16 v0, v76

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    move-object/from16 v76, v0

    move-object/from16 v0, v76

    iget v0, v0, Landroid/widget/Editor$InputContentType;->imeOptions:I

    move/from16 v76, v0

    .line 1151
    move/from16 v0, v76

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v76

    move/from16 v0, v76

    move-object/from16 v1, v75

    iput v0, v1, Landroid/widget/Editor$InputContentType;->imeOptions:I

    goto/16 :goto_3

    .line 1156
    :pswitch_50
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 1157
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move-object/from16 v75, v0

    invoke-virtual/range {v75 .. v75}, Landroid/widget/Editor;->createInputContentTypeIfNeeded()V

    .line 1158
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move-object/from16 v75, v0

    move-object/from16 v0, v75

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    move-object/from16 v75, v0

    invoke-virtual {v6, v10}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v76

    move-object/from16 v0, v76

    move-object/from16 v1, v75

    iput-object v0, v1, Landroid/widget/Editor$InputContentType;->imeActionLabel:Ljava/lang/CharSequence;

    goto/16 :goto_3

    .line 1162
    :pswitch_51
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 1163
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move-object/from16 v75, v0

    invoke-virtual/range {v75 .. v75}, Landroid/widget/Editor;->createInputContentTypeIfNeeded()V

    .line 1164
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move-object/from16 v75, v0

    move-object/from16 v0, v75

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    move-object/from16 v75, v0

    .line 1165
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move-object/from16 v76, v0

    move-object/from16 v0, v76

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    move-object/from16 v76, v0

    move-object/from16 v0, v76

    iget v0, v0, Landroid/widget/Editor$InputContentType;->imeActionId:I

    move/from16 v76, v0

    .line 1164
    move/from16 v0, v76

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v76

    move/from16 v0, v76

    move-object/from16 v1, v75

    iput v0, v1, Landroid/widget/Editor$InputContentType;->imeActionId:I

    goto/16 :goto_3

    .line 1169
    :pswitch_52
    invoke-virtual {v6, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v75

    move-object/from16 v0, p0

    move-object/from16 v1, v75

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPrivateImeOptions(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1174
    :pswitch_53
    const/16 v75, 0x0

    :try_start_0
    move/from16 v0, v75

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v75

    move-object/from16 v0, p0

    move/from16 v1, v75

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setInputExtras(I)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_3

    .line 1175
    :catch_0
    move-exception v35

    .line 1176
    .local v35, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string/jumbo v75, "TextView"

    const-string/jumbo v76, "Failure reading input extras"

    move-object/from16 v0, v75

    move-object/from16 v1, v76

    move-object/from16 v2, v35

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 1177
    .end local v35    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_1
    move-exception v33

    .line 1178
    .local v33, "e":Ljava/io/IOException;
    const-string/jumbo v75, "TextView"

    const-string/jumbo v76, "Failure reading input extras"

    move-object/from16 v0, v75

    move-object/from16 v1, v76

    move-object/from16 v2, v33

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 1183
    .end local v33    # "e":Ljava/io/IOException;
    :pswitch_54
    const/16 v75, 0x0

    move/from16 v0, v75

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v75

    move/from16 v0, v75

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mCursorDrawableRes:I

    goto/16 :goto_3

    .line 1187
    :pswitch_55
    const/16 v75, 0x0

    move/from16 v0, v75

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v75

    move/from16 v0, v75

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mTextSelectHandleLeftRes:I

    goto/16 :goto_3

    .line 1191
    :pswitch_56
    const/16 v75, 0x0

    move/from16 v0, v75

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v75

    move/from16 v0, v75

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mTextSelectHandleRightRes:I

    goto/16 :goto_3

    .line 1195
    :pswitch_57
    const/16 v75, 0x0

    move/from16 v0, v75

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v75

    move/from16 v0, v75

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mTextSelectHandleRes:I

    goto/16 :goto_3

    .line 1199
    :pswitch_58
    const/16 v75, 0x0

    move/from16 v0, v75

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v75

    move/from16 v0, v75

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mTextEditSuggestionItemLayout:I

    goto/16 :goto_3

    .line 1203
    :pswitch_59
    const/16 v75, 0x0

    move/from16 v0, v75

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v75

    move-object/from16 v0, p0

    move/from16 v1, v75

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    goto/16 :goto_3

    .line 1207
    :pswitch_5a
    const/16 v75, 0x0

    move/from16 v0, v75

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    .restart local v7    # "allCaps":Z
    goto/16 :goto_3

    .line 1211
    .end local v7    # "allCaps":Z
    :pswitch_5b
    const/16 v75, 0x0

    move/from16 v0, v75

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v37

    .restart local v37    # "elegant":Z
    goto/16 :goto_3

    .line 1215
    .end local v37    # "elegant":Z
    :pswitch_5c
    const/16 v75, 0x0

    move/from16 v0, v75

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v50

    goto/16 :goto_3

    .line 1219
    :pswitch_5d
    invoke-virtual {v6, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v45

    .restart local v45    # "fontFeatureSettings":Ljava/lang/String;
    goto/16 :goto_3

    .line 1223
    .end local v45    # "fontFeatureSettings":Ljava/lang/String;
    :pswitch_5e
    const/16 v75, 0x0

    move/from16 v0, v75

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v75

    move/from16 v0, v75

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mBreakStrategy:I

    goto/16 :goto_3

    .line 1227
    :pswitch_5f
    const/16 v75, 0x0

    move/from16 v0, v75

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v75

    move/from16 v0, v75

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mHyphenationFrequency:I

    goto/16 :goto_3

    .line 1231
    .end local v10    # "attr":I
    :cond_6
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 1233
    sget-object v75, Lcom/mediatek/internal/R$styleable;->TextView:[I

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v75

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 1234
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mSmartFit:Z

    move/from16 v75, v0

    const/16 v76, 0x0

    move/from16 v0, v76

    move/from16 v1, v75

    invoke-virtual {v6, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v75

    move/from16 v0, v75

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mSmartFit:Z

    .line 1235
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 1237
    sget-object v14, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    .line 1240
    .local v14, "bufferType":Landroid/widget/TextView$BufferType;
    move/from16 v0, v49

    and-int/lit16 v0, v0, 0xfff

    move/from16 v73, v0

    .line 1242
    .local v73, "variation":I
    const/16 v75, 0x81

    .line 1241
    move/from16 v0, v73

    move/from16 v1, v75

    if-ne v0, v1, :cond_19

    const/16 v57, 0x1

    .line 1244
    .local v57, "passwordInputType":Z
    :goto_4
    const/16 v75, 0xe1

    .line 1243
    move/from16 v0, v73

    move/from16 v1, v75

    if-ne v0, v1, :cond_1a

    const/16 v74, 0x1

    .line 1246
    .local v74, "webPasswordInputType":Z
    :goto_5
    const/16 v75, 0x12

    .line 1245
    move/from16 v0, v73

    move/from16 v1, v75

    if-ne v0, v1, :cond_1b

    const/16 v54, 0x1

    .line 1248
    .local v54, "numberPasswordInputType":Z
    :goto_6
    if-eqz v48, :cond_1d

    .line 1252
    :try_start_1
    invoke-interface/range {v48 .. v48}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v75

    invoke-static/range {v75 .. v75}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v16

    .line 1258
    .local v16, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_2
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 1259
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move-object/from16 v76, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v75

    check-cast v75, Landroid/text/method/KeyListener;

    move-object/from16 v0, v75

    move-object/from16 v1, v76

    iput-object v0, v1, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;
    :try_end_2
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_3

    .line 1266
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move-object/from16 v76, v0

    if-eqz v49, :cond_1c

    move/from16 v75, v49

    :goto_7
    move/from16 v0, v75

    move-object/from16 v1, v76

    iput v0, v1, Landroid/widget/Editor;->mInputType:I
    :try_end_3
    .catch Ljava/lang/IncompatibleClassChangeError; {:try_start_3 .. :try_end_3} :catch_5

    .line 1358
    .end local v16    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move-object/from16 v75, v0

    if-eqz v75, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move-object/from16 v75, v0

    move-object/from16 v0, v75

    move/from16 v1, v56

    move/from16 v2, v57

    move/from16 v3, v74

    move/from16 v4, v54

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/Editor;->adjustInputType(ZZZZ)V

    .line 1361
    :cond_7
    if-eqz v61, :cond_8

    .line 1362
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 1363
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move-object/from16 v75, v0

    const/16 v76, 0x1

    move/from16 v0, v76

    move-object/from16 v1, v75

    iput-boolean v0, v1, Landroid/widget/Editor;->mSelectAllOnFocus:Z

    .line 1365
    sget-object v75, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    move-object/from16 v0, v75

    if-ne v14, v0, :cond_8

    .line 1366
    sget-object v14, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    .line 1371
    :cond_8
    if-nez v28, :cond_9

    if-eqz v29, :cond_c

    .line 1372
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    move-object/from16 v75, v0

    if-nez v75, :cond_a

    .line 1373
    new-instance v75, Landroid/widget/TextView$Drawables;

    move-object/from16 v0, v75

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/widget/TextView$Drawables;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v75

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 1375
    :cond_a
    if-eqz v28, :cond_b

    .line 1376
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    move-object/from16 v75, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v75

    iput-object v0, v1, Landroid/widget/TextView$Drawables;->mTintList:Landroid/content/res/ColorStateList;

    .line 1377
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    move-object/from16 v75, v0

    const/16 v76, 0x1

    move/from16 v0, v76

    move-object/from16 v1, v75

    iput-boolean v0, v1, Landroid/widget/TextView$Drawables;->mHasTint:Z

    .line 1379
    :cond_b
    if-eqz v29, :cond_c

    .line 1380
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    move-object/from16 v75, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v75

    iput-object v0, v1, Landroid/widget/TextView$Drawables;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 1381
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    move-object/from16 v75, v0

    const/16 v76, 0x1

    move/from16 v0, v76

    move-object/from16 v1, v75

    iput-boolean v0, v1, Landroid/widget/TextView$Drawables;->mHasTintMode:Z

    .line 1386
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLeTextInfo:Lcom/letv/leui/text/LeTextOpt$LeTextInfo;

    move-object/from16 v75, v0

    move-object/from16 v0, v75

    iget v0, v0, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->mLeTextStyle:I

    move/from16 v75, v0

    move-object/from16 v0, p0

    move/from16 v1, v75

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLeTextWeight(I)V

    .line 1387
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLeTextInfo:Lcom/letv/leui/text/LeTextOpt$LeTextInfo;

    move-object/from16 v75, v0

    move-object/from16 v0, v75

    iget-object v0, v0, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->textColorLink:Landroid/content/res/ColorStateList;

    move-object/from16 v75, v0

    if-eqz v75, :cond_d

    .line 1388
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLeTextInfo:Lcom/letv/leui/text/LeTextOpt$LeTextInfo;

    move-object/from16 v75, v0

    move-object/from16 v0, v75

    iget-object v0, v0, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->textColorLink:Landroid/content/res/ColorStateList;

    move-object/from16 v70, v0

    .line 1389
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLeTextInfo:Lcom/letv/leui/text/LeTextOpt$LeTextInfo;

    move-object/from16 v75, v0

    move-object/from16 v0, v75

    iget v0, v0, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->mAutoLinkMask:I

    move/from16 v75, v0

    if-eqz v75, :cond_e

    .line 1390
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLeTextInfo:Lcom/letv/leui/text/LeTextOpt$LeTextInfo;

    move-object/from16 v75, v0

    move-object/from16 v0, v75

    iget v0, v0, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->mAutoLinkMask:I

    move/from16 v75, v0

    move/from16 v0, v75

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mAutoLinkMask:I

    .line 1395
    :cond_e
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v30

    move-object/from16 v3, v26

    move-object/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1397
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Landroid/widget/TextView;->setRelativeDrawablesIfNeeded(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1398
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 1402
    move-object/from16 v0, p0

    move/from16 v1, v63

    invoke-direct {v0, v1}, Landroid/widget/TextView;->setInputTypeSingleLine(Z)V

    .line 1403
    move-object/from16 v0, p0

    move/from16 v1, v63

    move/from16 v2, v63

    move/from16 v3, v63

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/TextView;->applySingleLine(ZZZ)V

    .line 1405
    if-eqz v63, :cond_f

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v75

    if-nez v75, :cond_f

    if-gez v38, :cond_f

    .line 1406
    const/16 v38, 0x3

    .line 1409
    :cond_f
    packed-switch v38, :pswitch_data_2

    .line 1431
    :goto_9
    if-eqz v67, :cond_2f

    :goto_a
    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1432
    move-object/from16 v0, p0

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHintTextColor(Landroid/content/res/ColorStateList;)V

    .line 1433
    move-object/from16 v0, p0

    move-object/from16 v1, v70

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLinkTextColor(Landroid/content/res/ColorStateList;)V

    .line 1434
    if-eqz v68, :cond_10

    .line 1435
    move-object/from16 v0, p0

    move/from16 v1, v68

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHighlightColor(I)V

    .line 1438
    :cond_10
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->isFontSizeEnlarge:Z

    move/from16 v75, v0

    if-eqz v75, :cond_30

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->hasUintSpWithStyle:Z

    move/from16 v75, v0

    :goto_b
    move/from16 v0, v75

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->isFontSizeEnlarge:Z

    .line 1439
    const-string/jumbo v75, "fontSizeenlarge"

    new-instance v76, Ljava/lang/StringBuilder;

    invoke-direct/range {v76 .. v76}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v77, " finally isFontSizeEnlarge = "

    invoke-virtual/range {v76 .. v77}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v76

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->hasUintSpWithStyle:Z

    move/from16 v77, v0

    invoke-virtual/range {v76 .. v77}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v76

    invoke-virtual/range {v76 .. v76}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v76

    invoke-static/range {v75 .. v76}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1440
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->isFontSizeEnlarge:Z

    move/from16 v75, v0

    if-eqz v75, :cond_11

    .line 1441
    new-instance v21, Landroid/util/DisplayMetrics;

    invoke-direct/range {v21 .. v21}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1442
    .local v21, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v75

    invoke-virtual/range {v75 .. v75}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v21

    .line 1443
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->textSize:I

    move/from16 v75, v0

    move/from16 v0, v75

    int-to-float v0, v0

    move/from16 v75, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->textSizeEnlargeMode:I

    move/from16 v76, v0

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v77

    move/from16 v0, v75

    move-object/from16 v1, v21

    move/from16 v2, v76

    move-object/from16 v3, v77

    invoke-static {v0, v1, v2, v3}, Lcom/letv/leui/util/LeTypedValue;->getLeCustomedTextSize(FLandroid/util/DisplayMetrics;ILandroid/content/res/Resources;)F

    move-result v65

    .line 1444
    .local v65, "temp":F
    const/high16 v75, 0x3f000000    # 0.5f

    add-float v75, v75, v65

    move/from16 v0, v75

    float-to-int v0, v0

    move/from16 v75, v0

    move/from16 v0, v75

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->textSize:I

    .line 1447
    .end local v21    # "dm":Landroid/util/DisplayMetrics;
    .end local v65    # "temp":F
    :cond_11
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->textSize:I

    move/from16 v75, v0

    move/from16 v0, v75

    int-to-float v0, v0

    move/from16 v75, v0

    move-object/from16 v0, p0

    move/from16 v1, v75

    invoke-direct {v0, v1}, Landroid/widget/TextView;->setRawTextSize(F)V

    .line 1448
    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setElegantTextHeight(Z)V

    .line 1449
    move-object/from16 v0, p0

    move/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLetterSpacing(F)V

    .line 1450
    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFontFeatureSettings(Ljava/lang/String;)V

    .line 1452
    if-eqz v7, :cond_12

    .line 1453
    new-instance v75, Landroid/text/method/AllCapsTransformationMethod;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v76

    invoke-direct/range {v75 .. v76}, Landroid/text/method/AllCapsTransformationMethod;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v75

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 1456
    :cond_12
    if-nez v56, :cond_13

    if-nez v57, :cond_13

    if-nez v74, :cond_13

    if-eqz v54, :cond_31

    .line 1457
    :cond_13
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v75

    move-object/from16 v0, p0

    move-object/from16 v1, v75

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 1458
    const/16 v72, 0x3

    .line 1465
    :cond_14
    :goto_c
    const/16 v75, -0x1

    move/from16 v0, v72

    move/from16 v1, v75

    if-eq v0, v1, :cond_15

    if-eqz v44, :cond_32

    .line 1468
    :cond_15
    :goto_d
    move-object/from16 v0, p0

    move-object/from16 v1, v43

    move/from16 v2, v72

    move/from16 v3, v64

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/TextView;->setTypefaceFromAttrs(Ljava/lang/String;II)V

    .line 1470
    if-eqz v62, :cond_16

    .line 1471
    move-object/from16 v0, p0

    move/from16 v1, v59

    move/from16 v2, v31

    move/from16 v3, v32

    move/from16 v4, v62

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 1474
    :cond_16
    if-ltz v52, :cond_33

    .line 1475
    const/16 v75, 0x1

    move/from16 v0, v75

    new-array v0, v0, [Landroid/text/InputFilter;

    move-object/from16 v75, v0

    new-instance v76, Landroid/text/InputFilter$LengthFilter;

    move-object/from16 v0, v76

    move/from16 v1, v52

    invoke-direct {v0, v1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/16 v77, 0x0

    aput-object v76, v75, v77

    move-object/from16 v0, p0

    move-object/from16 v1, v75

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 1477
    move/from16 v0, v52

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mMaxLength:I

    .line 1482
    :goto_e
    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-virtual {v0, v1, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 1483
    if-eqz v46, :cond_17

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 1491
    :cond_17
    sget-object v75, Lcom/android/internal/R$styleable;->View:[I

    .line 1490
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v75

    move/from16 v3, p3

    move/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 1493
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    move-object/from16 v75, v0

    if-nez v75, :cond_18

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v75

    if-eqz v75, :cond_34

    :cond_18
    const/16 v42, 0x1

    .line 1494
    .local v42, "focusable":Z
    :goto_f
    if-nez v42, :cond_35

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->isClickable()Z

    move-result v18

    .line 1495
    :goto_10
    if-nez v42, :cond_36

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->isLongClickable()Z

    move-result v51

    .line 1497
    :goto_11
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v53

    .line 1498
    const/16 v47, 0x0

    .end local v42    # "focusable":Z
    :goto_12
    move/from16 v0, v47

    move/from16 v1, v53

    if-ge v0, v1, :cond_37

    .line 1499
    move/from16 v0, v47

    invoke-virtual {v6, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v10

    .line 1501
    .restart local v10    # "attr":I
    sparse-switch v10, :sswitch_data_0

    .line 1498
    :goto_13
    add-int/lit8 v47, v47, 0x1

    goto :goto_12

    .line 1241
    .end local v10    # "attr":I
    .end local v54    # "numberPasswordInputType":Z
    .end local v57    # "passwordInputType":Z
    .end local v74    # "webPasswordInputType":Z
    :cond_19
    const/16 v57, 0x0

    .restart local v57    # "passwordInputType":Z
    goto/16 :goto_4

    .line 1243
    :cond_1a
    const/16 v74, 0x0

    .restart local v74    # "webPasswordInputType":Z
    goto/16 :goto_5

    .line 1245
    :cond_1b
    const/16 v54, 0x0

    .restart local v54    # "numberPasswordInputType":Z
    goto/16 :goto_6

    .line 1253
    :catch_2
    move-exception v39

    .line 1254
    .local v39, "ex":Ljava/lang/ClassNotFoundException;
    new-instance v75, Ljava/lang/RuntimeException;

    move-object/from16 v0, v75

    move-object/from16 v1, v39

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v75

    .line 1262
    .end local v39    # "ex":Ljava/lang/ClassNotFoundException;
    .restart local v16    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_3
    move-exception v40

    .line 1263
    .local v40, "ex":Ljava/lang/IllegalAccessException;
    new-instance v75, Ljava/lang/RuntimeException;

    move-object/from16 v0, v75

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v75

    .line 1260
    .end local v40    # "ex":Ljava/lang/IllegalAccessException;
    :catch_4
    move-exception v41

    .line 1261
    .local v41, "ex":Ljava/lang/InstantiationException;
    new-instance v75, Ljava/lang/RuntimeException;

    move-object/from16 v0, v75

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v75

    .line 1268
    .end local v41    # "ex":Ljava/lang/InstantiationException;
    :cond_1c
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move-object/from16 v75, v0

    move-object/from16 v0, v75

    iget-object v0, v0, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    move-object/from16 v75, v0

    invoke-interface/range {v75 .. v75}, Landroid/text/method/KeyListener;->getInputType()I
    :try_end_4
    .catch Ljava/lang/IncompatibleClassChangeError; {:try_start_4 .. :try_end_4} :catch_5

    move-result v75

    goto/16 :goto_7

    .line 1269
    :catch_5
    move-exception v34

    .line 1270
    .local v34, "e":Ljava/lang/IncompatibleClassChangeError;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move-object/from16 v75, v0

    const/16 v76, 0x1

    move/from16 v0, v76

    move-object/from16 v1, v75

    iput v0, v1, Landroid/widget/Editor;->mInputType:I

    goto/16 :goto_8

    .line 1272
    .end local v16    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v34    # "e":Ljava/lang/IncompatibleClassChangeError;
    :cond_1d
    if-eqz v20, :cond_1f

    .line 1273
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 1274
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move-object/from16 v75, v0

    invoke-interface/range {v20 .. v20}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v76

    invoke-static/range {v76 .. v76}, Landroid/text/method/DigitsKeyListener;->getInstance(Ljava/lang/String;)Landroid/text/method/DigitsKeyListener;

    move-result-object v76

    move-object/from16 v0, v76

    move-object/from16 v1, v75

    iput-object v0, v1, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    .line 1278
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move-object/from16 v76, v0

    if-eqz v49, :cond_1e

    move/from16 v75, v49

    :goto_14
    move/from16 v0, v75

    move-object/from16 v1, v76

    iput v0, v1, Landroid/widget/Editor;->mInputType:I

    goto/16 :goto_8

    .line 1279
    :cond_1e
    const/16 v75, 0x1

    goto :goto_14

    .line 1280
    :cond_1f
    if-eqz v49, :cond_21

    .line 1281
    const/16 v75, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v49

    move/from16 v2, v75

    invoke-direct {v0, v1, v2}, Landroid/widget/TextView;->setInputType(IZ)V

    .line 1283
    invoke-static/range {v49 .. v49}, Landroid/widget/TextView;->isMultilineInputType(I)Z

    move-result v75

    if-eqz v75, :cond_20

    const/16 v63, 0x0

    .local v63, "singleLine":Z
    goto/16 :goto_8

    .end local v63    # "singleLine":Z
    :cond_20
    const/16 v63, 0x1

    .restart local v63    # "singleLine":Z
    goto/16 :goto_8

    .line 1284
    .end local v63    # "singleLine":Z
    :cond_21
    if-eqz v58, :cond_22

    .line 1285
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 1286
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move-object/from16 v75, v0

    invoke-static {}, Landroid/text/method/DialerKeyListener;->getInstance()Landroid/text/method/DialerKeyListener;

    move-result-object v76

    move-object/from16 v0, v76

    move-object/from16 v1, v75

    iput-object v0, v1, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    .line 1287
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move-object/from16 v75, v0

    const/16 v49, 0x3

    const/16 v76, 0x3

    move/from16 v0, v76

    move-object/from16 v1, v75

    iput v0, v1, Landroid/widget/Editor;->mInputType:I

    goto/16 :goto_8

    .line 1288
    :cond_22
    if-eqz v55, :cond_27

    .line 1289
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 1290
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move-object/from16 v77, v0

    and-int/lit8 v75, v55, 0x2

    if-eqz v75, :cond_25

    const/16 v75, 0x1

    move/from16 v76, v75

    .line 1291
    :goto_15
    and-int/lit8 v75, v55, 0x4

    if-eqz v75, :cond_26

    const/16 v75, 0x1

    .line 1290
    :goto_16
    move/from16 v0, v76

    move/from16 v1, v75

    invoke-static {v0, v1}, Landroid/text/method/DigitsKeyListener;->getInstance(ZZ)Landroid/text/method/DigitsKeyListener;

    move-result-object v75

    move-object/from16 v0, v75

    move-object/from16 v1, v77

    iput-object v0, v1, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    .line 1292
    const/16 v49, 0x2

    .line 1293
    and-int/lit8 v75, v55, 0x2

    if-eqz v75, :cond_23

    .line 1294
    const/16 v49, 0x1002

    .line 1296
    :cond_23
    and-int/lit8 v75, v55, 0x4

    if-eqz v75, :cond_24

    .line 1297
    move/from16 v0, v49

    or-int/lit16 v0, v0, 0x2000

    move/from16 v49, v0

    .line 1299
    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move-object/from16 v75, v0

    move/from16 v0, v49

    move-object/from16 v1, v75

    iput v0, v1, Landroid/widget/Editor;->mInputType:I

    goto/16 :goto_8

    .line 1290
    :cond_25
    const/16 v75, 0x0

    move/from16 v76, v75

    goto :goto_15

    .line 1291
    :cond_26
    const/16 v75, 0x0

    goto :goto_16

    .line 1300
    :cond_27
    if-nez v12, :cond_28

    const/16 v75, -0x1

    move/from16 v0, v75

    if-eq v11, v0, :cond_29

    .line 1303
    :cond_28
    const/16 v49, 0x1

    .line 1305
    packed-switch v11, :pswitch_data_3

    .line 1322
    sget-object v17, Landroid/text/method/TextKeyListener$Capitalize;->NONE:Landroid/text/method/TextKeyListener$Capitalize;

    .line 1326
    .local v17, "cap":Landroid/text/method/TextKeyListener$Capitalize;
    :goto_17
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 1327
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move-object/from16 v75, v0

    move-object/from16 v0, v17

    invoke-static {v12, v0}, Landroid/text/method/TextKeyListener;->getInstance(ZLandroid/text/method/TextKeyListener$Capitalize;)Landroid/text/method/TextKeyListener;

    move-result-object v76

    move-object/from16 v0, v76

    move-object/from16 v1, v75

    iput-object v0, v1, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    .line 1328
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move-object/from16 v75, v0

    move/from16 v0, v49

    move-object/from16 v1, v75

    iput v0, v1, Landroid/widget/Editor;->mInputType:I

    goto/16 :goto_8

    .line 1307
    .end local v17    # "cap":Landroid/text/method/TextKeyListener$Capitalize;
    :pswitch_60
    sget-object v17, Landroid/text/method/TextKeyListener$Capitalize;->SENTENCES:Landroid/text/method/TextKeyListener$Capitalize;

    .line 1308
    .restart local v17    # "cap":Landroid/text/method/TextKeyListener$Capitalize;
    const/16 v49, 0x4001

    .line 1309
    goto :goto_17

    .line 1312
    .end local v17    # "cap":Landroid/text/method/TextKeyListener$Capitalize;
    :pswitch_61
    sget-object v17, Landroid/text/method/TextKeyListener$Capitalize;->WORDS:Landroid/text/method/TextKeyListener$Capitalize;

    .line 1313
    .restart local v17    # "cap":Landroid/text/method/TextKeyListener$Capitalize;
    const/16 v49, 0x2001

    .line 1314
    goto :goto_17

    .line 1317
    .end local v17    # "cap":Landroid/text/method/TextKeyListener$Capitalize;
    :pswitch_62
    sget-object v17, Landroid/text/method/TextKeyListener$Capitalize;->CHARACTERS:Landroid/text/method/TextKeyListener$Capitalize;

    .line 1318
    .restart local v17    # "cap":Landroid/text/method/TextKeyListener$Capitalize;
    const/16 v49, 0x1001

    .line 1319
    goto :goto_17

    .line 1329
    .end local v17    # "cap":Landroid/text/method/TextKeyListener$Capitalize;
    :cond_29
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->isTextSelectable()Z

    move-result v75

    if-eqz v75, :cond_2b

    .line 1331
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move-object/from16 v75, v0

    if-eqz v75, :cond_2a

    .line 1332
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move-object/from16 v75, v0

    const/16 v76, 0x0

    move-object/from16 v0, v76

    move-object/from16 v1, v75

    iput-object v0, v1, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    .line 1333
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move-object/from16 v75, v0

    const/16 v76, 0x0

    move/from16 v0, v76

    move-object/from16 v1, v75

    iput v0, v1, Landroid/widget/Editor;->mInputType:I

    .line 1335
    :cond_2a
    sget-object v14, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    .line 1337
    invoke-static {}, Landroid/text/method/ArrowKeyMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v75

    move-object/from16 v0, p0

    move-object/from16 v1, v75

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    goto/16 :goto_8

    .line 1338
    :cond_2b
    if-eqz v36, :cond_2c

    .line 1339
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 1340
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move-object/from16 v75, v0

    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v76

    move-object/from16 v0, v76

    move-object/from16 v1, v75

    iput-object v0, v1, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    .line 1341
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move-object/from16 v75, v0

    const/16 v76, 0x1

    move/from16 v0, v76

    move-object/from16 v1, v75

    iput v0, v1, Landroid/widget/Editor;->mInputType:I

    goto/16 :goto_8

    .line 1343
    :cond_2c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move-object/from16 v75, v0

    if-eqz v75, :cond_2d

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move-object/from16 v75, v0

    const/16 v76, 0x0

    move-object/from16 v0, v76

    move-object/from16 v1, v75

    iput-object v0, v1, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    .line 1345
    :cond_2d
    packed-switch v15, :pswitch_data_4

    goto/16 :goto_8

    .line 1347
    :pswitch_63
    sget-object v14, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    goto/16 :goto_8

    .line 1350
    :pswitch_64
    sget-object v14, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    goto/16 :goto_8

    .line 1353
    :pswitch_65
    sget-object v14, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    goto/16 :goto_8

    .line 1411
    :pswitch_66
    sget-object v75, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p0

    move-object/from16 v1, v75

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto/16 :goto_9

    .line 1414
    :pswitch_67
    sget-object v75, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p0

    move-object/from16 v1, v75

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto/16 :goto_9

    .line 1417
    :pswitch_68
    sget-object v75, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p0

    move-object/from16 v1, v75

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto/16 :goto_9

    .line 1420
    :pswitch_69
    invoke-static/range {p1 .. p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v75

    invoke-virtual/range {v75 .. v75}, Landroid/view/ViewConfiguration;->isFadingMarqueeEnabled()Z

    move-result v75

    if-eqz v75, :cond_2e

    .line 1421
    const/16 v75, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v75

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 1422
    const/16 v75, 0x0

    move/from16 v0, v75

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mMarqueeFadeMode:I

    .line 1427
    :goto_18
    sget-object v75, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p0

    move-object/from16 v1, v75

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto/16 :goto_9

    .line 1424
    :cond_2e
    const/16 v75, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v75

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 1425
    const/16 v75, 0x1

    move/from16 v0, v75

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mMarqueeFadeMode:I

    goto :goto_18

    .line 1431
    :cond_2f
    const/high16 v75, -0x1000000

    invoke-static/range {v75 .. v75}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v67

    goto/16 :goto_a

    .line 1438
    :cond_30
    const/16 v75, 0x0

    goto/16 :goto_b

    .line 1459
    :cond_31
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move-object/from16 v75, v0

    if-eqz v75, :cond_14

    .line 1460
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move-object/from16 v75, v0

    move-object/from16 v0, v75

    iget v0, v0, Landroid/widget/Editor;->mInputType:I

    move/from16 v75, v0

    move/from16 v0, v75

    and-int/lit16 v0, v0, 0xfff

    move/from16 v75, v0

    .line 1461
    const/16 v76, 0x81

    .line 1460
    move/from16 v0, v75

    move/from16 v1, v76

    if-ne v0, v1, :cond_14

    .line 1462
    const/16 v72, 0x3

    goto/16 :goto_c

    .line 1466
    :cond_32
    const/16 v43, 0x0

    .local v43, "fontFamily":Ljava/lang/String;
    goto/16 :goto_d

    .line 1479
    .end local v43    # "fontFamily":Ljava/lang/String;
    :cond_33
    sget-object v75, Landroid/widget/TextView;->NO_FILTERS:[Landroid/text/InputFilter;

    move-object/from16 v0, p0

    move-object/from16 v1, v75

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    goto/16 :goto_e

    .line 1493
    :cond_34
    const/16 v42, 0x0

    .restart local v42    # "focusable":Z
    goto/16 :goto_f

    .line 1494
    :cond_35
    const/16 v18, 0x1

    .local v18, "clickable":Z
    goto/16 :goto_10

    .line 1495
    .end local v18    # "clickable":Z
    :cond_36
    const/16 v51, 0x1

    .local v51, "longClickable":Z
    goto/16 :goto_11

    .line 1503
    .end local v42    # "focusable":Z
    .end local v51    # "longClickable":Z
    .restart local v10    # "attr":I
    :sswitch_0
    move/from16 v0, v42

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v42

    .local v42, "focusable":Z
    goto/16 :goto_13

    .line 1507
    .end local v42    # "focusable":Z
    :sswitch_1
    move/from16 v0, v18

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v18

    .local v18, "clickable":Z
    goto/16 :goto_13

    .line 1511
    .end local v18    # "clickable":Z
    :sswitch_2
    move/from16 v0, v51

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v51

    .local v51, "longClickable":Z
    goto/16 :goto_13

    .line 1515
    .end local v10    # "attr":I
    .end local v51    # "longClickable":Z
    :cond_37
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 1517
    move-object/from16 v0, p0

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 1518
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 1519
    move-object/from16 v0, p0

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLongClickable(Z)V

    .line 1521
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move-object/from16 v75, v0

    if-eqz v75, :cond_38

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move-object/from16 v75, v0

    invoke-virtual/range {v75 .. v75}, Landroid/widget/Editor;->prepareCursorControllers()V

    .line 1524
    :cond_38
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getImportantForAccessibility()I

    move-result v75

    if-nez v75, :cond_39

    .line 1525
    const/16 v75, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v75

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setImportantForAccessibility(I)V

    .line 707
    :cond_39
    return-void

    .line 780
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_8
        :pswitch_6
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch

    .line 885
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_41
        :pswitch_10
        :pswitch_46
        :pswitch_47
        :pswitch_48
        :pswitch_43
        :pswitch_42
        :pswitch_44
        :pswitch_45
        :pswitch_36
        :pswitch_31
        :pswitch_1a
        :pswitch_1b
        :pswitch_2c
        :pswitch_26
        :pswitch_30
        :pswitch_2a
        :pswitch_18
        :pswitch_33
        :pswitch_32
        :pswitch_3b
        :pswitch_39
        :pswitch_25
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2b
        :pswitch_2d
        :pswitch_2e
        :pswitch_2f
        :pswitch_34
        :pswitch_4a
        :pswitch_35
        :pswitch_19
        :pswitch_38
        :pswitch_3a
        :pswitch_3d
        :pswitch_3e
        :pswitch_3f
        :pswitch_40
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_12
        :pswitch_17
        :pswitch_16
        :pswitch_11
        :pswitch_3c
        :pswitch_1d
        :pswitch_1f
        :pswitch_1c
        :pswitch_1e
        :pswitch_24
        :pswitch_4b
        :pswitch_4c
        :pswitch_37
        :pswitch_4d
        :pswitch_52
        :pswitch_53
        :pswitch_4f
        :pswitch_50
        :pswitch_51
        :pswitch_55
        :pswitch_56
        :pswitch_57
        :pswitch_10
        :pswitch_10
        :pswitch_59
        :pswitch_10
        :pswitch_10
        :pswitch_54
        :pswitch_58
        :pswitch_5a
        :pswitch_20
        :pswitch_21
        :pswitch_49
        :pswitch_5b
        :pswitch_5c
        :pswitch_5d
        :pswitch_22
        :pswitch_23
        :pswitch_5e
        :pswitch_5f
        :pswitch_4e
    .end packed-switch

    .line 1409
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_66
        :pswitch_67
        :pswitch_68
        :pswitch_69
    .end packed-switch

    .line 1501
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x1e -> :sswitch_1
        0x1f -> :sswitch_2
    .end sparse-switch

    .line 1305
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_60
        :pswitch_61
        :pswitch_62
    .end packed-switch

    .line 1345
    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_63
        :pswitch_64
        :pswitch_65
    .end packed-switch
.end method

.method private applyCompoundDrawableTint()V
    .locals 10

    .prologue
    .line 2721
    iget-object v6, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-nez v6, :cond_0

    .line 2722
    return-void

    .line 2725
    :cond_0
    iget-object v6, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-boolean v6, v6, Landroid/widget/TextView$Drawables;->mHasTint:Z

    if-nez v6, :cond_1

    iget-object v6, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-boolean v6, v6, Landroid/widget/TextView$Drawables;->mHasTintMode:Z

    if-eqz v6, :cond_6

    .line 2726
    :cond_1
    iget-object v6, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v4, v6, Landroid/widget/TextView$Drawables;->mTintList:Landroid/content/res/ColorStateList;

    .line 2727
    .local v4, "tintList":Landroid/content/res/ColorStateList;
    iget-object v6, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v5, v6, Landroid/widget/TextView$Drawables;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 2728
    .local v5, "tintMode":Landroid/graphics/PorterDuff$Mode;
    iget-object v6, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-boolean v1, v6, Landroid/widget/TextView$Drawables;->mHasTint:Z

    .line 2729
    .local v1, "hasTint":Z
    iget-object v6, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-boolean v2, v6, Landroid/widget/TextView$Drawables;->mHasTintMode:Z

    .line 2730
    .local v2, "hasTintMode":Z
    invoke-virtual {p0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v3

    .line 2732
    .local v3, "state":[I
    iget-object v6, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v7, v6, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    const/4 v6, 0x0

    array-length v8, v7

    :goto_0
    if-ge v6, v8, :cond_6

    aget-object v0, v7, v6

    .line 2733
    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_3

    .line 2732
    :cond_2
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 2737
    :cond_3
    iget-object v9, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v9, v9, Landroid/widget/TextView$Drawables;->mDrawableError:Landroid/graphics/drawable/Drawable;

    if-eq v0, v9, :cond_2

    .line 2744
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 2746
    if-eqz v1, :cond_4

    .line 2747
    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 2750
    :cond_4
    if-eqz v2, :cond_5

    .line 2751
    invoke-virtual {v0, v5}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 2756
    :cond_5
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 2757
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_1

    .line 2720
    .end local v0    # "dr":Landroid/graphics/drawable/Drawable;
    .end local v1    # "hasTint":Z
    .end local v2    # "hasTintMode":Z
    .end local v3    # "state":[I
    .end local v4    # "tintList":Landroid/content/res/ColorStateList;
    .end local v5    # "tintMode":Landroid/graphics/PorterDuff$Mode;
    :cond_6
    return-void
.end method

.method private applySingleLine(ZZZ)V
    .locals 1
    .param p1, "singleLine"    # Z
    .param p2, "applyTransformation"    # Z
    .param p3, "changeMaxLines"    # Z

    .prologue
    const/4 v0, 0x1

    .line 8185
    iput-boolean p1, p0, Landroid/widget/TextView;->mSingleLine:Z

    .line 8186
    if-eqz p1, :cond_1

    .line 8187
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setLines(I)V

    .line 8188
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    .line 8189
    if-eqz p2, :cond_0

    .line 8190
    invoke-static {}, Landroid/text/method/SingleLineTransformationMethod;->getInstance()Landroid/text/method/SingleLineTransformationMethod;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 8184
    :cond_0
    :goto_0
    return-void

    .line 8193
    :cond_1
    if-eqz p3, :cond_2

    .line 8194
    const v0, 0x7fffffff

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 8196
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    .line 8197
    if-eqz p2, :cond_0

    .line 8198
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    goto :goto_0
.end method

.method private assumeLayout()V
    .locals 7

    .prologue
    .line 6758
    iget v0, p0, Landroid/widget/TextView;->mRight:I

    iget v3, p0, Landroid/widget/TextView;->mLeft:I

    sub-int/2addr v0, v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v3

    sub-int/2addr v0, v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v3

    sub-int v1, v0, v3

    .line 6760
    .local v1, "width":I
    const/4 v0, 0x1

    if-ge v1, v0, :cond_0

    .line 6761
    const/4 v1, 0x0

    .line 6764
    :cond_0
    move v2, v1

    .line 6766
    .local v2, "physicalWidth":I
    iget-boolean v0, p0, Landroid/widget/TextView;->mHorizontallyScrolling:Z

    if-eqz v0, :cond_1

    .line 6767
    const/high16 v1, 0x100000

    .line 6770
    :cond_1
    sget-object v3, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    sget-object v4, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    .line 6771
    const/4 v6, 0x0

    move-object v0, p0

    move v5, v2

    .line 6770
    invoke-virtual/range {v0 .. v6}, Landroid/widget/TextView;->makeNewLayout(IILandroid/text/BoringLayout$Metrics;Landroid/text/BoringLayout$Metrics;IZ)V

    .line 6757
    return-void
.end method

.method private bringTextIntoView()Z
    .locals 14

    .prologue
    .line 7662
    invoke-direct {p0}, Landroid/widget/TextView;->isShowingHint()Z

    move-result v11

    if-eqz v11, :cond_3

    iget-object v4, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    .line 7663
    .local v4, "layout":Landroid/text/Layout;
    :goto_0
    const/4 v6, 0x0

    .line 7664
    .local v6, "line":I
    iget v11, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v11, v11, 0x70

    const/16 v12, 0x50

    if-ne v11, v12, :cond_0

    .line 7665
    invoke-virtual {v4}, Landroid/text/Layout;->getLineCount()I

    move-result v11

    add-int/lit8 v6, v11, -0x1

    .line 7668
    :cond_0
    invoke-virtual {v4, v6}, Landroid/text/Layout;->getParagraphAlignment(I)Landroid/text/Layout$Alignment;

    move-result-object v0

    .line 7669
    .local v0, "a":Landroid/text/Layout$Alignment;
    invoke-virtual {v4, v6}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v1

    .line 7670
    .local v1, "dir":I
    iget v11, p0, Landroid/widget/TextView;->mRight:I

    iget v12, p0, Landroid/widget/TextView;->mLeft:I

    sub-int/2addr v11, v12

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v12

    sub-int/2addr v11, v12

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v12

    sub-int v2, v11, v12

    .line 7671
    .local v2, "hspace":I
    iget v11, p0, Landroid/widget/TextView;->mBottom:I

    iget v12, p0, Landroid/widget/TextView;->mTop:I

    sub-int/2addr v11, v12

    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v12

    sub-int/2addr v11, v12

    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingBottom()I

    move-result v12

    sub-int v10, v11, v12

    .line 7672
    .local v10, "vspace":I
    invoke-virtual {v4}, Landroid/text/Layout;->getHeight()I

    move-result v3

    .line 7677
    .local v3, "ht":I
    sget-object v11, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    if-ne v0, v11, :cond_5

    .line 7678
    const/4 v11, 0x1

    if-ne v1, v11, :cond_4

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    .line 7685
    :cond_1
    :goto_1
    sget-object v11, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    if-ne v0, v11, :cond_9

    .line 7691
    invoke-virtual {v4, v6}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v11

    float-to-double v12, v11

    invoke-static {v12, v13}, Ljava/lang/Math;->floor(D)D

    move-result-wide v12

    double-to-int v5, v12

    .line 7692
    .local v5, "left":I
    invoke-virtual {v4, v6}, Landroid/text/Layout;->getLineRight(I)F

    move-result v11

    float-to-double v12, v11

    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v12

    double-to-int v7, v12

    .line 7694
    .local v7, "right":I
    sub-int v11, v7, v5

    if-ge v11, v2, :cond_7

    .line 7695
    add-int v11, v7, v5

    div-int/lit8 v11, v11, 0x2

    div-int/lit8 v12, v2, 0x2

    sub-int v8, v11, v12

    .line 7710
    .end local v5    # "left":I
    .end local v7    # "right":I
    .local v8, "scrollx":I
    :goto_2
    if-ge v3, v10, :cond_b

    .line 7711
    const/4 v9, 0x0

    .line 7720
    .local v9, "scrolly":I
    :goto_3
    iget v11, p0, Landroid/widget/TextView;->mScrollX:I

    if-ne v8, v11, :cond_2

    iget v11, p0, Landroid/widget/TextView;->mScrollY:I

    if-eq v9, v11, :cond_d

    .line 7721
    :cond_2
    invoke-virtual {p0, v8, v9}, Landroid/widget/TextView;->scrollTo(II)V

    .line 7722
    const/4 v11, 0x1

    return v11

    .line 7662
    .end local v0    # "a":Landroid/text/Layout$Alignment;
    .end local v1    # "dir":I
    .end local v2    # "hspace":I
    .end local v3    # "ht":I
    .end local v4    # "layout":Landroid/text/Layout;
    .end local v6    # "line":I
    .end local v8    # "scrollx":I
    .end local v9    # "scrolly":I
    .end local v10    # "vspace":I
    :cond_3
    iget-object v4, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .restart local v4    # "layout":Landroid/text/Layout;
    goto :goto_0

    .line 7679
    .restart local v0    # "a":Landroid/text/Layout$Alignment;
    .restart local v1    # "dir":I
    .restart local v2    # "hspace":I
    .restart local v3    # "ht":I
    .restart local v6    # "line":I
    .restart local v10    # "vspace":I
    :cond_4
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    goto :goto_1

    .line 7680
    :cond_5
    sget-object v11, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    if-ne v0, v11, :cond_1

    .line 7681
    const/4 v11, 0x1

    if-ne v1, v11, :cond_6

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    goto :goto_1

    .line 7682
    :cond_6
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    goto :goto_1

    .line 7697
    .restart local v5    # "left":I
    .restart local v7    # "right":I
    :cond_7
    if-gez v1, :cond_8

    .line 7698
    sub-int v8, v7, v2

    .restart local v8    # "scrollx":I
    goto :goto_2

    .line 7700
    .end local v8    # "scrollx":I
    :cond_8
    move v8, v5

    .restart local v8    # "scrollx":I
    goto :goto_2

    .line 7703
    .end local v5    # "left":I
    .end local v7    # "right":I
    .end local v8    # "scrollx":I
    :cond_9
    sget-object v11, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    if-ne v0, v11, :cond_a

    .line 7704
    invoke-virtual {v4, v6}, Landroid/text/Layout;->getLineRight(I)F

    move-result v11

    float-to-double v12, v11

    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v12

    double-to-int v7, v12

    .line 7705
    .restart local v7    # "right":I
    sub-int v8, v7, v2

    .restart local v8    # "scrollx":I
    goto :goto_2

    .line 7707
    .end local v7    # "right":I
    .end local v8    # "scrollx":I
    :cond_a
    invoke-virtual {v4, v6}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v11

    float-to-double v12, v11

    invoke-static {v12, v13}, Ljava/lang/Math;->floor(D)D

    move-result-wide v12

    double-to-int v8, v12

    .restart local v8    # "scrollx":I
    goto :goto_2

    .line 7713
    :cond_b
    iget v11, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v11, v11, 0x70

    const/16 v12, 0x50

    if-ne v11, v12, :cond_c

    .line 7714
    sub-int v9, v3, v10

    .restart local v9    # "scrolly":I
    goto :goto_3

    .line 7716
    .end local v9    # "scrolly":I
    :cond_c
    const/4 v9, 0x0

    .restart local v9    # "scrolly":I
    goto :goto_3

    .line 7724
    :cond_d
    const/4 v11, 0x0

    return v11
.end method

.method private canMarquee()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 8318
    iget v3, p0, Landroid/widget/TextView;->mRight:I

    iget v4, p0, Landroid/widget/TextView;->mLeft:I

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v4

    sub-int v0, v3, v4

    .line 8319
    .local v0, "width":I
    if-lez v0, :cond_3

    iget-object v3, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v3, v2}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v3

    int-to-float v4, v0

    cmpl-float v3, v3, v4

    if-gtz v3, :cond_0

    .line 8320
    iget v3, p0, Landroid/widget/TextView;->mMarqueeFadeMode:I

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/widget/TextView;->mSavedMarqueeModeLayout:Landroid/text/Layout;

    if-eqz v3, :cond_2

    .line 8321
    iget-object v3, p0, Landroid/widget/TextView;->mSavedMarqueeModeLayout:Landroid/text/Layout;

    invoke-virtual {v3, v2}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v3

    int-to-float v4, v0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    .line 8319
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v2

    .line 8321
    goto :goto_0

    :cond_2
    move v1, v2

    .line 8320
    goto :goto_0

    :cond_3
    move v1, v2

    .line 8319
    goto :goto_0
.end method

.method private checkForRelayout()V
    .locals 9

    .prologue
    const/4 v8, -0x2

    .line 7578
    iget-object v0, p0, Landroid/widget/TextView;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v0, v8, :cond_0

    .line 7579
    iget v0, p0, Landroid/widget/TextView;->mMaxWidthMode:I

    iget v3, p0, Landroid/widget/TextView;->mMinWidthMode:I

    if-ne v0, v3, :cond_6

    iget v0, p0, Landroid/widget/TextView;->mMaxWidth:I

    iget v3, p0, Landroid/widget/TextView;->mMinWidth:I

    if-ne v0, v3, :cond_6

    .line 7580
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    if-eqz v0, :cond_6

    .line 7581
    :cond_1
    iget v0, p0, Landroid/widget/TextView;->mRight:I

    iget v3, p0, Landroid/widget/TextView;->mLeft:I

    sub-int/2addr v0, v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v3

    sub-int/2addr v0, v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v3

    sub-int/2addr v0, v3

    if-lez v0, :cond_6

    .line 7584
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v7

    .line 7585
    .local v7, "oldht":I
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getWidth()I

    move-result v1

    .line 7586
    .local v1, "want":I
    iget-object v0, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    if-nez v0, :cond_2

    const/4 v2, 0x0

    .line 7598
    .local v2, "hintWant":I
    :goto_0
    sget-object v3, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    sget-object v4, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    .line 7599
    iget v0, p0, Landroid/widget/TextView;->mRight:I

    iget v5, p0, Landroid/widget/TextView;->mLeft:I

    sub-int/2addr v0, v5

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v5

    sub-int/2addr v0, v5

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v5

    sub-int v5, v0, v5

    .line 7600
    const/4 v6, 0x1

    move-object v0, p0

    .line 7598
    invoke-virtual/range {v0 .. v6}, Landroid/widget/TextView;->makeNewLayout(IILandroid/text/BoringLayout$Metrics;Landroid/text/BoringLayout$Metrics;IZ)V

    .line 7602
    iget-object v0, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-eq v0, v3, :cond_5

    .line 7604
    iget-object v0, p0, Landroid/widget/TextView;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v0, v8, :cond_3

    .line 7605
    iget-object v0, p0, Landroid/widget/TextView;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_3

    .line 7606
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 7607
    return-void

    .line 7586
    .end local v2    # "hintWant":I
    :cond_2
    iget-object v0, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getWidth()I

    move-result v2

    .restart local v2    # "hintWant":I
    goto :goto_0

    .line 7612
    :cond_3
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v0

    if-ne v0, v7, :cond_5

    .line 7613
    iget-object v0, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v0

    if-ne v0, v7, :cond_5

    .line 7614
    :cond_4
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 7615
    return-void

    .line 7621
    :cond_5
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 7622
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 7574
    .end local v1    # "want":I
    .end local v2    # "hintWant":I
    .end local v7    # "oldht":I
    :goto_1
    return-void

    .line 7626
    :cond_6
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    .line 7627
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 7628
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    goto :goto_1
.end method

.method private checkForResize()V
    .locals 4

    .prologue
    const/4 v3, -0x2

    .line 7537
    const/4 v1, 0x0

    .line 7539
    .local v1, "sizeChanged":Z
    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v2, :cond_1

    .line 7541
    iget-object v2, p0, Landroid/widget/TextView;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v2, v3, :cond_0

    .line 7542
    const/4 v1, 0x1

    .line 7543
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 7547
    :cond_0
    iget-object v2, p0, Landroid/widget/TextView;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v2, v3, :cond_3

    .line 7548
    invoke-direct {p0}, Landroid/widget/TextView;->getDesiredHeight()I

    move-result v0

    .line 7550
    .local v0, "desiredHeight":I
    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v2

    if-eq v0, v2, :cond_1

    .line 7551
    const/4 v1, 0x1

    .line 7564
    .end local v0    # "desiredHeight":I
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 7565
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 7536
    :cond_2
    return-void

    .line 7553
    :cond_3
    iget-object v2, p0, Landroid/widget/TextView;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 7554
    iget v2, p0, Landroid/widget/TextView;->mDesiredHeightAtMeasure:I

    if-ltz v2, :cond_1

    .line 7555
    invoke-direct {p0}, Landroid/widget/TextView;->getDesiredHeight()I

    move-result v0

    .line 7557
    .restart local v0    # "desiredHeight":I
    iget v2, p0, Landroid/widget/TextView;->mDesiredHeightAtMeasure:I

    if-eq v0, v2, :cond_1

    .line 7558
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private compressText(F)Z
    .locals 7
    .param p1, "width"    # F

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    .line 7040
    invoke-virtual {p0}, Landroid/widget/TextView;->isHardwareAccelerated()Z

    move-result v2

    if-eqz v2, :cond_0

    return v4

    .line 7043
    :cond_0
    cmpl-float v2, p1, v5

    if-lez v2, :cond_1

    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->getLineCount()I

    move-result v2

    if-ne v2, v6, :cond_1

    iget-boolean v2, p0, Landroid/widget/TextView;->mUserSetTextScaleX:Z

    if-eqz v2, :cond_2

    .line 7058
    :cond_1
    return v4

    .line 7044
    :cond_2
    iget-object v2, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->getTextScaleX()F

    move-result v2

    cmpl-float v2, v2, v3

    if-nez v2, :cond_1

    .line 7045
    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2, v4}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v1

    .line 7046
    .local v1, "textWidth":F
    add-float v2, v1, v3

    sub-float/2addr v2, p1

    div-float v0, v2, p1

    .line 7047
    .local v0, "overflow":F
    cmpl-float v2, v0, v5

    if-lez v2, :cond_1

    const v2, 0x3d8f5c29    # 0.07f

    cmpg-float v2, v0, v2

    if-gtz v2, :cond_1

    .line 7048
    iget-object v2, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    sub-float/2addr v3, v0

    const v4, 0x3ba3d70a    # 0.005f

    sub-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextScaleX(F)V

    .line 7049
    new-instance v2, Landroid/widget/TextView$2;

    invoke-direct {v2, p0}, Landroid/widget/TextView$2;-><init>(Landroid/widget/TextView;)V

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    .line 7054
    return v6
.end method

.method private convertFromViewportToContentCoordinates(Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "r"    # Landroid/graphics/Rect;

    .prologue
    .line 8032
    invoke-virtual {p0}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result v0

    .line 8033
    .local v0, "horizontalOffset":I
    iget v2, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v0

    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 8034
    iget v2, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v0

    iput v2, p1, Landroid/graphics/Rect;->right:I

    .line 8036
    invoke-virtual {p0}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v1

    .line 8037
    .local v1, "verticalOffset":I
    iget v2, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v1

    iput v2, p1, Landroid/graphics/Rect;->top:I

    .line 8038
    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v1

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    .line 8031
    return-void
.end method

.method private createEditorIfNeeded()V
    .locals 1

    .prologue
    .line 10268
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-nez v0, :cond_0

    .line 10269
    new-instance v0, Landroid/widget/Editor;

    invoke-direct {v0, p0}, Landroid/widget/Editor;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    .line 10267
    :cond_0
    return-void
.end method

.method private static desired(Landroid/text/Layout;)I
    .locals 6
    .param p0, "layout"    # Landroid/text/Layout;

    .prologue
    .line 7062
    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v2

    .line 7063
    .local v2, "n":I
    invoke-virtual {p0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    .line 7064
    .local v3, "text":Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .line 7069
    .local v1, "max":F
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    add-int/lit8 v4, v2, -0x1

    if-ge v0, v4, :cond_1

    .line 7070
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v3, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/16 v5, 0xa

    if-eq v4, v5, :cond_0

    .line 7071
    const/4 v4, -0x1

    return v4

    .line 7069
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7074
    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_2

    .line 7075
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 7074
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 7078
    :cond_2
    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    return v4
.end method

.method private doKeyDown(ILandroid/view/KeyEvent;Landroid/view/KeyEvent;)I
    .locals 8
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "otherEvent"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v7, 0x1

    const/4 v4, -0x1

    const/4 v5, 0x0

    .line 6255
    invoke-virtual {p0}, Landroid/widget/TextView;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 6256
    return v5

    .line 6264
    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-nez v3, :cond_1

    invoke-static {p1}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 6268
    :cond_1
    :goto_0
    sparse-switch p1, :sswitch_data_0

    .line 6325
    :cond_2
    iget-object v3, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v3, :cond_a

    iget-object v3, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v3, v3, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    if-eqz v3, :cond_a

    .line 6326
    const/4 v0, 0x1

    .line 6327
    .local v0, "doDown":Z
    if-eqz p3, :cond_9

    .line 6329
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/TextView;->beginBatchEdit()V

    .line 6330
    iget-object v3, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v6, v3, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v3, Landroid/text/Editable;

    invoke-interface {v6, p0, v3, p3}, Landroid/text/method/KeyListener;->onKeyOther(Landroid/view/View;Landroid/text/Editable;Landroid/view/KeyEvent;)Z

    move-result v2

    .line 6332
    .local v2, "handled":Z
    invoke-virtual {p0}, Landroid/widget/TextView;->hideErrorIfUnchanged()V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6333
    const/4 v0, 0x0

    .line 6334
    if-eqz v2, :cond_8

    .line 6341
    invoke-virtual {p0}, Landroid/widget/TextView;->endBatchEdit()V

    .line 6335
    return v4

    .line 6265
    .end local v0    # "doDown":Z
    .end local v2    # "handled":Z
    :cond_3
    iput-boolean v5, p0, Landroid/widget/TextView;->mPreventDefaultMovement:Z

    goto :goto_0

    .line 6270
    :sswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 6275
    iget-object v3, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v3, :cond_4

    iget-object v3, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v3, v3, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    if-eqz v3, :cond_4

    .line 6278
    iget-object v3, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v3, v3, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget-object v3, v3, Landroid/widget/Editor$InputContentType;->onEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    if-eqz v3, :cond_4

    .line 6279
    iget-object v3, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v3, v3, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget-object v3, v3, Landroid/widget/Editor$InputContentType;->onEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-interface {v3, p0, v5, p2}, Landroid/widget/TextView$OnEditorActionListener;->onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result v3

    .line 6278
    if-eqz v3, :cond_4

    .line 6281
    iget-object v3, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v3, v3, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iput-boolean v7, v3, Landroid/widget/Editor$InputContentType;->enterDown:Z

    .line 6283
    return v4

    .line 6290
    :cond_4
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v3

    and-int/lit8 v3, v3, 0x10

    if-nez v3, :cond_5

    .line 6291
    invoke-direct {p0}, Landroid/widget/TextView;->shouldAdvanceFocusOnEnter()Z

    move-result v3

    .line 6290
    if-eqz v3, :cond_2

    .line 6292
    :cond_5
    invoke-virtual {p0}, Landroid/widget/TextView;->hasOnClickListeners()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 6293
    return v5

    .line 6295
    :cond_6
    return v4

    .line 6301
    :sswitch_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 6302
    invoke-direct {p0}, Landroid/widget/TextView;->shouldAdvanceFocusOnEnter()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 6303
    return v5

    .line 6309
    :sswitch_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v3

    if-nez v3, :cond_7

    invoke-virtual {p2, v7}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 6310
    :cond_7
    invoke-direct {p0}, Landroid/widget/TextView;->shouldAdvanceFocusOnTab()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 6311
    return v5

    .line 6318
    :sswitch_3
    iget-object v3, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v3, v3, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    if-eqz v3, :cond_2

    .line 6319
    invoke-virtual {p0}, Landroid/widget/TextView;->stopTextActionMode()V

    .line 6320
    return v4

    .line 6341
    .restart local v0    # "doDown":Z
    .restart local v2    # "handled":Z
    :cond_8
    invoke-virtual {p0}, Landroid/widget/TextView;->endBatchEdit()V

    .line 6345
    .end local v2    # "handled":Z
    :cond_9
    :goto_1
    if-eqz v0, :cond_a

    .line 6346
    invoke-virtual {p0}, Landroid/widget/TextView;->beginBatchEdit()V

    .line 6347
    iget-object v3, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v6, v3, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v3, Landroid/text/Editable;

    invoke-interface {v6, p0, v3, p1, p2}, Landroid/text/method/KeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v2

    .line 6349
    .restart local v2    # "handled":Z
    invoke-virtual {p0}, Landroid/widget/TextView;->endBatchEdit()V

    .line 6350
    invoke-virtual {p0}, Landroid/widget/TextView;->hideErrorIfUnchanged()V

    .line 6351
    if-eqz v2, :cond_a

    return v7

    .line 6337
    .end local v2    # "handled":Z
    :catch_0
    move-exception v1

    .line 6341
    .local v1, "e":Ljava/lang/AbstractMethodError;
    invoke-virtual {p0}, Landroid/widget/TextView;->endBatchEdit()V

    goto :goto_1

    .line 6340
    .end local v1    # "e":Ljava/lang/AbstractMethodError;
    :catchall_0
    move-exception v3

    .line 6341
    invoke-virtual {p0}, Landroid/widget/TextView;->endBatchEdit()V

    .line 6340
    throw v3

    .line 6358
    .end local v0    # "doDown":Z
    :cond_a
    iget-object v3, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v3, :cond_e

    iget-object v3, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v3, :cond_e

    .line 6359
    const/4 v0, 0x1

    .line 6360
    .restart local v0    # "doDown":Z
    if-eqz p3, :cond_b

    .line 6362
    :try_start_1
    iget-object v6, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v3, Landroid/text/Spannable;

    invoke-interface {v6, p0, v3, p3}, Landroid/text/method/MovementMethod;->onKeyOther(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/KeyEvent;)Z
    :try_end_1
    .catch Ljava/lang/AbstractMethodError; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    .line 6364
    .restart local v2    # "handled":Z
    const/4 v0, 0x0

    .line 6365
    if-eqz v2, :cond_b

    .line 6366
    return v4

    .line 6368
    .end local v2    # "handled":Z
    :catch_1
    move-exception v1

    .line 6373
    :cond_b
    if-eqz v0, :cond_e

    .line 6374
    iget-object v6, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v3, Landroid/text/Spannable;

    invoke-interface {v6, p0, v3, p1, p2}, Landroid/text/method/MovementMethod;->onKeyDown(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 6375
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-nez v3, :cond_c

    invoke-static {p1}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 6378
    :cond_c
    :goto_2
    const/4 v3, 0x2

    return v3

    .line 6376
    :cond_d
    iput-boolean v7, p0, Landroid/widget/TextView;->mPreventDefaultMovement:Z

    goto :goto_2

    .line 6383
    .end local v0    # "doDown":Z
    :cond_e
    iget-boolean v3, p0, Landroid/widget/TextView;->mPreventDefaultMovement:Z

    if-eqz v3, :cond_f

    invoke-static {p1}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    move-result v3

    if-eqz v3, :cond_10

    :cond_f
    move v3, v5

    :goto_3
    return v3

    :cond_10
    move v3, v4

    goto :goto_3

    .line 6268
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_3
        0x17 -> :sswitch_1
        0x3d -> :sswitch_2
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method private doSmartFit(I)V
    .locals 10
    .param p1, "measuredWidth"    # I

    .prologue
    const/4 v9, 0x0

    .line 7401
    iget-object v6, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v6}, Landroid/text/Layout;->getLineCount()I

    move-result v6

    mul-int/2addr v6, p1

    int-to-float v1, v6

    .line 7402
    .local v1, "targetWidth":F
    iget-object v6, p0, Landroid/widget/TextView;->mSmartFitPaint:Landroid/graphics/Paint;

    iget-object v7, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    iget-object v8, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v8

    invoke-virtual {v6, v7, v9, v8}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v5

    .line 7403
    .local v5, "textWidth":F
    const/high16 v3, 0x40000000    # 2.0f

    .line 7404
    .local v3, "textSizeLow":F
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    .line 7405
    .local v2, "textSizeHigh":F
    move v4, v2

    .line 7409
    .local v4, "textSizeOrigin":F
    cmpg-float v6, v5, v1

    if-gtz v6, :cond_1

    .line 7410
    iget-object v6, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Landroid/widget/TextView;->preText:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 7411
    iget v6, p0, Landroid/widget/TextView;->textSize:I

    int-to-float v6, v6

    invoke-direct {p0, v6}, Landroid/widget/TextView;->setRawTextSize(F)V

    .line 7413
    :cond_0
    return-void

    .line 7418
    :cond_1
    :goto_0
    sub-float v6, v2, v3

    .line 7406
    const/high16 v7, 0x3f000000    # 0.5f

    .line 7418
    cmpl-float v6, v6, v7

    if-lez v6, :cond_3

    .line 7419
    add-float v6, v2, v3

    const/high16 v7, 0x40000000    # 2.0f

    div-float v0, v6, v7

    .line 7420
    .local v0, "size":F
    iget-object v6, p0, Landroid/widget/TextView;->mSmartFitPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 7421
    iget-object v6, p0, Landroid/widget/TextView;->mSmartFitPaint:Landroid/graphics/Paint;

    iget-object v7, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    iget-object v8, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v8

    invoke-virtual {v6, v7, v9, v8}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v5

    .line 7422
    cmpl-float v6, v5, v1

    if-lez v6, :cond_2

    .line 7423
    move v2, v0

    goto :goto_0

    .line 7425
    :cond_2
    move v3, v0

    goto :goto_0

    .line 7431
    .end local v0    # "size":F
    :cond_3
    sub-float v6, v4, v3

    .line 7407
    const/high16 v7, 0x40400000    # 3.0f

    .line 7431
    cmpg-float v6, v6, v7

    if-gez v6, :cond_4

    .line 7432
    invoke-virtual {p0, v9, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 7433
    iget-object v6, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Landroid/widget/TextView;->preText:Ljava/lang/String;

    .line 7434
    float-to-int v6, v4

    iput v6, p0, Landroid/widget/TextView;->textSize:I

    .line 7436
    :cond_4
    sget-boolean v6, Landroid/text/TextUtils;->DEBUG_LOG:Z

    if-eqz v6, :cond_5

    .line 7437
    const-string/jumbo v6, "TextView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "[doSmartFit] "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Landroid/widget/TextView;->textSize:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/text/TextUtils;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 7400
    :cond_5
    return-void
.end method

.method private ensureIterableTextForAccessibilitySelectable()V
    .locals 2

    .prologue
    .line 10282
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spannable;

    if-nez v0, :cond_0

    .line 10283
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    sget-object v1, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {p0, v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 10281
    :cond_0
    return-void
.end method

.method private fixFocusableAndClickableSettings()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1912
    iget-object v0, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    if-eqz v0, :cond_1

    .line 1913
    :cond_0
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 1914
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setClickable(Z)V

    .line 1915
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setLongClickable(Z)V

    .line 1911
    :goto_0
    return-void

    .line 1917
    :cond_1
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 1918
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 1919
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setLongClickable(Z)V

    goto :goto_0
.end method

.method private getBottomSheet()Lcom/letv/leui/text/LeTextViewBottomSheet;
    .locals 2

    .prologue
    .line 10980
    iget-object v0, p0, Landroid/widget/TextView;->mBottomSheet:Lcom/letv/leui/text/LeTextViewBottomSheet;

    if-nez v0, :cond_0

    .line 10981
    new-instance v0, Lcom/letv/leui/text/LeTextViewBottomSheet;

    invoke-direct {v0, p0}, Lcom/letv/leui/text/LeTextViewBottomSheet;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Landroid/widget/TextView;->mBottomSheet:Lcom/letv/leui/text/LeTextViewBottomSheet;

    .line 10982
    iget-object v0, p0, Landroid/widget/TextView;->mBottomSheet:Lcom/letv/leui/text/LeTextViewBottomSheet;

    new-instance v1, Landroid/widget/TextView$4;

    invoke-direct {v1, p0}, Landroid/widget/TextView$4;-><init>(Landroid/widget/TextView;)V

    invoke-virtual {v0, v1}, Lcom/letv/leui/text/LeTextViewBottomSheet;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 10994
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mBottomSheet:Lcom/letv/leui/text/LeTextViewBottomSheet;

    return-object v0
.end method

.method private getBottomVerticalOffset(Z)I
    .locals 6
    .param p1, "forceNormal"    # Z

    .prologue
    .line 5211
    const/4 v4, 0x0

    .line 5212
    .local v4, "voffset":I
    iget v5, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v1, v5, 0x70

    .line 5214
    .local v1, "gravity":I
    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 5215
    .local v2, "l":Landroid/text/Layout;
    if-nez p1, :cond_0

    iget-object v5, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    if-eqz v5, :cond_0

    .line 5216
    iget-object v2, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    .line 5219
    :cond_0
    const/16 v5, 0x50

    if-eq v1, v5, :cond_1

    .line 5220
    invoke-direct {p0, v2}, Landroid/widget/TextView;->getBoxHeight(Landroid/text/Layout;)I

    move-result v0

    .line 5221
    .local v0, "boxht":I
    invoke-virtual {v2}, Landroid/text/Layout;->getHeight()I

    move-result v3

    .line 5223
    .local v3, "textht":I
    if-ge v3, v0, :cond_1

    .line 5224
    const/16 v5, 0x30

    if-ne v1, v5, :cond_2

    .line 5225
    sub-int v4, v0, v3

    .line 5230
    .end local v0    # "boxht":I
    .end local v3    # "textht":I
    :cond_1
    :goto_0
    return v4

    .line 5227
    .restart local v0    # "boxht":I
    .restart local v3    # "textht":I
    :cond_2
    sub-int v5, v0, v3

    shr-int/lit8 v4, v5, 0x1

    goto :goto_0
.end method

.method private getBoxHeight(Landroid/text/Layout;)I
    .locals 4
    .param p1, "l"    # Landroid/text/Layout;

    .prologue
    .line 5180
    iget-object v2, p0, Landroid/widget/TextView;->mParent:Landroid/view/ViewParent;

    invoke-static {v2}, Landroid/widget/TextView;->isLayoutModeOptical(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getOpticalInsets()Landroid/graphics/Insets;

    move-result-object v0

    .line 5181
    .local v0, "opticalInsets":Landroid/graphics/Insets;
    :goto_0
    iget-object v2, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    if-ne p1, v2, :cond_1

    .line 5182
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v3

    add-int v1, v2, v3

    .line 5184
    .local v1, "padding":I
    :goto_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v2

    sub-int/2addr v2, v1

    iget v3, v0, Landroid/graphics/Insets;->top:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/graphics/Insets;->bottom:I

    add-int/2addr v2, v3

    return v2

    .line 5180
    .end local v0    # "opticalInsets":Landroid/graphics/Insets;
    .end local v1    # "padding":I
    :cond_0
    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    .restart local v0    # "opticalInsets":Landroid/graphics/Insets;
    goto :goto_0

    .line 5183
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingBottom()I

    move-result v3

    add-int v1, v2, v3

    .restart local v1    # "padding":I
    goto :goto_1
.end method

.method private getDesiredHeight()I
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 7454
    iget-object v1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-direct {p0, v1, v0}, Landroid/widget/TextView;->getDesiredHeight(Landroid/text/Layout;Z)I

    move-result v1

    .line 7455
    iget-object v2, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    iget-object v3, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    if-eqz v3, :cond_0

    :goto_0
    invoke-direct {p0, v2, v0}, Landroid/widget/TextView;->getDesiredHeight(Landroid/text/Layout;Z)I

    move-result v0

    .line 7453
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    .line 7455
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getDesiredHeight(Landroid/text/Layout;Z)I
    .locals 8
    .param p1, "layout"    # Landroid/text/Layout;
    .param p2, "cap"    # Z

    .prologue
    const/4 v7, 0x1

    .line 7459
    if-nez p1, :cond_0

    .line 7460
    const/4 v4, 0x0

    return v4

    .line 7463
    :cond_0
    invoke-virtual {p1}, Landroid/text/Layout;->getLineCount()I

    move-result v2

    .line 7464
    .local v2, "linecount":I
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v5

    add-int v3, v4, v5

    .line 7465
    .local v3, "pad":I
    invoke-virtual {p1, v2}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    .line 7466
    .local v0, "desired":I
    sget-boolean v4, Landroid/text/TextUtils;->DEBUG_LOG:Z

    if-eqz v4, :cond_1

    .line 7467
    const-string/jumbo v4, "TextView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[getDesiredHeight] check 1 - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Landroid/widget/TextView;->getMaxLines()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/text/TextUtils;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 7470
    :cond_1
    iget-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 7471
    .local v1, "dr":Landroid/widget/TextView$Drawables;
    if-eqz v1, :cond_2

    .line 7472
    iget v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 7473
    iget v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 7476
    :cond_2
    add-int/2addr v0, v3

    .line 7477
    sget-boolean v4, Landroid/text/TextUtils;->DEBUG_LOG:Z

    if-eqz v4, :cond_3

    .line 7478
    const-string/jumbo v4, "TextView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[getDesiredHeight] check 2 - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/text/TextUtils;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 7481
    :cond_3
    iget v4, p0, Landroid/widget/TextView;->mMaxMode:I

    if-ne v4, v7, :cond_9

    .line 7486
    if-eqz p2, :cond_5

    .line 7487
    iget v4, p0, Landroid/widget/TextView;->mMaximum:I

    if-le v2, v4, :cond_5

    .line 7488
    iget v4, p0, Landroid/widget/TextView;->mMaximum:I

    invoke-virtual {p1, v4}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    .line 7490
    if-eqz v1, :cond_4

    .line 7491
    iget v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 7492
    iget v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 7495
    :cond_4
    add-int/2addr v0, v3

    .line 7496
    iget v2, p0, Landroid/widget/TextView;->mMaximum:I

    .line 7499
    :cond_5
    sget-boolean v4, Landroid/text/TextUtils;->DEBUG_LOG:Z

    if-eqz v4, :cond_6

    .line 7500
    const-string/jumbo v4, "TextView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[getDesiredHeight] check 3 - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/text/TextUtils;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 7509
    :cond_6
    :goto_0
    iget v4, p0, Landroid/widget/TextView;->mMinMode:I

    if-ne v4, v7, :cond_b

    .line 7510
    iget v4, p0, Landroid/widget/TextView;->mMinimum:I

    if-ge v2, v4, :cond_7

    .line 7511
    invoke-virtual {p0}, Landroid/widget/TextView;->getLineHeight()I

    move-result v4

    iget v5, p0, Landroid/widget/TextView;->mMinimum:I

    sub-int/2addr v5, v2

    mul-int/2addr v4, v5

    add-int/2addr v0, v4

    .line 7512
    sget-boolean v4, Landroid/text/TextUtils;->DEBUG_LOG:Z

    if-eqz v4, :cond_7

    .line 7513
    const-string/jumbo v4, "TextView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[getDesiredHeight] check 5 - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/text/TextUtils;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 7524
    :cond_7
    :goto_1
    sget-boolean v4, Landroid/text/TextUtils;->DEBUG_LOG:Z

    if-eqz v4, :cond_8

    .line 7525
    const-string/jumbo v4, "TextView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[getDesiredHeight] check 7 - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Landroid/widget/TextView;->getSuggestedMinimumHeight()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/text/TextUtils;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 7527
    :cond_8
    invoke-virtual {p0}, Landroid/widget/TextView;->getSuggestedMinimumHeight()I

    move-result v4

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 7529
    return v0

    .line 7503
    :cond_9
    sget-boolean v4, Landroid/text/TextUtils;->DEBUG_LOG:Z

    if-eqz v4, :cond_a

    .line 7504
    const-string/jumbo v4, "TextView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[getDesiredHeight] check 4 - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Landroid/widget/TextView;->mMaximum:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/text/TextUtils;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 7506
    :cond_a
    iget v4, p0, Landroid/widget/TextView;->mMaximum:I

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto/16 :goto_0

    .line 7517
    :cond_b
    sget-boolean v4, Landroid/text/TextUtils;->DEBUG_LOG:Z

    if-eqz v4, :cond_c

    .line 7518
    const-string/jumbo v4, "TextView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[getDesiredHeight] check 6 - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Landroid/widget/TextView;->mMinimum:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/text/TextUtils;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 7520
    :cond_c
    iget v4, p0, Landroid/widget/TextView;->mMinimum:I

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto/16 :goto_1
.end method

.method private getFudgedPaddingRight()I
    .locals 3

    .prologue
    .line 5487
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-nez v1, :cond_0

    .line 5488
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v1

    return v1

    .line 5491
    :cond_0
    iget-object v1, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    iget v1, v1, Landroid/text/TextPaint;->density:F

    float-to-int v1, v1

    add-int/lit8 v0, v1, 0x2

    .line 5492
    .local v0, "cursorWidth":I
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v1

    add-int/lit8 v2, v0, -0x1

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    return v1
.end method

.method private getInterestingRect(Landroid/graphics/Rect;I)V
    .locals 2
    .param p1, "r"    # Landroid/graphics/Rect;
    .param p2, "line"    # I

    .prologue
    .line 8022
    invoke-direct {p0, p1}, Landroid/widget/TextView;->convertFromViewportToContentCoordinates(Landroid/graphics/Rect;)V

    .line 8027
    if-nez p2, :cond_0

    iget v0, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 8028
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p2, v0, :cond_1

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 8021
    :cond_1
    return-void
.end method

.method private getLayoutAlignment()Landroid/text/Layout$Alignment;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 6776
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextAlignment()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 6820
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 6823
    .local v0, "alignment":Landroid/text/Layout$Alignment;
    :goto_0
    return-object v0

    .line 6778
    .end local v0    # "alignment":Landroid/text/Layout$Alignment;
    :pswitch_0
    iget v1, p0, Landroid/widget/TextView;->mGravity:I

    const v2, 0x800007

    and-int/2addr v1, v2

    sparse-switch v1, :sswitch_data_0

    .line 6795
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .restart local v0    # "alignment":Landroid/text/Layout$Alignment;
    goto :goto_0

    .line 6780
    .end local v0    # "alignment":Landroid/text/Layout$Alignment;
    :sswitch_0
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .restart local v0    # "alignment":Landroid/text/Layout$Alignment;
    goto :goto_0

    .line 6783
    .end local v0    # "alignment":Landroid/text/Layout$Alignment;
    :sswitch_1
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    .restart local v0    # "alignment":Landroid/text/Layout$Alignment;
    goto :goto_0

    .line 6786
    .end local v0    # "alignment":Landroid/text/Layout$Alignment;
    :sswitch_2
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    .restart local v0    # "alignment":Landroid/text/Layout$Alignment;
    goto :goto_0

    .line 6789
    .end local v0    # "alignment":Landroid/text/Layout$Alignment;
    :sswitch_3
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    .restart local v0    # "alignment":Landroid/text/Layout$Alignment;
    goto :goto_0

    .line 6792
    .end local v0    # "alignment":Landroid/text/Layout$Alignment;
    :sswitch_4
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    .restart local v0    # "alignment":Landroid/text/Layout$Alignment;
    goto :goto_0

    .line 6800
    .end local v0    # "alignment":Landroid/text/Layout$Alignment;
    :pswitch_1
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .restart local v0    # "alignment":Landroid/text/Layout$Alignment;
    goto :goto_0

    .line 6803
    .end local v0    # "alignment":Landroid/text/Layout$Alignment;
    :pswitch_2
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    .restart local v0    # "alignment":Landroid/text/Layout$Alignment;
    goto :goto_0

    .line 6806
    .end local v0    # "alignment":Landroid/text/Layout$Alignment;
    :pswitch_3
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    .restart local v0    # "alignment":Landroid/text/Layout$Alignment;
    goto :goto_0

    .line 6809
    .end local v0    # "alignment":Landroid/text/Layout$Alignment;
    :pswitch_4
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayoutDirection()I

    move-result v1

    if-ne v1, v2, :cond_0

    .line 6810
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    .restart local v0    # "alignment":Landroid/text/Layout$Alignment;
    goto :goto_0

    .end local v0    # "alignment":Landroid/text/Layout$Alignment;
    :cond_0
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    .restart local v0    # "alignment":Landroid/text/Layout$Alignment;
    goto :goto_0

    .line 6813
    .end local v0    # "alignment":Landroid/text/Layout$Alignment;
    :pswitch_5
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayoutDirection()I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 6814
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    .restart local v0    # "alignment":Landroid/text/Layout$Alignment;
    goto :goto_0

    .end local v0    # "alignment":Landroid/text/Layout$Alignment;
    :cond_1
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    .restart local v0    # "alignment":Landroid/text/Layout$Alignment;
    goto :goto_0

    .line 6776
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 6778
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_4
        0x3 -> :sswitch_2
        0x5 -> :sswitch_3
        0x800003 -> :sswitch_0
        0x800005 -> :sswitch_1
    .end sparse-switch
.end method

.method public static getTextColor(Landroid/content/Context;Landroid/content/res/TypedArray;I)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attrs"    # Landroid/content/res/TypedArray;
    .param p2, "def"    # I

    .prologue
    .line 9127
    invoke-static {p0, p1}, Landroid/widget/TextView;->getTextColors(Landroid/content/Context;Landroid/content/res/TypedArray;)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 9128
    .local v0, "colors":Landroid/content/res/ColorStateList;
    if-nez v0, :cond_0

    .line 9129
    return p2

    .line 9131
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    return v1
.end method

.method public static getTextColors(Landroid/content/Context;Landroid/content/res/TypedArray;)Landroid/content/res/ColorStateList;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attrs"    # Landroid/content/res/TypedArray;

    .prologue
    const/4 v5, 0x0

    .line 9093
    if-nez p1, :cond_0

    .line 9095
    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v4

    .line 9102
    :cond_0
    sget-object v4, Landroid/R$styleable;->TextView:[I

    invoke-virtual {p0, v4}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 9103
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v4, 0x5

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    .line 9104
    .local v3, "colors":Landroid/content/res/ColorStateList;
    if-nez v3, :cond_1

    .line 9105
    const/4 v4, 0x1

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 9106
    .local v1, "ap":I
    if-eqz v1, :cond_1

    .line 9108
    sget-object v4, Landroid/R$styleable;->TextAppearance:[I

    .line 9107
    invoke-virtual {p0, v1, v4}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 9109
    .local v2, "appearance":Landroid/content/res/TypedArray;
    const/4 v4, 0x3

    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    .line 9110
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 9113
    .end local v1    # "ap":I
    .end local v2    # "appearance":Landroid/content/res/TypedArray;
    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 9115
    return-object v3
.end method

.method private getTextServicesLocale(Z)Ljava/util/Locale;
    .locals 1
    .param p1, "allowNullLocale"    # Z

    .prologue
    .line 9210
    invoke-direct {p0}, Landroid/widget/TextView;->updateTextServicesLocaleAsync()V

    .line 9213
    iget-object v0, p0, Landroid/widget/TextView;->mCurrentSpellCheckerLocaleCache:Ljava/util/Locale;

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    .line 9214
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mCurrentSpellCheckerLocaleCache:Ljava/util/Locale;

    .line 9213
    :goto_0
    return-object v0

    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    goto :goto_0
.end method

.method private getUpdatedHighlightPath()Landroid/graphics/Path;
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 5706
    const/4 v0, 0x0

    .line 5707
    .local v0, "highlight":Landroid/graphics/Path;
    iget-object v1, p0, Landroid/widget/TextView;->mHighlightPaint:Landroid/graphics/Paint;

    .line 5709
    .local v1, "highlightPaint":Landroid/graphics/Paint;
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v4

    .line 5710
    .local v4, "selStart":I
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v3

    .line 5713
    .local v3, "selEnd":I
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-static {v6}, Lcom/letv/leui/text/LeSelection;->getURLSpanPos(Ljava/lang/CharSequence;)I

    move-result v5

    .line 5714
    .local v5, "urlPos":I
    if-eq v4, v3, :cond_5

    iget-object v6, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v6, :cond_5

    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->isPressed()Z

    move-result v6

    if-nez v6, :cond_0

    .line 5715
    if-ne v5, v4, :cond_5

    if-ltz v4, :cond_5

    :cond_0
    if-ltz v4, :cond_5

    .line 5717
    iget-boolean v6, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    if-eqz v6, :cond_5

    if-eq v5, v4, :cond_1

    .line 5718
    iget-object v6, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v6, :cond_5

    iget-object v6, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v6}, Landroid/widget/Editor;->isInSectionMode()Z

    move-result v6

    .line 5717
    if-eqz v6, :cond_5

    .line 5719
    :cond_1
    iget-object v6, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    if-nez v6, :cond_2

    new-instance v6, Landroid/graphics/Path;

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    iput-object v6, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    .line 5720
    :cond_2
    iget-object v6, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    invoke-virtual {v6}, Landroid/graphics/Path;->reset()V

    .line 5722
    if-ne v5, v4, :cond_4

    .line 5723
    iget-object v6, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    iget-object v7, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    invoke-virtual {v6, v4, v3, v7}, Landroid/text/Layout;->getRoundSelectionPath(IILandroid/graphics/Path;)V

    .line 5724
    iget-object v6, p0, Landroid/widget/TextView;->mLeTextInfo:Lcom/letv/leui/text/LeTextOpt$LeTextInfo;

    iget v6, v6, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->mUrlHighlightColor:I

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 5734
    :cond_3
    :goto_0
    iput-boolean v10, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    .line 5735
    sget-object v6, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 5736
    iget-object v0, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    .line 5737
    .local v0, "highlight":Landroid/graphics/Path;
    return-object v0

    .line 5725
    .local v0, "highlight":Landroid/graphics/Path;
    :cond_4
    iget-object v6, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v6, :cond_3

    iget-object v6, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v6}, Landroid/widget/Editor;->isInSectionMode()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 5726
    iget-object v6, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    iget-object v7, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    .line 5727
    iget-object v8, p0, Landroid/widget/TextView;->mLeTextInfo:Lcom/letv/leui/text/LeTextOpt$LeTextInfo;

    iget v8, v8, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->mSectionBoundWidth:I

    int-to-float v8, v8

    .line 5726
    invoke-virtual {v6, v4, v3, v7, v8}, Landroid/text/Layout;->getSectionSelectionPath(IILandroid/graphics/Path;F)V

    .line 5728
    iget-object v6, p0, Landroid/widget/TextView;->mLeTextInfo:Lcom/letv/leui/text/LeTextOpt$LeTextInfo;

    iget-object v2, v6, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->mSectionBoundPaint:Landroid/graphics/Paint;

    .line 5729
    .local v2, "sectionBoundPaint":Landroid/graphics/Paint;
    iget-object v6, p0, Landroid/widget/TextView;->mLeTextInfo:Lcom/letv/leui/text/LeTextOpt$LeTextInfo;

    iget v6, v6, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->mSectionBoundColor:I

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 5730
    sget-object v6, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 5731
    iget-object v6, p0, Landroid/widget/TextView;->mLeTextInfo:Lcom/letv/leui/text/LeTextOpt$LeTextInfo;

    iget v6, v6, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->mSectionBoundWidth:I

    int-to-float v6, v6

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 5732
    iget v6, p0, Landroid/widget/TextView;->mHighlightColor:I

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 5742
    .end local v2    # "sectionBoundPaint":Landroid/graphics/Paint;
    :cond_5
    iget-object v6, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v6, :cond_9

    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v6

    if-nez v6, :cond_6

    invoke-virtual {p0}, Landroid/widget/TextView;->isPressed()Z

    move-result v6

    if-eqz v6, :cond_9

    :cond_6
    if-ltz v4, :cond_9

    .line 5743
    if-ne v4, v3, :cond_a

    .line 5744
    iget-object v6, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v6, :cond_9

    iget-object v6, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v6}, Landroid/widget/Editor;->isCursorVisible()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 5745
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iget-object v8, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-wide v8, v8, Landroid/widget/Editor;->mShowCursor:J

    sub-long/2addr v6, v8

    .line 5746
    const-wide/16 v8, 0x3e8

    .line 5745
    rem-long/2addr v6, v8

    .line 5746
    const-wide/16 v8, 0x1f4

    .line 5745
    cmp-long v6, v6, v8

    if-gez v6, :cond_9

    .line 5747
    iget-boolean v6, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    if-eqz v6, :cond_8

    .line 5748
    iget-object v6, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    if-nez v6, :cond_7

    new-instance v6, Landroid/graphics/Path;

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    iput-object v6, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    .line 5749
    :cond_7
    iget-object v6, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    invoke-virtual {v6}, Landroid/graphics/Path;->reset()V

    .line 5750
    iget-object v6, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    iget-object v7, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    iget-object v8, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v6, v4, v7, v8}, Landroid/text/Layout;->getCursorPath(ILandroid/graphics/Path;Ljava/lang/CharSequence;)V

    .line 5751
    iget-object v6, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v6}, Landroid/widget/Editor;->updateCursorsPositions()V

    .line 5752
    iput-boolean v10, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    .line 5756
    :cond_8
    iget v6, p0, Landroid/widget/TextView;->mCurTextColor:I

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 5757
    sget-object v6, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 5758
    iget-object v0, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    .line 5775
    .end local v0    # "highlight":Landroid/graphics/Path;
    :cond_9
    :goto_1
    return-object v0

    .line 5761
    .restart local v0    # "highlight":Landroid/graphics/Path;
    :cond_a
    iget-boolean v6, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    if-eqz v6, :cond_c

    .line 5762
    iget-object v6, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    if-nez v6, :cond_b

    new-instance v6, Landroid/graphics/Path;

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    iput-object v6, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    .line 5763
    :cond_b
    iget-object v6, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    invoke-virtual {v6}, Landroid/graphics/Path;->reset()V

    .line 5764
    iget-object v6, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    iget-object v7, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    invoke-virtual {v6, v4, v3, v7}, Landroid/text/Layout;->getSelectionPath(IILandroid/graphics/Path;)V

    .line 5765
    iput-boolean v10, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    .line 5769
    :cond_c
    iget v6, p0, Landroid/widget/TextView;->mHighlightColor:I

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 5770
    sget-object v6, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 5772
    iget-object v0, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    .local v0, "highlight":Landroid/graphics/Path;
    goto :goto_1
.end method

.method private invalidateCursor(III)V
    .locals 3
    .param p1, "a"    # I
    .param p2, "b"    # I
    .param p3, "c"    # I

    .prologue
    .line 5283
    if-gez p1, :cond_0

    if-ltz p2, :cond_2

    .line 5284
    :cond_0
    :goto_0
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v2, p3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 5285
    .local v1, "start":I
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v2, p3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 5286
    .local v0, "end":I
    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Landroid/widget/TextView;->invalidateRegion(IIZ)V

    .line 5282
    .end local v0    # "end":I
    .end local v1    # "start":I
    :cond_1
    return-void

    .line 5283
    :cond_2
    if-ltz p3, :cond_1

    goto :goto_0
.end method

.method private isBringIntoView()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 7636
    iget-object v1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    .line 7637
    invoke-virtual {p0}, Landroid/widget/TextView;->isSingleLine()Z

    move-result v1

    .line 7636
    if-eqz v1, :cond_1

    .line 7638
    iget-object v1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v1}, Landroid/text/Layout;->isSingleLineRtoL()Z

    move-result v1

    .line 7639
    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2}, Landroid/text/Layout;->getTextDirectionHeuristic()Landroid/text/TextDirectionHeuristic;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    iget-object v4, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-interface {v2, v3, v0, v4}, Landroid/text/TextDirectionHeuristic;->isRtl([CII)Z

    move-result v2

    .line 7638
    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 7641
    :cond_1
    return v0
.end method

.method private static isMultilineInputType(I)Z
    .locals 2
    .param p0, "type"    # I

    .prologue
    .line 4601
    const v0, 0x2000f

    and-int/2addr v0, p0

    .line 4602
    const v1, 0x20001

    .line 4601
    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isPasswordInputType(I)Z
    .locals 3
    .param p0, "inputType"    # I

    .prologue
    const/4 v1, 0x1

    .line 4724
    and-int/lit16 v0, p0, 0xfff

    .line 4726
    .local v0, "variation":I
    const/16 v2, 0x81

    .line 4725
    if-eq v0, v2, :cond_0

    .line 4728
    const/16 v2, 0xe1

    .line 4727
    if-ne v0, v2, :cond_1

    .line 4725
    :cond_0
    :goto_0
    return v1

    .line 4730
    :cond_1
    const/16 v2, 0x12

    .line 4729
    if-eq v0, v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isShowingHint()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 7655
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static isVisiblePasswordInputType(I)Z
    .locals 2
    .param p0, "inputType"    # I

    .prologue
    .line 4735
    and-int/lit16 v0, p0, 0xfff

    .line 4737
    .local v0, "variation":I
    const/16 v1, 0x91

    .line 4736
    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private makeSingleLayout(ILandroid/text/BoringLayout$Metrics;ILandroid/text/Layout$Alignment;ZLandroid/text/TextUtils$TruncateAt;Z)Landroid/text/Layout;
    .locals 21
    .param p1, "wantWidth"    # I
    .param p2, "boring"    # Landroid/text/BoringLayout$Metrics;
    .param p3, "ellipsisWidth"    # I
    .param p4, "alignment"    # Landroid/text/Layout$Alignment;
    .param p5, "shouldEllipsize"    # Z
    .param p6, "effectiveEllipsize"    # Landroid/text/TextUtils$TruncateAt;
    .param p7, "useSaved"    # Z

    .prologue
    .line 6966
    const/4 v2, 0x0

    .line 6967
    .local v2, "result":Landroid/text/Layout;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v3, v3, Landroid/text/Spannable;

    if-eqz v3, :cond_4

    .line 6973
    new-instance v2, Landroid/text/DynamicLayout;

    .end local v2    # "result":Landroid/text/Layout;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    .line 6974
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v0, p0

    iget v9, v0, Landroid/widget/TextView;->mSpacingMult:F

    move-object/from16 v0, p0

    iget v10, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move-object/from16 v0, p0

    iget-boolean v11, v0, Landroid/widget/TextView;->mIncludePad:Z

    .line 6975
    move-object/from16 v0, p0

    iget v12, v0, Landroid/widget/TextView;->mBreakStrategy:I

    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/TextView;->mHyphenationFrequency:I

    .line 6976
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v6

    if-nez v6, :cond_3

    move-object/from16 v14, p6

    .line 6977
    :goto_0
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/TextView;->mLeTextInfo:Lcom/letv/leui/text/LeTextOpt$LeTextInfo;

    iget v0, v6, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->mURLPaddingHorizontal:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/TextView;->mLeTextInfo:Lcom/letv/leui/text/LeTextOpt$LeTextInfo;

    iget v0, v6, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->mURLPaddingVertical:I

    move/from16 v17, v0

    .line 6978
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/TextView;->mLeTextInfo:Lcom/letv/leui/text/LeTextOpt$LeTextInfo;

    iget v0, v6, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->mSelectedURLTextColor:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/TextView;->mLeTextInfo:Lcom/letv/leui/text/LeTextOpt$LeTextInfo;

    iget-boolean v0, v6, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->mIsLineCenterVertical:Z

    move/from16 v19, v0

    move/from16 v6, p1

    move-object/from16 v7, p4

    move/from16 v15, p3

    .line 6973
    invoke-direct/range {v2 .. v19}, Landroid/text/DynamicLayout;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZIILandroid/text/TextUtils$TruncateAt;IIIIZ)V

    .line 7019
    :cond_0
    :goto_1
    if-nez v2, :cond_2

    .line 7020
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    .line 7021
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    const/4 v6, 0x0

    .line 7020
    move/from16 v0, p1

    invoke-static {v3, v6, v4, v5, v0}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    move-result-object v3

    .line 7023
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    .line 7020
    invoke-virtual {v3, v4}, Landroid/text/StaticLayout$Builder;->setTextDirection(Landroid/text/TextDirectionHeuristic;)Landroid/text/StaticLayout$Builder;

    move-result-object v3

    .line 7024
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/TextView;->mSpacingMult:F

    .line 7020
    invoke-virtual {v3, v4, v5}, Landroid/text/StaticLayout$Builder;->setLineSpacing(FF)Landroid/text/StaticLayout$Builder;

    move-result-object v3

    .line 7025
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/TextView;->mIncludePad:Z

    .line 7020
    invoke-virtual {v3, v4}, Landroid/text/StaticLayout$Builder;->setIncludePad(Z)Landroid/text/StaticLayout$Builder;

    move-result-object v3

    .line 7026
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/TextView;->mBreakStrategy:I

    .line 7020
    invoke-virtual {v3, v4}, Landroid/text/StaticLayout$Builder;->setBreakStrategy(I)Landroid/text/StaticLayout$Builder;

    move-result-object v3

    .line 7027
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/TextView;->mHyphenationFrequency:I

    .line 7020
    invoke-virtual {v3, v4}, Landroid/text/StaticLayout$Builder;->setHyphenationFrequency(I)Landroid/text/StaticLayout$Builder;

    move-result-object v20

    .line 7028
    .local v20, "builder":Landroid/text/StaticLayout$Builder;
    if-eqz p5, :cond_1

    .line 7029
    move-object/from16 v0, v20

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout$Builder;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)Landroid/text/StaticLayout$Builder;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Landroid/text/StaticLayout$Builder;->setEllipsizedWidth(I)Landroid/text/StaticLayout$Builder;

    move-result-object v4

    .line 7031
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/TextView;->mMaxMode:I

    const/4 v5, 0x1

    if-ne v3, v5, :cond_a

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/TextView;->mMaximum:I

    .line 7029
    :goto_2
    invoke-virtual {v4, v3}, Landroid/text/StaticLayout$Builder;->setMaxLines(I)Landroid/text/StaticLayout$Builder;

    .line 7034
    :cond_1
    invoke-virtual/range {v20 .. v20}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    move-result-object v2

    .line 7036
    .end local v20    # "builder":Landroid/text/StaticLayout$Builder;
    :cond_2
    return-object v2

    .line 6976
    :cond_3
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 6981
    .restart local v2    # "result":Landroid/text/Layout;
    :cond_4
    sget-object v3, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    move-object/from16 v0, p2

    if-ne v0, v3, :cond_5

    .line 6982
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/TextView;->mBoring:Landroid/text/BoringLayout$Metrics;

    invoke-static {v3, v4, v5, v6}, Landroid/text/BoringLayout;->isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;Landroid/text/BoringLayout$Metrics;)Landroid/text/BoringLayout$Metrics;

    move-result-object p2

    .line 6983
    if-eqz p2, :cond_5

    .line 6984
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mBoring:Landroid/text/BoringLayout$Metrics;

    .line 6988
    :cond_5
    if-eqz p2, :cond_0

    .line 6989
    move-object/from16 v0, p2

    iget v3, v0, Landroid/text/BoringLayout$Metrics;->width:I

    move/from16 v0, p1

    if-gt v3, v0, :cond_8

    .line 6990
    if-eqz p6, :cond_6

    move-object/from16 v0, p2

    iget v3, v0, Landroid/text/BoringLayout$Metrics;->width:I

    move/from16 v0, p3

    if-gt v3, v0, :cond_8

    .line 6991
    :cond_6
    if-eqz p7, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/TextView;->mSavedLayout:Landroid/text/BoringLayout;

    if-eqz v3, :cond_7

    .line 6992
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/TextView;->mSavedLayout:Landroid/text/BoringLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    .line 6993
    move-object/from16 v0, p0

    iget v8, v0, Landroid/widget/TextView;->mSpacingMult:F

    move-object/from16 v0, p0

    iget v9, v0, Landroid/widget/TextView;->mSpacingAdd:F

    .line 6994
    move-object/from16 v0, p0

    iget-boolean v11, v0, Landroid/widget/TextView;->mIncludePad:Z

    move/from16 v6, p1

    move-object/from16 v7, p4

    move-object/from16 v10, p2

    .line 6992
    invoke-virtual/range {v3 .. v11}, Landroid/text/BoringLayout;->replaceOrMake(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;Z)Landroid/text/BoringLayout;

    move-result-object v2

    .line 7001
    .local v2, "result":Landroid/text/Layout;
    :goto_3
    if-eqz p7, :cond_0

    move-object v3, v2

    .line 7002
    check-cast v3, Landroid/text/BoringLayout;

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/widget/TextView;->mSavedLayout:Landroid/text/BoringLayout;

    goto/16 :goto_1

    .line 6996
    .local v2, "result":Landroid/text/Layout;
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    .line 6997
    move-object/from16 v0, p0

    iget v7, v0, Landroid/widget/TextView;->mSpacingMult:F

    move-object/from16 v0, p0

    iget v8, v0, Landroid/widget/TextView;->mSpacingAdd:F

    .line 6998
    move-object/from16 v0, p0

    iget-boolean v10, v0, Landroid/widget/TextView;->mIncludePad:Z

    move/from16 v5, p1

    move-object/from16 v6, p4

    move-object/from16 v9, p2

    .line 6996
    invoke-static/range {v3 .. v10}, Landroid/text/BoringLayout;->make(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;Z)Landroid/text/BoringLayout;

    move-result-object v2

    .local v2, "result":Landroid/text/Layout;
    goto :goto_3

    .line 7004
    .local v2, "result":Landroid/text/Layout;
    :cond_8
    if-eqz p5, :cond_0

    move-object/from16 v0, p2

    iget v3, v0, Landroid/text/BoringLayout$Metrics;->width:I

    move/from16 v0, p1

    if-gt v3, v0, :cond_0

    .line 7005
    if-eqz p7, :cond_9

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/TextView;->mSavedLayout:Landroid/text/BoringLayout;

    if-eqz v3, :cond_9

    .line 7006
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/TextView;->mSavedLayout:Landroid/text/BoringLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    .line 7007
    move-object/from16 v0, p0

    iget v8, v0, Landroid/widget/TextView;->mSpacingMult:F

    move-object/from16 v0, p0

    iget v9, v0, Landroid/widget/TextView;->mSpacingAdd:F

    .line 7008
    move-object/from16 v0, p0

    iget-boolean v11, v0, Landroid/widget/TextView;->mIncludePad:Z

    move/from16 v6, p1

    move-object/from16 v7, p4

    move-object/from16 v10, p2

    move-object/from16 v12, p6

    move/from16 v13, p3

    .line 7006
    invoke-virtual/range {v3 .. v13}, Landroid/text/BoringLayout;->replaceOrMake(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;I)Landroid/text/BoringLayout;

    move-result-object v2

    .local v2, "result":Landroid/text/Layout;
    goto/16 :goto_1

    .line 7011
    .local v2, "result":Landroid/text/Layout;
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    .line 7012
    move-object/from16 v0, p0

    iget v7, v0, Landroid/widget/TextView;->mSpacingMult:F

    move-object/from16 v0, p0

    iget v8, v0, Landroid/widget/TextView;->mSpacingAdd:F

    .line 7013
    move-object/from16 v0, p0

    iget-boolean v10, v0, Landroid/widget/TextView;->mIncludePad:Z

    move/from16 v5, p1

    move-object/from16 v6, p4

    move-object/from16 v9, p2

    move-object/from16 v11, p6

    move/from16 v12, p3

    .line 7011
    invoke-static/range {v3 .. v12}, Landroid/text/BoringLayout;->make(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;I)Landroid/text/BoringLayout;

    move-result-object v2

    .local v2, "result":Landroid/text/Layout;
    goto/16 :goto_1

    .line 7031
    .end local v2    # "result":Landroid/text/Layout;
    .restart local v20    # "builder":Landroid/text/StaticLayout$Builder;
    :cond_a
    const v3, 0x7fffffff

    goto/16 :goto_2
.end method

.method private nullLayouts()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 6738
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    instance-of v0, v0, Landroid/text/BoringLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mSavedLayout:Landroid/text/BoringLayout;

    if-nez v0, :cond_0

    .line 6739
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    check-cast v0, Landroid/text/BoringLayout;

    iput-object v0, p0, Landroid/widget/TextView;->mSavedLayout:Landroid/text/BoringLayout;

    .line 6741
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    instance-of v0, v0, Landroid/text/BoringLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/TextView;->mSavedHintLayout:Landroid/text/BoringLayout;

    if-nez v0, :cond_1

    .line 6742
    iget-object v0, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    check-cast v0, Landroid/text/BoringLayout;

    iput-object v0, p0, Landroid/widget/TextView;->mSavedHintLayout:Landroid/text/BoringLayout;

    .line 6745
    :cond_1
    iput-object v1, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    iput-object v1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    iput-object v1, p0, Landroid/widget/TextView;->mSavedMarqueeModeLayout:Landroid/text/Layout;

    .line 6747
    iput-object v1, p0, Landroid/widget/TextView;->mHintBoring:Landroid/text/BoringLayout$Metrics;

    iput-object v1, p0, Landroid/widget/TextView;->mBoring:Landroid/text/BoringLayout$Metrics;

    .line 6750
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->prepareCursorControllers()V

    .line 6737
    :cond_2
    return-void
.end method

.method private parseDimensionArray(Landroid/content/res/TypedArray;)[I
    .locals 3
    .param p1, "dimens"    # Landroid/content/res/TypedArray;

    .prologue
    const/4 v2, 0x0

    .line 1530
    if-nez p1, :cond_0

    .line 1531
    return-object v2

    .line 1533
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->length()I

    move-result v2

    new-array v1, v2, [I

    .line 1534
    .local v1, "result":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 1535
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    aput v2, v1, v0

    .line 1534
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1537
    :cond_1
    return-object v1
.end method

.method private paste(IIZ)V
    .locals 9
    .param p1, "min"    # I
    .param p2, "max"    # I
    .param p3, "withFormatting"    # Z

    .prologue
    .line 10018
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string/jumbo v7, "clipboard"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ClipboardManager;

    .line 10019
    .local v1, "clipboard":Landroid/content/ClipboardManager;
    invoke-virtual {v1}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v0

    .line 10020
    .local v0, "clip":Landroid/content/ClipData;
    if-eqz v0, :cond_5

    .line 10021
    const/4 v2, 0x0

    .line 10022
    .local v2, "didFirst":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v0}, Landroid/content/ClipData;->getItemCount()I

    move-result v6

    if-ge v3, v6, :cond_4

    .line 10024
    if-eqz p3, :cond_1

    .line 10025
    invoke-virtual {v0, v3}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v6

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/ClipData$Item;->coerceToStyledText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 10031
    .local v4, "paste":Ljava/lang/CharSequence;
    :goto_1
    if-eqz v4, :cond_0

    .line 10032
    if-nez v2, :cond_3

    .line 10033
    iget-object v6, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v6, Landroid/text/Spannable;

    invoke-static {v6, p2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 10034
    iget-object v6, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v6, Landroid/text/Editable;

    invoke-interface {v6, p1, p2, v4}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 10035
    const/4 v2, 0x1

    .line 10022
    :cond_0
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 10028
    .end local v4    # "paste":Ljava/lang/CharSequence;
    :cond_1
    invoke-virtual {v0, v3}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v6

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/ClipData$Item;->coerceToText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 10029
    .local v5, "text":Ljava/lang/CharSequence;
    instance-of v6, v5, Landroid/text/Spanned;

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "paste":Ljava/lang/CharSequence;
    goto :goto_1

    .end local v4    # "paste":Ljava/lang/CharSequence;
    :cond_2
    move-object v4, v5

    .restart local v4    # "paste":Ljava/lang/CharSequence;
    goto :goto_1

    .line 10037
    .end local v5    # "text":Ljava/lang/CharSequence;
    :cond_3
    iget-object v6, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v6, Landroid/text/Editable;

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v7

    const-string/jumbo v8, "\n"

    invoke-interface {v6, v7, v8}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 10038
    iget-object v6, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v6, Landroid/text/Editable;

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v7

    invoke-interface {v6, v7, v4}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_2

    .line 10042
    .end local v4    # "paste":Ljava/lang/CharSequence;
    :cond_4
    invoke-virtual {p0}, Landroid/widget/TextView;->stopTextActionMode()V

    .line 10043
    const-wide/16 v6, 0x0

    sput-wide v6, Landroid/widget/TextView;->sLastCutCopyOrTextChangedTime:J

    .line 10016
    .end local v2    # "didFirst":Z
    .end local v3    # "i":I
    :cond_5
    return-void
.end method

.method private registerForPreDraw()V
    .locals 1

    .prologue
    .line 5349
    iget-boolean v0, p0, Landroid/widget/TextView;->mPreDrawRegistered:Z

    if-nez v0, :cond_0

    .line 5350
    invoke-virtual {p0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 5351
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/TextView;->mPreDrawRegistered:Z

    .line 5348
    :cond_0
    return-void
.end method

.method private removeIntersectingNonAdjacentSpans(IILjava/lang/Class;)V
    .locals 7
    .param p1, "start"    # I
    .param p2, "end"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 8454
    .local p3, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v6, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v6, v6, Landroid/text/Editable;

    if-nez v6, :cond_0

    return-void

    .line 8455
    :cond_0
    iget-object v5, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v5, Landroid/text/Editable;

    .line 8457
    .local v5, "text":Landroid/text/Editable;
    invoke-interface {v5, p1, p2, p3}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    .line 8458
    .local v4, "spans":[Ljava/lang/Object;, "[TT;"
    array-length v1, v4

    .line 8459
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 8460
    aget-object v6, v4, v0

    invoke-interface {v5, v6}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    .line 8461
    .local v3, "spanStart":I
    aget-object v6, v4, v0

    invoke-interface {v5, v6}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v2

    .line 8462
    .local v2, "spanEnd":I
    if-eq v2, p1, :cond_1

    if-ne v3, p2, :cond_2

    .line 8453
    .end local v2    # "spanEnd":I
    .end local v3    # "spanStart":I
    :cond_1
    return-void

    .line 8463
    .restart local v2    # "spanEnd":I
    .restart local v3    # "spanStart":I
    :cond_2
    aget-object v6, v4, v0

    invoke-interface {v5, v6}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 8459
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static removeParcelableSpans(Landroid/text/Spannable;II)V
    .locals 3
    .param p0, "spannable"    # Landroid/text/Spannable;
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 6595
    const-class v2, Landroid/text/ParcelableSpan;

    invoke-interface {p0, p1, p2, v2}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    .line 6596
    .local v1, "spans":[Ljava/lang/Object;
    array-length v0, v1

    .line 6597
    .local v0, "i":I
    :goto_0
    if-lez v0, :cond_0

    .line 6598
    add-int/lit8 v0, v0, -0x1

    .line 6599
    aget-object v2, v1, v0

    invoke-interface {p0, v2}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    goto :goto_0

    .line 6594
    :cond_0
    return-void
.end method

.method private restartMarqueeIfNeeded()V
    .locals 2

    .prologue
    .line 5104
    iget-boolean v0, p0, Landroid/widget/TextView;->mRestartMarquee:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v0, v1, :cond_0

    .line 5105
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/TextView;->mRestartMarquee:Z

    .line 5106
    invoke-direct {p0}, Landroid/widget/TextView;->startMarquee()V

    .line 5103
    :cond_0
    return-void
.end method

.method private sendBeforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 5
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "after"    # I

    .prologue
    .line 8439
    iget-object v3, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    .line 8440
    iget-object v2, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    .line 8441
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/text/TextWatcher;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 8442
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 8443
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/text/TextWatcher;

    invoke-interface {v3, p1, p2, p3, p4}, Landroid/text/TextWatcher;->beforeTextChanged(Ljava/lang/CharSequence;III)V

    .line 8442
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8448
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v2    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/text/TextWatcher;>;"
    :cond_0
    add-int v3, p2, p3

    const-class v4, Landroid/text/style/SpellCheckSpan;

    invoke-direct {p0, p2, v3, v4}, Landroid/widget/TextView;->removeIntersectingNonAdjacentSpans(IILjava/lang/Class;)V

    .line 8449
    add-int v3, p2, p3

    const-class v4, Landroid/text/style/SuggestionSpan;

    invoke-direct {p0, p2, v3, v4}, Landroid/widget/TextView;->removeIntersectingNonAdjacentSpans(IILjava/lang/Class;)V

    .line 8438
    return-void
.end method

.method private setFilters(Landroid/text/Editable;[Landroid/text/InputFilter;)V
    .locals 8
    .param p1, "e"    # Landroid/text/Editable;
    .param p2, "filters"    # [Landroid/text/InputFilter;

    .prologue
    const/4 v5, 0x0

    .line 5133
    iget-object v6, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v6, :cond_5

    .line 5134
    iget-object v6, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v6, v6, Landroid/widget/Editor;->mUndoInputFilter:Landroid/widget/Editor$UndoInputFilter;

    if-eqz v6, :cond_4

    const/4 v4, 0x1

    .line 5135
    .local v4, "undoFilter":Z
    :goto_0
    iget-object v6, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v6, v6, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    instance-of v1, v6, Landroid/text/InputFilter;

    .line 5136
    .local v1, "keyFilter":Z
    const/4 v3, 0x0

    .line 5137
    .local v3, "num":I
    if-eqz v4, :cond_0

    const/4 v3, 0x1

    .line 5138
    :cond_0
    if-eqz v1, :cond_1

    add-int/lit8 v3, v3, 0x1

    .line 5139
    :cond_1
    if-lez v3, :cond_5

    .line 5140
    array-length v6, p2

    add-int/2addr v6, v3

    new-array v2, v6, [Landroid/text/InputFilter;

    .line 5142
    .local v2, "nf":[Landroid/text/InputFilter;
    array-length v6, p2

    invoke-static {p2, v5, v2, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5143
    const/4 v3, 0x0

    .line 5144
    if-eqz v4, :cond_2

    .line 5145
    array-length v5, p2

    iget-object v6, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v6, v6, Landroid/widget/Editor;->mUndoInputFilter:Landroid/widget/Editor$UndoInputFilter;

    aput-object v6, v2, v5

    .line 5146
    const/4 v3, 0x1

    .line 5148
    :cond_2
    if-eqz v1, :cond_3

    .line 5149
    array-length v5, p2

    add-int v6, v5, v3

    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v5, v5, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    check-cast v5, Landroid/text/InputFilter;

    aput-object v5, v2, v6

    .line 5152
    :cond_3
    invoke-interface {p1, v2}, Landroid/text/Editable;->setFilters([Landroid/text/InputFilter;)V

    .line 5153
    return-void

    .line 5134
    .end local v1    # "keyFilter":Z
    .end local v2    # "nf":[Landroid/text/InputFilter;
    .end local v3    # "num":I
    .end local v4    # "undoFilter":Z
    :cond_4
    const/4 v4, 0x0

    .restart local v4    # "undoFilter":Z
    goto :goto_0

    .line 5156
    .end local v4    # "undoFilter":Z
    :cond_5
    invoke-interface {p1, p2}, Landroid/text/Editable;->setFilters([Landroid/text/InputFilter;)V

    .line 5159
    array-length v6, p2

    :goto_1
    if-ge v5, v6, :cond_6

    aget-object v0, p2, v5

    .line 5160
    .local v0, "f":Landroid/text/InputFilter;
    instance-of v7, v0, Landroid/text/InputFilter$LengthFilter;

    if-eqz v7, :cond_7

    .line 5161
    check-cast v0, Landroid/text/InputFilter$LengthFilter;

    .end local v0    # "f":Landroid/text/InputFilter;
    invoke-virtual {v0}, Landroid/text/InputFilter$LengthFilter;->getMax()I

    move-result v5

    iput v5, p0, Landroid/widget/TextView;->mMaxLength:I

    .line 5132
    :cond_6
    return-void

    .line 5159
    .restart local v0    # "f":Landroid/text/InputFilter;
    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_1
.end method

.method private setInputType(IZ)V
    .locals 8
    .param p1, "type"    # I
    .param p2, "direct"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 4754
    and-int/lit8 v2, p1, 0xf

    .line 4756
    .local v2, "cls":I
    if-ne v2, v4, :cond_4

    .line 4757
    const v4, 0x8000

    and-int/2addr v4, p1

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    .line 4759
    .local v0, "autotext":Z
    :goto_0
    and-int/lit16 v4, p1, 0x1000

    if-eqz v4, :cond_1

    .line 4760
    sget-object v1, Landroid/text/method/TextKeyListener$Capitalize;->CHARACTERS:Landroid/text/method/TextKeyListener$Capitalize;

    .line 4768
    .local v1, "cap":Landroid/text/method/TextKeyListener$Capitalize;
    :goto_1
    invoke-static {v0, v1}, Landroid/text/method/TextKeyListener;->getInstance(ZLandroid/text/method/TextKeyListener$Capitalize;)Landroid/text/method/TextKeyListener;

    move-result-object v3

    .line 4790
    .end local v0    # "autotext":Z
    .end local v1    # "cap":Landroid/text/method/TextKeyListener$Capitalize;
    .local v3, "input":Landroid/text/method/KeyListener;
    :goto_2
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setRawInputType(I)V

    .line 4791
    if-eqz p2, :cond_a

    .line 4792
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 4793
    iget-object v4, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iput-object v3, v4, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    .line 4753
    :goto_3
    return-void

    .line 4757
    .end local v3    # "input":Landroid/text/method/KeyListener;
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "autotext":Z
    goto :goto_0

    .line 4761
    :cond_1
    and-int/lit16 v4, p1, 0x2000

    if-eqz v4, :cond_2

    .line 4762
    sget-object v1, Landroid/text/method/TextKeyListener$Capitalize;->WORDS:Landroid/text/method/TextKeyListener$Capitalize;

    .restart local v1    # "cap":Landroid/text/method/TextKeyListener$Capitalize;
    goto :goto_1

    .line 4763
    .end local v1    # "cap":Landroid/text/method/TextKeyListener$Capitalize;
    :cond_2
    and-int/lit16 v4, p1, 0x4000

    if-eqz v4, :cond_3

    .line 4764
    sget-object v1, Landroid/text/method/TextKeyListener$Capitalize;->SENTENCES:Landroid/text/method/TextKeyListener$Capitalize;

    .restart local v1    # "cap":Landroid/text/method/TextKeyListener$Capitalize;
    goto :goto_1

    .line 4766
    .end local v1    # "cap":Landroid/text/method/TextKeyListener$Capitalize;
    :cond_3
    sget-object v1, Landroid/text/method/TextKeyListener$Capitalize;->NONE:Landroid/text/method/TextKeyListener$Capitalize;

    .restart local v1    # "cap":Landroid/text/method/TextKeyListener$Capitalize;
    goto :goto_1

    .line 4769
    .end local v0    # "autotext":Z
    .end local v1    # "cap":Landroid/text/method/TextKeyListener$Capitalize;
    :cond_4
    const/4 v6, 0x2

    if-ne v2, v6, :cond_7

    .line 4771
    and-int/lit16 v6, p1, 0x1000

    if-eqz v6, :cond_5

    move v6, v4

    .line 4772
    :goto_4
    and-int/lit16 v7, p1, 0x2000

    if-eqz v7, :cond_6

    .line 4770
    :goto_5
    invoke-static {v6, v4}, Landroid/text/method/DigitsKeyListener;->getInstance(ZZ)Landroid/text/method/DigitsKeyListener;

    move-result-object v3

    .restart local v3    # "input":Landroid/text/method/KeyListener;
    goto :goto_2

    .end local v3    # "input":Landroid/text/method/KeyListener;
    :cond_5
    move v6, v5

    .line 4771
    goto :goto_4

    :cond_6
    move v4, v5

    .line 4772
    goto :goto_5

    .line 4773
    :cond_7
    const/4 v4, 0x4

    if-ne v2, v4, :cond_8

    .line 4774
    and-int/lit16 v4, p1, 0xff0

    sparse-switch v4, :sswitch_data_0

    .line 4782
    invoke-static {}, Landroid/text/method/DateTimeKeyListener;->getInstance()Landroid/text/method/DateTimeKeyListener;

    move-result-object v3

    .restart local v3    # "input":Landroid/text/method/KeyListener;
    goto :goto_2

    .line 4776
    .end local v3    # "input":Landroid/text/method/KeyListener;
    :sswitch_0
    invoke-static {}, Landroid/text/method/DateKeyListener;->getInstance()Landroid/text/method/DateKeyListener;

    move-result-object v3

    .restart local v3    # "input":Landroid/text/method/KeyListener;
    goto :goto_2

    .line 4779
    .end local v3    # "input":Landroid/text/method/KeyListener;
    :sswitch_1
    invoke-static {}, Landroid/text/method/TimeKeyListener;->getInstance()Landroid/text/method/TimeKeyListener;

    move-result-object v3

    .restart local v3    # "input":Landroid/text/method/KeyListener;
    goto :goto_2

    .line 4785
    .end local v3    # "input":Landroid/text/method/KeyListener;
    :cond_8
    const/4 v4, 0x3

    if-ne v2, v4, :cond_9

    .line 4786
    invoke-static {}, Landroid/text/method/DialerKeyListener;->getInstance()Landroid/text/method/DialerKeyListener;

    move-result-object v3

    .restart local v3    # "input":Landroid/text/method/KeyListener;
    goto :goto_2

    .line 4788
    .end local v3    # "input":Landroid/text/method/KeyListener;
    :cond_9
    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v3

    .restart local v3    # "input":Landroid/text/method/KeyListener;
    goto :goto_2

    .line 4795
    :cond_a
    invoke-direct {p0, v3}, Landroid/widget/TextView;->setKeyListenerOnly(Landroid/text/method/KeyListener;)V

    goto :goto_3

    .line 4774
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x20 -> :sswitch_1
    .end sparse-switch
.end method

.method private setInputTypeSingleLine(Z)V
    .locals 3
    .param p1, "singleLine"    # Z

    .prologue
    .line 8173
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    .line 8174
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget v0, v0, Landroid/widget/Editor;->mInputType:I

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 8175
    if-eqz p1, :cond_1

    .line 8176
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget v1, v0, Landroid/widget/Editor;->mInputType:I

    const v2, -0x20001

    and-int/2addr v1, v2

    iput v1, v0, Landroid/widget/Editor;->mInputType:I

    .line 8172
    :cond_0
    :goto_0
    return-void

    .line 8178
    :cond_1
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget v1, v0, Landroid/widget/Editor;->mInputType:I

    const/high16 v2, 0x20000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/widget/Editor;->mInputType:I

    goto :goto_0
.end method

.method private setKeyListenerOnly(Landroid/text/method/KeyListener;)V
    .locals 2
    .param p1, "input"    # Landroid/text/method/KeyListener;

    .prologue
    .line 1863
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    return-void

    .line 1865
    :cond_0
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 1866
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    if-eq v0, p1, :cond_2

    .line 1867
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iput-object p1, v0, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    .line 1868
    if-eqz p1, :cond_1

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Editable;

    if-eqz v0, :cond_3

    .line 1872
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Editable;

    iget-object v1, p0, Landroid/widget/TextView;->mFilters:[Landroid/text/InputFilter;

    invoke-direct {p0, v0, v1}, Landroid/widget/TextView;->setFilters(Landroid/text/Editable;[Landroid/text/InputFilter;)V

    .line 1862
    :cond_2
    return-void

    .line 1869
    :cond_3
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setPrimaryClip(Landroid/content/ClipData;)V
    .locals 4
    .param p1, "clip"    # Landroid/content/ClipData;

    .prologue
    .line 10060
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 10061
    const-string/jumbo v2, "clipboard"

    .line 10060
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 10062
    .local v0, "clipboard":Landroid/content/ClipboardManager;
    invoke-virtual {v0, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 10063
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sput-wide v2, Landroid/widget/TextView;->sLastCutCopyOrTextChangedTime:J

    .line 10059
    return-void
.end method

.method private setRawTextSize(F)V
    .locals 1
    .param p1, "size"    # F

    .prologue
    .line 2992
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTextSize()F

    move-result v0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 2993
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 2995
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    .line 2996
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    .line 2997
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 2998
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 2991
    :cond_0
    return-void
.end method

.method private setRelativeDrawablesIfNeeded(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 7
    .param p1, "start"    # Landroid/graphics/drawable/Drawable;
    .param p2, "end"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v6, 0x0

    .line 1592
    if-nez p1, :cond_0

    if-eqz p2, :cond_3

    :cond_0
    const/4 v2, 0x1

    .line 1593
    .local v2, "hasRelativeDrawables":Z
    :goto_0
    if-eqz v2, :cond_2

    .line 1594
    iget-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 1595
    .local v1, "dr":Landroid/widget/TextView$Drawables;
    if-nez v1, :cond_1

    .line 1596
    new-instance v1, Landroid/widget/TextView$Drawables;

    .end local v1    # "dr":Landroid/widget/TextView$Drawables;
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/widget/TextView$Drawables;-><init>(Landroid/content/Context;)V

    .restart local v1    # "dr":Landroid/widget/TextView$Drawables;
    iput-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 1598
    :cond_1
    iget-object v4, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroid/widget/TextView$Drawables;->mOverride:Z

    .line 1599
    iget-object v0, v1, Landroid/widget/TextView$Drawables;->mCompoundRect:Landroid/graphics/Rect;

    .line 1600
    .local v0, "compoundRect":Landroid/graphics/Rect;
    invoke-virtual {p0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v3

    .line 1601
    .local v3, "state":[I
    if-eqz p1, :cond_4

    .line 1602
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-virtual {p1, v6, v6, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1603
    invoke-virtual {p1, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1604
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 1605
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1607
    iput-object p1, v1, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    .line 1608
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeStart:I

    .line 1609
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightStart:I

    .line 1613
    :goto_1
    if-eqz p2, :cond_5

    .line 1614
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-virtual {p2, v6, v6, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1615
    invoke-virtual {p2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1616
    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 1617
    invoke-virtual {p2, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1619
    iput-object p2, v1, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    .line 1620
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeEnd:I

    .line 1621
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightEnd:I

    .line 1625
    :goto_2
    invoke-virtual {p0}, Landroid/widget/TextView;->resetResolvedDrawables()V

    .line 1626
    invoke-virtual {p0}, Landroid/widget/TextView;->resolveDrawables()V

    .line 1627
    invoke-direct {p0}, Landroid/widget/TextView;->applyCompoundDrawableTint()V

    .line 1591
    .end local v0    # "compoundRect":Landroid/graphics/Rect;
    .end local v1    # "dr":Landroid/widget/TextView$Drawables;
    .end local v3    # "state":[I
    :cond_2
    return-void

    .line 1592
    .end local v2    # "hasRelativeDrawables":Z
    :cond_3
    const/4 v2, 0x0

    .restart local v2    # "hasRelativeDrawables":Z
    goto :goto_0

    .line 1611
    .restart local v0    # "compoundRect":Landroid/graphics/Rect;
    .restart local v1    # "dr":Landroid/widget/TextView$Drawables;
    .restart local v3    # "state":[I
    :cond_4
    iput v6, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightStart:I

    iput v6, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeStart:I

    goto :goto_1

    .line 1623
    :cond_5
    iput v6, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightEnd:I

    iput v6, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeEnd:I

    goto :goto_2
.end method

.method private setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;ZI)V
    .locals 22
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "type"    # Landroid/widget/TextView$BufferType;
    .param p3, "notifyBefore"    # Z
    .param p4, "oldlen"    # I

    .prologue
    .line 4317
    if-nez p1, :cond_0

    .line 4318
    const-string/jumbo p1, ""

    .line 4322
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mLeTextInfo:Lcom/letv/leui/text/LeTextOpt$LeTextInfo;

    if-eqz v4, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mLeTextInfo:Lcom/letv/leui/text/LeTextOpt$LeTextInfo;

    iget-object v4, v4, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->mCJKFontFamily:Ljava/lang/String;

    if-nez v4, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mLeTextInfo:Lcom/letv/leui/text/LeTextOpt$LeTextInfo;

    iget v4, v4, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->mCJKFontTextSize:I

    if-lez v4, :cond_3

    .line 4323
    :cond_1
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/TextView;->mLeTextInfo:Lcom/letv/leui/text/LeTextOpt$LeTextInfo;

    sget-object v4, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    move-object/from16 v0, p2

    if-ne v0, v4, :cond_8

    .line 4324
    sget-object v4, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    .line 4323
    :goto_0
    iput-object v4, v5, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->mTextBufferType:Landroid/widget/TextView$BufferType;

    .line 4325
    move-object/from16 v0, p1

    instance-of v4, v0, Landroid/text/Spannable;

    if-nez v4, :cond_2

    .line 4326
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mLeTextInfo:Lcom/letv/leui/text/LeTextOpt$LeTextInfo;

    iget-object v4, v4, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->mTextBufferType:Landroid/widget/TextView$BufferType;

    sget-object v5, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    if-ne v4, v5, :cond_9

    .line 4327
    invoke-static/range {p1 .. p1}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object p1

    .line 4330
    :cond_2
    :goto_1
    check-cast p1, Landroid/text/Spannable;

    .line 4331
    .end local p1    # "text":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mLeTextInfo:Lcom/letv/leui/text/LeTextOpt$LeTextInfo;

    iget-object v4, v4, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->mCJKFontFamily:Ljava/lang/String;

    .line 4332
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/TextView;->mLeTextInfo:Lcom/letv/leui/text/LeTextOpt$LeTextInfo;

    iget v5, v5, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->mCJKFontTextSize:I

    int-to-float v5, v5

    .line 4330
    move-object/from16 v0, p1

    invoke-static {v0, v4, v5}, Lcom/letv/leui/util/LeTextUtils;->convertCJKTypeface(Landroid/text/Spannable;Ljava/lang/String;F)Landroid/text/Spannable;

    move-result-object p1

    .line 4337
    .restart local p1    # "text":Ljava/lang/CharSequence;
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->isSuggestionsEnabled()Z

    move-result v4

    if-nez v4, :cond_4

    .line 4338
    invoke-virtual/range {p0 .. p1}, Landroid/widget/TextView;->removeSuggestionSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 4341
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/TextView;->mUserSetTextScaleX:Z

    if-nez v4, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->setTextScaleX(F)V

    .line 4343
    :cond_5
    move-object/from16 v0, p1

    instance-of v4, v0, Landroid/text/Spanned;

    if-eqz v4, :cond_6

    move-object/from16 v4, p1

    .line 4344
    check-cast v4, Landroid/text/Spanned;

    sget-object v5, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-interface {v4, v5}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    if-ltz v4, :cond_6

    .line 4345
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewConfiguration;->isFadingMarqueeEnabled()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 4346
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 4347
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Landroid/widget/TextView;->mMarqueeFadeMode:I

    .line 4352
    :goto_2
    sget-object v4, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 4355
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mFilters:[Landroid/text/InputFilter;

    array-length v14, v4

    .line 4356
    .local v14, "n":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_3
    if-ge v12, v14, :cond_b

    .line 4357
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mFilters:[Landroid/text/InputFilter;

    aget-object v4, v4, v12

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v7

    sget-object v8, Landroid/widget/TextView;->EMPTY_SPANNED:Landroid/text/Spanned;

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v5, p1

    invoke-interface/range {v4 .. v10}, Landroid/text/InputFilter;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object v16

    .line 4358
    .local v16, "out":Ljava/lang/CharSequence;
    if-eqz v16, :cond_7

    .line 4359
    move-object/from16 p1, v16

    .line 4356
    :cond_7
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .end local v12    # "i":I
    .end local v14    # "n":I
    .end local v16    # "out":Ljava/lang/CharSequence;
    :cond_8
    move-object/from16 v4, p2

    .line 4324
    goto/16 :goto_0

    .line 4328
    :cond_9
    invoke-static/range {p1 .. p1}, Landroid/text/SpannableStringBuilder;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    goto/16 :goto_1

    .line 4349
    :cond_a
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 4350
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Landroid/widget/TextView;->mMarqueeFadeMode:I

    goto :goto_2

    .line 4363
    .restart local v12    # "i":I
    .restart local v14    # "n":I
    :cond_b
    if-eqz p3, :cond_c

    .line 4364
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    if-eqz v4, :cond_16

    .line 4365
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result p4

    .line 4366
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v0, v4, v6, v1, v5}, Landroid/widget/TextView;->sendBeforeTextChanged(Ljava/lang/CharSequence;III)V

    .line 4372
    :cond_c
    :goto_4
    const/4 v15, 0x0

    .line 4374
    .local v15, "needEditableForNotification":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    if-eqz v4, :cond_d

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v4, :cond_d

    .line 4375
    const/4 v15, 0x1

    .line 4378
    :cond_d
    sget-object v4, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    move-object/from16 v0, p2

    if-eq v0, v4, :cond_e

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v4

    if-eqz v4, :cond_17

    .line 4380
    :cond_e
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 4381
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v4}, Landroid/widget/Editor;->forgetUndoRedo()V

    .line 4382
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mEditableFactory:Landroid/text/Editable$Factory;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/text/Editable$Factory;->newEditable(Ljava/lang/CharSequence;)Landroid/text/Editable;

    move-result-object v19

    .line 4383
    .local v19, "t":Landroid/text/Editable;
    move-object/from16 p1, v19

    .line 4384
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mFilters:[Landroid/text/InputFilter;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v4}, Landroid/widget/TextView;->setFilters(Landroid/text/Editable;[Landroid/text/InputFilter;)V

    .line 4385
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v13

    .line 4386
    .local v13, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v13, :cond_f

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 4393
    .end local v13    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v19    # "t":Landroid/text/Editable;
    :cond_f
    :goto_5
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/TextView;->mAutoLinkMask:I

    if-eqz v4, :cond_11

    .line 4396
    sget-object v4, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    move-object/from16 v0, p2

    if-eq v0, v4, :cond_10

    move-object/from16 v0, p1

    instance-of v4, v0, Landroid/text/Spannable;

    if-eqz v4, :cond_1a

    :cond_10
    move-object/from16 v17, p1

    .line 4397
    check-cast v17, Landroid/text/Spannable;

    .line 4403
    .local v17, "s2":Landroid/text/Spannable;
    :goto_6
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/TextView;->mAutoLinkMask:I

    move-object/from16 v0, v17

    invoke-static {v0, v4}, Lcom/letv/leui/util/LeLinkify;->addLinks(Landroid/text/Spannable;I)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 4404
    move-object/from16 p1, v17

    .line 4405
    sget-object v4, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    move-object/from16 v0, p2

    if-ne v0, v4, :cond_1b

    sget-object p2, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    .line 4412
    :goto_7
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .line 4416
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/TextView;->mLinksClickable:Z

    if-eqz v4, :cond_11

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->textCanBeSelected()Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 4422
    .end local v17    # "s2":Landroid/text/Spannable;
    :cond_11
    :goto_8
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mBufferType:Landroid/widget/TextView$BufferType;

    .line 4423
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .line 4425
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    if-nez v4, :cond_1d

    .line 4426
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    .line 4431
    :goto_9
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v20

    .line 4433
    .local v20, "textLength":I
    move-object/from16 v0, p1

    instance-of v4, v0, Landroid/text/Spannable;

    if-eqz v4, :cond_12

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/TextView;->mAllowTransformationLengthChange:Z

    if-eqz v4, :cond_1e

    .line 4466
    :cond_12
    :goto_a
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v4, :cond_13

    .line 4467
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->checkForRelayout()V

    .line 4470
    :cond_13
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p4

    move/from16 v3, v20

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/widget/TextView;->sendOnTextChanged(Ljava/lang/CharSequence;III)V

    .line 4471
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p4

    move/from16 v3, v20

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/widget/TextView;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 4473
    const/4 v4, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->notifyViewAccessibilityStateChangedIfNeeded(I)V

    .line 4475
    if-eqz v15, :cond_14

    .line 4476
    check-cast p1, Landroid/text/Editable;

    .end local p1    # "text":Ljava/lang/CharSequence;
    invoke-virtual/range {p0 .. p1}, Landroid/widget/TextView;->sendAfterTextChanged(Landroid/text/Editable;)V

    .line 4480
    :cond_14
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v4, :cond_15

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v4}, Landroid/widget/Editor;->prepareCursorControllers()V

    .line 4316
    :cond_15
    return-void

    .line 4368
    .end local v15    # "needEditableForNotification":Z
    .end local v20    # "textLength":I
    .restart local p1    # "text":Ljava/lang/CharSequence;
    :cond_16
    const-string/jumbo v4, ""

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v6, v7, v5}, Landroid/widget/TextView;->sendBeforeTextChanged(Ljava/lang/CharSequence;III)V

    goto/16 :goto_4

    .line 4378
    .restart local v15    # "needEditableForNotification":Z
    :cond_17
    if-nez v15, :cond_e

    .line 4387
    sget-object v4, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    move-object/from16 v0, p2

    if-eq v0, v4, :cond_18

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v4, :cond_19

    .line 4388
    :cond_18
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mSpannableFactory:Landroid/text/Spannable$Factory;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object p1

    goto/16 :goto_5

    .line 4389
    :cond_19
    move-object/from16 v0, p1

    instance-of v4, v0, Landroid/widget/TextView$CharWrapper;

    if-nez v4, :cond_f

    .line 4390
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->stringOrSpannedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    goto/16 :goto_5

    .line 4399
    :cond_1a
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mSpannableFactory:Landroid/text/Spannable$Factory;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v17

    .restart local v17    # "s2":Landroid/text/Spannable;
    goto/16 :goto_6

    .line 4405
    :cond_1b
    sget-object p2, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    goto/16 :goto_7

    .line 4417
    :cond_1c
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    goto/16 :goto_8

    .line 4428
    .end local v17    # "s2":Landroid/text/Spannable;
    :cond_1d
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-interface {v4, v0, v1}, Landroid/text/method/TransformationMethod;->getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    goto/16 :goto_9

    .restart local v20    # "textLength":I
    :cond_1e
    move-object/from16 v18, p1

    .line 4434
    check-cast v18, Landroid/text/Spannable;

    .line 4437
    .local v18, "sp":Landroid/text/Spannable;
    invoke-interface/range {v18 .. v18}, Landroid/text/Spannable;->length()I

    move-result v4

    const-class v5, Landroid/widget/TextView$ChangeWatcher;

    const/4 v6, 0x0

    move-object/from16 v0, v18

    invoke-interface {v0, v6, v4, v5}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v21

    check-cast v21, [Landroid/widget/TextView$ChangeWatcher;

    .line 4438
    .local v21, "watchers":[Landroid/widget/TextView$ChangeWatcher;
    move-object/from16 v0, v21

    array-length v11, v0

    .line 4439
    .local v11, "count":I
    const/4 v12, 0x0

    :goto_b
    if-ge v12, v11, :cond_1f

    .line 4440
    aget-object v4, v21, v12

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 4439
    add-int/lit8 v12, v12, 0x1

    goto :goto_b

    .line 4443
    :cond_1f
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mChangeWatcher:Landroid/widget/TextView$ChangeWatcher;

    if-nez v4, :cond_20

    new-instance v4, Landroid/widget/TextView$ChangeWatcher;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v5}, Landroid/widget/TextView$ChangeWatcher;-><init>(Landroid/widget/TextView;Landroid/widget/TextView$ChangeWatcher;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/widget/TextView;->mChangeWatcher:Landroid/widget/TextView$ChangeWatcher;

    .line 4445
    :cond_20
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mChangeWatcher:Landroid/widget/TextView$ChangeWatcher;

    const/4 v5, 0x0

    const v6, 0x640012

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-interface {v0, v4, v5, v1, v6}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 4448
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v4, :cond_21

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/widget/Editor;->addSpanWatchers(Landroid/text/Spannable;)V

    .line 4450
    :cond_21
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    if-eqz v4, :cond_22

    .line 4451
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    const/4 v5, 0x0

    const/16 v6, 0x12

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-interface {v0, v4, v5, v1, v6}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 4454
    :cond_22
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v4, :cond_12

    .line 4455
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    move-object/from16 v4, p1

    check-cast v4, Landroid/text/Spannable;

    move-object/from16 v0, p0

    invoke-interface {v5, v0, v4}, Landroid/text/method/MovementMethod;->initialize(Landroid/widget/TextView;Landroid/text/Spannable;)V

    .line 4462
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v4, :cond_12

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    const/4 v5, 0x0

    iput-boolean v5, v4, Landroid/widget/Editor;->mSelectionMoved:Z

    goto/16 :goto_a
.end method

.method private setThemeHighlightColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 10763
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setHighlightColor(I)V

    .line 10762
    return-void
.end method

.method private setTypefaceFromAttrs(Ljava/lang/String;II)V
    .locals 1
    .param p1, "familyName"    # Ljava/lang/String;
    .param p2, "typefaceIndex"    # I
    .param p3, "styleIndex"    # I

    .prologue
    .line 1566
    const/4 v0, 0x0

    .line 1567
    .local v0, "tf":Landroid/graphics/Typeface;
    if-eqz p1, :cond_0

    .line 1568
    invoke-static {p1, p3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    .line 1569
    .local v0, "tf":Landroid/graphics/Typeface;
    if-eqz v0, :cond_0

    .line 1570
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1571
    return-void

    .line 1574
    .end local v0    # "tf":Landroid/graphics/Typeface;
    :cond_0
    packed-switch p2, :pswitch_data_0

    .line 1588
    :goto_0
    invoke-virtual {p0, v0, p3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 1565
    return-void

    .line 1576
    :pswitch_0
    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    .restart local v0    # "tf":Landroid/graphics/Typeface;
    goto :goto_0

    .line 1580
    .end local v0    # "tf":Landroid/graphics/Typeface;
    :pswitch_1
    sget-object v0, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    .restart local v0    # "tf":Landroid/graphics/Typeface;
    goto :goto_0

    .line 1584
    .end local v0    # "tf":Landroid/graphics/Typeface;
    :pswitch_2
    sget-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    .restart local v0    # "tf":Landroid/graphics/Typeface;
    goto :goto_0

    .line 1574
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private shareSelectedText()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 10048
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectedText()Ljava/lang/String;

    move-result-object v0

    .line 10049
    .local v0, "selectedText":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 10047
    :cond_0
    :goto_0
    return-void

    .line 10050
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.SEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 10051
    .local v1, "sharingIntent":Landroid/content/Intent;
    const-string/jumbo v2, "text/plain"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 10052
    const-string/jumbo v2, "android.intent.extra.TEXT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 10053
    const-string/jumbo v2, "android.intent.extra.TEXT"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 10054
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 10055
    invoke-virtual {p0}, Landroid/widget/TextView;->stopTextActionMode()V

    goto :goto_0
.end method

.method private shouldAdvanceFocusOnEnter()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 6218
    invoke-virtual {p0}, Landroid/widget/TextView;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v1

    if-nez v1, :cond_0

    .line 6219
    return v3

    .line 6222
    :cond_0
    iget-boolean v1, p0, Landroid/widget/TextView;->mSingleLine:Z

    if-eqz v1, :cond_1

    .line 6223
    return v2

    .line 6226
    :cond_1
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v1, :cond_3

    .line 6227
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget v1, v1, Landroid/widget/Editor;->mInputType:I

    and-int/lit8 v1, v1, 0xf

    if-ne v1, v2, :cond_3

    .line 6228
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget v1, v1, Landroid/widget/Editor;->mInputType:I

    and-int/lit16 v0, v1, 0xff0

    .line 6229
    .local v0, "variation":I
    const/16 v1, 0x20

    if-eq v0, v1, :cond_2

    .line 6230
    const/16 v1, 0x30

    if-ne v0, v1, :cond_3

    .line 6231
    :cond_2
    return v2

    .line 6235
    .end local v0    # "variation":I
    :cond_3
    return v3
.end method

.method private shouldAdvanceFocusOnTab()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 6243
    invoke-virtual {p0}, Landroid/widget/TextView;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroid/widget/TextView;->mSingleLine:Z

    if-eqz v1, :cond_1

    .line 6251
    :cond_0
    return v2

    .line 6243
    :cond_1
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v1, :cond_0

    .line 6244
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget v1, v1, Landroid/widget/Editor;->mInputType:I

    and-int/lit8 v1, v1, 0xf

    if-ne v1, v2, :cond_0

    .line 6245
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget v1, v1, Landroid/widget/Editor;->mInputType:I

    and-int/lit16 v0, v1, 0xff0

    .line 6246
    .local v0, "variation":I
    const/high16 v1, 0x40000

    if-eq v0, v1, :cond_2

    .line 6247
    const/high16 v1, 0x20000

    if-ne v0, v1, :cond_0

    .line 6248
    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method private shouldSpeakPasswordsForAccessibility()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 9321
    iget-object v2, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 9322
    const-string/jumbo v3, "speak_password"

    .line 9323
    const/4 v4, -0x3

    .line 9321
    invoke-static {v2, v3, v1, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private startMarquee()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 8326
    invoke-virtual {p0}, Landroid/widget/TextView;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v1

    if-eqz v1, :cond_0

    return-void

    .line 8328
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-direct {p0, v1}, Landroid/widget/TextView;->compressText(F)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8329
    return-void

    .line 8332
    :cond_1
    iget-object v1, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    invoke-virtual {v1}, Landroid/widget/TextView$Marquee;->isStopped()Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Landroid/widget/TextView;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 8333
    :cond_3
    invoke-virtual {p0}, Landroid/widget/TextView;->getLineCount()I

    move-result v1

    if-ne v1, v3, :cond_6

    invoke-direct {p0}, Landroid/widget/TextView;->canMarquee()Z

    move-result v1

    .line 8332
    if-eqz v1, :cond_6

    .line 8335
    iget v1, p0, Landroid/widget/TextView;->mMarqueeFadeMode:I

    if-ne v1, v3, :cond_4

    .line 8336
    const/4 v1, 0x2

    iput v1, p0, Landroid/widget/TextView;->mMarqueeFadeMode:I

    .line 8337
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 8338
    .local v0, "tmp":Landroid/text/Layout;
    iget-object v1, p0, Landroid/widget/TextView;->mSavedMarqueeModeLayout:Landroid/text/Layout;

    iput-object v1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 8339
    iput-object v0, p0, Landroid/widget/TextView;->mSavedMarqueeModeLayout:Landroid/text/Layout;

    .line 8340
    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 8341
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 8342
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 8345
    .end local v0    # "tmp":Landroid/text/Layout;
    :cond_4
    iget-object v1, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    if-nez v1, :cond_5

    new-instance v1, Landroid/widget/TextView$Marquee;

    invoke-direct {v1, p0}, Landroid/widget/TextView$Marquee;-><init>(Landroid/widget/TextView;)V

    iput-object v1, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    .line 8346
    :cond_5
    iget-object v1, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    iget v2, p0, Landroid/widget/TextView;->mMarqueeRepeatLimit:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView$Marquee;->start(I)V

    .line 8324
    :cond_6
    return-void
.end method

.method private startStopMarquee(Z)V
    .locals 2
    .param p1, "start"    # Z

    .prologue
    .line 8367
    iget-object v0, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v0, v1, :cond_0

    .line 8368
    if-eqz p1, :cond_1

    .line 8369
    invoke-direct {p0}, Landroid/widget/TextView;->startMarquee()V

    .line 8366
    :cond_0
    :goto_0
    return-void

    .line 8371
    :cond_1
    invoke-direct {p0}, Landroid/widget/TextView;->stopMarquee()V

    goto :goto_0
.end method

.method private stopMarquee()V
    .locals 3

    .prologue
    .line 8351
    iget-object v1, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    invoke-virtual {v1}, Landroid/widget/TextView$Marquee;->isStopped()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 8355
    :cond_0
    :goto_0
    iget v1, p0, Landroid/widget/TextView;->mMarqueeFadeMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 8356
    const/4 v1, 0x1

    iput v1, p0, Landroid/widget/TextView;->mMarqueeFadeMode:I

    .line 8357
    iget-object v0, p0, Landroid/widget/TextView;->mSavedMarqueeModeLayout:Landroid/text/Layout;

    .line 8358
    .local v0, "tmp":Landroid/text/Layout;
    iget-object v1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    iput-object v1, p0, Landroid/widget/TextView;->mSavedMarqueeModeLayout:Landroid/text/Layout;

    .line 8359
    iput-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 8360
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 8361
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 8362
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 8350
    .end local v0    # "tmp":Landroid/text/Layout;
    :cond_1
    return-void

    .line 8352
    :cond_2
    iget-object v1, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    invoke-virtual {v1}, Landroid/widget/TextView$Marquee;->stop()V

    goto :goto_0
.end method

.method private unregisterForPreDraw()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 5356
    invoke-virtual {p0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 5357
    iput-boolean v1, p0, Landroid/widget/TextView;->mPreDrawRegistered:Z

    .line 5358
    iput-boolean v1, p0, Landroid/widget/TextView;->mPreDrawListenerDetached:Z

    .line 5355
    return-void
.end method

.method private updateTextColors()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 4019
    const/4 v1, 0x0

    .line 4020
    .local v1, "inval":Z
    iget-object v2, p0, Landroid/widget/TextView;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 4021
    .local v0, "color":I
    iget v2, p0, Landroid/widget/TextView;->mCurTextColor:I

    if-eq v0, v2, :cond_0

    .line 4022
    iput v0, p0, Landroid/widget/TextView;->mCurTextColor:I

    .line 4023
    const/4 v1, 0x1

    .line 4025
    :cond_0
    iget-object v2, p0, Landroid/widget/TextView;->mLinkTextColor:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_1

    .line 4026
    iget-object v2, p0, Landroid/widget/TextView;->mLinkTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 4027
    iget-object v2, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    iget v2, v2, Landroid/text/TextPaint;->linkColor:I

    if-eq v0, v2, :cond_1

    .line 4028
    iget-object v2, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    iput v0, v2, Landroid/text/TextPaint;->linkColor:I

    .line 4029
    const/4 v1, 0x1

    .line 4032
    :cond_1
    iget-object v2, p0, Landroid/widget/TextView;->mHintTextColor:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_2

    .line 4033
    iget-object v2, p0, Landroid/widget/TextView;->mHintTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 4034
    iget v2, p0, Landroid/widget/TextView;->mCurHintTextColor:I

    if-eq v0, v2, :cond_2

    .line 4035
    iput v0, p0, Landroid/widget/TextView;->mCurHintTextColor:I

    .line 4036
    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 4037
    const/4 v1, 0x1

    .line 4041
    :cond_2
    if-eqz v1, :cond_4

    .line 4043
    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v2}, Landroid/widget/Editor;->invalidateTextDisplayList()V

    .line 4044
    :cond_3
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 4018
    :cond_4
    return-void
.end method

.method private updateTextServicesLocaleAsync()V
    .locals 1

    .prologue
    .line 9263
    new-instance v0, Landroid/widget/TextView$3;

    invoke-direct {v0, p0}, Landroid/widget/TextView$3;-><init>(Landroid/widget/TextView;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 9259
    return-void
.end method

.method private updateTextServicesLocaleLocked()V
    .locals 5

    .prologue
    .line 9273
    iget-object v3, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "textservices"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 9272
    check-cast v2, Landroid/view/textservice/TextServicesManager;

    .line 9274
    .local v2, "textServicesManager":Landroid/view/textservice/TextServicesManager;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/textservice/TextServicesManager;->getCurrentSpellCheckerSubtype(Z)Landroid/view/textservice/SpellCheckerSubtype;

    move-result-object v1

    .line 9276
    .local v1, "subtype":Landroid/view/textservice/SpellCheckerSubtype;
    if-eqz v1, :cond_0

    .line 9277
    invoke-virtual {v1}, Landroid/view/textservice/SpellCheckerSubtype;->getLocale()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/view/textservice/SpellCheckerSubtype;->constructLocaleFromString(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    .line 9281
    :goto_0
    iput-object v0, p0, Landroid/widget/TextView;->mCurrentSpellCheckerLocaleCache:Ljava/util/Locale;

    .line 9271
    return-void

    .line 9279
    :cond_0
    const/4 v0, 0x0

    .local v0, "locale":Ljava/util/Locale;
    goto :goto_0
.end method


# virtual methods
.method public addTextChangedListener(Landroid/text/TextWatcher;)V
    .locals 1
    .param p1, "watcher"    # Landroid/text/TextWatcher;

    .prologue
    .line 8416
    iget-object v0, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 8417
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    .line 8420
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8415
    return-void
.end method

.method public final append(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 4002
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;II)V

    .line 4001
    return-void
.end method

.method public append(Ljava/lang/CharSequence;II)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 4011
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Editable;

    if-nez v0, :cond_0

    .line 4012
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    sget-object v1, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {p0, v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 4015
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Editable;

    invoke-interface {v0, p1, p2, p3}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;II)Landroid/text/Editable;

    .line 4010
    return-void
.end method

.method public beginBatchEdit()V
    .locals 1

    .prologue
    .line 6700
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->beginBatchEdit()V

    .line 6699
    :cond_0
    return-void
.end method

.method public bringPointIntoView(I)Z
    .locals 34
    .param p1, "offset"    # I

    .prologue
    .line 7733
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->isLayoutRequested()Z

    move-result v30

    if-eqz v30, :cond_0

    .line 7734
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mDeferScroll:I

    .line 7735
    const/16 v30, 0x0

    return v30

    .line 7737
    :cond_0
    const/4 v5, 0x0

    .line 7739
    .local v5, "changed":Z
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->isShowingHint()Z

    move-result v30

    if-eqz v30, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    move-object/from16 v19, v0

    .line 7741
    .local v19, "layout":Landroid/text/Layout;
    :goto_0
    if-nez v19, :cond_2

    return v5

    .line 7739
    .end local v19    # "layout":Landroid/text/Layout;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v19, v0

    .restart local v19    # "layout":Landroid/text/Layout;
    goto :goto_0

    .line 7743
    :cond_2
    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v21

    .line 7747
    .local v21, "line":I
    invoke-static {}, Landroid/widget/TextView;->-getandroid_text_Layout$AlignmentSwitchesValues()[I

    move-result-object v30

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getParagraphAlignment(I)Landroid/text/Layout$Alignment;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Landroid/text/Layout$Alignment;->ordinal()I

    move-result v31

    aget v30, v30, v31

    packed-switch v30, :pswitch_data_0

    .line 7762
    const/4 v13, 0x0

    .line 7767
    .local v13, "grav":I
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v24

    .line 7768
    .local v24, "selectionStart":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v23

    .line 7769
    .local v23, "selectionEnd":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move-object/from16 v30, v0

    if-eqz v30, :cond_13

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mBufferType:Landroid/widget/TextView$BufferType;

    move-object/from16 v30, v0

    sget-object v31, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    if-ne v0, v1, :cond_13

    .line 7770
    if-nez v23, :cond_3

    const/16 v30, -0x1

    move/from16 v0, v30

    if-ne v13, v0, :cond_13

    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v30

    invoke-interface/range {v30 .. v30}, Ljava/lang/CharSequence;->length()I

    move-result v30

    move/from16 v0, v23

    move/from16 v1, v30

    if-ne v0, v1, :cond_13

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->isSingleLine()Z

    move-result v18

    .line 7771
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLeTextInfo:Lcom/letv/leui/text/LeTextOpt$LeTextInfo;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v8, v0, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->mCursorWidth:I

    .line 7772
    .local v8, "cursorWidth":I
    if-eqz v18, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLeTextInfo:Lcom/letv/leui/text/LeTextOpt$LeTextInfo;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->mCursorPadding:I

    move/from16 v30, v0

    add-int v7, v8, v30

    .line 7785
    .local v7, "cursorOffset":I
    :goto_3
    if-lez v13, :cond_15

    const/4 v6, 0x1

    .line 7787
    .local v6, "clamped":Z
    :goto_4
    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v0, v1, v6}, Landroid/text/Layout;->getPrimaryHorizontal(IZ)F

    move-result v30

    move/from16 v0, v30

    float-to-int v0, v0

    move/from16 v29, v0

    .line 7788
    .local v29, "x":I
    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v25

    .line 7789
    .local v25, "top":I
    add-int/lit8 v30, v21, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v4

    .line 7791
    .local v4, "bottom":I
    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v30

    move/from16 v0, v30

    float-to-double v0, v0

    move-wide/from16 v30, v0

    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->floor(D)D

    move-result-wide v30

    move-wide/from16 v0, v30

    double-to-int v0, v0

    move/from16 v20, v0

    .line 7792
    .local v20, "left":I
    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineRight(I)F

    move-result v30

    move/from16 v0, v30

    float-to-double v0, v0

    move-wide/from16 v30, v0

    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v30

    move-wide/from16 v0, v30

    double-to-int v0, v0

    move/from16 v22, v0

    .line 7793
    .local v22, "right":I
    invoke-virtual/range {v19 .. v19}, Landroid/text/Layout;->getHeight()I

    move-result v17

    .line 7795
    .local v17, "ht":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mRight:I

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mLeft:I

    move/from16 v31, v0

    sub-int v30, v30, v31

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v31

    sub-int v30, v30, v31

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v31

    sub-int v16, v30, v31

    .line 7796
    .local v16, "hspace":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mBottom:I

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mTop:I

    move/from16 v31, v0

    sub-int v30, v30, v31

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v31

    sub-int v30, v30, v31

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getExtendedPaddingBottom()I

    move-result v31

    sub-int v28, v30, v31

    .line 7797
    .local v28, "vspace":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mHorizontallyScrolling:Z

    move/from16 v30, v0

    if-nez v30, :cond_4

    sub-int v30, v22, v20

    move/from16 v0, v30

    move/from16 v1, v16

    if-le v0, v1, :cond_4

    move/from16 v0, v22

    move/from16 v1, v29

    if-le v0, v1, :cond_4

    .line 7799
    add-int v30, v20, v16

    invoke-static/range {v29 .. v30}, Ljava/lang/Math;->max(II)I

    move-result v22

    .line 7802
    :cond_4
    sub-int v30, v4, v25

    div-int/lit8 v15, v30, 0x2

    .line 7803
    .local v15, "hslack":I
    move/from16 v27, v15

    .line 7805
    .local v27, "vslack":I
    div-int/lit8 v30, v28, 0x4

    move/from16 v0, v27

    move/from16 v1, v30

    if-le v0, v1, :cond_5

    .line 7806
    div-int/lit8 v27, v28, 0x4

    .line 7807
    :cond_5
    div-int/lit8 v30, v16, 0x4

    move/from16 v0, v30

    if-le v15, v0, :cond_6

    .line 7808
    div-int/lit8 v15, v16, 0x4

    .line 7810
    :cond_6
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/TextView;->mScrollX:I

    .line 7811
    .local v14, "hs":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mScrollY:I

    move/from16 v26, v0

    .line 7813
    .local v26, "vs":I
    sub-int v30, v25, v26

    move/from16 v0, v30

    move/from16 v1, v27

    if-ge v0, v1, :cond_7

    .line 7814
    sub-int v26, v25, v27

    .line 7815
    :cond_7
    sub-int v30, v4, v26

    sub-int v31, v28, v27

    move/from16 v0, v30

    move/from16 v1, v31

    if-le v0, v1, :cond_8

    .line 7816
    sub-int v30, v28, v27

    sub-int v26, v4, v30

    .line 7817
    :cond_8
    sub-int v30, v17, v26

    move/from16 v0, v30

    move/from16 v1, v28

    if-ge v0, v1, :cond_9

    .line 7818
    sub-int v26, v17, v28

    .line 7819
    :cond_9
    rsub-int/lit8 v30, v26, 0x0

    if-lez v30, :cond_a

    .line 7820
    const/16 v26, 0x0

    .line 7822
    :cond_a
    if-eqz v13, :cond_c

    .line 7823
    sub-int v30, v29, v14

    move/from16 v0, v30

    if-ge v0, v15, :cond_b

    .line 7824
    sub-int v14, v29, v15

    .line 7826
    :cond_b
    sub-int v30, v29, v14

    sub-int v31, v16, v15

    move/from16 v0, v30

    move/from16 v1, v31

    if-le v0, v1, :cond_c

    .line 7827
    sub-int v30, v16, v15

    sub-int v14, v29, v30

    .line 7833
    :cond_c
    if-gez v13, :cond_16

    .line 7834
    sub-int v30, v20, v14

    if-lez v30, :cond_d

    .line 7835
    move/from16 v14, v20

    .line 7836
    :cond_d
    sub-int v30, v22, v14

    move/from16 v0, v30

    move/from16 v1, v16

    if-ge v0, v1, :cond_e

    .line 7839
    sub-int v30, v22, v16

    add-int v14, v30, v7

    .line 7899
    :cond_e
    :goto_5
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mScrollX:I

    move/from16 v30, v0

    move/from16 v0, v30

    if-ne v14, v0, :cond_f

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mScrollY:I

    move/from16 v30, v0

    move/from16 v0, v26

    move/from16 v1, v30

    if-eq v0, v1, :cond_10

    .line 7900
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v30, v0

    if-nez v30, :cond_20

    .line 7901
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v14, v1}, Landroid/widget/TextView;->scrollTo(II)V

    .line 7922
    :goto_6
    const/4 v5, 0x1

    .line 7925
    :cond_10
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v30

    if-eqz v30, :cond_12

    .line 7933
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v30, v0

    if-nez v30, :cond_11

    new-instance v30, Landroid/graphics/Rect;

    invoke-direct/range {v30 .. v30}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mTempRect:Landroid/graphics/Rect;

    .line 7934
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v30, v0

    add-int/lit8 v31, v29, -0x2

    add-int/lit8 v32, v29, 0x2

    move-object/from16 v0, v30

    move/from16 v1, v31

    move/from16 v2, v25

    move/from16 v3, v32

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 7935
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Landroid/widget/TextView;->getInterestingRect(Landroid/graphics/Rect;I)V

    .line 7939
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->requestRectangleOnScreen(Landroid/graphics/Rect;)Z

    move-result v30

    if-eqz v30, :cond_12

    .line 7940
    const/4 v5, 0x1

    .line 7944
    :cond_12
    return v5

    .line 7749
    .end local v4    # "bottom":I
    .end local v6    # "clamped":Z
    .end local v7    # "cursorOffset":I
    .end local v8    # "cursorWidth":I
    .end local v13    # "grav":I
    .end local v14    # "hs":I
    .end local v15    # "hslack":I
    .end local v16    # "hspace":I
    .end local v17    # "ht":I
    .end local v20    # "left":I
    .end local v22    # "right":I
    .end local v23    # "selectionEnd":I
    .end local v24    # "selectionStart":I
    .end local v25    # "top":I
    .end local v26    # "vs":I
    .end local v27    # "vslack":I
    .end local v28    # "vspace":I
    .end local v29    # "x":I
    :pswitch_0
    const/4 v13, 0x1

    .line 7750
    .restart local v13    # "grav":I
    goto/16 :goto_1

    .line 7752
    .end local v13    # "grav":I
    :pswitch_1
    const/4 v13, -0x1

    .line 7753
    .restart local v13    # "grav":I
    goto/16 :goto_1

    .line 7755
    .end local v13    # "grav":I
    :pswitch_2
    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v13

    .restart local v13    # "grav":I
    goto/16 :goto_1

    .line 7758
    .end local v13    # "grav":I
    :pswitch_3
    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v30

    move/from16 v0, v30

    neg-int v13, v0

    .line 7759
    .restart local v13    # "grav":I
    goto/16 :goto_1

    .line 7769
    .restart local v23    # "selectionEnd":I
    .restart local v24    # "selectionStart":I
    :cond_13
    const/16 v18, 0x0

    .local v18, "isEnd":Z
    goto/16 :goto_2

    .line 7772
    .end local v18    # "isEnd":Z
    .restart local v8    # "cursorWidth":I
    :cond_14
    const/4 v7, 0x0

    .restart local v7    # "cursorOffset":I
    goto/16 :goto_3

    .line 7785
    :cond_15
    const/4 v6, 0x0

    .restart local v6    # "clamped":Z
    goto/16 :goto_4

    .line 7842
    .restart local v4    # "bottom":I
    .restart local v14    # "hs":I
    .restart local v15    # "hslack":I
    .restart local v16    # "hspace":I
    .restart local v17    # "ht":I
    .restart local v20    # "left":I
    .restart local v22    # "right":I
    .restart local v25    # "top":I
    .restart local v26    # "vs":I
    .restart local v27    # "vslack":I
    .restart local v28    # "vspace":I
    .restart local v29    # "x":I
    :cond_16
    if-lez v13, :cond_19

    .line 7843
    sub-int v30, v22, v14

    move/from16 v0, v30

    move/from16 v1, v16

    if-ge v0, v1, :cond_17

    .line 7846
    sub-int v30, v22, v16

    add-int v14, v30, v7

    .line 7849
    :cond_17
    sub-int v30, v20, v14

    if-lez v30, :cond_18

    .line 7850
    move/from16 v14, v20

    .line 7852
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move-object/from16 v30, v0

    if-eqz v30, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    move-object/from16 v30, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v30

    if-ne v0, v1, :cond_e

    .line 7853
    if-eqz v19, :cond_e

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_e

    .line 7854
    if-nez v23, :cond_e

    const/16 v30, 0x1

    move/from16 v0, v30

    if-ne v13, v0, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mBufferType:Landroid/widget/TextView$BufferType;

    move-object/from16 v30, v0

    sget-object v31, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    if-ne v0, v1, :cond_e

    .line 7855
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLeTextInfo:Lcom/letv/leui/text/LeTextOpt$LeTextInfo;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->mCursorPadding:I

    move/from16 v30, v0

    move/from16 v0, v30

    neg-int v14, v0

    goto/16 :goto_5

    .line 7859
    :cond_19
    sub-int v30, v22, v20

    move/from16 v0, v30

    move/from16 v1, v16

    if-gt v0, v1, :cond_1a

    .line 7863
    sub-int v30, v22, v20

    sub-int v30, v16, v30

    div-int/lit8 v30, v30, 0x2

    sub-int v14, v20, v30

    goto/16 :goto_5

    .line 7864
    :cond_1a
    sub-int v30, v22, v15

    move/from16 v0, v29

    move/from16 v1, v30

    if-le v0, v1, :cond_1b

    .line 7869
    sub-int v14, v22, v16

    goto/16 :goto_5

    .line 7870
    :cond_1b
    add-int v30, v20, v15

    move/from16 v0, v29

    move/from16 v1, v30

    if-ge v0, v1, :cond_1c

    .line 7875
    move/from16 v14, v20

    goto/16 :goto_5

    .line 7876
    :cond_1c
    move/from16 v0, v20

    if-le v0, v14, :cond_1d

    .line 7880
    move/from16 v14, v20

    goto/16 :goto_5

    .line 7881
    :cond_1d
    add-int v30, v14, v16

    move/from16 v0, v22

    move/from16 v1, v30

    if-ge v0, v1, :cond_1e

    .line 7885
    sub-int v14, v22, v16

    goto/16 :goto_5

    .line 7890
    :cond_1e
    sub-int v30, v29, v14

    move/from16 v0, v30

    if-ge v0, v15, :cond_1f

    .line 7891
    sub-int v14, v29, v15

    .line 7893
    :cond_1f
    sub-int v30, v29, v14

    sub-int v31, v16, v15

    move/from16 v0, v30

    move/from16 v1, v31

    if-le v0, v1, :cond_e

    .line 7894
    sub-int v30, v16, v15

    sub-int v14, v29, v30

    goto/16 :goto_5

    .line 7903
    :cond_20
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v30

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/widget/TextView;->mLastScroll:J

    move-wide/from16 v32, v0

    sub-long v10, v30, v32

    .line 7904
    .local v10, "duration":J
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mScrollX:I

    move/from16 v30, v0

    sub-int v9, v14, v30

    .line 7905
    .local v9, "dx":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mScrollY:I

    move/from16 v30, v0

    sub-int v12, v26, v30

    .line 7907
    .local v12, "dy":I
    const-wide/16 v30, 0xfa

    cmp-long v30, v10, v30

    if-lez v30, :cond_21

    .line 7908
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mScrollX:I

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mScrollY:I

    move/from16 v32, v0

    move-object/from16 v0, v30

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2, v9, v12}, Landroid/widget/Scroller;->startScroll(IIII)V

    .line 7909
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/widget/Scroller;->getDuration()I

    move-result v30

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->awakenScrollBars(I)Z

    .line 7910
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->invalidate()V

    .line 7919
    :goto_7
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v30

    move-wide/from16 v0, v30

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/TextView;->mLastScroll:J

    goto/16 :goto_6

    .line 7912
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/widget/Scroller;->isFinished()Z

    move-result v30

    if-nez v30, :cond_22

    .line 7913
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/widget/Scroller;->abortAnimation()V

    .line 7916
    :cond_22
    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v12}, Landroid/widget/TextView;->scrollBy(II)V

    goto :goto_7

    .line 7747
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method canCopy()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 9955
    invoke-virtual {p0}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9956
    return v1

    .line 9959
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->hasSelection()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_1

    .line 9960
    const/4 v0, 0x1

    return v0

    .line 9963
    :cond_1
    return v1
.end method

.method canCut()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 9942
    invoke-virtual {p0}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9943
    return v1

    .line 9946
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->hasSelection()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Editable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_1

    .line 9947
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    if-eqz v0, :cond_1

    .line 9948
    const/4 v0, 0x1

    return v0

    .line 9951
    :cond_1
    return v1
.end method

.method canPaste()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 9971
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v1, v1, Landroid/text/Editable;

    if-eqz v1, :cond_0

    .line 9972
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v1, v1, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    if-eqz v1, :cond_0

    .line 9973
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    if-ltz v1, :cond_0

    .line 9974
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    if-ltz v1, :cond_0

    .line 9975
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    invoke-virtual {v0}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    move-result v0

    .line 9971
    :cond_0
    return v0
.end method

.method canProcessText()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 9980
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->canStartActivityForResult()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 9982
    :cond_0
    return v2

    .line 9981
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    move-result v0

    .line 9980
    if-nez v0, :cond_0

    .line 9985
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/TextView;->hasSelection()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_2

    .line 9986
    const/4 v0, 0x1

    return v0

    .line 9989
    :cond_2
    return v2
.end method

.method canRedo()Z
    .locals 1

    .prologue
    .line 9938
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->canRedo()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method canSelectAllText()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 9993
    invoke-virtual {p0}, Landroid/widget/TextView;->canSelectText()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    return v0

    .line 9994
    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v2

    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ne v2, v3, :cond_1

    move v0, v1

    goto :goto_0
.end method

.method canSelectText()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 9190
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->hasSelectionController()Z

    move-result v0

    :cond_0
    return v0
.end method

.method canShare()Z
    .locals 1

    .prologue
    .line 9967
    invoke-virtual {p0}, Landroid/widget/TextView;->canCopy()Z

    move-result v0

    return v0
.end method

.method canUndo()Z
    .locals 1

    .prologue
    .line 9934
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->canUndo()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public cancelLongPress()V
    .locals 2

    .prologue
    .line 8950
    invoke-super {p0}, Landroid/view/View;->cancelLongPress()V

    .line 8951
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/widget/Editor;->mIgnoreActionUpEvent:Z

    .line 8949
    :cond_0
    return-void
.end method

.method public clearComposingText()V
    .locals 1

    .prologue
    .line 8764
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spannable;

    if-eqz v0, :cond_0

    .line 8765
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spannable;

    invoke-static {v0}, Landroid/view/inputmethod/BaseInputConnection;->removeComposingSpans(Landroid/text/Spannable;)V

    .line 8763
    :cond_0
    return-void
.end method

.method protected computeHorizontalScrollRange()I
    .locals 3

    .prologue
    .line 9045
    invoke-direct {p0}, Landroid/widget/TextView;->isShowingHint()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    .line 9046
    .local v0, "layout":Landroid/text/Layout;
    :goto_0
    if-eqz v0, :cond_2

    .line 9048
    iget-boolean v1, p0, Landroid/widget/TextView;->mSingleLine:Z

    if-eqz v1, :cond_1

    iget v1, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v1, v1, 0x7

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 9049
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    .line 9048
    :goto_1
    return v1

    .line 9045
    .end local v0    # "layout":Landroid/text/Layout;
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .restart local v0    # "layout":Landroid/text/Layout;
    goto :goto_0

    .line 9049
    :cond_1
    invoke-virtual {v0}, Landroid/text/Layout;->getWidth()I

    move-result v1

    goto :goto_1

    .line 9052
    :cond_2
    invoke-super {p0}, Landroid/view/View;->computeHorizontalScrollRange()I

    move-result v1

    return v1
.end method

.method public computeScroll()V
    .locals 1

    .prologue
    .line 8011
    iget-object v0, p0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    if-eqz v0, :cond_0

    .line 8012
    iget-object v0, p0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8013
    iget-object v0, p0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    iput v0, p0, Landroid/widget/TextView;->mScrollX:I

    .line 8014
    iget-object v0, p0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    iput v0, p0, Landroid/widget/TextView;->mScrollY:I

    .line 8015
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidateParentCaches()V

    .line 8016
    invoke-virtual {p0}, Landroid/widget/TextView;->postInvalidate()V

    .line 8010
    :cond_0
    return-void
.end method

.method protected computeVerticalScrollExtent()I
    .locals 2

    .prologue
    .line 9065
    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method protected computeVerticalScrollRange()I
    .locals 1

    .prologue
    .line 9057
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    .line 9058
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v0

    return v0

    .line 9060
    :cond_0
    invoke-super {p0}, Landroid/view/View;->computeVerticalScrollRange()I

    move-result v0

    return v0
.end method

.method convertToLocalHorizontalCoordinate(F)F
    .locals 2
    .param p1, "x"    # F

    .prologue
    .line 10083
    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p1, v0

    .line 10085
    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 10086
    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 10087
    invoke-virtual {p0}, Landroid/widget/TextView;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p1, v0

    .line 10088
    return p1
.end method

.method public copyText(II)V
    .locals 5
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    const/4 v4, 0x0

    .line 10927
    const/4 v2, 0x0

    .line 10928
    .local v2, "min":I
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 10930
    .local v1, "max":I
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 10931
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 10933
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 10934
    const-string/jumbo v4, "clipboard"

    .line 10933
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 10935
    .local v0, "clipboardManager":Landroid/content/ClipboardManager;
    invoke-virtual {p0, v2, v1}, Landroid/widget/TextView;->getTransformedText(II)Ljava/lang/CharSequence;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v4, v3}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 10926
    return-void
.end method

.method public debug(I)V
    .locals 3
    .param p1, "depth"    # I

    .prologue
    .line 8055
    invoke-super {p0, p1}, Landroid/view/View;->debug(I)V

    .line 8057
    invoke-static {p1}, Landroid/widget/TextView;->debugIndent(I)Ljava/lang/String;

    move-result-object v0

    .line 8058
    .local v0, "output":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "frame={"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/widget/TextView;->mLeft:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/widget/TextView;->mTop:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/widget/TextView;->mRight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 8059
    const-string/jumbo v2, ", "

    .line 8058
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 8059
    iget v2, p0, Landroid/widget/TextView;->mBottom:I

    .line 8058
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 8059
    const-string/jumbo v2, "} scroll={"

    .line 8058
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 8059
    iget v2, p0, Landroid/widget/TextView;->mScrollX:I

    .line 8058
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 8059
    const-string/jumbo v2, ", "

    .line 8058
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 8059
    iget v2, p0, Landroid/widget/TextView;->mScrollY:I

    .line 8058
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 8060
    const-string/jumbo v2, "} "

    .line 8058
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 8062
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    .line 8064
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "mText=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\" "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 8065
    iget-object v1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v1, :cond_0

    .line 8066
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "mLayout width="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2}, Landroid/text/Layout;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 8067
    const-string/jumbo v2, " height="

    .line 8066
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 8067
    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2}, Landroid/text/Layout;->getHeight()I

    move-result v2

    .line 8066
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 8072
    :cond_0
    :goto_0
    const-string/jumbo v1, "View"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8054
    return-void

    .line 8070
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "mText=NULL"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected deleteText_internal(II)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 10228
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Editable;

    invoke-interface {v0, p1, p2}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 10227
    return-void
.end method

.method public didTouchFocusSelect()Z
    .locals 1

    .prologue
    .line 8945
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-boolean v0, v0, Landroid/widget/Editor;->mTouchFocusSelected:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchFinishTemporaryDetach()V
    .locals 1

    .prologue
    .line 8683
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/TextView;->mDispatchTemporaryDetach:Z

    .line 8684
    invoke-super {p0}, Landroid/view/View;->dispatchFinishTemporaryDetach()V

    .line 8685
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/TextView;->mDispatchTemporaryDetach:Z

    .line 8682
    return-void
.end method

.method public drawableHotspotChanged(FF)V
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 4088
    invoke-super {p0, p1, p2}, Landroid/view/View;->drawableHotspotChanged(FF)V

    .line 4090
    iget-object v2, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-eqz v2, :cond_1

    .line 4091
    invoke-virtual {p0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v1

    .line 4092
    .local v1, "state":[I
    iget-object v2, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v3, v2, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    array-length v4, v3

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v0, v3, v2

    .line 4093
    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 4094
    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 4092
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4087
    .end local v0    # "dr":Landroid/graphics/drawable/Drawable;
    .end local v1    # "state":[I
    :cond_1
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 7

    .prologue
    .line 4050
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 4051
    iget-object v3, p0, Landroid/widget/TextView;->mTextColor:Landroid/content/res/ColorStateList;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/widget/TextView;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v3}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v3

    if-nez v3, :cond_2

    .line 4052
    :cond_0
    iget-object v3, p0, Landroid/widget/TextView;->mHintTextColor:Landroid/content/res/ColorStateList;

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/widget/TextView;->mHintTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v3}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v3

    .line 4051
    if-nez v3, :cond_2

    .line 4053
    :cond_1
    iget-object v3, p0, Landroid/widget/TextView;->mLinkTextColor:Landroid/content/res/ColorStateList;

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroid/widget/TextView;->mLinkTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v3}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v3

    .line 4051
    if-eqz v3, :cond_3

    .line 4054
    :cond_2
    invoke-direct {p0}, Landroid/widget/TextView;->updateTextColors()V

    .line 4057
    :cond_3
    iget-object v3, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-eqz v3, :cond_7

    .line 4058
    invoke-virtual {p0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v2

    .line 4059
    .local v2, "state":[I
    iget-object v3, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v4, v3, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    array-length v5, v4

    :goto_0
    if-ge v3, v5, :cond_5

    aget-object v0, v4, v3

    .line 4060
    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 4061
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 4059
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4072
    .end local v0    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_5
    iget v3, p0, Landroid/widget/TextView;->mLastLayoutDirection:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_7

    .line 4073
    iget-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 4075
    .local v1, "dr":Landroid/widget/TextView$Drawables;
    iget-object v3, v1, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_6

    .line 4076
    iget-object v3, v1, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 4079
    :cond_6
    iget-object v3, v1, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_7

    .line 4080
    iget-object v3, v1, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 4049
    .end local v1    # "dr":Landroid/widget/TextView$Drawables;
    .end local v2    # "state":[I
    :cond_7
    return-void
.end method

.method protected encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .locals 4
    .param p1, "stream"    # Landroid/view/ViewHierarchyEncoder;

    .prologue
    const/4 v2, 0x0

    .line 10365
    invoke-super {p0, p1}, Landroid/view/View;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    .line 10367
    invoke-virtual {p0}, Landroid/widget/TextView;->getEllipsize()Landroid/text/TextUtils$TruncateAt;

    move-result-object v0

    .line 10368
    .local v0, "ellipsize":Landroid/text/TextUtils$TruncateAt;
    const-string/jumbo v3, "text:ellipsize"

    if-nez v0, :cond_0

    move-object v1, v2

    :goto_0
    invoke-virtual {p1, v3, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 10369
    const-string/jumbo v1, "text:textSize"

    invoke-virtual {p0}, Landroid/widget/TextView;->getTextSize()F

    move-result v3

    invoke-virtual {p1, v1, v3}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;F)V

    .line 10370
    const-string/jumbo v1, "text:scaledTextSize"

    invoke-virtual {p0}, Landroid/widget/TextView;->getScaledTextSize()F

    move-result v3

    invoke-virtual {p1, v1, v3}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;F)V

    .line 10371
    const-string/jumbo v1, "text:typefaceStyle"

    invoke-virtual {p0}, Landroid/widget/TextView;->getTypefaceStyle()I

    move-result v3

    invoke-virtual {p1, v1, v3}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 10372
    const-string/jumbo v1, "text:selectionStart"

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v3

    invoke-virtual {p1, v1, v3}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 10373
    const-string/jumbo v1, "text:selectionEnd"

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v3

    invoke-virtual {p1, v1, v3}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 10374
    const-string/jumbo v1, "text:curTextColor"

    iget v3, p0, Landroid/widget/TextView;->mCurTextColor:I

    invoke-virtual {p1, v1, v3}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 10375
    const-string/jumbo v1, "text:text"

    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    if-nez v3, :cond_1

    :goto_1
    invoke-virtual {p1, v1, v2}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 10376
    const-string/jumbo v1, "text:gravity"

    iget v2, p0, Landroid/widget/TextView;->mGravity:I

    invoke-virtual {p1, v1, v2}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 10364
    return-void

    .line 10368
    :cond_0
    invoke-virtual {v0}, Landroid/text/TextUtils$TruncateAt;->name()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 10375
    :cond_1
    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method public endBatchEdit()V
    .locals 1

    .prologue
    .line 6704
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->endBatchEdit()V

    .line 6703
    :cond_0
    return-void
.end method

.method public extractText(Landroid/view/inputmethod/ExtractedTextRequest;Landroid/view/inputmethod/ExtractedText;)Z
    .locals 1
    .param p1, "request"    # Landroid/view/inputmethod/ExtractedTextRequest;
    .param p2, "outText"    # Landroid/view/inputmethod/ExtractedText;

    .prologue
    .line 6585
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 6586
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0, p1, p2}, Landroid/widget/Editor;->extractText(Landroid/view/inputmethod/ExtractedTextRequest;Landroid/view/inputmethod/ExtractedText;)Z

    move-result v0

    return v0
.end method

.method public findViewsWithText(Ljava/util/ArrayList;Ljava/lang/CharSequence;I)V
    .locals 3
    .param p2, "searched"    # Ljava/lang/CharSequence;
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/CharSequence;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 9070
    .local p1, "outViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->findViewsWithText(Ljava/util/ArrayList;Ljava/lang/CharSequence;I)V

    .line 9071
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    and-int/lit8 v2, p3, 0x1

    if-eqz v2, :cond_0

    .line 9072
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 9069
    :cond_0
    :goto_0
    return-void

    .line 9072
    :cond_1
    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 9073
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 9074
    .local v0, "searchedLowerCase":Ljava/lang/String;
    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 9075
    .local v1, "textLowerCase":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 9076
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 9328
    const-class v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAccessibilitySelectionEnd()I
    .locals 1

    .prologue
    .line 10335
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    return v0
.end method

.method public getAccessibilitySelectionStart()I
    .locals 1

    .prologue
    .line 10320
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    return v0
.end method

.method public final getAutoLinkMask()I
    .locals 1

    .prologue
    .line 2799
    iget v0, p0, Landroid/widget/TextView;->mAutoLinkMask:I

    return v0
.end method

.method public getBaseline()I
    .locals 3

    .prologue
    .line 6074
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-nez v0, :cond_0

    .line 6075
    invoke-super {p0}, Landroid/view/View;->getBaseline()I

    move-result v0

    return v0

    .line 6078
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getBaselineOffset()I

    move-result v0

    iget-object v1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/text/Layout;->getLineBaseline(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method getBaselineOffset()I
    .locals 3

    .prologue
    .line 6082
    const/4 v0, 0x0

    .line 6083
    .local v0, "voffset":I
    iget v1, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v1, v1, 0x70

    const/16 v2, 0x30

    if-eq v1, v2, :cond_0

    .line 6084
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v0

    .line 6087
    :cond_0
    iget-object v1, p0, Landroid/widget/TextView;->mParent:Landroid/view/ViewParent;

    invoke-static {v1}, Landroid/widget/TextView;->isLayoutModeOptical(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6088
    invoke-virtual {p0}, Landroid/widget/TextView;->getOpticalInsets()Landroid/graphics/Insets;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Insets;->top:I

    sub-int/2addr v0, v1

    .line 6091
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method protected getBottomPaddingOffset()I
    .locals 3

    .prologue
    .line 5482
    const/4 v0, 0x0

    iget v1, p0, Landroid/widget/TextView;->mShadowDy:F

    iget v2, p0, Landroid/widget/TextView;->mShadowRadius:F

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public getBreakStrategy()I
    .locals 1

    .prologue
    .line 3152
    iget v0, p0, Landroid/widget/TextView;->mBreakStrategy:I

    return v0
.end method

.method public getCJKFontFamily()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10804
    iget-object v0, p0, Landroid/widget/TextView;->mLeTextInfo:Lcom/letv/leui/text/LeTextOpt$LeTextInfo;

    iget-object v0, v0, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->mCJKFontFamily:Ljava/lang/String;

    return-object v0
.end method

.method public getCJKTextSize()F
    .locals 1

    .prologue
    .line 10811
    iget-object v0, p0, Landroid/widget/TextView;->mLeTextInfo:Lcom/letv/leui/text/LeTextOpt$LeTextInfo;

    iget v0, v0, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->mLeTextStyle:I

    int-to-float v0, v0

    return v0
.end method

.method public getCompoundDrawablePadding()I
    .locals 2

    .prologue
    .line 2647
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 2648
    .local v0, "dr":Landroid/widget/TextView$Drawables;
    if-eqz v0, :cond_0

    iget v1, v0, Landroid/widget/TextView$Drawables;->mDrawablePadding:I

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCompoundDrawableTintList()Landroid/content/res/ColorStateList;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2683
    iget-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v0, v0, Landroid/widget/TextView$Drawables;->mTintList:Landroid/content/res/ColorStateList;

    :cond_0
    return-object v0
.end method

.method public getCompoundDrawableTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2717
    iget-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v0, v0, Landroid/widget/TextView$Drawables;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    :cond_0
    return-object v0
.end method

.method public getCompoundDrawables()[Landroid/graphics/drawable/Drawable;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2588
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 2589
    .local v0, "dr":Landroid/widget/TextView$Drawables;
    if-eqz v0, :cond_0

    .line 2590
    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/graphics/drawable/Drawable;

    return-object v1

    .line 2592
    :cond_0
    const/4 v1, 0x4

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object v3, v1, v2

    return-object v1
.end method

.method public getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x3

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2606
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 2607
    .local v0, "dr":Landroid/widget/TextView$Drawables;
    if-eqz v0, :cond_0

    .line 2608
    const/4 v1, 0x4

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    .line 2609
    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    aput-object v2, v1, v5

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, v3

    aput-object v2, v1, v3

    .line 2610
    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    aput-object v2, v1, v6

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, v4

    aput-object v2, v1, v4

    .line 2608
    return-object v1

    .line 2613
    :cond_0
    const/4 v1, 0x4

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    aput-object v2, v1, v5

    aput-object v2, v1, v3

    aput-object v2, v1, v6

    aput-object v2, v1, v4

    return-object v1
.end method

.method public getCompoundPaddingBottom()I
    .locals 3

    .prologue
    .line 1990
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 1991
    .local v0, "dr":Landroid/widget/TextView$Drawables;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    if-nez v1, :cond_1

    .line 1992
    :cond_0
    iget v1, p0, Landroid/widget/TextView;->mPaddingBottom:I

    return v1

    .line 1994
    :cond_1
    iget v1, p0, Landroid/widget/TextView;->mPaddingBottom:I

    iget v2, v0, Landroid/widget/TextView$Drawables;->mDrawablePadding:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeBottom:I

    add-int/2addr v1, v2

    return v1
.end method

.method public getCompoundPaddingEnd()I
    .locals 1

    .prologue
    .line 2044
    invoke-virtual {p0}, Landroid/widget/TextView;->resolveDrawables()V

    .line 2045
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayoutDirection()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 2048
    :pswitch_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v0

    return v0

    .line 2050
    :pswitch_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v0

    return v0

    .line 2045
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getCompoundPaddingLeft()I
    .locals 3

    .prologue
    .line 2003
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 2004
    .local v0, "dr":Landroid/widget/TextView$Drawables;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    if-nez v1, :cond_1

    .line 2005
    :cond_0
    iget v1, p0, Landroid/widget/TextView;->mPaddingLeft:I

    return v1

    .line 2007
    :cond_1
    iget v1, p0, Landroid/widget/TextView;->mPaddingLeft:I

    iget v2, v0, Landroid/widget/TextView$Drawables;->mDrawablePadding:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeLeft:I

    add-int/2addr v1, v2

    return v1
.end method

.method public getCompoundPaddingRight()I
    .locals 3

    .prologue
    .line 2016
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 2017
    .local v0, "dr":Landroid/widget/TextView$Drawables;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    if-nez v1, :cond_1

    .line 2018
    :cond_0
    iget v1, p0, Landroid/widget/TextView;->mPaddingRight:I

    return v1

    .line 2020
    :cond_1
    iget v1, p0, Landroid/widget/TextView;->mPaddingRight:I

    iget v2, v0, Landroid/widget/TextView$Drawables;->mDrawablePadding:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    add-int/2addr v1, v2

    return v1
.end method

.method public getCompoundPaddingStart()I
    .locals 1

    .prologue
    .line 2029
    invoke-virtual {p0}, Landroid/widget/TextView;->resolveDrawables()V

    .line 2030
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayoutDirection()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 2033
    :pswitch_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v0

    return v0

    .line 2035
    :pswitch_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v0

    return v0

    .line 2030
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getCompoundPaddingTop()I
    .locals 3

    .prologue
    .line 1977
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 1978
    .local v0, "dr":Landroid/widget/TextView$Drawables;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    if-nez v1, :cond_1

    .line 1979
    :cond_0
    iget v1, p0, Landroid/widget/TextView;->mPaddingTop:I

    return v1

    .line 1981
    :cond_1
    iget v1, p0, Landroid/widget/TextView;->mPaddingTop:I

    iget v2, v0, Landroid/widget/TextView$Drawables;->mDrawablePadding:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeTop:I

    add-int/2addr v1, v2

    return v1
.end method

.method public final getCurrentHintTextColor()I
    .locals 1

    .prologue
    .line 3498
    iget-object v0, p0, Landroid/widget/TextView;->mHintTextColor:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/widget/TextView;->mCurHintTextColor:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/widget/TextView;->mCurTextColor:I

    goto :goto_0
.end method

.method public final getCurrentTextColor()I
    .locals 1

    .prologue
    .line 3260
    iget v0, p0, Landroid/widget/TextView;->mCurTextColor:I

    return v0
.end method

.method public getCustomInsertionActionModeCallback()Landroid/view/ActionMode$Callback;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 9921
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mCustomInsertionActionModeCallback:Landroid/view/ActionMode$Callback;

    goto :goto_0
.end method

.method public getCustomSelectionActionModeCallback()Landroid/view/ActionMode$Callback;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 9884
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mCustomSelectionActionModeCallback:Landroid/view/ActionMode$Callback;

    goto :goto_0
.end method

.method protected getDefaultEditable()Z
    .locals 1

    .prologue
    .line 1698
    const/4 v0, 0x0

    return v0
.end method

.method protected getDefaultMovementMethod()Landroid/text/method/MovementMethod;
    .locals 1

    .prologue
    .line 1705
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEditableText()Landroid/text/Editable;
    .locals 1

    .prologue
    .line 1737
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Editable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Editable;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getEllipsize()Landroid/text/TextUtils$TruncateAt;
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 8263
    iget-object v0, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    return-object v0
.end method

.method public getError()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 5052
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public getExtendedPaddingBottom()I
    .locals 7

    .prologue
    .line 2097
    iget v5, p0, Landroid/widget/TextView;->mMaxMode:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_0

    .line 2098
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v5

    return v5

    .line 2101
    :cond_0
    iget-object v5, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-nez v5, :cond_1

    .line 2102
    invoke-direct {p0}, Landroid/widget/TextView;->assumeLayout()V

    .line 2105
    :cond_1
    iget-object v5, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v5}, Landroid/text/Layout;->getLineCount()I

    move-result v5

    iget v6, p0, Landroid/widget/TextView;->mMaximum:I

    if-gt v5, v6, :cond_2

    .line 2106
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v5

    return v5

    .line 2109
    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v3

    .line 2110
    .local v3, "top":I
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v0

    .line 2111
    .local v0, "bottom":I
    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v5

    sub-int/2addr v5, v3

    sub-int v4, v5, v0

    .line 2112
    .local v4, "viewht":I
    iget-object v5, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    iget v6, p0, Landroid/widget/TextView;->mMaximum:I

    invoke-virtual {v5, v6}, Landroid/text/Layout;->getLineTop(I)I

    move-result v2

    .line 2114
    .local v2, "layoutht":I
    if-lt v2, v4, :cond_3

    .line 2115
    return v0

    .line 2118
    :cond_3
    iget v5, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v1, v5, 0x70

    .line 2119
    .local v1, "gravity":I
    const/16 v5, 0x30

    if-ne v1, v5, :cond_4

    .line 2120
    add-int v5, v0, v4

    sub-int/2addr v5, v2

    return v5

    .line 2121
    :cond_4
    const/16 v5, 0x50

    if-ne v1, v5, :cond_5

    .line 2122
    return v0

    .line 2124
    :cond_5
    sub-int v5, v4, v2

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v0

    return v5
.end method

.method public getExtendedPaddingTop()I
    .locals 7

    .prologue
    .line 2060
    iget v5, p0, Landroid/widget/TextView;->mMaxMode:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_0

    .line 2061
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v5

    return v5

    .line 2064
    :cond_0
    iget-object v5, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-nez v5, :cond_1

    .line 2065
    invoke-direct {p0}, Landroid/widget/TextView;->assumeLayout()V

    .line 2068
    :cond_1
    iget-object v5, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v5}, Landroid/text/Layout;->getLineCount()I

    move-result v5

    iget v6, p0, Landroid/widget/TextView;->mMaximum:I

    if-gt v5, v6, :cond_2

    .line 2069
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v5

    return v5

    .line 2072
    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v3

    .line 2073
    .local v3, "top":I
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v0

    .line 2074
    .local v0, "bottom":I
    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v5

    sub-int/2addr v5, v3

    sub-int v4, v5, v0

    .line 2075
    .local v4, "viewht":I
    iget-object v5, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    iget v6, p0, Landroid/widget/TextView;->mMaximum:I

    invoke-virtual {v5, v6}, Landroid/text/Layout;->getLineTop(I)I

    move-result v2

    .line 2077
    .local v2, "layoutht":I
    if-lt v2, v4, :cond_3

    .line 2078
    return v3

    .line 2081
    :cond_3
    iget v5, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v1, v5, 0x70

    .line 2082
    .local v1, "gravity":I
    const/16 v5, 0x30

    if-ne v1, v5, :cond_4

    .line 2083
    return v3

    .line 2084
    :cond_4
    const/16 v5, 0x50

    if-ne v1, v5, :cond_5

    .line 2085
    add-int v5, v3, v4

    sub-int/2addr v5, v2

    return v5

    .line 2087
    :cond_5
    sub-int v5, v4, v2

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v3

    return v5
.end method

.method protected getFadeHeight(Z)I
    .locals 1
    .param p1, "offsetRequired"    # Z

    .prologue
    .line 6116
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getFadeTop(Z)I
    .locals 3
    .param p1, "offsetRequired"    # Z

    .prologue
    .line 6099
    iget-object v1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    return v1

    .line 6101
    :cond_0
    const/4 v0, 0x0

    .line 6102
    .local v0, "voffset":I
    iget v1, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v1, v1, 0x70

    const/16 v2, 0x30

    if-eq v1, v2, :cond_1

    .line 6103
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v0

    .line 6106
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/widget/TextView;->getTopPaddingOffset()I

    move-result v1

    add-int/2addr v0, v1

    .line 6108
    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public getFilters()[Landroid/text/InputFilter;
    .locals 1

    .prologue
    .line 5174
    iget-object v0, p0, Landroid/widget/TextView;->mFilters:[Landroid/text/InputFilter;

    return-object v0
.end method

.method public getFocusedRect(Landroid/graphics/Rect;)V
    .locals 13
    .param p1, "r"    # Landroid/graphics/Rect;

    .prologue
    const/4 v12, 0x0

    .line 5980
    iget-object v8, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-nez v8, :cond_0

    .line 5981
    invoke-super {p0, p1}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 5982
    return-void

    .line 5985
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v6

    .line 5986
    .local v6, "selEnd":I
    if-gez v6, :cond_1

    .line 5987
    invoke-super {p0, p1}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 5988
    return-void

    .line 5991
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v7

    .line 5992
    .local v7, "selStart":I
    if-ltz v7, :cond_2

    if-lt v7, v6, :cond_4

    .line 5993
    :cond_2
    iget-object v8, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v8, v6}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    .line 5994
    .local v0, "line":I
    iget-object v8, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v8, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v8

    iput v8, p1, Landroid/graphics/Rect;->top:I

    .line 5995
    iget-object v8, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v8, v0}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v8

    iput v8, p1, Landroid/graphics/Rect;->bottom:I

    .line 5996
    iget-object v8, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v8, v6}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v8

    float-to-int v8, v8

    add-int/lit8 v8, v8, -0x2

    iput v8, p1, Landroid/graphics/Rect;->left:I

    .line 5997
    iget v8, p1, Landroid/graphics/Rect;->left:I

    add-int/lit8 v8, v8, 0x4

    iput v8, p1, Landroid/graphics/Rect;->right:I

    .line 6024
    .end local v0    # "line":I
    :goto_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v4

    .line 6025
    .local v4, "paddingLeft":I
    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v5

    .line 6026
    .local v5, "paddingTop":I
    iget v8, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v8, v8, 0x70

    const/16 v9, 0x30

    if-eq v8, v9, :cond_3

    .line 6027
    invoke-virtual {p0, v12}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v8

    add-int/2addr v5, v8

    .line 6029
    :cond_3
    invoke-virtual {p1, v4, v5}, Landroid/graphics/Rect;->offset(II)V

    .line 6030
    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingBottom()I

    move-result v3

    .line 6031
    .local v3, "paddingBottom":I
    iget v8, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v8, v3

    iput v8, p1, Landroid/graphics/Rect;->bottom:I

    .line 5979
    return-void

    .line 5999
    .end local v3    # "paddingBottom":I
    .end local v4    # "paddingLeft":I
    .end local v5    # "paddingTop":I
    :cond_4
    iget-object v8, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v8, v7}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v2

    .line 6000
    .local v2, "lineStart":I
    iget-object v8, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v8, v6}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v1

    .line 6001
    .local v1, "lineEnd":I
    iget-object v8, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v8, v2}, Landroid/text/Layout;->getLineTop(I)I

    move-result v8

    iput v8, p1, Landroid/graphics/Rect;->top:I

    .line 6002
    iget-object v8, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v8, v1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v8

    iput v8, p1, Landroid/graphics/Rect;->bottom:I

    .line 6003
    if-ne v2, v1, :cond_5

    .line 6004
    iget-object v8, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v8, v7}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v8

    float-to-int v8, v8

    iput v8, p1, Landroid/graphics/Rect;->left:I

    .line 6005
    iget-object v8, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v8, v6}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v8

    float-to-int v8, v8

    iput v8, p1, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 6009
    :cond_5
    iget-boolean v8, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    if-eqz v8, :cond_7

    .line 6010
    iget-object v8, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    if-nez v8, :cond_6

    new-instance v8, Landroid/graphics/Path;

    invoke-direct {v8}, Landroid/graphics/Path;-><init>()V

    iput-object v8, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    .line 6011
    :cond_6
    iget-object v8, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    invoke-virtual {v8}, Landroid/graphics/Path;->reset()V

    .line 6012
    iget-object v8, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    iget-object v9, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    invoke-virtual {v8, v7, v6, v9}, Landroid/text/Layout;->getSelectionPath(IILandroid/graphics/Path;)V

    .line 6013
    iput-boolean v12, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    .line 6015
    :cond_7
    sget-object v9, Landroid/widget/TextView;->TEMP_RECTF:Landroid/graphics/RectF;

    monitor-enter v9

    .line 6016
    :try_start_0
    iget-object v8, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    sget-object v10, Landroid/widget/TextView;->TEMP_RECTF:Landroid/graphics/RectF;

    const/4 v11, 0x1

    invoke-virtual {v8, v10, v11}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 6017
    sget-object v8, Landroid/widget/TextView;->TEMP_RECTF:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->left:F

    float-to-int v8, v8

    add-int/lit8 v8, v8, -0x1

    iput v8, p1, Landroid/graphics/Rect;->left:I

    .line 6018
    sget-object v8, Landroid/widget/TextView;->TEMP_RECTF:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->right:F

    float-to-int v8, v8

    add-int/lit8 v8, v8, 0x1

    iput v8, p1, Landroid/graphics/Rect;->right:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v9

    goto/16 :goto_0

    .line 6015
    :catchall_0
    move-exception v8

    monitor-exit v9

    throw v8
.end method

.method public getFontFeatureSettings()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3123
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontFeatureSettings()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFreezesText()Z
    .locals 1

    .prologue
    .line 4249
    iget-boolean v0, p0, Landroid/widget/TextView;->mFreezesText:Z

    return v0
.end method

.method public getGravity()I
    .locals 1

    .prologue
    .line 3590
    iget v0, p0, Landroid/widget/TextView;->mGravity:I

    return v0
.end method

.method public getHighlightColor()I
    .locals 1

    .prologue
    .line 3288
    iget v0, p0, Landroid/widget/TextView;->mHighlightColor:I

    return v0
.end method

.method public getHint()Ljava/lang/CharSequence;
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 4593
    iget-object v0, p0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    return-object v0
.end method

.method final getHintLayout()Landroid/text/Layout;
    .locals 1

    .prologue
    .line 1764
    iget-object v0, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    return-object v0
.end method

.method public final getHintTextColors()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 3488
    iget-object v0, p0, Landroid/widget/TextView;->mHintTextColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getHorizontalOffsetForDrawables()I
    .locals 1

    .prologue
    .line 5782
    const/4 v0, 0x0

    return v0
.end method

.method public getHorizontallyScrolling()Z
    .locals 1

    .prologue
    .line 3645
    iget-boolean v0, p0, Landroid/widget/TextView;->mHorizontallyScrolling:Z

    return v0
.end method

.method public getHyphenationFrequency()I
    .locals 1

    .prologue
    .line 3179
    iget v0, p0, Landroid/widget/TextView;->mHyphenationFrequency:I

    return v0
.end method

.method public getImeActionId()I
    .locals 1

    .prologue
    .line 4869
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    if-eqz v0, :cond_0

    .line 4870
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget v0, v0, Landroid/widget/Editor$InputContentType;->imeActionId:I

    .line 4869
    :goto_0
    return v0

    .line 4870
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getImeActionLabel()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 4858
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v1, v1, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    if-eqz v1, :cond_0

    .line 4859
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget-object v0, v0, Landroid/widget/Editor$InputContentType;->imeActionLabel:Ljava/lang/CharSequence;

    .line 4858
    :cond_0
    return-object v0
.end method

.method public getImeOptions()I
    .locals 1

    .prologue
    .line 4830
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    if-eqz v0, :cond_0

    .line 4831
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget v0, v0, Landroid/widget/Editor$InputContentType;->imeOptions:I

    .line 4830
    :goto_0
    return v0

    .line 4831
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIncludeFontPadding()Z
    .locals 1

    .prologue
    .line 7111
    iget-boolean v0, p0, Landroid/widget/TextView;->mIncludePad:Z

    return v0
.end method

.method public getInputExtras(Z)Landroid/os/Bundle;
    .locals 2
    .param p1, "create"    # Z

    .prologue
    const/4 v1, 0x0

    .line 5033
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    .line 5034
    :cond_0
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 5035
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    if-nez v0, :cond_3

    .line 5036
    if-nez p1, :cond_2

    return-object v1

    .line 5033
    :cond_1
    return-object v1

    .line 5037
    :cond_2
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->createInputContentTypeIfNeeded()V

    .line 5039
    :cond_3
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget-object v0, v0, Landroid/widget/Editor$InputContentType;->extras:Landroid/os/Bundle;

    if-nez v0, :cond_5

    .line 5040
    if-nez p1, :cond_4

    return-object v1

    .line 5041
    :cond_4
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, v0, Landroid/widget/Editor$InputContentType;->extras:Landroid/os/Bundle;

    .line 5043
    :cond_5
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget-object v0, v0, Landroid/widget/Editor$InputContentType;->extras:Landroid/os/Bundle;

    return-object v0
.end method

.method public getInputType()I
    .locals 1

    .prologue
    .line 4806
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget v0, v0, Landroid/widget/Editor;->mInputType:I

    goto :goto_0
.end method

.method public getIterableTextForAccessibility()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 10278
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getIteratorForGranularity(I)Landroid/view/AccessibilityIterators$TextSegmentIterator;
    .locals 4
    .param p1, "granularity"    # I

    .prologue
    .line 10292
    sparse-switch p1, :sswitch_data_0

    .line 10312
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->getIteratorForGranularity(I)Landroid/view/AccessibilityIterators$TextSegmentIterator;

    move-result-object v3

    return-object v3

    .line 10294
    :sswitch_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getIterableTextForAccessibility()Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Landroid/text/Spannable;

    .line 10295
    .local v2, "text":Landroid/text/Spannable;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 10297
    invoke-static {}, Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;->getInstance()Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;

    move-result-object v0

    .line 10298
    .local v0, "iterator":Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;->initialize(Landroid/text/Spannable;Landroid/text/Layout;)V

    .line 10299
    return-object v0

    .line 10303
    .end local v0    # "iterator":Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;
    .end local v2    # "text":Landroid/text/Spannable;
    :sswitch_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getIterableTextForAccessibility()Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Landroid/text/Spannable;

    .line 10304
    .restart local v2    # "text":Landroid/text/Spannable;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 10306
    invoke-static {}, Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;->getInstance()Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;

    move-result-object v1

    .line 10307
    .local v1, "iterator":Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;
    invoke-virtual {v1, p0}, Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;->initialize(Landroid/widget/TextView;)V

    .line 10308
    return-object v1

    .line 10292
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x10 -> :sswitch_1
    .end sparse-switch
.end method

.method public final getKeyListener()Landroid/text/method/KeyListener;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1815
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    goto :goto_0
.end method

.method public final getLayout()Landroid/text/Layout;
    .locals 1

    .prologue
    .line 1756
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    return-object v0
.end method

.method public getLeCJKTextStyle()I
    .locals 1

    .prologue
    .line 10853
    invoke-virtual {p0}, Landroid/widget/TextView;->getLeTextWeight()I

    move-result v0

    return v0
.end method

.method public getLeTextStyle()I
    .locals 1

    .prologue
    .line 10837
    invoke-virtual {p0}, Landroid/widget/TextView;->getLeTextWeight()I

    move-result v0

    return v0
.end method

.method public getLeTextWeight()I
    .locals 1

    .prologue
    .line 10829
    iget-object v0, p0, Landroid/widget/TextView;->mLeTextInfo:Lcom/letv/leui/text/LeTextOpt$LeTextInfo;

    iget v0, v0, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->mLeTextStyle:I

    return v0
.end method

.method protected getLeftFadingEdgeStrength()F
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 8971
    iget-object v5, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    sget-object v6, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v5, v6, :cond_1

    .line 8972
    iget v5, p0, Landroid/widget/TextView;->mMarqueeFadeMode:I

    if-eq v5, v9, :cond_1

    .line 8973
    iget-object v5, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    if-eqz v5, :cond_0

    iget-object v5, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    invoke-virtual {v5}, Landroid/widget/TextView$Marquee;->isStopped()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 8981
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getLineCount()I

    move-result v5

    if-ne v5, v9, :cond_1

    .line 8982
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayoutDirection()I

    move-result v1

    .line 8983
    .local v1, "layoutDirection":I
    iget v5, p0, Landroid/widget/TextView;->mGravity:I

    invoke-static {v5, v1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v0

    .line 8984
    .local v0, "absoluteGravity":I
    and-int/lit8 v5, v0, 0x7

    packed-switch v5, :pswitch_data_0

    .line 9004
    .end local v0    # "absoluteGravity":I
    .end local v1    # "layoutDirection":I
    :cond_1
    :pswitch_0
    invoke-super {p0}, Landroid/view/View;->getLeftFadingEdgeStrength()F

    move-result v5

    return v5

    .line 8974
    :cond_2
    iget-object v2, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    .line 8975
    .local v2, "marquee":Landroid/widget/TextView$Marquee;
    invoke-virtual {v2}, Landroid/widget/TextView$Marquee;->shouldDrawLeftFade()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 8976
    invoke-virtual {v2}, Landroid/widget/TextView$Marquee;->getScroll()F

    move-result v3

    .line 8977
    .local v3, "scroll":F
    invoke-virtual {p0}, Landroid/widget/TextView;->getHorizontalFadingEdgeLength()I

    move-result v5

    int-to-float v5, v5

    div-float v5, v3, v5

    return v5

    .line 8979
    .end local v3    # "scroll":F
    :cond_3
    return v7

    .line 8986
    .end local v2    # "marquee":Landroid/widget/TextView$Marquee;
    .restart local v0    # "absoluteGravity":I
    .restart local v1    # "layoutDirection":I
    :pswitch_1
    return v7

    .line 8988
    :pswitch_2
    iget-object v5, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v5, v8}, Landroid/text/Layout;->getLineRight(I)F

    move-result v5

    iget v6, p0, Landroid/widget/TextView;->mRight:I

    iget v7, p0, Landroid/widget/TextView;->mLeft:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    sub-float/2addr v5, v6

    .line 8989
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v6

    int-to-float v6, v6

    .line 8988
    sub-float/2addr v5, v6

    .line 8989
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v6

    int-to-float v6, v6

    .line 8988
    sub-float/2addr v5, v6

    .line 8990
    iget-object v6, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v6, v8}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v6

    .line 8988
    sub-float/2addr v5, v6

    .line 8990
    invoke-virtual {p0}, Landroid/widget/TextView;->getHorizontalFadingEdgeLength()I

    move-result v6

    int-to-float v6, v6

    .line 8988
    div-float/2addr v5, v6

    return v5

    .line 8993
    :pswitch_3
    iget-object v5, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v5, v8}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v4

    .line 8994
    .local v4, "textDirection":I
    if-ne v4, v9, :cond_4

    .line 8995
    return v7

    .line 8997
    :cond_4
    iget-object v5, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v5, v8}, Landroid/text/Layout;->getLineRight(I)F

    move-result v5

    iget v6, p0, Landroid/widget/TextView;->mRight:I

    iget v7, p0, Landroid/widget/TextView;->mLeft:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    sub-float/2addr v5, v6

    .line 8998
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v6

    int-to-float v6, v6

    .line 8997
    sub-float/2addr v5, v6

    .line 8998
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v6

    int-to-float v6, v6

    .line 8997
    sub-float/2addr v5, v6

    .line 8999
    iget-object v6, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v6, v8}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v6

    .line 8997
    sub-float/2addr v5, v6

    .line 8999
    invoke-virtual {p0}, Landroid/widget/TextView;->getHorizontalFadingEdgeLength()I

    move-result v6

    int-to-float v6, v6

    .line 8997
    div-float/2addr v5, v6

    return v5

    .line 8984
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected getLeftPaddingOffset()I
    .locals 4

    .prologue
    .line 5471
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v0

    iget v1, p0, Landroid/widget/TextView;->mPaddingLeft:I

    sub-int/2addr v0, v1

    .line 5472
    const/4 v1, 0x0

    iget v2, p0, Landroid/widget/TextView;->mShadowDx:F

    iget v3, p0, Landroid/widget/TextView;->mShadowRadius:F

    sub-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    float-to-int v1, v1

    .line 5471
    add-int/2addr v0, v1

    return v0
.end method

.method public getLetterSpacing()F
    .locals 1

    .prologue
    .line 3090
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getLetterSpacing()F

    move-result v0

    return v0
.end method

.method getLineAtCoordinate(F)I
    .locals 2
    .param p1, "y"    # F

    .prologue
    .line 10092
    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p1, v0

    .line 10094
    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 10095
    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 10096
    invoke-virtual {p0}, Landroid/widget/TextView;->getScrollY()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p1, v0

    .line 10097
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    float-to-int v1, p1

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v0

    return v0
.end method

.method getLineAtCoordinateUnclamped(F)I
    .locals 2
    .param p1, "y"    # F

    .prologue
    .line 10101
    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p1, v0

    .line 10102
    invoke-virtual {p0}, Landroid/widget/TextView;->getScrollY()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p1, v0

    .line 10103
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    float-to-int v1, p1

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v0

    return v0
.end method

.method public getLineBounds(ILandroid/graphics/Rect;)I
    .locals 4
    .param p1, "line"    # I
    .param p2, "bounds"    # Landroid/graphics/Rect;

    .prologue
    const/4 v3, 0x0

    .line 6052
    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-nez v2, :cond_1

    .line 6053
    if-eqz p2, :cond_0

    .line 6054
    invoke-virtual {p2, v3, v3, v3, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 6056
    :cond_0
    return v3

    .line 6059
    :cond_1
    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2, p1, p2}, Landroid/text/Layout;->getLineBounds(ILandroid/graphics/Rect;)I

    move-result v0

    .line 6061
    .local v0, "baseline":I
    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v1

    .line 6062
    .local v1, "voffset":I
    iget v2, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v2, v2, 0x70

    const/16 v3, 0x30

    if-eq v2, v3, :cond_2

    .line 6063
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v2

    add-int/2addr v1, v2

    .line 6065
    :cond_2
    if-eqz p2, :cond_3

    .line 6066
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v2

    invoke-virtual {p2, v2, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 6068
    :cond_3
    add-int v2, v0, v1

    return v2
.end method

.method public getLineCount()I
    .locals 1

    .prologue
    .line 6039
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLineHeight()I
    .locals 3

    .prologue
    .line 1748
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    new-instance v2, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v2}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/text/TextPaint;->getFontMetricsInt(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Landroid/widget/TextView;->mSpacingMult:F

    mul-float/2addr v0, v1

    iget v1, p0, Landroid/widget/TextView;->mSpacingAdd:F

    add-float/2addr v0, v1

    invoke-static {v0}, Lcom/android/internal/util/FastMath;->round(F)I

    move-result v0

    return v0
.end method

.method public getLineSpacingExtra()F
    .locals 1

    .prologue
    .line 3993
    iget v0, p0, Landroid/widget/TextView;->mSpacingAdd:F

    return v0
.end method

.method public getLineSpacingMultiplier()F
    .locals 1

    .prologue
    .line 3979
    iget v0, p0, Landroid/widget/TextView;->mSpacingMult:F

    return v0
.end method

.method public final getLinkTextColors()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 3540
    iget-object v0, p0, Landroid/widget/TextView;->mLinkTextColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public final getLinksClickable()Z
    .locals 1

    .prologue
    .line 3428
    iget-boolean v0, p0, Landroid/widget/TextView;->mLinksClickable:Z

    return v0
.end method

.method public getMarqueeRepeatLimit()I
    .locals 1

    .prologue
    .line 8254
    iget v0, p0, Landroid/widget/TextView;->mMarqueeRepeatLimit:I

    return v0
.end method

.method public getMaxEms()I
    .locals 2

    .prologue
    .line 3878
    iget v0, p0, Landroid/widget/TextView;->mMaxWidthMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/widget/TextView;->mMaxWidth:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getMaxHeight()I
    .locals 2

    .prologue
    .line 3761
    iget v0, p0, Landroid/widget/TextView;->mMaxMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/widget/TextView;->mMaximum:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getMaxLines()I
    .locals 2

    .prologue
    .line 3732
    iget v0, p0, Landroid/widget/TextView;->mMaxMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/widget/TextView;->mMaximum:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getMaxWidth()I
    .locals 2

    .prologue
    .line 3905
    iget v0, p0, Landroid/widget/TextView;->mMaxWidthMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/widget/TextView;->mMaxWidth:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getMinEms()I
    .locals 2

    .prologue
    .line 3824
    iget v0, p0, Landroid/widget/TextView;->mMinWidthMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/widget/TextView;->mMinWidth:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getMinHeight()I
    .locals 2

    .prologue
    .line 3704
    iget v0, p0, Landroid/widget/TextView;->mMinMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/widget/TextView;->mMinimum:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getMinLines()I
    .locals 2

    .prologue
    .line 3676
    iget v0, p0, Landroid/widget/TextView;->mMinMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/widget/TextView;->mMinimum:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getMinWidth()I
    .locals 2

    .prologue
    .line 3851
    iget v0, p0, Landroid/widget/TextView;->mMinWidthMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/widget/TextView;->mMinWidth:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public final getMovementMethod()Landroid/text/method/MovementMethod;
    .locals 1

    .prologue
    .line 1881
    iget-object v0, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    return-object v0
.end method

.method getOffsetAtCoordinate(IF)I
    .locals 1
    .param p1, "line"    # I
    .param p2, "x"    # F

    .prologue
    .line 10107
    invoke-virtual {p0, p2}, Landroid/widget/TextView;->convertToLocalHorizontalCoordinate(F)F

    move-result p2

    .line 10108
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v0

    return v0
.end method

.method public getOffsetForPosition(FF)I
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 10076
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v2, -0x1

    return v2

    .line 10077
    :cond_0
    invoke-virtual {p0, p2}, Landroid/widget/TextView;->getLineAtCoordinate(F)I

    move-result v0

    .line 10078
    .local v0, "line":I
    invoke-virtual {p0, v0, p1}, Landroid/widget/TextView;->getOffsetAtCoordinate(IF)I

    move-result v1

    .line 10079
    .local v1, "offset":I
    return v1
.end method

.method public getPaint()Landroid/text/TextPaint;
    .locals 1

    .prologue
    .line 3391
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    return-object v0
.end method

.method public getPaintFlags()I
    .locals 1

    .prologue
    .line 3598
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFlags()I

    move-result v0

    return v0
.end method

.method public getPrivateImeOptions()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 4999
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v1, v1, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    if-eqz v1, :cond_0

    .line 5000
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget-object v0, v0, Landroid/widget/Editor$InputContentType;->privateImeOptions:Ljava/lang/String;

    .line 4999
    :cond_0
    return-object v0
.end method

.method protected getRightFadingEdgeStrength()F
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 9009
    iget-object v8, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    sget-object v9, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v8, v9, :cond_1

    .line 9010
    iget v8, p0, Landroid/widget/TextView;->mMarqueeFadeMode:I

    if-eq v8, v12, :cond_1

    .line 9011
    iget-object v8, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    if-eqz v8, :cond_0

    iget-object v8, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    invoke-virtual {v8}, Landroid/widget/TextView$Marquee;->isStopped()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 9016
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getLineCount()I

    move-result v8

    if-ne v8, v12, :cond_1

    .line 9017
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayoutDirection()I

    move-result v1

    .line 9018
    .local v1, "layoutDirection":I
    iget v8, p0, Landroid/widget/TextView;->mGravity:I

    invoke-static {v8, v1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v0

    .line 9019
    .local v0, "absoluteGravity":I
    and-int/lit8 v8, v0, 0x7

    packed-switch v8, :pswitch_data_0

    .line 9040
    .end local v0    # "absoluteGravity":I
    .end local v1    # "layoutDirection":I
    :cond_1
    :pswitch_0
    invoke-super {p0}, Landroid/view/View;->getRightFadingEdgeStrength()F

    move-result v8

    return v8

    .line 9012
    :cond_2
    iget-object v3, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    .line 9013
    .local v3, "marquee":Landroid/widget/TextView$Marquee;
    invoke-virtual {v3}, Landroid/widget/TextView$Marquee;->getMaxFadeScroll()F

    move-result v4

    .line 9014
    .local v4, "maxFadeScroll":F
    invoke-virtual {v3}, Landroid/widget/TextView$Marquee;->getScroll()F

    move-result v5

    .line 9015
    .local v5, "scroll":F
    sub-float v8, v4, v5

    invoke-virtual {p0}, Landroid/widget/TextView;->getHorizontalFadingEdgeLength()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    return v8

    .line 9021
    .end local v3    # "marquee":Landroid/widget/TextView$Marquee;
    .end local v4    # "maxFadeScroll":F
    .end local v5    # "scroll":F
    .restart local v0    # "absoluteGravity":I
    .restart local v1    # "layoutDirection":I
    :pswitch_1
    iget v8, p0, Landroid/widget/TextView;->mRight:I

    iget v9, p0, Landroid/widget/TextView;->mLeft:I

    sub-int/2addr v8, v9

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v9

    sub-int/2addr v8, v9

    .line 9022
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v9

    .line 9021
    sub-int v7, v8, v9

    .line 9023
    .local v7, "textWidth":I
    iget-object v8, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v8, v10}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v2

    .line 9024
    .local v2, "lineWidth":F
    int-to-float v8, v7

    sub-float v8, v2, v8

    invoke-virtual {p0}, Landroid/widget/TextView;->getHorizontalFadingEdgeLength()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    return v8

    .line 9026
    .end local v2    # "lineWidth":F
    .end local v7    # "textWidth":I
    :pswitch_2
    return v11

    .line 9029
    :pswitch_3
    iget-object v8, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v8, v10}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v6

    .line 9030
    .local v6, "textDirection":I
    const/4 v8, -0x1

    if-ne v6, v8, :cond_3

    .line 9031
    return v11

    .line 9033
    :cond_3
    iget-object v8, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v8, v10}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v8

    iget v9, p0, Landroid/widget/TextView;->mRight:I

    iget v10, p0, Landroid/widget/TextView;->mLeft:I

    sub-int/2addr v9, v10

    .line 9034
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v10

    .line 9033
    sub-int/2addr v9, v10

    .line 9034
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v10

    .line 9033
    sub-int/2addr v9, v10

    int-to-float v9, v9

    sub-float/2addr v8, v9

    .line 9035
    invoke-virtual {p0}, Landroid/widget/TextView;->getHorizontalFadingEdgeLength()I

    move-result v9

    int-to-float v9, v9

    .line 9033
    div-float/2addr v8, v9

    return v8

    .line 9019
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected getRightPaddingOffset()I
    .locals 4

    .prologue
    .line 5498
    invoke-direct {p0}, Landroid/widget/TextView;->getFudgedPaddingRight()I

    move-result v0

    iget v1, p0, Landroid/widget/TextView;->mPaddingRight:I

    sub-int/2addr v0, v1

    neg-int v0, v0

    .line 5499
    const/4 v1, 0x0

    iget v2, p0, Landroid/widget/TextView;->mShadowDx:F

    iget v3, p0, Landroid/widget/TextView;->mShadowRadius:F

    add-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    float-to-int v1, v1

    .line 5498
    add-int/2addr v0, v1

    return v0
.end method

.method public getScaledTextSize()F
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "text"
    .end annotation

    .prologue
    .line 2935
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTextSize()F

    move-result v0

    iget-object v1, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    iget v1, v1, Landroid/text/TextPaint;->density:F

    div-float/2addr v0, v1

    return v0
.end method

.method getSelectedText()Ljava/lang/String;
    .locals 3

    .prologue
    .line 8102
    invoke-virtual {p0}, Landroid/widget/TextView;->hasSelection()Z

    move-result v2

    if-nez v2, :cond_0

    .line 8103
    const/4 v2, 0x0

    return-object v2

    .line 8106
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    .line 8107
    .local v1, "start":I
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .line 8109
    .local v0, "end":I
    if-le v1, v0, :cond_1

    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v2, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    .line 8108
    :goto_0
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 8109
    :cond_1
    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v2, v1, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_0
.end method

.method public getSelectionEnd()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "text"
    .end annotation

    .prologue
    .line 8088
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    return v0
.end method

.method public getSelectionStart()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "text"
    .end annotation

    .prologue
    .line 8080
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    return v0
.end method

.method public getShadowColor()I
    .locals 1

    .prologue
    .line 3383
    iget v0, p0, Landroid/widget/TextView;->mShadowColor:I

    return v0
.end method

.method public getShadowDx()F
    .locals 1

    .prologue
    .line 3360
    iget v0, p0, Landroid/widget/TextView;->mShadowDx:F

    return v0
.end method

.method public getShadowDy()F
    .locals 1

    .prologue
    .line 3371
    iget v0, p0, Landroid/widget/TextView;->mShadowDy:F

    return v0
.end method

.method public getShadowRadius()F
    .locals 1

    .prologue
    .line 3349
    iget v0, p0, Landroid/widget/TextView;->mShadowRadius:F

    return v0
.end method

.method public final getShowSoftInputOnFocus()Z
    .locals 1

    .prologue
    .line 3307
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-boolean v0, v0, Landroid/widget/Editor;->mShowSoftInputOnFocus:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getSpellCheckerLocale()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 9256
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/widget/TextView;->getTextServicesLocale(Z)Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 1720
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final getTextColors()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 3250
    iget-object v0, p0, Landroid/widget/TextView;->mTextColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method getTextDirectionHeuristic()Landroid/text/TextDirectionHeuristic;
    .locals 3

    .prologue
    .line 10160
    invoke-virtual {p0}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 10162
    sget-object v1, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    return-object v1

    .line 10166
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayoutDirection()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    .line 10169
    .local v0, "defaultIsRtl":Z
    :goto_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextDirection()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 10172
    :pswitch_0
    if-eqz v0, :cond_2

    sget-object v1, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_RTL:Landroid/text/TextDirectionHeuristic;

    :goto_1
    return-object v1

    .line 10166
    .end local v0    # "defaultIsRtl":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "defaultIsRtl":Z
    goto :goto_0

    .line 10173
    :cond_2
    sget-object v1, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    goto :goto_1

    .line 10175
    :pswitch_1
    sget-object v1, Landroid/text/TextDirectionHeuristics;->ANYRTL_LTR:Landroid/text/TextDirectionHeuristic;

    return-object v1

    .line 10177
    :pswitch_2
    sget-object v1, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    return-object v1

    .line 10179
    :pswitch_3
    sget-object v1, Landroid/text/TextDirectionHeuristics;->RTL:Landroid/text/TextDirectionHeuristic;

    return-object v1

    .line 10181
    :pswitch_4
    sget-object v1, Landroid/text/TextDirectionHeuristics;->LOCALE:Landroid/text/TextDirectionHeuristic;

    return-object v1

    .line 10183
    :pswitch_5
    sget-object v1, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    return-object v1

    .line 10185
    :pswitch_6
    sget-object v1, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_RTL:Landroid/text/TextDirectionHeuristic;

    return-object v1

    .line 10169
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public getTextForAccessibility()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 9655
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 9656
    .local v0, "text":Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9657
    invoke-virtual {p0}, Landroid/widget/TextView;->getHint()Ljava/lang/CharSequence;

    move-result-object v0

    .line 9659
    :cond_0
    return-object v0
.end method

.method public getTextLocale()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 2896
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTextLocale()Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public getTextScaleX()F
    .locals 1

    .prologue
    .line 3008
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTextScaleX()F

    move-result v0

    return v0
.end method

.method public getTextServicesLocale()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 9233
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/TextView;->getTextServicesLocale(Z)Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public getTextSize()F
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "text"
    .end annotation

    .prologue
    .line 2926
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTextSize()F

    move-result v0

    return v0
.end method

.method protected getTopPaddingOffset()I
    .locals 3

    .prologue
    .line 5477
    const/4 v0, 0x0

    iget v1, p0, Landroid/widget/TextView;->mShadowDy:F

    iget v2, p0, Landroid/widget/TextView;->mShadowRadius:F

    sub-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public getTotalPaddingBottom()I
    .locals 2

    .prologue
    .line 2175
    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingBottom()I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Landroid/widget/TextView;->getBottomVerticalOffset(Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getTotalPaddingEnd()I
    .locals 1

    .prologue
    .line 2157
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingEnd()I

    move-result v0

    return v0
.end method

.method public getTotalPaddingLeft()I
    .locals 1

    .prologue
    .line 2133
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v0

    return v0
.end method

.method public getTotalPaddingRight()I
    .locals 1

    .prologue
    .line 2141
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v0

    return v0
.end method

.method public getTotalPaddingStart()I
    .locals 1

    .prologue
    .line 2149
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingStart()I

    move-result v0

    return v0
.end method

.method public getTotalPaddingTop()I
    .locals 2

    .prologue
    .line 2166
    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final getTransformationMethod()Landroid/text/method/TransformationMethod;
    .locals 1

    .prologue
    .line 1932
    iget-object v0, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    return-object v0
.end method

.method getTransformedText(II)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 9775
    iget-object v0, p0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    invoke-interface {v0, p1, p2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->removeSuggestionSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTypeface()Landroid/graphics/Typeface;
    .locals 1

    .prologue
    .line 3066
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public getTypefaceStyle()I
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "text"
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x0
                to = "NORMAL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x1
                to = "BOLD"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x2
                to = "ITALIC"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x3
                to = "BOLD_ITALIC"
            .end subannotation
        }
    .end annotation

    .prologue
    .line 2946
    iget-object v1, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    .line 2947
    .local v0, "typeface":Landroid/graphics/Typeface;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Typeface;->getStyle()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final getUndoManager()Landroid/content/UndoManager;
    .locals 2

    .prologue
    .line 1777
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getUrls()[Landroid/text/style/URLSpan;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3439
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spanned;

    if-eqz v0, :cond_0

    .line 3440
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spanned;

    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const-class v2, Landroid/text/style/URLSpan;

    invoke-interface {v0, v3, v1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/URLSpan;

    return-object v0

    .line 3442
    :cond_0
    new-array v0, v3, [Landroid/text/style/URLSpan;

    return-object v0
.end method

.method getVerticalOffset(Z)I
    .locals 6
    .param p1, "forceNormal"    # Z

    .prologue
    .line 5188
    const/4 v4, 0x0

    .line 5189
    .local v4, "voffset":I
    iget v5, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v1, v5, 0x70

    .line 5191
    .local v1, "gravity":I
    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 5192
    .local v2, "l":Landroid/text/Layout;
    if-nez p1, :cond_0

    iget-object v5, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    if-eqz v5, :cond_0

    .line 5193
    iget-object v2, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    .line 5196
    :cond_0
    const/16 v5, 0x30

    if-eq v1, v5, :cond_1

    .line 5197
    invoke-direct {p0, v2}, Landroid/widget/TextView;->getBoxHeight(Landroid/text/Layout;)I

    move-result v0

    .line 5198
    .local v0, "boxht":I
    invoke-virtual {v2}, Landroid/text/Layout;->getHeight()I

    move-result v3

    .line 5200
    .local v3, "textht":I
    if-ge v3, v0, :cond_1

    .line 5201
    const/16 v5, 0x50

    if-ne v1, v5, :cond_2

    .line 5202
    sub-int v4, v0, v3

    .line 5207
    .end local v0    # "boxht":I
    .end local v3    # "textht":I
    :cond_1
    :goto_0
    return v4

    .line 5204
    .restart local v0    # "boxht":I
    .restart local v3    # "textht":I
    :cond_2
    sub-int v5, v0, v3

    shr-int/lit8 v4, v5, 0x1

    goto :goto_0
.end method

.method public getWordIterator()Landroid/text/method/WordIterator;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 9295
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    .line 9296
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->getWordIterator()Landroid/text/method/WordIterator;

    move-result-object v0

    return-object v0

    .line 9298
    :cond_0
    return-object v1
.end method

.method public handleBackInTextActionModeIfNeeded(Landroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 6135
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v1, v1, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    if-nez v1, :cond_1

    .line 6136
    :cond_0
    return v2

    .line 6139
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_3

    .line 6140
    invoke-virtual {p0}, Landroid/widget/TextView;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    .line 6141
    .local v0, "state":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v0, :cond_2

    .line 6142
    invoke-virtual {v0, p1, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    .line 6144
    :cond_2
    return v3

    .line 6145
    .end local v0    # "state":Landroid/view/KeyEvent$DispatcherState;
    :cond_3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v3, :cond_5

    .line 6146
    invoke-virtual {p0}, Landroid/widget/TextView;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    .line 6147
    .restart local v0    # "state":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v0, :cond_4

    .line 6148
    invoke-virtual {v0, p1}, Landroid/view/KeyEvent$DispatcherState;->handleUpEvent(Landroid/view/KeyEvent;)V

    .line 6150
    :cond_4
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 6155
    .end local v0    # "state":Landroid/view/KeyEvent$DispatcherState;
    :cond_5
    return v2

    .line 6151
    .restart local v0    # "state":Landroid/view/KeyEvent$DispatcherState;
    :cond_6
    invoke-virtual {p0}, Landroid/widget/TextView;->stopTextActionMode()V

    .line 6152
    return v3
.end method

.method handleTextChanged(Ljava/lang/CharSequence;III)V
    .locals 4
    .param p1, "buffer"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "after"    # I

    .prologue
    .line 8537
    const-wide/16 v2, 0x0

    sput-wide v2, Landroid/widget/TextView;->sLastCutCopyOrTextChangedTime:J

    .line 8539
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-nez v1, :cond_3

    const/4 v0, 0x0

    .line 8540
    :goto_0
    if-eqz v0, :cond_0

    iget v1, v0, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    if-nez v1, :cond_1

    .line 8541
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->updateAfterEdit()V

    .line 8543
    :cond_1
    if-eqz v0, :cond_2

    .line 8544
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/widget/Editor$InputMethodState;->mContentChanged:Z

    .line 8545
    iget v1, v0, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    if-gez v1, :cond_5

    .line 8546
    iput p2, v0, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    .line 8548
    if-ge p3, p4, :cond_4

    move v1, p4

    :goto_1
    add-int/2addr v1, p2

    iput v1, v0, Landroid/widget/Editor$InputMethodState;->mChangedEnd:I

    .line 8555
    :goto_2
    iget v1, v0, Landroid/widget/Editor$InputMethodState;->mChangedDelta:I

    sub-int v2, p4, p3

    add-int/2addr v1, v2

    iput v1, v0, Landroid/widget/Editor$InputMethodState;->mChangedDelta:I

    .line 8557
    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView;->resetErrorChangedFlag()V

    .line 8558
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->sendOnTextChanged(Ljava/lang/CharSequence;III)V

    .line 8559
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 8536
    return-void

    .line 8539
    :cond_3
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v1, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    .local v0, "ims":Landroid/widget/Editor$InputMethodState;
    goto :goto_0

    .end local v0    # "ims":Landroid/widget/Editor$InputMethodState;
    :cond_4
    move v1, p3

    .line 8548
    goto :goto_1

    .line 8550
    :cond_5
    iget v1, v0, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    .line 8552
    iget v2, v0, Landroid/widget/Editor$InputMethodState;->mChangedEnd:I

    .line 8553
    if-ge p3, p4, :cond_6

    move v1, p4

    :goto_3
    add-int/2addr v1, p2

    iget v3, v0, Landroid/widget/Editor$InputMethodState;->mChangedDelta:I

    sub-int/2addr v1, v3

    .line 8552
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Landroid/widget/Editor$InputMethodState;->mChangedEnd:I

    goto :goto_2

    :cond_6
    move v1, p3

    .line 8553
    goto :goto_3
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .prologue
    .line 5609
    invoke-virtual {p0}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 5610
    :cond_1
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spannable;

    .line 5609
    if-nez v0, :cond_0

    .line 5610
    invoke-virtual {p0}, Landroid/widget/TextView;->hasSelection()Z

    move-result v0

    .line 5609
    if-nez v0, :cond_0

    .line 5611
    invoke-virtual {p0}, Landroid/widget/TextView;->isHorizontalFadingEdgeEnabled()Z

    move-result v0

    goto :goto_0
.end method

.method hasPasswordTransformationMethod()Z
    .locals 1

    .prologue
    .line 4719
    iget-object v0, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    instance-of v0, v0, Landroid/text/method/PasswordTransformationMethod;

    return v0
.end method

.method public hasSelection()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 8095
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    .line 8096
    .local v1, "selectionStart":I
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .line 8098
    .local v0, "selectionEnd":I
    if-ltz v1, :cond_0

    if-eq v1, v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public hideErrorIfUnchanged()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 6405
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-boolean v0, v0, Landroid/widget/Editor;->mErrorWasChanged:Z

    if-eqz v0, :cond_1

    .line 6404
    :cond_0
    :goto_0
    return-void

    .line 6406
    :cond_1
    invoke-virtual {p0, v1, v1}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public invalidDisplayList(II)V
    .locals 2
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 10911
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    .line 10912
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0, v1, p1, p2}, Landroid/widget/Editor;->invalidateTextDisplayList(Landroid/text/Layout;II)V

    .line 10910
    :cond_0
    return-void
.end method

.method invalidateCursor()V
    .locals 1

    .prologue
    .line 5277
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .line 5279
    .local v0, "where":I
    invoke-direct {p0, v0, v0, v0}, Landroid/widget/TextView;->invalidateCursor(III)V

    .line 5276
    return-void
.end method

.method invalidateCursorPath()V
    .locals 12

    .prologue
    .line 5234
    iget-boolean v5, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    if-eqz v5, :cond_1

    .line 5235
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidateCursor()V

    .line 5233
    :cond_0
    :goto_0
    return-void

    .line 5237
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v1

    .line 5238
    .local v1, "horizontalPadding":I
    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v5

    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v6

    add-int v4, v5, v6

    .line 5240
    .local v4, "verticalPadding":I
    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget v5, v5, Landroid/widget/Editor;->mCursorCount:I

    if-nez v5, :cond_3

    .line 5241
    sget-object v6, Landroid/widget/TextView;->TEMP_RECTF:Landroid/graphics/RectF;

    monitor-enter v6

    .line 5251
    :try_start_0
    iget-object v5, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v5}, Landroid/text/TextPaint;->getStrokeWidth()F

    move-result v5

    float-to-double v8, v5

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-float v3, v8

    .line 5252
    .local v3, "thick":F
    const/high16 v5, 0x3f800000    # 1.0f

    cmpg-float v5, v3, v5

    if-gez v5, :cond_2

    .line 5253
    const/high16 v3, 0x3f800000    # 1.0f

    .line 5256
    :cond_2
    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v3, v5

    .line 5259
    iget-object v5, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    sget-object v7, Landroid/widget/TextView;->TEMP_RECTF:Landroid/graphics/RectF;

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 5261
    int-to-float v5, v1

    sget-object v7, Landroid/widget/TextView;->TEMP_RECTF:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->left:F

    add-float/2addr v5, v7

    sub-float/2addr v5, v3

    float-to-double v8, v5

    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    double-to-int v5, v8

    .line 5262
    int-to-float v7, v4

    sget-object v8, Landroid/widget/TextView;->TEMP_RECTF:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->top:F

    add-float/2addr v7, v8

    sub-float/2addr v7, v3

    float-to-double v8, v7

    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    double-to-int v7, v8

    .line 5263
    int-to-float v8, v1

    sget-object v9, Landroid/widget/TextView;->TEMP_RECTF:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->right:F

    add-float/2addr v8, v9

    add-float/2addr v8, v3

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v8, v8

    .line 5264
    int-to-float v9, v4

    sget-object v10, Landroid/widget/TextView;->TEMP_RECTF:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v9, v10

    add-float/2addr v9, v3

    float-to-double v10, v9

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v9, v10

    .line 5261
    invoke-virtual {p0, v5, v7, v8, v9}, Landroid/widget/TextView;->invalidate(IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v6

    goto :goto_0

    .line 5241
    .end local v3    # "thick":F
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    .line 5267
    :cond_3
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget v5, v5, Landroid/widget/Editor;->mCursorCount:I

    if-ge v2, v5, :cond_0

    .line 5268
    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v5, v5, Landroid/widget/Editor;->mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v5, v5, v2

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 5269
    .local v0, "bounds":Landroid/graphics/Rect;
    iget v5, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v1

    iget v6, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v4

    .line 5270
    iget v7, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v7, v1

    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v8, v4

    .line 5269
    invoke-virtual {p0, v5, v6, v7, v8}, Landroid/widget/TextView;->invalidate(IIII)V

    .line 5267
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 16
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 5548
    const/4 v7, 0x0

    .line 5550
    .local v7, "handled":Z
    invoke-virtual/range {p0 .. p1}, Landroid/widget/TextView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 5551
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    .line 5552
    .local v5, "dirty":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v9, v0, Landroid/widget/TextView;->mScrollX:I

    .line 5553
    .local v9, "scrollX":I
    move-object/from16 v0, p0

    iget v10, v0, Landroid/widget/TextView;->mScrollY:I

    .line 5558
    .local v10, "scrollY":I
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 5559
    .local v6, "drawables":Landroid/widget/TextView$Drawables;
    if-eqz v6, :cond_0

    .line 5560
    iget-object v12, v6, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    const/4 v13, 0x0

    aget-object v12, v12, v13

    move-object/from16 v0, p1

    if-ne v0, v12, :cond_3

    .line 5561
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v4

    .line 5562
    .local v4, "compoundPaddingTop":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v1

    .line 5563
    .local v1, "compoundPaddingBottom":I
    move-object/from16 v0, p0

    iget v12, v0, Landroid/widget/TextView;->mBottom:I

    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/TextView;->mTop:I

    sub-int/2addr v12, v13

    sub-int/2addr v12, v1

    sub-int v11, v12, v4

    .line 5565
    .local v11, "vspace":I
    move-object/from16 v0, p0

    iget v12, v0, Landroid/widget/TextView;->mPaddingLeft:I

    add-int/2addr v9, v12

    .line 5566
    iget v12, v6, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    sub-int v12, v11, v12

    div-int/lit8 v12, v12, 0x2

    add-int/2addr v12, v4

    add-int/2addr v10, v12

    .line 5567
    const/4 v7, 0x1

    .line 5595
    .end local v1    # "compoundPaddingBottom":I
    .end local v4    # "compoundPaddingTop":I
    .end local v11    # "vspace":I
    :cond_0
    :goto_0
    if-eqz v7, :cond_1

    .line 5596
    iget v12, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v12, v9

    iget v13, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v13, v10

    .line 5597
    iget v14, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v14, v9

    iget v15, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v15, v10

    .line 5596
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13, v14, v15}, Landroid/widget/TextView;->invalidate(IIII)V

    .line 5601
    .end local v5    # "dirty":Landroid/graphics/Rect;
    .end local v6    # "drawables":Landroid/widget/TextView$Drawables;
    .end local v9    # "scrollX":I
    .end local v10    # "scrollY":I
    :cond_1
    if-nez v7, :cond_2

    .line 5602
    invoke-super/range {p0 .. p1}, Landroid/view/View;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 5547
    :cond_2
    return-void

    .line 5568
    .restart local v5    # "dirty":Landroid/graphics/Rect;
    .restart local v6    # "drawables":Landroid/widget/TextView$Drawables;
    .restart local v9    # "scrollX":I
    .restart local v10    # "scrollY":I
    :cond_3
    iget-object v12, v6, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    const/4 v13, 0x2

    aget-object v12, v12, v13

    move-object/from16 v0, p1

    if-ne v0, v12, :cond_4

    .line 5569
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v4

    .line 5570
    .restart local v4    # "compoundPaddingTop":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v1

    .line 5571
    .restart local v1    # "compoundPaddingBottom":I
    move-object/from16 v0, p0

    iget v12, v0, Landroid/widget/TextView;->mBottom:I

    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/TextView;->mTop:I

    sub-int/2addr v12, v13

    sub-int/2addr v12, v1

    sub-int v11, v12, v4

    .line 5573
    .restart local v11    # "vspace":I
    move-object/from16 v0, p0

    iget v12, v0, Landroid/widget/TextView;->mRight:I

    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/TextView;->mLeft:I

    sub-int/2addr v12, v13

    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/TextView;->mPaddingRight:I

    sub-int/2addr v12, v13

    iget v13, v6, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    sub-int/2addr v12, v13

    add-int/2addr v9, v12

    .line 5574
    iget v12, v6, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    sub-int v12, v11, v12

    div-int/lit8 v12, v12, 0x2

    add-int/2addr v12, v4

    add-int/2addr v10, v12

    .line 5575
    const/4 v7, 0x1

    goto :goto_0

    .line 5576
    .end local v1    # "compoundPaddingBottom":I
    .end local v4    # "compoundPaddingTop":I
    .end local v11    # "vspace":I
    :cond_4
    iget-object v12, v6, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    const/4 v13, 0x1

    aget-object v12, v12, v13

    move-object/from16 v0, p1

    if-ne v0, v12, :cond_5

    .line 5577
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v2

    .line 5578
    .local v2, "compoundPaddingLeft":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v3

    .line 5579
    .local v3, "compoundPaddingRight":I
    move-object/from16 v0, p0

    iget v12, v0, Landroid/widget/TextView;->mRight:I

    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/TextView;->mLeft:I

    sub-int/2addr v12, v13

    sub-int/2addr v12, v3

    sub-int v8, v12, v2

    .line 5581
    .local v8, "hspace":I
    iget v12, v6, Landroid/widget/TextView$Drawables;->mDrawableWidthTop:I

    sub-int v12, v8, v12

    div-int/lit8 v12, v12, 0x2

    add-int/2addr v12, v2

    add-int/2addr v9, v12

    .line 5582
    move-object/from16 v0, p0

    iget v12, v0, Landroid/widget/TextView;->mPaddingTop:I

    add-int/2addr v10, v12

    .line 5583
    const/4 v7, 0x1

    goto :goto_0

    .line 5584
    .end local v2    # "compoundPaddingLeft":I
    .end local v3    # "compoundPaddingRight":I
    .end local v8    # "hspace":I
    :cond_5
    iget-object v12, v6, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    const/4 v13, 0x3

    aget-object v12, v12, v13

    move-object/from16 v0, p1

    if-ne v0, v12, :cond_0

    .line 5585
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v2

    .line 5586
    .restart local v2    # "compoundPaddingLeft":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v3

    .line 5587
    .restart local v3    # "compoundPaddingRight":I
    move-object/from16 v0, p0

    iget v12, v0, Landroid/widget/TextView;->mRight:I

    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/TextView;->mLeft:I

    sub-int/2addr v12, v13

    sub-int/2addr v12, v3

    sub-int v8, v12, v2

    .line 5589
    .restart local v8    # "hspace":I
    iget v12, v6, Landroid/widget/TextView$Drawables;->mDrawableWidthBottom:I

    sub-int v12, v8, v12

    div-int/lit8 v12, v12, 0x2

    add-int/2addr v12, v2

    add-int/2addr v9, v12

    .line 5590
    move-object/from16 v0, p0

    iget v12, v0, Landroid/widget/TextView;->mBottom:I

    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/TextView;->mTop:I

    sub-int/2addr v12, v13

    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/TextView;->mPaddingBottom:I

    sub-int/2addr v12, v13

    iget v13, v6, Landroid/widget/TextView$Drawables;->mDrawableSizeBottom:I

    sub-int/2addr v12, v13

    add-int/2addr v10, v12

    .line 5591
    const/4 v7, 0x1

    goto/16 :goto_0
.end method

.method invalidateRegion(IIZ)V
    .locals 16
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "invalidateCursor"    # Z

    .prologue
    .line 5294
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-nez v12, :cond_0

    .line 5295
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->invalidate()V

    .line 5293
    :goto_0
    return-void

    .line 5297
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v8

    .line 5298
    .local v8, "lineStart":I
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v12, v8}, Landroid/text/Layout;->getLineTop(I)I

    move-result v10

    .line 5306
    .local v10, "top":I
    if-lez v8, :cond_1

    .line 5307
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    add-int/lit8 v13, v8, -0x1

    invoke-virtual {v12, v13}, Landroid/text/Layout;->getLineDescent(I)I

    move-result v12

    sub-int/2addr v10, v12

    .line 5312
    :cond_1
    move/from16 v0, p1

    move/from16 v1, p2

    if-ne v0, v1, :cond_2

    .line 5313
    move v7, v8

    .line 5317
    .local v7, "lineEnd":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v12, v7}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v2

    .line 5320
    .local v2, "bottom":I
    if-eqz p3, :cond_3

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v12, :cond_3

    .line 5321
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget v12, v12, Landroid/widget/Editor;->mCursorCount:I

    if-ge v5, v12, :cond_3

    .line 5322
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v12, v12, Landroid/widget/Editor;->mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v12, v12, v5

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 5323
    .local v3, "bounds":Landroid/graphics/Rect;
    iget v12, v3, Landroid/graphics/Rect;->top:I

    invoke-static {v10, v12}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 5324
    iget v12, v3, Landroid/graphics/Rect;->bottom:I

    invoke-static {v2, v12}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 5321
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 5315
    .end local v2    # "bottom":I
    .end local v3    # "bounds":Landroid/graphics/Rect;
    .end local v5    # "i":I
    .end local v7    # "lineEnd":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move/from16 v0, p2

    invoke-virtual {v12, v0}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v7

    .restart local v7    # "lineEnd":I
    goto :goto_1

    .line 5328
    .restart local v2    # "bottom":I
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v4

    .line 5329
    .local v4, "compoundPaddingLeft":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v12

    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v13

    add-int v11, v12, v13

    .line 5332
    .local v11, "verticalPadding":I
    if-ne v8, v7, :cond_4

    if-eqz p3, :cond_5

    .line 5339
    :cond_4
    move v6, v4

    .line 5340
    .local v6, "left":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getWidth()I

    move-result v12

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v13

    sub-int v9, v12, v13

    .line 5343
    .local v9, "right":I
    :goto_3
    move-object/from16 v0, p0

    iget v12, v0, Landroid/widget/TextView;->mScrollX:I

    add-int/2addr v12, v6

    add-int v13, v11, v10

    .line 5344
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/TextView;->mScrollX:I

    add-int/2addr v14, v9

    add-int v15, v11, v2

    .line 5343
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13, v14, v15}, Landroid/widget/TextView;->invalidate(IIII)V

    goto/16 :goto_0

    .line 5333
    .end local v6    # "left":I
    .end local v9    # "right":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v12

    float-to-int v6, v12

    .line 5334
    .restart local v6    # "left":I
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move/from16 v0, p2

    invoke-virtual {v12, v0}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v12

    float-to-double v12, v12

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    add-double/2addr v12, v14

    double-to-int v9, v12

    .line 5335
    .restart local v9    # "right":I
    add-int/2addr v6, v4

    .line 5336
    add-int/2addr v9, v4

    .line 5332
    goto :goto_3
.end method

.method public isAccessibilitySelectionExtendable()Z
    .locals 1

    .prologue
    .line 10327
    const/4 v0, 0x1

    return v0
.end method

.method public isCursorVisible()Z
    .locals 1

    .prologue
    .line 8314
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-boolean v0, v0, Landroid/widget/Editor;->mCursorVisible:Z

    goto :goto_0
.end method

.method isInBatchEditMode()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 10138
    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-nez v2, :cond_0

    return v1

    .line 10139
    :cond_0
    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v2, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    .line 10140
    .local v0, "ims":Landroid/widget/Editor$InputMethodState;
    if-eqz v0, :cond_2

    .line 10141
    iget v2, v0, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    if-lez v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    .line 10143
    :cond_2
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-boolean v1, v1, Landroid/widget/Editor;->mInBatchEditControllers:Z

    return v1
.end method

.method public isInExtractedMode()Z
    .locals 1

    .prologue
    .line 9242
    const/4 v0, 0x0

    return v0
.end method

.method public isInSelectionMode()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 10904
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v1, v1, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isInputMethodTarget()Z
    .locals 2

    .prologue
    .line 9678
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 9679
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected isPaddingOffsetRequired()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 5466
    iget v1, p0, Landroid/widget/TextView;->mShadowRadius:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isShowingHintExt()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 10796
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method isSingleLine()Z
    .locals 1

    .prologue
    .line 4597
    iget-boolean v0, p0, Landroid/widget/TextView;->mSingleLine:Z

    return v0
.end method

.method public isSuggestionsEnabled()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 9833
    iget-object v3, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-nez v3, :cond_0

    return v2

    .line 9834
    :cond_0
    iget-object v3, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget v3, v3, Landroid/widget/Editor;->mInputType:I

    and-int/lit8 v3, v3, 0xf

    if-eq v3, v1, :cond_1

    .line 9835
    return v2

    .line 9837
    :cond_1
    iget-object v3, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget v3, v3, Landroid/widget/Editor;->mInputType:I

    const/high16 v4, 0x80000

    and-int/2addr v3, v4

    if-lez v3, :cond_2

    return v2

    .line 9839
    :cond_2
    iget-object v3, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget v3, v3, Landroid/widget/Editor;->mInputType:I

    and-int/lit16 v0, v3, 0xff0

    .line 9840
    .local v0, "variation":I
    if-eqz v0, :cond_3

    .line 9841
    const/16 v3, 0x30

    if-ne v0, v3, :cond_4

    .line 9840
    :cond_3
    :goto_0
    return v1

    .line 9842
    :cond_4
    const/16 v3, 0x50

    if-eq v0, v3, :cond_3

    .line 9843
    const/16 v3, 0x40

    if-eq v0, v3, :cond_3

    .line 9844
    const/16 v3, 0xa0

    if-eq v0, v3, :cond_3

    move v1, v2

    goto :goto_0
.end method

.method isTextEditable()Z
    .locals 1

    .prologue
    .line 8935
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Editable;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->onCheckIsTextEditor()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->isEnabled()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTextSelectable()Z
    .locals 1

    .prologue
    .line 5627
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-boolean v0, v0, Landroid/widget/Editor;->mTextIsSelectable:Z

    goto :goto_0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 5

    .prologue
    .line 5517
    invoke-super {p0}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 5518
    iget-object v2, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-eqz v2, :cond_3

    .line 5519
    iget-object v2, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v3, v2, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    array-length v4, v3

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v0, v3, v2

    .line 5520
    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 5521
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 5519
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5532
    .end local v0    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_1
    iget v2, p0, Landroid/widget/TextView;->mLastLayoutDirection:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    .line 5533
    iget-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 5535
    .local v1, "dr":Landroid/widget/TextView$Drawables;
    iget-object v2, v1, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2

    .line 5536
    iget-object v2, v1, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 5539
    :cond_2
    iget-object v2, v1, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_3

    .line 5540
    iget-object v2, v1, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 5516
    .end local v1    # "dr":Landroid/widget/TextView$Drawables;
    :cond_3
    return-void
.end method

.method public length()I
    .locals 1

    .prologue
    .line 1727
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    return v0
.end method

.method protected makeNewLayout(IILandroid/text/BoringLayout$Metrics;Landroid/text/BoringLayout$Metrics;IZ)V
    .locals 32
    .param p1, "wantWidth"    # I
    .param p2, "hintWidth"    # I
    .param p3, "boring"    # Landroid/text/BoringLayout$Metrics;
    .param p4, "hintBoring"    # Landroid/text/BoringLayout$Metrics;
    .param p5, "ellipsisWidth"    # I
    .param p6, "bringIntoView"    # Z

    .prologue
    .line 6835
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->stopMarquee()V

    .line 6838
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mMaximum:I

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/TextView;->mOldMaximum:I

    .line 6839
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mMaxMode:I

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/TextView;->mOldMaxMode:I

    .line 6841
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    .line 6843
    if-gez p1, :cond_0

    .line 6844
    const/16 p1, 0x0

    .line 6846
    :cond_0
    if-gez p2, :cond_1

    .line 6847
    const/16 p2, 0x0

    .line 6850
    :cond_1
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->getLayoutAlignment()Landroid/text/Layout$Alignment;

    move-result-object v6

    .line 6851
    .local v6, "alignment":Landroid/text/Layout$Alignment;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/widget/TextView;->mSingleLine:Z

    if-eqz v2, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v2, :cond_12

    .line 6852
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    if-eq v6, v2, :cond_10

    .line 6853
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    if-ne v6, v2, :cond_11

    const/16 v31, 0x1

    .line 6854
    .local v31, "testDirChange":Z
    :goto_0
    const/16 v29, 0x0

    .line 6855
    .local v29, "oldDir":I
    if-eqz v31, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v29

    .line 6856
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    if-eqz v2, :cond_13

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v2

    if-nez v2, :cond_13

    const/4 v7, 0x1

    .line 6857
    .local v7, "shouldEllipsize":Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v2, v3, :cond_15

    .line 6858
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mMarqueeFadeMode:I

    if-eqz v2, :cond_14

    const/16 v30, 0x1

    .line 6859
    .local v30, "switchEllipsize":Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    .line 6860
    .local v8, "effectiveEllipsize":Landroid/text/TextUtils$TruncateAt;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v2, v3, :cond_3

    .line 6861
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mMarqueeFadeMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 6862
    sget-object v8, Landroid/text/TextUtils$TruncateAt;->END_SMALL:Landroid/text/TextUtils$TruncateAt;

    .line 6865
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    if-nez v2, :cond_4

    .line 6866
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getTextDirectionHeuristic()Landroid/text/TextDirectionHeuristic;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    .line 6870
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    if-ne v8, v2, :cond_16

    const/4 v9, 0x1

    :goto_3
    move-object/from16 v2, p0

    move/from16 v3, p1

    move-object/from16 v4, p3

    move/from16 v5, p5

    .line 6869
    invoke-direct/range {v2 .. v9}, Landroid/widget/TextView;->makeSingleLayout(ILandroid/text/BoringLayout$Metrics;ILandroid/text/Layout$Alignment;ZLandroid/text/TextUtils$TruncateAt;Z)Landroid/text/Layout;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 6871
    if-eqz v30, :cond_5

    .line 6872
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v8, v2, :cond_17

    .line 6873
    sget-object v15, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 6875
    .local v15, "oppositeEllipsize":Landroid/text/TextUtils$TruncateAt;
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    if-eq v8, v2, :cond_18

    const/16 v16, 0x1

    :goto_5
    move-object/from16 v9, p0

    move/from16 v10, p1

    move-object/from16 v11, p3

    move/from16 v12, p5

    move-object v13, v6

    move v14, v7

    .line 6874
    invoke-direct/range {v9 .. v16}, Landroid/widget/TextView;->makeSingleLayout(ILandroid/text/BoringLayout$Metrics;ILandroid/text/Layout$Alignment;ZLandroid/text/TextUtils$TruncateAt;Z)Landroid/text/Layout;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/widget/TextView;->mSavedMarqueeModeLayout:Landroid/text/Layout;

    .line 6878
    .end local v15    # "oppositeEllipsize":Landroid/text/TextUtils$TruncateAt;
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    if-eqz v2, :cond_19

    const/4 v7, 0x1

    .line 6879
    :goto_6
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    .line 6881
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    if-eqz v2, :cond_b

    .line 6882
    if-eqz v7, :cond_6

    move/from16 p2, p1

    .line 6884
    :cond_6
    sget-object v2, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    move-object/from16 v0, p4

    if-ne v0, v2, :cond_7

    .line 6885
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    .line 6886
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/TextView;->mHintBoring:Landroid/text/BoringLayout$Metrics;

    .line 6885
    invoke-static {v2, v3, v4, v5}, Landroid/text/BoringLayout;->isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;Landroid/text/BoringLayout$Metrics;)Landroid/text/BoringLayout$Metrics;

    move-result-object p4

    .line 6887
    if-eqz p4, :cond_7

    .line 6888
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mHintBoring:Landroid/text/BoringLayout$Metrics;

    .line 6892
    :cond_7
    if-eqz p4, :cond_9

    .line 6893
    move-object/from16 v0, p4

    iget v2, v0, Landroid/text/BoringLayout$Metrics;->width:I

    move/from16 v0, p2

    if-gt v2, v0, :cond_1b

    .line 6894
    if-eqz v7, :cond_8

    move-object/from16 v0, p4

    iget v2, v0, Landroid/text/BoringLayout$Metrics;->width:I

    move/from16 v0, p5

    if-gt v2, v0, :cond_1b

    .line 6895
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mSavedHintLayout:Landroid/text/BoringLayout;

    if-eqz v2, :cond_1a

    .line 6896
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mSavedHintLayout:Landroid/text/BoringLayout;

    move-object/from16 v16, v0

    .line 6897
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v18, v0

    .line 6898
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move/from16 v22, v0

    .line 6899
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mIncludePad:Z

    move/from16 v24, v0

    move/from16 v19, p2

    move-object/from16 v20, v6

    move-object/from16 v23, p4

    .line 6896
    invoke-virtual/range {v16 .. v24}, Landroid/text/BoringLayout;->replaceOrMake(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;Z)Landroid/text/BoringLayout;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    .line 6906
    :goto_7
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    check-cast v2, Landroid/text/BoringLayout;

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/widget/TextView;->mSavedHintLayout:Landroid/text/BoringLayout;

    .line 6923
    :cond_9
    :goto_8
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    if-nez v2, :cond_b

    .line 6924
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    .line 6925
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    .line 6924
    const/4 v5, 0x0

    move/from16 v0, p2

    invoke-static {v2, v5, v3, v4, v0}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    move-result-object v2

    .line 6927
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    .line 6924
    invoke-virtual {v2, v3}, Landroid/text/StaticLayout$Builder;->setTextDirection(Landroid/text/TextDirectionHeuristic;)Landroid/text/StaticLayout$Builder;

    move-result-object v2

    .line 6928
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/TextView;->mSpacingMult:F

    .line 6924
    invoke-virtual {v2, v3, v4}, Landroid/text/StaticLayout$Builder;->setLineSpacing(FF)Landroid/text/StaticLayout$Builder;

    move-result-object v2

    .line 6929
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/widget/TextView;->mIncludePad:Z

    .line 6924
    invoke-virtual {v2, v3}, Landroid/text/StaticLayout$Builder;->setIncludePad(Z)Landroid/text/StaticLayout$Builder;

    move-result-object v2

    .line 6930
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/TextView;->mBreakStrategy:I

    .line 6924
    invoke-virtual {v2, v3}, Landroid/text/StaticLayout$Builder;->setBreakStrategy(I)Landroid/text/StaticLayout$Builder;

    move-result-object v2

    .line 6931
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/TextView;->mHyphenationFrequency:I

    .line 6924
    invoke-virtual {v2, v3}, Landroid/text/StaticLayout$Builder;->setHyphenationFrequency(I)Landroid/text/StaticLayout$Builder;

    move-result-object v27

    .line 6932
    .local v27, "builder":Landroid/text/StaticLayout$Builder;
    if-eqz v7, :cond_a

    .line 6933
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Landroid/text/StaticLayout$Builder;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)Landroid/text/StaticLayout$Builder;

    move-result-object v2

    move/from16 v0, p5

    invoke-virtual {v2, v0}, Landroid/text/StaticLayout$Builder;->setEllipsizedWidth(I)Landroid/text/StaticLayout$Builder;

    move-result-object v3

    .line 6935
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mMaxMode:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_1d

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mMaximum:I

    .line 6933
    :goto_9
    invoke-virtual {v3, v2}, Landroid/text/StaticLayout$Builder;->setMaxLines(I)Landroid/text/StaticLayout$Builder;

    .line 6937
    :cond_a
    invoke-virtual/range {v27 .. v27}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    .line 6941
    .end local v27    # "builder":Landroid/text/StaticLayout$Builder;
    :cond_b
    if-nez p6, :cond_c

    if-eqz v31, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v2

    move/from16 v0, v29

    if-eq v0, v2, :cond_d

    .line 6942
    :cond_c
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->registerForPreDraw()V

    .line 6945
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v2, v3, :cond_e

    .line 6946
    move/from16 v0, p5

    int-to-float v2, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/widget/TextView;->compressText(F)Z

    move-result v2

    if-nez v2, :cond_e

    .line 6947
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v28, v0

    .line 6950
    .local v28, "height":I
    const/4 v2, -0x2

    move/from16 v0, v28

    if-eq v0, v2, :cond_1e

    const/4 v2, -0x1

    move/from16 v0, v28

    if-eq v0, v2, :cond_1e

    .line 6951
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->startMarquee()V

    .line 6960
    .end local v28    # "height":I
    :cond_e
    :goto_a
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v2, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v2}, Landroid/widget/Editor;->prepareCursorControllers()V

    .line 6834
    :cond_f
    return-void

    .line 6852
    .end local v7    # "shouldEllipsize":Z
    .end local v8    # "effectiveEllipsize":Landroid/text/TextUtils$TruncateAt;
    .end local v29    # "oldDir":I
    .end local v30    # "switchEllipsize":Z
    .end local v31    # "testDirChange":Z
    :cond_10
    const/16 v31, 0x1

    .restart local v31    # "testDirChange":Z
    goto/16 :goto_0

    .line 6853
    .end local v31    # "testDirChange":Z
    :cond_11
    const/16 v31, 0x0

    .restart local v31    # "testDirChange":Z
    goto/16 :goto_0

    .line 6851
    .end local v31    # "testDirChange":Z
    :cond_12
    const/16 v31, 0x0

    .restart local v31    # "testDirChange":Z
    goto/16 :goto_0

    .line 6856
    .restart local v29    # "oldDir":I
    :cond_13
    const/4 v7, 0x0

    .restart local v7    # "shouldEllipsize":Z
    goto/16 :goto_1

    .line 6858
    :cond_14
    const/16 v30, 0x0

    .restart local v30    # "switchEllipsize":Z
    goto/16 :goto_2

    .line 6857
    .end local v30    # "switchEllipsize":Z
    :cond_15
    const/16 v30, 0x0

    .restart local v30    # "switchEllipsize":Z
    goto/16 :goto_2

    .line 6870
    .restart local v8    # "effectiveEllipsize":Landroid/text/TextUtils$TruncateAt;
    :cond_16
    const/4 v9, 0x0

    goto/16 :goto_3

    .line 6873
    :cond_17
    sget-object v15, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    .restart local v15    # "oppositeEllipsize":Landroid/text/TextUtils$TruncateAt;
    goto/16 :goto_4

    .line 6875
    :cond_18
    const/16 v16, 0x0

    goto/16 :goto_5

    .line 6878
    .end local v15    # "oppositeEllipsize":Landroid/text/TextUtils$TruncateAt;
    :cond_19
    const/4 v7, 0x0

    goto/16 :goto_6

    .line 6901
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v17, v0

    .line 6902
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move/from16 v21, v0

    .line 6903
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mIncludePad:Z

    move/from16 v23, v0

    move/from16 v18, p2

    move-object/from16 v19, v6

    move-object/from16 v22, p4

    .line 6901
    invoke-static/range {v16 .. v23}, Landroid/text/BoringLayout;->make(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;Z)Landroid/text/BoringLayout;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    goto/16 :goto_7

    .line 6907
    :cond_1b
    if-eqz v7, :cond_9

    move-object/from16 v0, p4

    iget v2, v0, Landroid/text/BoringLayout$Metrics;->width:I

    move/from16 v0, p2

    if-gt v2, v0, :cond_9

    .line 6908
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mSavedHintLayout:Landroid/text/BoringLayout;

    if-eqz v2, :cond_1c

    .line 6909
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mSavedHintLayout:Landroid/text/BoringLayout;

    move-object/from16 v16, v0

    .line 6910
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v18, v0

    .line 6911
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move/from16 v22, v0

    .line 6912
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mIncludePad:Z

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v25, v0

    move/from16 v19, p2

    move-object/from16 v20, v6

    move-object/from16 v23, p4

    move/from16 v26, p5

    .line 6909
    invoke-virtual/range {v16 .. v26}, Landroid/text/BoringLayout;->replaceOrMake(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;I)Landroid/text/BoringLayout;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    goto/16 :goto_8

    .line 6915
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v17, v0

    .line 6916
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move/from16 v21, v0

    .line 6917
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mIncludePad:Z

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v24, v0

    move/from16 v18, p2

    move-object/from16 v19, v6

    move-object/from16 v22, p4

    move/from16 v25, p5

    .line 6915
    invoke-static/range {v16 .. v25}, Landroid/text/BoringLayout;->make(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;I)Landroid/text/BoringLayout;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    goto/16 :goto_8

    .line 6935
    .restart local v27    # "builder":Landroid/text/StaticLayout$Builder;
    :cond_1d
    const v2, 0x7fffffff

    goto/16 :goto_9

    .line 6954
    .end local v27    # "builder":Landroid/text/StaticLayout$Builder;
    .restart local v28    # "height":I
    :cond_1e
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/widget/TextView;->mRestartMarquee:Z

    goto/16 :goto_a
.end method

.method public moveCursorToVisibleOffset()Z
    .locals 20

    .prologue
    .line 7956
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    instance-of v0, v0, Landroid/text/Spannable;

    move/from16 v17, v0

    if-nez v17, :cond_0

    .line 7957
    const/16 v17, 0x0

    return v17

    .line 7959
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v12

    .line 7960
    .local v12, "start":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v3

    .line 7961
    .local v3, "end":I
    if-eq v12, v3, :cond_1

    .line 7962
    const/16 v17, 0x0

    return v17

    .line 7967
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v8

    .line 7969
    .local v8, "line":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Landroid/text/Layout;->getLineTop(I)I

    move-result v13

    .line 7970
    .local v13, "top":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v17, v0

    add-int/lit8 v18, v8, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/text/Layout;->getLineTop(I)I

    move-result v2

    .line 7971
    .local v2, "bottom":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mBottom:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mTop:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v18

    sub-int v17, v17, v18

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getExtendedPaddingBottom()I

    move-result v18

    sub-int v16, v17, v18

    .line 7972
    .local v16, "vspace":I
    sub-int v17, v2, v13

    div-int/lit8 v15, v17, 0x2

    .line 7973
    .local v15, "vslack":I
    div-int/lit8 v17, v16, 0x4

    move/from16 v0, v17

    if-le v15, v0, :cond_2

    .line 7974
    div-int/lit8 v15, v16, 0x4

    .line 7975
    :cond_2
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/TextView;->mScrollY:I

    .line 7977
    .local v14, "vs":I
    add-int v17, v14, v15

    move/from16 v0, v17

    if-ge v13, v0, :cond_5

    .line 7978
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v17, v0

    add-int v18, v14, v15

    sub-int v19, v2, v13

    add-int v18, v18, v19

    invoke-virtual/range {v17 .. v18}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v8

    .line 7985
    :cond_3
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mRight:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mLeft:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v18

    sub-int v17, v17, v18

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v18

    sub-int v6, v17, v18

    .line 7986
    .local v6, "hspace":I
    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/TextView;->mScrollX:I

    .line 7987
    .local v5, "hs":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v17, v0

    int-to-float v0, v5

    move/from16 v18, v0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v8, v1}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v7

    .line 7988
    .local v7, "leftChar":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v17, v0

    add-int v18, v6, v5

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v8, v1}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v11

    .line 7991
    .local v11, "rightChar":I
    if-ge v7, v11, :cond_6

    move v9, v7

    .line 7992
    .local v9, "lowChar":I
    :goto_1
    if-le v7, v11, :cond_7

    move v4, v7

    .line 7994
    .local v4, "highChar":I
    :goto_2
    move v10, v12

    .line 7995
    .local v10, "newStart":I
    if-ge v10, v9, :cond_8

    .line 7996
    move v10, v9

    .line 8001
    :cond_4
    :goto_3
    if-eq v10, v12, :cond_9

    .line 8002
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    check-cast v17, Landroid/text/Spannable;

    move-object/from16 v0, v17

    invoke-static {v0, v10}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 8003
    const/16 v17, 0x1

    return v17

    .line 7979
    .end local v4    # "highChar":I
    .end local v5    # "hs":I
    .end local v6    # "hspace":I
    .end local v7    # "leftChar":I
    .end local v9    # "lowChar":I
    .end local v10    # "newStart":I
    .end local v11    # "rightChar":I
    :cond_5
    add-int v17, v16, v14

    sub-int v17, v17, v15

    move/from16 v0, v17

    if-le v2, v0, :cond_3

    .line 7980
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v17, v0

    add-int v18, v16, v14

    sub-int v18, v18, v15

    sub-int v19, v2, v13

    sub-int v18, v18, v19

    invoke-virtual/range {v17 .. v18}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v8

    goto :goto_0

    .line 7991
    .restart local v5    # "hs":I
    .restart local v6    # "hspace":I
    .restart local v7    # "leftChar":I
    .restart local v11    # "rightChar":I
    :cond_6
    move v9, v11

    .restart local v9    # "lowChar":I
    goto :goto_1

    .line 7992
    :cond_7
    move v4, v11

    .restart local v4    # "highChar":I
    goto :goto_2

    .line 7997
    .restart local v10    # "newStart":I
    :cond_8
    if-le v10, v4, :cond_4

    .line 7998
    move v10, v4

    goto :goto_3

    .line 8006
    :cond_9
    const/16 v17, 0x0

    return v17
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 1545
    const/16 v1, 0x64

    if-ne p1, v1, :cond_1

    .line 1546
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    if-eqz p3, :cond_0

    .line 1547
    const-string/jumbo v1, "android.intent.extra.PROCESS_TEXT"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1548
    .local v0, "result":Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    .line 1549
    invoke-virtual {p0}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1550
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->replaceSelectionWithText(Ljava/lang/CharSequence;)V

    .line 1559
    .end local v0    # "result":Ljava/lang/CharSequence;
    :cond_0
    :goto_0
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->hasSelectionController()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1560
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->startSelectionActionMode()Z

    .line 1544
    :cond_1
    return-void

    .line 1552
    .restart local v0    # "result":Ljava/lang/CharSequence;
    :cond_2
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 1553
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 5431
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 5433
    iput-boolean v1, p0, Landroid/widget/TextView;->mTemporaryDetach:Z

    .line 5435
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->onAttachedToWindow()V

    .line 5437
    :cond_0
    iget-boolean v0, p0, Landroid/widget/TextView;->mPreDrawListenerDetached:Z

    if-eqz v0, :cond_1

    .line 5438
    invoke-virtual {p0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 5439
    iput-boolean v1, p0, Landroid/widget/TextView;->mPreDrawListenerDetached:Z

    .line 5430
    :cond_1
    return-void
.end method

.method public onBeginBatchEdit()V
    .locals 0

    .prologue
    .line 6711
    return-void
.end method

.method public onCheckIsTextEditor()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 6519
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget v1, v1, Landroid/widget/Editor;->mInputType:I

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public onClick(Landroid/view/View;Lcom/letv/leui/util/LeLinkify$LeURLSpan;)Z
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "span"    # Lcom/letv/leui/util/LeLinkify$LeURLSpan;

    .prologue
    .line 10952
    const/4 v6, 0x0

    .line 10953
    .local v6, "handled":Z
    invoke-virtual {p2}, Lcom/letv/leui/util/LeLinkify$LeURLSpan;->getText()Ljava/lang/String;

    move-result-object v7

    .line 10954
    .local v7, "pattern":Ljava/lang/String;
    invoke-virtual {p2}, Lcom/letv/leui/util/LeLinkify$LeURLSpan;->getURL()Ljava/lang/String;

    move-result-object v4

    .line 10955
    .local v4, "url":Ljava/lang/String;
    invoke-virtual {p2}, Lcom/letv/leui/util/LeLinkify$LeURLSpan;->getURLType()I

    move-result v1

    .line 10956
    .local v1, "type":I
    iget-object v0, p0, Landroid/widget/TextView;->mURLEventListener:Landroid/widget/TextView$OnURLClickEventListener;

    if-eqz v0, :cond_0

    .line 10957
    iget-object v0, p0, Landroid/widget/TextView;->mURLEventListener:Landroid/widget/TextView$OnURLClickEventListener;

    invoke-interface {v0, v7, v4, v1}, Landroid/widget/TextView$OnURLClickEventListener;->onClick(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v6

    .line 10960
    .end local v6    # "handled":Z
    :cond_0
    if-nez v6, :cond_1

    .line 10961
    invoke-direct {p0}, Landroid/widget/TextView;->getBottomSheet()Lcom/letv/leui/text/LeTextViewBottomSheet;

    move-result-object v0

    invoke-virtual {p2}, Lcom/letv/leui/util/LeLinkify$LeURLSpan;->getStartOffset()I

    move-result v2

    invoke-virtual {p2}, Lcom/letv/leui/util/LeLinkify$LeURLSpan;->getEndOffset()I

    move-result v3

    invoke-virtual {p2}, Lcom/letv/leui/util/LeLinkify$LeURLSpan;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/letv/leui/text/LeTextViewBottomSheet;->show(IIILjava/lang/String;Ljava/lang/String;)V

    .line 10962
    invoke-virtual {p0}, Landroid/widget/TextView;->onCancelPendingInputEvents()V

    .line 10963
    const/4 v0, 0x1

    return v0

    .line 10965
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public onCommitCompletion(Landroid/view/inputmethod/CompletionInfo;)V
    .locals 0
    .param p1, "text"    # Landroid/view/inputmethod/CompletionInfo;

    .prologue
    .line 6683
    return-void
.end method

.method public onCommitCorrection(Landroid/view/inputmethod/CorrectionInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/inputmethod/CorrectionInfo;

    .prologue
    .line 6696
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0, p1}, Landroid/widget/Editor;->onCommitCorrection(Landroid/view/inputmethod/CorrectionInfo;)V

    .line 6695
    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 2915
    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2916
    iget-boolean v0, p0, Landroid/widget/TextView;->mLocaleChanged:Z

    if-nez v0, :cond_0

    .line 2917
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextLocale(Ljava/util/Locale;)V

    .line 2914
    :cond_0
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 7
    .param p1, "extraSpace"    # I

    .prologue
    const/4 v6, 0x0

    .line 5679
    iget-boolean v4, p0, Landroid/widget/TextView;->mSingleLine:Z

    if-eqz v4, :cond_0

    .line 5680
    invoke-super {p0, p1}, Landroid/view/View;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 5686
    .local v0, "drawableState":[I
    :goto_0
    invoke-virtual {p0}, Landroid/widget/TextView;->isTextSelectable()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 5691
    array-length v2, v0

    .line 5692
    .local v2, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_2

    .line 5693
    aget v4, v0, v1

    const v5, 0x10100a7

    if-ne v4, v5, :cond_1

    .line 5694
    add-int/lit8 v4, v2, -0x1

    new-array v3, v4, [I

    .line 5695
    .local v3, "nonPressedState":[I
    invoke-static {v0, v6, v3, v6, v1}, Ljava/lang/System;->arraycopy([II[III)V

    .line 5696
    add-int/lit8 v4, v1, 0x1

    sub-int v5, v2, v1

    add-int/lit8 v5, v5, -0x1

    invoke-static {v0, v4, v3, v1, v5}, Ljava/lang/System;->arraycopy([II[III)V

    .line 5697
    return-object v3

    .line 5682
    .end local v0    # "drawableState":[I
    .end local v1    # "i":I
    .end local v2    # "length":I
    .end local v3    # "nonPressedState":[I
    :cond_0
    add-int/lit8 v4, p1, 0x1

    invoke-super {p0, v4}, Landroid/view/View;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 5683
    .restart local v0    # "drawableState":[I
    sget-object v4, Landroid/widget/TextView;->MULTILINE_STATE_SET:[I

    invoke-static {v0, v4}, Landroid/widget/TextView;->mergeDrawableStates([I[I)[I

    goto :goto_0

    .line 5692
    .restart local v1    # "i":I
    .restart local v2    # "length":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 5702
    .end local v1    # "i":I
    .end local v2    # "length":I
    :cond_2
    return-object v0
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 7
    .param p1, "outAttrs"    # Landroid/view/inputmethod/EditorInfo;

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    const/high16 v5, 0x8000000

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 6524
    invoke-virtual {p0}, Landroid/widget/TextView;->onCheckIsTextEditor()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Landroid/widget/TextView;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 6525
    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v2}, Landroid/widget/Editor;->createInputMethodStateIfNeeded()V

    .line 6526
    invoke-virtual {p0}, Landroid/widget/TextView;->getInputType()I

    move-result v2

    iput v2, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 6527
    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v2, v2, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    if-eqz v2, :cond_4

    .line 6528
    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v2, v2, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget v2, v2, Landroid/widget/Editor$InputContentType;->imeOptions:I

    iput v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 6529
    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v2, v2, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget-object v2, v2, Landroid/widget/Editor$InputContentType;->privateImeOptions:Ljava/lang/String;

    iput-object v2, p1, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    .line 6530
    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v2, v2, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget-object v2, v2, Landroid/widget/Editor$InputContentType;->imeActionLabel:Ljava/lang/CharSequence;

    iput-object v2, p1, Landroid/view/inputmethod/EditorInfo;->actionLabel:Ljava/lang/CharSequence;

    .line 6531
    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v2, v2, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget v2, v2, Landroid/widget/Editor$InputContentType;->imeActionId:I

    iput v2, p1, Landroid/view/inputmethod/EditorInfo;->actionId:I

    .line 6532
    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v2, v2, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget-object v2, v2, Landroid/widget/Editor$InputContentType;->extras:Landroid/os/Bundle;

    iput-object v2, p1, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    .line 6538
    :goto_0
    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v2, :cond_1

    .line 6539
    const/16 v2, 0x82

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->focusSearch(I)Landroid/view/View;

    move-result-object v0

    .line 6540
    .local v0, "focusView":Landroid/view/View;
    if-eqz v0, :cond_0

    instance-of v2, v0, Landroid/widget/EditText;

    if-eqz v2, :cond_0

    .line 6541
    iget v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/2addr v2, v5

    iput v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 6543
    :cond_0
    const/16 v2, 0x21

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->focusSearch(I)Landroid/view/View;

    move-result-object v0

    .line 6544
    if-eqz v0, :cond_1

    instance-of v2, v0, Landroid/widget/EditText;

    if-eqz v2, :cond_1

    .line 6545
    iget v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const/high16 v3, 0x4000000

    or-int/2addr v2, v3

    iput v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 6548
    .end local v0    # "focusView":Landroid/view/View;
    :cond_1
    iget v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    and-int/lit16 v2, v2, 0xff

    if-nez v2, :cond_2

    .line 6550
    iget v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    and-int/2addr v2, v5

    if-eqz v2, :cond_5

    .line 6553
    iget v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/lit8 v2, v2, 0x5

    iput v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 6559
    :goto_1
    invoke-direct {p0}, Landroid/widget/TextView;->shouldAdvanceFocusOnEnter()Z

    move-result v2

    if-nez v2, :cond_2

    .line 6560
    iget v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/2addr v2, v6

    iput v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 6563
    :cond_2
    iget v2, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    invoke-static {v2}, Landroid/widget/TextView;->isMultilineInputType(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 6565
    iget v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/2addr v2, v6

    iput v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 6567
    :cond_3
    iget-object v2, p0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    iput-object v2, p1, Landroid/view/inputmethod/EditorInfo;->hintText:Ljava/lang/CharSequence;

    .line 6568
    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v2, v2, Landroid/text/Editable;

    if-eqz v2, :cond_6

    .line 6569
    new-instance v1, Lcom/android/internal/widget/EditableInputConnection;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/EditableInputConnection;-><init>(Landroid/widget/TextView;)V

    .line 6570
    .local v1, "ic":Landroid/view/inputmethod/InputConnection;
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v2

    iput v2, p1, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    .line 6571
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v2

    iput v2, p1, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    .line 6572
    invoke-virtual {p0}, Landroid/widget/TextView;->getInputType()I

    move-result v2

    invoke-interface {v1, v2}, Landroid/view/inputmethod/InputConnection;->getCursorCapsMode(I)I

    move-result v2

    iput v2, p1, Landroid/view/inputmethod/EditorInfo;->initialCapsMode:I

    .line 6573
    return-object v1

    .line 6534
    .end local v1    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_4
    iput v3, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    goto :goto_0

    .line 6557
    :cond_5
    iget v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/lit8 v2, v2, 0x6

    iput v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    goto :goto_1

    .line 6576
    :cond_6
    return-object v4
.end method

.method protected onDetachedFromWindowInternal()V
    .locals 1

    .prologue
    .line 5446
    iget-boolean v0, p0, Landroid/widget/TextView;->mPreDrawRegistered:Z

    if-eqz v0, :cond_0

    .line 5447
    invoke-virtual {p0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 5448
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/TextView;->mPreDrawListenerDetached:Z

    .line 5451
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->resetResolvedDrawables()V

    .line 5453
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->onDetachedFromWindow()V

    .line 5455
    :cond_1
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindowInternal()V

    .line 5445
    return-void
.end method

.method public onDragEvent(Landroid/view/DragEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/DragEvent;

    .prologue
    const/4 v3, 0x1

    .line 10113
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 10133
    :pswitch_0
    return v3

    .line 10115
    :pswitch_1
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->hasInsertionController()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 10118
    :pswitch_2
    invoke-virtual {p0}, Landroid/widget/TextView;->requestFocus()Z

    .line 10119
    return v3

    .line 10122
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v0

    .line 10123
    .local v0, "offset":I
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v1, Landroid/text/Spannable;

    invoke-static {v1, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 10124
    return v3

    .line 10127
    .end local v0    # "offset":I
    :pswitch_4
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v1, p1}, Landroid/widget/Editor;->onDrop(Landroid/view/DragEvent;)V

    .line 10128
    :cond_1
    return v3

    .line 10113
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 48
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 5787
    sget-boolean v2, Landroid/text/TextUtils;->DEBUG_LOG:Z

    if-eqz v2, :cond_0

    .line 5788
    const-string/jumbo v2, "Text-onDraw"

    const-wide/16 v46, 0x8

    move-wide/from16 v0, v46

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 5789
    const-string/jumbo v2, "TextView"

    const-string/jumbo v3, "[onDraw] start"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 5790
    const-string/jumbo v2, "TextView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[onDraw] "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 5792
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 5793
    .local v10, "beforeTime":J
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->restartMarqueeIfNeeded()V

    .line 5796
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 5798
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v18

    .line 5799
    .local v18, "compoundPaddingLeft":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v20

    .line 5800
    .local v20, "compoundPaddingTop":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v19

    .line 5801
    .local v19, "compoundPaddingRight":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v17

    .line 5802
    .local v17, "compoundPaddingBottom":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mScrollX:I

    move/from16 v38, v0

    .line 5803
    .local v38, "scrollX":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mScrollY:I

    move/from16 v39, v0

    .line 5804
    .local v39, "scrollY":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mRight:I

    move/from16 v36, v0

    .line 5805
    .local v36, "right":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mLeft:I

    move/from16 v31, v0

    .line 5806
    .local v31, "left":I
    move-object/from16 v0, p0

    iget v9, v0, Landroid/widget/TextView;->mBottom:I

    .line 5807
    .local v9, "bottom":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mTop:I

    move/from16 v40, v0

    .line 5808
    .local v40, "top":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->isLayoutRtl()Z

    move-result v28

    .line 5809
    .local v28, "isLayoutRtl":Z
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getHorizontalOffsetForDrawables()I

    move-result v34

    .line 5810
    .local v34, "offset":I
    if-eqz v28, :cond_10

    const/16 v32, 0x0

    .line 5811
    .local v32, "leftOffset":I
    :goto_0
    if-eqz v28, :cond_11

    move/from16 v37, v34

    .line 5813
    .local v37, "rightOffset":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    move-object/from16 v21, v0

    .line 5814
    .local v21, "dr":Landroid/widget/TextView$Drawables;
    if-eqz v21, :cond_4

    .line 5820
    sub-int v2, v9, v40

    sub-int v2, v2, v17

    sub-int v43, v2, v20

    .line 5821
    .local v43, "vspace":I
    sub-int v2, v36, v31

    sub-int v2, v2, v19

    sub-int v27, v2, v18

    .line 5825
    .local v27, "hspace":I
    move-object/from16 v0, v21

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    if-eqz v2, :cond_1

    .line 5826
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 5827
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mPaddingLeft:I

    add-int v2, v2, v38

    add-int v2, v2, v32

    int-to-float v2, v2

    .line 5828
    add-int v3, v39, v20

    .line 5829
    move-object/from16 v0, v21

    iget v6, v0, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    sub-int v6, v43, v6

    div-int/lit8 v6, v6, 0x2

    .line 5828
    add-int/2addr v3, v6

    int-to-float v3, v3

    .line 5827
    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 5830
    move-object/from16 v0, v21

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 5831
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 5836
    :cond_1
    move-object/from16 v0, v21

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    if-eqz v2, :cond_2

    .line 5837
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 5838
    add-int v2, v38, v36

    sub-int v2, v2, v31

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/TextView;->mPaddingRight:I

    sub-int/2addr v2, v3

    .line 5839
    move-object/from16 v0, v21

    iget v3, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    .line 5838
    sub-int/2addr v2, v3

    sub-int v2, v2, v37

    int-to-float v2, v2

    .line 5840
    add-int v3, v39, v20

    move-object/from16 v0, v21

    iget v6, v0, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    sub-int v6, v43, v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v3, v6

    int-to-float v3, v3

    .line 5838
    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 5841
    move-object/from16 v0, v21

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 5842
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 5847
    :cond_2
    move-object/from16 v0, v21

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    if-eqz v2, :cond_3

    .line 5848
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 5849
    add-int v2, v38, v18

    .line 5850
    move-object/from16 v0, v21

    iget v3, v0, Landroid/widget/TextView$Drawables;->mDrawableWidthTop:I

    sub-int v3, v27, v3

    div-int/lit8 v3, v3, 0x2

    .line 5849
    add-int/2addr v2, v3

    int-to-float v2, v2

    .line 5850
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/TextView;->mPaddingTop:I

    add-int v3, v3, v39

    int-to-float v3, v3

    .line 5849
    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 5851
    move-object/from16 v0, v21

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 5852
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 5857
    :cond_3
    move-object/from16 v0, v21

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    if-eqz v2, :cond_4

    .line 5858
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 5859
    add-int v2, v38, v18

    .line 5860
    move-object/from16 v0, v21

    iget v3, v0, Landroid/widget/TextView$Drawables;->mDrawableWidthBottom:I

    sub-int v3, v27, v3

    div-int/lit8 v3, v3, 0x2

    .line 5859
    add-int/2addr v2, v3

    int-to-float v2, v2

    .line 5861
    add-int v3, v39, v9

    sub-int v3, v3, v40

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/TextView;->mPaddingBottom:I

    sub-int/2addr v3, v6

    move-object/from16 v0, v21

    iget v6, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeBottom:I

    sub-int/2addr v3, v6

    int-to-float v3, v3

    .line 5859
    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 5862
    move-object/from16 v0, v21

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 5863
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 5867
    .end local v27    # "hspace":I
    .end local v43    # "vspace":I
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mCurTextColor:I

    move/from16 v16, v0

    .line 5869
    .local v16, "color":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-nez v2, :cond_5

    .line 5870
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->assumeLayout()V

    .line 5873
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 5875
    .local v4, "layout":Landroid/text/Layout;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_7

    .line 5876
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mHintTextColor:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_6

    .line 5877
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mCurHintTextColor:I

    move/from16 v16, v0

    .line 5880
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    .line 5883
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 5884
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v3

    iput-object v3, v2, Landroid/text/TextPaint;->drawableState:[I

    .line 5886
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 5891
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v26

    .line 5892
    .local v26, "extendedPaddingTop":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getExtendedPaddingBottom()I

    move-result v25

    .line 5894
    .local v25, "extendedPaddingBottom":I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mBottom:I

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/TextView;->mTop:I

    sub-int/2addr v2, v3

    sub-int v2, v2, v17

    sub-int v43, v2, v20

    .line 5895
    .restart local v43    # "vspace":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2}, Landroid/text/Layout;->getHeight()I

    move-result v2

    sub-int v33, v2, v43

    .line 5897
    .local v33, "maxScrollY":I
    add-int v2, v18, v38

    int-to-float v13, v2

    .line 5898
    .local v13, "clipLeft":F
    if-nez v39, :cond_12

    const/4 v2, 0x0

    :goto_2
    int-to-float v15, v2

    .line 5899
    .local v15, "clipTop":F
    sub-int v2, v36, v31

    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->getFudgedPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    add-int v2, v2, v38

    int-to-float v14, v2

    .line 5900
    .local v14, "clipRight":F
    sub-int v2, v9, v40

    add-int v2, v2, v39

    .line 5901
    move/from16 v0, v39

    move/from16 v1, v33

    if-ne v0, v1, :cond_8

    const/16 v25, 0x0

    .line 5900
    .end local v25    # "extendedPaddingBottom":I
    :cond_8
    sub-int v2, v2, v25

    int-to-float v12, v2

    .line 5903
    .local v12, "clipBottom":F
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mShadowRadius:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_9

    .line 5904
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/TextView;->mShadowDx:F

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/TextView;->mShadowRadius:F

    sub-float/2addr v3, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    add-float/2addr v13, v2

    .line 5905
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/TextView;->mShadowDx:F

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/TextView;->mShadowRadius:F

    add-float/2addr v3, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    add-float/2addr v14, v2

    .line 5907
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/TextView;->mShadowDy:F

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/TextView;->mShadowRadius:F

    sub-float/2addr v3, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    add-float/2addr v15, v2

    .line 5908
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/TextView;->mShadowDy:F

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/TextView;->mShadowRadius:F

    add-float/2addr v3, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    add-float/2addr v12, v2

    .line 5911
    :cond_9
    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v15, v14, v12}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 5913
    const/16 v42, 0x0

    .line 5914
    .local v42, "voffsetText":I
    const/16 v41, 0x0

    .line 5918
    .local v41, "voffsetCursor":I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v2, v2, 0x70

    const/16 v3, 0x30

    if-eq v2, v3, :cond_a

    .line 5919
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v42

    .line 5920
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v41

    .line 5922
    :cond_a
    move/from16 v0, v18

    int-to-float v2, v0

    add-int v3, v26, v42

    int-to-float v3, v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 5924
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getLayoutDirection()I

    move-result v30

    .line 5925
    .local v30, "layoutDirection":I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mGravity:I

    move/from16 v0, v30

    invoke-static {v2, v0}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v8

    .line 5926
    .local v8, "absoluteGravity":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v2, v3, :cond_c

    .line 5927
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mMarqueeFadeMode:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_c

    .line 5928
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/widget/TextView;->mSingleLine:Z

    if-nez v2, :cond_b

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getLineCount()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_b

    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->canMarquee()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 5929
    and-int/lit8 v2, v8, 0x7

    const/4 v3, 0x3

    if-eq v2, v3, :cond_b

    .line 5930
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mRight:I

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/TextView;->mLeft:I

    sub-int v44, v2, v3

    .line 5931
    .local v44, "width":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v3

    add-int v35, v2, v3

    .line 5932
    .local v35, "padding":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/text/Layout;->getLineRight(I)F

    move-result v2

    sub-int v3, v44, v35

    int-to-float v3, v3

    sub-float v24, v2, v3

    .line 5933
    .local v24, "dx":F
    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v24

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 5936
    .end local v24    # "dx":F
    .end local v35    # "padding":I
    .end local v44    # "width":I
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    if-eqz v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    invoke-virtual {v2}, Landroid/widget/TextView$Marquee;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 5937
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    invoke-virtual {v2}, Landroid/widget/TextView$Marquee;->getScroll()F

    move-result v2

    neg-float v0, v2

    move/from16 v24, v0

    .line 5938
    .restart local v24    # "dx":F
    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v24

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 5942
    .end local v24    # "dx":F
    :cond_c
    sub-int v7, v41, v42

    .line 5944
    .local v7, "cursorOffsetVertical":I
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->getUpdatedHighlightPath()Landroid/graphics/Path;

    move-result-object v5

    .line 5946
    .local v5, "highlight":Landroid/graphics/Path;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v2, :cond_13

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v2}, Landroid/widget/Editor;->isInSectionMode()Z

    move-result v29

    .line 5947
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v2, :cond_15

    .line 5948
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v29, :cond_14

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLeTextInfo:Lcom/letv/leui/text/LeTextOpt$LeTextInfo;

    iget-object v2, v2, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->mSectionBoundPaint:Landroid/graphics/Paint;

    :goto_4
    invoke-virtual {v3, v2}, Landroid/widget/Editor;->setSectionBoundPaint(Landroid/graphics/Paint;)V

    .line 5949
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/TextView;->mHighlightPaint:Landroid/graphics/Paint;

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Landroid/widget/Editor;->onDraw(Landroid/graphics/Canvas;Landroid/text/Layout;Landroid/graphics/Path;Landroid/graphics/Paint;I)V

    .line 5961
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    if-eqz v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    invoke-virtual {v2}, Landroid/widget/TextView$Marquee;->shouldDrawGhost()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 5962
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    invoke-virtual {v2}, Landroid/widget/TextView$Marquee;->getGhostOffset()F

    move-result v24

    .line 5963
    .restart local v24    # "dx":F
    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v24

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 5964
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mHighlightPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v5, v2, v7}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;I)V

    .line 5967
    .end local v24    # "dx":F
    :cond_d
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 5968
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v22, v2, v10

    .line 5969
    .local v22, "diffTime":J
    sget-boolean v2, Landroid/text/TextUtils;->DEBUG_LOG:Z

    if-eqz v2, :cond_f

    .line 5970
    const-wide/16 v2, 0x0

    cmp-long v2, v22, v2

    if-lez v2, :cond_e

    .line 5971
    const-string/jumbo v2, "TextView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[onDraw] diff "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 5973
    :cond_e
    const-string/jumbo v2, "TextView"

    const-string/jumbo v3, "[onDraw] end"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 5974
    const-wide/16 v2, 0x8

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 5786
    :cond_f
    return-void

    .line 5810
    .end local v4    # "layout":Landroid/text/Layout;
    .end local v5    # "highlight":Landroid/graphics/Path;
    .end local v7    # "cursorOffsetVertical":I
    .end local v8    # "absoluteGravity":I
    .end local v12    # "clipBottom":F
    .end local v13    # "clipLeft":F
    .end local v14    # "clipRight":F
    .end local v15    # "clipTop":F
    .end local v16    # "color":I
    .end local v21    # "dr":Landroid/widget/TextView$Drawables;
    .end local v22    # "diffTime":J
    .end local v26    # "extendedPaddingTop":I
    .end local v30    # "layoutDirection":I
    .end local v32    # "leftOffset":I
    .end local v33    # "maxScrollY":I
    .end local v37    # "rightOffset":I
    .end local v41    # "voffsetCursor":I
    .end local v42    # "voffsetText":I
    .end local v43    # "vspace":I
    :cond_10
    move/from16 v32, v34

    .restart local v32    # "leftOffset":I
    goto/16 :goto_0

    .line 5811
    :cond_11
    const/16 v37, 0x0

    .restart local v37    # "rightOffset":I
    goto/16 :goto_1

    .line 5898
    .restart local v4    # "layout":Landroid/text/Layout;
    .restart local v13    # "clipLeft":F
    .restart local v16    # "color":I
    .restart local v21    # "dr":Landroid/widget/TextView$Drawables;
    .restart local v25    # "extendedPaddingBottom":I
    .restart local v26    # "extendedPaddingTop":I
    .restart local v33    # "maxScrollY":I
    .restart local v43    # "vspace":I
    :cond_12
    add-int v2, v26, v39

    goto/16 :goto_2

    .line 5946
    .end local v25    # "extendedPaddingBottom":I
    .restart local v5    # "highlight":Landroid/graphics/Path;
    .restart local v7    # "cursorOffsetVertical":I
    .restart local v8    # "absoluteGravity":I
    .restart local v12    # "clipBottom":F
    .restart local v14    # "clipRight":F
    .restart local v15    # "clipTop":F
    .restart local v30    # "layoutDirection":I
    .restart local v41    # "voffsetCursor":I
    .restart local v42    # "voffsetText":I
    :cond_13
    const/16 v29, 0x0

    .local v29, "isSectionMode":Z
    goto/16 :goto_3

    .line 5948
    .end local v29    # "isSectionMode":Z
    :cond_14
    const/4 v2, 0x0

    goto/16 :goto_4

    .line 5951
    :cond_15
    if-eqz v29, :cond_16

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLeTextInfo:Lcom/letv/leui/text/LeTextOpt$LeTextInfo;

    iget-object v2, v2, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->mSectionBoundPaint:Landroid/graphics/Paint;

    :goto_6
    invoke-virtual {v4, v2}, Landroid/text/Layout;->setSectionBoundPaint(Landroid/graphics/Paint;)V

    .line 5952
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mHighlightPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v5, v2, v7}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;I)V

    goto/16 :goto_5

    .line 5951
    :cond_16
    const/4 v2, 0x0

    goto :goto_6
.end method

.method public onEditorAction(I)V
    .locals 22
    .param p1, "actionCode"    # I

    .prologue
    .line 4908
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-nez v3, :cond_0

    const/4 v2, 0x0

    .line 4909
    :goto_0
    if-eqz v2, :cond_7

    .line 4910
    iget-object v3, v2, Landroid/widget/Editor$InputContentType;->onEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    if-eqz v3, :cond_1

    .line 4911
    iget-object v3, v2, Landroid/widget/Editor$InputContentType;->onEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    .line 4912
    const/4 v6, 0x0

    .line 4911
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-interface {v3, v0, v1, v6}, Landroid/widget/TextView$OnEditorActionListener;->onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4913
    return-void

    .line 4908
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v2, v3, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    .local v2, "ict":Landroid/widget/Editor$InputContentType;
    goto :goto_0

    .line 4922
    .end local v2    # "ict":Landroid/widget/Editor$InputContentType;
    :cond_1
    const/4 v3, 0x5

    move/from16 v0, p1

    if-ne v0, v3, :cond_3

    .line 4923
    const/4 v3, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->focusSearch(I)Landroid/view/View;

    move-result-object v20

    .line 4924
    .local v20, "v":Landroid/view/View;
    if-eqz v20, :cond_2

    .line 4925
    const/4 v3, 0x2

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/view/View;->requestFocus(I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 4927
    const-string/jumbo v3, "TextView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onEditorAction throw exception. this = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 4928
    const-string/jumbo v7, ", v = "

    .line 4927
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 4928
    const-string/jumbo v7, ", isInTouchMode() = "

    .line 4927
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 4928
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->isInTouchMode()Z

    move-result v7

    .line 4927
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4929
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->debug()V

    .line 4930
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v6, "focus search returned a view that wasn\'t able to take focus!"

    invoke-direct {v3, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 4934
    :cond_2
    return-void

    .line 4936
    .end local v20    # "v":Landroid/view/View;
    :cond_3
    const/4 v3, 0x7

    move/from16 v0, p1

    if-ne v0, v3, :cond_5

    .line 4937
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->focusSearch(I)Landroid/view/View;

    move-result-object v20

    .line 4938
    .restart local v20    # "v":Landroid/view/View;
    if-eqz v20, :cond_4

    .line 4939
    const/4 v3, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/view/View;->requestFocus(I)Z

    move-result v3

    if-nez v3, :cond_4

    .line 4941
    const-string/jumbo v3, "TextView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onEditorAction throw exception. this = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 4942
    const-string/jumbo v7, ", v = "

    .line 4941
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 4942
    const-string/jumbo v7, ", isInTouchMode() = "

    .line 4941
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 4942
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->isInTouchMode()Z

    move-result v7

    .line 4941
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4943
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->debug()V

    .line 4944
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v6, "focus search returned a view that wasn\'t able to take focus!"

    invoke-direct {v3, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 4948
    :cond_4
    return-void

    .line 4950
    .end local v20    # "v":Landroid/view/View;
    :cond_5
    const/4 v3, 0x6

    move/from16 v0, p1

    if-ne v0, v3, :cond_7

    .line 4951
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v19

    .line 4952
    .local v19, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v19, :cond_6

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 4953
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    const/4 v6, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v6}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 4955
    :cond_6
    return-void

    .line 4959
    .end local v19    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_7
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v21

    .line 4960
    .local v21, "viewRootImpl":Landroid/view/ViewRootImpl;
    if-eqz v21, :cond_8

    .line 4961
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 4963
    .local v4, "eventTime":J
    new-instance v3, Landroid/view/KeyEvent;

    .line 4964
    const/4 v8, 0x0

    const/16 v9, 0x42

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 4965
    const/4 v12, -0x1

    const/4 v13, 0x0

    .line 4966
    const/16 v14, 0x16

    move-wide v6, v4

    .line 4963
    invoke-direct/range {v3 .. v14}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    .line 4962
    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Landroid/view/ViewRootImpl;->dispatchKeyFromIme(Landroid/view/KeyEvent;)V

    .line 4969
    new-instance v7, Landroid/view/KeyEvent;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 4970
    const/4 v12, 0x1

    const/16 v13, 0x42

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 4971
    const/16 v16, -0x1

    const/16 v17, 0x0

    .line 4972
    const/16 v18, 0x16

    move-wide v10, v4

    .line 4969
    invoke-direct/range {v7 .. v18}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    .line 4968
    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Landroid/view/ViewRootImpl;->dispatchKeyFromIme(Landroid/view/KeyEvent;)V

    .line 4907
    .end local v4    # "eventTime":J
    :cond_8
    return-void
.end method

.method public onEndBatchEdit()V
    .locals 0

    .prologue
    .line 6719
    return-void
.end method

.method public onFinishTemporaryDetach()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 8702
    invoke-super {p0}, Landroid/view/View;->onFinishTemporaryDetach()V

    .line 8705
    iget-boolean v0, p0, Landroid/widget/TextView;->mDispatchTemporaryDetach:Z

    if-nez v0, :cond_0

    iput-boolean v1, p0, Landroid/widget/TextView;->mTemporaryDetach:Z

    .line 8706
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iput-boolean v1, v0, Landroid/widget/Editor;->mTemporaryDetach:Z

    .line 8701
    :cond_1
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 7
    .param p1, "focused"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 8711
    iget-boolean v0, p0, Landroid/widget/TextView;->mTemporaryDetach:Z

    if-eqz v0, :cond_0

    .line 8713
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 8714
    return-void

    .line 8717
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0, p1, p2}, Landroid/widget/Editor;->onFocusChanged(ZI)V

    .line 8719
    :cond_1
    if-eqz p1, :cond_2

    .line 8720
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spannable;

    if-eqz v0, :cond_2

    .line 8721
    iget-object v6, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v6, Landroid/text/Spannable;

    .line 8722
    .local v6, "sp":Landroid/text/Spannable;
    invoke-static {v6}, Landroid/text/method/MetaKeyKeyListener;->resetMetaState(Landroid/text/Spannable;)V

    .line 8726
    .end local v6    # "sp":Landroid/text/Spannable;
    :cond_2
    invoke-direct {p0, p1}, Landroid/widget/TextView;->startStopMarquee(Z)V

    .line 8728
    iget-object v0, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    if-eqz v0, :cond_3

    .line 8729
    iget-object v0, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object v1, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    invoke-interface/range {v0 .. v5}, Landroid/text/method/TransformationMethod;->onFocusChanged(Landroid/view/View;Ljava/lang/CharSequence;ZILandroid/graphics/Rect;)V

    .line 8732
    :cond_3
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 8710
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 8916
    iget-object v1, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v1, v1, Landroid/text/Spannable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v1, :cond_0

    .line 8918
    :try_start_0
    iget-object v2, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v1, Landroid/text/Spannable;

    invoke-interface {v2, p0, v1, p1}, Landroid/text/method/MovementMethod;->onGenericMotionEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    .line 8919
    const/4 v1, 0x1

    return v1

    .line 8921
    :catch_0
    move-exception v0

    .line 8927
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1
.end method

.method public onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 9444
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 9446
    invoke-virtual {p0}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    move-result v0

    .line 9447
    .local v0, "isPassword":Z
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setPassword(Z)V

    .line 9449
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v1

    const/16 v2, 0x2000

    if-ne v1, v2, :cond_0

    .line 9450
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 9451
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    .line 9452
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 9443
    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 8
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    const/4 v7, 0x1

    .line 9459
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 9461
    invoke-virtual {p0}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    move-result v2

    .line 9462
    .local v2, "isPassword":Z
    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPassword(Z)V

    .line 9464
    if-eqz v2, :cond_0

    invoke-direct {p0}, Landroid/widget/TextView;->shouldSpeakPasswordsForAccessibility()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 9465
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextForAccessibility()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    .line 9468
    :cond_1
    iget-object v4, p0, Landroid/widget/TextView;->mBufferType:Landroid/widget/TextView$BufferType;

    sget-object v5, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    if-ne v4, v5, :cond_2

    .line 9469
    invoke-virtual {p1, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEditable(Z)V

    .line 9472
    :cond_2
    iget-object v4, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v4, :cond_3

    .line 9473
    iget-object v4, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget v4, v4, Landroid/widget/Editor;->mInputType:I

    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setInputType(I)V

    .line 9475
    iget-object v4, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v4, v4, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    if-eqz v4, :cond_3

    .line 9476
    invoke-virtual {p1, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentInvalid(Z)V

    .line 9477
    iget-object v4, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v4, v4, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setError(Ljava/lang/CharSequence;)V

    .line 9481
    :cond_3
    iget-object v4, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 9482
    const/16 v4, 0x100

    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 9483
    const/16 v4, 0x200

    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 9484
    const/16 v4, 0x1f

    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setMovementGranularities(I)V

    .line 9489
    const/high16 v4, 0x20000

    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 9492
    :cond_4
    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 9493
    invoke-virtual {p0}, Landroid/widget/TextView;->canCopy()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 9494
    const/16 v4, 0x4000

    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 9496
    :cond_5
    invoke-virtual {p0}, Landroid/widget/TextView;->canPaste()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 9497
    const v4, 0x8000

    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 9499
    :cond_6
    invoke-virtual {p0}, Landroid/widget/TextView;->canCut()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 9500
    const/high16 v4, 0x10000

    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 9502
    :cond_7
    invoke-virtual {p0}, Landroid/widget/TextView;->canShare()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 9503
    new-instance v4, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 9505
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x104044c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 9504
    const/high16 v6, 0x10000000

    .line 9503
    invoke-direct {v4, v6, v5}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 9507
    :cond_8
    invoke-virtual {p0}, Landroid/widget/TextView;->canProcessText()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 9508
    iget-object v4, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v4, v4, Landroid/widget/Editor;->mProcessTextIntentActionsHandler:Landroid/widget/Editor$ProcessTextIntentActionsHandler;

    invoke-virtual {v4, p1}, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 9513
    :cond_9
    iget-object v4, p0, Landroid/widget/TextView;->mFilters:[Landroid/text/InputFilter;

    array-length v3, v4

    .line 9514
    .local v3, "numFilters":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_b

    .line 9515
    iget-object v4, p0, Landroid/widget/TextView;->mFilters:[Landroid/text/InputFilter;

    aget-object v0, v4, v1

    .line 9516
    .local v0, "filter":Landroid/text/InputFilter;
    instance-of v4, v0, Landroid/text/InputFilter$LengthFilter;

    if-eqz v4, :cond_a

    .line 9517
    check-cast v0, Landroid/text/InputFilter$LengthFilter;

    .end local v0    # "filter":Landroid/text/InputFilter;
    invoke-virtual {v0}, Landroid/text/InputFilter$LengthFilter;->getMax()I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setMaxTextLength(I)V

    .line 9514
    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 9521
    :cond_b
    invoke-virtual {p0}, Landroid/widget/TextView;->isSingleLine()Z

    move-result v4

    if-nez v4, :cond_c

    .line 9522
    invoke-virtual {p1, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->setMultiLine(Z)V

    .line 9458
    :cond_c
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 6160
    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1}, Landroid/widget/TextView;->doKeyDown(ILandroid/view/KeyEvent;Landroid/view/KeyEvent;)I

    move-result v0

    .line 6161
    .local v0, "which":I
    if-nez v0, :cond_0

    .line 6162
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1

    .line 6165
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "keyCode"    # I
    .param p2, "repeatCount"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 6170
    invoke-static {p3, v3}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v0

    .line 6172
    .local v0, "down":Landroid/view/KeyEvent;
    invoke-direct {p0, p1, v0, p3}, Landroid/widget/TextView;->doKeyDown(ILandroid/view/KeyEvent;Landroid/view/KeyEvent;)I

    move-result v2

    .line 6173
    .local v2, "which":I
    if-nez v2, :cond_0

    .line 6175
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v3

    return v3

    .line 6177
    :cond_0
    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 6179
    return v5

    .line 6182
    :cond_1
    add-int/lit8 p2, p2, -0x1

    .line 6189
    invoke-static {p3, v5}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v1

    .line 6190
    .local v1, "up":Landroid/view/KeyEvent;
    if-ne v2, v5, :cond_4

    .line 6192
    iget-object v3, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v4, v3, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v3, Landroid/text/Editable;

    invoke-interface {v4, p0, v3, p1, v1}, Landroid/text/method/KeyListener;->onKeyUp(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    .line 6193
    :goto_0
    add-int/lit8 p2, p2, -0x1

    if-lez p2, :cond_2

    .line 6194
    iget-object v3, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v4, v3, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v3, Landroid/text/Editable;

    invoke-interface {v4, p0, v3, p1, v0}, Landroid/text/method/KeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    .line 6195
    iget-object v3, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v4, v3, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v3, Landroid/text/Editable;

    invoke-interface {v4, p0, v3, p1, v1}, Landroid/text/method/KeyListener;->onKeyUp(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    goto :goto_0

    .line 6197
    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView;->hideErrorIfUnchanged()V

    .line 6208
    :cond_3
    return v5

    .line 6199
    :cond_4
    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 6201
    iget-object v4, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v3, Landroid/text/Spannable;

    invoke-interface {v4, p0, v3, p1, v1}, Landroid/text/method/MovementMethod;->onKeyUp(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    .line 6202
    :goto_1
    add-int/lit8 p2, p2, -0x1

    if-lez p2, :cond_3

    .line 6203
    iget-object v4, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v3, Landroid/text/Spannable;

    invoke-interface {v4, p0, v3, p1, v0}, Landroid/text/method/MovementMethod;->onKeyDown(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    .line 6204
    iget-object v4, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v3, Landroid/text/Spannable;

    invoke-interface {v4, p0, v3, p1, v1}, Landroid/text/method/MovementMethod;->onKeyUp(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    goto :goto_1
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 6124
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->handleBackInTextActionModeIfNeeded(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6125
    const/4 v0, 0x1

    return v0

    .line 6127
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 9137
    const/16 v0, 0x1000

    invoke-virtual {p2, v0}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9139
    sparse-switch p1, :sswitch_data_0

    .line 9180
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 9141
    :sswitch_0
    invoke-virtual {p0}, Landroid/widget/TextView;->canSelectText()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9142
    const v0, 0x102001f

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result v0

    return v0

    .line 9146
    :sswitch_1
    invoke-virtual {p0}, Landroid/widget/TextView;->canUndo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9147
    const v0, 0x1020032

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result v0

    return v0

    .line 9151
    :sswitch_2
    invoke-virtual {p0}, Landroid/widget/TextView;->canCut()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9152
    const v0, 0x1020020

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result v0

    return v0

    .line 9156
    :sswitch_3
    invoke-virtual {p0}, Landroid/widget/TextView;->canCopy()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9157
    const v0, 0x1020021

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result v0

    return v0

    .line 9161
    :sswitch_4
    invoke-virtual {p0}, Landroid/widget/TextView;->canPaste()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9162
    const v0, 0x1020022

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result v0

    return v0

    .line 9166
    :cond_1
    const/16 v0, 0x1001

    invoke-virtual {p2, v0}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9168
    sparse-switch p1, :sswitch_data_1

    goto :goto_0

    .line 9175
    :sswitch_5
    invoke-virtual {p0}, Landroid/widget/TextView;->canPaste()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9176
    const v0, 0x1020031

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result v0

    return v0

    .line 9170
    :sswitch_6
    invoke-virtual {p0}, Landroid/widget/TextView;->canRedo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9171
    const v0, 0x1020033

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result v0

    return v0

    .line 9139
    :sswitch_data_0
    .sparse-switch
        0x1d -> :sswitch_0
        0x1f -> :sswitch_3
        0x32 -> :sswitch_4
        0x34 -> :sswitch_2
        0x36 -> :sswitch_1
    .end sparse-switch

    .line 9168
    :sswitch_data_1
    .sparse-switch
        0x32 -> :sswitch_5
        0x36 -> :sswitch_6
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/16 v5, 0x82

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 6412
    invoke-virtual {p0}, Landroid/widget/TextView;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 6413
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    return v2

    .line 6416
    :cond_0
    invoke-static {p1}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 6417
    iput-boolean v3, p0, Landroid/widget/TextView;->mPreventDefaultMovement:Z

    .line 6420
    :cond_1
    sparse-switch p1, :sswitch_data_0

    .line 6506
    :cond_2
    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v2, :cond_9

    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v2, v2, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    if-eqz v2, :cond_9

    .line 6507
    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v3, v2, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v2, Landroid/text/Editable;

    invoke-interface {v3, p0, v2, p1, p2}, Landroid/text/method/KeyListener;->onKeyUp(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 6508
    return v4

    .line 6422
    :sswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 6432
    invoke-virtual {p0}, Landroid/widget/TextView;->hasOnClickListeners()Z

    move-result v2

    if-nez v2, :cond_3

    .line 6433
    iget-object v2, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v2, v2, Landroid/text/Editable;

    if-eqz v2, :cond_3

    .line 6434
    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Landroid/widget/TextView;->onCheckIsTextEditor()Z

    move-result v2

    .line 6433
    if-eqz v2, :cond_3

    .line 6435
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 6436
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->viewClicked(Landroid/view/inputmethod/InputMethodManager;)V

    .line 6437
    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/widget/TextView;->getShowSoftInputOnFocus()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 6438
    invoke-virtual {v0, p0, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 6443
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    return v2

    .line 6446
    :sswitch_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 6447
    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v2, v2, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    if-eqz v2, :cond_4

    .line 6448
    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v2, v2, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget-object v2, v2, Landroid/widget/Editor$InputContentType;->onEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    if-eqz v2, :cond_4

    .line 6449
    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v2, v2, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget-boolean v2, v2, Landroid/widget/Editor$InputContentType;->enterDown:Z

    .line 6447
    if-eqz v2, :cond_4

    .line 6450
    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v2, v2, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iput-boolean v3, v2, Landroid/widget/Editor$InputContentType;->enterDown:Z

    .line 6451
    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v2, v2, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget-object v2, v2, Landroid/widget/Editor$InputContentType;->onEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-interface {v2, p0, v3, p2}, Landroid/widget/TextView$OnEditorActionListener;->onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 6453
    return v4

    .line 6457
    :cond_4
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v2

    and-int/lit8 v2, v2, 0x10

    if-nez v2, :cond_5

    .line 6458
    invoke-direct {p0}, Landroid/widget/TextView;->shouldAdvanceFocusOnEnter()Z

    move-result v2

    .line 6457
    if-eqz v2, :cond_8

    .line 6469
    :cond_5
    invoke-virtual {p0}, Landroid/widget/TextView;->hasOnClickListeners()Z

    move-result v2

    if-nez v2, :cond_8

    .line 6470
    invoke-virtual {p0, v5}, Landroid/widget/TextView;->focusSearch(I)Landroid/view/View;

    move-result-object v1

    .line 6472
    .local v1, "v":Landroid/view/View;
    if-eqz v1, :cond_7

    .line 6473
    invoke-virtual {v1, v5}, Landroid/view/View;->requestFocus(I)Z

    move-result v2

    if-nez v2, :cond_6

    .line 6475
    const-string/jumbo v2, "TextView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onKeyUp throw exception. this = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 6476
    const-string/jumbo v4, ", v = "

    .line 6475
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 6476
    const-string/jumbo v4, ", isInTouchMode() = "

    .line 6475
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 6476
    invoke-virtual {v1}, Landroid/view/View;->isInTouchMode()Z

    move-result v4

    .line 6475
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6477
    invoke-virtual {v1}, Landroid/view/View;->debug()V

    .line 6478
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 6479
    const-string/jumbo v3, "focus search returned a view that wasn\'t able to take focus!"

    .line 6478
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 6488
    :cond_6
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 6489
    return v4

    .line 6490
    :cond_7
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v2

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_8

    .line 6494
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 6495
    .restart local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_8

    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 6496
    invoke-virtual {p0}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 6501
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v1    # "v":Landroid/view/View;
    :cond_8
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    return v2

    .line 6510
    :cond_9
    iget-object v2, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v2, :cond_a

    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v2, :cond_a

    .line 6511
    iget-object v3, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v2, Landroid/text/Spannable;

    invoke-interface {v3, p0, v2, p1, p2}, Landroid/text/method/MovementMethod;->onKeyUp(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 6512
    return v4

    .line 6514
    :cond_a
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    return v2

    .line 6420
    nop

    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x42 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 7646
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 7647
    iget v1, p0, Landroid/widget/TextView;->mDeferScroll:I

    if-ltz v1, :cond_0

    .line 7648
    iget v0, p0, Landroid/widget/TextView;->mDeferScroll:I

    .line 7649
    .local v0, "curs":I
    const/4 v1, -0x1

    iput v1, p0, Landroid/widget/TextView;->mDeferScroll:I

    .line 7650
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->bringPointIntoView(I)Z

    .line 7645
    .end local v0    # "curs":I
    :cond_0
    return-void
.end method

.method onLocaleChanged()V
    .locals 2

    .prologue
    .line 9286
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/widget/Editor;->mWordIterator:Landroid/text/method/WordIterator;

    .line 9284
    return-void
.end method

.method public onLongClick(Landroid/view/View;Lcom/letv/leui/util/LeLinkify$LeURLSpan;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "span"    # Lcom/letv/leui/util/LeLinkify$LeURLSpan;

    .prologue
    .line 10975
    const/4 v0, 0x0

    return v0
.end method

.method protected onMeasure(II)V
    .locals 34
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 7118
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v30

    .line 7119
    .local v30, "widthMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v20

    .line 7120
    .local v20, "heightMode":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v31

    .line 7121
    .local v31, "widthSize":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v21

    .line 7126
    .local v21, "heightSize":I
    sget-object v7, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    .line 7127
    .local v7, "boring":Landroid/text/BoringLayout$Metrics;
    sget-object v8, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    .line 7129
    .local v8, "hintBoring":Landroid/text/BoringLayout$Metrics;
    sget-boolean v4, Landroid/text/TextUtils;->DEBUG_LOG:Z

    if-eqz v4, :cond_0

    .line 7130
    const-string/jumbo v4, "Text-onMeasure"

    const-wide/16 v32, 0x8

    move-wide/from16 v0, v32

    invoke-static {v0, v1, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 7131
    const-string/jumbo v4, "TextView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "[onMeasure] start "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, v30

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, v31

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, v21

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/text/TextUtils;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 7132
    const-string/jumbo v4, "TextView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "[onMeasure] "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/text/TextUtils;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 7134
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 7135
    .local v12, "beforeTime":J
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    if-nez v4, :cond_1

    .line 7136
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getTextDirectionHeuristic()Landroid/text/TextDirectionHeuristic;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    .line 7139
    :cond_1
    const/4 v11, -0x1

    .line 7140
    .local v11, "des":I
    const/16 v18, 0x0

    .line 7141
    .local v18, "fromexisting":Z
    sget-boolean v4, Landroid/text/TextUtils;->DEBUG_LOG:Z

    if-eqz v4, :cond_2

    .line 7142
    const-string/jumbo v4, "TextView"

    const-string/jumbo v9, "[onMeasure] width start"

    invoke-static {v4, v9}, Landroid/text/TextUtils;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 7143
    const-string/jumbo v4, "TextView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "[onMeasure] "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/text/TextUtils;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 7145
    :cond_2
    const/high16 v4, 0x40000000    # 2.0f

    move/from16 v0, v30

    if-ne v0, v4, :cond_12

    .line 7147
    move/from16 v28, v31

    .line 7148
    .local v28, "width":I
    sget-boolean v4, Landroid/text/TextUtils;->DEBUG_LOG:Z

    if-eqz v4, :cond_3

    .line 7149
    const-string/jumbo v4, "TextView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "[onMeasure] check 1 - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, v28

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/text/TextUtils;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 7279
    :cond_3
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v4

    sub-int v4, v28, v4

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v9

    sub-int v5, v4, v9

    .line 7280
    .local v5, "want":I
    sget-boolean v4, Landroid/text/TextUtils;->DEBUG_LOG:Z

    if-eqz v4, :cond_4

    .line 7281
    const-string/jumbo v4, "TextView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "[onMeasure] check 12 - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/text/TextUtils;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 7283
    :cond_4
    move/from16 v27, v5

    .line 7285
    .local v27, "unpaddedWidth":I
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/TextView;->mHorizontallyScrolling:Z

    if-eqz v4, :cond_5

    const/high16 v5, 0x100000

    .line 7287
    :cond_5
    move v6, v5

    .line 7288
    .local v6, "hintWant":I
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    if-nez v4, :cond_2b

    move/from16 v23, v6

    .line 7290
    .local v23, "hintWidth":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-nez v4, :cond_2c

    .line 7291
    sget-boolean v4, Landroid/text/TextUtils;->DEBUG_LOG:Z

    if-eqz v4, :cond_6

    .line 7292
    const-string/jumbo v4, "TextView"

    const-string/jumbo v9, "[onMeasure] makeNewLayout start 1"

    invoke-static {v4, v9}, Landroid/text/TextUtils;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 7295
    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v4

    sub-int v4, v28, v4

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v9

    sub-int v9, v4, v9

    const/4 v10, 0x0

    move-object/from16 v4, p0

    .line 7294
    invoke-virtual/range {v4 .. v10}, Landroid/widget/TextView;->makeNewLayout(IILandroid/text/BoringLayout$Metrics;Landroid/text/BoringLayout$Metrics;IZ)V

    .line 7296
    sget-boolean v4, Landroid/text/TextUtils;->DEBUG_LOG:Z

    if-eqz v4, :cond_7

    .line 7297
    const-string/jumbo v4, "TextView"

    const-string/jumbo v9, "[onMeasure] makeNewLayout end 1"

    invoke-static {v4, v9}, Landroid/text/TextUtils;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 7329
    :cond_7
    :goto_2
    sget-boolean v4, Landroid/text/TextUtils;->DEBUG_LOG:Z

    if-eqz v4, :cond_8

    .line 7330
    const-string/jumbo v4, "TextView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "[onMeasure] width end,"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, v28

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/text/TextUtils;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 7331
    const-string/jumbo v4, "TextView"

    const-string/jumbo v9, "[onMeasure] height start"

    invoke-static {v4, v9}, Landroid/text/TextUtils;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 7333
    :cond_8
    const/high16 v4, 0x40000000    # 2.0f

    move/from16 v0, v20

    if-ne v0, v4, :cond_38

    .line 7335
    move/from16 v19, v21

    .line 7336
    .local v19, "height":I
    const/4 v4, -0x1

    move-object/from16 v0, p0

    iput v4, v0, Landroid/widget/TextView;->mDesiredHeightAtMeasure:I

    .line 7352
    :cond_9
    :goto_3
    sget-boolean v4, Landroid/text/TextUtils;->DEBUG_LOG:Z

    if-eqz v4, :cond_a

    .line 7353
    const-string/jumbo v4, "TextView"

    const-string/jumbo v9, "[onMeasure] height end"

    invoke-static {v4, v9}, Landroid/text/TextUtils;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 7355
    :cond_a
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v4

    sub-int v4, v19, v4

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v9

    sub-int v26, v4, v9

    .line 7356
    .local v26, "unpaddedHeight":I
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/TextView;->mMaxMode:I

    const/4 v9, 0x1

    if-ne v4, v9, :cond_b

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v4}, Landroid/text/Layout;->getLineCount()I

    move-result v4

    move-object/from16 v0, p0

    iget v9, v0, Landroid/widget/TextView;->mMaximum:I

    if-le v4, v9, :cond_b

    .line 7357
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v0, p0

    iget v9, v0, Landroid/widget/TextView;->mMaximum:I

    invoke-virtual {v4, v9}, Landroid/text/Layout;->getLineTop(I)I

    move-result v4

    move/from16 v0, v26

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v26

    .line 7364
    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-nez v4, :cond_c

    .line 7365
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v4}, Landroid/text/Layout;->getWidth()I

    move-result v4

    move/from16 v0, v27

    if-le v4, v0, :cond_3b

    .line 7367
    :cond_c
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->registerForPreDraw()V

    .line 7371
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/TextView;->mSmartFit:Z

    if-eqz v4, :cond_e

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getMaxLines()I

    move-result v4

    const v9, 0x7fffffff

    if-eq v4, v9, :cond_e

    .line 7372
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mSmartFitPaint:Landroid/graphics/Paint;

    if-nez v4, :cond_d

    .line 7373
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/widget/TextView;->mSmartFitPaint:Landroid/graphics/Paint;

    .line 7375
    :cond_d
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mSmartFitPaint:Landroid/graphics/Paint;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    .line 7376
    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-direct {v0, v1}, Landroid/widget/TextView;->doSmartFit(I)V

    .line 7381
    :cond_e
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mBufferType:Landroid/widget/TextView$BufferType;

    sget-object v9, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    if-ne v4, v9, :cond_f

    const/high16 v4, 0x40000000    # 2.0f

    move/from16 v0, v30

    if-eq v0, v4, :cond_f

    .line 7382
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mLeTextInfo:Lcom/letv/leui/text/LeTextOpt$LeTextInfo;

    iget v4, v4, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->mCursorPadding:I

    add-int v4, v4, v28

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/widget/TextView;->mLeTextInfo:Lcom/letv/leui/text/LeTextOpt$LeTextInfo;

    iget v9, v9, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->mCursorWidth:I

    add-int/2addr v4, v9

    move/from16 v0, v31

    if-ge v4, v0, :cond_f

    .line 7383
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mLeTextInfo:Lcom/letv/leui/text/LeTextOpt$LeTextInfo;

    iget v4, v4, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->mCursorPadding:I

    add-int v4, v4, v28

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/widget/TextView;->mLeTextInfo:Lcom/letv/leui/text/LeTextOpt$LeTextInfo;

    iget v9, v9, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->mCursorWidth:I

    add-int v28, v4, v9

    .line 7386
    :cond_f
    move-object/from16 v0, p0

    move/from16 v1, v28

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setMeasuredDimension(II)V

    .line 7387
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v32

    sub-long v16, v32, v12

    .line 7388
    .local v16, "diffTime":J
    sget-boolean v4, Landroid/text/TextUtils;->DEBUG_LOG:Z

    if-eqz v4, :cond_11

    .line 7389
    const-wide/16 v32, 0x0

    cmp-long v4, v16, v32

    if-lez v4, :cond_10

    .line 7390
    const-string/jumbo v4, "TextView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "[onMeasure] diff "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/text/TextUtils;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 7392
    :cond_10
    const-string/jumbo v4, "TextView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "[onMeasure] end "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, v28

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v10}, Landroid/text/Layout;->getWidth()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v10}, Landroid/text/Layout;->getHeight()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v10}, Landroid/text/Layout;->getLineCount()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/text/TextUtils;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 7393
    const-wide/16 v32, 0x8

    invoke-static/range {v32 .. v33}, Landroid/os/Trace;->traceEnd(J)V

    .line 7117
    :cond_11
    return-void

    .line 7152
    .end local v5    # "want":I
    .end local v6    # "hintWant":I
    .end local v16    # "diffTime":J
    .end local v19    # "height":I
    .end local v23    # "hintWidth":I
    .end local v26    # "unpaddedHeight":I
    .end local v27    # "unpaddedWidth":I
    .end local v28    # "width":I
    :cond_12
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v4, :cond_13

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    if-nez v4, :cond_13

    .line 7153
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-static {v4}, Landroid/widget/TextView;->desired(Landroid/text/Layout;)I

    move-result v11

    .line 7156
    :cond_13
    if-gez v11, :cond_26

    .line 7157
    sget-boolean v4, Landroid/text/TextUtils;->DEBUG_LOG:Z

    if-eqz v4, :cond_14

    .line 7158
    const-string/jumbo v4, "TextView"

    const-string/jumbo v9, "[onMeasure] isBoring start"

    invoke-static {v4, v9}, Landroid/text/TextUtils;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 7162
    :cond_14
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mBoring:Landroid/text/BoringLayout$Metrics;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLeTextInfo:Lcom/letv/leui/text/LeTextOpt$LeTextInfo;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v0, v0, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->mURLPaddingHorizontal:I

    move/from16 v33, v0

    move-object/from16 v0, v32

    move/from16 v1, v33

    invoke-static {v4, v9, v10, v0, v1}, Landroid/text/BoringLayout;->isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;Landroid/text/BoringLayout$Metrics;I)Landroid/text/BoringLayout$Metrics;

    move-result-object v7

    .line 7164
    sget-boolean v4, Landroid/text/TextUtils;->DEBUG_LOG:Z

    if-eqz v4, :cond_15

    .line 7165
    const-string/jumbo v4, "TextView"

    const-string/jumbo v9, "[onMeasure] isBoring end"

    invoke-static {v4, v9}, Landroid/text/TextUtils;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 7167
    :cond_15
    if-eqz v7, :cond_16

    .line 7168
    move-object/from16 v0, p0

    iput-object v7, v0, Landroid/widget/TextView;->mBoring:Landroid/text/BoringLayout$Metrics;

    .line 7174
    :cond_16
    :goto_5
    if-eqz v7, :cond_17

    sget-object v4, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    if-ne v7, v4, :cond_27

    .line 7175
    :cond_17
    if-gez v11, :cond_18

    .line 7178
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/widget/TextView;->mLeTextInfo:Lcom/letv/leui/text/LeTextOpt$LeTextInfo;

    iget v10, v10, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->mURLPaddingHorizontal:I

    invoke-static {v4, v9, v10}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;I)F

    move-result v4

    float-to-double v0, v4

    move-wide/from16 v32, v0

    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v32

    move-wide/from16 v0, v32

    double-to-int v11, v0

    .line 7181
    :cond_18
    move/from16 v28, v11

    .line 7182
    .restart local v28    # "width":I
    sget-boolean v4, Landroid/text/TextUtils;->DEBUG_LOG:Z

    if-eqz v4, :cond_19

    .line 7183
    const-string/jumbo v4, "TextView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "[onMeasure] check 2 - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, v28

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/text/TextUtils;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 7192
    :cond_19
    :goto_6
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 7193
    .local v15, "dr":Landroid/widget/TextView$Drawables;
    if-eqz v15, :cond_1a

    .line 7194
    iget v4, v15, Landroid/widget/TextView$Drawables;->mDrawableWidthTop:I

    move/from16 v0, v28

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v28

    .line 7195
    iget v4, v15, Landroid/widget/TextView$Drawables;->mDrawableWidthBottom:I

    move/from16 v0, v28

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v28

    .line 7196
    sget-boolean v4, Landroid/text/TextUtils;->DEBUG_LOG:Z

    if-eqz v4, :cond_1a

    .line 7197
    const-string/jumbo v4, "TextView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "[onMeasure] check 4 - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, v28

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/text/TextUtils;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 7201
    :cond_1a
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    if-eqz v4, :cond_21

    .line 7202
    const/16 v22, -0x1

    .line 7205
    .local v22, "hintDes":I
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    if-eqz v4, :cond_1b

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    if-nez v4, :cond_1b

    .line 7206
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    invoke-static {v4}, Landroid/widget/TextView;->desired(Landroid/text/Layout;)I

    move-result v22

    .line 7209
    :cond_1b
    if-gez v22, :cond_1e

    .line 7210
    sget-boolean v4, Landroid/text/TextUtils;->DEBUG_LOG:Z

    if-eqz v4, :cond_1c

    .line 7211
    const-string/jumbo v4, "TextView"

    const-string/jumbo v9, "[onMeasure] isBoringHint start"

    invoke-static {v4, v9}, Landroid/text/TextUtils;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 7213
    :cond_1c
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHintBoring:Landroid/text/BoringLayout$Metrics;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-static {v4, v9, v10, v0}, Landroid/text/BoringLayout;->isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;Landroid/text/BoringLayout$Metrics;)Landroid/text/BoringLayout$Metrics;

    move-result-object v8

    .line 7214
    sget-boolean v4, Landroid/text/TextUtils;->DEBUG_LOG:Z

    if-eqz v4, :cond_1d

    .line 7215
    const-string/jumbo v4, "TextView"

    const-string/jumbo v9, "[onMeasure] isBoringHint end"

    invoke-static {v4, v9}, Landroid/text/TextUtils;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 7217
    :cond_1d
    if-eqz v8, :cond_1e

    .line 7218
    move-object/from16 v0, p0

    iput-object v8, v0, Landroid/widget/TextView;->mHintBoring:Landroid/text/BoringLayout$Metrics;

    .line 7222
    :cond_1e
    if-eqz v8, :cond_1f

    sget-object v4, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    if-ne v8, v4, :cond_28

    .line 7223
    :cond_1f
    if-gez v22, :cond_20

    .line 7224
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-static {v4, v9}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v4

    float-to-double v0, v4

    move-wide/from16 v32, v0

    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v32

    move-wide/from16 v0, v32

    double-to-int v0, v0

    move/from16 v22, v0

    .line 7226
    :cond_20
    move/from16 v23, v22

    .line 7231
    .restart local v23    # "hintWidth":I
    :goto_7
    move/from16 v0, v23

    move/from16 v1, v28

    if-le v0, v1, :cond_21

    .line 7232
    move/from16 v28, v23

    .line 7236
    .end local v22    # "hintDes":I
    .end local v23    # "hintWidth":I
    :cond_21
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v9

    add-int/2addr v4, v9

    add-int v28, v28, v4

    .line 7237
    sget-boolean v4, Landroid/text/TextUtils;->DEBUG_LOG:Z

    if-eqz v4, :cond_22

    .line 7238
    const-string/jumbo v4, "TextView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "[onMeasure] check 5 - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, v28

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/text/TextUtils;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 7241
    :cond_22
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/TextView;->mMaxWidthMode:I

    const/4 v9, 0x1

    if-ne v4, v9, :cond_29

    .line 7242
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/TextView;->mMaxWidth:I

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getLineHeight()I

    move-result v9

    mul-int/2addr v4, v9

    move/from16 v0, v28

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v28

    .line 7243
    sget-boolean v4, Landroid/text/TextUtils;->DEBUG_LOG:Z

    if-eqz v4, :cond_23

    .line 7244
    const-string/jumbo v4, "TextView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "[onMeasure] check 6 - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, v28

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/text/TextUtils;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 7253
    :cond_23
    :goto_8
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/TextView;->mMinWidthMode:I

    const/4 v9, 0x1

    if-ne v4, v9, :cond_2a

    .line 7254
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/TextView;->mMinWidth:I

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getLineHeight()I

    move-result v9

    mul-int/2addr v4, v9

    move/from16 v0, v28

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v28

    .line 7255
    sget-boolean v4, Landroid/text/TextUtils;->DEBUG_LOG:Z

    if-eqz v4, :cond_24

    .line 7256
    const-string/jumbo v4, "TextView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "[onMeasure] check 8 - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, v28

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/text/TextUtils;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 7266
    :cond_24
    :goto_9
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getSuggestedMinimumWidth()I

    move-result v4

    move/from16 v0, v28

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v28

    .line 7267
    sget-boolean v4, Landroid/text/TextUtils;->DEBUG_LOG:Z

    if-eqz v4, :cond_25

    .line 7268
    const-string/jumbo v4, "TextView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "[onMeasure] check 10 - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, v28

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getSuggestedMinimumWidth()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/text/TextUtils;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 7271
    :cond_25
    const/high16 v4, -0x80000000

    move/from16 v0, v30

    if-ne v0, v4, :cond_3

    .line 7272
    move/from16 v0, v31

    move/from16 v1, v28

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v28

    .line 7273
    sget-boolean v4, Landroid/text/TextUtils;->DEBUG_LOG:Z

    if-eqz v4, :cond_3

    .line 7274
    const-string/jumbo v4, "TextView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "[onMeasure] check 11 - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, v28

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/text/TextUtils;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 7171
    .end local v15    # "dr":Landroid/widget/TextView$Drawables;
    .end local v28    # "width":I
    :cond_26
    const/16 v18, 0x1

    goto/16 :goto_5

    .line 7186
    :cond_27
    iget v0, v7, Landroid/text/BoringLayout$Metrics;->width:I

    move/from16 v28, v0

    .line 7187
    .restart local v28    # "width":I
    sget-boolean v4, Landroid/text/TextUtils;->DEBUG_LOG:Z

    if-eqz v4, :cond_19

    .line 7188
    const-string/jumbo v4, "TextView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "[onMeasure] check 3 - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, v28

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/text/TextUtils;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 7228
    .restart local v15    # "dr":Landroid/widget/TextView$Drawables;
    .restart local v22    # "hintDes":I
    :cond_28
    iget v0, v8, Landroid/text/BoringLayout$Metrics;->width:I

    move/from16 v23, v0

    .restart local v23    # "hintWidth":I
    goto/16 :goto_7

    .line 7247
    .end local v22    # "hintDes":I
    .end local v23    # "hintWidth":I
    :cond_29
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/TextView;->mMaxWidth:I

    move/from16 v0, v28

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v28

    .line 7248
    sget-boolean v4, Landroid/text/TextUtils;->DEBUG_LOG:Z

    if-eqz v4, :cond_23

    .line 7249
    const-string/jumbo v4, "TextView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "[onMeasure] check 7 - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, v28

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/text/TextUtils;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 7259
    :cond_2a
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/TextView;->mMinWidth:I

    move/from16 v0, v28

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v28

    .line 7260
    sget-boolean v4, Landroid/text/TextUtils;->DEBUG_LOG:Z

    if-eqz v4, :cond_24

    .line 7261
    const-string/jumbo v4, "TextView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "[onMeasure] check 9 - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, v28

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/text/TextUtils;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    .line 7288
    .end local v15    # "dr":Landroid/widget/TextView$Drawables;
    .restart local v5    # "want":I
    .restart local v6    # "hintWant":I
    .restart local v27    # "unpaddedWidth":I
    :cond_2b
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    invoke-virtual {v4}, Landroid/text/Layout;->getWidth()I

    move-result v23

    .restart local v23    # "hintWidth":I
    goto/16 :goto_1

    .line 7300
    :cond_2c
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v4}, Landroid/text/Layout;->getWidth()I

    move-result v4

    if-ne v4, v5, :cond_2d

    .line 7301
    move/from16 v0, v23

    if-eq v0, v6, :cond_31

    .line 7300
    :cond_2d
    const/16 v24, 0x1

    .line 7305
    .local v24, "layoutChanged":Z
    :goto_a
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    if-nez v4, :cond_34

    .line 7306
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    if-nez v4, :cond_34

    .line 7307
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v4}, Landroid/text/Layout;->getWidth()I

    move-result v4

    if-le v5, v4, :cond_34

    .line 7308
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    instance-of v4, v4, Landroid/text/BoringLayout;

    if-nez v4, :cond_2e

    if-eqz v18, :cond_33

    if-ltz v11, :cond_33

    if-gt v11, v5, :cond_33

    :cond_2e
    const/16 v29, 0x1

    .line 7310
    .local v29, "widthChanged":Z
    :goto_b
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/TextView;->mMaxMode:I

    move-object/from16 v0, p0

    iget v9, v0, Landroid/widget/TextView;->mOldMaxMode:I

    if-ne v4, v9, :cond_2f

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/TextView;->mMaximum:I

    move-object/from16 v0, p0

    iget v9, v0, Landroid/widget/TextView;->mOldMaximum:I

    if-eq v4, v9, :cond_35

    :cond_2f
    const/16 v25, 0x1

    .line 7312
    .local v25, "maximumChanged":Z
    :goto_c
    if-nez v24, :cond_30

    if-eqz v25, :cond_7

    .line 7313
    :cond_30
    if-nez v25, :cond_36

    if-eqz v29, :cond_36

    .line 7314
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v4, v5}, Landroid/text/Layout;->increaseWidthTo(I)V

    goto/16 :goto_2

    .line 7302
    .end local v24    # "layoutChanged":Z
    .end local v25    # "maximumChanged":Z
    .end local v29    # "widthChanged":Z
    :cond_31
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v4}, Landroid/text/Layout;->getEllipsizedWidth()I

    move-result v4

    .line 7303
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v9

    sub-int v9, v28, v9

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v10

    sub-int/2addr v9, v10

    .line 7302
    if-eq v4, v9, :cond_32

    const/16 v24, 0x1

    .restart local v24    # "layoutChanged":Z
    goto :goto_a

    .end local v24    # "layoutChanged":Z
    :cond_32
    const/16 v24, 0x0

    .restart local v24    # "layoutChanged":Z
    goto :goto_a

    .line 7308
    :cond_33
    const/16 v29, 0x0

    .restart local v29    # "widthChanged":Z
    goto :goto_b

    .line 7305
    .end local v29    # "widthChanged":Z
    :cond_34
    const/16 v29, 0x0

    .restart local v29    # "widthChanged":Z
    goto :goto_b

    .line 7310
    :cond_35
    const/16 v25, 0x0

    .restart local v25    # "maximumChanged":Z
    goto :goto_c

    .line 7316
    :cond_36
    sget-boolean v4, Landroid/text/TextUtils;->DEBUG_LOG:Z

    if-eqz v4, :cond_37

    .line 7317
    const-string/jumbo v4, "TextView"

    const-string/jumbo v9, "[onMeasure] makeNewLayout start 2"

    invoke-static {v4, v9}, Landroid/text/TextUtils;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 7320
    :cond_37
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v4

    sub-int v4, v28, v4

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v9

    sub-int v9, v4, v9

    const/4 v10, 0x0

    move-object/from16 v4, p0

    .line 7319
    invoke-virtual/range {v4 .. v10}, Landroid/widget/TextView;->makeNewLayout(IILandroid/text/BoringLayout$Metrics;Landroid/text/BoringLayout$Metrics;IZ)V

    .line 7321
    sget-boolean v4, Landroid/text/TextUtils;->DEBUG_LOG:Z

    if-eqz v4, :cond_7

    .line 7322
    const-string/jumbo v4, "TextView"

    const-string/jumbo v9, "[onMeasure] makeNewLayout end 2"

    invoke-static {v4, v9}, Landroid/text/TextUtils;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 7338
    .end local v24    # "layoutChanged":Z
    .end local v25    # "maximumChanged":Z
    .end local v29    # "widthChanged":Z
    :cond_38
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->getDesiredHeight()I

    move-result v14

    .line 7339
    .local v14, "desired":I
    sget-boolean v4, Landroid/text/TextUtils;->DEBUG_LOG:Z

    if-eqz v4, :cond_39

    .line 7340
    const-string/jumbo v4, "TextView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "[onMeasure] check 13 - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/text/TextUtils;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 7342
    :cond_39
    move/from16 v19, v14

    .line 7343
    .restart local v19    # "height":I
    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/TextView;->mDesiredHeightAtMeasure:I

    .line 7345
    const/high16 v4, -0x80000000

    move/from16 v0, v20

    if-ne v0, v4, :cond_9

    .line 7346
    sget-boolean v4, Landroid/text/TextUtils;->DEBUG_LOG:Z

    if-eqz v4, :cond_3a

    .line 7347
    const-string/jumbo v4, "TextView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "[onMeasure] "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, v21

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/text/TextUtils;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 7349
    :cond_3a
    move/from16 v0, v21

    invoke-static {v14, v0}, Ljava/lang/Math;->min(II)I

    move-result v19

    goto/16 :goto_3

    .line 7366
    .end local v14    # "desired":I
    .restart local v26    # "unpaddedHeight":I
    :cond_3b
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v4}, Landroid/text/Layout;->getHeight()I

    move-result v4

    move/from16 v0, v26

    if-gt v4, v0, :cond_c

    .line 7369
    const/4 v4, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v9}, Landroid/widget/TextView;->scrollTo(II)V

    goto/16 :goto_4
.end method

.method public onPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 9305
    invoke-super {p0, p1}, Landroid/view/View;->onPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 9307
    invoke-virtual {p0}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    move-result v0

    .line 9308
    .local v0, "isPassword":Z
    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/widget/TextView;->shouldSpeakPasswordsForAccessibility()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 9309
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextForAccessibility()Ljava/lang/CharSequence;

    move-result-object v1

    .line 9310
    .local v1, "text":Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 9311
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9304
    .end local v1    # "text":Ljava/lang/CharSequence;
    :cond_1
    return-void
.end method

.method public onPreDraw()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 5365
    iget-object v1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-nez v1, :cond_0

    .line 5366
    invoke-direct {p0}, Landroid/widget/TextView;->assumeLayout()V

    .line 5369
    :cond_0
    iget-object v1, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v1, :cond_7

    .line 5374
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .line 5376
    .local v0, "curs":I
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v1, v1, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    if-eqz v1, :cond_1

    .line 5377
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v1, v1, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    invoke-virtual {v1}, Landroid/widget/Editor$SelectionModifierCursorController;->isSelectionStartDragged()Z

    move-result v1

    .line 5376
    if-eqz v1, :cond_1

    .line 5378
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    .line 5383
    :cond_1
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v1, v1, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    if-eqz v1, :cond_2

    .line 5384
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v1, v1, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    invoke-virtual {v1}, Landroid/widget/Editor$SelectionModifierCursorController;->isSectionTopDragged()Z

    move-result v1

    .line 5383
    if-eqz v1, :cond_2

    .line 5385
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    .line 5393
    :cond_2
    if-gez v0, :cond_3

    iget v1, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v1, v1, 0x70

    const/16 v2, 0x50

    if-ne v1, v2, :cond_3

    .line 5394
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 5397
    :cond_3
    if-ltz v0, :cond_4

    .line 5398
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->bringPointIntoView(I)Z

    .line 5407
    .end local v0    # "curs":I
    :cond_4
    :goto_0
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-boolean v1, v1, Landroid/widget/Editor;->mCreatedWithASelection:Z

    if-eqz v1, :cond_5

    .line 5408
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->extractedTextModeWillBeStarted()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 5409
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->checkFieldAndSelectCurrentWord()Z

    .line 5413
    :goto_1
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iput-boolean v3, v1, Landroid/widget/Editor;->mCreatedWithASelection:Z

    .line 5419
    :cond_5
    invoke-virtual {p0}, Landroid/widget/TextView;->isInExtractedMode()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Landroid/widget/TextView;->hasSelection()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v1, :cond_6

    .line 5420
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v1, v1, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    if-nez v1, :cond_6

    invoke-virtual {p0}, Landroid/widget/TextView;->isShown()Z

    move-result v1

    .line 5419
    if-eqz v1, :cond_6

    .line 5420
    invoke-virtual {p0}, Landroid/widget/TextView;->hasWindowFocus()Z

    move-result v1

    .line 5419
    if-eqz v1, :cond_6

    .line 5421
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->startSelectionActionMode()Z

    .line 5424
    :cond_6
    invoke-direct {p0}, Landroid/widget/TextView;->unregisterForPreDraw()V

    .line 5426
    const/4 v1, 0x1

    return v1

    .line 5401
    :cond_7
    invoke-direct {p0}, Landroid/widget/TextView;->bringTextIntoView()Z

    goto :goto_0

    .line 5411
    :cond_8
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->startSelectionActionMode()Z

    goto :goto_1
.end method

.method public onPrivateIMECommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 1
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 6734
    const/4 v0, 0x0

    return v0
.end method

.method public onProvideStructure(Landroid/view/ViewStructure;)V
    .locals 32
    .param p1, "structure"    # Landroid/view/ViewStructure;

    .prologue
    .line 9333
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onProvideStructure(Landroid/view/ViewStructure;)V

    .line 9334
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    move-result v29

    if-nez v29, :cond_7

    .line 9335
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getInputType()I

    move-result v29

    invoke-static/range {v29 .. v29}, Landroid/widget/TextView;->isPasswordInputType(I)Z

    move-result v12

    .line 9336
    :goto_0
    if-nez v12, :cond_6

    .line 9337
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v29, v0

    if-nez v29, :cond_0

    .line 9338
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->assumeLayout()V

    .line 9340
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 9341
    .local v13, "layout":Landroid/text/Layout;
    invoke-virtual {v13}, Landroid/text/Layout;->getLineCount()I

    move-result v15

    .line 9342
    .local v15, "lineCount":I
    const/16 v29, 0x1

    move/from16 v0, v29

    if-gt v15, v0, :cond_8

    .line 9344
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v29

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v30

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v31

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    move/from16 v2, v30

    move/from16 v3, v31

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewStructure;->setText(Ljava/lang/CharSequence;II)V

    .line 9412
    :goto_1
    const/16 v21, 0x0

    .line 9413
    .local v21, "style":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getTypefaceStyle()I

    move-result v26

    .line 9414
    .local v26, "typefaceStyle":I
    and-int/lit8 v29, v26, 0x1

    if-eqz v29, :cond_1

    .line 9415
    const/16 v21, 0x1

    .line 9417
    :cond_1
    and-int/lit8 v29, v26, 0x2

    if-eqz v29, :cond_2

    .line 9418
    or-int/lit8 v21, v21, 0x2

    .line 9422
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/text/TextPaint;->getFlags()I

    move-result v17

    .line 9423
    .local v17, "paintFlags":I
    and-int/lit8 v29, v17, 0x20

    if-eqz v29, :cond_3

    .line 9424
    or-int/lit8 v21, v21, 0x1

    .line 9426
    :cond_3
    and-int/lit8 v29, v17, 0x8

    if-eqz v29, :cond_4

    .line 9427
    or-int/lit8 v21, v21, 0x4

    .line 9429
    :cond_4
    and-int/lit8 v29, v17, 0x10

    if-eqz v29, :cond_5

    .line 9430
    or-int/lit8 v21, v21, 0x8

    .line 9435
    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getTextSize()F

    move-result v29

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v30

    .line 9436
    const/16 v31, 0x1

    .line 9435
    move-object/from16 v0, p1

    move/from16 v1, v29

    move/from16 v2, v30

    move/from16 v3, v31

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/ViewStructure;->setTextStyle(FIII)V

    .line 9438
    .end local v13    # "layout":Landroid/text/Layout;
    .end local v15    # "lineCount":I
    .end local v17    # "paintFlags":I
    .end local v21    # "style":I
    .end local v26    # "typefaceStyle":I
    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getHint()Ljava/lang/CharSequence;

    move-result-object v29

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/ViewStructure;->setHint(Ljava/lang/CharSequence;)V

    .line 9332
    return-void

    .line 9334
    :cond_7
    const/4 v12, 0x1

    .local v12, "isPassword":Z
    goto/16 :goto_0

    .line 9348
    .end local v12    # "isPassword":Z
    .restart local v13    # "layout":Landroid/text/Layout;
    .restart local v15    # "lineCount":I
    :cond_8
    const/16 v29, 0x2

    move/from16 v0, v29

    new-array v0, v0, [I

    move-object/from16 v23, v0

    .line 9349
    .local v23, "tmpCords":[I
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->getLocationInWindow([I)V

    .line 9350
    const/16 v29, 0x1

    aget v25, v23, v29

    .line 9351
    .local v25, "topWindowLocation":I
    move-object/from16 v18, p0

    .line 9352
    .local v18, "root":Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v27

    .line 9353
    .local v27, "viewParent":Landroid/view/ViewParent;
    :goto_2
    move-object/from16 v0, v27

    instance-of v0, v0, Landroid/view/View;

    move/from16 v29, v0

    if-eqz v29, :cond_9

    move-object/from16 v18, v27

    .line 9354
    check-cast v18, Landroid/view/View;

    .line 9355
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v27

    goto :goto_2

    .line 9357
    :cond_9
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getHeight()I

    move-result v28

    .line 9360
    .local v28, "windowHeight":I
    if-ltz v25, :cond_10

    .line 9362
    const/16 v29, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->getLineAtCoordinateUnclamped(F)I

    move-result v24

    .line 9363
    .local v24, "topLine":I
    add-int/lit8 v29, v28, -0x1

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->getLineAtCoordinateUnclamped(F)I

    move-result v6

    .line 9372
    .local v6, "bottomLine":I
    :goto_3
    sub-int v29, v6, v24

    div-int/lit8 v29, v29, 0x2

    sub-int v10, v24, v29

    .line 9373
    .local v10, "expandedTopLine":I
    if-gez v10, :cond_a

    .line 9374
    const/4 v10, 0x0

    .line 9376
    :cond_a
    sub-int v29, v6, v24

    div-int/lit8 v29, v29, 0x2

    add-int v8, v6, v29

    .line 9377
    .local v8, "expandedBottomLine":I
    if-lt v8, v15, :cond_b

    .line 9378
    add-int/lit8 v8, v15, -0x1

    .line 9381
    :cond_b
    invoke-virtual {v13, v10}, Landroid/text/Layout;->getLineStart(I)I

    move-result v9

    .line 9382
    .local v9, "expandedTopChar":I
    invoke-virtual {v13, v8}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v7

    .line 9385
    .local v7, "expandedBottomChar":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v20

    .line 9386
    .local v20, "selStart":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v19

    .line 9387
    .local v19, "selEnd":I
    move/from16 v0, v20

    move/from16 v1, v19

    if-ge v0, v1, :cond_d

    .line 9388
    move/from16 v0, v20

    if-ge v0, v9, :cond_c

    .line 9389
    move/from16 v9, v20

    .line 9391
    :cond_c
    move/from16 v0, v19

    if-le v0, v7, :cond_d

    .line 9392
    move/from16 v7, v19

    .line 9396
    :cond_d
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v22

    .line 9397
    .local v22, "text":Ljava/lang/CharSequence;
    if-gtz v9, :cond_e

    invoke-interface/range {v22 .. v22}, Ljava/lang/CharSequence;->length()I

    move-result v29

    move/from16 v0, v29

    if-ge v7, v0, :cond_f

    .line 9398
    :cond_e
    move-object/from16 v0, v22

    invoke-interface {v0, v9, v7}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v22

    .line 9400
    :cond_f
    sub-int v29, v20, v9

    sub-int v30, v19, v9

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move/from16 v2, v29

    move/from16 v3, v30

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewStructure;->setText(Ljava/lang/CharSequence;II)V

    .line 9401
    sub-int v29, v6, v24

    add-int/lit8 v29, v29, 0x1

    move/from16 v0, v29

    new-array v0, v0, [I

    move-object/from16 v16, v0

    .line 9402
    .local v16, "lineOffsets":[I
    sub-int v29, v6, v24

    add-int/lit8 v29, v29, 0x1

    move/from16 v0, v29

    new-array v14, v0, [I

    .line 9403
    .local v14, "lineBaselines":[I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getBaselineOffset()I

    move-result v5

    .line 9404
    .local v5, "baselineOffset":I
    move/from16 v11, v24

    .local v11, "i":I
    :goto_4
    if-gt v11, v6, :cond_11

    .line 9405
    sub-int v29, v11, v24

    invoke-virtual {v13, v11}, Landroid/text/Layout;->getLineStart(I)I

    move-result v30

    aput v30, v16, v29

    .line 9406
    sub-int v29, v11, v24

    invoke-virtual {v13, v11}, Landroid/text/Layout;->getLineBaseline(I)I

    move-result v30

    add-int v30, v30, v5

    aput v30, v14, v29

    .line 9404
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 9367
    .end local v5    # "baselineOffset":I
    .end local v6    # "bottomLine":I
    .end local v7    # "expandedBottomChar":I
    .end local v8    # "expandedBottomLine":I
    .end local v9    # "expandedTopChar":I
    .end local v10    # "expandedTopLine":I
    .end local v11    # "i":I
    .end local v14    # "lineBaselines":[I
    .end local v16    # "lineOffsets":[I
    .end local v19    # "selEnd":I
    .end local v20    # "selStart":I
    .end local v22    # "text":Ljava/lang/CharSequence;
    .end local v24    # "topLine":I
    :cond_10
    move/from16 v0, v25

    neg-int v0, v0

    move/from16 v29, v0

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->getLineAtCoordinateUnclamped(F)I

    move-result v24

    .line 9368
    .restart local v24    # "topLine":I
    add-int/lit8 v29, v28, -0x1

    sub-int v29, v29, v25

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->getLineAtCoordinateUnclamped(F)I

    move-result v6

    .restart local v6    # "bottomLine":I
    goto/16 :goto_3

    .line 9408
    .restart local v5    # "baselineOffset":I
    .restart local v7    # "expandedBottomChar":I
    .restart local v8    # "expandedBottomLine":I
    .restart local v9    # "expandedTopChar":I
    .restart local v10    # "expandedTopLine":I
    .restart local v11    # "i":I
    .restart local v14    # "lineBaselines":[I
    .restart local v16    # "lineOffsets":[I
    .restart local v19    # "selEnd":I
    .restart local v20    # "selStart":I
    .restart local v22    # "text":Ljava/lang/CharSequence;
    :cond_11
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v14}, Landroid/view/ViewStructure;->setTextLines([I[I)V

    goto/16 :goto_1
.end method

.method public onResolveDrawables(I)V
    .locals 1
    .param p1, "layoutDirection"    # I

    .prologue
    .line 10195
    iget v0, p0, Landroid/widget/TextView;->mLastLayoutDirection:I

    if-ne v0, p1, :cond_0

    .line 10196
    return-void

    .line 10198
    :cond_0
    iput p1, p0, Landroid/widget/TextView;->mLastLayoutDirection:I

    .line 10201
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-eqz v0, :cond_1

    .line 10202
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    invoke-virtual {v0, p1}, Landroid/widget/TextView$Drawables;->resolveWithLayoutDirection(I)V

    .line 10193
    :cond_1
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 7
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 4166
    instance-of v4, p1, Landroid/widget/TextView$SavedState;

    if-nez v4, :cond_0

    .line 4167
    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 4168
    return-void

    :cond_0
    move-object v3, p1

    .line 4171
    check-cast v3, Landroid/widget/TextView$SavedState;

    .line 4172
    .local v3, "ss":Landroid/widget/TextView$SavedState;
    invoke-virtual {v3}, Landroid/widget/TextView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v4

    invoke-super {p0, v4}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 4175
    iget-object v4, v3, Landroid/widget/TextView$SavedState;->text:Ljava/lang/CharSequence;

    if-eqz v4, :cond_1

    .line 4176
    iget-object v4, v3, Landroid/widget/TextView$SavedState;->text:Ljava/lang/CharSequence;

    invoke-virtual {p0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4179
    :cond_1
    iget v4, v3, Landroid/widget/TextView$SavedState;->selStart:I

    if-ltz v4, :cond_4

    iget v4, v3, Landroid/widget/TextView$SavedState;->selEnd:I

    if-ltz v4, :cond_4

    .line 4180
    iget-object v4, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v4, v4, Landroid/text/Spannable;

    if-eqz v4, :cond_4

    .line 4181
    iget-object v4, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 4183
    .local v1, "len":I
    iget v4, v3, Landroid/widget/TextView$SavedState;->selStart:I

    if-gt v4, v1, :cond_2

    iget v4, v3, Landroid/widget/TextView$SavedState;->selEnd:I

    if-le v4, v1, :cond_7

    .line 4184
    :cond_2
    const-string/jumbo v2, ""

    .line 4186
    .local v2, "restored":Ljava/lang/String;
    iget-object v4, v3, Landroid/widget/TextView$SavedState;->text:Ljava/lang/CharSequence;

    if-eqz v4, :cond_3

    .line 4187
    const-string/jumbo v2, "(restored) "

    .line 4190
    :cond_3
    const-string/jumbo v4, "TextView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Saved cursor position "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Landroid/widget/TextView$SavedState;->selStart:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 4191
    const-string/jumbo v6, "/"

    .line 4190
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 4191
    iget v6, v3, Landroid/widget/TextView$SavedState;->selEnd:I

    .line 4190
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 4191
    const-string/jumbo v6, " out of range for "

    .line 4190
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 4192
    const-string/jumbo v6, "text "

    .line 4190
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 4192
    iget-object v6, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .line 4190
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4204
    .end local v1    # "len":I
    .end local v2    # "restored":Ljava/lang/String;
    :cond_4
    :goto_0
    iget-object v4, v3, Landroid/widget/TextView$SavedState;->error:Ljava/lang/CharSequence;

    if-eqz v4, :cond_5

    .line 4205
    iget-object v0, v3, Landroid/widget/TextView$SavedState;->error:Ljava/lang/CharSequence;

    .line 4207
    .local v0, "error":Ljava/lang/CharSequence;
    new-instance v4, Landroid/widget/TextView$1;

    invoke-direct {v4, p0, v0}, Landroid/widget/TextView$1;-><init>(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v4}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    .line 4216
    .end local v0    # "error":Ljava/lang/CharSequence;
    :cond_5
    iget-object v4, v3, Landroid/widget/TextView$SavedState;->editorState:Landroid/os/ParcelableParcel;

    if-eqz v4, :cond_6

    .line 4217
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 4218
    iget-object v4, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v5, v3, Landroid/widget/TextView$SavedState;->editorState:Landroid/os/ParcelableParcel;

    invoke-virtual {v4, v5}, Landroid/widget/Editor;->restoreInstanceState(Landroid/os/ParcelableParcel;)V

    .line 4165
    :cond_6
    return-void

    .line 4194
    .restart local v1    # "len":I
    :cond_7
    iget-object v4, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v4, Landroid/text/Spannable;

    iget v5, v3, Landroid/widget/TextView$SavedState;->selStart:I

    iget v6, v3, Landroid/widget/TextView$SavedState;->selEnd:I

    invoke-static {v4, v5, v6}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 4196
    iget-boolean v4, v3, Landroid/widget/TextView$SavedState;->frozenWithFocus:Z

    if-eqz v4, :cond_4

    .line 4197
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 4198
    iget-object v4, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroid/widget/Editor;->mFrozenWithFocus:Z

    goto :goto_0
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 2
    .param p1, "layoutDirection"    # I

    .prologue
    .line 10148
    invoke-super {p0, p1}, Landroid/view/View;->onRtlPropertiesChanged(I)V

    .line 10150
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextDirectionHeuristic()Landroid/text/TextDirectionHeuristic;

    move-result-object v0

    .line 10151
    .local v0, "newTextDir":Landroid/text/TextDirectionHeuristic;
    iget-object v1, p0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    if-eq v1, v0, :cond_0

    .line 10152
    iput-object v0, p0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    .line 10153
    iget-object v1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v1, :cond_0

    .line 10154
    invoke-direct {p0}, Landroid/widget/TextView;->checkForRelayout()V

    .line 10147
    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 7

    .prologue
    .line 4102
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v5

    .line 4105
    .local v5, "superState":Landroid/os/Parcelable;
    iget-boolean v1, p0, Landroid/widget/TextView;->mFreezesText:Z

    .line 4106
    .local v1, "save":Z
    const/4 v4, 0x0

    .line 4107
    .local v4, "start":I
    const/4 v0, 0x0

    .line 4109
    .local v0, "end":I
    iget-object v6, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    if-eqz v6, :cond_1

    .line 4110
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v4

    .line 4111
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .line 4112
    if-gez v4, :cond_0

    if-ltz v0, :cond_1

    .line 4114
    :cond_0
    const/4 v1, 0x1

    .line 4118
    .end local v1    # "save":Z
    :cond_1
    if-eqz v1, :cond_6

    .line 4119
    new-instance v3, Landroid/widget/TextView$SavedState;

    invoke-direct {v3, v5}, Landroid/widget/TextView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 4121
    .local v3, "ss":Landroid/widget/TextView$SavedState;
    iput v4, v3, Landroid/widget/TextView$SavedState;->selStart:I

    .line 4122
    iput v0, v3, Landroid/widget/TextView$SavedState;->selEnd:I

    .line 4124
    iget-object v6, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v6, v6, Landroid/text/Spanned;

    if-eqz v6, :cond_5

    .line 4125
    new-instance v2, Landroid/text/SpannableStringBuilder;

    iget-object v6, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-direct {v2, v6}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 4127
    .local v2, "sp":Landroid/text/Spannable;
    iget-object v6, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v6, :cond_2

    .line 4128
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->removeMisspelledSpans(Landroid/text/Spannable;)V

    .line 4129
    iget-object v6, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v6, v6, Landroid/widget/Editor;->mSuggestionRangeSpan:Landroid/text/style/SuggestionRangeSpan;

    invoke-interface {v2, v6}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 4132
    :cond_2
    iput-object v2, v3, Landroid/widget/TextView$SavedState;->text:Ljava/lang/CharSequence;

    .line 4137
    .end local v2    # "sp":Landroid/text/Spannable;
    :goto_0
    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v6

    if-eqz v6, :cond_3

    if-ltz v4, :cond_3

    if-ltz v0, :cond_3

    .line 4138
    const/4 v6, 0x1

    iput-boolean v6, v3, Landroid/widget/TextView$SavedState;->frozenWithFocus:Z

    .line 4141
    :cond_3
    invoke-virtual {p0}, Landroid/widget/TextView;->getError()Ljava/lang/CharSequence;

    move-result-object v6

    iput-object v6, v3, Landroid/widget/TextView$SavedState;->error:Ljava/lang/CharSequence;

    .line 4143
    iget-object v6, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v6, :cond_4

    .line 4144
    iget-object v6, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v6}, Landroid/widget/Editor;->saveInstanceState()Landroid/os/ParcelableParcel;

    move-result-object v6

    iput-object v6, v3, Landroid/widget/TextView$SavedState;->editorState:Landroid/os/ParcelableParcel;

    .line 4146
    :cond_4
    return-object v3

    .line 4134
    :cond_5
    iget-object v6, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Landroid/widget/TextView$SavedState;->text:Ljava/lang/CharSequence;

    goto :goto_0

    .line 4149
    .end local v3    # "ss":Landroid/widget/TextView$SavedState;
    :cond_6
    return-object v5
.end method

.method public onScreenStateChanged(I)V
    .locals 1
    .param p1, "screenState"    # I

    .prologue
    .line 5460
    invoke-super {p0, p1}, Landroid/view/View;->onScreenStateChanged(I)V

    .line 5461
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0, p1}, Landroid/widget/Editor;->onScreenStateChanged(I)V

    .line 5459
    :cond_0
    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 1
    .param p1, "horiz"    # I
    .param p2, "vert"    # I
    .param p3, "oldHoriz"    # I
    .param p4, "oldVert"    # I

    .prologue
    .line 9804
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onScrollChanged(IIII)V

    .line 9805
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    .line 9806
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->onScrollChanged()V

    .line 9803
    :cond_0
    return-void
.end method

.method protected onSelectionChanged(II)V
    .locals 1
    .param p1, "selStart"    # I
    .param p2, "selEnd"    # I

    .prologue
    .line 8403
    const/16 v0, 0x2000

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->sendAccessibilityEvent(I)V

    .line 8402
    return-void
.end method

.method public onStartTemporaryDetach()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 8690
    invoke-super {p0}, Landroid/view/View;->onStartTemporaryDetach()V

    .line 8693
    iget-boolean v0, p0, Landroid/widget/TextView;->mDispatchTemporaryDetach:Z

    if-nez v0, :cond_0

    iput-boolean v1, p0, Landroid/widget/TextView;->mTemporaryDetach:Z

    .line 8697
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iput-boolean v1, v0, Landroid/widget/Editor;->mTemporaryDetach:Z

    .line 8689
    :cond_1
    return-void
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "lengthBefore"    # I
    .param p4, "lengthAfter"    # I

    .prologue
    .line 8391
    return-void
.end method

.method public onTextContextMenuItem(I)Z
    .locals 9
    .param p1, "id"    # I

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 9700
    const/4 v1, 0x0

    .line 9701
    .local v1, "min":I
    iget-object v5, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 9704
    .local v0, "max":I
    iget-object v5, p0, Landroid/widget/TextView;->mLeTextInfo:Lcom/letv/leui/text/LeTextOpt$LeTextInfo;

    iget-object v5, v5, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->mCJKFontFamily:Ljava/lang/String;

    if-nez v5, :cond_0

    iget-object v5, p0, Landroid/widget/TextView;->mLeTextInfo:Lcom/letv/leui/text/LeTextOpt$LeTextInfo;

    iget v5, v5, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->mCJKFontTextSize:I

    if-lez v5, :cond_1

    .line 9705
    :cond_0
    iget-object v5, p0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    invoke-static {v5}, Lcom/letv/leui/util/LeTextUtils;->removeLeTypefaceSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 9708
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 9709
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v3

    .line 9710
    .local v3, "selStart":I
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v2

    .line 9712
    .local v2, "selEnd":I
    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v8, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 9713
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v8, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 9716
    .end local v2    # "selEnd":I
    .end local v3    # "selStart":I
    :cond_2
    sparse-switch p1, :sswitch_data_0

    .line 9771
    return v8

    .line 9722
    :sswitch_0
    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v5, :cond_4

    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v5, v5, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    if-eqz v5, :cond_4

    const/4 v4, 0x1

    .line 9723
    .local v4, "shouldRestartActionMode":Z
    :goto_0
    invoke-virtual {p0}, Landroid/widget/TextView;->stopTextActionMode()V

    .line 9724
    invoke-virtual {p0}, Landroid/widget/TextView;->selectAllText()Z

    .line 9725
    if-eqz v4, :cond_3

    .line 9726
    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v5}, Landroid/widget/Editor;->startSelectionActionMode()Z

    .line 9728
    :cond_3
    return v6

    .line 9722
    .end local v4    # "shouldRestartActionMode":Z
    :cond_4
    const/4 v4, 0x0

    .restart local v4    # "shouldRestartActionMode":Z
    goto :goto_0

    .line 9731
    .end local v4    # "shouldRestartActionMode":Z
    :sswitch_1
    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v5, :cond_5

    .line 9732
    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v5}, Landroid/widget/Editor;->undo()V

    .line 9734
    :cond_5
    return v6

    .line 9737
    :sswitch_2
    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v5, :cond_6

    .line 9738
    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v5}, Landroid/widget/Editor;->redo()V

    .line 9740
    :cond_6
    return v6

    .line 9743
    :sswitch_3
    invoke-direct {p0, v1, v0, v6}, Landroid/widget/TextView;->paste(IIZ)V

    .line 9744
    return v6

    .line 9747
    :sswitch_4
    invoke-direct {p0, v1, v0, v8}, Landroid/widget/TextView;->paste(IIZ)V

    .line 9748
    return v6

    .line 9751
    :sswitch_5
    invoke-virtual {p0, v1, v0}, Landroid/widget/TextView;->getTransformedText(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v5

    invoke-direct {p0, v5}, Landroid/widget/TextView;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 9752
    invoke-virtual {p0, v1, v0}, Landroid/widget/TextView;->deleteText_internal(II)V

    .line 9753
    invoke-virtual {p0}, Landroid/widget/TextView;->stopTextActionMode()V

    .line 9754
    return v6

    .line 9757
    :sswitch_6
    invoke-virtual {p0, v1, v0}, Landroid/widget/TextView;->getTransformedText(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v5

    invoke-direct {p0, v5}, Landroid/widget/TextView;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 9758
    invoke-virtual {p0}, Landroid/widget/TextView;->stopTextActionMode()V

    .line 9759
    return v6

    .line 9762
    :sswitch_7
    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v5, :cond_7

    .line 9763
    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v5}, Landroid/widget/Editor;->replace()V

    .line 9765
    :cond_7
    return v6

    .line 9768
    :sswitch_8
    invoke-direct {p0}, Landroid/widget/TextView;->shareSelectedText()V

    .line 9769
    return v6

    .line 9716
    nop

    :sswitch_data_0
    .sparse-switch
        0x102001f -> :sswitch_0
        0x1020020 -> :sswitch_5
        0x1020021 -> :sswitch_6
        0x1020022 -> :sswitch_3
        0x1020031 -> :sswitch_4
        0x1020032 -> :sswitch_1
        0x1020033 -> :sswitch_2
        0x1020034 -> :sswitch_7
        0x1020035 -> :sswitch_8
    .end sparse-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 8786
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 8789
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v10

    if-nez v10, :cond_0

    .line 8790
    iget-object v10, p0, Landroid/widget/TextView;->mLeTextInfo:Lcom/letv/leui/text/LeTextOpt$LeTextInfo;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    iput v11, v10, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->mLastDownPositionX:F

    .line 8791
    iget-object v10, p0, Landroid/widget/TextView;->mLeTextInfo:Lcom/letv/leui/text/LeTextOpt$LeTextInfo;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    iput v11, v10, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->mLastDownPositionY:F

    .line 8795
    :cond_0
    iget-object v10, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v10, :cond_1

    if-nez v0, :cond_1

    .line 8797
    iget-boolean v10, p0, Landroid/widget/TextView;->mFirstTouch:Z

    if-eqz v10, :cond_3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    iget-wide v12, p0, Landroid/widget/TextView;->mLastTouchUpTime:J

    sub-long/2addr v10, v12

    .line 8798
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v12

    int-to-long v12, v12

    .line 8797
    cmp-long v10, v10, v12

    if-gtz v10, :cond_3

    .line 8799
    iget-object v10, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    const/4 v11, 0x1

    iput-boolean v11, v10, Landroid/widget/Editor;->mDoubleTap:Z

    .line 8800
    const/4 v10, 0x0

    iput-boolean v10, p0, Landroid/widget/TextView;->mFirstTouch:Z

    .line 8807
    :cond_1
    :goto_0
    const/4 v10, 0x1

    if-ne v0, v10, :cond_2

    .line 8808
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    iput-wide v10, p0, Landroid/widget/TextView;->mLastTouchUpTime:J

    .line 8811
    :cond_2
    iget-object v10, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v10, :cond_4

    .line 8812
    iget-object v10, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v10, p1}, Landroid/widget/Editor;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 8814
    iget-object v10, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v10, v10, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    if-eqz v10, :cond_4

    .line 8815
    iget-object v10, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v10, v10, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    invoke-virtual {v10}, Landroid/widget/Editor$SelectionModifierCursorController;->isDragAcceleratorActive()Z

    move-result v10

    .line 8814
    if-eqz v10, :cond_4

    .line 8816
    const/4 v10, 0x1

    return v10

    .line 8802
    :cond_3
    iget-object v10, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    const/4 v11, 0x0

    iput-boolean v11, v10, Landroid/widget/Editor;->mDoubleTap:Z

    .line 8803
    const/4 v10, 0x1

    iput-boolean v10, p0, Landroid/widget/TextView;->mFirstTouch:Z

    goto :goto_0

    .line 8820
    :cond_4
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    .line 8827
    .local v7, "superResult":Z
    iget-object v10, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v10, :cond_6

    iget-object v10, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-boolean v10, v10, Landroid/widget/Editor;->mDiscardNextActionUp:Z

    if-eqz v10, :cond_6

    const/4 v10, 0x1

    if-ne v0, v10, :cond_6

    .line 8828
    iget-object v10, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    const/4 v11, 0x0

    iput-boolean v11, v10, Landroid/widget/Editor;->mDiscardNextActionUp:Z

    .line 8830
    iget-object v10, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-boolean v10, v10, Landroid/widget/Editor;->mIsInsertionActionModeStartPending:Z

    if-eqz v10, :cond_5

    .line 8831
    iget-object v10, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v10}, Landroid/widget/Editor;->startInsertionActionMode()V

    .line 8832
    iget-object v10, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    const/4 v11, 0x0

    iput-boolean v11, v10, Landroid/widget/Editor;->mIsInsertionActionModeStartPending:Z

    .line 8834
    :cond_5
    return v7

    .line 8843
    :cond_6
    iget-object v10, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-nez v10, :cond_7

    iget-boolean v10, p0, Landroid/widget/TextView;->mTextViewDiscardNextActionUp:Z

    if-eqz v10, :cond_7

    const/4 v10, 0x1

    if-ne v0, v10, :cond_7

    .line 8844
    const/4 v10, 0x0

    iput-boolean v10, p0, Landroid/widget/TextView;->mTextViewDiscardNextActionUp:Z

    .line 8845
    return v7

    .line 8848
    :cond_7
    const/4 v10, 0x1

    if-ne v0, v10, :cond_8

    .line 8849
    iget-object v10, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v10, :cond_10

    iget-object v10, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-boolean v10, v10, Landroid/widget/Editor;->mIgnoreActionUpEvent:Z

    if-eqz v10, :cond_10

    .line 8848
    :cond_8
    const/4 v9, 0x0

    .line 8851
    :goto_1
    iget-object v10, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-nez v10, :cond_9

    invoke-virtual {p0}, Landroid/widget/TextView;->onCheckIsTextEditor()Z

    move-result v10

    if-eqz v10, :cond_13

    :cond_9
    invoke-virtual {p0}, Landroid/widget/TextView;->isEnabled()Z

    move-result v10

    if-eqz v10, :cond_13

    .line 8852
    iget-object v10, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v10, v10, Landroid/text/Spannable;

    .line 8851
    if-eqz v10, :cond_13

    .line 8852
    iget-object v10, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v10, :cond_13

    .line 8853
    const/4 v1, 0x0

    .line 8855
    .local v1, "handled":Z
    iget-object v10, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v10, :cond_b

    .line 8858
    const/4 v3, 0x0

    .line 8859
    .local v3, "isIgnoreMovementDetected":Z
    const/4 v10, 0x2

    if-ne v0, v10, :cond_a

    iget-object v10, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v10, :cond_a

    .line 8860
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v6

    .line 8861
    .local v6, "selectionStart":I
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v5

    .line 8862
    .local v5, "selectionEnd":I
    invoke-direct {p0}, Landroid/widget/TextView;->isShowingHint()Z

    move-result v10

    if-eqz v10, :cond_a

    iget-object v10, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    if-eqz v10, :cond_a

    .line 8863
    if-ne v6, v5, :cond_a

    if-nez v5, :cond_a

    .line 8864
    const/4 v3, 0x1

    .line 8867
    .end local v5    # "selectionEnd":I
    .end local v6    # "selectionStart":I
    :cond_a
    if-nez v3, :cond_b

    .line 8868
    iget-object v11, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    iget-object v10, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v10, Landroid/text/Spannable;

    invoke-interface {v11, p0, v10, p1}, Landroid/text/method/MovementMethod;->onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z

    move-result v1

    .line 8874
    .end local v1    # "handled":Z
    .end local v3    # "isIgnoreMovementDetected":Z
    :cond_b
    invoke-virtual {p0}, Landroid/widget/TextView;->isTextSelectable()Z

    move-result v8

    .line 8875
    .local v8, "textIsSelectable":Z
    if-eqz v9, :cond_c

    iget-boolean v10, p0, Landroid/widget/TextView;->mLinksClickable:Z

    if-eqz v10, :cond_c

    iget v10, p0, Landroid/widget/TextView;->mAutoLinkMask:I

    if-eqz v10, :cond_c

    if-eqz v8, :cond_c

    .line 8877
    invoke-virtual {p0}, Landroid/widget/TextView;->isInSelectionMode()Z

    move-result v10

    if-eqz v10, :cond_11

    .line 8892
    :cond_c
    :goto_2
    if-eqz v9, :cond_f

    invoke-virtual {p0}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v10

    if-nez v10, :cond_d

    if-eqz v8, :cond_f

    .line 8894
    :cond_d
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v2

    .line 8895
    .local v2, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->viewClicked(Landroid/view/inputmethod/InputMethodManager;)V

    .line 8896
    if-nez v8, :cond_e

    iget-object v10, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-boolean v10, v10, Landroid/widget/Editor;->mShowSoftInputOnFocus:Z

    if-eqz v10, :cond_e

    .line 8897
    if-eqz v2, :cond_12

    const/4 v10, 0x0

    invoke-virtual {v2, p0, v10}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    move-result v10

    :goto_3
    or-int/2addr v1, v10

    .line 8901
    :cond_e
    iget-object v10, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v10, p1}, Landroid/widget/Editor;->onTouchUpEvent(Landroid/view/MotionEvent;)V

    .line 8903
    const/4 v1, 0x1

    .line 8906
    .end local v2    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_f
    if-eqz v1, :cond_13

    .line 8907
    const/4 v10, 0x1

    return v10

    .line 8849
    .end local v8    # "textIsSelectable":Z
    :cond_10
    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v9

    .local v9, "touchIsFinished":Z
    goto/16 :goto_1

    .line 8883
    .end local v9    # "touchIsFinished":Z
    .restart local v8    # "textIsSelectable":Z
    :cond_11
    iget-object v10, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v10, Landroid/text/Spannable;

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v11

    .line 8884
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v12

    const-class v13, Landroid/text/style/ClickableSpan;

    .line 8883
    invoke-interface {v10, v11, v12, v13}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/text/style/ClickableSpan;

    .line 8886
    .local v4, "links":[Landroid/text/style/ClickableSpan;
    array-length v10, v4

    if-lez v10, :cond_c

    .line 8887
    const/4 v10, 0x0

    aget-object v10, v4, v10

    invoke-virtual {v10, p0}, Landroid/text/style/ClickableSpan;->onClick(Landroid/view/View;)V

    .line 8888
    const/4 v1, 0x1

    .restart local v1    # "handled":Z
    goto :goto_2

    .line 8897
    .end local v1    # "handled":Z
    .end local v4    # "links":[Landroid/text/style/ClickableSpan;
    .restart local v2    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_12
    const/4 v10, 0x0

    goto :goto_3

    .line 8911
    .end local v2    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v8    # "textIsSelectable":Z
    :cond_13
    return v7
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 8956
    iget-object v0, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spannable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    .line 8957
    iget-object v1, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spannable;

    invoke-interface {v1, p0, v0, p1}, Landroid/text/method/MovementMethod;->onTrackballEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8958
    const/4 v0, 0x1

    return v0

    .line 8962
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    .line 8751
    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    .line 8752
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 8753
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->hideCursorAndSpanControllers()V

    .line 8754
    invoke-virtual {p0}, Landroid/widget/TextView;->stopTextActionMode()V

    .line 8750
    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 8737
    invoke-super {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    .line 8740
    if-eqz p1, :cond_0

    .line 8741
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 8744
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0, p1}, Landroid/widget/Editor;->onWindowFocusChanged(Z)V

    .line 8746
    :cond_1
    invoke-direct {p0, p1}, Landroid/widget/TextView;->startStopMarquee(Z)V

    .line 8736
    return-void
.end method

.method public performAccessibilityActionInternal(ILandroid/os/Bundle;)Z
    .locals 9
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, -0x1

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 9534
    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v5, :cond_0

    .line 9535
    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v5, v5, Landroid/widget/Editor;->mProcessTextIntentActionsHandler:Landroid/widget/Editor$ProcessTextIntentActionsHandler;

    invoke-virtual {v5, p1}, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->performAccessibilityAction(I)Z

    move-result v5

    .line 9534
    if-eqz v5, :cond_0

    .line 9536
    return v7

    .line 9538
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 9626
    invoke-super {p0, p1, p2}, Landroid/view/View;->performAccessibilityActionInternal(ILandroid/os/Bundle;)Z

    move-result v5

    return v5

    .line 9540
    :sswitch_0
    const/4 v1, 0x0

    .line 9543
    .local v1, "handled":Z
    invoke-virtual {p0}, Landroid/widget/TextView;->isClickable()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->isLongClickable()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 9544
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->isFocusable()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 9548
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/widget/TextView;->performClick()Z

    .line 9549
    const/4 v1, 0x1

    .line 9553
    :cond_3
    iget-object v5, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-nez v5, :cond_4

    invoke-virtual {p0}, Landroid/widget/TextView;->onCheckIsTextEditor()Z

    move-result v5

    if-eqz v5, :cond_6

    :cond_4
    invoke-virtual {p0}, Landroid/widget/TextView;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 9554
    iget-object v5, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v5, v5, Landroid/text/Spannable;

    .line 9553
    if-eqz v5, :cond_6

    .line 9554
    iget-object v5, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v5, :cond_6

    .line 9555
    invoke-virtual {p0}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {p0}, Landroid/widget/TextView;->isTextSelectable()Z

    move-result v5

    .line 9553
    if-eqz v5, :cond_6

    .line 9555
    :cond_5
    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v5

    .line 9553
    if-eqz v5, :cond_6

    .line 9557
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v2

    .line 9558
    .local v2, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->viewClicked(Landroid/view/inputmethod/InputMethodManager;)V

    .line 9559
    invoke-virtual {p0}, Landroid/widget/TextView;->isTextSelectable()Z

    move-result v5

    if-nez v5, :cond_6

    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-boolean v5, v5, Landroid/widget/Editor;->mShowSoftInputOnFocus:Z

    if-eqz v5, :cond_6

    if-eqz v2, :cond_6

    .line 9560
    invoke-virtual {v2, p0, v6}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    move-result v5

    or-int/2addr v1, v5

    .line 9564
    .end local v1    # "handled":Z
    .end local v2    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_6
    return v1

    .line 9545
    .restart local v1    # "handled":Z
    :cond_7
    invoke-virtual {p0}, Landroid/widget/TextView;->requestFocus()Z

    goto :goto_0

    .line 9567
    .end local v1    # "handled":Z
    :sswitch_1
    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-virtual {p0}, Landroid/widget/TextView;->canCopy()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 9568
    const v5, 0x1020021

    invoke-virtual {p0, v5}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 9569
    return v7

    .line 9572
    :cond_8
    return v6

    .line 9574
    :sswitch_2
    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-virtual {p0}, Landroid/widget/TextView;->canPaste()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 9575
    const v5, 0x1020022

    invoke-virtual {p0, v5}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 9576
    return v7

    .line 9579
    :cond_9
    return v6

    .line 9581
    :sswitch_3
    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-virtual {p0}, Landroid/widget/TextView;->canCut()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 9582
    const v5, 0x1020020

    invoke-virtual {p0, v5}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 9583
    return v7

    .line 9586
    :cond_a
    return v6

    .line 9588
    :sswitch_4
    invoke-direct {p0}, Landroid/widget/TextView;->ensureIterableTextForAccessibilitySelectable()V

    .line 9589
    invoke-virtual {p0}, Landroid/widget/TextView;->getIterableTextForAccessibility()Ljava/lang/CharSequence;

    move-result-object v4

    .line 9590
    .local v4, "text":Ljava/lang/CharSequence;
    if-nez v4, :cond_b

    .line 9591
    return v6

    .line 9593
    :cond_b
    if-eqz p2, :cond_d

    .line 9594
    const-string/jumbo v5, "ACTION_ARGUMENT_SELECTION_START_INT"

    .line 9593
    invoke-virtual {p2, v5, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 9595
    .local v3, "start":I
    :goto_1
    if-eqz p2, :cond_e

    .line 9596
    const-string/jumbo v5, "ACTION_ARGUMENT_SELECTION_END_INT"

    .line 9595
    invoke-virtual {p2, v5, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 9597
    .local v0, "end":I
    :goto_2
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v5

    if-ne v5, v3, :cond_c

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v5

    if-eq v5, v0, :cond_11

    .line 9599
    :cond_c
    if-ne v3, v0, :cond_f

    if-ne v0, v8, :cond_f

    .line 9600
    check-cast v4, Landroid/text/Spannable;

    .end local v4    # "text":Ljava/lang/CharSequence;
    invoke-static {v4}, Landroid/text/Selection;->removeSelection(Landroid/text/Spannable;)V

    .line 9601
    return v7

    .line 9594
    .end local v0    # "end":I
    .end local v3    # "start":I
    .restart local v4    # "text":Ljava/lang/CharSequence;
    :cond_d
    const/4 v3, -0x1

    .restart local v3    # "start":I
    goto :goto_1

    .line 9596
    :cond_e
    const/4 v0, -0x1

    .restart local v0    # "end":I
    goto :goto_2

    .line 9603
    :cond_f
    if-ltz v3, :cond_11

    if-gt v3, v0, :cond_11

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-gt v0, v5, :cond_11

    .line 9604
    check-cast v4, Landroid/text/Spannable;

    .end local v4    # "text":Ljava/lang/CharSequence;
    invoke-static {v4, v3, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 9606
    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v5, :cond_10

    .line 9607
    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v5}, Landroid/widget/Editor;->startSelectionActionMode()Z

    .line 9609
    :cond_10
    return v7

    .line 9612
    .restart local v4    # "text":Ljava/lang/CharSequence;
    :cond_11
    return v6

    .line 9615
    .end local v0    # "end":I
    .end local v3    # "start":I
    .end local v4    # "text":Ljava/lang/CharSequence;
    :sswitch_5
    invoke-direct {p0}, Landroid/widget/TextView;->ensureIterableTextForAccessibilitySelectable()V

    .line 9616
    invoke-super {p0, p1, p2}, Landroid/view/View;->performAccessibilityActionInternal(ILandroid/os/Bundle;)Z

    move-result v5

    return v5

    .line 9619
    :sswitch_6
    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v5

    if-eqz v5, :cond_12

    invoke-virtual {p0}, Landroid/widget/TextView;->canShare()Z

    move-result v5

    if-eqz v5, :cond_12

    .line 9620
    const v5, 0x1020035

    invoke-virtual {p0, v5}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 9621
    return v7

    .line 9624
    :cond_12
    return v6

    .line 9538
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x100 -> :sswitch_5
        0x200 -> :sswitch_5
        0x4000 -> :sswitch_1
        0x8000 -> :sswitch_2
        0x10000 -> :sswitch_3
        0x20000 -> :sswitch_4
        0x10000000 -> :sswitch_6
    .end sparse-switch
.end method

.method public performLongClick()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 9780
    const/4 v0, 0x0

    .line 9782
    .local v0, "handled":Z
    invoke-super {p0}, Landroid/view/View;->performLongClick()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9784
    iput-boolean v2, p0, Landroid/widget/TextView;->mTextViewDiscardNextActionUp:Z

    .line 9785
    const/4 v0, 0x1

    .line 9788
    :cond_0
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v1, :cond_1

    .line 9789
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v1, v0}, Landroid/widget/Editor;->performLongClick(Z)Z

    move-result v1

    or-int/2addr v0, v1

    .line 9792
    .end local v0    # "handled":Z
    :cond_1
    if-eqz v0, :cond_3

    .line 9793
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->performHapticFeedback(I)Z

    .line 9794
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iput-boolean v2, v1, Landroid/widget/Editor;->mDiscardNextActionUp:Z

    .line 9796
    :cond_2
    iput-boolean v2, p0, Landroid/widget/TextView;->mTextViewDiscardNextActionUp:Z

    .line 9799
    :cond_3
    return v0
.end method

.method removeAdjacentSuggestionSpans(I)V
    .locals 7
    .param p1, "pos"    # I

    .prologue
    .line 8468
    iget-object v6, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v6, v6, Landroid/text/Editable;

    if-nez v6, :cond_0

    return-void

    .line 8469
    :cond_0
    iget-object v5, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v5, Landroid/text/Editable;

    .line 8471
    .local v5, "text":Landroid/text/Editable;
    const-class v6, Landroid/text/style/SuggestionSpan;

    invoke-interface {v5, p1, p1, v6}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/text/style/SuggestionSpan;

    .line 8472
    .local v4, "spans":[Landroid/text/style/SuggestionSpan;
    array-length v1, v4

    .line 8473
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_3

    .line 8474
    aget-object v6, v4, v0

    invoke-interface {v5, v6}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    .line 8475
    .local v3, "spanStart":I
    aget-object v6, v4, v0

    invoke-interface {v5, v6}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v2

    .line 8476
    .local v2, "spanEnd":I
    if-eq v2, p1, :cond_1

    if-ne v3, p1, :cond_2

    .line 8477
    :cond_1
    invoke-static {v5, p1, p1, v3, v2}, Landroid/widget/SpellChecker;->haveWordBoundariesChanged(Landroid/text/Editable;IIII)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 8478
    aget-object v6, v4, v0

    invoke-interface {v5, v6}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 8473
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 8467
    .end local v2    # "spanEnd":I
    .end local v3    # "spanStart":I
    :cond_3
    return-void
.end method

.method removeMisspelledSpans(Landroid/text/Spannable;)V
    .locals 6
    .param p1, "spannable"    # Landroid/text/Spannable;

    .prologue
    const/4 v5, 0x0

    .line 4153
    invoke-interface {p1}, Landroid/text/Spannable;->length()I

    move-result v3

    .line 4154
    const-class v4, Landroid/text/style/SuggestionSpan;

    .line 4153
    invoke-interface {p1, v5, v3, v4}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/SuggestionSpan;

    .line 4155
    .local v2, "suggestionSpans":[Landroid/text/style/SuggestionSpan;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 4156
    aget-object v3, v2, v1

    invoke-virtual {v3}, Landroid/text/style/SuggestionSpan;->getFlags()I

    move-result v0

    .line 4157
    .local v0, "flags":I
    and-int/lit8 v3, v0, 0x1

    if-eqz v3, :cond_0

    .line 4158
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_0

    .line 4159
    aget-object v3, v2, v1

    invoke-interface {p1, v3}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 4155
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4152
    .end local v0    # "flags":I
    :cond_1
    return-void
.end method

.method removeSuggestionSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 6
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 4609
    instance-of v3, p1, Landroid/text/Spanned;

    if-eqz v3, :cond_1

    .line 4611
    instance-of v3, p1, Landroid/text/Spannable;

    if-eqz v3, :cond_0

    move-object v1, p1

    .line 4612
    check-cast v1, Landroid/text/Spannable;

    .line 4618
    .local v1, "spannable":Landroid/text/Spannable;
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const-class v4, Landroid/text/style/SuggestionSpan;

    const/4 v5, 0x0

    invoke-interface {v1, v5, v3, v4}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/SuggestionSpan;

    .line 4619
    .local v2, "spans":[Landroid/text/style/SuggestionSpan;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 4620
    aget-object v3, v2, v0

    invoke-interface {v1, v3}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 4619
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 4614
    .end local v0    # "i":I
    .end local v1    # "spannable":Landroid/text/Spannable;
    .end local v2    # "spans":[Landroid/text/style/SuggestionSpan;
    :cond_0
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 4615
    .restart local v1    # "spannable":Landroid/text/Spannable;
    move-object p1, v1

    goto :goto_0

    .line 4623
    .end local v1    # "spannable":Landroid/text/Spannable;
    :cond_1
    return-object p1
.end method

.method public removeTextChangedListener(Landroid/text/TextWatcher;)V
    .locals 2
    .param p1, "watcher"    # Landroid/text/TextWatcher;

    .prologue
    .line 8429
    iget-object v1, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 8430
    iget-object v1, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 8432
    .local v0, "i":I
    if-ltz v0, :cond_0

    .line 8433
    iget-object v1, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 8428
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method removeUrlSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 6
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 4630
    instance-of v3, p1, Landroid/text/Spanned;

    if-eqz v3, :cond_1

    .line 4632
    instance-of v3, p1, Landroid/text/Spannable;

    if-eqz v3, :cond_0

    move-object v1, p1

    .line 4633
    check-cast v1, Landroid/text/Spannable;

    .line 4639
    .local v1, "spannable":Landroid/text/Spannable;
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const-class v4, Landroid/text/style/URLSpan;

    const/4 v5, 0x0

    invoke-interface {v1, v5, v3, v4}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/URLSpan;

    .line 4640
    .local v2, "urlSpans":[Landroid/text/style/URLSpan;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 4641
    aget-object v3, v2, v0

    invoke-interface {v1, v3}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 4640
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 4635
    .end local v0    # "i":I
    .end local v1    # "spannable":Landroid/text/Spannable;
    .end local v2    # "urlSpans":[Landroid/text/style/URLSpan;
    :cond_0
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 4636
    .restart local v1    # "spannable":Landroid/text/Spannable;
    move-object p1, v1

    goto :goto_0

    .line 4644
    .end local v1    # "spannable":Landroid/text/Spannable;
    :cond_1
    return-object p1
.end method

.method replaceSelectionWithText(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 10010
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Editable;

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v2

    invoke-interface {v0, v1, v2, p1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 10009
    return-void
.end method

.method protected replaceText_internal(IILjava/lang/CharSequence;)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 10236
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Editable;

    invoke-interface {v0, p1, p2, p3}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 10235
    return-void
.end method

.method public resetErrorChangedFlag()V
    .locals 2

    .prologue
    .line 6398
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/widget/Editor;->mErrorWasChanged:Z

    .line 6391
    :cond_0
    return-void
.end method

.method protected resetResolvedDrawables()V
    .locals 1

    .prologue
    .line 10210
    invoke-super {p0}, Landroid/view/View;->resetResolvedDrawables()V

    .line 10211
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/TextView;->mLastLayoutDirection:I

    .line 10209
    return-void
.end method

.method selectAllText()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 10001
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v1, :cond_0

    .line 10002
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->hideInsertionPointCursorController()V

    .line 10004
    :cond_0
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 10005
    .local v0, "length":I
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v1, Landroid/text/Spannable;

    invoke-static {v1, v2, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 10006
    if-lez v0, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method public sendAccessibilityEventInternal(I)V
    .locals 1
    .param p1, "eventType"    # I

    .prologue
    .line 9634
    const v0, 0x8000

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    .line 9635
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mProcessTextIntentActionsHandler:Landroid/widget/Editor$ProcessTextIntentActionsHandler;

    invoke-virtual {v0}, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->initializeAccessibilityActions()V

    .line 9641
    :cond_0
    const/16 v0, 0x1000

    if-ne p1, v0, :cond_1

    .line 9642
    return-void

    .line 9644
    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->sendAccessibilityEventInternal(I)V

    .line 9633
    return-void
.end method

.method sendAccessibilityEventTypeViewTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .param p1, "beforeText"    # Ljava/lang/CharSequence;
    .param p2, "fromIndex"    # I
    .param p3, "removedCount"    # I
    .param p4, "addedCount"    # I

    .prologue
    .line 9665
    const/16 v1, 0x10

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 9666
    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {v0, p2}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 9667
    invoke-virtual {v0, p3}, Landroid/view/accessibility/AccessibilityEvent;->setRemovedCount(I)V

    .line 9668
    invoke-virtual {v0, p4}, Landroid/view/accessibility/AccessibilityEvent;->setAddedCount(I)V

    .line 9669
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityEvent;->setBeforeText(Ljava/lang/CharSequence;)V

    .line 9670
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 9663
    return-void
.end method

.method sendAfterTextChanged(Landroid/text/Editable;)V
    .locals 4
    .param p1, "text"    # Landroid/text/Editable;

    .prologue
    .line 8505
    iget-object v3, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    .line 8506
    iget-object v2, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    .line 8507
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/text/TextWatcher;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 8508
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 8509
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/text/TextWatcher;

    invoke-interface {v3, p1}, Landroid/text/TextWatcher;->afterTextChanged(Landroid/text/Editable;)V

    .line 8508
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8512
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v2    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/text/TextWatcher;>;"
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->hideErrorIfUnchanged()V

    .line 8504
    return-void
.end method

.method sendOnTextChanged(Ljava/lang/CharSequence;III)V
    .locals 4
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "after"    # I

    .prologue
    .line 8489
    iget-object v3, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    .line 8490
    iget-object v2, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    .line 8491
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/text/TextWatcher;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 8492
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 8493
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/text/TextWatcher;

    invoke-interface {v3, p1, p2, p3, p4}, Landroid/text/TextWatcher;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 8492
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8497
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v2    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/text/TextWatcher;>;"
    :cond_0
    iget-object v3, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v3, p2, p4}, Landroid/widget/Editor;->sendOnTextChanged(II)V

    .line 8488
    :cond_1
    return-void
.end method

.method public setAccessibilitySelection(II)V
    .locals 3
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 10343
    invoke-virtual {p0}, Landroid/widget/TextView;->getAccessibilitySelectionStart()I

    move-result v1

    if-ne v1, p1, :cond_0

    .line 10344
    invoke-virtual {p0}, Landroid/widget/TextView;->getAccessibilitySelectionEnd()I

    move-result v1

    if-ne v1, p2, :cond_0

    .line 10345
    return-void

    .line 10350
    :cond_0
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v1, :cond_1

    .line 10351
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->hideCursorAndSpanControllers()V

    .line 10352
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->stopTextActionMode()V

    .line 10354
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getIterableTextForAccessibility()Ljava/lang/CharSequence;

    move-result-object v0

    .line 10355
    .local v0, "text":Ljava/lang/CharSequence;
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-ltz v1, :cond_2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-gt v1, v2, :cond_2

    .line 10356
    check-cast v0, Landroid/text/Spannable;

    .end local v0    # "text":Ljava/lang/CharSequence;
    invoke-static {v0, p1, p2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 10342
    :goto_0
    return-void

    .line 10358
    .restart local v0    # "text":Ljava/lang/CharSequence;
    :cond_2
    check-cast v0, Landroid/text/Spannable;

    .end local v0    # "text":Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/Selection;->removeSelection(Landroid/text/Spannable;)V

    goto :goto_0
.end method

.method public setAllCaps(Z)V
    .locals 2
    .param p1, "allCaps"    # Z

    .prologue
    .line 8143
    if-eqz p1, :cond_0

    .line 8144
    new-instance v0, Landroid/text/method/AllCapsTransformationMethod;

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/method/AllCapsTransformationMethod;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 8142
    :goto_0
    return-void

    .line 8146
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    goto :goto_0
.end method

.method public final setAutoLinkMask(I)V
    .locals 0
    .param p1, "mask"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 3403
    iput p1, p0, Landroid/widget/TextView;->mAutoLinkMask:I

    .line 3402
    return-void
.end method

.method public setBreakStrategy(I)V
    .locals 1
    .param p1, "breakStrategy"    # I

    .prologue
    .line 3136
    iput p1, p0, Landroid/widget/TextView;->mBreakStrategy:I

    .line 3137
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    .line 3138
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    .line 3139
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 3140
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 3135
    :cond_0
    return-void
.end method

.method public setCJKFontFamily(Ljava/lang/String;)V
    .locals 0
    .param p1, "fontFamily"    # Ljava/lang/String;

    .prologue
    .line 10875
    return-void
.end method

.method public setCJKTextSize(I)V
    .locals 0
    .param p1, "textSize"    # I

    .prologue
    .line 10882
    return-void
.end method

.method public setCompoundDrawablePadding(I)V
    .locals 2
    .param p1, "pad"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 2625
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 2626
    .local v0, "dr":Landroid/widget/TextView$Drawables;
    if-nez p1, :cond_1

    .line 2627
    if-eqz v0, :cond_0

    .line 2628
    iput p1, v0, Landroid/widget/TextView$Drawables;->mDrawablePadding:I

    .line 2637
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 2638
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 2624
    return-void

    .line 2631
    :cond_1
    if-nez v0, :cond_2

    .line 2632
    new-instance v0, Landroid/widget/TextView$Drawables;

    .end local v0    # "dr":Landroid/widget/TextView$Drawables;
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView$Drawables;-><init>(Landroid/content/Context;)V

    .restart local v0    # "dr":Landroid/widget/TextView$Drawables;
    iput-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 2634
    :cond_2
    iput p1, v0, Landroid/widget/TextView$Drawables;->mDrawablePadding:I

    goto :goto_0
.end method

.method public setCompoundDrawableTintList(Landroid/content/res/ColorStateList;)V
    .locals 2
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 2668
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-nez v0, :cond_0

    .line 2669
    new-instance v0, Landroid/widget/TextView$Drawables;

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView$Drawables;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 2671
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iput-object p1, v0, Landroid/widget/TextView$Drawables;->mTintList:Landroid/content/res/ColorStateList;

    .line 2672
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/widget/TextView$Drawables;->mHasTint:Z

    .line 2674
    invoke-direct {p0}, Landroid/widget/TextView;->applyCompoundDrawableTint()V

    .line 2667
    return-void
.end method

.method public setCompoundDrawableTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .prologue
    .line 2698
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-nez v0, :cond_0

    .line 2699
    new-instance v0, Landroid/widget/TextView$Drawables;

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView$Drawables;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 2701
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iput-object p1, v0, Landroid/widget/TextView$Drawables;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 2702
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/widget/TextView$Drawables;->mHasTintMode:Z

    .line 2704
    invoke-direct {p0}, Landroid/widget/TextView;->applyCompoundDrawableTint()V

    .line 2697
    return-void
.end method

.method public setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 11
    .param p1, "left"    # Landroid/graphics/drawable/Drawable;
    .param p2, "top"    # Landroid/graphics/drawable/Drawable;
    .param p3, "right"    # Landroid/graphics/drawable/Drawable;
    .param p4, "bottom"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 2194
    iget-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 2197
    .local v1, "dr":Landroid/widget/TextView$Drawables;
    if-eqz v1, :cond_2

    .line 2198
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_0

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2199
    :cond_0
    iput-object v6, v1, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    .line 2200
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_1

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2201
    :cond_1
    iput-object v6, v1, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    .line 2202
    iput v7, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightStart:I

    iput v7, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeStart:I

    .line 2203
    iput v7, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightEnd:I

    iput v7, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeEnd:I

    .line 2206
    :cond_2
    if-nez p1, :cond_3

    if-eqz p2, :cond_6

    :cond_3
    const/4 v2, 0x1

    .line 2207
    .local v2, "drawables":Z
    :goto_0
    if-nez v2, :cond_a

    .line 2209
    if-eqz v1, :cond_4

    .line 2210
    iget v5, v1, Landroid/widget/TextView$Drawables;->mDrawablePadding:I

    if-nez v5, :cond_7

    .line 2211
    iput-object v6, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 2301
    :cond_4
    :goto_1
    if-eqz v1, :cond_5

    .line 2302
    iput-object p1, v1, Landroid/widget/TextView$Drawables;->mDrawableLeftInitial:Landroid/graphics/drawable/Drawable;

    .line 2303
    iput-object p3, v1, Landroid/widget/TextView$Drawables;->mDrawableRightInitial:Landroid/graphics/drawable/Drawable;

    .line 2306
    :cond_5
    invoke-virtual {p0}, Landroid/widget/TextView;->resetResolvedDrawables()V

    .line 2307
    invoke-virtual {p0}, Landroid/widget/TextView;->resolveDrawables()V

    .line 2308
    invoke-direct {p0}, Landroid/widget/TextView;->applyCompoundDrawableTint()V

    .line 2309
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 2310
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 2193
    return-void

    .line 2206
    .end local v2    # "drawables":Z
    :cond_6
    if-nez p3, :cond_3

    if-nez p4, :cond_3

    const/4 v2, 0x0

    .restart local v2    # "drawables":Z
    goto :goto_0

    .line 2215
    :cond_7
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    array-length v5, v5

    add-int/lit8 v3, v5, -0x1

    .local v3, "i":I
    :goto_2
    if-ltz v3, :cond_9

    .line 2216
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v5, v5, v3

    if-eqz v5, :cond_8

    .line 2217
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v5, v5, v3

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2219
    :cond_8
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aput-object v6, v5, v3

    .line 2215
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 2221
    :cond_9
    iput v7, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    iput v7, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeLeft:I

    .line 2222
    iput v7, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    iput v7, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    .line 2223
    iput v7, v1, Landroid/widget/TextView$Drawables;->mDrawableWidthTop:I

    iput v7, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeTop:I

    .line 2224
    iput v7, v1, Landroid/widget/TextView$Drawables;->mDrawableWidthBottom:I

    iput v7, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeBottom:I

    goto :goto_1

    .line 2228
    .end local v3    # "i":I
    :cond_a
    if-nez v1, :cond_b

    .line 2229
    new-instance v1, Landroid/widget/TextView$Drawables;

    .end local v1    # "dr":Landroid/widget/TextView$Drawables;
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v1, v5}, Landroid/widget/TextView$Drawables;-><init>(Landroid/content/Context;)V

    .restart local v1    # "dr":Landroid/widget/TextView$Drawables;
    iput-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 2232
    :cond_b
    iget-object v5, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iput-boolean v7, v5, Landroid/widget/TextView$Drawables;->mOverride:Z

    .line 2234
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v5, v5, v7

    if-eq v5, p1, :cond_c

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v5, v5, v7

    if-eqz v5, :cond_c

    .line 2235
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v5, v5, v7

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2237
    :cond_c
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aput-object p1, v5, v7

    .line 2239
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v5, v5, v8

    if-eq v5, p2, :cond_d

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v5, v5, v8

    if-eqz v5, :cond_d

    .line 2240
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v5, v5, v8

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2242
    :cond_d
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aput-object p2, v5, v8

    .line 2244
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v5, v5, v9

    if-eq v5, p3, :cond_e

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v5, v5, v9

    if-eqz v5, :cond_e

    .line 2245
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v5, v5, v9

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2247
    :cond_e
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aput-object p3, v5, v9

    .line 2249
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v5, v5, v10

    if-eq v5, p4, :cond_f

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v5, v5, v10

    if-eqz v5, :cond_f

    .line 2250
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v5, v5, v10

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2252
    :cond_f
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aput-object p4, v5, v10

    .line 2254
    iget-object v0, v1, Landroid/widget/TextView$Drawables;->mCompoundRect:Landroid/graphics/Rect;

    .line 2257
    .local v0, "compoundRect":Landroid/graphics/Rect;
    invoke-virtual {p0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v4

    .line 2259
    .local v4, "state":[I
    if-eqz p1, :cond_10

    .line 2260
    invoke-virtual {p1, v4}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 2261
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 2262
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2263
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeLeft:I

    .line 2264
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    .line 2269
    :goto_3
    if-eqz p3, :cond_11

    .line 2270
    invoke-virtual {p3, v4}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 2271
    invoke-virtual {p3, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 2272
    invoke-virtual {p3, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2273
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    .line 2274
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    .line 2279
    :goto_4
    if-eqz p2, :cond_12

    .line 2280
    invoke-virtual {p2, v4}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 2281
    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 2282
    invoke-virtual {p2, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2283
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeTop:I

    .line 2284
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableWidthTop:I

    .line 2289
    :goto_5
    if-eqz p4, :cond_13

    .line 2290
    invoke-virtual {p4, v4}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 2291
    invoke-virtual {p4, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 2292
    invoke-virtual {p4, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2293
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeBottom:I

    .line 2294
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableWidthBottom:I

    goto/16 :goto_1

    .line 2266
    :cond_10
    iput v7, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    iput v7, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeLeft:I

    goto :goto_3

    .line 2276
    :cond_11
    iput v7, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    iput v7, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    goto :goto_4

    .line 2286
    :cond_12
    iput v7, v1, Landroid/widget/TextView$Drawables;->mDrawableWidthTop:I

    iput v7, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeTop:I

    goto :goto_5

    .line 2296
    :cond_13
    iput v7, v1, Landroid/widget/TextView$Drawables;->mDrawableWidthBottom:I

    iput v7, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeBottom:I

    goto/16 :goto_1
.end method

.method public setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 10
    .param p1, "start"    # Landroid/graphics/drawable/Drawable;
    .param p2, "top"    # Landroid/graphics/drawable/Drawable;
    .param p3, "end"    # Landroid/graphics/drawable/Drawable;
    .param p4, "bottom"    # Landroid/graphics/drawable/Drawable;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 2391
    iget-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 2394
    .local v1, "dr":Landroid/widget/TextView$Drawables;
    if-eqz v1, :cond_2

    .line 2395
    iget-object v4, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v4, v4, v6

    if-eqz v4, :cond_0

    .line 2396
    iget-object v4, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v4, v4, v6

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2398
    :cond_0
    iget-object v4, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    iput-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableLeftInitial:Landroid/graphics/drawable/Drawable;

    aput-object v5, v4, v6

    .line 2399
    iget-object v4, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v4, v4, v9

    if-eqz v4, :cond_1

    .line 2400
    iget-object v4, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v4, v4, v9

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2402
    :cond_1
    iget-object v4, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    iput-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableRightInitial:Landroid/graphics/drawable/Drawable;

    aput-object v5, v4, v9

    .line 2403
    iput v6, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    iput v6, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeLeft:I

    .line 2404
    iput v6, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    iput v6, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    .line 2407
    :cond_2
    if-nez p1, :cond_3

    if-eqz p2, :cond_5

    :cond_3
    const/4 v2, 0x1

    .line 2410
    .local v2, "drawables":Z
    :goto_0
    if-nez v2, :cond_c

    .line 2412
    if-eqz v1, :cond_4

    .line 2413
    iget v4, v1, Landroid/widget/TextView$Drawables;->mDrawablePadding:I

    if-nez v4, :cond_7

    .line 2414
    iput-object v5, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 2511
    :cond_4
    :goto_1
    invoke-virtual {p0}, Landroid/widget/TextView;->resetResolvedDrawables()V

    .line 2512
    invoke-virtual {p0}, Landroid/widget/TextView;->resolveDrawables()V

    .line 2513
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 2514
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 2390
    return-void

    .line 2408
    .end local v2    # "drawables":Z
    :cond_5
    if-nez p3, :cond_3

    if-eqz p4, :cond_6

    const/4 v2, 0x1

    .restart local v2    # "drawables":Z
    goto :goto_0

    .end local v2    # "drawables":Z
    :cond_6
    const/4 v2, 0x0

    .restart local v2    # "drawables":Z
    goto :goto_0

    .line 2418
    :cond_7
    iget-object v4, v1, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_8

    iget-object v4, v1, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2419
    :cond_8
    iput-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    .line 2420
    iget-object v4, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v4, v4, v7

    if-eqz v4, :cond_9

    .line 2421
    iget-object v4, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v4, v4, v7

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2423
    :cond_9
    iget-object v4, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aput-object v5, v4, v7

    .line 2424
    iget-object v4, v1, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_a

    .line 2425
    iget-object v4, v1, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2427
    :cond_a
    iput-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    .line 2428
    iget-object v4, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v4, v4, v8

    if-eqz v4, :cond_b

    .line 2429
    iget-object v4, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v4, v4, v8

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2431
    :cond_b
    iget-object v4, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aput-object v5, v4, v8

    .line 2432
    iput v6, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightStart:I

    iput v6, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeStart:I

    .line 2433
    iput v6, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightEnd:I

    iput v6, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeEnd:I

    .line 2434
    iput v6, v1, Landroid/widget/TextView$Drawables;->mDrawableWidthTop:I

    iput v6, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeTop:I

    .line 2435
    iput v6, v1, Landroid/widget/TextView$Drawables;->mDrawableWidthBottom:I

    iput v6, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeBottom:I

    goto :goto_1

    .line 2439
    :cond_c
    if-nez v1, :cond_d

    .line 2440
    new-instance v1, Landroid/widget/TextView$Drawables;

    .end local v1    # "dr":Landroid/widget/TextView$Drawables;
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/widget/TextView$Drawables;-><init>(Landroid/content/Context;)V

    .restart local v1    # "dr":Landroid/widget/TextView$Drawables;
    iput-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 2443
    :cond_d
    iget-object v4, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iput-boolean v7, v4, Landroid/widget/TextView$Drawables;->mOverride:Z

    .line 2445
    iget-object v4, v1, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    if-eq v4, p1, :cond_e

    iget-object v4, v1, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_e

    .line 2446
    iget-object v4, v1, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2448
    :cond_e
    iput-object p1, v1, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    .line 2450
    iget-object v4, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v4, v4, v7

    if-eq v4, p2, :cond_f

    iget-object v4, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v4, v4, v7

    if-eqz v4, :cond_f

    .line 2451
    iget-object v4, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v4, v4, v7

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2453
    :cond_f
    iget-object v4, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aput-object p2, v4, v7

    .line 2455
    iget-object v4, v1, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    if-eq v4, p3, :cond_10

    iget-object v4, v1, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_10

    .line 2456
    iget-object v4, v1, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2458
    :cond_10
    iput-object p3, v1, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    .line 2460
    iget-object v4, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v4, v4, v8

    if-eq v4, p4, :cond_11

    iget-object v4, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v4, v4, v8

    if-eqz v4, :cond_11

    .line 2461
    iget-object v4, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v4, v4, v8

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2463
    :cond_11
    iget-object v4, v1, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aput-object p4, v4, v8

    .line 2465
    iget-object v0, v1, Landroid/widget/TextView$Drawables;->mCompoundRect:Landroid/graphics/Rect;

    .line 2468
    .local v0, "compoundRect":Landroid/graphics/Rect;
    invoke-virtual {p0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v3

    .line 2470
    .local v3, "state":[I
    if-eqz p1, :cond_12

    .line 2471
    invoke-virtual {p1, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 2472
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 2473
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2474
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeStart:I

    .line 2475
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightStart:I

    .line 2480
    :goto_2
    if-eqz p3, :cond_13

    .line 2481
    invoke-virtual {p3, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 2482
    invoke-virtual {p3, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 2483
    invoke-virtual {p3, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2484
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeEnd:I

    .line 2485
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightEnd:I

    .line 2490
    :goto_3
    if-eqz p2, :cond_14

    .line 2491
    invoke-virtual {p2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 2492
    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 2493
    invoke-virtual {p2, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2494
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeTop:I

    .line 2495
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableWidthTop:I

    .line 2500
    :goto_4
    if-eqz p4, :cond_15

    .line 2501
    invoke-virtual {p4, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 2502
    invoke-virtual {p4, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 2503
    invoke-virtual {p4, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2504
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeBottom:I

    .line 2505
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableWidthBottom:I

    goto/16 :goto_1

    .line 2477
    :cond_12
    iput v6, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightStart:I

    iput v6, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeStart:I

    goto :goto_2

    .line 2487
    :cond_13
    iput v6, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightEnd:I

    iput v6, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeEnd:I

    goto :goto_3

    .line 2497
    :cond_14
    iput v6, v1, Landroid/widget/TextView$Drawables;->mDrawableWidthTop:I

    iput v6, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeTop:I

    goto :goto_4

    .line 2507
    :cond_15
    iput v6, v1, Landroid/widget/TextView$Drawables;->mDrawableWidthBottom:I

    iput v6, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeBottom:I

    goto/16 :goto_1
.end method

.method public setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V
    .locals 5
    .param p1, "start"    # I
    .param p2, "top"    # I
    .param p3, "end"    # I
    .param p4, "bottom"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2538
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2540
    .local v0, "context":Landroid/content/Context;
    if-eqz p1, :cond_1

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object v4, v2

    .line 2541
    :goto_0
    if-eqz p2, :cond_2

    invoke-virtual {v0, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object v3, v2

    .line 2542
    :goto_1
    if-eqz p3, :cond_3

    invoke-virtual {v0, p3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 2543
    :goto_2
    if-eqz p4, :cond_0

    invoke-virtual {v0, p4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 2539
    :cond_0
    invoke-virtual {p0, v4, v3, v2, v1}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 2537
    return-void

    :cond_1
    move-object v4, v1

    .line 2540
    goto :goto_0

    :cond_2
    move-object v3, v1

    .line 2541
    goto :goto_1

    :cond_3
    move-object v2, v1

    .line 2542
    goto :goto_2
.end method

.method public setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "start"    # Landroid/graphics/drawable/Drawable;
    .param p2, "top"    # Landroid/graphics/drawable/Drawable;
    .param p3, "end"    # Landroid/graphics/drawable/Drawable;
    .param p4, "bottom"    # Landroid/graphics/drawable/Drawable;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 2563
    if-eqz p1, :cond_0

    .line 2564
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2566
    :cond_0
    if-eqz p3, :cond_1

    .line 2567
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p3, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2569
    :cond_1
    if-eqz p2, :cond_2

    .line 2570
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p2, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2572
    :cond_2
    if-eqz p4, :cond_3

    .line 2573
    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p4, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2575
    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 2561
    return-void
.end method

.method public setCompoundDrawablesWithIntrinsicBounds(IIII)V
    .locals 5
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2334
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2335
    .local v0, "context":Landroid/content/Context;
    if-eqz p1, :cond_1

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object v4, v2

    .line 2336
    :goto_0
    if-eqz p2, :cond_2

    invoke-virtual {v0, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object v3, v2

    .line 2337
    :goto_1
    if-eqz p3, :cond_3

    invoke-virtual {v0, p3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 2338
    :goto_2
    if-eqz p4, :cond_0

    invoke-virtual {v0, p4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 2335
    :cond_0
    invoke-virtual {p0, v4, v3, v2, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 2333
    return-void

    :cond_1
    move-object v4, v1

    .line 2335
    goto :goto_0

    :cond_2
    move-object v3, v1

    .line 2336
    goto :goto_1

    :cond_3
    move-object v2, v1

    .line 2337
    goto :goto_2
.end method

.method public setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "left"    # Landroid/graphics/drawable/Drawable;
    .param p2, "top"    # Landroid/graphics/drawable/Drawable;
    .param p3, "right"    # Landroid/graphics/drawable/Drawable;
    .param p4, "bottom"    # Landroid/graphics/drawable/Drawable;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 2359
    if-eqz p1, :cond_0

    .line 2360
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2362
    :cond_0
    if-eqz p3, :cond_1

    .line 2363
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p3, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2365
    :cond_1
    if-eqz p2, :cond_2

    .line 2366
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p2, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2368
    :cond_2
    if-eqz p4, :cond_3

    .line 2369
    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p4, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2371
    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 2357
    return-void
.end method

.method public setCurcorColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 10890
    iget-object v0, p0, Landroid/widget/TextView;->mLeTextInfo:Lcom/letv/leui/text/LeTextOpt$LeTextInfo;

    invoke-virtual {v0, p1}, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->setCurcorColor(I)V

    .line 10889
    return-void
.end method

.method protected setCursorPosition_internal(II)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 10252
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Editable;

    invoke-static {v0, p1, p2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 10251
    return-void
.end method

.method public setCursorVisible(Z)V
    .locals 1
    .param p1, "visible"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 8292
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-nez v0, :cond_0

    return-void

    .line 8293
    :cond_0
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 8294
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-boolean v0, v0, Landroid/widget/Editor;->mCursorVisible:Z

    if-eq v0, p1, :cond_1

    .line 8295
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iput-boolean p1, v0, Landroid/widget/Editor;->mCursorVisible:Z

    .line 8296
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 8298
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->makeBlink()V

    .line 8301
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->prepareCursorControllers()V

    .line 8291
    :cond_1
    return-void
.end method

.method public setCustomInsertionActionModeCallback(Landroid/view/ActionMode$Callback;)V
    .locals 1
    .param p1, "actionModeCallback"    # Landroid/view/ActionMode$Callback;

    .prologue
    .line 9911
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 9912
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iput-object p1, v0, Landroid/widget/Editor;->mCustomInsertionActionModeCallback:Landroid/view/ActionMode$Callback;

    .line 9910
    return-void
.end method

.method public setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V
    .locals 1
    .param p1, "actionModeCallback"    # Landroid/view/ActionMode$Callback;

    .prologue
    .line 9874
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 9875
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iput-object p1, v0, Landroid/widget/Editor;->mCustomSelectionActionModeCallback:Landroid/view/ActionMode$Callback;

    .line 9873
    return-void
.end method

.method public final setEditableFactory(Landroid/text/Editable$Factory;)V
    .locals 1
    .param p1, "factory"    # Landroid/text/Editable$Factory;

    .prologue
    .line 4258
    iput-object p1, p0, Landroid/widget/TextView;->mEditableFactory:Landroid/text/Editable$Factory;

    .line 4259
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4257
    return-void
.end method

.method public setElegantTextHeight(Z)V
    .locals 1
    .param p1, "elegant"    # Z

    .prologue
    .line 3079
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setElegantTextHeight(Z)V

    .line 3078
    return-void
.end method

.method public setEllipsize(Landroid/text/TextUtils$TruncateAt;)V
    .locals 1
    .param p1, "where"    # Landroid/text/TextUtils$TruncateAt;

    .prologue
    .line 8219
    iget-object v0, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    if-eq v0, p1, :cond_0

    .line 8220
    iput-object p1, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    .line 8222
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    .line 8223
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    .line 8224
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 8225
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 8217
    :cond_0
    return-void
.end method

.method public setEms(I)V
    .locals 1
    .param p1, "ems"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 3920
    iput p1, p0, Landroid/widget/TextView;->mMinWidth:I

    iput p1, p0, Landroid/widget/TextView;->mMaxWidth:I

    .line 3921
    iput v0, p0, Landroid/widget/TextView;->mMinWidthMode:I

    iput v0, p0, Landroid/widget/TextView;->mMaxWidthMode:I

    .line 3923
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 3924
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 3919
    return-void
.end method

.method public setEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 1633
    invoke-virtual {p0}, Landroid/widget/TextView;->isEnabled()Z

    move-result v1

    if-ne p1, v1, :cond_0

    .line 1634
    return-void

    .line 1637
    :cond_0
    if-nez p1, :cond_1

    .line 1639
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 1640
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1641
    invoke-virtual {p0}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1645
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 1647
    if-eqz p1, :cond_2

    .line 1649
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 1650
    .restart local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_2

    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 1654
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_2
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v1, :cond_3

    .line 1655
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->invalidateTextDisplayList()V

    .line 1656
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->prepareCursorControllers()V

    .line 1659
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->makeBlink()V

    .line 1632
    :cond_3
    return-void
.end method

.method public setError(Ljava/lang/CharSequence;)V
    .locals 4
    .param p1, "error"    # Ljava/lang/CharSequence;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 5065
    if-nez p1, :cond_0

    .line 5066
    invoke-virtual {p0, v1, v1}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    .line 5064
    :goto_0
    return-void

    .line 5068
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 5069
    const v2, 0x1080471

    .line 5068
    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 5071
    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 5072
    invoke-virtual {p0, p1, v0}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "error"    # Ljava/lang/CharSequence;
    .param p2, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 5086
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 5087
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0, p1, p2}, Landroid/widget/Editor;->setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    .line 5089
    const/4 v0, 0x0

    .line 5088
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->notifyViewAccessibilityStateChangedIfNeeded(I)V

    .line 5085
    return-void
.end method

.method public setExtractedText(Landroid/view/inputmethod/ExtractedText;)V
    .locals 8
    .param p1, "text"    # Landroid/view/inputmethod/ExtractedText;

    .prologue
    .line 6608
    invoke-virtual {p0}, Landroid/widget/TextView;->getEditableText()Landroid/text/Editable;

    move-result-object v4

    .line 6609
    .local v4, "content":Landroid/text/Editable;
    iget-object v0, p1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 6610
    if-nez v4, :cond_3

    .line 6611
    iget-object v0, p1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    sget-object v3, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {p0, v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 6641
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    check-cast v7, Landroid/text/Spannable;

    .line 6642
    .local v7, "sp":Landroid/text/Spannable;
    invoke-interface {v7}, Landroid/text/Spannable;->length()I

    move-result v6

    .line 6643
    .local v6, "N":I
    iget v1, p1, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    .line 6644
    .local v1, "start":I
    if-gez v1, :cond_7

    const/4 v1, 0x0

    .line 6646
    :cond_1
    :goto_1
    iget v2, p1, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    .line 6647
    .local v2, "end":I
    if-gez v2, :cond_8

    const/4 v2, 0x0

    .line 6649
    :cond_2
    :goto_2
    invoke-static {v7, v1, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 6652
    iget v0, p1, Landroid/view/inputmethod/ExtractedText;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_9

    .line 6653
    invoke-static {p0, v7}, Landroid/text/method/MetaKeyKeyListener;->startSelecting(Landroid/view/View;Landroid/text/Spannable;)V

    .line 6607
    :goto_3
    return-void

    .line 6613
    .end local v1    # "start":I
    .end local v2    # "end":I
    .end local v6    # "N":I
    .end local v7    # "sp":Landroid/text/Spannable;
    :cond_3
    const/4 v1, 0x0

    .line 6614
    .restart local v1    # "start":I
    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v2

    .line 6616
    .restart local v2    # "end":I
    iget v0, p1, Landroid/view/inputmethod/ExtractedText;->partialStartOffset:I

    if-ltz v0, :cond_5

    .line 6617
    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v6

    .line 6618
    .restart local v6    # "N":I
    iget v1, p1, Landroid/view/inputmethod/ExtractedText;->partialStartOffset:I

    .line 6619
    if-le v1, v6, :cond_4

    move v1, v6

    .line 6620
    :cond_4
    iget v2, p1, Landroid/view/inputmethod/ExtractedText;->partialEndOffset:I

    .line 6621
    if-le v2, v6, :cond_5

    move v2, v6

    .line 6624
    .end local v6    # "N":I
    :cond_5
    invoke-static {v4, v1, v2}, Landroid/widget/TextView;->removeParcelableSpans(Landroid/text/Spannable;II)V

    .line 6625
    invoke-interface {v4, v1, v2}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v3, p1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 6626
    iget-object v0, p1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spanned;

    if-eqz v0, :cond_0

    .line 6628
    iget-object v0, p1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spanned;

    .line 6629
    const-class v3, Ljava/lang/Object;

    move v5, v1

    .line 6628
    invoke-static/range {v0 .. v5}, Landroid/text/TextUtils;->copySpansFrom(Landroid/text/Spanned;IILjava/lang/Class;Landroid/text/Spannable;I)V

    goto :goto_0

    .line 6632
    :cond_6
    iget-object v0, p1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    invoke-interface {v4, v1, v2, v0}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_0

    .line 6645
    .end local v2    # "end":I
    .restart local v6    # "N":I
    .restart local v7    # "sp":Landroid/text/Spannable;
    :cond_7
    if-le v1, v6, :cond_1

    move v1, v6

    goto :goto_1

    .line 6648
    .restart local v2    # "end":I
    :cond_8
    if-le v2, v6, :cond_2

    move v2, v6

    goto :goto_2

    .line 6655
    :cond_9
    invoke-static {p0, v7}, Landroid/text/method/MetaKeyKeyListener;->stopSelecting(Landroid/view/View;Landroid/text/Spannable;)V

    goto :goto_3
.end method

.method public setExtracting(Landroid/view/inputmethod/ExtractedTextRequest;)V
    .locals 1
    .param p1, "req"    # Landroid/view/inputmethod/ExtractedTextRequest;

    .prologue
    .line 6663
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    if-eqz v0, :cond_0

    .line 6664
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    iput-object p1, v0, Landroid/widget/Editor$InputMethodState;->mExtractedTextRequest:Landroid/view/inputmethod/ExtractedTextRequest;

    .line 6669
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->hideCursorAndSpanControllers()V

    .line 6670
    invoke-virtual {p0}, Landroid/widget/TextView;->stopTextActionMode()V

    .line 6662
    return-void
.end method

.method public setFilters([Landroid/text/InputFilter;)V
    .locals 1
    .param p1, "filters"    # [Landroid/text/InputFilter;

    .prologue
    .line 5117
    if-nez p1, :cond_0

    .line 5118
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 5121
    :cond_0
    iput-object p1, p0, Landroid/widget/TextView;->mFilters:[Landroid/text/InputFilter;

    .line 5123
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Editable;

    if-eqz v0, :cond_1

    .line 5124
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Editable;

    invoke-direct {p0, v0, p1}, Landroid/widget/TextView;->setFilters(Landroid/text/Editable;[Landroid/text/InputFilter;)V

    .line 5116
    :cond_1
    return-void
.end method

.method public setFontFeatureSettings(Ljava/lang/String;)V
    .locals 1
    .param p1, "fontFeatureSettings"    # Ljava/lang/String;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 3195
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontFeatureSettings()Ljava/lang/String;

    move-result-object v0

    if-eq p1, v0, :cond_0

    .line 3196
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setFontFeatureSettings(Ljava/lang/String;)V

    .line 3198
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    .line 3199
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    .line 3200
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 3201
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 3194
    :cond_0
    return-void
.end method

.method protected setFrame(IIII)Z
    .locals 2
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "r"    # I
    .param p4, "b"    # I

    .prologue
    .line 5094
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->setFrame(IIII)Z

    move-result v0

    .line 5096
    .local v0, "result":Z
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->setFrame()V

    .line 5098
    :cond_0
    invoke-direct {p0}, Landroid/widget/TextView;->restartMarqueeIfNeeded()V

    .line 5100
    return v0
.end method

.method public setFreezesText(Z)V
    .locals 0
    .param p1, "freezesText"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 4237
    iput-boolean p1, p0, Landroid/widget/TextView;->mFreezesText:Z

    .line 4236
    return-void
.end method

.method public setGravity(I)V
    .locals 8
    .param p1, "gravity"    # I

    .prologue
    const v4, 0x800007

    .line 3552
    and-int v0, p1, v4

    if-nez v0, :cond_0

    .line 3553
    const v0, 0x800003

    or-int/2addr p1, v0

    .line 3555
    :cond_0
    and-int/lit8 v0, p1, 0x70

    if-nez v0, :cond_1

    .line 3556
    or-int/lit8 p1, p1, 0x30

    .line 3559
    :cond_1
    const/4 v7, 0x0

    .line 3561
    .local v7, "newLayout":Z
    and-int v0, p1, v4

    .line 3562
    iget v3, p0, Landroid/widget/TextView;->mGravity:I

    and-int/2addr v3, v4

    .line 3561
    if-eq v0, v3, :cond_2

    .line 3563
    const/4 v7, 0x1

    .line 3566
    :cond_2
    iget v0, p0, Landroid/widget/TextView;->mGravity:I

    if-eq p1, v0, :cond_3

    .line 3567
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 3570
    :cond_3
    iput p1, p0, Landroid/widget/TextView;->mGravity:I

    .line 3572
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_4

    if-eqz v7, :cond_4

    .line 3574
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getWidth()I

    move-result v1

    .line 3575
    .local v1, "want":I
    iget-object v0, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    if-nez v0, :cond_5

    const/4 v2, 0x0

    .line 3577
    .local v2, "hintWant":I
    :goto_0
    sget-object v3, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    sget-object v4, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    .line 3578
    iget v0, p0, Landroid/widget/TextView;->mRight:I

    iget v5, p0, Landroid/widget/TextView;->mLeft:I

    sub-int/2addr v0, v5

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v5

    sub-int/2addr v0, v5

    .line 3579
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v5

    .line 3578
    sub-int v5, v0, v5

    .line 3579
    const/4 v6, 0x1

    move-object v0, p0

    .line 3577
    invoke-virtual/range {v0 .. v6}, Landroid/widget/TextView;->makeNewLayout(IILandroid/text/BoringLayout$Metrics;Landroid/text/BoringLayout$Metrics;IZ)V

    .line 3551
    .end local v1    # "want":I
    .end local v2    # "hintWant":I
    :cond_4
    return-void

    .line 3575
    .restart local v1    # "want":I
    :cond_5
    iget-object v0, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getWidth()I

    move-result v2

    .restart local v2    # "hintWant":I
    goto :goto_0
.end method

.method public setHeight(I)V
    .locals 1
    .param p1, "pixels"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v0, 0x2

    .line 3793
    iput p1, p0, Landroid/widget/TextView;->mMinimum:I

    iput p1, p0, Landroid/widget/TextView;->mMaximum:I

    .line 3794
    iput v0, p0, Landroid/widget/TextView;->mMinMode:I

    iput v0, p0, Landroid/widget/TextView;->mMaxMode:I

    .line 3796
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 3797
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 3792
    return-void
.end method

.method public setHighlightColor(I)V
    .locals 1
    .param p1, "color"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 3270
    iget v0, p0, Landroid/widget/TextView;->mHighlightColor:I

    if-eq v0, p1, :cond_0

    .line 3271
    iput p1, p0, Landroid/widget/TextView;->mHighlightColor:I

    .line 3273
    iget-object v0, p0, Landroid/widget/TextView;->mLeTextInfo:Lcom/letv/leui/text/LeTextOpt$LeTextInfo;

    invoke-virtual {v0, p1}, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->setHighlightColor(I)V

    .line 3275
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 3269
    :cond_0
    return-void
.end method

.method setHighlightPathBogusExt(Z)V
    .locals 0
    .param p1, "result"    # Z

    .prologue
    .line 10791
    iput-boolean p1, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    .line 10790
    return-void
.end method

.method public final setHint(I)V
    .locals 1
    .param p1, "resid"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 4582
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 4581
    return-void
.end method

.method public final setHint(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "hint"    # Ljava/lang/CharSequence;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 4558
    invoke-static {p1}, Landroid/text/TextUtils;->stringOrSpannedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    .line 4560
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    .line 4561
    invoke-direct {p0}, Landroid/widget/TextView;->checkForRelayout()V

    .line 4564
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 4565
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 4569
    :cond_1
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    .line 4570
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->invalidateTextDisplayList()V

    .line 4557
    :cond_2
    return-void
.end method

.method public final setHintTextColor(I)V
    .locals 1
    .param p1, "color"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 3458
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TextView;->mHintTextColor:Landroid/content/res/ColorStateList;

    .line 3459
    invoke-direct {p0}, Landroid/widget/TextView;->updateTextColors()V

    .line 3457
    return-void
.end method

.method public final setHintTextColor(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1, "colors"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 3473
    iput-object p1, p0, Landroid/widget/TextView;->mHintTextColor:Landroid/content/res/ColorStateList;

    .line 3474
    invoke-direct {p0}, Landroid/widget/TextView;->updateTextColors()V

    .line 3472
    return-void
.end method

.method public setHorizontallyScrolling(Z)V
    .locals 1
    .param p1, "whether"    # Z

    .prologue
    .line 3626
    iget-boolean v0, p0, Landroid/widget/TextView;->mHorizontallyScrolling:Z

    if-eq v0, p1, :cond_0

    .line 3627
    iput-boolean p1, p0, Landroid/widget/TextView;->mHorizontallyScrolling:Z

    .line 3629
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    .line 3630
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    .line 3631
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 3632
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 3625
    :cond_0
    return-void
.end method

.method public setHyphenationFrequency(I)V
    .locals 1
    .param p1, "hyphenationFrequency"    # I

    .prologue
    .line 3163
    iput p1, p0, Landroid/widget/TextView;->mHyphenationFrequency:I

    .line 3164
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    .line 3165
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    .line 3166
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 3167
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 3162
    :cond_0
    return-void
.end method

.method public setImeActionLabel(Ljava/lang/CharSequence;I)V
    .locals 1
    .param p1, "label"    # Ljava/lang/CharSequence;
    .param p2, "actionId"    # I

    .prologue
    .line 4845
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 4846
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->createInputContentTypeIfNeeded()V

    .line 4847
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iput-object p1, v0, Landroid/widget/Editor$InputContentType;->imeActionLabel:Ljava/lang/CharSequence;

    .line 4848
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iput p2, v0, Landroid/widget/Editor$InputContentType;->imeActionId:I

    .line 4844
    return-void
.end method

.method public setImeOptions(I)V
    .locals 1
    .param p1, "imeOptions"    # I

    .prologue
    .line 4818
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 4819
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->createInputContentTypeIfNeeded()V

    .line 4820
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iput p1, v0, Landroid/widget/Editor$InputContentType;->imeOptions:I

    .line 4817
    return-void
.end method

.method public setIncludeFontPadding(Z)V
    .locals 1
    .param p1, "includepad"    # Z

    .prologue
    .line 7091
    iget-boolean v0, p0, Landroid/widget/TextView;->mIncludePad:Z

    if-eq v0, p1, :cond_0

    .line 7092
    iput-boolean p1, p0, Landroid/widget/TextView;->mIncludePad:Z

    .line 7094
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    .line 7095
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    .line 7096
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 7097
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 7090
    :cond_0
    return-void
.end method

.method public setInputExtras(I)V
    .locals 3
    .param p1, "xmlResId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5015
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 5016
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    .line 5017
    .local v0, "parser":Landroid/content/res/XmlResourceParser;
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->createInputContentTypeIfNeeded()V

    .line 5018
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v1, v1, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iput-object v2, v1, Landroid/widget/Editor$InputContentType;->extras:Landroid/os/Bundle;

    .line 5019
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v2, v2, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget-object v2, v2, Landroid/widget/Editor$InputContentType;->extras:Landroid/os/Bundle;

    invoke-virtual {v1, v0, v2}, Landroid/content/res/Resources;->parseBundleExtras(Landroid/content/res/XmlResourceParser;Landroid/os/Bundle;)V

    .line 5014
    return-void
.end method

.method public setInputType(I)V
    .locals 13
    .param p1, "type"    # I

    .prologue
    const/4 v12, 0x3

    const/4 v8, 0x1

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v7, 0x0

    .line 4663
    invoke-virtual {p0}, Landroid/widget/TextView;->getInputType()I

    move-result v9

    invoke-static {v9}, Landroid/widget/TextView;->isPasswordInputType(I)Z

    move-result v5

    .line 4664
    .local v5, "wasPassword":Z
    invoke-virtual {p0}, Landroid/widget/TextView;->getInputType()I

    move-result v9

    invoke-static {v9}, Landroid/widget/TextView;->isVisiblePasswordInputType(I)Z

    move-result v6

    .line 4665
    .local v6, "wasVisiblePassword":Z
    invoke-direct {p0, p1, v7}, Landroid/widget/TextView;->setInputType(IZ)V

    .line 4666
    invoke-static {p1}, Landroid/widget/TextView;->isPasswordInputType(I)Z

    move-result v2

    .line 4667
    .local v2, "isPassword":Z
    invoke-static {p1}, Landroid/widget/TextView;->isVisiblePasswordInputType(I)Z

    move-result v3

    .line 4668
    .local v3, "isVisiblePassword":Z
    const/4 v0, 0x0

    .line 4669
    .local v0, "forceUpdate":Z
    if-eqz v2, :cond_5

    .line 4670
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v9

    invoke-virtual {p0, v9}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 4671
    invoke-direct {p0, v11, v12, v7}, Landroid/widget/TextView;->setTypefaceFromAttrs(Ljava/lang/String;II)V

    .line 4685
    :cond_0
    :goto_0
    invoke-static {p1}, Landroid/widget/TextView;->isMultilineInputType(I)Z

    move-result v9

    if-eqz v9, :cond_9

    const/4 v4, 0x0

    .line 4689
    .local v4, "singleLine":Z
    :goto_1
    iget-boolean v9, p0, Landroid/widget/TextView;->mSingleLine:Z

    if-ne v9, v4, :cond_1

    if-eqz v0, :cond_2

    .line 4692
    :cond_1
    if-eqz v2, :cond_a

    :goto_2
    invoke-direct {p0, v4, v7, v8}, Landroid/widget/TextView;->applySingleLine(ZZZ)V

    .line 4695
    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView;->isSuggestionsEnabled()Z

    move-result v7

    if-nez v7, :cond_3

    .line 4696
    iget-object v7, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p0, v7}, Landroid/widget/TextView;->removeSuggestionSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    iput-object v7, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .line 4699
    :cond_3
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    .line 4700
    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v1, :cond_4

    invoke-virtual {v1, p0}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 4662
    :cond_4
    return-void

    .line 4672
    .end local v1    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v4    # "singleLine":Z
    :cond_5
    if-eqz v3, :cond_7

    .line 4673
    iget-object v9, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v10

    if-ne v9, v10, :cond_6

    .line 4674
    const/4 v0, 0x1

    .line 4676
    :cond_6
    invoke-direct {p0, v11, v12, v7}, Landroid/widget/TextView;->setTypefaceFromAttrs(Ljava/lang/String;II)V

    goto :goto_0

    .line 4677
    :cond_7
    if-nez v5, :cond_8

    if-eqz v6, :cond_0

    .line 4679
    :cond_8
    invoke-direct {p0, v11, v10, v10}, Landroid/widget/TextView;->setTypefaceFromAttrs(Ljava/lang/String;II)V

    .line 4680
    iget-object v9, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v10

    if-ne v9, v10, :cond_0

    .line 4681
    const/4 v0, 0x1

    goto :goto_0

    .line 4685
    :cond_9
    const/4 v4, 0x1

    .restart local v4    # "singleLine":Z
    goto :goto_1

    :cond_a
    move v7, v8

    .line 4692
    goto :goto_2
.end method

.method public setIsLineCenterVertical(Z)V
    .locals 1
    .param p1, "isCenter"    # Z

    .prologue
    .line 10897
    iget-object v0, p0, Landroid/widget/TextView;->mLeTextInfo:Lcom/letv/leui/text/LeTextOpt$LeTextInfo;

    iput-boolean p1, v0, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->mIsLineCenterVertical:Z

    .line 10896
    return-void
.end method

.method public setKeyListener(Landroid/text/method/KeyListener;)V
    .locals 4
    .param p1, "input"    # Landroid/text/method/KeyListener;

    .prologue
    .line 1841
    invoke-direct {p0, p1}, Landroid/widget/TextView;->setKeyListenerOnly(Landroid/text/method/KeyListener;)V

    .line 1842
    invoke-direct {p0}, Landroid/widget/TextView;->fixFocusableAndClickableSettings()V

    .line 1844
    if-eqz p1, :cond_2

    .line 1845
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 1847
    :try_start_0
    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v3, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v3, v3, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    invoke-interface {v3}, Landroid/text/method/KeyListener;->getInputType()I

    move-result v3

    iput v3, v2, Landroid/widget/Editor;->mInputType:I
    :try_end_0
    .catch Ljava/lang/IncompatibleClassChangeError; {:try_start_0 .. :try_end_0} :catch_0

    .line 1853
    :goto_0
    iget-boolean v2, p0, Landroid/widget/TextView;->mSingleLine:Z

    invoke-direct {p0, v2}, Landroid/widget/TextView;->setInputTypeSingleLine(Z)V

    .line 1858
    :cond_0
    :goto_1
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    .line 1859
    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v1, :cond_1

    invoke-virtual {v1, p0}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 1840
    :cond_1
    return-void

    .line 1848
    .end local v1    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :catch_0
    move-exception v0

    .line 1849
    .local v0, "e":Ljava/lang/IncompatibleClassChangeError;
    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    const/4 v3, 0x1

    iput v3, v2, Landroid/widget/Editor;->mInputType:I

    goto :goto_0

    .line 1855
    .end local v0    # "e":Ljava/lang/IncompatibleClassChangeError;
    :cond_2
    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    const/4 v3, 0x0

    iput v3, v2, Landroid/widget/Editor;->mInputType:I

    goto :goto_1
.end method

.method public setLeCJKTextWeight(I)V
    .locals 0
    .param p1, "weight"    # I

    .prologue
    .line 10845
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setLeTextWeight(I)V

    .line 10844
    return-void
.end method

.method public setLeTextWeight(I)V
    .locals 3
    .param p1, "weight"    # I

    .prologue
    const/4 v2, -0x1

    .line 10818
    iget-object v1, p0, Landroid/widget/TextView;->mLeTextInfo:Lcom/letv/leui/text/LeTextOpt$LeTextInfo;

    iget v1, v1, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->mLeTextStyle:I

    if-eq p1, v1, :cond_0

    .line 10819
    iget-object v1, p0, Landroid/widget/TextView;->mLeTextInfo:Lcom/letv/leui/text/LeTextOpt$LeTextInfo;

    iput p1, v1, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->mLeTextStyle:I

    .line 10820
    iget-object v1, p0, Landroid/widget/TextView;->mLeTextInfo:Lcom/letv/leui/text/LeTextOpt$LeTextInfo;

    invoke-virtual {v1, p1}, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->getLeFontWeight(I)Ljava/lang/String;

    move-result-object v0

    .line 10821
    .local v0, "fontFamily":Ljava/lang/String;
    invoke-direct {p0, v0, v2, v2}, Landroid/widget/TextView;->setTypefaceFromAttrs(Ljava/lang/String;II)V

    .line 10817
    .end local v0    # "fontFamily":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public setLetterSpacing(F)V
    .locals 1
    .param p1, "letterSpacing"    # F
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 3104
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getLetterSpacing()F

    move-result v0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 3105
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setLetterSpacing(F)V

    .line 3107
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    .line 3108
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    .line 3109
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 3110
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 3103
    :cond_0
    return-void
.end method

.method public setLineSpacing(FF)V
    .locals 1
    .param p1, "add"    # F
    .param p2, "mult"    # F

    .prologue
    .line 3956
    iget v0, p0, Landroid/widget/TextView;->mSpacingAdd:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    iget v0, p0, Landroid/widget/TextView;->mSpacingMult:F

    cmpl-float v0, v0, p2

    if-eqz v0, :cond_1

    .line 3957
    :cond_0
    iput p1, p0, Landroid/widget/TextView;->mSpacingAdd:F

    .line 3958
    iput p2, p0, Landroid/widget/TextView;->mSpacingMult:F

    .line 3960
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_1

    .line 3961
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    .line 3962
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 3963
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 3955
    :cond_1
    return-void
.end method

.method public setLines(I)V
    .locals 1
    .param p1, "lines"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 3774
    iput p1, p0, Landroid/widget/TextView;->mMinimum:I

    iput p1, p0, Landroid/widget/TextView;->mMaximum:I

    .line 3775
    iput v0, p0, Landroid/widget/TextView;->mMinMode:I

    iput v0, p0, Landroid/widget/TextView;->mMaxMode:I

    .line 3777
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 3778
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 3773
    return-void
.end method

.method public final setLinkTextColor(I)V
    .locals 1
    .param p1, "color"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 3511
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TextView;->mLinkTextColor:Landroid/content/res/ColorStateList;

    .line 3512
    invoke-direct {p0}, Landroid/widget/TextView;->updateTextColors()V

    .line 3510
    return-void
.end method

.method public final setLinkTextColor(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1, "colors"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 3526
    iput-object p1, p0, Landroid/widget/TextView;->mLinkTextColor:Landroid/content/res/ColorStateList;

    .line 3527
    invoke-direct {p0}, Landroid/widget/TextView;->updateTextColors()V

    .line 3525
    return-void
.end method

.method public final setLinksClickable(Z)V
    .locals 0
    .param p1, "whether"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 3416
    iput-boolean p1, p0, Landroid/widget/TextView;->mLinksClickable:Z

    .line 3415
    return-void
.end method

.method public setMarqueeRepeatLimit(I)V
    .locals 0
    .param p1, "marqueeLimit"    # I

    .prologue
    .line 8239
    iput p1, p0, Landroid/widget/TextView;->mMarqueeRepeatLimit:I

    .line 8238
    return-void
.end method

.method public setMaxEms(I)V
    .locals 1
    .param p1, "maxems"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 3861
    iput p1, p0, Landroid/widget/TextView;->mMaxWidth:I

    .line 3862
    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/TextView;->mMaxWidthMode:I

    .line 3864
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 3865
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 3860
    return-void
.end method

.method public setMaxHeight(I)V
    .locals 1
    .param p1, "maxHeight"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 3745
    iput p1, p0, Landroid/widget/TextView;->mMaximum:I

    .line 3746
    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/TextView;->mMaxMode:I

    .line 3748
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 3749
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 3744
    return-void
.end method

.method public setMaxLines(I)V
    .locals 1
    .param p1, "maxlines"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 3716
    iput p1, p0, Landroid/widget/TextView;->mMaximum:I

    .line 3717
    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/TextView;->mMaxMode:I

    .line 3719
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 3720
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 3715
    return-void
.end method

.method public setMaxWidth(I)V
    .locals 1
    .param p1, "maxpixels"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 3888
    iput p1, p0, Landroid/widget/TextView;->mMaxWidth:I

    .line 3889
    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/TextView;->mMaxWidthMode:I

    .line 3891
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 3892
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 3887
    return-void
.end method

.method public setMinEms(I)V
    .locals 1
    .param p1, "minems"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 3807
    iput p1, p0, Landroid/widget/TextView;->mMinWidth:I

    .line 3808
    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/TextView;->mMinWidthMode:I

    .line 3810
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 3811
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 3806
    return-void
.end method

.method public setMinHeight(I)V
    .locals 1
    .param p1, "minHeight"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 3688
    iput p1, p0, Landroid/widget/TextView;->mMinimum:I

    .line 3689
    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/TextView;->mMinMode:I

    .line 3691
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 3692
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 3687
    return-void
.end method

.method public setMinLines(I)V
    .locals 1
    .param p1, "minlines"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 3660
    iput p1, p0, Landroid/widget/TextView;->mMinimum:I

    .line 3661
    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/TextView;->mMinMode:I

    .line 3663
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 3664
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 3659
    return-void
.end method

.method public setMinWidth(I)V
    .locals 1
    .param p1, "minpixels"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 3834
    iput p1, p0, Landroid/widget/TextView;->mMinWidth:I

    .line 3835
    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/TextView;->mMinWidthMode:I

    .line 3837
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 3838
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 3833
    return-void
.end method

.method public final setMovementMethod(Landroid/text/method/MovementMethod;)V
    .locals 1
    .param p1, "movement"    # Landroid/text/method/MovementMethod;

    .prologue
    .line 1896
    iget-object v0, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eq v0, p1, :cond_1

    .line 1897
    iput-object p1, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    .line 1899
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spannable;

    if-eqz v0, :cond_2

    .line 1903
    :cond_0
    :goto_0
    invoke-direct {p0}, Landroid/widget/TextView;->fixFocusableAndClickableSettings()V

    .line 1907
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->prepareCursorControllers()V

    .line 1895
    :cond_1
    return-void

    .line 1900
    :cond_2
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V
    .locals 1
    .param p1, "l"    # Landroid/widget/TextView$OnEditorActionListener;

    .prologue
    .line 4882
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 4883
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->createInputContentTypeIfNeeded()V

    .line 4884
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iput-object p1, v0, Landroid/widget/Editor$InputContentType;->onEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    .line 4881
    return-void
.end method

.method public setOnURLClickEventListener(Landroid/widget/TextView$OnURLClickEventListener;)V
    .locals 0
    .param p1, "l"    # Landroid/widget/TextView$OnURLClickEventListener;

    .prologue
    .line 10786
    iput-object p1, p0, Landroid/widget/TextView;->mURLEventListener:Landroid/widget/TextView$OnURLClickEventListener;

    .line 10785
    return-void
.end method

.method public setPadding(IIII)V
    .locals 1
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 2765
    iget v0, p0, Landroid/widget/TextView;->mPaddingLeft:I

    if-ne p1, v0, :cond_0

    .line 2766
    iget v0, p0, Landroid/widget/TextView;->mPaddingRight:I

    if-eq p3, v0, :cond_2

    .line 2769
    :cond_0
    :goto_0
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    .line 2773
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->setPadding(IIII)V

    .line 2774
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 2764
    return-void

    .line 2767
    :cond_2
    iget v0, p0, Landroid/widget/TextView;->mPaddingTop:I

    if-ne p2, v0, :cond_0

    .line 2768
    iget v0, p0, Landroid/widget/TextView;->mPaddingBottom:I

    if-eq p4, v0, :cond_1

    goto :goto_0
.end method

.method public setPaddingRelative(IIII)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "top"    # I
    .param p3, "end"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 2779
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingStart()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 2780
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingEnd()I

    move-result v0

    if-eq p3, v0, :cond_2

    .line 2783
    :cond_0
    :goto_0
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    .line 2787
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 2788
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 2778
    return-void

    .line 2781
    :cond_2
    iget v0, p0, Landroid/widget/TextView;->mPaddingTop:I

    if-ne p2, v0, :cond_0

    .line 2782
    iget v0, p0, Landroid/widget/TextView;->mPaddingBottom:I

    if-eq p4, v0, :cond_1

    goto :goto_0
.end method

.method public setPaintFlags(I)V
    .locals 1
    .param p1, "flags"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 3608
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFlags()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 3609
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setFlags(I)V

    .line 3611
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    .line 3612
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    .line 3613
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 3614
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 3607
    :cond_0
    return-void
.end method

.method public setPrivateImeOptions(Ljava/lang/String;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 4987
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 4988
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->createInputContentTypeIfNeeded()V

    .line 4989
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iput-object p1, v0, Landroid/widget/Editor$InputContentType;->privateImeOptions:Ljava/lang/String;

    .line 4986
    return-void
.end method

.method public setRawInputType(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 4748
    if-nez p1, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-nez v0, :cond_0

    return-void

    .line 4749
    :cond_0
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 4750
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iput p1, v0, Landroid/widget/Editor;->mInputType:I

    .line 4747
    return-void
.end method

.method public setScroller(Landroid/widget/Scroller;)V
    .locals 0
    .param p1, "s"    # Landroid/widget/Scroller;

    .prologue
    .line 8966
    iput-object p1, p0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    .line 8965
    return-void
.end method

.method public setSelectAllOnFocus(Z)V
    .locals 2
    .param p1, "selectAllOnFocus"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 8274
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 8275
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iput-boolean p1, v0, Landroid/widget/Editor;->mSelectAllOnFocus:Z

    .line 8277
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spannable;

    if-eqz v0, :cond_1

    .line 8273
    :cond_0
    :goto_0
    return-void

    .line 8278
    :cond_1
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    sget-object v1, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {p0, v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    goto :goto_0
.end method

.method public setSelectHandleColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 10868
    return-void
.end method

.method public setSelectHandleColor(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1, "color"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 10861
    return-void
.end method

.method public setSelected(Z)V
    .locals 3
    .param p1, "selected"    # Z

    .prologue
    .line 8771
    invoke-virtual {p0}, Landroid/widget/TextView;->isSelected()Z

    move-result v0

    .line 8773
    .local v0, "wasSelected":Z
    invoke-super {p0, p1}, Landroid/view/View;->setSelected(Z)V

    .line 8775
    if-eq p1, v0, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v1, v2, :cond_0

    .line 8776
    if-eqz p1, :cond_1

    .line 8777
    invoke-direct {p0}, Landroid/widget/TextView;->startMarquee()V

    .line 8770
    :cond_0
    :goto_0
    return-void

    .line 8779
    :cond_1
    invoke-direct {p0}, Landroid/widget/TextView;->stopMarquee()V

    goto :goto_0
.end method

.method public setShadowLayer(FFFI)V
    .locals 1
    .param p1, "radius"    # F
    .param p2, "dx"    # F
    .param p3, "dy"    # F
    .param p4, "color"    # I

    .prologue
    .line 3327
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 3329
    iput p1, p0, Landroid/widget/TextView;->mShadowRadius:F

    .line 3330
    iput p2, p0, Landroid/widget/TextView;->mShadowDx:F

    .line 3331
    iput p3, p0, Landroid/widget/TextView;->mShadowDy:F

    .line 3332
    iput p4, p0, Landroid/widget/TextView;->mShadowColor:I

    .line 3335
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->invalidateTextDisplayList()V

    .line 3336
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 3326
    return-void
.end method

.method public final setShowSoftInputOnFocus(Z)V
    .locals 1
    .param p1, "show"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 3297
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 3298
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iput-boolean p1, v0, Landroid/widget/Editor;->mShowSoftInputOnFocus:Z

    .line 3296
    return-void
.end method

.method public setSingleLine()V
    .locals 1

    .prologue
    .line 8119
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 8118
    return-void
.end method

.method public setSingleLine(Z)V
    .locals 1
    .param p1, "singleLine"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 8164
    invoke-direct {p0, p1}, Landroid/widget/TextView;->setInputTypeSingleLine(Z)V

    .line 8165
    invoke-direct {p0, p1, v0, v0}, Landroid/widget/TextView;->applySingleLine(ZZZ)V

    .line 8161
    return-void
.end method

.method public setSmartFit(Z)V
    .locals 0
    .param p1, "smartFit"    # Z

    .prologue
    .line 8127
    iput-boolean p1, p0, Landroid/widget/TextView;->mSmartFit:Z

    .line 8126
    return-void
.end method

.method protected setSpan_internal(Ljava/lang/Object;III)V
    .locals 1
    .param p1, "span"    # Ljava/lang/Object;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "flags"    # I

    .prologue
    .line 10244
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Editable;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 10243
    return-void
.end method

.method public final setSpannableFactory(Landroid/text/Spannable$Factory;)V
    .locals 1
    .param p1, "factory"    # Landroid/text/Spannable$Factory;

    .prologue
    .line 4266
    iput-object p1, p0, Landroid/widget/TextView;->mSpannableFactory:Landroid/text/Spannable$Factory;

    .line 4267
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4265
    return-void
.end method

.method public final setText(I)V
    .locals 1
    .param p1, "resid"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 4542
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4541
    return-void
.end method

.method public final setText(ILandroid/widget/TextView$BufferType;)V
    .locals 1
    .param p1, "resid"    # I
    .param p2, "type"    # Landroid/widget/TextView$BufferType;

    .prologue
    .line 4546
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 4545
    return-void
.end method

.method public final setText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 4283
    iget-object v0, p0, Landroid/widget/TextView;->mBufferType:Landroid/widget/TextView$BufferType;

    invoke-virtual {p0, p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 4282
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "type"    # Landroid/widget/TextView$BufferType;

    .prologue
    const/4 v2, 0x0

    .line 4308
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;ZI)V

    .line 4310
    iget-object v0, p0, Landroid/widget/TextView;->mCharWrapper:Landroid/widget/TextView$CharWrapper;

    if-eqz v0, :cond_0

    .line 4311
    iget-object v0, p0, Landroid/widget/TextView;->mCharWrapper:Landroid/widget/TextView$CharWrapper;

    invoke-static {v0, v2}, Landroid/widget/TextView$CharWrapper;->-set0(Landroid/widget/TextView$CharWrapper;[C)[C

    .line 4307
    :cond_0
    return-void
.end method

.method public final setText([CII)V
    .locals 4
    .param p1, "text"    # [C
    .param p2, "start"    # I
    .param p3, "len"    # I

    .prologue
    const/4 v3, 0x0

    .line 4491
    const/4 v0, 0x0

    .line 4493
    .local v0, "oldlen":I
    if-ltz p2, :cond_0

    if-gez p3, :cond_1

    .line 4494
    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4493
    :cond_1
    add-int v1, p2, p3

    array-length v2, p1

    if-gt v1, v2, :cond_0

    .line 4502
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    if-eqz v1, :cond_2

    .line 4503
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 4504
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-direct {p0, v1, v3, v0, p3}, Landroid/widget/TextView;->sendBeforeTextChanged(Ljava/lang/CharSequence;III)V

    .line 4509
    :goto_0
    iget-object v1, p0, Landroid/widget/TextView;->mCharWrapper:Landroid/widget/TextView$CharWrapper;

    if-nez v1, :cond_3

    .line 4510
    new-instance v1, Landroid/widget/TextView$CharWrapper;

    invoke-direct {v1, p1, p2, p3}, Landroid/widget/TextView$CharWrapper;-><init>([CII)V

    iput-object v1, p0, Landroid/widget/TextView;->mCharWrapper:Landroid/widget/TextView$CharWrapper;

    .line 4515
    :goto_1
    iget-object v1, p0, Landroid/widget/TextView;->mCharWrapper:Landroid/widget/TextView$CharWrapper;

    iget-object v2, p0, Landroid/widget/TextView;->mBufferType:Landroid/widget/TextView$BufferType;

    invoke-direct {p0, v1, v2, v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;ZI)V

    .line 4490
    return-void

    .line 4506
    :cond_2
    const-string/jumbo v1, ""

    invoke-direct {p0, v1, v3, v3, p3}, Landroid/widget/TextView;->sendBeforeTextChanged(Ljava/lang/CharSequence;III)V

    goto :goto_0

    .line 4512
    :cond_3
    iget-object v1, p0, Landroid/widget/TextView;->mCharWrapper:Landroid/widget/TextView$CharWrapper;

    invoke-virtual {v1, p1, p2, p3}, Landroid/widget/TextView$CharWrapper;->set([CII)V

    goto :goto_1
.end method

.method public setTextAppearance(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 2815
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, p1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 2814
    return-void
.end method

.method public setTextAppearance(Landroid/content/Context;I)V
    .locals 17
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2826
    sget-object v15, Landroid/R$styleable;->TextAppearance:[I

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v0, v1, v15}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v8

    .line 2829
    .local v8, "ta":Landroid/content/res/TypedArray;
    const/4 v15, 0x4

    const/16 v16, 0x0

    .line 2828
    move/from16 v0, v16

    invoke-virtual {v8, v15, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v10

    .line 2830
    .local v10, "textColorHighlight":I
    if-eqz v10, :cond_0

    .line 2831
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setHighlightColor(I)V

    .line 2834
    :cond_0
    const/4 v15, 0x3

    invoke-virtual {v8, v15}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v9

    .line 2835
    .local v9, "textColor":Landroid/content/res/ColorStateList;
    if-eqz v9, :cond_1

    .line 2836
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 2839
    :cond_1
    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v8, v15, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v13

    .line 2840
    .local v13, "textSize":I
    if-eqz v13, :cond_2

    .line 2841
    int-to-float v15, v13

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Landroid/widget/TextView;->setRawTextSize(F)V

    .line 2845
    :cond_2
    const/4 v15, 0x5

    .line 2844
    invoke-virtual {v8, v15}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v11

    .line 2846
    .local v11, "textColorHint":Landroid/content/res/ColorStateList;
    if-eqz v11, :cond_3

    .line 2847
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setHintTextColor(Landroid/content/res/ColorStateList;)V

    .line 2851
    :cond_3
    const/4 v15, 0x6

    .line 2850
    invoke-virtual {v8, v15}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v12

    .line 2852
    .local v12, "textColorLink":Landroid/content/res/ColorStateList;
    if-eqz v12, :cond_4

    .line 2853
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setLinkTextColor(Landroid/content/res/ColorStateList;)V

    .line 2856
    :cond_4
    const/16 v15, 0xc

    invoke-virtual {v8, v15}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 2857
    .local v4, "fontFamily":Ljava/lang/String;
    const/4 v15, 0x1

    const/16 v16, -0x1

    move/from16 v0, v16

    invoke-virtual {v8, v15, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v14

    .line 2858
    .local v14, "typefaceIndex":I
    const/4 v15, 0x2

    const/16 v16, -0x1

    move/from16 v0, v16

    invoke-virtual {v8, v15, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    .line 2859
    .local v7, "styleIndex":I
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v14, v7}, Landroid/widget/TextView;->setTypefaceFromAttrs(Ljava/lang/String;II)V

    .line 2861
    const/4 v15, 0x7

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v8, v15, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    .line 2862
    .local v6, "shadowColor":I
    if-eqz v6, :cond_5

    .line 2863
    const/4 v15, 0x0

    const/16 v16, 0x8

    move/from16 v0, v16

    invoke-virtual {v8, v0, v15}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    .line 2864
    .local v2, "dx":F
    const/4 v15, 0x0

    const/16 v16, 0x9

    move/from16 v0, v16

    invoke-virtual {v8, v0, v15}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    .line 2865
    .local v3, "dy":F
    const/4 v15, 0x0

    const/16 v16, 0xa

    move/from16 v0, v16

    invoke-virtual {v8, v0, v15}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    .line 2866
    .local v5, "r":F
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v2, v3, v6}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 2869
    .end local v2    # "dx":F
    .end local v3    # "dy":F
    .end local v5    # "r":F
    :cond_5
    const/16 v15, 0xb

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v8, v15, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 2870
    new-instance v15, Landroid/text/method/AllCapsTransformationMethod;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Landroid/text/method/AllCapsTransformationMethod;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 2873
    :cond_6
    const/16 v15, 0xd

    invoke-virtual {v8, v15}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 2875
    const/16 v15, 0xd

    const/16 v16, 0x0

    .line 2874
    move/from16 v0, v16

    invoke-virtual {v8, v15, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/widget/TextView;->setElegantTextHeight(Z)V

    .line 2878
    :cond_7
    const/16 v15, 0xe

    invoke-virtual {v8, v15}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v15

    if-eqz v15, :cond_8

    .line 2880
    const/4 v15, 0x0

    const/16 v16, 0xe

    .line 2879
    move/from16 v0, v16

    invoke-virtual {v8, v0, v15}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/widget/TextView;->setLetterSpacing(F)V

    .line 2883
    :cond_8
    const/16 v15, 0xf

    invoke-virtual {v8, v15}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v15

    if-eqz v15, :cond_9

    .line 2885
    const/16 v15, 0xf

    .line 2884
    invoke-virtual {v8, v15}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/widget/TextView;->setFontFeatureSettings(Ljava/lang/String;)V

    .line 2888
    :cond_9
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 2825
    return-void
.end method

.method public setTextColor(I)V
    .locals 1
    .param p1, "color"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 3218
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TextView;->mTextColor:Landroid/content/res/ColorStateList;

    .line 3219
    invoke-direct {p0}, Landroid/widget/TextView;->updateTextColors()V

    .line 3217
    return-void
.end method

.method public setTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "colors"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 3233
    if-nez p1, :cond_0

    .line 3234
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3237
    :cond_0
    iput-object p1, p0, Landroid/widget/TextView;->mTextColor:Landroid/content/res/ColorStateList;

    .line 3238
    invoke-direct {p0}, Landroid/widget/TextView;->updateTextColors()V

    .line 3232
    return-void
.end method

.method public setTextIsSelectable(Z)V
    .locals 2
    .param p1, "selectable"    # Z

    .prologue
    const/4 v0, 0x0

    .line 5655
    if-nez p1, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-nez v1, :cond_0

    return-void

    .line 5657
    :cond_0
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 5658
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-boolean v1, v1, Landroid/widget/Editor;->mTextIsSelectable:Z

    if-ne v1, p1, :cond_1

    return-void

    .line 5660
    :cond_1
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iput-boolean p1, v1, Landroid/widget/Editor;->mTextIsSelectable:Z

    .line 5661
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setFocusableInTouchMode(Z)V

    .line 5662
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 5663
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 5664
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setLongClickable(Z)V

    .line 5668
    if-eqz p1, :cond_2

    invoke-static {}, Landroid/text/method/ArrowKeyMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    :cond_2
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 5669
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    if-eqz p1, :cond_3

    sget-object v0, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    :goto_0
    invoke-virtual {p0, v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 5672
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->prepareCursorControllers()V

    .line 5654
    return-void

    .line 5669
    :cond_3
    sget-object v0, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    goto :goto_0
.end method

.method public final setTextKeepState(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 4296
    iget-object v0, p0, Landroid/widget/TextView;->mBufferType:Landroid/widget/TextView$BufferType;

    invoke-virtual {p0, p1, v0}, Landroid/widget/TextView;->setTextKeepState(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 4295
    return-void
.end method

.method public final setTextKeepState(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 7
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "type"    # Landroid/widget/TextView$BufferType;

    .prologue
    const/4 v6, 0x0

    .line 4525
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v2

    .line 4526
    .local v2, "start":I
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .line 4527
    .local v0, "end":I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 4529
    .local v1, "len":I
    invoke-virtual {p0, p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 4531
    if-gez v2, :cond_0

    if-ltz v0, :cond_1

    .line 4532
    :cond_0
    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v3, v3, Landroid/text/Spannable;

    if-eqz v3, :cond_1

    .line 4533
    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v3, Landroid/text/Spannable;

    .line 4534
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 4535
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 4533
    invoke-static {v3, v4, v5}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 4524
    :cond_1
    return-void
.end method

.method public setTextLocale(Ljava/util/Locale;)V
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 2909
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/TextView;->mLocaleChanged:Z

    .line 2910
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTextLocale(Ljava/util/Locale;)V

    .line 2908
    return-void
.end method

.method public setTextScaleX(F)V
    .locals 1
    .param p1, "size"    # F
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 3018
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTextScaleX()F

    move-result v0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 3019
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/TextView;->mUserSetTextScaleX:Z

    .line 3020
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTextScaleX(F)V

    .line 3022
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    .line 3023
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    .line 3024
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 3025
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 3017
    :cond_0
    return-void
.end method

.method public setTextSize(F)V
    .locals 1
    .param p1, "size"    # F
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 2961
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2960
    return-void
.end method

.method public setTextSize(IF)V
    .locals 4
    .param p1, "unit"    # I
    .param p2, "size"    # F

    .prologue
    .line 2974
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2977
    .local v0, "c":Landroid/content/Context;
    if-nez v0, :cond_0

    .line 2978
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    .line 2987
    .local v1, "r":Landroid/content/res/Resources;
    :goto_0
    iget-boolean v2, p0, Landroid/widget/TextView;->isFontSizeEnlarge:Z

    iget v3, p0, Landroid/widget/TextView;->textSizeEnlargeMode:I

    .line 2986
    invoke-static {p1, p2, v1, v2, v3}, Lcom/letv/leui/util/LeTypedValue;->applyDimension(IFLandroid/content/res/Resources;ZI)F

    move-result v2

    invoke-direct {p0, v2}, Landroid/widget/TextView;->setRawTextSize(F)V

    .line 2973
    return-void

    .line 2980
    .end local v1    # "r":Landroid/content/res/Resources;
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .restart local v1    # "r":Landroid/content/res/Resources;
    goto :goto_0
.end method

.method public final setTransformationMethod(Landroid/text/method/TransformationMethod;)V
    .locals 4
    .param p1, "method"    # Landroid/text/method/TransformationMethod;

    .prologue
    const/4 v2, 0x0

    .line 1943
    iget-object v1, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    if-ne p1, v1, :cond_0

    .line 1946
    return-void

    .line 1948
    :cond_0
    iget-object v1, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    if-eqz v1, :cond_1

    .line 1949
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v1, v1, Landroid/text/Spannable;

    if-eqz v1, :cond_1

    .line 1950
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v1, Landroid/text/Spannable;

    iget-object v3, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    invoke-interface {v1, v3}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 1954
    :cond_1
    iput-object p1, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    .line 1956
    instance-of v1, p1, Landroid/text/method/TransformationMethod2;

    if-eqz v1, :cond_5

    move-object v0, p1

    .line 1957
    check-cast v0, Landroid/text/method/TransformationMethod2;

    .line 1958
    .local v0, "method2":Landroid/text/method/TransformationMethod2;
    invoke-virtual {p0}, Landroid/widget/TextView;->isTextSelectable()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v1, v1, Landroid/text/Editable;

    if-eqz v1, :cond_4

    :cond_2
    move v1, v2

    :goto_0
    iput-boolean v1, p0, Landroid/widget/TextView;->mAllowTransformationLengthChange:Z

    .line 1959
    iget-boolean v1, p0, Landroid/widget/TextView;->mAllowTransformationLengthChange:Z

    invoke-interface {v0, v1}, Landroid/text/method/TransformationMethod2;->setLengthChangesAllowed(Z)V

    .line 1964
    .end local v0    # "method2":Landroid/text/method/TransformationMethod2;
    :goto_1
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1966
    invoke-virtual {p0}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1967
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->notifyViewAccessibilityStateChangedIfNeeded(I)V

    .line 1942
    :cond_3
    return-void

    .line 1958
    .restart local v0    # "method2":Landroid/text/method/TransformationMethod2;
    :cond_4
    const/4 v1, 0x1

    goto :goto_0

    .line 1961
    .end local v0    # "method2":Landroid/text/method/TransformationMethod2;
    :cond_5
    iput-boolean v2, p0, Landroid/widget/TextView;->mAllowTransformationLengthChange:Z

    goto :goto_1
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 1
    .param p1, "tf"    # Landroid/graphics/Typeface;

    .prologue
    .line 3044
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 3045
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 3047
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    .line 3048
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    .line 3049
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 3050
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 3043
    :cond_0
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;I)V
    .locals 6
    .param p1, "tf"    # Landroid/graphics/Typeface;
    .param p2, "style"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1673
    if-lez p2, :cond_4

    .line 1674
    if-nez p1, :cond_1

    .line 1675
    invoke-static {p2}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object p1

    .line 1680
    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1682
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Typeface;->getStyle()I

    move-result v1

    .line 1683
    .local v1, "typefaceStyle":I
    :goto_1
    not-int v4, v1

    and-int v0, p2, v4

    .line 1684
    .local v0, "need":I
    iget-object v4, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    and-int/lit8 v5, v0, 0x1

    if-eqz v5, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v4, v2}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 1685
    iget-object v4, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_3

    const/high16 v2, -0x41800000    # -0.25f

    :goto_2
    invoke-virtual {v4, v2}, Landroid/text/TextPaint;->setTextSkewX(F)V

    .line 1672
    .end local v0    # "need":I
    .end local v1    # "typefaceStyle":I
    :goto_3
    return-void

    .line 1677
    :cond_1
    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    goto :goto_0

    .line 1682
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "typefaceStyle":I
    goto :goto_1

    .restart local v0    # "need":I
    :cond_3
    move v2, v3

    .line 1685
    goto :goto_2

    .line 1687
    .end local v0    # "need":I
    .end local v1    # "typefaceStyle":I
    :cond_4
    iget-object v4, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v4, v2}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 1688
    iget-object v2, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextSkewX(F)V

    .line 1689
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_3
.end method

.method public final setUndoManager(Landroid/content/UndoManager;Ljava/lang/String;)V
    .locals 2
    .param p1, "undoManager"    # Landroid/content/UndoManager;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 1800
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setWidth(I)V
    .locals 1
    .param p1, "pixels"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v0, 0x2

    .line 3941
    iput p1, p0, Landroid/widget/TextView;->mMinWidth:I

    iput p1, p0, Landroid/widget/TextView;->mMaxWidth:I

    .line 3942
    iput v0, p0, Landroid/widget/TextView;->mMinWidthMode:I

    iput v0, p0, Landroid/widget/TextView;->mMaxWidthMode:I

    .line 3944
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 3945
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 3940
    return-void
.end method

.method spanChange(Landroid/text/Spanned;Ljava/lang/Object;IIII)V
    .locals 8
    .param p1, "buf"    # Landroid/text/Spanned;
    .param p2, "what"    # Ljava/lang/Object;
    .param p3, "oldStart"    # I
    .param p4, "newStart"    # I
    .param p5, "oldEnd"    # I
    .param p6, "newEnd"    # I

    .prologue
    const/4 v7, 0x1

    .line 8570
    const/4 v4, 0x0

    .line 8571
    .local v4, "selChanged":Z
    const/4 v3, -0x1

    .local v3, "newSelStart":I
    const/4 v2, -0x1

    .line 8573
    .local v2, "newSelEnd":I
    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-nez v5, :cond_14

    const/4 v1, 0x0

    .line 8575
    :goto_0
    sget-object v5, Landroid/text/Selection;->SELECTION_END:Ljava/lang/Object;

    if-ne p2, v5, :cond_1

    .line 8576
    const/4 v4, 0x1

    .line 8577
    move v2, p4

    .line 8579
    if-gez p3, :cond_0

    if-ltz p4, :cond_1

    .line 8580
    :cond_0
    invoke-static {p1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v5

    invoke-direct {p0, v5, p3, p4}, Landroid/widget/TextView;->invalidateCursor(III)V

    .line 8581
    invoke-direct {p0}, Landroid/widget/TextView;->checkForResize()V

    .line 8582
    invoke-direct {p0}, Landroid/widget/TextView;->registerForPreDraw()V

    .line 8583
    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v5, :cond_1

    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v5}, Landroid/widget/Editor;->makeBlink()V

    .line 8587
    :cond_1
    sget-object v5, Landroid/text/Selection;->SELECTION_START:Ljava/lang/Object;

    if-ne p2, v5, :cond_3

    .line 8588
    const/4 v4, 0x1

    .line 8589
    move v3, p4

    .line 8591
    if-gez p3, :cond_2

    if-ltz p4, :cond_3

    .line 8592
    :cond_2
    invoke-static {p1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    .line 8593
    .local v0, "end":I
    invoke-direct {p0, v0, p3, p4}, Landroid/widget/TextView;->invalidateCursor(III)V

    .line 8597
    .end local v0    # "end":I
    :cond_3
    if-eqz v4, :cond_7

    .line 8598
    iput-boolean v7, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    .line 8599
    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v5, :cond_4

    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v5

    if-eqz v5, :cond_15

    .line 8601
    :cond_4
    :goto_1
    invoke-interface {p1, p2}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v5

    and-int/lit16 v5, v5, 0x200

    if-nez v5, :cond_7

    .line 8602
    if-gez v3, :cond_5

    .line 8603
    invoke-static {p1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v3

    .line 8605
    :cond_5
    if-gez v2, :cond_6

    .line 8606
    invoke-static {p1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v2

    .line 8608
    :cond_6
    invoke-virtual {p0, v3, v2}, Landroid/widget/TextView;->onSelectionChanged(II)V

    .line 8612
    :cond_7
    instance-of v5, p2, Landroid/text/style/UpdateAppearance;

    if-nez v5, :cond_8

    instance-of v5, p2, Landroid/text/style/ParagraphStyle;

    if-nez v5, :cond_8

    .line 8613
    instance-of v5, p2, Landroid/text/style/CharacterStyle;

    .line 8612
    if-eqz v5, :cond_b

    .line 8614
    :cond_8
    if-eqz v1, :cond_9

    iget v5, v1, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    if-nez v5, :cond_16

    .line 8615
    :cond_9
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 8616
    iput-boolean v7, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    .line 8617
    invoke-direct {p0}, Landroid/widget/TextView;->checkForResize()V

    .line 8621
    :goto_2
    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v5, :cond_b

    .line 8622
    if-ltz p3, :cond_a

    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v6, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v5, v6, p3, p5}, Landroid/widget/Editor;->invalidateTextDisplayList(Landroid/text/Layout;II)V

    .line 8623
    :cond_a
    if-ltz p4, :cond_b

    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v6, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v5, v6, p4, p6}, Landroid/widget/Editor;->invalidateTextDisplayList(Landroid/text/Layout;II)V

    .line 8627
    :cond_b
    invoke-static {p1, p2}, Landroid/text/method/MetaKeyKeyListener;->isMetaTracker(Ljava/lang/CharSequence;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 8628
    iput-boolean v7, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    .line 8629
    if-eqz v1, :cond_c

    invoke-static {p1, p2}, Landroid/text/method/MetaKeyKeyListener;->isSelectingMetaTracker(Ljava/lang/CharSequence;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 8630
    iput-boolean v7, v1, Landroid/widget/Editor$InputMethodState;->mSelectionModeChanged:Z

    .line 8633
    :cond_c
    invoke-static {p1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v5

    if-ltz v5, :cond_e

    .line 8634
    if-eqz v1, :cond_d

    iget v5, v1, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    if-nez v5, :cond_17

    .line 8635
    :cond_d
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidateCursor()V

    .line 8642
    :cond_e
    :goto_3
    instance-of v5, p2, Landroid/text/ParcelableSpan;

    if-eqz v5, :cond_12

    .line 8645
    if-eqz v1, :cond_12

    iget-object v5, v1, Landroid/widget/Editor$InputMethodState;->mExtractedTextRequest:Landroid/view/inputmethod/ExtractedTextRequest;

    if-eqz v5, :cond_12

    .line 8646
    iget v5, v1, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    if-eqz v5, :cond_18

    .line 8647
    if-ltz p3, :cond_10

    .line 8648
    iget v5, v1, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    if-le v5, p3, :cond_f

    .line 8649
    iput p3, v1, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    .line 8651
    :cond_f
    iget v5, v1, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    if-le v5, p5, :cond_10

    .line 8652
    iput p5, v1, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    .line 8655
    :cond_10
    if-ltz p4, :cond_12

    .line 8656
    iget v5, v1, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    if-le v5, p4, :cond_11

    .line 8657
    iput p4, v1, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    .line 8659
    :cond_11
    iget v5, v1, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    if-le v5, p6, :cond_12

    .line 8660
    iput p6, v1, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    .line 8672
    :cond_12
    :goto_4
    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v5, :cond_13

    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v5, v5, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    if-eqz v5, :cond_13

    if-gez p4, :cond_13

    .line 8673
    instance-of v5, p2, Landroid/text/style/SpellCheckSpan;

    .line 8672
    if-eqz v5, :cond_13

    .line 8674
    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v5, v5, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    check-cast p2, Landroid/text/style/SpellCheckSpan;

    .end local p2    # "what":Ljava/lang/Object;
    invoke-virtual {v5, p2}, Landroid/widget/SpellChecker;->onSpellCheckSpanRemoved(Landroid/text/style/SpellCheckSpan;)V

    .line 8566
    :cond_13
    return-void

    .line 8573
    .restart local p2    # "what":Ljava/lang/Object;
    :cond_14
    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v1, v5, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    .local v1, "ims":Landroid/widget/Editor$InputMethodState;
    goto/16 :goto_0

    .line 8599
    .end local v1    # "ims":Landroid/widget/Editor$InputMethodState;
    :cond_15
    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iput-boolean v7, v5, Landroid/widget/Editor;->mSelectionMoved:Z

    goto/16 :goto_1

    .line 8619
    :cond_16
    iput-boolean v7, v1, Landroid/widget/Editor$InputMethodState;->mContentChanged:Z

    goto/16 :goto_2

    .line 8637
    :cond_17
    iput-boolean v7, v1, Landroid/widget/Editor$InputMethodState;->mCursorChanged:Z

    goto :goto_3

    .line 8667
    :cond_18
    iput-boolean v7, v1, Landroid/widget/Editor$InputMethodState;->mContentChanged:Z

    goto :goto_4
.end method

.method public startActivityWithUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 10920
    return-void
.end method

.method public startSelectionMode()Z
    .locals 1

    .prologue
    .line 10942
    const/4 v0, 0x0

    .line 10943
    .local v0, "handled":Z
    return v0
.end method

.method protected stopTextActionMode()V
    .locals 1

    .prologue
    .line 9928
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    .line 9929
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->stopTextActionMode()V

    .line 9927
    :cond_0
    return-void
.end method

.method textCanBeSelected()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 9203
    iget-object v1, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    invoke-interface {v1}, Landroid/text/method/MovementMethod;->canSelectArbitrarily()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 9204
    invoke-virtual {p0}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v1

    if-nez v1, :cond_2

    .line 9205
    invoke-virtual {p0}, Landroid/widget/TextView;->isTextSelectable()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v1, v1, Landroid/text/Spannable;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->isEnabled()Z

    move-result v0

    .line 9204
    :cond_0
    :goto_0
    return v0

    .line 9203
    :cond_1
    return v0

    .line 9204
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method updateAfterEdit()V
    .locals 3

    .prologue
    .line 8516
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 8517
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    .line 8519
    .local v0, "curs":I
    if-gez v0, :cond_0

    iget v1, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v1, v1, 0x70

    const/16 v2, 0x50

    if-ne v1, v2, :cond_1

    .line 8520
    :cond_0
    invoke-direct {p0}, Landroid/widget/TextView;->registerForPreDraw()V

    .line 8523
    :cond_1
    invoke-direct {p0}, Landroid/widget/TextView;->checkForResize()V

    .line 8525
    if-ltz v0, :cond_3

    .line 8526
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    .line 8527
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->makeBlink()V

    .line 8528
    :cond_2
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->bringPointIntoView(I)Z

    .line 8515
    :cond_3
    return-void
.end method

.method public updateHandleView()V
    .locals 1

    .prologue
    .line 7446
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->hasSelection()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7447
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionModifierCursorController;->hide()V

    .line 7448
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionModifierCursorController;->show()V

    .line 7445
    :cond_0
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 5
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 5504
    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v1

    .line 5505
    .local v1, "verified":Z
    if-nez v1, :cond_1

    iget-object v2, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-eqz v2, :cond_1

    .line 5506
    iget-object v2, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v3, v2, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    array-length v4, v3

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v0, v3, v2

    .line 5507
    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    if-ne p1, v0, :cond_0

    .line 5508
    const/4 v2, 0x1

    return v2

    .line 5506
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5512
    .end local v0    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_1
    return v1
.end method

.method protected viewClicked(Landroid/view/inputmethod/InputMethodManager;)V
    .locals 0
    .param p1, "imm"    # Landroid/view/inputmethod/InputMethodManager;

    .prologue
    .line 10218
    if-eqz p1, :cond_0

    .line 10219
    invoke-virtual {p1, p0}, Landroid/view/inputmethod/InputMethodManager;->viewClicked(Landroid/view/View;)V

    .line 10217
    :cond_0
    return-void
.end method

.method viewportToContentHorizontalOffset()I
    .locals 2

    .prologue
    .line 8042
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v0

    iget v1, p0, Landroid/widget/TextView;->mScrollX:I

    sub-int/2addr v0, v1

    return v0
.end method

.method viewportToContentVerticalOffset()I
    .locals 3

    .prologue
    .line 8046
    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v1

    iget v2, p0, Landroid/widget/TextView;->mScrollY:I

    sub-int v0, v1, v2

    .line 8047
    .local v0, "offset":I
    iget v1, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v1, v1, 0x70

    const/16 v2, 0x30

    if-eq v1, v2, :cond_0

    .line 8048
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v1

    add-int/2addr v0, v1

    .line 8050
    :cond_0
    return v0
.end method
