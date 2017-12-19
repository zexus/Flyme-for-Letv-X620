.class Lcom/letv/leui/widget/LeActivationEditText$SingleEditText;
.super Landroid/widget/EditText;
.source "LeActivationEditText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/widget/LeActivationEditText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SingleEditText"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/widget/LeActivationEditText;


# direct methods
.method public constructor <init>(Lcom/letv/leui/widget/LeActivationEditText;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/letv/leui/widget/LeActivationEditText;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 342
    iput-object p1, p0, Lcom/letv/leui/widget/LeActivationEditText$SingleEditText;->this$0:Lcom/letv/leui/widget/LeActivationEditText;

    .line 343
    invoke-direct {p0, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 342
    return-void
.end method

.method public constructor <init>(Lcom/letv/leui/widget/LeActivationEditText;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "this$0"    # Lcom/letv/leui/widget/LeActivationEditText;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 346
    iput-object p1, p0, Lcom/letv/leui/widget/LeActivationEditText$SingleEditText;->this$0:Lcom/letv/leui/widget/LeActivationEditText;

    .line 347
    invoke-direct {p0, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 346
    return-void
.end method

.method public constructor <init>(Lcom/letv/leui/widget/LeActivationEditText;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/letv/leui/widget/LeActivationEditText;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "defStyle"    # I

    .prologue
    .line 350
    iput-object p1, p0, Lcom/letv/leui/widget/LeActivationEditText$SingleEditText;->this$0:Lcom/letv/leui/widget/LeActivationEditText;

    .line 351
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 350
    return-void
.end method


# virtual methods
.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 4
    .param p1, "focused"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 382
    invoke-super {p0, p1, p2, p3}, Landroid/widget/EditText;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 384
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeActivationEditText$SingleEditText;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 385
    .local v0, "tagId":I
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/letv/leui/widget/LeActivationEditText$SingleEditText;->this$0:Lcom/letv/leui/widget/LeActivationEditText;

    invoke-static {v1}, Lcom/letv/leui/widget/LeActivationEditText;->-get2(Lcom/letv/leui/widget/LeActivationEditText;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 386
    iget-object v1, p0, Lcom/letv/leui/widget/LeActivationEditText$SingleEditText;->this$0:Lcom/letv/leui/widget/LeActivationEditText;

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeActivationEditText$SingleEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/letv/leui/widget/LeActivationEditText;->-wrap0(Lcom/letv/leui/widget/LeActivationEditText;Ljava/lang/CharSequence;I)V

    .line 381
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 392
    const/16 v1, 0x43

    if-ne p1, v1, :cond_0

    .line 393
    iget-object v1, p0, Lcom/letv/leui/widget/LeActivationEditText$SingleEditText;->this$0:Lcom/letv/leui/widget/LeActivationEditText;

    invoke-static {v1}, Lcom/letv/leui/widget/LeActivationEditText;->-get2(Lcom/letv/leui/widget/LeActivationEditText;)I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeActivationEditText$SingleEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 394
    iget-object v1, p0, Lcom/letv/leui/widget/LeActivationEditText$SingleEditText;->this$0:Lcom/letv/leui/widget/LeActivationEditText;

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeActivationEditText$SingleEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Lcom/letv/leui/widget/LeActivationEditText;->-wrap0(Lcom/letv/leui/widget/LeActivationEditText;Ljava/lang/CharSequence;I)V

    .line 402
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1

    .line 395
    :cond_1
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeActivationEditText$SingleEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 396
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeActivationEditText$SingleEditText;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 397
    .local v0, "tagId":I
    iget-object v1, p0, Lcom/letv/leui/widget/LeActivationEditText$SingleEditText;->this$0:Lcom/letv/leui/widget/LeActivationEditText;

    invoke-static {v1}, Lcom/letv/leui/widget/LeActivationEditText;->-get3(Lcom/letv/leui/widget/LeActivationEditText;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 398
    iget-object v1, p0, Lcom/letv/leui/widget/LeActivationEditText$SingleEditText;->this$0:Lcom/letv/leui/widget/LeActivationEditText;

    invoke-static {v1}, Lcom/letv/leui/widget/LeActivationEditText;->-get3(Lcom/letv/leui/widget/LeActivationEditText;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "lengthBefore"    # I
    .param p4, "lengthAfter"    # I

    .prologue
    const/4 v2, 0x0

    .line 357
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/EditText;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 360
    iget-object v0, p0, Lcom/letv/leui/widget/LeActivationEditText$SingleEditText;->this$0:Lcom/letv/leui/widget/LeActivationEditText;

    invoke-static {v0}, Lcom/letv/leui/widget/LeActivationEditText;->-get2(Lcom/letv/leui/widget/LeActivationEditText;)I

    move-result v0

    if-nez v0, :cond_3

    if-ge p3, p4, :cond_3

    .line 361
    iget-object v0, p0, Lcom/letv/leui/widget/LeActivationEditText$SingleEditText;->this$0:Lcom/letv/leui/widget/LeActivationEditText;

    invoke-static {v0}, Lcom/letv/leui/widget/LeActivationEditText;->-get1(Lcom/letv/leui/widget/LeActivationEditText;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 366
    :cond_0
    :goto_0
    if-ge p3, p4, :cond_1

    .line 367
    iget-object v0, p0, Lcom/letv/leui/widget/LeActivationEditText$SingleEditText;->this$0:Lcom/letv/leui/widget/LeActivationEditText;

    invoke-static {v0}, Lcom/letv/leui/widget/LeActivationEditText;->-get3(Lcom/letv/leui/widget/LeActivationEditText;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 368
    iget-object v0, p0, Lcom/letv/leui/widget/LeActivationEditText$SingleEditText;->this$0:Lcom/letv/leui/widget/LeActivationEditText;

    invoke-static {v0}, Lcom/letv/leui/widget/LeActivationEditText;->-get2(Lcom/letv/leui/widget/LeActivationEditText;)I

    move-result v0

    iget-object v1, p0, Lcom/letv/leui/widget/LeActivationEditText$SingleEditText;->this$0:Lcom/letv/leui/widget/LeActivationEditText;

    invoke-static {v1}, Lcom/letv/leui/widget/LeActivationEditText;->-get0(Lcom/letv/leui/widget/LeActivationEditText;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_4

    .line 369
    iget-object v0, p0, Lcom/letv/leui/widget/LeActivationEditText$SingleEditText;->this$0:Lcom/letv/leui/widget/LeActivationEditText;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/letv/leui/widget/LeActivationEditText;->-wrap0(Lcom/letv/leui/widget/LeActivationEditText;Ljava/lang/CharSequence;I)V

    .line 375
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/letv/leui/widget/LeActivationEditText$SingleEditText;->this$0:Lcom/letv/leui/widget/LeActivationEditText;

    invoke-static {v0}, Lcom/letv/leui/widget/LeActivationEditText;->-get5(Lcom/letv/leui/widget/LeActivationEditText;)Lcom/letv/leui/widget/LeActivationEditText$OnTextChangeListener;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/letv/leui/widget/LeActivationEditText$SingleEditText;->this$0:Lcom/letv/leui/widget/LeActivationEditText;

    invoke-static {v0}, Lcom/letv/leui/widget/LeActivationEditText;->-get4(Lcom/letv/leui/widget/LeActivationEditText;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 356
    :cond_2
    :goto_2
    return-void

    .line 362
    :cond_3
    iget-object v0, p0, Lcom/letv/leui/widget/LeActivationEditText$SingleEditText;->this$0:Lcom/letv/leui/widget/LeActivationEditText;

    invoke-static {v0}, Lcom/letv/leui/widget/LeActivationEditText;->-get2(Lcom/letv/leui/widget/LeActivationEditText;)I

    move-result v0

    if-nez v0, :cond_0

    if-nez p4, :cond_0

    .line 363
    iget-object v0, p0, Lcom/letv/leui/widget/LeActivationEditText$SingleEditText;->this$0:Lcom/letv/leui/widget/LeActivationEditText;

    invoke-static {v0}, Lcom/letv/leui/widget/LeActivationEditText;->-get1(Lcom/letv/leui/widget/LeActivationEditText;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 371
    :cond_4
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeActivationEditText$SingleEditText;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeActivationEditText$SingleEditText;->setSelection(I)V

    goto :goto_1

    .line 376
    :cond_5
    iget-object v0, p0, Lcom/letv/leui/widget/LeActivationEditText$SingleEditText;->this$0:Lcom/letv/leui/widget/LeActivationEditText;

    invoke-static {v0}, Lcom/letv/leui/widget/LeActivationEditText;->-get5(Lcom/letv/leui/widget/LeActivationEditText;)Lcom/letv/leui/widget/LeActivationEditText$OnTextChangeListener;

    move-result-object v0

    iget-object v1, p0, Lcom/letv/leui/widget/LeActivationEditText$SingleEditText;->this$0:Lcom/letv/leui/widget/LeActivationEditText;

    invoke-static {v1}, Lcom/letv/leui/widget/LeActivationEditText;->-get3(Lcom/letv/leui/widget/LeActivationEditText;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/letv/leui/widget/LeActivationEditText$OnTextChangeListener;->onTextChange(Ljava/lang/String;)V

    goto :goto_2
.end method
