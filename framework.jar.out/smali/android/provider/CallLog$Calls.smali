.class public Landroid/provider/CallLog$Calls;
.super Ljava/lang/Object;
.source "CallLog.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Landroid/provider/ContactsContract$SyncColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/CallLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Calls"
.end annotation


# static fields
.field public static final ACCOUNT_ID:Ljava/lang/String; = "account_id"

.field public static final ALLOW_VOICEMAILS_PARAM_KEY:Ljava/lang/String; = "allow_voicemails"

.field public static final AUTO_REJECT_TYPE:I = 0x5

.field public static final BLACK_LIST_ID:Ljava/lang/String; = "black_list_id"

.field public static final CACHED_FORMATTED_NUMBER:Ljava/lang/String; = "formatted_number"

.field public static final CACHED_LE_NUMBER_LABEL:Ljava/lang/String; = "lenumberlabel"

.field public static final CACHED_LOOKUP_URI:Ljava/lang/String; = "lookup_uri"

.field public static final CACHED_MATCHED_NUMBER:Ljava/lang/String; = "matched_number"

.field public static final CACHED_NAME:Ljava/lang/String; = "name"

.field public static final CACHED_NORMALIZED_NUMBER:Ljava/lang/String; = "normalized_number"

.field public static final CACHED_NUMBER_LABEL:Ljava/lang/String; = "numberlabel"

.field public static final CACHED_NUMBER_LABEL_MARK_COUNT:Ljava/lang/String; = "numberlabelmarkcount"

.field public static final CACHED_NUMBER_LABEL_ONWEB:Ljava/lang/String; = "numberlabelonweb"

.field public static final CACHED_NUMBER_LABEL_RESOURCE:Ljava/lang/String; = "numberlabelresource"

.field public static final CACHED_NUMBER_LABEL_STATUS:Ljava/lang/String; = "numberlabelstatus"

.field public static final CACHED_NUMBER_TYPE:Ljava/lang/String; = "numbertype"

.field public static final CACHED_NUMBER_YELLOWPAGE_NAME:Ljava/lang/String; = "yellowpagename"

.field public static final CACHED_PHOTO_ID:Ljava/lang/String; = "photo_id"

.field public static final CACHED_PHOTO_URI:Ljava/lang/String; = "photo_uri"

.field public static final CALL_LOG_NUMBER_IS_BLOCK_TYPE:I = 0x1

.field public static final CONFERENCE_CALL_ID:Ljava/lang/String; = "conference_call_id"

.field public static final CONTENT_FILTER_NO_NUMBER:Ljava/lang/String; = "content_filter_no_number"

.field public static final CONTENT_FILTER_URI:Landroid/net/Uri;

.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/calls"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/calls"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final CONTENT_URI_WITH_VOICEMAIL:Landroid/net/Uri;

.field public static final COUNT:Ljava/lang/String; = "count"

.field public static final COUNTRY_ISO:Ljava/lang/String; = "countryiso"

.field public static final CUSTOM_MARK_CUSTOM:Ljava/lang/String; = "f"

.field public static final DATA_ID:Ljava/lang/String; = "data_id"

.field public static final DATA_USAGE:Ljava/lang/String; = "data_usage"

.field public static final DATE:Ljava/lang/String; = "date"

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "date DESC"

.field public static final DELETED:Ljava/lang/String; = "leui_deleted"

.field public static final DIRTY:Ljava/lang/String; = "leui_dirty"

.field public static final DURATION:Ljava/lang/String; = "duration"

.field public static final EXTRA_CALL_TYPE_FILTER:Ljava/lang/String; = "android.provider.extra.CALL_TYPE_FILTER"

.field public static final FEATURES:Ljava/lang/String; = "features"

.field public static final FEATURES_VIDEO:I = 0x1

.field public static final FILTE_SIM1CALLS:I = 0x5

.field public static final FILTE_SIM2CALLS:I = 0x6

.field public static final GEOCODED_LOCATION:Ljava/lang/String; = "geocoded_location"

.field public static final INCOMING_TYPE:I = 0x1

.field public static final IP_PREFIX:Ljava/lang/String; = "ip_prefix"

.field public static final IS_COLLAPSE:Ljava/lang/String; = "is_collapse"

.field public static final IS_LETV_VIDEO_LOG:Ljava/lang/String; = "is_letv_video_log"

.field public static final IS_NUMBER_BLOCK:Ljava/lang/String; = "is_number_block"

.field public static final IS_READ:Ljava/lang/String; = "is_read"

.field public static final IS_STICKY:Ljava/lang/String; = "is_sticky"

