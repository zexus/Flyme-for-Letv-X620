.class public Lcom/letv/leui/preference/LePassWordPreference;
.super Lcom/letv/leui/preference/LeEditTextPreference;
.source "LePassWordPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/leui/preference/LePassWordPreference$SavedState;
    }
.end annotation


# instance fields
.field checkBox:Landroid/widget/CheckBox;

.field checked:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/letv/leui/preference/LePassWordPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 27
    const v0, 0x11600c7

    invoke-direct {p0, p1, p2, v0}, Lcom/letv/leui/preference/LePassWordPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 23
    invoke-direct {p0, p1, p2, p3}, Lcom/letv/leui/preference/LeEditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    return-void
.end method

.method private getCheckedChangeListener()Landroid/widget/CompoundButton$OnCheckedChangeListener;
    .locals 1

    .prologue
    .line 67
    new-instance v0, Lcom/letv/leui/preference/LePassWordPreference$1;

    invoke-direct {v0, p0}, Lcom/letv/leui/preference/LePassWordPreference$1;-><init>(Lcom/letv/leui/preference/LePassWordPreference;)V

    return-object v0
.end method


# virtual methods
.method public getPwd()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/letv/leui/preference/LePassWordPreference;->mEditText:Landroid/widget/EditText;

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/letv/leui/preference/LePassWordPreference;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/letv/leui/preference/LePassWordPreference;->checkBox:Landroid/widget/CheckBox;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/letv/leui/preference/LePassWordPreference;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    goto :goto_0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 36
    invoke-super {p0, p1}, Lcom/letv/leui/preference/LeEditTextPreference;->onBindView(Landroid/view/View;)V

    .line 38
    const v0, 0x1020001

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/letv/leui/preference/LePassWordPreference;->checkBox:Landroid/widget/CheckBox;

    .line 40
    iget-object v0, p0, Lcom/letv/leui/preference/LePassWordPreference;->checkBox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/letv/leui/preference/LePassWordPreference;->checkBox:Landroid/widget/CheckBox;

    invoke-direct {p0}, Lcom/letv/leui/preference/LePassWordPreference;->getCheckedChangeListener()Landroid/widget/CompoundButton$OnCheckedChangeListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 42
    iget-object v0, p0, Lcom/letv/leui/preference/LePassWordPreference;->checkBox:Landroid/widget/CheckBox;

    iget-boolean v1, p0, Lcom/letv/leui/preference/LePassWordPreference;->checked:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/letv/leui/preference/LePassWordPreference;->mEditText:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    .line 46
    iget-object v0, p0, Lcom/letv/leui/preference/LePassWordPreference;->mEditText:Landroid/widget/EditText;

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 47
    iget-object v0, p0, Lcom/letv/leui/preference/LePassWordPreference;->checkBox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_1

    .line 48
    iget-object v0, p0, Lcom/letv/leui/preference/LePassWordPreference;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/letv/leui/preference/LePassWordPreference;->syncEditTextShow(Z)V

    .line 35
    :cond_1
    return-void

    .line 48
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 79
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/letv/leui/preference/LePassWordPreference$SavedState;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 84
    check-cast v0, Lcom/letv/leui/preference/LePassWordPreference$SavedState;

    .line 85
    .local v0, "myState":Lcom/letv/leui/preference/LePassWordPreference$SavedState;
    invoke-virtual {v0}, Lcom/letv/leui/preference/LePassWordPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lcom/letv/leui/preference/LeEditTextPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 86
    iget-object v1, p0, Lcom/letv/leui/preference/LePassWordPreference;->mEditText:Landroid/widget/EditText;

    iget-object v2, v0, Lcom/letv/leui/preference/LePassWordPreference$SavedState;->pwd:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 87
    iget-object v1, p0, Lcom/letv/leui/preference/LePassWordPreference;->checkBox:Landroid/widget/CheckBox;

    iget-boolean v2, v0, Lcom/letv/leui/preference/LePassWordPreference$SavedState;->checked:Z

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 78
    return-void

    .line 80
    .end local v0    # "myState":Lcom/letv/leui/preference/LePassWordPreference$SavedState;
    :cond_0
    invoke-super {p0, p1}, Lcom/letv/leui/preference/LeEditTextPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 81
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 94
    invoke-super {p0}, Lcom/letv/leui/preference/LeEditTextPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 95
    .local v1, "superState":Landroid/os/Parcelable;
    invoke-virtual {p0}, Lcom/letv/leui/preference/LePassWordPreference;->isPersistent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 96
    return-object v1

    .line 98
    :cond_0
    new-instance v0, Lcom/letv/leui/preference/LePassWordPreference$SavedState;

    invoke-direct {v0, p0, v1}, Lcom/letv/leui/preference/LePassWordPreference$SavedState;-><init>(Lcom/letv/leui/preference/LePassWordPreference;Landroid/os/Parcelable;)V

    .line 100
    .local v0, "myState":Lcom/letv/leui/preference/LePassWordPreference$SavedState;
    invoke-virtual {p0}, Lcom/letv/leui/preference/LePassWordPreference;->isChecked()Z

    move-result v2

    iput-boolean v2, v0, Lcom/letv/leui/preference/LePassWordPreference$SavedState;->checked:Z

    .line 101
    invoke-virtual {p0}, Lcom/letv/leui/preference/LePassWordPreference;->getPwd()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/letv/leui/preference/LePassWordPreference$SavedState;->pwd:Ljava/lang/String;

    .line 103
    return-object v0
.end method

.method syncEditTextShow(Z)V
    .locals 2
    .param p1, "isPassWord"    # Z

    .prologue
    .line 55
    iget-object v0, p0, Lcom/letv/leui/preference/LePassWordPreference;->mEditText:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 56
    if-nez p1, :cond_1

    .line 57
    iget-object v0, p0, Lcom/letv/leui/preference/LePassWordPreference;->mEditText:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/HideReturnsTransformationMethod;->getInstance()Landroid/text/method/HideReturnsTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 61
    :goto_0
    iget-object v0, p0, Lcom/letv/leui/preference/LePassWordPreference;->mEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/letv/leui/preference/LePassWordPreference;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 54
    :cond_0
    return-void

    .line 59
    :cond_1
    iget-object v0, p0, Lcom/letv/leui/preference/LePassWordPreference;->mEditText:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    goto :goto_0
.end method
