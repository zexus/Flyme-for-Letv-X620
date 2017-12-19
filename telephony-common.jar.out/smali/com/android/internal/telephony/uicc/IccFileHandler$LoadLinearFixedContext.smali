.class Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;
.super Ljava/lang/Object;
.source "IccFileHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/IccFileHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LoadLinearFixedContext"
.end annotation


# instance fields
.field mCountRecords:I

.field mEfid:I

.field mLoadAll:Z

.field mMode:I

.field mOnLoaded:Landroid/os/Message;

.field mPath:Ljava/lang/String;

.field mRecordNum:I

.field mRecordSize:I

.field results:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(IILandroid/os/Message;)V
    .locals 1
    .param p1, "efid"    # I
    .param p2, "recordNum"    # I
    .param p3, "onLoaded"    # Landroid/os/Message;

    .prologue
    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    iput p1, p0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mEfid:I

    .line 132
    iput p2, p0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mRecordNum:I

    .line 133
    iput-object p3, p0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mOnLoaded:Landroid/os/Message;

    .line 134
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mLoadAll:Z

    .line 135
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mPath:Ljava/lang/String;

    .line 137
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mMode:I

    .line 130
    return-void
.end method

.method constructor <init>(IILjava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p1, "efid"    # I
    .param p2, "recordNum"    # I
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "onLoaded"    # Landroid/os/Message;

    .prologue
    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    iput p1, p0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mEfid:I

    .line 143
    iput p2, p0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mRecordNum:I

    .line 144
    iput-object p4, p0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mOnLoaded:Landroid/os/Message;

    .line 145
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mLoadAll:Z

    .line 146
    iput-object p3, p0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mPath:Ljava/lang/String;

    .line 148
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mMode:I

    .line 141
    return-void
.end method

.method constructor <init>(ILandroid/os/Message;)V
    .locals 1
    .param p1, "efid"    # I
    .param p2, "onLoaded"    # Landroid/os/Message;

    .prologue
    const/4 v0, 0x1

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    iput p1, p0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mEfid:I

    .line 165
    iput v0, p0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mRecordNum:I

    .line 166
    iput-boolean v0, p0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mLoadAll:Z

    .line 167
    iput-object p2, p0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mOnLoaded:Landroid/os/Message;

    .line 168
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mPath:Ljava/lang/String;

    .line 170
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mMode:I

    .line 163
    return-void
.end method

.method constructor <init>(ILjava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p1, "efid"    # I
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "onLoaded"    # Landroid/os/Message;

    .prologue
    const/4 v0, 0x1

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    iput p1, p0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mEfid:I

    .line 154
    iput v0, p0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mRecordNum:I

    .line 155
    iput-boolean v0, p0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mLoadAll:Z

    .line 156
    iput-object p3, p0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mOnLoaded:Landroid/os/Message;

    .line 157
    iput-object p2, p0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mPath:Ljava/lang/String;

    .line 159
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mMode:I

    .line 152
    return-void
.end method
