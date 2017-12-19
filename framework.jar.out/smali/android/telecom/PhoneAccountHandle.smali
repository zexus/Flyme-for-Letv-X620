.class public final Landroid/telecom/PhoneAccountHandle;
.super Ljava/lang/Object;
.source "PhoneAccountHandle.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/PhoneAccountHandle$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telecom/PhoneAccountHandle;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private calculated:Z

.field private final mComponentName:Landroid/content/ComponentName;

.field private final mId:Ljava/lang/String;

.field private mSubId:I

.field private final mUserHandle:Landroid/os/UserHandle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 171
    new-instance v0, Landroid/telecom/PhoneAccountHandle$1;

    invoke-direct {v0}, Landroid/telecom/PhoneAccountHandle$1;-><init>()V

    sput-object v0, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/ComponentName;Ljava/lang/String;)V
    .locals 1
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "id"    # Ljava/lang/String;

    .prologue
    .line 60
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Landroid/telecom/PhoneAccountHandle;-><init>(Landroid/content/ComponentName;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/ComponentName;Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 1
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "userHandle"    # Landroid/os/UserHandle;

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/telecom/PhoneAccountHandle;->calculated:Z

    .line 55
    const/4 v0, -0x1

    iput v0, p0, Landroid/telecom/PhoneAccountHandle;->mSubId:I

    .line 67
    iput-object p1, p0, Landroid/telecom/PhoneAccountHandle;->mComponentName:Landroid/content/ComponentName;

    .line 68
    iput-object p2, p0, Landroid/telecom/PhoneAccountHandle;->mId:Ljava/lang/String;

    .line 69
    iput-object p3, p0, Landroid/telecom/PhoneAccountHandle;->mUserHandle:Landroid/os/UserHandle;

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "componentName"    # Landroid/content/ComponentName;
    .param p3, "subId"    # Ljava/lang/String;

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/telecom/PhoneAccountHandle;->calculated:Z

    .line 55
    const/4 v0, -0x1

    iput v0, p0, Landroid/telecom/PhoneAccountHandle;->mSubId:I

    .line 79
    iput-object p2, p0, Landroid/telecom/PhoneAccountHandle;->mComponentName:Landroid/content/ComponentName;

    .line 80
    invoke-direct {p0, p3, p1}, Landroid/telecom/PhoneAccountHandle;->getIccId(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/PhoneAccountHandle;->mId:Ljava/lang/String;

    .line 81
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/PhoneAccountHandle;->mUserHandle:Landroid/os/UserHandle;

    .line 78
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 184
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 185
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 186
    sget-object v1, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserHandle;

    .line 184
    invoke-direct {p0, v0, v2, v1}, Landroid/telecom/PhoneAccountHandle;-><init>(Landroid/content/ComponentName;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 183
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/telecom/PhoneAccountHandle;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0, p1}, Landroid/telecom/PhoneAccountHandle;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private getIccId(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 13
    .param p1, "subIdStr"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v12, 0x0

    const/4 v11, -0x1

    const/4 v10, 0x0

    .line 228
    const/4 v6, -0x1

    .line 230
    .local v6, "theSubId":I
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .line 235
    :goto_0
    if-eq v6, v11, :cond_0

    if-gtz v6, :cond_1

    .line 236
    :cond_0
    return-object v10

    .line 231
    :catch_0
    move-exception v1

    .line 232
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v7, "PhoneAH"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "1 sub "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-array v9, v12, [Ljava/lang/Object;

    invoke-static {v7, v8, v9}, Landroid/telecom/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 238
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    if-nez p2, :cond_2

    return-object v10

    .line 240
    :cond_2
    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v4

    .line 241
    .local v4, "sm":Landroid/telephony/SubscriptionManager;
    invoke-virtual {v4}, Landroid/telephony/SubscriptionManager;->getAllSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    .line 242
    .local v0, "allsubs":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "info$iterator":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    .line 243
    .local v2, "info":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v5

    .line 244
    .local v5, "subId":I
    if-eq v5, v11, :cond_3

    .line 245
    if-ne v5, v6, :cond_3

    .line 246
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 249
    .end local v2    # "info":Landroid/telephony/SubscriptionInfo;
    .end local v5    # "subId":I
    :cond_4
    return-object v10
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 161
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .line 147
    if-eqz p1, :cond_0

    .line 148
    instance-of v0, p1, Landroid/telecom/PhoneAccountHandle;

    .line 147
    if-eqz v0, :cond_0

    move-object v0, p1

    .line 149
    check-cast v0, Landroid/telecom/PhoneAccountHandle;

    invoke-virtual {v0}, Landroid/telecom/PhoneAccountHandle;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    .line 150
    invoke-virtual {p0}, Landroid/telecom/PhoneAccountHandle;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    .line 149
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 147
    if-eqz v0, :cond_0

    move-object v0, p1

    .line 151
    check-cast v0, Landroid/telecom/PhoneAccountHandle;

    invoke-virtual {v0}, Landroid/telecom/PhoneAccountHandle;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/telecom/PhoneAccountHandle;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 147
    if-eqz v0, :cond_0

    .line 152
    check-cast p1, Landroid/telecom/PhoneAccountHandle;

    .end local p1    # "other":Ljava/lang/Object;
    invoke-virtual {p1}, Landroid/telecom/PhoneAccountHandle;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p0}, Landroid/telecom/PhoneAccountHandle;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 147
    :goto_0
    return v0

    .restart local p1    # "other":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getComponentName()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Landroid/telecom/PhoneAccountHandle;->mComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getIccId(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 224
    iget-object v0, p0, Landroid/telecom/PhoneAccountHandle;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Landroid/telecom/PhoneAccountHandle;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getSubId(Landroid/content/Context;)I
    .locals 11
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v9, -0x1

    monitor-enter p0

    .line 194
    const/4 v6, -0x1

    .line 195
    .local v6, "subId":I
    if-nez p1, :cond_0

    monitor-exit p0

    return v9

    .line 197
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/telecom/PhoneAccountHandle;->getIccId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 198
    .local v7, "theIccId":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    if-eqz v8, :cond_1

    monitor-exit p0

    return v9

    .line 200
    :cond_1
    :try_start_1
    iget-boolean v8, p0, Landroid/telecom/PhoneAccountHandle;->calculated:Z

    if-eqz v8, :cond_2

    iget v8, p0, Landroid/telecom/PhoneAccountHandle;->mSubId:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v8

    .line 203
    :cond_2
    :try_start_2
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v5

    .line 204
    .local v5, "sm":Landroid/telephony/SubscriptionManager;
    invoke-virtual {v5}, Landroid/telephony/SubscriptionManager;->getAllSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    .line 205
    .local v0, "allsubs":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "info$iterator":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/SubscriptionInfo;

    .line 206
    .local v3, "info":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object v2

    .line 207
    .local v2, "iccid":Ljava/lang/String;
    invoke-static {v7, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 208
    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v8

    iput v8, p0, Landroid/telecom/PhoneAccountHandle;->mSubId:I

    .line 209
    iget v6, p0, Landroid/telecom/PhoneAccountHandle;->mSubId:I

    .line 213
    .end local v2    # "iccid":Ljava/lang/String;
    .end local v3    # "info":Landroid/telephony/SubscriptionInfo;
    :cond_4
    const/4 v8, 0x1

    iput-boolean v8, p0, Landroid/telecom/PhoneAccountHandle;->calculated:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v0    # "allsubs":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    .end local v4    # "info$iterator":Ljava/util/Iterator;
    .end local v5    # "sm":Landroid/telephony/SubscriptionManager;
    :goto_0
    monitor-exit p0

    .line 217
    return v6

    .line 214
    :catch_0
    move-exception v1

    .line 215
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    const-string/jumbo v8, "PhoneAH"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "sub "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Landroid/telecom/PhoneAccountHandle;->mId:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v8, v9, v10}, Landroid/telecom/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .end local v1    # "e":Ljava/lang/Exception;
    .end local v7    # "theIccId":Ljava/lang/String;
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8
.end method

.method public getUserHandle()Landroid/os/UserHandle;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Landroid/telecom/PhoneAccountHandle;->mUserHandle:Landroid/os/UserHandle;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 123
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/telecom/PhoneAccountHandle;->mComponentName:Landroid/content/ComponentName;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/telecom/PhoneAccountHandle;->mId:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/telecom/PhoneAccountHandle;->mUserHandle:Landroid/os/UserHandle;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 134
    iget-object v1, p0, Landroid/telecom/PhoneAccountHandle;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 135
    .local v0, "className":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "PhoneAccountHandle{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 136
    const/16 v2, 0x2e

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 135
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 137
    const-string/jumbo v2, ", "

    .line 135
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 138
    iget-object v2, p0, Landroid/telecom/PhoneAccountHandle;->mId:Ljava/lang/String;

    invoke-static {v2}, Landroid/telecom/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 135
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 139
    const-string/jumbo v2, ", "

    .line 135
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 140
    iget-object v2, p0, Landroid/telecom/PhoneAccountHandle;->mUserHandle:Landroid/os/UserHandle;

    .line 135
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 141
    const-string/jumbo v2, "}"

    .line 135
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 166
    iget-object v0, p0, Landroid/telecom/PhoneAccountHandle;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, p1, p2}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 167
    iget-object v0, p0, Landroid/telecom/PhoneAccountHandle;->mId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Landroid/telecom/PhoneAccountHandle;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v0, p1, p2}, Landroid/os/UserHandle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 165
    return-void
.end method
