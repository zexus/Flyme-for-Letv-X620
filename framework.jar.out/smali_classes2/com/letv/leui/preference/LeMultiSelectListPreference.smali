.class public Lcom/letv/leui/preference/LeMultiSelectListPreference;
.super Lcom/letv/leui/preference/LeDialogPreferenceEx;
.source "LeMultiSelectListPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/leui/preference/LeMultiSelectListPreference$SavedState;
    }
.end annotation


# instance fields
.field private mEntries:[Ljava/lang/CharSequence;

.field private mEntryValues:[Ljava/lang/CharSequence;

.field private mNewValues:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPreferenceChanged:Z

.field private mValues:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/letv/leui/preference/LeMultiSelectListPreference;)[Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/letv/leui/preference/LeMultiSelectListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic -get1(Lcom/letv/leui/preference/LeMultiSelectListPreference;)Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/letv/leui/preference/LeMultiSelectListPreference;->mNewValues:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic -get2(Lcom/letv/leui/preference/LeMultiSelectListPreference;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/letv/leui/preference/LeMultiSelectListPreference;->mPreferenceChanged:Z

    return v0
.end method

.method static synthetic -set0(Lcom/letv/leui/preference/LeMultiSelectListPreference;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/letv/leui/preference/LeMultiSelectListPreference;->mPreferenceChanged:Z

    return p1
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/letv/leui/preference/LeMultiSelectListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 64
    const v0, 0x1010091

    invoke-direct {p0, p1, p2, v0}, Lcom/letv/leui/preference/LeMultiSelectListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/letv/leui/preference/LeMultiSelectListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/letv/leui/preference/LeDialogPreferenceEx;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 43
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/letv/leui/preference/LeMultiSelectListPreference;->mValues:Ljava/util/Set;

    .line 44
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/letv/leui/preference/LeMultiSelectListPreference;->mNewValues:Ljava/util/Set;

    .line 52
    sget-object v1, Lcom/android/internal/R$styleable;->MultiSelectListPreference:[I

    .line 51
    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 54
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/letv/leui/preference/LeMultiSelectListPreference;->mEntries:[Ljava/lang/CharSequence;

    .line 55
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/letv/leui/preference/LeMultiSelectListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    .line 56
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 48
    return-void
.end method

.method private getSelectedItems()[Z
    .locals 6

    .prologue
    .line 193
    iget-object v0, p0, Lcom/letv/leui/preference/LeMultiSelectListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    .line 194
    .local v0, "entries":[Ljava/lang/CharSequence;
    array-length v1, v0

    .line 195
    .local v1, "entryCount":I
    iget-object v4, p0, Lcom/letv/leui/preference/LeMultiSelectListPreference;->mValues:Ljava/util/Set;

    .line 196
    .local v4, "values":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-array v3, v1, [Z

    .line 198
    .local v3, "result":[Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 199
    aget-object v5, v0, v2

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    aput-boolean v5, v3, v2

    .line 198
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 202
    :cond_0
    return-object v3
.end method


# virtual methods
.method public findIndexOfValue(Ljava/lang/String;)I
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 157
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/letv/leui/preference/LeMultiSelectListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    .line 158
    iget-object v1, p0, Lcom/letv/leui/preference/LeMultiSelectListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 159
    iget-object v1, p0, Lcom/letv/leui/preference/LeMultiSelectListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 160
    return v0

    .line 158
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 164
    .end local v0    # "i":I
    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public getEntries()[Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/letv/leui/preference/LeMultiSelectListPreference;->mEntries:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getEntryValues()[Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/letv/leui/preference/LeMultiSelectListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getValues()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 147
    iget-object v0, p0, Lcom/letv/leui/preference/LeMultiSelectListPreference;->mValues:Ljava/util/Set;

    return-object v0
.end method

.method protected onDialogClosed(Z)V
    .locals 2
    .param p1, "positiveResult"    # Z

    .prologue
    .line 207
    invoke-super {p0, p1}, Lcom/letv/leui/preference/LeDialogPreferenceEx;->onDialogClosed(Z)V

    .line 209
    if-eqz p1, :cond_0

    iget-boolean v1, p0, Lcom/letv/leui/preference/LeMultiSelectListPreference;->mPreferenceChanged:Z

    if-eqz v1, :cond_0

    .line 210
    iget-object v0, p0, Lcom/letv/leui/preference/LeMultiSelectListPreference;->mNewValues:Ljava/util/Set;

    .line 211
    .local v0, "values":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p0, v0}, Lcom/letv/leui/preference/LeMultiSelectListPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 212
    invoke-virtual {p0, v0}, Lcom/letv/leui/preference/LeMultiSelectListPreference;->setValues(Ljava/util/Set;)V

    .line 215
    .end local v0    # "values":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/letv/leui/preference/LeMultiSelectListPreference;->mPreferenceChanged:Z

    .line 206
    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 5
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "index"    # I

    .prologue
    .line 220
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    .line 221
    .local v0, "defaultValues":[Ljava/lang/CharSequence;
    array-length v3, v0

    .line 222
    .local v3, "valueCount":I
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 224
    .local v2, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 225
    aget-object v4, v0, v1

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 224
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 228
    :cond_0
    return-object v2
.end method

.method protected onPrepareDialogBuilder(Lcom/letv/leui/widget/LePopupWindow$Builder;)V
    .locals 3
    .param p1, "builder"    # Lcom/letv/leui/widget/LePopupWindow$Builder;

    .prologue
    .line 169
    invoke-super {p0, p1}, Lcom/letv/leui/preference/LeDialogPreferenceEx;->onPrepareDialogBuilder(Lcom/letv/leui/widget/LePopupWindow$Builder;)V

    .line 171
    iget-object v1, p0, Lcom/letv/leui/preference/LeMultiSelectListPreference;->mEntries:[Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/letv/leui/preference/LeMultiSelectListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    if-nez v1, :cond_1

    .line 172
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 173
    const-string/jumbo v2, "MultiSelectListPreference requires an entries array and an entryValues array."

    .line 172
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 177
    :cond_1
    invoke-direct {p0}, Lcom/letv/leui/preference/LeMultiSelectListPreference;->getSelectedItems()[Z

    move-result-object v0

    .line 178
    .local v0, "checkedItems":[Z
    iget-object v1, p0, Lcom/letv/leui/preference/LeMultiSelectListPreference;->mEntries:[Ljava/lang/CharSequence;

    .line 179
    new-instance v2, Lcom/letv/leui/preference/LeMultiSelectListPreference$1;

    invoke-direct {v2, p0}, Lcom/letv/leui/preference/LeMultiSelectListPreference$1;-><init>(Lcom/letv/leui/preference/LeMultiSelectListPreference;)V

    .line 178
    invoke-virtual {p1, v1, v0, v2}, Lcom/letv/leui/widget/LePopupWindow$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/letv/leui/widget/LePopupWindow$Builder;

    .line 188
    iget-object v1, p0, Lcom/letv/leui/preference/LeMultiSelectListPreference;->mNewValues:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 189
    iget-object v1, p0, Lcom/letv/leui/preference/LeMultiSelectListPreference;->mNewValues:Ljava/util/Set;

    iget-object v2, p0, Lcom/letv/leui/preference/LeMultiSelectListPreference;->mValues:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 168
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 238
    invoke-super {p0}, Lcom/letv/leui/preference/LeDialogPreferenceEx;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 239
    .local v1, "superState":Landroid/os/Parcelable;
    invoke-virtual {p0}, Lcom/letv/leui/preference/LeMultiSelectListPreference;->isPersistent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 241
    return-object v1

    .line 244
    :cond_0
    new-instance v0, Lcom/letv/leui/preference/LeMultiSelectListPreference$SavedState;

    invoke-direct {v0, v1}, Lcom/letv/leui/preference/LeMultiSelectListPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 245
    .local v0, "myState":Lcom/letv/leui/preference/LeMultiSelectListPreference$SavedState;
    invoke-virtual {p0}, Lcom/letv/leui/preference/LeMultiSelectListPreference;->getValues()Ljava/util/Set;

    move-result-object v2

    iput-object v2, v0, Lcom/letv/leui/preference/LeMultiSelectListPreference$SavedState;->values:Ljava/util/Set;

    .line 246
    return-object v0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 1
    .param p1, "restoreValue"    # Z
    .param p2, "defaultValue"    # Ljava/lang/Object;

    .prologue
    .line 233
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/letv/leui/preference/LeMultiSelectListPreference;->mValues:Ljava/util/Set;

    invoke-virtual {p0, v0}, Lcom/letv/leui/preference/LeMultiSelectListPreference;->getPersistedStringSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p2

    .end local p2    # "defaultValue":Ljava/lang/Object;
    :goto_0
    invoke-virtual {p0, p2}, Lcom/letv/leui/preference/LeMultiSelectListPreference;->setValues(Ljava/util/Set;)V

    .line 232
    return-void

    .line 233
    .restart local p2    # "defaultValue":Ljava/lang/Object;
    :cond_0
    check-cast p2, Ljava/util/Set;

    goto :goto_0
.end method

.method public setEntries(I)V
    .locals 1
    .param p1, "entriesResId"    # I

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/letv/leui/preference/LeMultiSelectListPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/letv/leui/preference/LeMultiSelectListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 89
    return-void
.end method

.method public setEntries([Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "entries"    # [Ljava/lang/CharSequence;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/letv/leui/preference/LeMultiSelectListPreference;->mEntries:[Ljava/lang/CharSequence;

    .line 81
    return-void
.end method

.method public setEntryValues(I)V
    .locals 1
    .param p1, "entryValuesResId"    # I

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/letv/leui/preference/LeMultiSelectListPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/letv/leui/preference/LeMultiSelectListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 117
    return-void
.end method

.method public setEntryValues([Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "entryValues"    # [Ljava/lang/CharSequence;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/letv/leui/preference/LeMultiSelectListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    .line 109
    return-void
.end method

.method public setValues(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 137
    .local p1, "values":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/letv/leui/preference/LeMultiSelectListPreference;->mValues:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 138
    iget-object v0, p0, Lcom/letv/leui/preference/LeMultiSelectListPreference;->mValues:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 140
    invoke-virtual {p0, p1}, Lcom/letv/leui/preference/LeMultiSelectListPreference;->persistStringSet(Ljava/util/Set;)Z

    .line 136
    return-void
.end method
