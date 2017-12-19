.class Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$ListSelectorHider;
.super Ljava/lang/Object;
.source "LeListPreferenceListPopupWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListSelectorHider"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;


# direct methods
.method private constructor <init>(Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;)V
    .locals 0
    .param p1, "this$0"    # Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;

    .prologue
    .line 1748
    iput-object p1, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$ListSelectorHider;->this$0:Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$ListSelectorHider;)V
    .locals 0
    .param p1, "this$0"    # Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;

    .prologue
    invoke-direct {p0, p1}, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$ListSelectorHider;-><init>(Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1750
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$ListSelectorHider;->this$0:Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;

    invoke-virtual {v0}, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->clearListSelection()V

    .line 1749
    return-void
.end method
