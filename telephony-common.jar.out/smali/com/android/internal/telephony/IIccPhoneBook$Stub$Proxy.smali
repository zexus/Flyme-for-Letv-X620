.class Lcom/android/internal/telephony/IIccPhoneBook$Stub$Proxy;
.super Ljava/lang/Object;
.source "IIccPhoneBook.java"

# interfaces
.implements Lcom/android/internal/telephony/IIccPhoneBook;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IIccPhoneBook$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    .prologue
    .line 637
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 639
    iput-object p1, p0, Lcom/android/internal/telephony/IIccPhoneBook$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 637
    return-void
.end method


# virtual methods
.method public addContactToGroup(III)Z
    .locals 6
    .param p1, "subId"    # I
    .param p2, "adnIndex"    # I
    .param p3, "grpIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1394
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1395
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1398
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.IIccPhoneBook"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1399
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1400
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1401
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1402
    iget-object v3, p0, Lcom/android/internal/telephony/IIccPhoneBook$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x15

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1403
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1404
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 1407
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1408
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1410
    return v2

    .line 1404
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 1406
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 1407
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1408
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1406
    throw v3
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 643
    iget-object v0, p0, Lcom/android/internal/telephony/IIccPhoneBook$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getAdnRecordsInEf(I)Ljava/util/List;
    .locals 6
    .param p1, "efid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/uicc/AdnRecord;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 658
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 659
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 662
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.IIccPhoneBook"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 663
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 664
    iget-object v3, p0, Lcom/android/internal/telephony/IIccPhoneBook$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 665
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 666
    sget-object v3, Lcom/android/internal/telephony/uicc/AdnRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 669
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 670
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 672
    return-object v2

    .line 668
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    :catchall_0
    move-exception v3

    .line 669
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 670
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 668
    throw v3
.end method

.method public getAdnRecordsInEfForSubscriber(II)Ljava/util/List;
    .locals 6
    .param p1, "subId"    # I
    .param p2, "efid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/uicc/AdnRecord;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 684
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 685
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 688
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.IIccPhoneBook"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 689
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 690
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 691
    iget-object v3, p0, Lcom/android/internal/telephony/IIccPhoneBook$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 692
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 693
    sget-object v3, Lcom/android/internal/telephony/uicc/AdnRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 696
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 697
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 699
    return-object v2

    .line 695
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    :catchall_0
    move-exception v3

    .line 696
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 697
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 695
    throw v3
.end method

