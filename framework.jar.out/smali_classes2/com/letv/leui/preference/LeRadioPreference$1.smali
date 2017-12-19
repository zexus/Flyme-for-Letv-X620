.class Lcom/letv/leui/preference/LeRadioPreference$1;
.super Ljava/lang/Object;
.source "LeRadioPreference.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/letv/leui/preference/LeRadioPreference;->getOnCheckedChangeListener()Landroid/widget/CompoundButton$OnCheckedChangeListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/preference/LeRadioPreference;


# direct methods
.method constructor <init>(Lcom/letv/leui/preference/LeRadioPreference;)V
    .locals 0
    .param p1, "this$0"    # Lcom/letv/leui/preference/LeRadioPreference;

    .prologue
    .line 141
    iput-object p1, p0, Lcom/letv/leui/preference/LeRadioPreference$1;->this$0:Lcom/letv/leui/preference/LeRadioPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 145
    iget-object v0, p0, Lcom/letv/leui/preference/LeRadioPreference$1;->this$0:Lcom/letv/leui/preference/LeRadioPreference;

    iget-object v0, v0, Lcom/letv/leui/preference/LeRadioPreference;->changeListener:Lcom/letv/leui/preference/LeRadioGroupPreference$LeRadioPreferenceChangeListener;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 146
    iget-object v0, p0, Lcom/letv/leui/preference/LeRadioPreference$1;->this$0:Lcom/letv/leui/preference/LeRadioPreference;

    iget-object v0, v0, Lcom/letv/leui/preference/LeRadioPreference;->changeListener:Lcom/letv/leui/preference/LeRadioGroupPreference$LeRadioPreferenceChangeListener;

    iget-object v1, p0, Lcom/letv/leui/preference/LeRadioPreference$1;->this$0:Lcom/letv/leui/preference/LeRadioPreference;

    invoke-virtual {v1}, Lcom/letv/leui/preference/LeRadioPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v2, v1}, Lcom/letv/leui/preference/LeRadioGroupPreference$LeRadioPreferenceChangeListener;->onRadioChanged(ZLjava/lang/String;)V

    .line 144
    :cond_0
    return-void
.end method
