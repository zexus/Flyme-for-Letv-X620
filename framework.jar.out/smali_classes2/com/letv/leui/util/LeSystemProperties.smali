.class public Lcom/letv/leui/util/LeSystemProperties;
.super Ljava/lang/Object;
.source "LeSystemProperties.java"


# static fields
.field private static final COMMON_PATTERN_REGEX:Ljava/lang/String; = "^[Xx][0-9]{3}$"

.field private static final LE_1:Ljava/lang/String; = "Le 1"

.field private static final LE_MAX:Ljava/lang/String; = "Le Max"

.field private static final LE_PRO:Ljava/lang/String; = "Le 1 Pro"

.field private static final MAX1_PATTERN_REGEX:Ljava/lang/String; = "^[Mm][Aa][Xx][0-9]{1}$"

.field private static final MTK:Ljava/lang/String; = "mtk"

.field private static final QCOM:Ljava/lang/String; = "qcom"

.field private static final RO_VENDOR:Ljava/lang/String; = "ro.product.customize"

.field private static final VENDOR_CMCC:Ljava/lang/String; = "china-mobile"

.field private static final VENDOR_CT:Ljava/lang/String; = "china-telecom"

.field private static final VENDOR_CU:Ljava/lang/String; = "china-unicom"

.field private static final VENDOR_DEFAULT:Ljava/lang/String; = "default"

.field private static final VENDOR_HONGKONG:Ljava/lang/String; = "hongkong"

.field private static final VENDOR_INDIA:Ljava/lang/String; = "india"

.field private static final VENDOR_OVERSEA:Ljava/lang/String; = "oversea"

.field private static final VENDOR_THAILAND:Ljava/lang/String; = "thailand"

.field private static final VENDOR_WN:Ljava/lang/String; = "whole-netcom"

.field private static final WHOLE_NETCOM_PATTERN_REGEX:Ljava/lang/String; = "^[Xx][0-9]{3}[+]$"

.field private static final X1_PATTERN_REGEX:Ljava/lang/String; = "^[Xx][0-9]{1}$"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefaultCountryCode()Ljava/lang/String;
    .locals 3

    .prologue
    .line 121
    const-string/jumbo v0, ""

    .line 122
    .local v0, "countryCode":Ljava/lang/String;
    const-string/jumbo v2, "ro.product.customize"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 123
    .local v1, "countryName":Ljava/lang/String;
    const-string/jumbo v2, "default"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "china-telecom"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 124
    const-string/jumbo v2, "china-mobile"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 123
    if-nez v2, :cond_0

    .line 124
    const-string/jumbo v2, "china-unicom"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 123
    if-nez v2, :cond_0

    .line 124
    const-string/jumbo v2, "whole-netcom"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 123
    if-eqz v2, :cond_1

    .line 125
    :cond_0
    const-string/jumbo v0, "CN"

    .line 138
    :goto_0
    return-object v0

    .line 126
    :cond_1
    const-string/jumbo v2, "hongkong"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 127
    const-string/jumbo v0, "HK"

    goto :goto_0

    .line 128
    :cond_2
    const-string/jumbo v2, "india"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 129
    const-string/jumbo v0, "IN"

    goto :goto_0

    .line 130
    :cond_3
    const-string/jumbo v2, "thailand"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 131
    const-string/jumbo v0, "TH"

    goto :goto_0

    .line 132
    :cond_4
    const-string/jumbo v2, "oversea"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 133
    const-string/jumbo v0, "US"

    goto :goto_0

    .line 135
    :cond_5
    const-string/jumbo v0, "NULL"

    goto :goto_0
.end method

.method public static getDeviceName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 43
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 44
    .local v0, "deviceName":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 45
    const-string/jumbo v1, ""

    return-object v1

    .line 47
    :cond_0
    return-object v0
.end method

.method public static getPlatformName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 56
    const-string/jumbo v1, ""

    .line 57
    .local v1, "platformValue":Ljava/lang/String;
    invoke-static {}, Lcom/letv/leui/util/LeSystemProperties;->getDeviceName()Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, "deviceName":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 59
    const-string/jumbo v2, ""

    return-object v2

    .line 61
    :cond_0
    const-string/jumbo v2, "^[Xx][0-9]{1}$"

    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "^[Mm][Aa][Xx][0-9]{1}$"

    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 62
    :cond_1
    const-string/jumbo v1, "qcom"

    .line 66
    :goto_0
    return-object v1

    .line 64
    :cond_2
    const-string/jumbo v1, "mtk"

    goto :goto_0
.end method

.method public static getProductModelName()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 105
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 107
    .local v0, "productModel":Ljava/lang/String;
    const-string/jumbo v1, "^[Xx][0-9]{3}$"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "^[Xx][0-9]{3}[+]$"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 109
    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x36

    if-ne v1, v2, :cond_2

    .line 110
    const-string/jumbo v0, "Le 1"

    .line 117
    :cond_1
    :goto_0
    return-object v0

    .line 111
    :cond_2
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x38

    if-ne v1, v2, :cond_3

    .line 112
    const-string/jumbo v0, "Le 1 Pro"

    goto :goto_0

    .line 113
    :cond_3
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x39

    if-ne v1, v2, :cond_1

    .line 114
    const-string/jumbo v0, "Le Max"

    goto :goto_0
.end method

.method public static getVendorName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 82
    const-string/jumbo v1, ""

    .line 83
    .local v1, "vendorType":Ljava/lang/String;
    const-string/jumbo v2, "ro.product.customize"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, "platformName":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string/jumbo v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 87
    :cond_0
    invoke-static {}, Lcom/letv/leui/util/LeSystemProperties;->lookupOldVendorTable()Ljava/lang/String;

    move-result-object v1

    .line 89
    :goto_0
    return-object v1

    .line 85
    :cond_1
    move-object v1, v0

    .line 84
    goto :goto_0
.end method

.method private static lookupOldVendorTable()Ljava/lang/String;
    .locals 3

    .prologue
    .line 146
    const-string/jumbo v1, ""

    .line 147
    .local v1, "vendorValue":Ljava/lang/String;
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 148
    .local v0, "modelInfo":Ljava/lang/String;
    const-string/jumbo v2, "^[Xx][0-9]{3}$"

    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 149
    const-string/jumbo v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 150
    const-string/jumbo v1, "default"

    .line 164
    :cond_0
    :goto_0
    return-object v1

    .line 151
    :cond_1
    const-string/jumbo v2, "6"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 152
    const-string/jumbo v1, "china-telecom"

    goto :goto_0

    .line 153
    :cond_2
    const-string/jumbo v2, "8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 154
    const-string/jumbo v1, "china-mobile"

    goto :goto_0

    .line 156
    :cond_3
    const-string/jumbo v2, "^[Xx][0-9]{3}[+]$"

    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 157
    const-string/jumbo v2, "+"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 158
    const-string/jumbo v1, "whole-netcom"

    goto :goto_0

    .line 160
    :cond_4
    const-string/jumbo v2, "Le"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "Max"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string/jumbo v2, "Pro"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 161
    :cond_5
    const-string/jumbo v1, "oversea"

    goto :goto_0
.end method
