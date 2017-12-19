.class public Lcom/letv/leui/preference/LeAbsPreferenceActivity;
.super Landroid/preference/PreferenceActivity;
.source "LeAbsPreferenceActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public addPreferencesFromResource(I)V
    .locals 8
    .param p1, "preferencesResId"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 15
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    .line 16
    invoke-virtual {p0}, Lcom/letv/leui/preference/LeAbsPreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v5}, Landroid/preference/PreferenceScreen;->getRootAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    .line 17
    .local v2, "mListAdapter":Landroid/widget/ListAdapter;
    instance-of v5, v2, Landroid/preference/PreferenceGroupAdapter;

    if-eqz v5, :cond_0

    move-object v4, v2

    .line 18
    check-cast v4, Landroid/preference/PreferenceGroupAdapter;

    .line 20
    .local v4, "preferenceGroup":Landroid/preference/PreferenceGroupAdapter;
    new-array v0, v6, [Ljava/lang/Class;

    const-class v5, Lcom/letv/leui/preference/LeDividerFilterImp;

    aput-object v5, v0, v7

    .line 21
    .local v0, "clazz":[Ljava/lang/Class;
    new-array v3, v6, [Ljava/lang/Object;

    new-instance v5, Lcom/letv/leui/preference/LeDividerFilterImp;

    invoke-virtual {p0}, Lcom/letv/leui/preference/LeAbsPreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-direct {v5, v4, v6}, Lcom/letv/leui/preference/LeDividerFilterImp;-><init>(Landroid/preference/PreferenceGroupAdapter;Landroid/content/res/Resources;)V

    aput-object v5, v3, v7

    .line 23
    .local v3, "params":[Ljava/lang/Object;
    :try_start_0
    const-string/jumbo v5, "setDividerFilter"

    invoke-static {v4, v5, v0, v3}, Lcom/letv/leui/util/LeReflectionUtils;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .end local v0    # "clazz":[Ljava/lang/Class;
    .end local v3    # "params":[Ljava/lang/Object;
    .end local v4    # "preferenceGroup":Landroid/preference/PreferenceGroupAdapter;
    :cond_0
    :goto_0
    return-void

    .line 24
    .restart local v0    # "clazz":[Ljava/lang/Class;
    .restart local v3    # "params":[Ljava/lang/Object;
    .restart local v4    # "preferenceGroup":Landroid/preference/PreferenceGroupAdapter;
    :catch_0
    move-exception v1

    .line 25
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
