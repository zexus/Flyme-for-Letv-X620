.class public Lcom/letv/leui/preference/LeDividerFilterImp;
.super Ljava/lang/Object;
.source "LeDividerFilterImp.java"

# interfaces
.implements Lcom/letv/leui/widget/DividerFilter;


# instance fields
.field private mAdapter:Landroid/preference/PreferenceGroupAdapter;

.field private r:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/preference/PreferenceGroupAdapter;Landroid/content/res/Resources;)V
    .locals 0
    .param p1, "mAdapter"    # Landroid/preference/PreferenceGroupAdapter;
    .param p2, "r"    # Landroid/content/res/Resources;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/letv/leui/preference/LeDividerFilterImp;->mAdapter:Landroid/preference/PreferenceGroupAdapter;

    .line 18
    iput-object p2, p0, Lcom/letv/leui/preference/LeDividerFilterImp;->r:Landroid/content/res/Resources;

    .line 16
    return-void
.end method


# virtual methods
.method public bottomDividerEnabled()Z
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x1

    return v0
.end method

.method public dividerEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 33
    const/4 v0, 0x1

    return v0
.end method

.method public forceDrawDivider(I)Z
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 65
    iget-object v0, p0, Lcom/letv/leui/preference/LeDividerFilterImp;->mAdapter:Landroid/preference/PreferenceGroupAdapter;

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceGroupAdapter;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 66
    iget-object v0, p0, Lcom/letv/leui/preference/LeDividerFilterImp;->mAdapter:Landroid/preference/PreferenceGroupAdapter;

    invoke-virtual {v0}, Landroid/preference/PreferenceGroupAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-eq p1, v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/letv/leui/preference/LeDividerFilterImp;->mAdapter:Landroid/preference/PreferenceGroupAdapter;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroupAdapter;->isEnabled(I)Z

    move-result v0

    .line 65
    if-eqz v0, :cond_1

    .line 68
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 70
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public leftDividerMargin(I)I
    .locals 4
    .param p1, "position"    # I

    .prologue
    const v3, 0x1050145

    const v2, 0x1050141

    .line 38
    iget-object v0, p0, Lcom/letv/leui/preference/LeDividerFilterImp;->mAdapter:Landroid/preference/PreferenceGroupAdapter;

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceGroupAdapter;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/letv/leui/preference/LeDividerFilterImp;->mAdapter:Landroid/preference/PreferenceGroupAdapter;

    invoke-virtual {v0}, Landroid/preference/PreferenceGroupAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_1

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/letv/leui/preference/LeDividerFilterImp;->r:Landroid/content/res/Resources;

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 42
    iget-object v1, p0, Lcom/letv/leui/preference/LeDividerFilterImp;->r:Landroid/content/res/Resources;

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 41
    add-int/2addr v0, v1

    return v0

    .line 40
    :cond_1
    iget-object v0, p0, Lcom/letv/leui/preference/LeDividerFilterImp;->mAdapter:Landroid/preference/PreferenceGroupAdapter;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroupAdapter;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/letv/leui/preference/LeDividerFilterImp;->mAdapter:Landroid/preference/PreferenceGroupAdapter;

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceGroupAdapter;->getItem(I)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 46
    iget-object v0, p0, Lcom/letv/leui/preference/LeDividerFilterImp;->mAdapter:Landroid/preference/PreferenceGroupAdapter;

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceGroupAdapter;->getItem(I)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/Preference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 47
    iget-object v0, p0, Lcom/letv/leui/preference/LeDividerFilterImp;->mAdapter:Landroid/preference/PreferenceGroupAdapter;

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceGroupAdapter;->getItem(I)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/Preference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 48
    iget-object v1, p0, Lcom/letv/leui/preference/LeDividerFilterImp;->r:Landroid/content/res/Resources;

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 47
    add-int/2addr v0, v1

    .line 49
    iget-object v1, p0, Lcom/letv/leui/preference/LeDividerFilterImp;->r:Landroid/content/res/Resources;

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 47
    add-int/2addr v0, v1

    .line 50
    iget-object v1, p0, Lcom/letv/leui/preference/LeDividerFilterImp;->r:Landroid/content/res/Resources;

    const v2, 0x1050146

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 47
    add-int/2addr v0, v1

    return v0

    .line 53
    :cond_2
    iget-object v0, p0, Lcom/letv/leui/preference/LeDividerFilterImp;->r:Landroid/content/res/Resources;

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 54
    iget-object v1, p0, Lcom/letv/leui/preference/LeDividerFilterImp;->r:Landroid/content/res/Resources;

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 53
    add-int/2addr v0, v1

    return v0
.end method

.method public rightDividerMargin(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 60
    const/4 v0, 0x0

    return v0
.end method

.method public topDividerEnabled()Z
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    return v0
.end method
