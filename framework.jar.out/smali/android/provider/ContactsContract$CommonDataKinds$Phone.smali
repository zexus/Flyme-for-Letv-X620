.class public final Landroid/provider/ContactsContract$CommonDataKinds$Phone;
.super Ljava/lang/Object;
.source "ContactsContract.java"

# interfaces
.implements Landroid/provider/ContactsContract$DataColumnsWithJoins;
.implements Landroid/provider/ContactsContract$CommonDataKinds$CommonColumns;
.implements Landroid/provider/ContactsContract$ContactCounts;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/ContactsContract$CommonDataKinds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Phone"
.end annotation


# static fields
.field public static final AAS_INDEX:Ljava/lang/String; = "data5"

.field public static final CONTENT_FILTER_URI:Landroid/net/Uri;

.field public static final CONTENT_GROUP_URI:Landroid/net/Uri;

.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/phone_v2"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/phone_v2"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final ENTERPRISE_CONTENT_URI:Landroid/net/Uri;

.field public static final NORMALIZED_NUMBER:Ljava/lang/String; = "data4"

.field public static final NUMBER:Ljava/lang/String; = "data1"

.field public static final SEARCH_DISPLAY_NAME_KEY:Ljava/lang/String; = "search_display_name"

.field public static final SEARCH_PHONE_NUMBER_KEY:Ljava/lang/String; = "search_phone_number"

.field public static final TYPE_ASSISTANT:I = 0x13

.field public static final TYPE_CALLBACK:I = 0x8

.field public static final TYPE_CAR:I = 0x9

.field public static final TYPE_COMPANY_MAIN:I = 0xa

.field public static final TYPE_FAX:I = 0x15

.field public static final TYPE_FAX_HOME:I = 0x5

.field public static final TYPE_FAX_WORK:I = 0x4

.field public static final TYPE_HOME:I = 0x1

.field public static final TYPE_ISDN:I = 0xb

.field public static final TYPE_MAIN:I = 0xc

.field public static final TYPE_MMS:I = 0x14

.field public static final TYPE_MOBILE:I = 0x2

.field public static final TYPE_OTHER:I = 0x7

.field public static final TYPE_OTHER_FAX:I = 0xd

.field public static final TYPE_PAGER:I = 0x6

.field public static final TYPE_RADIO:I = 0xe

.field public static final TYPE_TELEX:I = 0xf

.field public static final TYPE_TTY_TDD:I = 0x10

.field public static final TYPE_WORK:I = 0x3

.field public static final TYPE_WORK_MOBILE:I = 0x11

.field public static final TYPE_WORK_PAGER:I = 0x12

