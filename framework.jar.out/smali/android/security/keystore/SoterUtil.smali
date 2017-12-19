.class public Landroid/security/keystore/SoterUtil;
.super Ljava/lang/Object;
.source "SoterUtil.java"


# static fields
.field private static final FEATURE_SUPPORTED:Z

.field public static final JSON_KEY_PUBLIC:Ljava/lang/String; = "pub_key"

.field private static final PARAM_NEED_AUTO_ADD_COUNTER_WHEN_GET_PUBLIC_KEY:Ljava/lang/String; = "addcounter"

.field private static final PARAM_NEED_AUTO_ADD_SECMSG_FID_COUNTER_WHEN_SIGN:Ljava/lang/String; = "secmsg_and_counter_signed_when_sign"

.field private static final PARAM_NEED_AUTO_SIGNED_WITH_ATTK_WHEN_GET_PUBLIC_KEY:Ljava/lang/String; = "auto_signed_when_get_pubkey_attk"

.field private static final PARAM_NEED_AUTO_SIGNED_WITH_COMMON_KEY_WHEN_GET_PUBLIC_KEY:Ljava/lang/String; = "auto_signed_when_get_pubkey"

.field private static final PARAM_NEED_NEXT_ATTK:Ljava/lang/String; = "next_attk"

.field private static final RAW_LENGTH_PREFIX:I = 0x4

