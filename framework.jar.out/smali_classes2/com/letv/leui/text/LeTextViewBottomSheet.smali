.class public Lcom/letv/leui/text/LeTextViewBottomSheet;
.super Ljava/lang/Object;
.source "LeTextViewBottomSheet.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# static fields
.field private static final CALLER_ID_PROJECTION:[Ljava/lang/String;

.field private static final CALLER_ID_SELECTION:Ljava/lang/String; = " Data._ID IN  (SELECT DISTINCT lookup.data_id  FROM  (SELECT data_id, normalized_number, length(normalized_number) as len  FROM phone_lookup  WHERE min_match = ?) AS lookup  WHERE lookup.normalized_number = ? OR (lookup.len <= ? AND  substr(?, ? - lookup.len + 1) = lookup.normalized_number))"

.field private static final CALLER_ID_SELECTION_WITHOUT_E164:Ljava/lang/String; = " Data._ID IN  (SELECT DISTINCT lookup.data_id  FROM  (SELECT data_id, normalized_number, length(normalized_number) as len  FROM phone_lookup  WHERE min_match = ?) AS lookup  WHERE  (lookup.len <= ? AND  substr(?, ? - lookup.len + 1) = lookup.normalized_number))"

.field private static final DEBUG:Z = false

.field private static final PHONES_WITH_PRESENCE_URI:Landroid/net/Uri;

.field private static final TAG:Ljava/lang/String; = "LeTextViewBottomSheet"


# instance fields
.field private final ITEM_NAMES:[Ljava/lang/String;

.field private mBottomSheet:Lcom/letv/leui/widget/LeBottomSheet;

.field private mContactId:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field mDataList:Ljava/util/ArrayList;

.field private mTextView:Landroid/widget/TextView;

.field private mURL:Ljava/lang/String;

.field private mURLEndOffset:I

.field private mURLStartOffset:I

.field private mURLText:Ljava/lang/String;

.field private mURLType:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 75
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/letv/leui/text/LeTextViewBottomSheet;->PHONES_WITH_PRESENCE_URI:Landroid/net/Uri;

    .line 77
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    .line 78
    const-string/jumbo v1, "_id"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 79
    const-string/jumbo v1, "data1"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 80
    const-string/jumbo v1, "data3"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 81
    const-string/jumbo v1, "display_name"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 82
    const-string/jumbo v1, "contact_id"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 83
    const-string/jumbo v1, "contact_presence"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 84
    const-string/jumbo v1, "contact_status"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 85
    const-string/jumbo v1, "data4"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 86
    const-string/jumbo v1, "send_to_voicemail"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 77
    sput-object v0, Lcom/letv/leui/text/LeTextViewBottomSheet;->CALLER_ID_PROJECTION:[Ljava/lang/String;

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 3
    .param p1, "textView"    # Landroid/widget/TextView;

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "item_name"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/letv/leui/text/LeTextViewBottomSheet;->ITEM_NAMES:[Ljava/lang/String;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/text/LeTextViewBottomSheet;->mDataList:Ljava/util/ArrayList;

    .line 91
    iput-object p1, p0, Lcom/letv/leui/text/LeTextViewBottomSheet;->mTextView:Landroid/widget/TextView;

    .line 92
    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/leui/text/LeTextViewBottomSheet;->mContext:Landroid/content/Context;

    .line 93
    new-instance v0, Lcom/letv/leui/widget/LeBottomSheet;

    iget-object v1, p0, Lcom/letv/leui/text/LeTextViewBottomSheet;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/letv/leui/widget/LeBottomSheet;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/letv/leui/text/LeTextViewBottomSheet;->mBottomSheet:Lcom/letv/leui/widget/LeBottomSheet;

    .line 90
    return-void
.end method

.method private checkHasReadContactPermission(Landroid/content/Context;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 393
    const-string/jumbo v1, "android.permission.READ_CONTACTS"

    invoke-virtual {p1, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private copyText(Landroid/widget/TextView;II)V
    .locals 5
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    const/4 v4, 0x0

    .line 302
    const/4 v2, 0x0

    .line 303
    .local v2, "min":I
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 305
    .local v1, "max":I
    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 306
    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 308
    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 309
    const-string/jumbo v4, "clipboard"

    .line 308
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 310
    .local v0, "clipboardManager":Landroid/content/ClipboardManager;
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v4, v3}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 301
    return-void
.end method

.method private static getCurrentContryIso(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 325
    const-string/jumbo v3, "country_detector"

    .line 324
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/CountryDetector;

    .line 326
    .local v1, "countryDetector":Landroid/location/CountryDetector;
    invoke-virtual {v1}, Landroid/location/CountryDetector;->detectCountry()Landroid/location/Country;

    move-result-object v0

    .line 327
    .local v0, "country":Landroid/location/Country;
    const/4 v2, 0x0

    .line 328
    .local v2, "countryIso":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 329
    invoke-virtual {v0}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;

    move-result-object v2

    .line 331
    .end local v2    # "countryIso":Ljava/lang/String;
    :cond_0
    return-object v2
.end method

.method private getDisplayNameAndContactIdForPhoneNumber(Landroid/content/Context;Ljava/lang/String;)Landroid/util/Pair;
    .locals 17
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "number"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 341
    invoke-static/range {p2 .. p2}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 342
    .local v13, "normalizedNumber":Ljava/lang/String;
    invoke-static {v13}, Landroid/telephony/PhoneNumberUtils;->toCallerIDMinMatch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 343
    .local v12, "minMatch":Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 389
    :cond_0
    :goto_0
    const/4 v1, 0x0

    return-object v1

    .line 344
    :cond_1
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    .line 346
    .local v15, "numberLen":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/letv/leui/text/LeTextViewBottomSheet;->getCurrentContryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 345
    move-object/from16 v0, p2

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->formatNumberToE164(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 349
    .local v14, "numberE164":Ljava/lang/String;
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 350
    const-string/jumbo v4, " Data._ID IN  (SELECT DISTINCT lookup.data_id  FROM  (SELECT data_id, normalized_number, length(normalized_number) as len  FROM phone_lookup  WHERE min_match = ?) AS lookup  WHERE  (lookup.len <= ? AND  substr(?, ? - lookup.len + 1) = lookup.normalized_number))"

    .line 351
    .local v4, "selection":Ljava/lang/String;
    const/4 v1, 0x4

    new-array v5, v1, [Ljava/lang/String;

    .line 352
    const/4 v1, 0x0

    aput-object v12, v5, v1

    const/4 v1, 0x1

    aput-object v15, v5, v1

    const/4 v1, 0x2

    aput-object v13, v5, v1

    const/4 v1, 0x3

    aput-object v15, v5, v1

    .line 361
    .local v5, "args":[Ljava/lang/String;
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 362
    sget-object v2, Lcom/letv/leui/text/LeTextViewBottomSheet;->PHONES_WITH_PRESENCE_URI:Landroid/net/Uri;

    sget-object v3, Lcom/letv/leui/text/LeTextViewBottomSheet;->CALLER_ID_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    .line 361
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 363
    .local v9, "cursor":Landroid/database/Cursor;
    if-nez v9, :cond_3

    .line 366
    const/4 v1, 0x0

    return-object v1

    .line 355
    .end local v4    # "selection":Ljava/lang/String;
    .end local v5    # "args":[Ljava/lang/String;
    .end local v9    # "cursor":Landroid/database/Cursor;
    :cond_2
    const-string/jumbo v4, " Data._ID IN  (SELECT DISTINCT lookup.data_id  FROM  (SELECT data_id, normalized_number, length(normalized_number) as len  FROM phone_lookup  WHERE min_match = ?) AS lookup  WHERE lookup.normalized_number = ? OR (lookup.len <= ? AND  substr(?, ? - lookup.len + 1) = lookup.normalized_number))"

    .line 356
    .restart local v4    # "selection":Ljava/lang/String;
    const/4 v1, 0x5

    new-array v5, v1, [Ljava/lang/String;

    .line 357
    const/4 v1, 0x0

    aput-object v12, v5, v1

    const/4 v1, 0x1

    aput-object v14, v5, v1

    const/4 v1, 0x2

    aput-object v15, v5, v1

    const/4 v1, 0x3

    aput-object v13, v5, v1

    const/4 v1, 0x4

    aput-object v15, v5, v1

    .line 356
    .restart local v5    # "args":[Ljava/lang/String;
    goto :goto_1

    .line 369
    .restart local v9    # "cursor":Landroid/database/Cursor;
    :cond_3
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 373
    const-string/jumbo v1, "contact_id"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 374
    .local v8, "contactIdIndex":I
    const-string/jumbo v1, "display_name"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 375
    .local v11, "displayNameIndex":I
    const-string/jumbo v7, ""

    .line 376
    .local v7, "contactId":Ljava/lang/String;
    const-string/jumbo v10, ""

    .line 377
    .local v10, "displayName":Ljava/lang/String;
    const/4 v1, -0x1

    if-eq v8, v1, :cond_4

    .line 378
    const-string/jumbo v1, "contact_id"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 379
    :cond_4
    const/4 v1, -0x1

    if-eq v11, v1, :cond_5

    .line 380
    const-string/jumbo v1, "display_name"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 382
    :cond_5
    new-instance v16, Landroid/util/Pair;

    move-object/from16 v0, v16

    invoke-direct {v0, v7, v10}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 386
    .local v16, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 383
    return-object v16

    .line 386
    .end local v7    # "contactId":Ljava/lang/String;
    .end local v8    # "contactIdIndex":I
    .end local v10    # "displayName":Ljava/lang/String;
    .end local v11    # "displayNameIndex":I
    .end local v16    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_6
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 385
    :catchall_0
    move-exception v1

    .line 386
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 385
    throw v1
.end method

.method private onEmailClick(Landroid/view/View;Ljava/lang/Integer;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "index"    # Ljava/lang/Integer;

    .prologue
    .line 240
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 239
    :goto_0
    return-void

    .line 242
    :pswitch_0
    iget-object v1, p0, Lcom/letv/leui/text/LeTextViewBottomSheet;->mTextView:Landroid/widget/TextView;

    iget v2, p0, Lcom/letv/leui/text/LeTextViewBottomSheet;->mURLStartOffset:I

    iget v3, p0, Lcom/letv/leui/text/LeTextViewBottomSheet;->mURLEndOffset:I

    invoke-direct {p0, v1, v2, v3}, Lcom/letv/leui/text/LeTextViewBottomSheet;->copyText(Landroid/widget/TextView;II)V

    goto :goto_0

    .line 246
    :pswitch_1
    :try_start_0
    iget-object v1, p0, Lcom/letv/leui/text/LeTextViewBottomSheet;->mURL:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/letv/leui/text/LeTextViewBottomSheet;->startActivityWithUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 247
    :catch_0
    move-exception v0

    .line 248
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/letv/leui/text/LeTextViewBottomSheet;->mContext:Landroid/content/Context;

    const v2, 0x10405cd

    .line 249
    const/4 v3, 0x0

    .line 248
    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 253
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_2
    iget v1, p0, Lcom/letv/leui/text/LeTextViewBottomSheet;->mURLType:I

    iget-object v2, p0, Lcom/letv/leui/text/LeTextViewBottomSheet;->mURLText:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/letv/leui/text/LeTextViewBottomSheet;->saveToContact(ILjava/lang/String;)V

    goto :goto_0

    .line 240
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private onPhoneItemClick(Landroid/view/View;Ljava/lang/Integer;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;
    .param p2, "index"    # Ljava/lang/Integer;

    .prologue
    .line 205
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 204
    :goto_0
    return-void

    .line 208
    :pswitch_0
    :try_start_0
    iget-object v6, p0, Lcom/letv/leui/text/LeTextViewBottomSheet;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 209
    .local v0, "c":Landroid/content/Context;
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v6, "android.intent.action.CALL"

    iget-object v7, p0, Lcom/letv/leui/text/LeTextViewBottomSheet;->mURL:Ljava/lang/String;

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v3, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 210
    .local v3, "i":Landroid/content/Intent;
    const-string/jumbo v6, "com.android.browser.application_id"

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 211
    invoke-virtual {v0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 212
    .end local v0    # "c":Landroid/content/Context;
    .end local v3    # "i":Landroid/content/Intent;
    :catch_0
    move-exception v2

    .line 213
    .local v2, "e":Ljava/lang/Exception;
    iget-object v6, p0, Lcom/letv/leui/text/LeTextViewBottomSheet;->mURL:Ljava/lang/String;

    invoke-virtual {p0, v6}, Lcom/letv/leui/text/LeTextViewBottomSheet;->startActivityWithUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 217
    .end local v2    # "e":Ljava/lang/Exception;
    :pswitch_1
    iget-object v6, p0, Lcom/letv/leui/text/LeTextViewBottomSheet;->mURL:Ljava/lang/String;

    const-string/jumbo v7, "tel:"

    const-string/jumbo v8, "smsto:"

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 218
    .local v5, "uri":Landroid/net/Uri;
    iget-object v1, p0, Lcom/letv/leui/text/LeTextViewBottomSheet;->mContext:Landroid/content/Context;

    .line 219
    .local v1, "context":Landroid/content/Context;
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v6, "android.intent.action.SENDTO"

    invoke-direct {v4, v6, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 220
    .local v4, "intent":Landroid/content/Intent;
    const-string/jumbo v6, "com.android.browser.application_id"

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 221
    invoke-virtual {v1, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 224
    .end local v1    # "context":Landroid/content/Context;
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v5    # "uri":Landroid/net/Uri;
    :pswitch_2
    iget-object v6, p0, Lcom/letv/leui/text/LeTextViewBottomSheet;->mTextView:Landroid/widget/TextView;

    iget v7, p0, Lcom/letv/leui/text/LeTextViewBottomSheet;->mURLStartOffset:I

    iget v8, p0, Lcom/letv/leui/text/LeTextViewBottomSheet;->mURLEndOffset:I

    invoke-direct {p0, v6, v7, v8}, Lcom/letv/leui/text/LeTextViewBottomSheet;->copyText(Landroid/widget/TextView;II)V

    goto :goto_0

    .line 227
    :pswitch_3
    iget-object v6, p0, Lcom/letv/leui/text/LeTextViewBottomSheet;->mContactId:Ljava/lang/String;

    if-eqz v6, :cond_0

    .line 228
    iget-object v6, p0, Lcom/letv/leui/text/LeTextViewBottomSheet;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/letv/leui/text/LeTextViewBottomSheet;->mContactId:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/letv/leui/text/LeTextViewBottomSheet;->startActivityWithContactId(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 230
    :cond_0
    iget-object v6, p0, Lcom/letv/leui/text/LeTextViewBottomSheet;->mURLText:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/letv/leui/text/LeTextViewBottomSheet;->saveAsNewContact(Ljava/lang/String;)V

    goto :goto_0

    .line 234
    :pswitch_4
    iget v6, p0, Lcom/letv/leui/text/LeTextViewBottomSheet;->mURLType:I

    iget-object v7, p0, Lcom/letv/leui/text/LeTextViewBottomSheet;->mURLText:Ljava/lang/String;

    invoke-direct {p0, v6, v7}, Lcom/letv/leui/text/LeTextViewBottomSheet;->saveToContact(ILjava/lang/String;)V

    goto :goto_0

    .line 205
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private saveAsNewContact(Ljava/lang/String;)V
    .locals 3
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 270
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.INSERT"

    .line 271
    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    .line 270
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 272
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 273
    iget-object v1, p0, Lcom/letv/leui/text/LeTextViewBottomSheet;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 269
    return-void
.end method

.method private saveToContact(ILjava/lang/String;)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 259
    const-string/jumbo v0, "phone"

    .line 260
    .local v0, "extra":Ljava/lang/String;
    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    .line 261
    const-string/jumbo v0, "email"

    .line 263
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.INSERT_OR_EDIT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 264
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "vnd.android.cursor.item/contact"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 265
    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 266
    iget-object v2, p0, Lcom/letv/leui/text/LeTextViewBottomSheet;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 258
    return-void
.end method

.method private static startActivityWithContactId(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "contactId"    # Ljava/lang/String;

    .prologue
    .line 315
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 316
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "vnd.android.cursor.item/contact"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 317
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    .line 318
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 317
    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 319
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 320
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 314
    return-void
.end method

.method private updateContent(I)V
    .locals 21
    .param p1, "type"    # I

    .prologue
    .line 111
    const/16 v18, 0x0

    .line 112
    .local v18, "items":[Ljava/lang/String;
    const/4 v12, 0x0

    .line 113
    .local v12, "arraysId":I
    packed-switch p1, :pswitch_data_0

    .line 145
    :pswitch_0
    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v18, v0

    .line 146
    .end local v18    # "items":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/text/LeTextViewBottomSheet;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1040001

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v18, v3

    .line 150
    :cond_0
    :goto_0
    if-eqz v12, :cond_1

    .line 151
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/text/LeTextViewBottomSheet;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v12}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v18

    .line 154
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/text/LeTextViewBottomSheet;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 155
    const/4 v2, 0x0

    move-object/from16 v0, v18

    array-length v3, v0

    :goto_1
    if-ge v2, v3, :cond_3

    aget-object v17, v18, v2

    .line 156
    .local v17, "item":Ljava/lang/String;
    new-instance v20, Ljava/util/HashMap;

    invoke-direct/range {v20 .. v20}, Ljava/util/HashMap;-><init>()V

    .line 157
    .local v20, "values":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/letv/leui/text/LeTextViewBottomSheet;->ITEM_NAMES:[Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/letv/leui/text/LeTextViewBottomSheet;->mDataList:Ljava/util/ArrayList;

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 115
    .end local v17    # "item":Ljava/lang/String;
    .end local v20    # "values":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v18    # "items":[Ljava/lang/String;
    :pswitch_1
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/letv/leui/text/LeTextViewBottomSheet;->mContactId:Ljava/lang/String;

    .line 116
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/text/LeTextViewBottomSheet;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/letv/leui/text/LeTextViewBottomSheet;->checkHasReadContactPermission(Landroid/content/Context;)Z

    move-result v13

    .line 117
    .local v13, "canReadContact":Z
    if-eqz v13, :cond_2

    .line 118
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/text/LeTextViewBottomSheet;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/letv/leui/text/LeTextViewBottomSheet;->mURLText:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/letv/leui/text/LeTextViewBottomSheet;->getDisplayNameAndContactIdForPhoneNumber(Landroid/content/Context;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v19

    .line 119
    .local v19, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v19, :cond_2

    .line 120
    move-object/from16 v0, v19

    iget-object v14, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v14, Ljava/lang/String;

    .line 121
    .local v14, "displayName":Ljava/lang/String;
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 122
    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/letv/leui/text/LeTextViewBottomSheet;->mContactId:Ljava/lang/String;

    .line 123
    const v16, 0x107006e

    .line 125
    .local v16, "id":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/text/LeTextViewBottomSheet;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v18

    .line 126
    .local v18, "items":[Ljava/lang/String;
    move-object/from16 v0, v18

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    aget-object v2, v18, v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v14, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    .line 127
    .local v15, "format":Ljava/lang/String;
    move-object/from16 v0, v18

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    aput-object v15, v18, v2

    .line 132
    .end local v14    # "displayName":Ljava/lang/String;
    .end local v15    # "format":Ljava/lang/String;
    .end local v16    # "id":I
    .end local v18    # "items":[Ljava/lang/String;
    .end local v19    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    if-nez v18, :cond_0

    .line 133
    const v12, 0x107006d

    goto/16 :goto_0

    .line 138
    .end local v13    # "canReadContact":Z
    .local v18, "items":[Ljava/lang/String;
    :pswitch_2
    const v12, 0x1070070

    .line 139
    goto/16 :goto_0

    .line 142
    :pswitch_3
    const v12, 0x107006f

    .line 143
    goto/16 :goto_0

    .line 161
    .end local v18    # "items":[Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/text/LeTextViewBottomSheet;->mBottomSheet:Lcom/letv/leui/widget/LeBottomSheet;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/letv/leui/text/LeTextViewBottomSheet;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/letv/leui/text/LeTextViewBottomSheet;->mDataList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/letv/leui/text/LeTextViewBottomSheet;->ITEM_NAMES:[Ljava/lang/String;

    .line 162
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "\u201c"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/letv/leui/text/LeTextViewBottomSheet;->mURLText:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\u201d"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v6, p0

    .line 161
    invoke-virtual/range {v2 .. v11}, Lcom/letv/leui/widget/LeBottomSheet;->setStyle(Landroid/content/Context;Ljava/util/List;[Ljava/lang/String;Landroid/widget/AdapterView$OnItemClickListener;ZLjava/lang/CharSequence;Ljava/lang/String;ZLandroid/view/View$OnClickListener;)V

    .line 163
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/text/LeTextViewBottomSheet;->mBottomSheet:Lcom/letv/leui/widget/LeBottomSheet;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/letv/leui/widget/LeBottomSheet;->setCheckIsOn(Z)V

    .line 164
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/text/LeTextViewBottomSheet;->mBottomSheet:Lcom/letv/leui/widget/LeBottomSheet;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/letv/leui/widget/LeBottomSheet;->setCheckPos(I)V

    .line 165
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/text/LeTextViewBottomSheet;->mBottomSheet:Lcom/letv/leui/widget/LeBottomSheet;

    invoke-virtual {v2}, Lcom/letv/leui/widget/LeBottomSheet;->show()V

    .line 109
    return-void

    .line 113
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public createAddContactIntent(Ljava/lang/String;Z)Landroid/content/Intent;
    .locals 3
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "isEmail"    # Z

    .prologue
    .line 277
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.INSERT_OR_EDIT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 278
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "vnd.android.cursor.item/contact"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 279
    if-eqz p2, :cond_0

    .line 280
    const-string/jumbo v1, "email"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 286
    :goto_0
    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 288
    return-object v0

    .line 282
    :cond_0
    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 283
    const-string/jumbo v1, "phone_type"

    .line 284
    const/4 v2, 0x2

    .line 283
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .param p2, "v"    # Landroid/view/View;
    .param p3, "index"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 171
    iget-object v3, p0, Lcom/letv/leui/text/LeTextViewBottomSheet;->mBottomSheet:Lcom/letv/leui/widget/LeBottomSheet;

    invoke-virtual {v3}, Lcom/letv/leui/widget/LeBottomSheet;->disappear()V

    .line 172
    iget v3, p0, Lcom/letv/leui/text/LeTextViewBottomSheet;->mURLType:I

    packed-switch v3, :pswitch_data_0

    .line 181
    :pswitch_0
    if-nez p3, :cond_1

    .line 182
    iget-object v3, p0, Lcom/letv/leui/text/LeTextViewBottomSheet;->mTextView:Landroid/widget/TextView;

    iget v4, p0, Lcom/letv/leui/text/LeTextViewBottomSheet;->mURLStartOffset:I

    iget v5, p0, Lcom/letv/leui/text/LeTextViewBottomSheet;->mURLEndOffset:I

    invoke-direct {p0, v3, v4, v5}, Lcom/letv/leui/text/LeTextViewBottomSheet;->copyText(Landroid/widget/TextView;II)V

    .line 169
    :cond_0
    :goto_0
    return-void

    .line 174
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, p2, v3}, Lcom/letv/leui/text/LeTextViewBottomSheet;->onPhoneItemClick(Landroid/view/View;Ljava/lang/Integer;)V

    goto :goto_0

    .line 177
    :pswitch_2
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, p2, v3}, Lcom/letv/leui/text/LeTextViewBottomSheet;->onEmailClick(Landroid/view/View;Ljava/lang/Integer;)V

    goto :goto_0

    .line 183
    :cond_1
    if-ne p3, v4, :cond_2

    .line 184
    iget-object v3, p0, Lcom/letv/leui/text/LeTextViewBottomSheet;->mURL:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/letv/leui/text/LeTextViewBottomSheet;->startActivityWithUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 185
    :cond_2
    if-ne p3, v5, :cond_0

    iget v3, p0, Lcom/letv/leui/text/LeTextViewBottomSheet;->mURLType:I

    if-ne v3, v4, :cond_0

    .line 187
    :try_start_0
    iget-object v3, p0, Lcom/letv/leui/text/LeTextViewBottomSheet;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 188
    .local v0, "c":Landroid/content/Context;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 189
    .local v2, "intent":Landroid/content/Intent;
    const v3, 0x10008000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 190
    const-string/jumbo v3, "android.intent.action.ADD_BOOKMARK"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 191
    const-string/jumbo v3, "url"

    iget-object v4, p0, Lcom/letv/leui/text/LeTextViewBottomSheet;->mURL:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 192
    const-string/jumbo v3, "title"

    iget-object v4, p0, Lcom/letv/leui/text/LeTextViewBottomSheet;->mURL:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 193
    const-string/jumbo v3, "parent_id"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 194
    const-string/jumbo v3, "state_flag"

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 195
    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 196
    .end local v0    # "c":Landroid/content/Context;
    .end local v2    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 197
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 172
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 1
    .param p1, "onDismissListener"    # Landroid/content/DialogInterface$OnDismissListener;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/letv/leui/text/LeTextViewBottomSheet;->mBottomSheet:Lcom/letv/leui/widget/LeBottomSheet;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/LeBottomSheet;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 96
    return-void
.end method

.method public show(IIILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "url"    # Ljava/lang/String;
    .param p5, "text"    # Ljava/lang/String;

    .prologue
    .line 101
    iput p1, p0, Lcom/letv/leui/text/LeTextViewBottomSheet;->mURLType:I

    .line 102
    iput p2, p0, Lcom/letv/leui/text/LeTextViewBottomSheet;->mURLStartOffset:I

    .line 103
    iput p3, p0, Lcom/letv/leui/text/LeTextViewBottomSheet;->mURLEndOffset:I

    .line 104
    iput-object p4, p0, Lcom/letv/leui/text/LeTextViewBottomSheet;->mURL:Ljava/lang/String;

    .line 105
    iput-object p5, p0, Lcom/letv/leui/text/LeTextViewBottomSheet;->mURLText:Ljava/lang/String;

    .line 106
    iget v0, p0, Lcom/letv/leui/text/LeTextViewBottomSheet;->mURLType:I

    invoke-direct {p0, v0}, Lcom/letv/leui/text/LeTextViewBottomSheet;->updateContent(I)V

    .line 100
    return-void
.end method

.method public startActivityWithUrl(Ljava/lang/String;)V
    .locals 5
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 294
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 295
    .local v2, "uri":Landroid/net/Uri;
    iget-object v0, p0, Lcom/letv/leui/text/LeTextViewBottomSheet;->mContext:Landroid/content/Context;

    .line 296
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 297
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "com.android.browser.application_id"

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 298
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 293
    return-void
.end method
