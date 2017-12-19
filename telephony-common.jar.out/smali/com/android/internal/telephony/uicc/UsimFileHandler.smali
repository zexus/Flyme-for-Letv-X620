.class public final Lcom/android/internal/telephony/uicc/UsimFileHandler;
.super Lcom/android/internal/telephony/uicc/IccFileHandler;
.source "UsimFileHandler.java"

# interfaces
.implements Lcom/android/internal/telephony/uicc/IccConstants;


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "UsimFH"


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 0
    .param p1, "app"    # Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .param p2, "aid"    # Ljava/lang/String;
    .param p3, "ci"    # Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/IccFileHandler;-><init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V

    .line 36
    return-void
.end method


# virtual methods
.method protected getEFPath(I)Ljava/lang/String;
    .locals 2
    .param p1, "efid"    # I

    .prologue
    .line 42
    sparse-switch p1, :sswitch_data_0

    .line 94
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/UsimFileHandler;->getCommonIccEFPath(I)Ljava/lang/String;

    move-result-object v0

    .line 95
    .local v0, "path":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 99
    const-string/jumbo v1, "3F007F105F3A"

    return-object v1

    .line 57
    .end local v0    # "path":Ljava/lang/String;
    :sswitch_0
    const-string/jumbo v1, "3F007FFF"

    return-object v1

    .line 71
    :sswitch_1
    const-string/jumbo v1, "3F007F20"

    return-object v1

    .line 84
    :sswitch_2
    const-string/jumbo v1, "3F007FFF"

    return-object v1

    .line 87
    :sswitch_3
    const-string/jumbo v1, "3F007F10"

    return-object v1

    .line 92
    :sswitch_4
    const-string/jumbo v1, "3F007F105F3A"

    return-object v1

    .line 101
    .restart local v0    # "path":Ljava/lang/String;
    :cond_0
    return-object v0

    .line 42
    :sswitch_data_0
    .sparse-switch
        0x4f30 -> :sswitch_4
        0x6f05 -> :sswitch_2
        0x6f11 -> :sswitch_1
        0x6f13 -> :sswitch_1
        0x6f14 -> :sswitch_1
        0x6f15 -> :sswitch_1
        0x6f16 -> :sswitch_1
        0x6f17 -> :sswitch_1
        0x6f18 -> :sswitch_1
        0x6f38 -> :sswitch_0
        0x6f3b -> :sswitch_2
        0x6f3c -> :sswitch_0
        0x6f3e -> :sswitch_2
        0x6f3f -> :sswitch_2
        0x6f40 -> :sswitch_2
        0x6f42 -> :sswitch_2
        0x6f46 -> :sswitch_0
        0x6f49 -> :sswitch_2
        0x6f4b -> :sswitch_2
        0x6f4e -> :sswitch_0
        0x6fad -> :sswitch_0
        0x6fb7 -> :sswitch_2
        0x6fc5 -> :sswitch_0
        0x6fc6 -> :sswitch_0
        0x6fc7 -> :sswitch_0
        0x6fc8 -> :sswitch_0
        0x6fc9 -> :sswitch_0
        0x6fca -> :sswitch_0
        0x6fcb -> :sswitch_0
        0x6fcd -> :sswitch_0
        0x6fe5 -> :sswitch_3
    .end sparse-switch
.end method

.method protected logd(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 106
    const-string/jumbo v0, "UsimFH"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 111
    const-string/jumbo v0, "UsimFH"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    return-void
.end method