.field public static final TAG:Ljava/lang/String; = "Soter"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 19
    const-string/jumbo v0, "ro.mtk_soter_support"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 18
    sput-boolean v0, Landroid/security/keystore/SoterUtil;->FEATURE_SUPPORTED:Z

    .line 15
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static contains(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 5
    .param p0, "target"    # Ljava/lang/String;
    .param p1, "src"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 100
    if-eqz p1, :cond_0

    array-length v1, p1

    if-nez v1, :cond_1

    .line 101
    :cond_0
    const-string/jumbo v1, "Soter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SoterUtil.contains: param error, target = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", src = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "param error"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 100
    :cond_1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 104
    array-length v3, p1

    move v1, v2

    :goto_0
    if-ge v1, v3, :cond_3

    aget-object v0, p1, v1

    .line 105
    .local v0, "item":Ljava/lang/String;
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 106
    const/4 v1, 0x1

    return v1

    .line 104
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 109
    .end local v0    # "item":Ljava/lang/String;
    :cond_3
    return v2
.end method

.method public static convertKeyNameToParameterSpec(Ljava/lang/String;)Landroid/security/keystore/SoterRSAKeyGenParameterSpec;
    .locals 14
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const/4 v13, 0x0

    .line 35
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 36
    const-string/jumbo v11, "Soter"

    const-string/jumbo v12, "SoterUtil.convertKeyNameToParameterSpec: name is empty"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    return-object v13

    .line 39
    :cond_0
    const-string/jumbo v11, "\\."

    invoke-virtual {p0, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 40
    .local v10, "splits":[Ljava/lang/String;
    if-eqz v10, :cond_1

    array-length v11, v10

    const/4 v12, 0x1

    if-gt v11, v12, :cond_2

    .line 41
    :cond_1
    const-string/jumbo v11, "Soter"

    const-string/jumbo v12, "SoterUtil.convertKeyNameToParameterSpec: pure alias, no parameter"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    return-object v13

    .line 44
    :cond_2
    const/4 v1, 0x1

    .line 45
    .local v1, "isForSoter":Z
    const/4 v2, 0x0

    .line 46
    .local v2, "isAutoSignedWithAttkWhenGetPublicKey":Z
    const/4 v3, 0x0

    .line 47
    .local v3, "isAutoSignedWithCommonkWhenGetPublicKey":Z
    const-string/jumbo v4, ""

    .line 48
    .local v4, "mAutoSignedKeyNameWhenGetPublicKey":Ljava/lang/String;
    const/4 v5, 0x0

    .line 49
    .local v5, "isSecmsgFidCounterSignedWhenSign":Z
    const/4 v6, 0x0

    .line 50
    .local v6, "isAutoAddCounterWhenGetPublicKey":Z
    const/4 v7, 0x0

    .line 52
    .local v7, "isNeedNextAttk":Z
    const-string/jumbo v11, "auto_signed_when_get_pubkey_attk"

    invoke-static {v11, v10}, Landroid/security/keystore/SoterUtil;->contains(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 53
    const/4 v2, 0x1

    .line 65
    :cond_3
    :goto_0
    const-string/jumbo v11, "secmsg_and_counter_signed_when_sign"

    invoke-static {v11, v10}, Landroid/security/keystore/SoterUtil;->contains(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 66
    const/4 v5, 0x1

    .line 68
    :cond_4
    const-string/jumbo v11, "addcounter"

    invoke-static {v11, v10}, Landroid/security/keystore/SoterUtil;->contains(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 69
    const/4 v6, 0x1

    .line 71
    const-string/jumbo v11, "next_attk"

    invoke-static {v11, v10}, Landroid/security/keystore/SoterUtil;->contains(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 72
    const/4 v7, 0x1

    .line 75
    :cond_5
    new-instance v0, Landroid/security/keystore/SoterRSAKeyGenParameterSpec;

    invoke-direct/range {v0 .. v7}, Landroid/security/keystore/SoterRSAKeyGenParameterSpec;-><init>(ZZZLjava/lang/String;ZZZ)V

    .line 79
    .local v0, "spec":Landroid/security/keystore/SoterRSAKeyGenParameterSpec;
    const-string/jumbo v11, "Soter"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "SoterUtil.convertKeyNameToParameterSpec: spec: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v0}, Landroid/security/keystore/SoterRSAKeyGenParameterSpec;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    return-object v0

    .line 55
    .end local v0    # "spec":Landroid/security/keystore/SoterRSAKeyGenParameterSpec;
    :cond_6
    const-string/jumbo v11, "auto_signed_when_get_pubkey"

    invoke-static {v11, v10}, Landroid/security/keystore/SoterUtil;->retrieveItemWithPrefix(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 56
    .local v9, "entireCommonKeyExpr":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 57
    invoke-static {v9}, Landroid/security/keystore/SoterUtil;->retrieveKeyNameFromExpr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 58
    .local v8, "commonKeyName":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 59
    const/4 v3, 0x1

    .line 60
    move-object v4, v8

    goto :goto_0
.end method

.method public static getDataFromRaw([BLjava/lang/String;)[B
    .locals 7
    .param p0, "origin"    # [B
    .param p1, "jsonKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 146
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 147
    const-string/jumbo v4, "Soter"

    const-string/jumbo v5, "SoterUtil.getDataFromRaw: jsonKey is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    return-object v6

    .line 150
    :cond_0
    if-nez p0, :cond_1

    .line 151
    const-string/jumbo v4, "Soter"

    const-string/jumbo v5, "SoterUtil.getDataFromRaw: json origin is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    return-object v6

    .line 154
    :cond_1
    invoke-static {p0}, Landroid/security/keystore/SoterUtil;->retriveJsonFromExportedData([B)Lorg/json/JSONObject;

    move-result-object v2

    .line 155
    .local v2, "jsonObj":Lorg/json/JSONObject;
    if-eqz v2, :cond_2

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 157
    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 158
    .local v0, "base64pubkey":Ljava/lang/String;
    const-string/jumbo v4, "Soter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "SoterUtil.getDataFromRaw: base64 encoded public key: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    const-string/jumbo v4, "-----BEGIN PUBLIC KEY-----"

    const-string/jumbo v5, ""

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 162
    const-string/jumbo v5, "-----END PUBLIC KEY-----"

    const-string/jumbo v6, ""

    .line 161
    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 162
    const-string/jumbo v5, "\\n"

    const-string/jumbo v6, ""

    .line 161
    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 163
    .local v3, "pureBase64pubkey":Ljava/lang/String;
    const-string/jumbo v4, "Soter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "SoterUtil.getDataFromRaw: pure base64 encoded public key: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    .line 166
    .local v1, "decoded":[B
    return-object v1

    .line 168
    .end local v0    # "base64pubkey":Ljava/lang/String;
    .end local v1    # "decoded":[B
    .end local v3    # "pureBase64pubkey":Ljava/lang/String;
    :cond_2
    return-object v6
.end method

.method public static getPureKeyAliasFromKeyName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 132
    const-string/jumbo v1, "Soter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SoterUtil.getPureKeyAliasFromKeyName: name = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 134
    const-string/jumbo v1, "Soter"

    const-string/jumbo v2, "SoterUtil.getPureKeyAliasFromKeyName: name is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    return-object v4

    .line 137
    :cond_0
    const-string/jumbo v1, "\\."

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 138
    .local v0, "splits":[Ljava/lang/String;
    if-eqz v0, :cond_1

    array-length v1, v0

    const/4 v2, 0x1

    if-gt v1, v2, :cond_2

    .line 139
    :cond_1
    const-string/jumbo v1, "Soter"

    const-string/jumbo v2, "SoterUtil.getPureKeyAliasFromKeyName: pure alias"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    return-object p0

    .line 142
    :cond_2
    const/4 v1, 0x0

    aget-object v1, v0, v1

    return-object v1
.end method

.method public static isSupported()Z
    .locals 1

    .prologue
    .line 31
    sget-boolean v0, Landroid/security/keystore/SoterUtil;->FEATURE_SUPPORTED:Z

    return v0
.end method

.method private static retrieveItemWithPrefix(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "src"    # [Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 119
    if-eqz p1, :cond_0

    array-length v2, p1

    if-nez v2, :cond_1

    .line 120
    :cond_0
    const-string/jumbo v1, "Soter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SoterUtil.retrieveItemWithPrefix: param error, prefix = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", src = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "param error"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 119
    :cond_1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 123
    array-length v2, p1

    :goto_0
    if-ge v1, v2, :cond_3

    aget-object v0, p1, v1

    .line 124
    .local v0, "item":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v0, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 125
    return-object v0

    .line 123
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 128
    .end local v0    # "item":Ljava/lang/String;
    :cond_3
    return-object v4
.end method

.method private static retrieveKeyNameFromExpr(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "expr"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 84
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 85
    const-string/jumbo v2, "("

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 86
    .local v1, "startPos":I
    const-string/jumbo v2, ")"

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 87
    .local v0, "endPos":I
    if-ltz v1, :cond_0

    if-le v0, v1, :cond_0

    .line 88
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 90
    :cond_0
    const-string/jumbo v2, "Soter"

    const-string/jumbo v3, "SoterUtil.retrieveKeyNameFromExpr: no key name"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    return-object v4

    .line 93
    .end local v0    # "endPos":I
    .end local v1    # "startPos":I
    :cond_1
    const-string/jumbo v2, "Soter"

    const-string/jumbo v3, "SoterUtil.retrieveKeyNameFromExpr: expr is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    return-object v4
.end method

.method private static retriveJsonFromExportedData([B)Lorg/json/JSONObject;
    .locals 11
    .param p0, "origin"    # [B

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x4

    .line 172
    if-nez p0, :cond_0

    .line 173
    const-string/jumbo v5, "Soter"

    const-string/jumbo v6, "SoterUtil.retriveJsonFromExportedData: raw data is null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    return-object v9

    .line 176
    :cond_0
    array-length v5, p0

    if-ge v5, v8, :cond_1

    .line 177
    const-string/jumbo v5, "Soter"

    const-string/jumbo v6, "SoterUtil.retriveJsonFromExportedData: raw data length smaller than 4"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :cond_1
    new-array v2, v8, [B

    .line 181
    .local v2, "lengthBytes":[B
    invoke-static {p0, v10, v2, v10, v8}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 182
    invoke-static {v2}, Landroid/security/keystore/SoterUtil;->toInt([B)I

    move-result v4

    .line 183
    .local v4, "rawLength":I
    const-string/jumbo v5, "Soter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "SoterUtil.retriveJsonFromExportedData: parsed raw length: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 184
    const-string/jumbo v7, ", origin.length = "

    .line 183
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 184
    array-length v7, p0

    .line 183
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    new-array v3, v4, [B

    .line 187
    .local v3, "rawJsonBytes":[B
    array-length v5, p0

    add-int/lit8 v6, v4, 0x4

    if-gt v5, v6, :cond_2

    .line 188
    const-string/jumbo v5, "Soter"

    const-string/jumbo v6, "SoterUtil.retriveJsonFromExportedData: length not correct"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    return-object v9

    .line 191
    :cond_2
    invoke-static {p0, v8, v3, v10, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 192
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>([B)V

    .line 193
    .local v1, "jsonStr":Ljava/lang/String;
    const-string/jumbo v5, "Soter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "SoterUtil.retriveJsonFromExportedData: converted json: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v5

    .line 196
    :catch_0
    move-exception v0

    .line 197
    .local v0, "e":Lorg/json/JSONException;
    const-string/jumbo v5, "Soter"

    const-string/jumbo v6, "SoterUtil.retriveJsonFromExportedData: convert to json fail"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 199
    return-object v9
.end method

.method public static toInt([B)I
    .locals 5
    .param p0, "bRefArr"    # [B

    .prologue
    .line 203
    const/4 v2, 0x0

    .line 206
    .local v2, "iOutcome":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_0

    .line 207
    aget-byte v0, p0, v1

    .line 208
    .local v0, "bLoop":B
    and-int/lit16 v3, v0, 0xff

    mul-int/lit8 v4, v1, 0x8

    shl-int/2addr v3, v4

    add-int/2addr v2, v3

    .line 206
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 210
    .end local v0    # "bLoop":B
    :cond_0
    return v2
.end method