.field private static mUseStrictPhoneNumberComparation:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 6183
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    .line 6184
    const-string/jumbo v1, "phones"

    .line 6183
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    .line 6198
    sget-object v0, Landroid/provider/ContactsContract$Data;->ENTERPRISE_CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v1, "phones"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 6197
    sput-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->ENTERPRISE_CONTENT_URI:Landroid/net/Uri;

    .line 6206
    sget-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    .line 6207
    const-string/jumbo v1, "filter"

    .line 6206
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_FILTER_URI:Landroid/net/Uri;

    .line 6213
    sget-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    .line 6214
    const-string/jumbo v1, "group"

    .line 6213
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_GROUP_URI:Landroid/net/Uri;

    .line 6231
    const/4 v0, 0x1

    sput-boolean v0, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->mUseStrictPhoneNumberComparation:Z

    .line 6162
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 6167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getDisplayLabel(Landroid/content/Context;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I
    .param p2, "label"    # Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 6296
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static final getDisplayLabel(Landroid/content/Context;ILjava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I
    .param p2, "label"    # Ljava/lang/CharSequence;
    .param p3, "labelArray"    # [Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 6286
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static getLeExtNumberInfo(Landroid/content/ContentResolver;Ljava/lang/String;I)Landroid/database/Cursor;
    .locals 8
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "queryType"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 6388
    if-nez p1, :cond_0

    .line 6389
    return-object v2

    .line 6398
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 6399
    .local v7, "selectionSb":Ljava/lang/StringBuilder;
    const-string/jumbo v0, "( type="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 6400
    const/4 v0, 0x4

    if-eq p2, v0, :cond_1

    const/4 v0, 0x5

    if-ne p2, v0, :cond_2

    .line 6401
    :cond_1
    const-string/jumbo v0, " OR type=6)"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6408
    :goto_0
    const-string/jumbo v0, " AND PHONE_NUMBERS_EQUAL(formatted_number, ?,"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 6409
    sget-boolean v0, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->mUseStrictPhoneNumberComparation:Z

    if-eqz v0, :cond_3

    move v0, v4

    .line 6408
    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 6409
    const-string/jumbo v1, ")"

    .line 6408
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6411
    sget-object v1, Landroid/provider/ContactsContract$LeExtNumberList;->CONTENT_URI:Landroid/net/Uri;

    .line 6412
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 6413
    new-array v4, v4, [Ljava/lang/String;

    .line 6414
    aput-object p1, v4, v5

    move-object v0, p0

    move-object v5, v2

    .line 6410
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 6416
    .local v6, "c":Landroid/database/Cursor;
    return-object v6

    .line 6405
    .end local v6    # "c":Landroid/database/Cursor;
    :cond_2
    const-string/jumbo v0, ")"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    move v0, v5

    .line 6409
    goto :goto_1
.end method

.method public static final getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "type"    # I
    .param p2, "label"    # Ljava/lang/CharSequence;

    .prologue
    .line 6337
    if-eqz p1, :cond_0

    const/16 v1, 0x13

    if-ne p1, v1, :cond_1

    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6340
    :cond_1
    invoke-static {p1}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabelResource(I)I

    move-result v0

    .line 6341
    .local v0, "labelRes":I
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1

    .line 6338
    .end local v0    # "labelRes":I
    :cond_2
    return-object p2
.end method

.method public static final getTypeLabelResource(I)I
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 6304
    packed-switch p0, :pswitch_data_0

    .line 6326
    const v0, 0x1040214

    return v0

    .line 6305
    :pswitch_0
    const v0, 0x1040215

    return v0

    .line 6306
    :pswitch_1
    const v0, 0x1040216

    return v0

    .line 6307
    :pswitch_2
    const v0, 0x1040217

    return v0

    .line 6308
    :pswitch_3
    const v0, 0x1040218

    return v0

    .line 6309
    :pswitch_4
    const v0, 0x1040219

    return v0

    .line 6310
    :pswitch_5
    const v0, 0x104021a

    return v0

    .line 6311
    :pswitch_6
    const v0, 0x104021b

    return v0

    .line 6312
    :pswitch_7
    const v0, 0x104021c

    return v0

    .line 6313
    :pswitch_8
    const v0, 0x104021d

    return v0

    .line 6314
    :pswitch_9
    const v0, 0x104021e

    return v0

    .line 6315
    :pswitch_a
    const v0, 0x104021f

    return v0

    .line 6316
    :pswitch_b
    const v0, 0x1040220

    return v0

    .line 6317
    :pswitch_c
    const v0, 0x1040221

    return v0

    .line 6318
    :pswitch_d
    const v0, 0x1040222

    return v0

    .line 6319
    :pswitch_e
    const v0, 0x1040223

    return v0

    .line 6320
    :pswitch_f
    const v0, 0x1040224

    return v0

    .line 6321
    :pswitch_10
    const v0, 0x1040225

    return v0

    .line 6322
    :pswitch_11
    const v0, 0x1040226

    return v0

    .line 6323
    :pswitch_12
    const v0, 0x1040227

    return v0

    .line 6324
    :pswitch_13
    const v0, 0x1040228

    return v0

    .line 6325
    :pswitch_14
    const v0, 0x10400b4

    return v0

    .line 6304
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
    .end packed-switch
.end method

.method public static isLeExtNumber(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    .locals 7
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "queryType"    # I

    .prologue
    const/4 v6, 0x0

    .line 6356
    if-nez p1, :cond_0

    .line 6357
    return v6

    .line 6360
    :cond_0
    invoke-static {p0, p1, p2}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getLeExtNumberInfo(Landroid/content/ContentResolver;Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v1

    .line 6361
    .local v1, "c":Landroid/database/Cursor;
    if-nez v1, :cond_1

    .line 6362
    return v6

    .line 6366
    :cond_1
    const/4 v3, 0x0

    .line 6367
    .local v3, "isBlack":Z
    :try_start_0
    const-string/jumbo v4, "type"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 6368
    .local v0, "BLOCK_TYPE_INDEX":I
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 6371
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_3

    .line 6372
    const/4 v3, 0x1

    .line 6382
    :cond_2
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 6378
    return v3

    .line 6373
    :cond_3
    :try_start_1
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/4 v5, 0x6

    if-ne v4, v5, :cond_4

    .line 6374
    const/4 v3, 0x1

    goto :goto_0

    .line 6375
    :cond_4
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    .line 6376
    const/4 v3, 0x1

    goto :goto_0

    .line 6379
    .end local v0    # "BLOCK_TYPE_INDEX":I
    :catch_0
    move-exception v2

    .line 6382
    .local v2, "e":Ljava/lang/Exception;
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 6380
    return v6

    .line 6381
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    .line 6382
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 6381
    throw v4
.end method
