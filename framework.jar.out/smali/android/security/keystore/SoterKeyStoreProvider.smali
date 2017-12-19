.class public Landroid/security/keystore/SoterKeyStoreProvider;
.super Ljava/security/Provider;
.source "SoterKeyStoreProvider.java"


# static fields
.field private static final ANDROID_PACKAGE_NAME:Ljava/lang/String; = "android.security.keystore"

.field public static final PROVIDER_NAME:Ljava/lang/String; = "SoterKeyStore"

.field private static final SOTER_PACKAGE_NAME:Ljava/lang/String; = "android.security.keystore"


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 48
    const-string/jumbo v0, "SoterKeyStore"

    const-string/jumbo v1, "provider for soter"

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-direct {p0, v0, v2, v3, v1}, Ljava/security/Provider;-><init>(Ljava/lang/String;DLjava/lang/String;)V

    .line 49
    const-string/jumbo v0, "KeyPairGenerator.RSA"

    const-string/jumbo v1, "android.security.keystore.SoterKeyStoreKeyPairRSAGeneratorSpi"

    invoke-virtual {p0, v0, v1}, Landroid/security/keystore/SoterKeyStoreProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    const-string/jumbo v0, "KeyStore.SoterKeyStore"

    const-string/jumbo v1, "android.security.keystore.SoterKeyStoreSpi"

    invoke-virtual {p0, v0, v1}, Landroid/security/keystore/SoterKeyStoreProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    const-string/jumbo v0, "RSA"

    invoke-direct {p0, v0}, Landroid/security/keystore/SoterKeyStoreProvider;->putKeyFactoryImpl(Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public static getAndroidKeyStorePrivateKey(Landroid/security/keystore/AndroidKeyStorePublicKey;)Landroid/security/keystore/AndroidKeyStorePrivateKey;
    .locals 4
    .param p0, "publicKey"    # Landroid/security/keystore/AndroidKeyStorePublicKey;

    .prologue
    .line 66
    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStorePublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, "keyAlgorithm":Ljava/lang/String;
    const-string/jumbo v1, "EC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 68
    new-instance v1, Landroid/security/keystore/AndroidKeyStoreECPrivateKey;

    .line 69
    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStorePublicKey;->getAlias()Ljava/lang/String;

    move-result-object v2

    check-cast p0, Ljava/security/interfaces/ECKey;

    .end local p0    # "publicKey":Landroid/security/keystore/AndroidKeyStorePublicKey;
    invoke-interface {p0}, Ljava/security/interfaces/ECKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v3

    .line 68
    invoke-direct {v1, v2, v3}, Landroid/security/keystore/AndroidKeyStoreECPrivateKey;-><init>(Ljava/lang/String;Ljava/security/spec/ECParameterSpec;)V

    return-object v1

    .line 70
    .restart local p0    # "publicKey":Landroid/security/keystore/AndroidKeyStorePublicKey;
    :cond_0
    const-string/jumbo v1, "RSA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 71
    new-instance v1, Landroid/security/keystore/AndroidKeyStoreRSAPrivateKey;

    .line 72
    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStorePublicKey;->getAlias()Ljava/lang/String;

    move-result-object v2

    check-cast p0, Ljava/security/interfaces/RSAKey;

    .end local p0    # "publicKey":Landroid/security/keystore/AndroidKeyStorePublicKey;
    invoke-interface {p0}, Ljava/security/interfaces/RSAKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v3

    .line 71
    invoke-direct {v1, v2, v3}, Landroid/security/keystore/AndroidKeyStoreRSAPrivateKey;-><init>(Ljava/lang/String;Ljava/math/BigInteger;)V

    return-object v1

    .line 74
    .restart local p0    # "publicKey":Landroid/security/keystore/AndroidKeyStorePublicKey;
    :cond_1
    new-instance v1, Ljava/security/ProviderException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unsupported Android Keystore public key algorithm: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getAndroidKeyStorePublicKey(Ljava/lang/String;Ljava/lang/String;[B)Landroid/security/keystore/AndroidKeyStorePublicKey;
    .locals 10
    .param p0, "alias"    # Ljava/lang/String;
    .param p1, "keyAlgorithm"    # Ljava/lang/String;
    .param p2, "x509EncodedForm"    # [B

    .prologue
    .line 138
    :try_start_0
    invoke-static {p1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v3

    .line 139
    .local v3, "keyFactory":Ljava/security/KeyFactory;
    const-string/jumbo v7, "pub_key"

    invoke-static {p2, v7}, Landroid/security/keystore/SoterUtil;->getDataFromRaw([BLjava/lang/String;)[B

    move-result-object v5

    .line 140
    .local v5, "realPublicKey":[B
    if-eqz v5, :cond_0

    .line 141
    new-instance v7, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v7, v5}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v3, v7}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .line 153
    .local v4, "publicKey":Ljava/security/PublicKey;
    const-string/jumbo v7, "EC"

    invoke-virtual {v7, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 154
    const-string/jumbo v7, "Soter"

    const-string/jumbo v8, "SoterKeyStoreProvider.getAndroidKeyStorePublicKey: AndroidKeyStoreECPublicKey"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    new-instance v7, Landroid/security/keystore/AndroidKeyStoreECPublicKey;

    check-cast v4, Ljava/security/interfaces/ECPublicKey;

    .end local v4    # "publicKey":Ljava/security/PublicKey;
    invoke-direct {v7, p0, v4}, Landroid/security/keystore/AndroidKeyStoreECPublicKey;-><init>(Ljava/lang/String;Ljava/security/interfaces/ECPublicKey;)V

    return-object v7

    .line 143
    :cond_0
    :try_start_1
    new-instance v7, Ljava/lang/NullPointerException;

    const-string/jumbo v8, "invalid soter public key"

    invoke-direct {v7, v8}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 145
    .end local v3    # "keyFactory":Ljava/security/KeyFactory;
    .end local v5    # "realPublicKey":[B
    :catch_0
    move-exception v0

    .line 146
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v7, Ljava/security/ProviderException;

    .line 147
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Failed to obtain "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " KeyFactory"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 146
    invoke-direct {v7, v8, v0}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 150
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v2

    .line 151
    .local v2, "e":Lorg/json/JSONException;
    new-instance v7, Ljava/security/ProviderException;

    const-string/jumbo v8, "Not in json format"

    invoke-direct {v7, v8}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 148
    .end local v2    # "e":Lorg/json/JSONException;
    :catch_2
    move-exception v1

    .line 149
    .local v1, "e":Ljava/security/spec/InvalidKeySpecException;
    new-instance v7, Ljava/security/ProviderException;

    const-string/jumbo v8, "Invalid X.509 encoding of public key"

    invoke-direct {v7, v8, v1}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 156
    .end local v1    # "e":Ljava/security/spec/InvalidKeySpecException;
    .restart local v3    # "keyFactory":Ljava/security/KeyFactory;
    .restart local v4    # "publicKey":Ljava/security/PublicKey;
    .restart local v5    # "realPublicKey":[B
    :cond_1
    const-string/jumbo v7, "RSA"

    invoke-virtual {v7, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 157
    const-string/jumbo v7, "Soter"

    const-string/jumbo v8, "SoterKeyStoreProvider.getAndroidKeyStorePublicKey: AndroidKeyStoreRSAPublicKey"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v4

    .line 158
    check-cast v6, Ljava/security/interfaces/RSAPublicKey;

    .line 165
    .local v6, "rsaPubKey":Ljava/security/interfaces/RSAPublicKey;
    new-instance v7, Landroid/security/keystore/AndroidKeyStoreRSAPublicKey;

    invoke-direct {v7, p0, v6}, Landroid/security/keystore/AndroidKeyStoreRSAPublicKey;-><init>(Ljava/lang/String;Ljava/security/interfaces/RSAPublicKey;)V

    return-object v7

    .line 167
    .end local v6    # "rsaPubKey":Ljava/security/interfaces/RSAPublicKey;
    :cond_2
    new-instance v7, Ljava/security/ProviderException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Unsupported Android Keystore public key algorithm: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method public static getJsonPublicKey(Ljava/lang/String;Ljava/lang/String;[B)Landroid/security/keystore/AndroidKeyStorePublicKey;
    .locals 10
    .param p0, "alias"    # Ljava/lang/String;
    .param p1, "keyAlgorithm"    # Ljava/lang/String;
    .param p2, "x509EncodedForm"    # [B

    .prologue
    .line 227
    :try_start_0
    invoke-static {p1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v3

    .line 228
    .local v3, "keyFactory":Ljava/security/KeyFactory;
    const-string/jumbo v7, "pub_key"

    invoke-static {p2, v7}, Landroid/security/keystore/SoterUtil;->getDataFromRaw([BLjava/lang/String;)[B

    move-result-object v5

    .line 229
    .local v5, "realPublicKey":[B
    if-eqz v5, :cond_0

    .line 230
    new-instance v7, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v7, v5}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v3, v7}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .line 242
    .local v4, "publicKey":Ljava/security/PublicKey;
    const-string/jumbo v7, "EC"

    invoke-virtual {v7, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 243
    const-string/jumbo v7, "Soter"

    const-string/jumbo v8, "AndroidKeyStoreECPublicKey"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    new-instance v7, Landroid/security/keystore/AndroidKeyStoreECPublicKey;

    check-cast v4, Ljava/security/interfaces/ECPublicKey;

    .end local v4    # "publicKey":Ljava/security/PublicKey;
    invoke-direct {v7, p0, v4}, Landroid/security/keystore/AndroidKeyStoreECPublicKey;-><init>(Ljava/lang/String;Ljava/security/interfaces/ECPublicKey;)V

    return-object v7

    .line 232
    :cond_0
    :try_start_1
    new-instance v7, Ljava/lang/NullPointerException;

    const-string/jumbo v8, "invalid soter public key"

    invoke-direct {v7, v8}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 234
    .end local v3    # "keyFactory":Ljava/security/KeyFactory;
    .end local v5    # "realPublicKey":[B
    :catch_0
    move-exception v0

    .line 235
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v7, Ljava/security/ProviderException;

    .line 236
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Failed to obtain "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " KeyFactory"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 235
    invoke-direct {v7, v8, v0}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 239
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v2

    .line 240
    .local v2, "e":Lorg/json/JSONException;
    new-instance v7, Ljava/security/ProviderException;

    const-string/jumbo v8, "Not in json format"

    invoke-direct {v7, v8}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 237
    .end local v2    # "e":Lorg/json/JSONException;
    :catch_2
    move-exception v1

    .line 238
    .local v1, "e":Ljava/security/spec/InvalidKeySpecException;
    new-instance v7, Ljava/security/ProviderException;

    const-string/jumbo v8, "Invalid X.509 encoding of public key"

    invoke-direct {v7, v8, v1}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 245
    .end local v1    # "e":Ljava/security/spec/InvalidKeySpecException;
    .restart local v3    # "keyFactory":Ljava/security/KeyFactory;
    .restart local v4    # "publicKey":Ljava/security/PublicKey;
    .restart local v5    # "realPublicKey":[B
    :cond_1
    const-string/jumbo v7, "RSA"

    invoke-virtual {v7, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 246
    const-string/jumbo v7, "Soter"

    const-string/jumbo v8, "getJsonPublicKey"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v4

    .line 247
    check-cast v6, Ljava/security/interfaces/RSAPublicKey;

    .line 254
    .local v6, "rsaPubKey":Ljava/security/interfaces/RSAPublicKey;
    new-instance v7, Landroid/security/keystore/AndroidKeyStoreRSAPublicKey;

    invoke-interface {v6}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v8

    invoke-interface {v6}, Ljava/security/interfaces/RSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v9

    invoke-direct {v7, p0, p2, v8, v9}, Landroid/security/keystore/AndroidKeyStoreRSAPublicKey;-><init>(Ljava/lang/String;[BLjava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v7

    .line 256
    .end local v6    # "rsaPubKey":Ljava/security/interfaces/RSAPublicKey;
    :cond_2
    new-instance v7, Ljava/security/ProviderException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Unsupported Android Keystore public key algorithm: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method public static install()V
    .locals 1

    .prologue
    .line 59
    new-instance v0, Landroid/security/keystore/SoterKeyStoreProvider;

    invoke-direct {v0}, Landroid/security/keystore/SoterKeyStoreProvider;-><init>()V

    invoke-static {v0}, Ljava/security/Security;->addProvider(Ljava/security/Provider;)I

    .line 58
    return-void
.end method

.method public static loadAndroidKeyStoreKeyPairFromKeystore(Landroid/security/KeyStore;Ljava/lang/String;)Ljava/security/KeyPair;
    .locals 3
    .param p0, "keyStore"    # Landroid/security/KeyStore;
    .param p1, "privateKeyAlias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    .prologue
    .line 125
    invoke-static {p0, p1}, Landroid/security/keystore/SoterKeyStoreProvider;->loadAndroidKeyStorePublicKeyFromKeystore(Landroid/security/KeyStore;Ljava/lang/String;)Landroid/security/keystore/AndroidKeyStorePublicKey;

    move-result-object v1

    .line 127
    .local v1, "publicKey":Landroid/security/keystore/AndroidKeyStorePublicKey;
    invoke-static {v1}, Landroid/security/keystore/SoterKeyStoreProvider;->getAndroidKeyStorePrivateKey(Landroid/security/keystore/AndroidKeyStorePublicKey;)Landroid/security/keystore/AndroidKeyStorePrivateKey;

    move-result-object v0

    .line 128
    .local v0, "privateKey":Landroid/security/keystore/AndroidKeyStorePrivateKey;
    new-instance v2, Ljava/security/KeyPair;

    invoke-direct {v2, v1, v0}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    return-object v2
.end method

.method public static loadAndroidKeyStorePrivateKeyFromKeystore(Landroid/security/KeyStore;Ljava/lang/String;)Landroid/security/keystore/AndroidKeyStorePrivateKey;
    .locals 2
    .param p0, "keyStore"    # Landroid/security/KeyStore;
    .param p1, "privateKeyAlias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    .prologue
    .line 176
    invoke-static {p0, p1}, Landroid/security/keystore/SoterKeyStoreProvider;->loadAndroidKeyStoreKeyPairFromKeystore(Landroid/security/KeyStore;Ljava/lang/String;)Ljava/security/KeyPair;

    move-result-object v0

    .line 177
    .local v0, "keyPair":Ljava/security/KeyPair;
    invoke-virtual {v0}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v1

    check-cast v1, Landroid/security/keystore/AndroidKeyStorePrivateKey;

    return-object v1
.end method

.method public static loadAndroidKeyStorePublicKeyFromKeystore(Landroid/security/KeyStore;Ljava/lang/String;)Landroid/security/keystore/AndroidKeyStorePublicKey;
    .locals 10
    .param p0, "keyStore"    # Landroid/security/KeyStore;
    .param p1, "privateKeyAlias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 83
    new-instance v4, Landroid/security/keymaster/KeyCharacteristics;

    invoke-direct {v4}, Landroid/security/keymaster/KeyCharacteristics;-><init>()V

    .line 84
    .local v4, "keyCharacteristics":Landroid/security/keymaster/KeyCharacteristics;
    invoke-virtual {p0, p1, v8, v8, v4}, Landroid/security/KeyStore;->getKeyCharacteristics(Ljava/lang/String;Landroid/security/keymaster/KeymasterBlob;Landroid/security/keymaster/KeymasterBlob;Landroid/security/keymaster/KeyCharacteristics;)I

    move-result v1

    .line 86
    .local v1, "errorCode":I
    if-eq v1, v9, :cond_0

    .line 88
    new-instance v7, Ljava/security/UnrecoverableKeyException;

    const-string/jumbo v8, "Failed to obtain information about private key"

    invoke-direct {v7, v8}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    .line 89
    invoke-static {v1}, Landroid/security/KeyStore;->getKeyStoreException(I)Landroid/security/KeyStoreException;

    move-result-object v8

    .line 88
    invoke-virtual {v7, v8}, Ljava/security/UnrecoverableKeyException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v7

    .line 87
    check-cast v7, Ljava/security/UnrecoverableKeyException;

    throw v7

    .line 92
    :cond_0
    const/4 v7, 0x0

    .line 91
    invoke-virtual {p0, p1, v7, v8, v8}, Landroid/security/KeyStore;->exportKey(Ljava/lang/String;ILandroid/security/keymaster/KeymasterBlob;Landroid/security/keymaster/KeymasterBlob;)Landroid/security/keymaster/ExportResult;

    move-result-object v2

    .line 93
    .local v2, "exportResult":Landroid/security/keymaster/ExportResult;
    iget v7, v2, Landroid/security/keymaster/ExportResult;->resultCode:I

    if-eq v7, v9, :cond_1

    .line 95
    new-instance v7, Ljava/security/UnrecoverableKeyException;

    const-string/jumbo v8, "Failed to obtain X.509 form of public key"

    invoke-direct {v7, v8}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    .line 96
    invoke-static {v1}, Landroid/security/KeyStore;->getKeyStoreException(I)Landroid/security/KeyStoreException;

    move-result-object v8

    .line 95
    invoke-virtual {v7, v8}, Ljava/security/UnrecoverableKeyException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v7

    .line 94
    check-cast v7, Ljava/security/UnrecoverableKeyException;

    throw v7

    .line 98
    :cond_1
    iget-object v6, v2, Landroid/security/keymaster/ExportResult;->exportData:[B

    .line 100
    .local v6, "x509EncodedPublicKey":[B
    const v7, 0x10000002

    invoke-virtual {v4, v7}, Landroid/security/keymaster/KeyCharacteristics;->getEnum(I)Ljava/lang/Integer;

    move-result-object v5

    .line 101
    .local v5, "keymasterAlgorithm":Ljava/lang/Integer;
    if-nez v5, :cond_2

    .line 102
    new-instance v7, Ljava/security/UnrecoverableKeyException;

    const-string/jumbo v8, "Key algorithm unknown"

    invoke-direct {v7, v8}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 108
    :cond_2
    :try_start_0
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 107
    invoke-static {v7}, Landroid/security/keystore/KeyProperties$KeyAlgorithm;->fromKeymasterAsymmetricKeyAlgorithm(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 115
    .local v3, "jcaKeyAlgorithm":Ljava/lang/String;
    invoke-static {p1, v3, v6}, Landroid/security/keystore/SoterKeyStoreProvider;->getAndroidKeyStorePublicKey(Ljava/lang/String;Ljava/lang/String;[B)Landroid/security/keystore/AndroidKeyStorePublicKey;

    move-result-object v7

    return-object v7

    .line 109
    .end local v3    # "jcaKeyAlgorithm":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 111
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v7, Ljava/security/UnrecoverableKeyException;

    const-string/jumbo v8, "Failed to load private key"

    invoke-direct {v7, v8}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/security/UnrecoverableKeyException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v7

    .line 110
    check-cast v7, Ljava/security/UnrecoverableKeyException;

    throw v7
.end method

.method public static loadJsonPublicKeyFromKeystore(Landroid/security/KeyStore;Ljava/lang/String;)Landroid/security/keystore/AndroidKeyStorePublicKey;
    .locals 10
    .param p0, "keyStore"    # Landroid/security/KeyStore;
    .param p1, "privateKeyAlias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 184
    new-instance v4, Landroid/security/keymaster/KeyCharacteristics;

    invoke-direct {v4}, Landroid/security/keymaster/KeyCharacteristics;-><init>()V

    .line 185
    .local v4, "keyCharacteristics":Landroid/security/keymaster/KeyCharacteristics;
    invoke-virtual {p0, p1, v8, v8, v4}, Landroid/security/KeyStore;->getKeyCharacteristics(Ljava/lang/String;Landroid/security/keymaster/KeymasterBlob;Landroid/security/keymaster/KeymasterBlob;Landroid/security/keymaster/KeyCharacteristics;)I

    move-result v1

    .line 187
    .local v1, "errorCode":I
    if-eq v1, v9, :cond_0

    .line 189
    new-instance v7, Ljava/security/UnrecoverableKeyException;

    const-string/jumbo v8, "Failed to obtain information about private key"

    invoke-direct {v7, v8}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    .line 190
    invoke-static {v1}, Landroid/security/KeyStore;->getKeyStoreException(I)Landroid/security/KeyStoreException;

    move-result-object v8

    .line 189
    invoke-virtual {v7, v8}, Ljava/security/UnrecoverableKeyException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v7

    .line 188
    check-cast v7, Ljava/security/UnrecoverableKeyException;

    throw v7

    .line 193
    :cond_0
    const/4 v7, 0x0

    .line 192
    invoke-virtual {p0, p1, v7, v8, v8}, Landroid/security/KeyStore;->exportKey(Ljava/lang/String;ILandroid/security/keymaster/KeymasterBlob;Landroid/security/keymaster/KeymasterBlob;)Landroid/security/keymaster/ExportResult;

    move-result-object v2

    .line 194
    .local v2, "exportResult":Landroid/security/keymaster/ExportResult;
    iget v7, v2, Landroid/security/keymaster/ExportResult;->resultCode:I

    if-eq v7, v9, :cond_1

    .line 196
    new-instance v7, Ljava/security/UnrecoverableKeyException;

    const-string/jumbo v8, "Failed to obtain X.509 form of public key"

    invoke-direct {v7, v8}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    .line 197
    invoke-static {v1}, Landroid/security/KeyStore;->getKeyStoreException(I)Landroid/security/KeyStoreException;

    move-result-object v8

    .line 196
    invoke-virtual {v7, v8}, Ljava/security/UnrecoverableKeyException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v7

    .line 195
    check-cast v7, Ljava/security/UnrecoverableKeyException;

    throw v7

    .line 199
    :cond_1
    iget-object v6, v2, Landroid/security/keymaster/ExportResult;->exportData:[B

    .line 201
    .local v6, "x509EncodedPublicKey":[B
    const v7, 0x10000002

    invoke-virtual {v4, v7}, Landroid/security/keymaster/KeyCharacteristics;->getEnum(I)Ljava/lang/Integer;

    move-result-object v5

    .line 202
    .local v5, "keymasterAlgorithm":Ljava/lang/Integer;
    if-nez v5, :cond_2

    .line 203
    new-instance v7, Ljava/security/UnrecoverableKeyException;

    const-string/jumbo v8, "Key algorithm unknown"

    invoke-direct {v7, v8}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 209
    :cond_2
    :try_start_0
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 208
    invoke-static {v7}, Landroid/security/keystore/KeyProperties$KeyAlgorithm;->fromKeymasterAsymmetricKeyAlgorithm(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 216
    .local v3, "jcaKeyAlgorithm":Ljava/lang/String;
    invoke-static {p1, v3, v6}, Landroid/security/keystore/SoterKeyStoreProvider;->getJsonPublicKey(Ljava/lang/String;Ljava/lang/String;[B)Landroid/security/keystore/AndroidKeyStorePublicKey;

    move-result-object v7

    return-object v7

    .line 210
    .end local v3    # "jcaKeyAlgorithm":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 212
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v7, Ljava/security/UnrecoverableKeyException;

    const-string/jumbo v8, "Failed to load private key"

    invoke-direct {v7, v8}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/security/UnrecoverableKeyException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v7

    .line 211
    check-cast v7, Ljava/security/UnrecoverableKeyException;

    throw v7
.end method

.method private putKeyFactoryImpl(Ljava/lang/String;)V
    .locals 2
    .param p1, "algorithm"    # Ljava/lang/String;

    .prologue
    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "KeyFactory."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android.security.keystore.AndroidKeyStoreKeyFactorySpi"

    invoke-virtual {p0, v0, v1}, Landroid/security/keystore/SoterKeyStoreProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    return-void
.end method
