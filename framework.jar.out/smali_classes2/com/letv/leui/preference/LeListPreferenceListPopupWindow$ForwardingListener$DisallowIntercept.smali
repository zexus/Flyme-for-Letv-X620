.class Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$ForwardingListener$DisallowIntercept;
.super Ljava/lang/Object;
.source "LeListPreferenceListPopupWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$ForwardingListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DisallowIntercept"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$ForwardingListener;


# direct methods
.method private constructor <init>(Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$ForwardingListener;)V
    .locals 0
    .param p1, "this$1"    # Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$ForwardingListener;

    .prologue
    .line 1447
    iput-object p1, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$ForwardingListener$DisallowIntercept;->this$1:Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$ForwardingListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$ForwardingListener;Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$ForwardingListener$DisallowIntercept;)V
    .locals 0
    .param p1, "this$1"    # Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$ForwardingListener;

    .prologue
    invoke-direct {p0, p1}, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$ForwardingListener$DisallowIntercept;-><init>(Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$ForwardingListener;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1450
    iget-object v1, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$ForwardingListener$DisallowIntercept;->this$1:Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$ForwardingListener;

    invoke-static {v1}, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$ForwardingListener;->-get0(Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$ForwardingListener;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 1451
    .local v0, "parent":Landroid/view/ViewParent;
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1449
    return-void
.end method
