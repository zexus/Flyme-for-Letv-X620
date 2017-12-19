.class public Lcom/letv/leui/util/LeThemeUtils;
.super Ljava/lang/Object;
.source "LeThemeUtils.java"


# static fields
.field private static final RO_DEVICE_PISN:Ljava/lang/String; = "ro.device.pisn"

.field private static final TAG:Ljava/lang/String; = "LeThemeUtils"

.field public static final THEME_COLOR_GOLD:I = 0x2

.field public static final THEME_COLOR_GRAY:I = 0x4

.field public static final THEME_COLOR_PINK:I = 0x5

.field public static final THEME_COLOR_SILVER:I = 0x1

.field public static final THEME_COLOR_SILVERWHITE:I = 0x3

.field public static final THEME_COLOR_TRANISH:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getThemeColor()I
    .locals 8

    .prologue
    .line 30
    const-string/jumbo v5, "ro.device.pisn"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 33
    .local v1, "letvSN":Ljava/lang/String;
    const/4 v0, 0x5

    .line 34
    .local v0, "index":I
    const/4 v2, -0x1

    .line 35
    .local v2, "themeColor":I
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x6

    if-le v5, v6, :cond_0

    .line 36
    const/4 v5, 0x5

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 37
    .local v3, "type":C
    add-int/lit8 v4, v3, -0x30

    .line 38
    .local v4, "typeColor":I
    const-string/jumbo v5, "LeThemeUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "SN is typeColor"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    packed-switch v4, :pswitch_data_0

    .line 59
    const/4 v2, -0x1

    .line 65
    .end local v3    # "type":C
    .end local v4    # "typeColor":I
    :goto_0
    return v2

    .line 41
    .restart local v3    # "type":C
    .restart local v4    # "typeColor":I
    :pswitch_0
    const/4 v2, 0x1

    .line 42
    goto :goto_0

    .line 44
    :pswitch_1
    const/4 v2, 0x2

    .line 45
    goto :goto_0

    .line 47
    :pswitch_2
    const/4 v2, 0x3

    .line 48
    goto :goto_0

    .line 50
    :pswitch_3
    const/4 v2, 0x4

    .line 51
    goto :goto_0

    .line 53
    :pswitch_4
    const/4 v2, 0x5

    .line 54
    goto :goto_0

    .line 56
    :pswitch_5
    const/4 v2, 0x6

    .line 57
    goto :goto_0

    .line 63
    .end local v3    # "type":C
    .end local v4    # "typeColor":I
    :cond_0
    const-string/jumbo v5, "LeThemeUtils"

    const-string/jumbo v6, "SN is error"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 39
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
