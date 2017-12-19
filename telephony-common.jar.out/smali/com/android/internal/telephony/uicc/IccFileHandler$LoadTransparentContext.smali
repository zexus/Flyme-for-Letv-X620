.class Lcom/android/internal/telephony/uicc/IccFileHandler$LoadTransparentContext;
.super Ljava/lang/Object;
.source "IccFileHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/IccFileHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LoadTransparentContext"
.end annotation


# instance fields
.field mEfid:I

.field mOnLoaded:Landroid/os/Message;

.field mPath:Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "efid"    # I
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "onLoaded"    # Landroid/os/Message;

    .prologue
    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    iput p1, p0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadTransparentContext;->mEfid:I

    .line 187
    iput-object p2, p0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadTransparentContext;->mPath:Ljava/lang/String;

    .line 188
    iput-object p3, p0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadTransparentContext;->mOnLoaded:Landroid/os/Message;

    .line 185
    return-void
.end method
