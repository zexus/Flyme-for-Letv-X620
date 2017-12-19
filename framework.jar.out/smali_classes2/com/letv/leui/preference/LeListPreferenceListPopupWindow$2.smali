.class Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$2;
.super Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$ForwardingListener;
.source "LeListPreferenceListPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->createDragToOpenListener(Landroid/view/View;)Landroid/view/View$OnTouchListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;


# direct methods
.method constructor <init>(Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;
    .param p2, "$anonymous0"    # Landroid/view/View;

    .prologue
    .line 1046
    iput-object p1, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$2;->this$0:Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;

    invoke-direct {p0, p2}, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$ForwardingListener;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getPopup()Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;
    .locals 1

    .prologue
    .line 1049
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$2;->this$0:Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;

    return-object v0
.end method
