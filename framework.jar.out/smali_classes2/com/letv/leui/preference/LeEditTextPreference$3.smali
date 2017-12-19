.class Lcom/letv/leui/preference/LeEditTextPreference$3;
.super Ljava/lang/Object;
.source "LeEditTextPreference.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/letv/leui/preference/LeEditTextPreference;->getItemOnAttachStateChangeListener()Landroid/view/View$OnAttachStateChangeListener;
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
    .line 237
    iput-object p1, p0, Lcom/letv/leui/preference/LeEditTextPreference$3;->this$0:Lcom/letv/leui/preference/LeEditTextPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 240
    iget-object v0, p0, Lcom/letv/leui/preference/LeEditTextPreference$3;->this$0:Lcom/letv/leui/preference/LeEditTextPreference;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/letv/leui/preference/LeEditTextPreference;->-set1(Lcom/letv/leui/preference/LeEditTextPreference;Z)Z

    .line 239
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 245
    invoke-virtual {p1}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/letv/leui/preference/LeEditTextPreference;->hide(Landroid/content/Context;Landroid/os/IBinder;)V

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/letv/leui/preference/LeEditTextPreference$3;->this$0:Lcom/letv/leui/preference/LeEditTextPreference;

    invoke-static {v0, p1}, Lcom/letv/leui/preference/LeEditTextPreference;->-wrap2(Lcom/letv/leui/preference/LeEditTextPreference;Landroid/view/View;)V

    .line 249
    iget-object v0, p0, Lcom/letv/leui/preference/LeEditTextPreference$3;->this$0:Lcom/letv/leui/preference/LeEditTextPreference;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/letv/leui/preference/LeEditTextPreference;->-set1(Lcom/letv/leui/preference/LeEditTextPreference;Z)Z

    .line 244
    return-void
.end method
