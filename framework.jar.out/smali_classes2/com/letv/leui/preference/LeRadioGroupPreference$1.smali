.class Lcom/letv/leui/preference/LeRadioGroupPreference$1;
.super Ljava/lang/Object;
.source "LeRadioGroupPreference.java"

# interfaces
.implements Lcom/letv/leui/preference/LeRadioGroupPreference$LeRadioPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/letv/leui/preference/LeRadioGroupPreference;->onPrepareAddPreference(Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/preference/LeRadioGroupPreference;


# direct methods
.method constructor <init>(Lcom/letv/leui/preference/LeRadioGroupPreference;)V
    .locals 0
    .param p1, "this$0"    # Lcom/letv/leui/preference/LeRadioGroupPreference;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/letv/leui/preference/LeRadioGroupPreference$1;->this$0:Lcom/letv/leui/preference/LeRadioGroupPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRadioChanged(ZLjava/lang/String;)V
    .locals 1
    .param p1, "isChecked"    # Z
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 63
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/letv/leui/preference/LeRadioGroupPreference$1;->this$0:Lcom/letv/leui/preference/LeRadioGroupPreference;

    invoke-static {v0, p2}, Lcom/letv/leui/preference/LeRadioGroupPreference;->-wrap0(Lcom/letv/leui/preference/LeRadioGroupPreference;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 66
    :cond_0
    if-eqz p1, :cond_1

    .line 67
    iget-object v0, p0, Lcom/letv/leui/preference/LeRadioGroupPreference$1;->this$0:Lcom/letv/leui/preference/LeRadioGroupPreference;

    invoke-static {v0, p1, p2}, Lcom/letv/leui/preference/LeRadioGroupPreference;->-wrap1(Lcom/letv/leui/preference/LeRadioGroupPreference;ZLjava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/letv/leui/preference/LeRadioGroupPreference$1;->this$0:Lcom/letv/leui/preference/LeRadioGroupPreference;

    invoke-static {v0, p2}, Lcom/letv/leui/preference/LeRadioGroupPreference;->-set0(Lcom/letv/leui/preference/LeRadioGroupPreference;Ljava/lang/String;)Ljava/lang/String;

    .line 62
    :cond_1
    return-void

    .line 64
    :cond_2
    return-void
.end method
