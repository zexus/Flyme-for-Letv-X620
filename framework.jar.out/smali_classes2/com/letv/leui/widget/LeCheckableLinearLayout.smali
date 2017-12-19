.class public Lcom/letv/leui/widget/LeCheckableLinearLayout;
.super Landroid/widget/LinearLayout;
.source "LeCheckableLinearLayout.java"

# interfaces
.implements Landroid/widget/Checkable;


# instance fields
.field private mChecked:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/letv/leui/widget/LeCheckableLinearLayout;->mChecked:Z

    .line 13
    return-void
.end method


# virtual methods
.method public isChecked()Z
    .locals 1

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/letv/leui/widget/LeCheckableLinearLayout;->mChecked:Z

    return v0
.end method

.method public setChecked(Z)V
    .locals 4
    .param p1, "checked"    # Z

    .prologue
    .line 31
    iget-boolean v3, p0, Lcom/letv/leui/widget/LeCheckableLinearLayout;->mChecked:Z

    if-eq v3, p1, :cond_1

    .line 32
    iput-boolean p1, p0, Lcom/letv/leui/widget/LeCheckableLinearLayout;->mChecked:Z

    .line 33
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeCheckableLinearLayout;->refreshDrawableState()V

    .line 34
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeCheckableLinearLayout;->getChildCount()I

    move-result v2

    .local v2, "len":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 35
    invoke-virtual {p0, v1}, Lcom/letv/leui/widget/LeCheckableLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 36
    .local v0, "child":Landroid/view/View;
    instance-of v3, v0, Landroid/widget/Checkable;

    if-eqz v3, :cond_0

    .line 37
    check-cast v0, Landroid/widget/Checkable;

    .end local v0    # "child":Landroid/view/View;
    invoke-interface {v0, p1}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 34
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 30
    .end local v1    # "i":I
    .end local v2    # "len":I
    :cond_1
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 21
    iget-boolean v0, p0, Lcom/letv/leui/widget/LeCheckableLinearLayout;->mChecked:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeCheckableLinearLayout;->setChecked(Z)V

    .line 20
    return-void

    .line 21
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
