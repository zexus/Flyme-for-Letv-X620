.class public Lcom/letv/leui/widget/LeTextView;
.super Landroid/widget/TextView;
.source "LeTextView.java"


# static fields
.field static final RUN_LENGTH_MASK:I = 0x3ffffff

.field static final RUN_LEVEL_SHIFT:I = 0x1a

.field static final RUN_RTL_FLAG:I = 0x4000000


# instance fields
.field protected mTextBufferType:Landroid/widget/TextView$BufferType;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 16
    sget-object v0, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    iput-object v0, p0, Lcom/letv/leui/widget/LeTextView;->mTextBufferType:Landroid/widget/TextView$BufferType;

    .line 20
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/letv/leui/widget/LeTextView;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    sget-object v0, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    iput-object v0, p0, Lcom/letv/leui/widget/LeTextView;->mTextBufferType:Landroid/widget/TextView$BufferType;

    .line 25
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/letv/leui/widget/LeTextView;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 16
    sget-object v0, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    iput-object v0, p0, Lcom/letv/leui/widget/LeTextView;->mTextBufferType:Landroid/widget/TextView$BufferType;

    .line 30
    invoke-direct {p0, p1, p2, p3}, Lcom/letv/leui/widget/LeTextView;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 16
    sget-object v0, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    iput-object v0, p0, Lcom/letv/leui/widget/LeTextView;->mTextBufferType:Landroid/widget/TextView$BufferType;

    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcom/letv/leui/widget/LeTextView;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 39
    iput-object p1, p0, Lcom/letv/leui/widget/LeTextView;->mContext:Landroid/content/Context;

    .line 38
    return-void
.end method


# virtual methods
.method protected final addLinks(Landroid/text/Spannable;I)Z
    .locals 1
    .param p1, "text"    # Landroid/text/Spannable;
    .param p2, "mask"    # I

    .prologue
    .line 71
    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Lcom/letv/leui/util/LeLinkify;->addLinks(Landroid/text/Spannable;IZ)Z

    move-result v0

    return v0
.end method

.method public copyText()V
    .locals 1

    .prologue
    .line 75
    const v0, 0x1020021

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeTextView;->onTextContextMenuItem(I)Z

    .line 74
    return-void
.end method

.method public destroySelectionMode()V
    .locals 0

    .prologue
    .line 45
    return-void
.end method

.method protected hideControllers()V
    .locals 0

    .prologue
    .line 52
    return-void
.end method

.method public isPointInView(FFF)Z
    .locals 2
    .param p1, "localX"    # F
    .param p2, "localY"    # F
    .param p3, "slop"    # F

    .prologue
    const/4 v0, 0x0

    .line 66
    neg-float v1, p3

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_0

    neg-float v1, p3

    cmpl-float v1, p2, v1

    if-ltz v1, :cond_0

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeTextView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, p3

    cmpg-float v1, p1, v1

    if-gez v1, :cond_0

    .line 67
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeTextView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, p3

    cmpg-float v1, p2, v1

    if-gez v1, :cond_0

    const/4 v0, 0x1

    .line 66
    :cond_0
    return v0
.end method

.method public selectAll()V
    .locals 1

    .prologue
    .line 79
    const v0, 0x102001f

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeTextView;->onTextContextMenuItem(I)Z

    .line 78
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "type"    # Landroid/widget/TextView$BufferType;

    .prologue
    .line 60
    sget-object v0, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    if-ne p2, v0, :cond_0

    .line 61
    sget-object p2, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    .line 60
    .end local p2    # "type":Landroid/widget/TextView$BufferType;
    :cond_0
    iput-object p2, p0, Lcom/letv/leui/widget/LeTextView;->mTextBufferType:Landroid/widget/TextView$BufferType;

    .line 62
    iget-object v0, p0, Lcom/letv/leui/widget/LeTextView;->mTextBufferType:Landroid/widget/TextView$BufferType;

    invoke-super {p0, p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 59
    return-void
.end method
