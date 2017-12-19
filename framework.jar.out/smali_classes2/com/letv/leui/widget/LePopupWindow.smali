.class public Lcom/letv/leui/widget/LePopupWindow;
.super Landroid/app/Dialog;
.source "LePopupWindow.java"

# interfaces
.implements Landroid/content/DialogInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/leui/widget/LePopupWindow$Builder;
    }
.end annotation


# instance fields
.field private cancelOnTouchOutside:Z

.field private mAlert:Lcom/letv/leui/widget/LePopupWindowController;


# direct methods
.method static synthetic -get0(Lcom/letv/leui/widget/LePopupWindow;)Lcom/letv/leui/widget/LePopupWindowController;
    .locals 1

    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindow;->mAlert:Lcom/letv/leui/widget/LePopupWindowController;

    return-object v0
.end method

.method protected constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 113
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/letv/leui/widget/LePopupWindow;->cancelOnTouchOutside:Z

    .line 51
    new-instance v0, Lcom/letv/leui/widget/LePopupWindowController;

    invoke-virtual {p0}, Lcom/letv/leui/widget/LePopupWindow;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-direct {v0, p1, p0, v1}, Lcom/letv/leui/widget/LePopupWindowController;-><init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V

    iput-object v0, p0, Lcom/letv/leui/widget/LePopupWindow;->mAlert:Lcom/letv/leui/widget/LePopupWindowController;

    .line 49
    return-void
.end method


# virtual methods
.method public getButton(I)Landroid/widget/Button;
    .locals 1
    .param p1, "whichButton"    # I

    .prologue
    .line 55
    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindow;->mAlert:Lcom/letv/leui/widget/LePopupWindowController;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/LePopupWindowController;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method public getLicenceCheckBox()Lcom/letv/leui/widget/LeCheckBox;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindow;->mAlert:Lcom/letv/leui/widget/LePopupWindowController;

    invoke-virtual {v0}, Lcom/letv/leui/widget/LePopupWindowController;->getLicenceCheckBox()Lcom/letv/leui/widget/LeCheckBox;

    move-result-object v0

    return-object v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindow;->mAlert:Lcom/letv/leui/widget/LePopupWindowController;

    invoke-virtual {v0}, Lcom/letv/leui/widget/LePopupWindowController;->getListView()Landroid/widget/ListView;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 122
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 124
    iget-object v1, p0, Lcom/letv/leui/widget/LePopupWindow;->mAlert:Lcom/letv/leui/widget/LePopupWindowController;

    invoke-virtual {v1}, Lcom/letv/leui/widget/LePopupWindowController;->install()V

    .line 126
    invoke-virtual {p0}, Lcom/letv/leui/widget/LePopupWindow;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 127
    .local v0, "params":Landroid/view/WindowManager$LayoutParams;
    const/4 v1, -0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 128
    const/16 v1, 0x50

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 129
    invoke-virtual {p0}, Lcom/letv/leui/widget/LePopupWindow;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 130
    iget-boolean v1, p0, Lcom/letv/leui/widget/LePopupWindow;->cancelOnTouchOutside:Z

    invoke-virtual {p0, v1}, Lcom/letv/leui/widget/LePopupWindow;->setCanceledOnTouchOutside(Z)V

    .line 121
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 135
    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindow;->mAlert:Lcom/letv/leui/widget/LePopupWindowController;

    invoke-virtual {v0, p1, p2}, Lcom/letv/leui/widget/LePopupWindowController;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 136
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 141
    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindow;->mAlert:Lcom/letv/leui/widget/LePopupWindowController;

    invoke-virtual {v0, p1, p2}, Lcom/letv/leui/widget/LePopupWindowController;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 142
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 2
    .param p1, "whichButton"    # I
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindow;->mAlert:Lcom/letv/leui/widget/LePopupWindowController;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/letv/leui/widget/LePopupWindowController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 93
    return-void
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V
    .locals 2
    .param p1, "whichButton"    # I
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "msg"    # Landroid/os/Message;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindow;->mAlert:Lcom/letv/leui/widget/LePopupWindowController;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1, p3}, Lcom/letv/leui/widget/LePopupWindowController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 89
    return-void
.end method

.method public setButtonColor(II)V
    .locals 1
    .param p1, "whichButton"    # I
    .param p2, "color"    # I

    .prologue
    .line 98
    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindow;->mAlert:Lcom/letv/leui/widget/LePopupWindowController;

    invoke-virtual {v0, p1, p2}, Lcom/letv/leui/widget/LePopupWindowController;->setButtonColor(II)V

    .line 97
    return-void
.end method

.method public setCanceledOnTouchOutside(Z)V
    .locals 0
    .param p1, "cancel"    # Z

    .prologue
    .line 116
    invoke-super {p0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 117
    iput-boolean p1, p0, Lcom/letv/leui/widget/LePopupWindow;->cancelOnTouchOutside:Z

    .line 115
    return-void
.end method

.method public setCustomTitle(Landroid/view/View;)V
    .locals 1
    .param p1, "customTitleView"    # Landroid/view/View;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindow;->mAlert:Lcom/letv/leui/widget/LePopupWindowController;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/LePopupWindowController;->setCustomTitle(Landroid/view/View;)V

    .line 72
    return-void
.end method

.method public setIcon(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 102
    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindow;->mAlert:Lcom/letv/leui/widget/LePopupWindowController;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/LePopupWindowController;->setIcon(I)V

    .line 101
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindow;->mAlert:Lcom/letv/leui/widget/LePopupWindowController;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/LePopupWindowController;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 105
    return-void
.end method

.method public setInverseBackgroundForced(Z)V
    .locals 1
    .param p1, "forceInverseBackground"    # Z

    .prologue
    .line 110
    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindow;->mAlert:Lcom/letv/leui/widget/LePopupWindowController;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/LePopupWindowController;->setInverseBackgroundForced(Z)V

    .line 109
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindow;->mAlert:Lcom/letv/leui/widget/LePopupWindowController;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/LePopupWindowController;->setMessage(Ljava/lang/CharSequence;)V

    .line 76
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 68
    invoke-super {p0, p1}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 69
    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindow;->mAlert:Lcom/letv/leui/widget/LePopupWindowController;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/LePopupWindowController;->setTitle(Ljava/lang/CharSequence;)V

    .line 67
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindow;->mAlert:Lcom/letv/leui/widget/LePopupWindowController;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/LePopupWindowController;->setView(Landroid/view/View;)V

    .line 80
    return-void
.end method

.method public setView(Landroid/view/View;IIII)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewSpacingLeft"    # I
    .param p3, "viewSpacingTop"    # I
    .param p4, "viewSpacingRight"    # I
    .param p5, "viewSpacingBottom"    # I

    .prologue
    .line 86
    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindow;->mAlert:Lcom/letv/leui/widget/LePopupWindowController;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/letv/leui/widget/LePopupWindowController;->setView(Landroid/view/View;IIII)V

    .line 85
    return-void
.end method