.field public static final LETV_VIDEO_DEVICE_ID:Ljava/lang/String; = "letv_video_device_id"

.field public static final LIMIT_PARAM_KEY:Ljava/lang/String; = "limit"

.field private static final MIN_DURATION_FOR_NORMALIZED_NUMBER_UPDATE_MS:I = 0x2710

.field public static final MISSED_TYPE:I = 0x3

.field public static final NEW:Ljava/lang/String; = "new"

.field public static final NUMBER:Ljava/lang/String; = "number"

.field public static final NUMBER_PRESENTATION:Ljava/lang/String; = "presentation"

.field public static final NUM_MATCH_SELECTION:Ljava/lang/String; = "PHONE_NUMBERS_EQUAL(number, ?,1)"

.field public static final OFFSET_PARAM_KEY:Ljava/lang/String; = "offset"

.field public static final OUTGOING_TYPE:I = 0x2

.field public static final PHONE_ACCOUNT_ADDRESS:Ljava/lang/String; = "phone_account_address"

.field public static final PHONE_ACCOUNT_COMPONENT_NAME:Ljava/lang/String; = "subscription_component_name"

.field public static final PHONE_ACCOUNT_HIDDEN:Ljava/lang/String; = "phone_account_hidden"

.field public static final PHONE_ACCOUNT_ID:Ljava/lang/String; = "subscription_id"

.field public static final PRESENTATION_ALLOWED:I = 0x1

.field public static final PRESENTATION_PAYPHONE:I = 0x4

.field public static final PRESENTATION_RESTRICTED:I = 0x2

.field public static final PRESENTATION_UNKNOWN:I = 0x3

.field public static final RAW_CONTACT_ID:Ljava/lang/String; = "raw_contact_id"

.field public static final RINGTON_GAP:J = 0x4L

.field public static final SHOULD_INCLUDE_BLACK_LIST_KEY:Ljava/lang/String; = "shouldIncludeBlackList"

.field public static final SIM_ID:Ljava/lang/String; = "simid"

.field public static final SORT_DATE:Ljava/lang/String; = "sort_date"

.field public static final SUB_ID:Ljava/lang/String; = "sub_id"

.field private static final TEDDY:Ljava/lang/String; = "teddy"

.field public static final TRANSCRIPTION:Ljava/lang/String; = "transcription"

.field public static final TYPE:Ljava/lang/String; = "type"

.field public static final VIEW_CALL_LOG_LOOKUP_URI_KEY:Ljava/lang/String; = "view_calllog_lookup_uri"

.field public static final VIEW_CALL_LOG_NAME_KEY:Ljava/lang/String; = "view_calllog_name"

.field public static final VIEW_CALL_LOG_NUMBER_KEY:Ljava/lang/String; = "view_calllog_number"

.field public static final VOICEMAIL_TYPE:I = 0x4

.field public static final VOICEMAIL_URI:Ljava/lang/String; = "voicemail_uri"

.field public static final VTCALL:Ljava/lang/String; = "vtcall"

.field public static final YELLABLE_QUERY_STATUS:Ljava/lang/String; = "Y"

