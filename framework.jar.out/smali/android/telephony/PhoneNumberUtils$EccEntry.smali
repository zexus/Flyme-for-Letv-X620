.class public Landroid/telephony/PhoneNumberUtils$EccEntry;
.super Ljava/lang/Object;
.source "PhoneNumberUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/PhoneNumberUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EccEntry"
.end annotation


# static fields
.field public static final CATEGORY_ATTR:Ljava/lang/String; = "Category"

.field public static final CDMA_ECC_LIST_PATH:Ljava/lang/String; = "/system/etc/cdma_ecc_list.xml"

.field public static final CONDITION_ATTR:Ljava/lang/String; = "Condition"

.field public static final ECC_ALWAYS:Ljava/lang/String; = "1"

.field public static final ECC_ATTR:Ljava/lang/String; = "Ecc"

.field public static final ECC_ENTRY_TAG:Ljava/lang/String; = "EccEntry"

.field public static final ECC_FOR_MMI:Ljava/lang/String; = "2"

.field public static final ECC_LIST_PATH:Ljava/lang/String; = "/system/etc/ecc_list.xml"

.field public static final ECC_NO_SIM:Ljava/lang/String; = "0"

.field public static final PLMN_ATTR:Ljava/lang/String; = "Plmn"

.field public static final PROPERTY_COUNT:Ljava/lang/String; = "ro.semc.ecclist.num"

.field public static final PROPERTY_NON_ECC:Ljava/lang/String; = "ro.semc.ecclist.non_ecc."

.field public static final PROPERTY_NUMBER:Ljava/lang/String; = "ro.semc.ecclist.number."

.field public static final PROPERTY_PLMN:Ljava/lang/String; = "ro.semc.ecclist.plmn."

.field public static final PROPERTY_PREFIX:Ljava/lang/String; = "ro.semc.ecclist."

.field public static final PROPERTY_TYPE:Ljava/lang/String; = "ro.semc.ecclist.type."

.field public static final PROPERTY_TYPE_KEY:[Ljava/lang/String;

.field public static final PROPERTY_TYPE_VALUE:[Ljava/lang/Short;


# instance fields
.field private mCategory:Ljava/lang/String;

.field private mCondition:Ljava/lang/String;

.field private mEcc:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mPlmn:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x0

    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 147
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "police"

    aput-object v1, v0, v5

    const-string/jumbo v1, "ambulance"

    aput-object v1, v0, v2

    const-string/jumbo v1, "firebrigade"

    aput-object v1, v0, v3

    const-string/jumbo v1, "marineguard"

    aput-object v1, v0, v6

    const-string/jumbo v1, "mountainrescue"

    aput-object v1, v0, v4

    .line 146
    sput-object v0, Landroid/telephony/PhoneNumberUtils$EccEntry;->PROPERTY_TYPE_KEY:[Ljava/lang/String;

    .line 148
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Short;

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    aput-object v1, v0, v5

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    aput-object v1, v0, v3

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    aput-object v1, v0, v6

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    aput-object v1, v0, v4

    sput-object v0, Landroid/telephony/PhoneNumberUtils$EccEntry;->PROPERTY_TYPE_VALUE:[Ljava/lang/Short;

    .line 130
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    new-instance v0, Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/telephony/PhoneNumberUtils$EccEntry;->mEcc:Ljava/lang/String;

    .line 162
    new-instance v0, Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/telephony/PhoneNumberUtils$EccEntry;->mCategory:Ljava/lang/String;

    .line 163
    new-instance v0, Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/telephony/PhoneNumberUtils$EccEntry;->mCondition:Ljava/lang/String;

    .line 164
    new-instance v0, Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/telephony/PhoneNumberUtils$EccEntry;->mPlmn:Ljava/lang/String;

    .line 160
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    iput-object p1, p0, Landroid/telephony/PhoneNumberUtils$EccEntry;->mName:Ljava/lang/String;

    .line 168
    iput-object p2, p0, Landroid/telephony/PhoneNumberUtils$EccEntry;->mEcc:Ljava/lang/String;

    .line 166
    return-void
.end method


# virtual methods
.method public getCategory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Landroid/telephony/PhoneNumberUtils$EccEntry;->mCategory:Ljava/lang/String;

    return-object v0
.end method

.method public getCondition()Ljava/lang/String;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Landroid/telephony/PhoneNumberUtils$EccEntry;->mCondition:Ljava/lang/String;

    return-object v0
.end method

.method public getEcc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Landroid/telephony/PhoneNumberUtils$EccEntry;->mEcc:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Landroid/telephony/PhoneNumberUtils$EccEntry;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPlmn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Landroid/telephony/PhoneNumberUtils$EccEntry;->mPlmn:Ljava/lang/String;

    return-object v0
.end method

.method public setCategory(Ljava/lang/String;)V
    .locals 0
    .param p1, "strCategory"    # Ljava/lang/String;

    .prologue
    .line 180
    iput-object p1, p0, Landroid/telephony/PhoneNumberUtils$EccEntry;->mCategory:Ljava/lang/String;

    .line 179
    return-void
.end method

.method public setCondition(Ljava/lang/String;)V
    .locals 0
    .param p1, "strCondition"    # Ljava/lang/String;

    .prologue
    .line 183
    iput-object p1, p0, Landroid/telephony/PhoneNumberUtils$EccEntry;->mCondition:Ljava/lang/String;

    .line 182
    return-void
.end method

.method public setEcc(Ljava/lang/String;)V
    .locals 0
    .param p1, "strEcc"    # Ljava/lang/String;

    .prologue
    .line 177
    iput-object p1, p0, Landroid/telephony/PhoneNumberUtils$EccEntry;->mEcc:Ljava/lang/String;

    .line 176
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 171
    iput-object p1, p0, Landroid/telephony/PhoneNumberUtils$EccEntry;->mName:Ljava/lang/String;

    .line 170
    return-void
.end method

.method public setPlmn(Ljava/lang/String;)V
    .locals 0
    .param p1, "strPlmn"    # Ljava/lang/String;

    .prologue
    .line 186
    iput-object p1, p0, Landroid/telephony/PhoneNumberUtils$EccEntry;->mPlmn:Ljava/lang/String;

    .line 185
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\nEcc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/telephony/PhoneNumberUtils$EccEntry;->getEcc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "Category"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 205
    invoke-virtual {p0}, Landroid/telephony/PhoneNumberUtils$EccEntry;->getCategory()Ljava/lang/String;

    move-result-object v1

    .line 204
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 205
    const-string/jumbo v1, ", "

    .line 204
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 205
    const-string/jumbo v1, "Condition"

    .line 204
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 205
    const-string/jumbo v1, "="

    .line 204
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 205
    invoke-virtual {p0}, Landroid/telephony/PhoneNumberUtils$EccEntry;->getCondition()Ljava/lang/String;

    move-result-object v1

    .line 204
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 206
    const-string/jumbo v1, ", "

    .line 204
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 206
    const-string/jumbo v1, "Plmn"

    .line 204
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 206
    const-string/jumbo v1, "="

    .line 204
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 206
    invoke-virtual {p0}, Landroid/telephony/PhoneNumberUtils$EccEntry;->getPlmn()Ljava/lang/String;

    move-result-object v1

    .line 204
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 207
    const-string/jumbo v1, ", name="

    .line 204
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 207
    invoke-virtual {p0}, Landroid/telephony/PhoneNumberUtils$EccEntry;->getName()Ljava/lang/String;

    move-result-object v1

    .line 204
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
