.class Lcom/letv/leui/widget/slide/LeSlidePager$MyAccessibilityDelegate;
.super Landroid/view/View$AccessibilityDelegate;
.source "LeSlidePager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/widget/slide/LeSlidePager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyAccessibilityDelegate"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/widget/slide/LeSlidePager;


# direct methods
.method constructor <init>(Lcom/letv/leui/widget/slide/LeSlidePager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/letv/leui/widget/slide/LeSlidePager;

    .prologue
    .line 2718
    iput-object p1, p0, Lcom/letv/leui/widget/slide/LeSlidePager$MyAccessibilityDelegate;->this$0:Lcom/letv/leui/widget/slide/LeSlidePager;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method

.method private canScroll()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2770
    iget-object v2, p0, Lcom/letv/leui/widget/slide/LeSlidePager$MyAccessibilityDelegate;->this$0:Lcom/letv/leui/widget/slide/LeSlidePager;

    invoke-static {v2}, Lcom/letv/leui/widget/slide/LeSlidePager;->-get1(Lcom/letv/leui/widget/slide/LeSlidePager;)Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/letv/leui/widget/slide/LeSlidePager$MyAccessibilityDelegate;->this$0:Lcom/letv/leui/widget/slide/LeSlidePager;

    invoke-static {v2}, Lcom/letv/leui/widget/slide/LeSlidePager;->-get1(Lcom/letv/leui/widget/slide/LeSlidePager;)Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;->getCount()I

    move-result v2

    if-le v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 3
    .param p1, "host"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 2722
    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2723
    const-class v1, Lcom/letv/leui/widget/slide/LeSlidePager;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 2724
    invoke-static {}, Landroid/view/accessibility/AccessibilityRecord;->obtain()Landroid/view/accessibility/AccessibilityRecord;

    move-result-object v0

    .line 2725
    .local v0, "recordCompat":Landroid/view/accessibility/AccessibilityRecord;
    invoke-direct {p0}, Lcom/letv/leui/widget/slide/LeSlidePager$MyAccessibilityDelegate;->canScroll()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityRecord;->setScrollable(Z)V

    .line 2726
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v1

    const/16 v2, 0x1000

    if-ne v1, v2, :cond_0

    .line 2727
    iget-object v1, p0, Lcom/letv/leui/widget/slide/LeSlidePager$MyAccessibilityDelegate;->this$0:Lcom/letv/leui/widget/slide/LeSlidePager;

    invoke-static {v1}, Lcom/letv/leui/widget/slide/LeSlidePager;->-get1(Lcom/letv/leui/widget/slide/LeSlidePager;)Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2728
    iget-object v1, p0, Lcom/letv/leui/widget/slide/LeSlidePager$MyAccessibilityDelegate;->this$0:Lcom/letv/leui/widget/slide/LeSlidePager;

    invoke-static {v1}, Lcom/letv/leui/widget/slide/LeSlidePager;->-get1(Lcom/letv/leui/widget/slide/LeSlidePager;)Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityRecord;->setItemCount(I)V

    .line 2729
    iget-object v1, p0, Lcom/letv/leui/widget/slide/LeSlidePager$MyAccessibilityDelegate;->this$0:Lcom/letv/leui/widget/slide/LeSlidePager;

    invoke-static {v1}, Lcom/letv/leui/widget/slide/LeSlidePager;->-get2(Lcom/letv/leui/widget/slide/LeSlidePager;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityRecord;->setFromIndex(I)V

    .line 2730
    iget-object v1, p0, Lcom/letv/leui/widget/slide/LeSlidePager$MyAccessibilityDelegate;->this$0:Lcom/letv/leui/widget/slide/LeSlidePager;

    invoke-static {v1}, Lcom/letv/leui/widget/slide/LeSlidePager;->-get2(Lcom/letv/leui/widget/slide/LeSlidePager;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityRecord;->setToIndex(I)V

    .line 2721
    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2
    .param p1, "host"    # Landroid/view/View;
    .param p2, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 2736
    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2737
    const-class v0, Lcom/letv/leui/widget/slide/LeSlidePager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 2738
    invoke-direct {p0}, Lcom/letv/leui/widget/slide/LeSlidePager$MyAccessibilityDelegate;->canScroll()Z

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 2739
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager$MyAccessibilityDelegate;->this$0:Lcom/letv/leui/widget/slide/LeSlidePager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/slide/LeSlidePager;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2740
    const/16 v0, 0x1000

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2742
    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager$MyAccessibilityDelegate;->this$0:Lcom/letv/leui/widget/slide/LeSlidePager;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/slide/LeSlidePager;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2743
    const/16 v0, 0x2000

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2735
    :cond_1
    return-void
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 4
    .param p1, "host"    # Landroid/view/View;
    .param p2, "action"    # I
    .param p3, "args"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 2749
    invoke-super {p0, p1, p2, p3}, Landroid/view/View$AccessibilityDelegate;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2750
    return v2

    .line 2752
    :cond_0
    sparse-switch p2, :sswitch_data_0

    .line 2766
    return v3

    .line 2754
    :sswitch_0
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager$MyAccessibilityDelegate;->this$0:Lcom/letv/leui/widget/slide/LeSlidePager;

    invoke-virtual {v0, v2}, Lcom/letv/leui/widget/slide/LeSlidePager;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2755
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager$MyAccessibilityDelegate;->this$0:Lcom/letv/leui/widget/slide/LeSlidePager;

    iget-object v1, p0, Lcom/letv/leui/widget/slide/LeSlidePager$MyAccessibilityDelegate;->this$0:Lcom/letv/leui/widget/slide/LeSlidePager;

    invoke-static {v1}, Lcom/letv/leui/widget/slide/LeSlidePager;->-get2(Lcom/letv/leui/widget/slide/LeSlidePager;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/slide/LeSlidePager;->setCurrentItem(I)V

    .line 2756
    return v2

    .line 2758
    :cond_1
    return v3

    .line 2760
    :sswitch_1
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager$MyAccessibilityDelegate;->this$0:Lcom/letv/leui/widget/slide/LeSlidePager;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/slide/LeSlidePager;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2761
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager$MyAccessibilityDelegate;->this$0:Lcom/letv/leui/widget/slide/LeSlidePager;

    iget-object v1, p0, Lcom/letv/leui/widget/slide/LeSlidePager$MyAccessibilityDelegate;->this$0:Lcom/letv/leui/widget/slide/LeSlidePager;

    invoke-static {v1}, Lcom/letv/leui/widget/slide/LeSlidePager;->-get2(Lcom/letv/leui/widget/slide/LeSlidePager;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/slide/LeSlidePager;->setCurrentItem(I)V

    .line 2762
    return v2

    .line 2764
    :cond_2
    return v3

    .line 2752
    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_0
        0x2000 -> :sswitch_1
    .end sparse-switch
.end method
