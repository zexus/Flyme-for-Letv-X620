.class public Lcom/letv/leui/app/LeStatusContentRemoteView;
.super Landroid/widget/RemoteViews;
.source "LeStatusContentRemoteView.java"


# instance fields
.field private mActionRemoteView:Landroid/widget/RemoteViews;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 16
    const v0, 0x10900ab

    invoke-direct {p0, p1, v0}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 15
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "layoutId"    # I

    .prologue
    .line 12
    invoke-direct {p0, p1, p2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 11
    return-void
.end method


# virtual methods
.method public addLeActionView()V
    .locals 1

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/letv/leui/app/LeStatusContentRemoteView;->getContentView()Landroid/widget/RemoteViews;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/letv/leui/app/LeStatusContentRemoteView;->addView(Landroid/widget/RemoteViews;)V

    .line 58
    return-void
.end method

.method public addView(Landroid/widget/RemoteViews;)V
    .locals 1
    .param p1, "nestedView"    # Landroid/widget/RemoteViews;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/letv/leui/app/LeStatusContentRemoteView;->mActionRemoteView:Landroid/widget/RemoteViews;

    .line 55
    const v0, 0x102008e

    invoke-super {p0, v0, p1}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    .line 53
    return-void
.end method

.method public getContentView()Landroid/widget/RemoteViews;
    .locals 3

    .prologue
    .line 63
    iget-object v0, p0, Lcom/letv/leui/app/LeStatusContentRemoteView;->mActionRemoteView:Landroid/widget/RemoteViews;

    if-nez v0, :cond_0

    .line 64
    new-instance v0, Landroid/widget/RemoteViews;

    .line 65
    invoke-virtual {p0}, Lcom/letv/leui/app/LeStatusContentRemoteView;->getPackage()Ljava/lang/String;

    move-result-object v1

    .line 66
    const v2, 0x10900aa

    .line 64
    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/letv/leui/app/LeStatusContentRemoteView;->mActionRemoteView:Landroid/widget/RemoteViews;

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/letv/leui/app/LeStatusContentRemoteView;->mActionRemoteView:Landroid/widget/RemoteViews;

    return-object v0
.end method

.method public setStatusAccountIcon(I)V
    .locals 1
    .param p1, "srcId"    # I

    .prologue
    .line 28
    const v0, 0x1020089

    invoke-virtual {p0, v0, p1}, Lcom/letv/leui/app/LeStatusContentRemoteView;->setImageViewResource(II)V

    .line 27
    return-void
.end method

.method public setStatusChronometer(J)V
    .locals 3
    .param p1, "startTime"    # J

    .prologue
    const v2, 0x102008c

    .line 41
    const v0, 0x102008f

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/letv/leui/app/LeStatusContentRemoteView;->setViewVisibility(II)V

    .line 42
    const v0, 0x102008d

    const/16 v1, 0x8

    invoke-virtual {p0, v0, v1}, Lcom/letv/leui/app/LeStatusContentRemoteView;->setViewVisibility(II)V

    .line 43
    const-string/jumbo v0, "setBase"

    invoke-virtual {p0, v2, v0, p1, p2}, Lcom/letv/leui/app/LeStatusContentRemoteView;->setLong(ILjava/lang/String;J)V

    .line 44
    const-string/jumbo v0, "setStarted"

    const/4 v1, 0x1

    invoke-virtual {p0, v2, v0, v1}, Lcom/letv/leui/app/LeStatusContentRemoteView;->setBoolean(ILjava/lang/String;Z)V

    .line 40
    return-void
.end method

.method public setStatusLocation(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "location"    # Ljava/lang/CharSequence;

    .prologue
    const v1, 0x102008b

    .line 36
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/letv/leui/app/LeStatusContentRemoteView;->setViewVisibility(II)V

    .line 37
    invoke-virtual {p0, v1, p1}, Lcom/letv/leui/app/LeStatusContentRemoteView;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 35
    return-void
.end method

.method public setStatusName(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/CharSequence;

    .prologue
    .line 20
    const v0, 0x1020087

    invoke-virtual {p0, v0, p1}, Lcom/letv/leui/app/LeStatusContentRemoteView;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 19
    return-void
.end method

.method public setStatusPhoto(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 24
    const v0, 0x1020088

    invoke-virtual {p0, v0, p1}, Lcom/letv/leui/app/LeStatusContentRemoteView;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 23
    return-void
.end method

.method public setStatusState(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "state"    # Ljava/lang/CharSequence;

    .prologue
    .line 32
    const v0, 0x102008a

    invoke-virtual {p0, v0, p1}, Lcom/letv/leui/app/LeStatusContentRemoteView;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 31
    return-void
.end method

.method public setStatusTime(J)V
    .locals 3
    .param p1, "time"    # J

    .prologue
    .line 48
    const v0, 0x1020090

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/letv/leui/app/LeStatusContentRemoteView;->setViewVisibility(II)V

    .line 49
    const v0, 0x102008f

    const/16 v1, 0x8

    invoke-virtual {p0, v0, v1}, Lcom/letv/leui/app/LeStatusContentRemoteView;->setViewVisibility(II)V

    .line 50
    const-string/jumbo v0, "setTime"

    const v1, 0x102008d

    invoke-virtual {p0, v1, v0, p1, p2}, Lcom/letv/leui/app/LeStatusContentRemoteView;->setLong(ILjava/lang/String;J)V

    .line 47
    return-void
.end method
