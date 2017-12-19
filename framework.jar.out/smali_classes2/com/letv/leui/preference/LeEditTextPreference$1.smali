.class Lcom/letv/leui/preference/LeEditTextPreference$1;
.super Ljava/lang/Object;
.source "LeEditTextPreference.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/preference/LeEditTextPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/preference/LeEditTextPreference;


# direct methods
.method constructor <init>(Lcom/letv/leui/preference/LeEditTextPreference;)V
    .locals 0
    .param p1, "this$0"    # Lcom/letv/leui/preference/LeEditTextPreference;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/letv/leui/preference/LeEditTextPreference$1;->this$0:Lcom/letv/leui/preference/LeEditTextPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/letv/leui/preference/LeEditTextPreference$1;->this$0:Lcom/letv/leui/preference/LeEditTextPreference;

    invoke-static {v0}, Lcom/letv/leui/preference/LeEditTextPreference;->-get2(Lcom/letv/leui/preference/LeEditTextPreference;)Landroid/text/TextWatcher;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/letv/leui/preference/LeEditTextPreference$1;->this$0:Lcom/letv/leui/preference/LeEditTextPreference;

    invoke-static {v0}, Lcom/letv/leui/preference/LeEditTextPreference;->-get2(Lcom/letv/leui/preference/LeEditTextPreference;)Landroid/text/TextWatcher;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/text/TextWatcher;->afterTextChanged(Landroid/text/Editable;)V

    .line 99
    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 93
    iget-object v0, p0, Lcom/letv/leui/preference/LeEditTextPreference$1;->this$0:Lcom/letv/leui/preference/LeEditTextPreference;

    invoke-static {v0}, Lcom/letv/leui/preference/LeEditTextPreference;->-get2(Lcom/letv/leui/preference/LeEditTextPreference;)Landroid/text/TextWatcher;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/letv/leui/preference/LeEditTextPreference$1;->this$0:Lcom/letv/leui/preference/LeEditTextPreference;

    invoke-static {v0}, Lcom/letv/leui/preference/LeEditTextPreference;->-get2(Lcom/letv/leui/preference/LeEditTextPreference;)Landroid/text/TextWatcher;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/text/TextWatcher;->beforeTextChanged(Ljava/lang/CharSequence;III)V

    .line 92
    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 82
    iget-object v0, p0, Lcom/letv/leui/preference/LeEditTextPreference$1;->this$0:Lcom/letv/leui/preference/LeEditTextPreference;

    invoke-static {v0}, Lcom/letv/leui/preference/LeEditTextPreference;->-get2(Lcom/letv/leui/preference/LeEditTextPreference;)Landroid/text/TextWatcher;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/letv/leui/preference/LeEditTextPreference$1;->this$0:Lcom/letv/leui/preference/LeEditTextPreference;

    invoke-static {v0}, Lcom/letv/leui/preference/LeEditTextPreference;->-get2(Lcom/letv/leui/preference/LeEditTextPreference;)Landroid/text/TextWatcher;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/text/TextWatcher;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/letv/leui/preference/LeEditTextPreference$1;->this$0:Lcom/letv/leui/preference/LeEditTextPreference;

    invoke-static {v0, p1}, Lcom/letv/leui/preference/LeEditTextPreference;->-set0(Lcom/letv/leui/preference/LeEditTextPreference;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 86
    iget-object v0, p0, Lcom/letv/leui/preference/LeEditTextPreference$1;->this$0:Lcom/letv/leui/preference/LeEditTextPreference;

    invoke-static {v0}, Lcom/letv/leui/preference/LeEditTextPreference;->-wrap1(Lcom/letv/leui/preference/LeEditTextPreference;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 87
    iget-object v0, p0, Lcom/letv/leui/preference/LeEditTextPreference$1;->this$0:Lcom/letv/leui/preference/LeEditTextPreference;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/letv/leui/preference/LeEditTextPreference;->-wrap0(Lcom/letv/leui/preference/LeEditTextPreference;Ljava/lang/String;)Z

    .line 81
    :cond_1
    return-void
.end method