.field public static final YELLABLE_QUERY_SUCCESS:Ljava/lang/String; = "1"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 84
    const-string/jumbo v0, "content://call_log/calls"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 83
    sput-object v0, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    .line 93
    const-string/jumbo v0, "content://call_log/calls/filter"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 92
    sput-object v0, Landroid/provider/CallLog$Calls;->CONTENT_FILTER_URI:Landroid/net/Uri;

    .line 156
    sget-object v0, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 157
    const-string/jumbo v1, "allow_voicemails"

    const-string/jumbo v2, "true"

    .line 156
    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/CallLog$Calls;->CONTENT_URI_WITH_VOICEMAIL:Landroid/net/Uri;

    .line 79
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addCall(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;Ljava/lang/String;IIILandroid/telecom/PhoneAccountHandle;JILjava/lang/Long;)Landroid/net/Uri;
    .locals 13
    .param p0, "ci"    # Lcom/android/internal/telephony/CallerInfo;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "presentation"    # I
    .param p4, "callType"    # I
    .param p5, "features"    # I
    .param p6, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;
    .param p7, "start"    # J
    .param p9, "duration"    # I
    .param p10, "dataUsage"    # Ljava/lang/Long;

    .prologue
    .line 620
    const/4 v12, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-wide/from16 v8, p7

    move/from16 v10, p9

    move-object/from16 v11, p10

    .line 619
    invoke-static/range {v1 .. v12}, Landroid/provider/CallLog$Calls;->addCall(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;Ljava/lang/String;IIILandroid/telecom/PhoneAccountHandle;JILjava/lang/Long;Z)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static addCall(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;Ljava/lang/String;IIILandroid/telecom/PhoneAccountHandle;JILjava/lang/Long;Z)Landroid/net/Uri;
    .locals 15
    .param p0, "ci"    # Lcom/android/internal/telephony/CallerInfo;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "presentation"    # I
    .param p4, "callType"    # I
    .param p5, "features"    # I
    .param p6, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;
    .param p7, "start"    # J
    .param p9, "duration"    # I
    .param p10, "dataUsage"    # Ljava/lang/Long;
    .param p11, "addForAllUsers"    # Z

    .prologue
    .line 652
    const-wide/16 v12, -0x1

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-wide/from16 v7, p7

    move/from16 v9, p9

    move-object/from16 v10, p10

    move/from16 v11, p11

    .line 651
    invoke-static/range {v0 .. v13}, Landroid/provider/CallLog$Calls;->addCall(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;Ljava/lang/String;IIILandroid/telecom/PhoneAccountHandle;JILjava/lang/Long;ZJ)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static addCall(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;Ljava/lang/String;IIILandroid/telecom/PhoneAccountHandle;JILjava/lang/Long;ZJ)Landroid/net/Uri;
    .locals 16
    .param p0, "ci"    # Lcom/android/internal/telephony/CallerInfo;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "presentation"    # I
    .param p4, "callType"    # I
    .param p5, "features"    # I
    .param p6, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;
    .param p7, "start"    # J
    .param p9, "duration"    # I
    .param p10, "dataUsage"    # Ljava/lang/Long;
    .param p11, "addForAllUsers"    # Z
    .param p12, "conferenceCallId"    # J

    .prologue
    .line 720
    const/4 v13, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-wide/from16 v8, p7

    move/from16 v10, p9

    move-object/from16 v11, p10

    move/from16 v12, p11

    move-wide/from16 v14, p12

    .line 719
    invoke-static/range {v1 .. v15}, Landroid/provider/CallLog$Calls;->addCall(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;Ljava/lang/String;IIILandroid/telecom/PhoneAccountHandle;JILjava/lang/Long;ZZJ)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static addCall(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;Ljava/lang/String;IIILandroid/telecom/PhoneAccountHandle;JILjava/lang/Long;ZZ)Landroid/net/Uri;
    .locals 17
    .param p0, "ci"    # Lcom/android/internal/telephony/CallerInfo;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "presentation"    # I
    .param p4, "callType"    # I
    .param p5, "features"    # I
    .param p6, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;
    .param p7, "start"    # J
    .param p9, "duration"    # I
    .param p10, "dataUsage"    # Ljava/lang/Long;
    .param p11, "addForAllUsers"    # Z
    .param p12, "is_read"    # Z

    .prologue
    .line 686
    const-wide/16 v14, -0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-wide/from16 v8, p7

    move/from16 v10, p9

    move-object/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    .line 685
    invoke-static/range {v1 .. v15}, Landroid/provider/CallLog$Calls;->addCall(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;Ljava/lang/String;IIILandroid/telecom/PhoneAccountHandle;JILjava/lang/Long;ZZJ)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static addCall(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;Ljava/lang/String;IIILandroid/telecom/PhoneAccountHandle;JILjava/lang/Long;ZZJ)Landroid/net/Uri;
    .locals 41
    .param p0, "ci"    # Lcom/android/internal/telephony/CallerInfo;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "presentation"    # I
    .param p4, "callType"    # I
    .param p5, "features"    # I
    .param p6, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;
    .param p7, "start"    # J
    .param p9, "duration"    # I
    .param p10, "dataUsage"    # Ljava/lang/Long;
    .param p11, "addForAllUsers"    # Z
    .param p12, "is_read"    # Z
    .param p13, "conferenceCallId"    # J

    .prologue
    .line 755
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 756
    .local v4, "resolver":Landroid/content/ContentResolver;
    const/16 v24, 0x1

    .line 758
    .local v24, "numberPresentation":I
    const/16 v29, 0x0

    .line 760
    .local v29, "tm":Landroid/telecom/TelecomManager;
    :try_start_0
    invoke-static/range {p1 .. p1}, Landroid/telecom/TelecomManager;->from(Landroid/content/Context;)Landroid/telecom/TelecomManager;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v29

    .line 763
    .end local v29    # "tm":Landroid/telecom/TelecomManager;
    :goto_0
    const/4 v11, 0x0

    .line 764
    .local v11, "accountAddress":Ljava/lang/String;
    if-eqz v29, :cond_0

    if-eqz p6, :cond_0

    .line 765
    move-object/from16 v0, v29

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Landroid/telecom/TelecomManager;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v10

    .line 766
    .local v10, "account":Landroid/telecom/PhoneAccount;
    if-eqz v10, :cond_0

    .line 767
    invoke-virtual {v10}, Landroid/telecom/PhoneAccount;->getSubscriptionAddress()Landroid/net/Uri;

    move-result-object v14

    .line 768
    .local v14, "address":Landroid/net/Uri;
    if-eqz v14, :cond_0

    .line 769
    invoke-virtual {v14}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v11

    .line 779
    .end local v10    # "account":Landroid/telecom/PhoneAccount;
    .end local v11    # "accountAddress":Ljava/lang/String;
    .end local v14    # "address":Landroid/net/Uri;
    :cond_0
    const/4 v5, 0x2

    move/from16 v0, p3

    if-ne v0, v5, :cond_d

    .line 780
    const/16 v24, 0x2

    .line 787
    :cond_1
    :goto_1
    const/4 v5, 0x1

    move/from16 v0, v24

    if-eq v0, v5, :cond_2

    .line 788
    const-string/jumbo p2, ""

    .line 789
    if-eqz p0, :cond_2

    .line 790
    const-string/jumbo v5, ""

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 795
    :cond_2
    const/4 v12, 0x0

    .line 796
    .local v12, "accountComponentString":Ljava/lang/String;
    const/4 v13, 0x0

    .line 797
    .local v13, "accountId":Ljava/lang/String;
    if-eqz p6, :cond_3

    .line 798
    invoke-virtual/range {p6 .. p6}, Landroid/telecom/PhoneAccountHandle;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v12

    .line 800
    .local v12, "accountComponentString":Ljava/lang/String;
    move-object/from16 v0, p6

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/telecom/PhoneAccountHandle;->getSubId(Landroid/content/Context;)I

    move-result v28

    .line 801
    .local v28, "subId":I
    const/4 v5, -0x1

    move/from16 v0, v28

    if-eq v0, v5, :cond_3

    if-lez v28, :cond_3

    .line 802
    invoke-static/range {v28 .. v28}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    .line 807
    .end local v12    # "accountComponentString":Ljava/lang/String;
    .end local v13    # "accountId":Ljava/lang/String;
    .end local v28    # "subId":I
    :cond_3
    new-instance v36, Landroid/content/ContentValues;

    const/4 v5, 0x6

    move-object/from16 v0, v36

    invoke-direct {v0, v5}, Landroid/content/ContentValues;-><init>(I)V

    .line 809
    .local v36, "values":Landroid/content/ContentValues;
    const-string/jumbo v5, "number"

    move-object/from16 v0, v36

    move-object/from16 v1, p2

    invoke-virtual {v0, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 810
    const-string/jumbo v5, "presentation"

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v36

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 811
    const-string/jumbo v5, "type"

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v36

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 812
    const-string/jumbo v5, "features"

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v36

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 813
    const-string/jumbo v5, "date"

    invoke-static/range {p7 .. p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v36

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 814
    const-string/jumbo v5, "duration"

    move/from16 v0, p9

    int-to-long v6, v0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v36

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 815
    if-eqz p10, :cond_4

    .line 816
    const-string/jumbo v5, "data_usage"

    move-object/from16 v0, v36

    move-object/from16 v1, p10

    invoke-virtual {v0, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 818
    :cond_4
    const-string/jumbo v5, "subscription_component_name"

    move-object/from16 v0, v36

    invoke-virtual {v0, v5, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 819
    const-string/jumbo v5, "subscription_id"

    move-object/from16 v0, v36

    invoke-virtual {v0, v5, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 820
    const-string/jumbo v5, "phone_account_address"

    move-object/from16 v0, v36

    invoke-virtual {v0, v5, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 821
    const-string/jumbo v5, "new"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v36

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 823
    const/4 v5, 0x3

    move/from16 v0, p4

    if-ne v0, v5, :cond_5

    .line 824
    const-string/jumbo v6, "is_read"

    if-eqz p12, :cond_10

    const/4 v5, 0x1

    :goto_2
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v36

    invoke-virtual {v0, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 827
    :cond_5
    if-eqz p0, :cond_7

    .line 828
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->yellowPageInfo:Lcom/android/internal/telephony/CallerYellowPageInfo;

    move-object/from16 v37, v0

    .line 829
    .local v37, "yellowPageInfo":Lcom/android/internal/telephony/CallerYellowPageInfo;
    if-eqz v37, :cond_7

    .line 830
    const-string/jumbo v5, "lenumberlabel"

    move-object/from16 v0, v37

    iget-object v6, v0, Lcom/android/internal/telephony/CallerYellowPageInfo;->yellowPageTag:Ljava/lang/String;

    move-object/from16 v0, v36

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 832
    const-string/jumbo v5, "yellowpagename"

    move-object/from16 v0, v37

    iget-object v6, v0, Lcom/android/internal/telephony/CallerYellowPageInfo;->yellowPageName:Ljava/lang/String;

    move-object/from16 v0, v36

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 833
    const-string/jumbo v5, "numberlabelmarkcount"

    move-object/from16 v0, v37

    iget-object v6, v0, Lcom/android/internal/telephony/CallerYellowPageInfo;->yellowPageMount:Ljava/lang/String;

    move-object/from16 v0, v36

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 834
    const-string/jumbo v6, "is_number_block"

    move-object/from16 v0, v37

    iget-boolean v5, v0, Lcom/android/internal/telephony/CallerYellowPageInfo;->isYPBlackNumber:Z

    if-eqz v5, :cond_11

    const/4 v5, 0x1

    :goto_3
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v36

    invoke-virtual {v0, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 836
    const-string/jumbo v6, "numberlabelstatus"

    const-string/jumbo v5, "Y"

    .line 837
    move-object/from16 v0, v37

    iget-object v7, v0, Lcom/android/internal/telephony/CallerYellowPageInfo;->yellowPageState:Ljava/lang/String;

    .line 836
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 837
    const-string/jumbo v5, "1"

    .line 836
    :goto_4
    move-object/from16 v0, v36

    invoke-virtual {v0, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 839
    const-string/jumbo v5, "Y"

    .line 840
    move-object/from16 v0, v37

    iget-object v6, v0, Lcom/android/internal/telephony/CallerYellowPageInfo;->yellowPageState:Ljava/lang/String;

    .line 839
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 841
    const-string/jumbo v5, "numberlabelstatus"

    const-string/jumbo v6, "1"

    move-object/from16 v0, v36

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 846
    :goto_5
    move-object/from16 v0, v37

    iget-object v5, v0, Lcom/android/internal/telephony/CallerYellowPageInfo;->yellowPageMount:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_14

    const/16 v22, 0x0

    .line 849
    .local v22, "markCount":I
    :goto_6
    const-string/jumbo v5, "teddy"

    move-object/from16 v0, v37

    iget-object v6, v0, Lcom/android/internal/telephony/CallerYellowPageInfo;->yellowPageResource:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    const/4 v5, -0x1

    move/from16 v0, v22

    if-ne v5, v0, :cond_15

    .line 850
    const/16 v22, -0x1

    .line 854
    :cond_6
    :goto_7
    const-string/jumbo v5, "numberlabelmarkcount"

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v36

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 858
    .end local v22    # "markCount":I
    .end local v37    # "yellowPageInfo":Lcom/android/internal/telephony/CallerYellowPageInfo;
    :cond_7
    if-eqz p0, :cond_9

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/internal/telephony/CallerInfo;->contactIdOrZero:J

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-lez v5, :cond_9

    .line 867
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/CallerInfo;->normalizedNumber:Ljava/lang/String;

    if-eqz v5, :cond_16

    .line 868
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->normalizedNumber:Ljava/lang/String;

    move-object/from16 v23, v0

    .line 869
    .local v23, "normalizedPhoneNumber":Ljava/lang/String;
    sget-object v5, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    .line 870
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const-string/jumbo v7, "_id"

    const/4 v8, 0x0

    aput-object v7, v6, v8

    .line 871
    const-string/jumbo v7, "contact_id =? AND data4 =?"

    .line 872
    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/telephony/CallerInfo;->contactIdOrZero:J

    move-wide/from16 v38, v0

    invoke-static/range {v38 .. v39}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    const/16 v38, 0x0

    aput-object v9, v8, v38

    .line 873
    const/4 v9, 0x1

    aput-object v23, v8, v9

    .line 874
    const/4 v9, 0x0

    .line 869
    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 886
    .end local v23    # "normalizedPhoneNumber":Ljava/lang/String;
    .local v17, "cursor":Landroid/database/Cursor;
    :goto_8
    if-eqz v17, :cond_9

    .line 888
    :try_start_1
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-lez v5, :cond_8

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 889
    const/4 v5, 0x0

    move-object/from16 v0, v17

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 890
    .local v18, "dataId":Ljava/lang/String;
    move-object/from16 v0, v18

    invoke-static {v4, v0}, Landroid/provider/CallLog$Calls;->updateDataUsageStatForData(Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 891
    const/16 v5, 0x2710

    move/from16 v0, p9

    if-lt v0, v5, :cond_8

    .line 892
    const/4 v5, 0x2

    move/from16 v0, p4

    if-ne v0, v5, :cond_8

    .line 893
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/CallerInfo;->normalizedNumber:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    .line 891
    if-eqz v5, :cond_8

    .line 894
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, p2

    invoke-static {v0, v4, v1, v2}, Landroid/provider/CallLog$Calls;->updateNormalizedNumber(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 898
    .end local v18    # "dataId":Ljava/lang/String;
    :cond_8
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 904
    .end local v17    # "cursor":Landroid/database/Cursor;
    :cond_9
    const/16 v21, 0x0

    .line 905
    .local v21, "ipPrefix":Ljava/lang/String;
    if-eqz v29, :cond_a

    .line 906
    move-object/from16 v0, v29

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Landroid/telecom/TelecomManager;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v25

    .line 907
    .local v25, "phoneAccount":Landroid/telecom/PhoneAccount;
    invoke-static/range {p1 .. p1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v5

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Landroid/telephony/TelephonyManager;->getSubIdForPhoneAccount(Landroid/telecom/PhoneAccount;)I

    move-result v28

    .line 908
    .restart local v28    # "subId":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "ipprefix"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v28

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 910
    .end local v21    # "ipPrefix":Ljava/lang/String;
    .end local v25    # "phoneAccount":Landroid/telecom/PhoneAccount;
    .end local v28    # "subId":I
    :cond_a
    if-eqz v21, :cond_b

    if-eqz p2, :cond_b

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 911
    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 919
    :cond_b
    :goto_9
    const-string/jumbo v5, "conference_call_id"

    invoke-static/range {p13 .. p14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v36

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 922
    const/16 v27, 0x0

    .line 924
    .local v27, "result":Landroid/net/Uri;
    if-eqz p11, :cond_1a

    .line 928
    const-string/jumbo v5, "user"

    .line 927
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Landroid/os/UserManager;

    .line 929
    .local v34, "userManager":Landroid/os/UserManager;
    const/4 v5, 0x1

    move-object/from16 v0, v34

    invoke-virtual {v0, v5}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v35

    .line 930
    .local v35, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-virtual/range {v34 .. v34}, Landroid/os/UserManager;->getUserHandle()I

    move-result v16

    .line 931
    .local v16, "currentUserId":I
    invoke-interface/range {v35 .. v35}, Ljava/util/List;->size()I

    move-result v15

    .line 932
    .local v15, "count":I
    const/16 v20, 0x0

    .end local v27    # "result":Landroid/net/Uri;
    .local v20, "i":I
    :goto_a
    move/from16 v0, v20

    if-ge v0, v15, :cond_1b

    .line 933
    move-object/from16 v0, v35

    move/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Landroid/content/pm/UserInfo;

    .line 934
    .local v32, "user":Landroid/content/pm/UserInfo;
    invoke-virtual/range {v32 .. v32}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v33

    .line 935
    .local v33, "userHandle":Landroid/os/UserHandle;
    move-object/from16 v0, v34

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->isUserRunning(Landroid/os/UserHandle;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 936
    const-string/jumbo v5, "no_outgoing_calls"

    move-object/from16 v0, v34

    move-object/from16 v1, v33

    invoke-virtual {v0, v5, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v5

    if-eqz v5, :cond_19

    .line 932
    :cond_c
    :goto_b
    add-int/lit8 v20, v20, 0x1

    goto :goto_a

    .line 761
    .end local v15    # "count":I
    .end local v16    # "currentUserId":I
    .end local v20    # "i":I
    .end local v32    # "user":Landroid/content/pm/UserInfo;
    .end local v33    # "userHandle":Landroid/os/UserHandle;
    .end local v34    # "userManager":Landroid/os/UserManager;
    .end local v35    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v36    # "values":Landroid/content/ContentValues;
    .restart local v29    # "tm":Landroid/telecom/TelecomManager;
    :catch_0
    move-exception v19

    .local v19, "e":Ljava/lang/UnsupportedOperationException;
    goto/16 :goto_0

    .line 781
    .end local v19    # "e":Ljava/lang/UnsupportedOperationException;
    .end local v29    # "tm":Landroid/telecom/TelecomManager;
    :cond_d
    const/4 v5, 0x4

    move/from16 v0, p3

    if-ne v0, v5, :cond_e

    .line 782
    const/16 v24, 0x4

    goto/16 :goto_1

    .line 783
    :cond_e
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_f

    .line 784
    const/4 v5, 0x3

    move/from16 v0, p3

    if-ne v0, v5, :cond_1

    .line 785
    :cond_f
    const/16 v24, 0x3

    goto/16 :goto_1

    .line 824
    .restart local v36    # "values":Landroid/content/ContentValues;
    :cond_10
    const/4 v5, 0x0

    goto/16 :goto_2

    .line 834
    .restart local v37    # "yellowPageInfo":Lcom/android/internal/telephony/CallerYellowPageInfo;
    :cond_11
    const/4 v5, 0x0

    goto/16 :goto_3

    .line 838
    :cond_12
    const/4 v5, 0x0

    goto/16 :goto_4

    .line 843
    :cond_13
    const-string/jumbo v5, "numberlabelstatus"

    move-object/from16 v0, v37

    iget-object v6, v0, Lcom/android/internal/telephony/CallerYellowPageInfo;->yellowPageState:Ljava/lang/String;

    move-object/from16 v0, v36

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 847
    :cond_14
    move-object/from16 v0, v37

    iget-object v5, v0, Lcom/android/internal/telephony/CallerYellowPageInfo;->yellowPageMount:Ljava/lang/String;

    .line 846
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v22

    .restart local v22    # "markCount":I
    goto/16 :goto_6

    .line 852
    :cond_15
    if-gtz v22, :cond_6

    const/16 v22, 0x0

    goto/16 :goto_7

    .line 876
    .end local v22    # "markCount":I
    .end local v37    # "yellowPageInfo":Lcom/android/internal/telephony/CallerYellowPageInfo;
    :cond_16
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    if-eqz v5, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    move-object/from16 v26, v0

    .line 878
    .local v26, "phoneNumber":Ljava/lang/String;
    :goto_c
    sget-object v5, Landroid/provider/ContactsContract$CommonDataKinds$Callable;->CONTENT_FILTER_URI:Landroid/net/Uri;

    .line 879
    invoke-static/range {v26 .. v26}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 878
    invoke-static {v5, v6}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 880
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const-string/jumbo v7, "_id"

    const/4 v8, 0x0

    aput-object v7, v6, v8

    .line 881
    const-string/jumbo v7, "contact_id =?"

    .line 882
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/telephony/CallerInfo;->contactIdOrZero:J

    move-wide/from16 v38, v0

    invoke-static/range {v38 .. v39}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    const/16 v38, 0x0

    aput-object v9, v8, v38

    .line 883
    const/4 v9, 0x0

    .line 877
    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .restart local v17    # "cursor":Landroid/database/Cursor;
    goto/16 :goto_8

    .line 876
    .end local v17    # "cursor":Landroid/database/Cursor;
    .end local v26    # "phoneNumber":Ljava/lang/String;
    :cond_17
    move-object/from16 v26, p2

    .restart local v26    # "phoneNumber":Ljava/lang/String;
    goto :goto_c

    .line 897
    .end local v26    # "phoneNumber":Ljava/lang/String;
    .restart local v17    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v5

    .line 898
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 897
    throw v5

    .line 911
    .end local v17    # "cursor":Landroid/database/Cursor;
    :cond_18
    const/4 v5, 0x2

    move/from16 v0, p4

    if-ne v0, v5, :cond_b

    .line 912
    const-string/jumbo v5, "ip_prefix"

    move-object/from16 v0, v36

    move-object/from16 v1, v21

    invoke-virtual {v0, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 913
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v30

    .line 914
    .local v30, "tmpNumber":Ljava/lang/String;
    const-string/jumbo v5, "number"

    move-object/from16 v0, v36

    move-object/from16 v1, v30

    invoke-virtual {v0, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    .line 938
    .end local v30    # "tmpNumber":Ljava/lang/String;
    .restart local v15    # "count":I
    .restart local v16    # "currentUserId":I
    .restart local v20    # "i":I
    .restart local v32    # "user":Landroid/content/pm/UserInfo;
    .restart local v33    # "userHandle":Landroid/os/UserHandle;
    .restart local v34    # "userManager":Landroid/os/UserManager;
    .restart local v35    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_19
    invoke-virtual/range {v32 .. v32}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v5

    if-nez v5, :cond_c

    .line 940
    sget-object v5, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v32

    iget v6, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v5, v6}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v5

    .line 939
    move-object/from16 v0, p1

    move-object/from16 v1, v36

    invoke-static {v0, v5, v1}, Landroid/provider/CallLog$Calls;->addEntryAndRemoveExpiredEntries(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v31

    .line 941
    .local v31, "uri":Landroid/net/Uri;
    move-object/from16 v0, v32

    iget v5, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v0, v16

    if-ne v5, v0, :cond_c

    .line 942
    move-object/from16 v27, v31

    .local v27, "result":Landroid/net/Uri;
    goto/16 :goto_b

    .line 947
    .end local v15    # "count":I
    .end local v16    # "currentUserId":I
    .end local v20    # "i":I
    .end local v31    # "uri":Landroid/net/Uri;
    .end local v32    # "user":Landroid/content/pm/UserInfo;
    .end local v33    # "userHandle":Landroid/os/UserHandle;
    .end local v34    # "userManager":Landroid/os/UserManager;
    .end local v35    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .local v27, "result":Landroid/net/Uri;
    :cond_1a
    sget-object v5, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p1

    move-object/from16 v1, v36

    invoke-static {v0, v5, v1}, Landroid/provider/CallLog$Calls;->addEntryAndRemoveExpiredEntries(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v27

    .line 950
    .end local v27    # "result":Landroid/net/Uri;
    :cond_1b
    return-object v27
.end method

.method private static addEntryAndRemoveExpiredEntries(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 980
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 981
    .local v0, "resolver":Landroid/content/ContentResolver;
    invoke-virtual {v0, p1, p2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 982
    .local v1, "result":Landroid/net/Uri;
    const-string/jumbo v2, "_id IN (SELECT _id FROM calls WHERE leui_deleted = 0 AND deleted = 0 ORDER BY date DESC LIMIT -1 OFFSET 1000)"

    .line 984
    const/4 v3, 0x0

    .line 982
    invoke-virtual {v0, p1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 985
    return-object v1
.end method

.method private static getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1021
    const/4 v1, 0x0

    .line 1023
    .local v1, "countryIso":Ljava/lang/String;
    const-string/jumbo v3, "country_detector"

    .line 1022
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/CountryDetector;

    .line 1024
    .local v2, "detector":Landroid/location/CountryDetector;
    if-eqz v2, :cond_0

    .line 1025
    invoke-virtual {v2}, Landroid/location/CountryDetector;->detectCountry()Landroid/location/Country;

    move-result-object v0

    .line 1026
    .local v0, "country":Landroid/location/Country;
    if-eqz v0, :cond_0

    .line 1027
    invoke-virtual {v0}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;

    move-result-object v1

    .line 1030
    .end local v0    # "country":Landroid/location/Country;
    .end local v1    # "countryIso":Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method public static getLastOutgoingCall(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 960
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 961
    .local v0, "resolver":Landroid/content/ContentResolver;
    const/4 v6, 0x0

    .line 964
    .local v6, "c":Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    .line 965
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "number"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 966
    const-string/jumbo v3, "type = 2"

    .line 968
    const-string/jumbo v5, "date DESC LIMIT 1"

    .line 967
    const/4 v4, 0x0

    .line 963
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 969
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 972
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 974
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 972
    :cond_0
    return-object v1

    .line 970
    :cond_1
    :try_start_1
    const-string/jumbo v1, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 974
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 970
    :cond_2
    return-object v1

    .line 973
    .end local v6    # "c":Landroid/database/Cursor;
    :catchall_0
    move-exception v1

    .line 974
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 973
    :cond_3
    throw v1
.end method

.method private static updateDataUsageStatForData(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .locals 5
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "dataId"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 989
    sget-object v1, Landroid/provider/ContactsContract$DataUsageFeedback;->FEEDBACK_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 991
    const-string/jumbo v2, "type"

    .line 992
    const-string/jumbo v3, "call"

    .line 989
    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 994
    .local v0, "feedbackUri":Landroid/net/Uri;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {p0, v0, v1, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 988
    return-void
.end method

.method private static updateNormalizedNumber(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "dataId"    # Ljava/lang/String;
    .param p3, "number"    # Ljava/lang/String;

    .prologue
    .line 1003
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1004
    :cond_0
    return-void

    .line 1006
    :cond_1
    invoke-static {p0}, Landroid/provider/CallLog$Calls;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1007
    .local v0, "countryIso":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1008
    return-void

    .line 1011
    :cond_2
    invoke-static {p0}, Landroid/provider/CallLog$Calls;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 1010
    invoke-static {p3, v3}, Landroid/telephony/PhoneNumberUtils;->formatNumberToE164(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1012
    .local v1, "normalizedNumber":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1013
    return-void

    .line 1015
    :cond_3
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1016
    .local v2, "values":Landroid/content/ContentValues;
    const-string/jumbo v3, "data4"

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1017
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v4, "_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    invoke-virtual {p1, v3, v2, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1002
    return-void
.end method
