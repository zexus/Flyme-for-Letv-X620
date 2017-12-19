.class public Lcom/letv/leui/widget/LeAutoFillEditText;
.super Lcom/letv/leui/widget/LeEditText;
.source "LeAutoFillEditText.java"


# instance fields
.field private mCurrSuggestion:Ljava/lang/CharSequence;

.field private mCurrText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/letv/leui/widget/LeEditText;-><init>(Landroid/content/Context;)V

    .line 9
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/letv/leui/widget/LeAutoFillEditText;->mCurrText:Ljava/lang/String;

    .line 11
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Lcom/letv/leui/widget/LeEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 9
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/letv/leui/widget/LeAutoFillEditText;->mCurrText:Ljava/lang/String;

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 20
    invoke-direct {p0, p1, p2, p3}, Lcom/letv/leui/widget/LeEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 9
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/letv/leui/widget/LeAutoFillEditText;->mCurrText:Ljava/lang/String;

    .line 19
    return-void
.end method


# virtual methods
.method public getSuggestion()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/letv/leui/widget/LeAutoFillEditText;->mCurrSuggestion:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTextWithoutSuggestionSubfix()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/letv/leui/widget/LeAutoFillEditText;->mCurrSuggestion:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    .line 33
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeAutoFillEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    return-object v0

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/LeAutoFillEditText;->mCurrText:Ljava/lang/String;

    return-object v0
.end method

.method public setTextWithSuggestion(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "suggestion"    # Ljava/lang/CharSequence;

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/letv/leui/widget/LeAutoFillEditText;->setTextWithSuggestion(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/text/TextWatcher;)V

    .line 39
    return-void
.end method

.method public setTextWithSuggestion(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/text/TextWatcher;)V
    .locals 4
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "suggestion"    # Ljava/lang/CharSequence;
    .param p3, "textWatcher"    # Landroid/text/TextWatcher;

    .prologue
    .line 54
    if-eqz p3, :cond_0

    .line 55
    invoke-virtual {p0, p3}, Lcom/letv/leui/widget/LeAutoFillEditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 58
    :cond_0
    if-eqz p1, :cond_1

    if-nez p2, :cond_3

    .line 60
    :cond_1
    if-eqz p3, :cond_2

    .line 61
    invoke-virtual {p0, p3}, Lcom/letv/leui/widget/LeAutoFillEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 63
    :cond_2
    return-void

    .line 59
    :cond_3
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 66
    iget-object v2, p0, Lcom/letv/leui/widget/LeAutoFillEditText;->mCurrSuggestion:Ljava/lang/CharSequence;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 67
    iput-object p2, p0, Lcom/letv/leui/widget/LeAutoFillEditText;->mCurrSuggestion:Ljava/lang/CharSequence;

    .line 70
    :cond_4
    iget-object v2, p0, Lcom/letv/leui/widget/LeAutoFillEditText;->mCurrText:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    .line 71
    .local v0, "curTextLength":I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 72
    .local v1, "textLength":I
    iget-object v2, p0, Lcom/letv/leui/widget/LeAutoFillEditText;->mCurrText:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 73
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/letv/leui/widget/LeAutoFillEditText;->mCurrText:Ljava/lang/String;

    .line 76
    :cond_5
    if-le v1, v0, :cond_6

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-gt v1, v2, :cond_6

    .line 77
    invoke-virtual {p0, p2}, Lcom/letv/leui/widget/LeAutoFillEditText;->setText(Ljava/lang/CharSequence;)V

    .line 78
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/letv/leui/widget/LeAutoFillEditText;->setSelection(II)V

    .line 81
    :cond_6
    if-eqz p3, :cond_7

    .line 82
    invoke-virtual {p0, p3}, Lcom/letv/leui/widget/LeAutoFillEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 52
    :cond_7
    return-void
.end method