.method public getAdnRecordsSize(I)[I
    .locals 6
    .param p1, "efid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1158
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1159
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1162
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.IIccPhoneBook"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1163
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1164
    iget-object v3, p0, Lcom/android/internal/telephony/IIccPhoneBook$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xd

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1165
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1166
    invoke-virtual {v1}, Landroid/os/Parcel;->createIntArray()[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 1169
    .local v2, "_result":[I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1170
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1172
    return-object v2

    .line 1168
    .end local v2    # "_result":[I
    :catchall_0
    move-exception v3

    .line 1169
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1170
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1168
    throw v3
.end method

.method public getAdnRecordsSizeForSubscriber(II)[I
    .locals 6
    .param p1, "subId"    # I
    .param p2, "efid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1186
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1187
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1190
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.IIccPhoneBook"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1191
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1192
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1193
    iget-object v3, p0, Lcom/android/internal/telephony/IIccPhoneBook$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xe

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1194
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1195
    invoke-virtual {v1}, Landroid/os/Parcel;->createIntArray()[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 1198
    .local v2, "_result":[I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1199
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1201
    return-object v2

    .line 1197
    .end local v2    # "_result":[I
    :catchall_0
    move-exception v3

    .line 1198
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1199
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1197
    throw v3
.end method

.method public getAnrCount(I)I
    .locals 6
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1696
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1697
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1700
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.IIccPhoneBook"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1701
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1702
    iget-object v3, p0, Lcom/android/internal/telephony/IIccPhoneBook$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x1f

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1703
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1704
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 1707
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1708
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1710
    return v2

    .line 1706
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 1707
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1708
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1706
    throw v3
.end method

.method public getEmailCount(I)I
    .locals 6
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1724
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1725
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1728
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.IIccPhoneBook"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1729
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1730
    iget-object v3, p0, Lcom/android/internal/telephony/IIccPhoneBook$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x20

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1731
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1732
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 1735
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1736
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1738
    return v2

    .line 1734
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 1735
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1736
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1734
    throw v3
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 647
    const-string/jumbo v0, "com.android.internal.telephony.IIccPhoneBook"

    return-object v0
.end method

.method public getPhonebookMemStorageExt(I)[Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;
    .locals 6
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1952
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1953
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1956
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.IIccPhoneBook"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1957
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1958
    iget-object v3, p0, Lcom/android/internal/telephony/IIccPhoneBook$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x28

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1959
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1960
    sget-object v3, Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1963
    .local v2, "_result":[Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1964
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1966
    return-object v2

    .line 1962
    .end local v2    # "_result":[Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;
    :catchall_0
    move-exception v3

    .line 1963
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1964
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1962
    throw v3
.end method

.method public getSneRecordLen(I)I
    .locals 6
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1902
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1903
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1906
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.IIccPhoneBook"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1907
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1908
    iget-object v3, p0, Lcom/android/internal/telephony/IIccPhoneBook$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x26

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1909
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1910
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 1913
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1914
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1916
    return v2

    .line 1912
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 1913
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1914
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1912
    throw v3
.end method

.method public getUsimAasById(II)Ljava/lang/String;
    .locals 6
    .param p1, "subId"    # I
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1637
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1638
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1641
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.IIccPhoneBook"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1642
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1643
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1644
    iget-object v3, p0, Lcom/android/internal/telephony/IIccPhoneBook$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x1d

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1645
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1646
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 1649
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1650
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1652
    return-object v2

    .line 1648
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v3

    .line 1649
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1650
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1648
    throw v3
.end method

.method public getUsimAasList(I)Ljava/util/List;
    .locals 6
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/internal/telephony/uicc/AlphaTag;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1608
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1609
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1612
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.IIccPhoneBook"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1613
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1614
    iget-object v3, p0, Lcom/android/internal/telephony/IIccPhoneBook$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x1c

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1615
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1616
    sget-object v3, Lcom/mediatek/internal/telephony/uicc/AlphaTag;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 1619
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/internal/telephony/uicc/AlphaTag;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1620
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1622
    return-object v2

    .line 1618
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/internal/telephony/uicc/AlphaTag;>;"
    :catchall_0
    move-exception v3

    .line 1619
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1620
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1618
    throw v3
.end method

.method public getUsimAasMaxCount(I)I
    .locals 6
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1752
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1753
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1756
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.IIccPhoneBook"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1757
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1758
    iget-object v3, p0, Lcom/android/internal/telephony/IIccPhoneBook$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x21

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1759
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1760
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 1763
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1764
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1766
    return v2

    .line 1762
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 1763
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1764
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1762
    throw v3
.end method

.method public getUsimAasMaxNameLen(I)I
    .locals 6
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1780
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1781
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1784
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.IIccPhoneBook"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1785
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1786
    iget-object v3, p0, Lcom/android/internal/telephony/IIccPhoneBook$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x22

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1787
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1788
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 1791
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1792
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1794
    return v2

    .line 1790
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 1791
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1792
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1790
    throw v3
.end method

.method public getUsimGroupById(II)Ljava/lang/String;
    .locals 6
    .param p1, "subId"    # I
    .param p2, "nGasId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1271
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1272
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1275
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.IIccPhoneBook"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1276
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1277
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1278
    iget-object v3, p0, Lcom/android/internal/telephony/IIccPhoneBook$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x11

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1279
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1280
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 1283
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1284
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1286
    return-object v2

    .line 1282
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v3

    .line 1283
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1284
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1282
    throw v3
.end method

.method public getUsimGroups(I)Ljava/util/List;
    .locals 6
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/internal/telephony/uicc/UsimGroup;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1242
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1243
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1246
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.IIccPhoneBook"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1247
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1248
    iget-object v3, p0, Lcom/android/internal/telephony/IIccPhoneBook$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x10

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1249
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1250
    sget-object v3, Lcom/mediatek/internal/telephony/uicc/UsimGroup;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 1253
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/internal/telephony/uicc/UsimGroup;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1254
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1256
    return-object v2

    .line 1252
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/internal/telephony/uicc/UsimGroup;>;"
    :catchall_0
    move-exception v3

    .line 1253
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1254
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1252
    throw v3
.end method

.method public getUsimGrpMaxCount(I)I
    .locals 6
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1580
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1581
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1584
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.IIccPhoneBook"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1585
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1586
    iget-object v3, p0, Lcom/android/internal/telephony/IIccPhoneBook$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x1b

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1587
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1588
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 1591
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1592
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1594
    return v2

    .line 1590
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 1591
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1592
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1590
    throw v3
.end method

.method public getUsimGrpMaxNameLen(I)I
    .locals 6
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1552
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1553
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1556
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.IIccPhoneBook"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1557
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1558
    iget-object v3, p0, Lcom/android/internal/telephony/IIccPhoneBook$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x1a

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1559
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1560
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 1563
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1564
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1566
    return v2

    .line 1562
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 1563
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1564
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1562
    throw v3
.end method

.method public hasExistGroup(ILjava/lang/String;)I
    .locals 6
    .param p1, "subId"    # I
    .param p2, "grpName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1523
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1524
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1527
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.IIccPhoneBook"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1528
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1529
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1530
    iget-object v3, p0, Lcom/android/internal/telephony/IIccPhoneBook$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x19

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1531
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1532
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 1535
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1536
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1538
    return v2

    .line 1534
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 1535
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1536
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1534
    throw v3
.end method

.method public hasSne(I)Z
    .locals 6
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1874
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1875
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1878
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.IIccPhoneBook"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1879
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1880
    iget-object v3, p0, Lcom/android/internal/telephony/IIccPhoneBook$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x25

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1881
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1882
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 1885
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1886
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1888
    return v2

    .line 1882
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 1884
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 1885
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1886
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1884
    throw v3
.end method

.method public insertUsimAas(ILjava/lang/String;)I
    .locals 6
    .param p1, "subId"    # I
    .param p2, "aasName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1667
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1668
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1671
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.IIccPhoneBook"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1672
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1673
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1674
    iget-object v3, p0, Lcom/android/internal/telephony/IIccPhoneBook$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x1e

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1675
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1676
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 1679
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1680
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1682
    return v2

    .line 1678
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 1679
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1680
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1678
    throw v3
.end method

.method public insertUsimGroup(ILjava/lang/String;)I
    .locals 6
    .param p1, "subId"    # I
    .param p2, "grpName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1331
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1332
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1335
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.IIccPhoneBook"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1336
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1337
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1338
    iget-object v3, p0, Lcom/android/internal/telephony/IIccPhoneBook$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x13

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1339
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1340
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 1343
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1344
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1346
    return v2

    .line 1342
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 1343
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1344
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1342
    throw v3
.end method

.method public isAdnAccessible(I)Z
    .locals 6
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1924
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1925
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1928
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.IIccPhoneBook"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1929
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1930
    iget-object v3, p0, Lcom/android/internal/telephony/IIccPhoneBook$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x27

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1931
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1932
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 1935
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1936
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1938
    return v2

    .line 1932
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 1934
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 1935
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1936
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1934
    throw v3
.end method

.method public isPhbReady(I)Z
    .locals 6
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1212
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1213
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1216
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.IIccPhoneBook"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1217
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1218
    iget-object v3, p0, Lcom/android/internal/telephony/IIccPhoneBook$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xf

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1219
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1220
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 1223
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1224
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1226
    return v2

    .line 1220
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 1222
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 1223
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1224
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1222
    throw v3
.end method

.method public moveContactFromGroupsToGroups(II[I[I)Z
    .locals 6
    .param p1, "subId"    # I
    .param p2, "adnIndex"    # I
    .param p3, "fromGrpIdList"    # [I
    .param p4, "toGrpIdList"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1491
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1492
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1495
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.IIccPhoneBook"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1496
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1497
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1498
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1499
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1500
    iget-object v3, p0, Lcom/android/internal/telephony/IIccPhoneBook$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x18

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1501
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1502
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 1505
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1506
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1508
    return v2

    .line 1502
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 1504
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 1505
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1506
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1504
    throw v3
.end method

.method public removeContactFromGroup(III)Z
    .locals 6
    .param p1, "subId"    # I
    .param p2, "adnIndex"    # I
    .param p3, "grpIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1426
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1427
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1430
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.IIccPhoneBook"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1431
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1432
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1433
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1434
    iget-object v3, p0, Lcom/android/internal/telephony/IIccPhoneBook$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x16

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1435
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1436
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 1439
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1440
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1442
    return v2

    .line 1436
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 1438
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 1439
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1440
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1438
    throw v3
.end method

.method public removeUsimAasById(III)Z
    .locals 6
    .param p1, "subId"    # I
    .param p2, "index"    # I
    .param p3, "pbrIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1844
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1845
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1848
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.IIccPhoneBook"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1849
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1850
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1851
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1852
    iget-object v3, p0, Lcom/android/internal/telephony/IIccPhoneBook$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x24

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1853
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1854
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 1857
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1858
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1860
    return v2

    .line 1854
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 1856
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 1857
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1858
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1856
    throw v3
.end method

.method public removeUsimGroupById(II)Z
    .locals 6
    .param p1, "subId"    # I
    .param p2, "nGasId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1301
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1302
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1305
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.IIccPhoneBook"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1306
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1307
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1308
    iget-object v3, p0, Lcom/android/internal/telephony/IIccPhoneBook$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x12

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1309
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1310
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 1313
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1314
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1316
    return v2

    .line 1310
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 1312
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 1313
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1314
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1312
    throw v3
.end method

.method public updateAdnRecordsInEfByIndex(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z
    .locals 6
    .param p1, "efid"    # I
    .param p2, "newTag"    # Ljava/lang/String;
    .param p3, "newPhoneNumber"    # Ljava/lang/String;
    .param p4, "index"    # I
    .param p5, "pin2"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 906
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 907
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 910
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.IIccPhoneBook"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 911
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 912
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 913
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 914
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 915
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 916
    iget-object v3, p0, Lcom/android/internal/telephony/IIccPhoneBook$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x7

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 917
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 918
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 921
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 922
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 924
    return v2

    .line 918
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 920
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 921
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 922
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 920
    throw v3
.end method

.method public updateAdnRecordsInEfByIndexForSubscriber(IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z
    .locals 6
    .param p1, "subId"    # I
    .param p2, "efid"    # I
    .param p3, "newTag"    # Ljava/lang/String;
    .param p4, "newPhoneNumber"    # Ljava/lang/String;
    .param p5, "index"    # I
    .param p6, "pin2"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 944
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 945
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 948
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.IIccPhoneBook"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 949
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 950
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 951
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 952
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 953
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 954
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 955
    iget-object v3, p0, Lcom/android/internal/telephony/IIccPhoneBook$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x8

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 956
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 957
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 960
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 961
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 963
    return v2

    .line 957
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 959
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 960
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 961
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 959
    throw v3
.end method

.method public updateAdnRecordsInEfByIndexWithError(IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)I
    .locals 6
    .param p1, "subId"    # I
    .param p2, "efid"    # I
    .param p3, "newTag"    # Ljava/lang/String;
    .param p4, "newPhoneNumber"    # Ljava/lang/String;
    .param p5, "index"    # I
    .param p6, "pin2"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 987
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 988
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 991
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.IIccPhoneBook"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 992
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 993
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 994
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 995
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 996
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 997
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 998
    iget-object v3, p0, Lcom/android/internal/telephony/IIccPhoneBook$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x9

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 999
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1000
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 1003
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1004
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1006
    return v2

    .line 1002
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 1003
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1004
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1002
    throw v3
.end method

.method public updateAdnRecordsInEfBySearch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "efid"    # I
    .param p2, "oldTag"    # Ljava/lang/String;
    .param p3, "oldPhoneNumber"    # Ljava/lang/String;
    .param p4, "newTag"    # Ljava/lang/String;
    .param p5, "newPhoneNumber"    # Ljava/lang/String;
    .param p6, "pin2"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 721
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 722
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 725
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.IIccPhoneBook"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 726
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 727
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 728
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 729
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 730
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 731
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 732
    iget-object v3, p0, Lcom/android/internal/telephony/IIccPhoneBook$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 733
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 734
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 737
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 738
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 740
    return v2

    .line 734
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 736
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 737
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 738
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 736
    throw v3
.end method

.method public updateAdnRecordsInEfBySearchForSubscriber(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "subId"    # I
    .param p2, "efid"    # I
    .param p3, "oldTag"    # Ljava/lang/String;
    .param p4, "oldPhoneNumber"    # Ljava/lang/String;
    .param p5, "newTag"    # Ljava/lang/String;
    .param p6, "newPhoneNumber"    # Ljava/lang/String;
    .param p7, "pin2"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 763
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 764
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 767
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.IIccPhoneBook"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 768
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 769
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 770
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 771
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 772
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 773
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 774
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 775
    iget-object v3, p0, Lcom/android/internal/telephony/IIccPhoneBook$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 776
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 777
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 780
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 781
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 783
    return v2

    .line 777
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 779
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 780
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 781
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 779
    throw v3
.end method

.method public updateAdnRecordsInEfBySearchWithError(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .param p1, "subId"    # I
    .param p2, "efid"    # I
    .param p3, "oldTag"    # Ljava/lang/String;
    .param p4, "oldPhoneNumber"    # Ljava/lang/String;
    .param p5, "newTag"    # Ljava/lang/String;
    .param p6, "newPhoneNumber"    # Ljava/lang/String;
    .param p7, "pin2"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 810
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 811
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 814
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.IIccPhoneBook"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 815
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 816
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 817
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 818
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 819
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 820
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 821
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 822
    iget-object v3, p0, Lcom/android/internal/telephony/IIccPhoneBook$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x5

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 823
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 824
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 827
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 828
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 830
    return v2

    .line 826
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 827
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 828
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 826
    throw v3
.end method

.method public updateContactToGroups(II[I)Z
    .locals 6
    .param p1, "subId"    # I
    .param p2, "adnIndex"    # I
    .param p3, "grpIdList"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1458
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1459
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1462
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.IIccPhoneBook"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1463
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1464
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1465
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1466
    iget-object v3, p0, Lcom/android/internal/telephony/IIccPhoneBook$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x17

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1467
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1468
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 1471
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1472
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1474
    return v2

    .line 1468
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 1470
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 1471
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1472
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1470
    throw v3
.end method

.method public updateUsimAas(IIILjava/lang/String;)Z
    .locals 6
    .param p1, "subId"    # I
    .param p2, "index"    # I
    .param p3, "pbrIndex"    # I
    .param p4, "aasName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1811
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1812
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1815
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.IIccPhoneBook"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1816
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1817
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1818
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1819
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1820
    iget-object v3, p0, Lcom/android/internal/telephony/IIccPhoneBook$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x23

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1821
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1822
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 1825
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1826
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1828
    return v2

    .line 1822
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_0

    .line 1824
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    .line 1825
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1826
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1824
    throw v3
.end method

.method public updateUsimGroup(IILjava/lang/String;)I
    .locals 6
    .param p1, "subId"    # I
    .param p2, "nGasId"    # I
    .param p3, "grpName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1362
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1363
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1366
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.IIccPhoneBook"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1367
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1368
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1369
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1370
    iget-object v3, p0, Lcom/android/internal/telephony/IIccPhoneBook$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x14

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1371
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1372
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 1375
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1376
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1378
    return v2

    .line 1374
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 1375
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1376
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1374
    throw v3
.end method

.method public updateUsimPBRecordsByIndexWithError(IILcom/android/internal/telephony/uicc/AdnRecord;I)I
    .locals 6
    .param p1, "subId"    # I
    .param p2, "efid"    # I
    .param p3, "record"    # Lcom/android/internal/telephony/uicc/AdnRecord;
    .param p4, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1073
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1074
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1077
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.IIccPhoneBook"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1078
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1079
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1080
    if-eqz p3, :cond_0

    .line 1081
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1082
    const/4 v3, 0x0

    invoke-virtual {p3, v0, v3}, Lcom/android/internal/telephony/uicc/AdnRecord;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1087
    :goto_0
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1088
    iget-object v3, p0, Lcom/android/internal/telephony/IIccPhoneBook$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xb

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1089
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1090
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 1093
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1094
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1096
    return v2

    .line 1085
    .end local v2    # "_result":I
    :cond_0
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1092
    :catchall_0
    move-exception v3

    .line 1093
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1094
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1092
    throw v3
.end method

.method public updateUsimPBRecordsBySearchWithError(IILcom/android/internal/telephony/uicc/AdnRecord;Lcom/android/internal/telephony/uicc/AdnRecord;)I
    .locals 6
    .param p1, "subId"    # I
    .param p2, "efid"    # I
    .param p3, "oldAdn"    # Lcom/android/internal/telephony/uicc/AdnRecord;
    .param p4, "newAdn"    # Lcom/android/internal/telephony/uicc/AdnRecord;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1116
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1117
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1120
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.IIccPhoneBook"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1121
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1122
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1123
    if-eqz p3, :cond_0

    .line 1124
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1125
    const/4 v3, 0x0

    invoke-virtual {p3, v0, v3}, Lcom/android/internal/telephony/uicc/AdnRecord;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1130
    :goto_0
    if-eqz p4, :cond_1

    .line 1131
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1132
    const/4 v3, 0x0

    invoke-virtual {p4, v0, v3}, Lcom/android/internal/telephony/uicc/AdnRecord;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1137
    :goto_1
    iget-object v3, p0, Lcom/android/internal/telephony/IIccPhoneBook$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xc

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1138
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1139
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 1142
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1143
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1145
    return v2

    .line 1128
    .end local v2    # "_result":I
    :cond_0
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1141
    :catchall_0
    move-exception v3

    .line 1142
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1143
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1141
    throw v3

    .line 1135
    :cond_1
    const/4 v3, 0x0

    :try_start_2
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public updateUsimPBRecordsInEfByIndexWithError(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;I)I
    .locals 6
    .param p1, "subId"    # I
    .param p2, "efid"    # I
    .param p3, "newTag"    # Ljava/lang/String;
    .param p4, "newPhoneNumber"    # Ljava/lang/String;
    .param p5, "newAnr"    # Ljava/lang/String;
    .param p6, "newGrpIds"    # Ljava/lang/String;
    .param p7, "newEmails"    # [Ljava/lang/String;
    .param p8, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1032
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1033
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1036
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.telephony.IIccPhoneBook"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1037
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1038
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1039
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1040
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1041
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1042
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1043
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1044
    invoke-virtual {v0, p8}, Landroid/os/Parcel;->writeInt(I)V

    .line 1045
    iget-object v3, p0, Lcom/android/internal/telephony/IIccPhoneBook$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xa

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1046
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1047
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 1050
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1051
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1053
    return v2

    .line 1049
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    .line 1050
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1051
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1049
    throw v3
.end method

.method public updateUsimPBRecordsInEfBySearchWithError(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 7
    .param p1, "subId"    # I
    .param p2, "efid"    # I
    .param p3, "oldTag"    # Ljava/lang/String;
    .param p4, "oldPhoneNumber"    # Ljava/lang/String;
    .param p5, "oldAnr"    # Ljava/lang/String;
    .param p6, "oldGrpIds"    # Ljava/lang/String;
    .param p7, "oldEmails"    # [Ljava/lang/String;
    .param p8, "newTag"    # Ljava/lang/String;
    .param p9, "newPhoneNumber"    # Ljava/lang/String;
    .param p10, "newAnr"    # Ljava/lang/String;
    .param p11, "newGrpIds"    # Ljava/lang/String;
    .param p12, "newEmails"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 862
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 863
    .local v1, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 866
    .local v2, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "com.android.internal.telephony.IIccPhoneBook"

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 867
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 868
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 869
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 870
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 871
    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 872
    invoke-virtual {v1, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 873
    invoke-virtual {v1, p7}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 874
    invoke-virtual {v1, p8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 875
    move-object/from16 v0, p9

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 876
    move-object/from16 v0, p10

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 877
    move-object/from16 v0, p11

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 878
    move-object/from16 v0, p12

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 879
    iget-object v4, p0, Lcom/android/internal/telephony/IIccPhoneBook$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-interface {v4, v5, v1, v2, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 880
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 881
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .line 884
    .local v3, "_result":I
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 885
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 887
    return v3

    .line 883
    .end local v3    # "_result":I
    :catchall_0
    move-exception v4

    .line 884
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 885
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 883
    throw v4
.end method
