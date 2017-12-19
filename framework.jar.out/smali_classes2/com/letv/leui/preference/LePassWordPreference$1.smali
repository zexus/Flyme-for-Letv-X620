.class Lcom/letv/leui/preference/LePassWordPreference$1;
.super Ljava/lang/Object;
.source "LePassWordPreference.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/letv/leui/preference/LePassWordPreference;->getCheckedChangeListener()Landroid/widget/CompoundButton$OnCheckedChangeListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/preference/LePassWordPreference;


# direct methods
.method constructor <init>(Lcom/letv/leui/preference/LePassWordPreference;)V
    .locals 0
    .param p1, "this$0"    # Lcom/letv/leui/preference/LePassWordPreference;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/letv/leui/preference/LePassWordPreference$1;->this$0:Lcom/letv/leui/preference/LePassWordPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 71
    iget-object v1, p0, Lcom/letv/leui/preference/LePassWordPreference$1;->this$0:Lcom/letv/leui/preference/LePassWordPreference;

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/letv/leui/preference/LePassWordPreference;->syncEditTextShow(Z)V

    .line 72
    iget-object v0, p0, Lcom/letv/leui/preference/LePassWordPreference$1;->this$0:Lcom/letv/leui/preference/LePassWordPreference;

    iput-boolean p2, v0, Lcom/letv/leui/preference/LePassWordPreference;->checked:Z

    .line 70
    return-void

    .line 71
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
