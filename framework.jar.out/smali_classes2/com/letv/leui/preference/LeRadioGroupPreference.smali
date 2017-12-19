.class public Lcom/letv/leui/preference/LeRadioGroupPreference;
.super Landroid/preference/PreferenceCategory;
.source "LeRadioGroupPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/leui/preference/LeRadioGroupPreference$LeRadioPreferenceChangeListener;
    }
.end annotation


# instance fields
.field private checkedKey:Ljava/lang/String;

.field private mDefault:Ljava/lang/String;


# direct methods
.method static synthetic -set0(Lcom/letv/leui/preference/LeRadioGroupPreference;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/letv/leui/preference/LeRadioGroupPreference;->checkedKey:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/letv/leui/preference/LeRadioGroupPreference;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "newValue"    # Ljava/lang/Object;

    .prologue
    invoke-virtual {p0, p1}, Lcom/letv/leui/preference/LeRadioGroupPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/letv/leui/preference/LeRadioGroupPreference;ZLjava/lang/String;)V
    .locals 0
    .param p1, "isChecked"    # Z
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/letv/leui/preference/LeRadioGroupPreference;->updateRadioChangeUI(ZLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 17
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 16
    return-void
.end method

.method private updateRadioChangeUI(ZLjava/lang/String;)V
    .locals 3
    .param p1, "isChecked"    # Z
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 81
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/letv/leui/preference/LeRadioGroupPreference;->getPreferenceCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 82
    invoke-virtual {p0, v0}, Lcom/letv/leui/preference/LeRadioGroupPreference;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/letv/leui/preference/LeRadioPreference;

    .line 83
    .local v1, "radioPreference":Lcom/letv/leui/preference/LeRadioPreference;
    invoke-virtual {v1}, Lcom/letv/leui/preference/LeRadioPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/letv/leui/preference/LeRadioPreference;->setChecked(Z)V

    .line 81
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 85
    .end local v1    # "radioPreference":Lcom/letv/leui/preference/LeRadioPreference;
    :cond_0
    invoke-virtual {p0}, Lcom/letv/leui/preference/LeRadioGroupPreference;->shouldPersist()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 86
    invoke-virtual {p0, p2}, Lcom/letv/leui/preference/LeRadioGroupPreference;->persistString(Ljava/lang/String;)Z

    .line 80
    :cond_1
    return-void
.end method


# virtual methods
.method public getCheckedKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/letv/leui/preference/LeRadioGroupPreference;->checkedKey:Ljava/lang/String;

    return-object v0
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "index"    # I

    .prologue
    .line 26
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/leui/preference/LeRadioGroupPreference;->mDefault:Ljava/lang/String;

    .line 27
    iget-object v0, p0, Lcom/letv/leui/preference/LeRadioGroupPreference;->mDefault:Ljava/lang/String;

    return-object v0
.end method

.method protected onPrepareAddPreference(Landroid/preference/Preference;)Z
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 54
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "LeRadioPreference must have key"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_0
    instance-of v0, p1, Lcom/letv/leui/preference/LeRadioPreference;

    if-eqz v0, :cond_1

    move-object v0, p1

    .line 59
    check-cast v0, Lcom/letv/leui/preference/LeRadioPreference;

    new-instance v1, Lcom/letv/leui/preference/LeRadioGroupPreference$1;

    invoke-direct {v1, p0}, Lcom/letv/leui/preference/LeRadioGroupPreference$1;-><init>(Lcom/letv/leui/preference/LeRadioGroupPreference;)V

    .line 72
    iget-object v2, p0, Lcom/letv/leui/preference/LeRadioGroupPreference;->checkedKey:Ljava/lang/String;

    .line 59
    invoke-virtual {v0, v1, v2}, Lcom/letv/leui/preference/LeRadioPreference;->registerChangeListener(Lcom/letv/leui/preference/LeRadioGroupPreference$LeRadioPreferenceChangeListener;Ljava/lang/String;)V

    .line 77
    invoke-super {p0, p1}, Landroid/preference/PreferenceCategory;->onPrepareAddPreference(Landroid/preference/Preference;)Z

    move-result v0

    return v0

    .line 74
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "not a LeRadioPreference in LeRadioGroupPreference "

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 1
    .param p1, "restorePersistedValue"    # Z
    .param p2, "defaultValue"    # Ljava/lang/Object;

    .prologue
    .line 32
    if-eqz p1, :cond_1

    .line 33
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/letv/leui/preference/LeRadioGroupPreference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/leui/preference/LeRadioGroupPreference;->checkedKey:Ljava/lang/String;

    .line 39
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceCategory;->onSetInitialValue(ZLjava/lang/Object;)V

    .line 31
    return-void

    .line 35
    :cond_1
    iget-object v0, p0, Lcom/letv/leui/preference/LeRadioGroupPreference;->mDefault:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/letv/leui/preference/LeRadioGroupPreference;->mDefault:Ljava/lang/String;

    iput-object v0, p0, Lcom/letv/leui/preference/LeRadioGroupPreference;->checkedKey:Ljava/lang/String;

    goto :goto_0
.end method

.method public setCheckedKey(Ljava/lang/String;)V
    .locals 1
    .param p1, "checkedKey"    # Ljava/lang/String;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/letv/leui/preference/LeRadioGroupPreference;->checkedKey:Ljava/lang/String;

    .line 48
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/letv/leui/preference/LeRadioGroupPreference;->updateRadioChangeUI(ZLjava/lang/String;)V

    .line 46
    return-void
.end method
