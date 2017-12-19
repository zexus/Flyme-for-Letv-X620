.class public Lcom/android/internal/telephony/SSRequestDecisionMaker;
.super Ljava/lang/Object;
.source "SSRequestDecisionMaker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/SSRequestDecisionMaker$SSRequestHandler;
    }
.end annotation


# static fields
.field private static final CLEAR_DELAY_TIMEOUT:I = 0x2710

.field private static final EVENT_SS_CLEAR_TEMP_VOLTE_USER_FLAG:I = 0x3

.field private static final EVENT_SS_RESPONSE:I = 0x2

.field private static final EVENT_SS_SEND:I = 0x1

.field static final LOG_TAG:Ljava/lang/String; = "SSDecisonMaker"

.field private static final PROPERTY_CS_CURRENT_PHONE_ID:Ljava/lang/String; = "gsm.radio.ss.phoneid"

.field private static final SS_REQUEST_GET_CALL_BARRING:I = 0x3

.field private static final SS_REQUEST_GET_CALL_FORWARD:I = 0x1

.field private static final SS_REQUEST_GET_CALL_FORWARD_TIME_SLOT:I = 0xf

.field private static final SS_REQUEST_GET_CALL_WAITING:I = 0x5

.field private static final SS_REQUEST_GET_CLIP:I = 0x9

.field private static final SS_REQUEST_GET_CLIR:I = 0x7

.field private static final SS_REQUEST_GET_COLP:I = 0xd

.field private static final SS_REQUEST_GET_COLR:I = 0xb

.field private static final SS_REQUEST_SET_CALL_BARRING:I = 0x4

.field private static final SS_REQUEST_SET_CALL_FORWARD:I = 0x2

.field private static final SS_REQUEST_SET_CALL_FORWARD_TIME_SLOT:I = 0x10

.field private static final SS_REQUEST_SET_CALL_WAITING:I = 0x6

.field private static final SS_REQUEST_SET_CLIP:I = 0xa

.field private static final SS_REQUEST_SET_CLIR:I = 0x8

.field private static final SS_REQUEST_SET_COLP:I = 0xe

.field private static final SS_REQUEST_SET_COLR:I = 0xc


# instance fields
.field private mCi:Lcom/android/internal/telephony/CommandsInterface;

.field private mContext:Landroid/content/Context;

.field private mImsManager:Lcom/android/ims/ImsManager;

.field private mIsTempVolteUser:Z

.field private mPhone:Lcom/android/internal/telephony/PhoneBase;

.field private mPhoneId:I

.field private mSSHandlerThread:Landroid/os/HandlerThread;

.field private mSSRequestHandler:Lcom/android/internal/telephony/SSRequestDecisionMaker$SSRequestHandler;


# direct methods
.method static synthetic -get0(Lcom/android/internal/telephony/SSRequestDecisionMaker;)Lcom/android/internal/telephony/PhoneBase;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/internal/telephony/SSRequestDecisionMaker;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mIsTempVolteUser:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/internal/telephony/SSRequestDecisionMaker;Ljava/lang/Object;)V
    .locals 0
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->processResponse(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/internal/telephony/SSRequestDecisionMaker;Ljava/lang/Object;)V
    .locals 0
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->processSendRequest(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/Phone;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    iput-object p1, p0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mContext:Landroid/content/Context;

    move-object v1, p2

    .line 132
    check-cast v1, Lcom/android/internal/telephony/PhoneBase;

    iput-object v1, p0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 133
    iget-object v1, p0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iput-object v1, p0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 134
    invoke-interface {p2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mPhoneId:I

    .line 136
    new-instance v1, Landroid/os/HandlerThread;

    const-string/jumbo v2, "SSRequestHandler"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mSSHandlerThread:Landroid/os/HandlerThread;

    .line 137
    iget-object v1, p0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mSSHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 138
    iget-object v1, p0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mSSHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 139
    .local v0, "looper":Landroid/os/Looper;
    new-instance v1, Lcom/android/internal/telephony/SSRequestDecisionMaker$SSRequestHandler;

    invoke-direct {v1, p0, v0}, Lcom/android/internal/telephony/SSRequestDecisionMaker$SSRequestHandler;-><init>(Lcom/android/internal/telephony/SSRequestDecisionMaker;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mSSRequestHandler:Lcom/android/internal/telephony/SSRequestDecisionMaker$SSRequestHandler;

    .line 140
    iget-object v1, p0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mImsManager:Lcom/android/ims/ImsManager;

    .line 130
    return-void
.end method

.method private getActionFromCFAction(I)I
    .locals 1
    .param p1, "action"    # I

    .prologue
    .line 176
    packed-switch p1, :pswitch_data_0

    .line 185
    :pswitch_0
    const/4 v0, -0x1

    return v0

    .line 177
    :pswitch_1
    const/4 v0, 0x0

    return v0

    .line 178
    :pswitch_2
    const/4 v0, 0x1

    return v0

    .line 179
    :pswitch_3
    const/4 v0, 0x4

    return v0

    .line 180
    :pswitch_4
    const/4 v0, 0x3

    return v0

    .line 176
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method private getCBTypeFromFacility(Ljava/lang/String;)I
    .locals 1
    .param p1, "facility"    # Ljava/lang/String;

    .prologue
    .line 204
    const-string/jumbo v0, "AO"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    const/4 v0, 0x2

    return v0

    .line 206
    :cond_0
    const-string/jumbo v0, "OI"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 207
    const/4 v0, 0x3

    return v0

    .line 208
    :cond_1
    const-string/jumbo v0, "OX"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 209
    const/4 v0, 0x4

    return v0

    .line 210
    :cond_2
    const-string/jumbo v0, "AI"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 211
    const/4 v0, 0x1

    return v0

    .line 212
    :cond_3
    const-string/jumbo v0, "IR"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 213
    const/4 v0, 0x5

    return v0

    .line 214
    :cond_4
    const-string/jumbo v0, "AB"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 215
    const/4 v0, 0x7

    return v0

    .line 216
    :cond_5
    const-string/jumbo v0, "AG"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 217
    const/16 v0, 0x8

    return v0

    .line 218
    :cond_6
    const-string/jumbo v0, "AC"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 219
    const/16 v0, 0x9

    return v0

    .line 222
    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method private getCFReasonFromCondition(I)I
    .locals 1
    .param p1, "condition"    # I

    .prologue
    const/4 v0, 0x3

    .line 308
    packed-switch p1, :pswitch_data_0

    .line 319
    return v0

    .line 309
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 310
    :pswitch_1
    const/4 v0, 0x1

    return v0

    .line 311
    :pswitch_2
    const/4 v0, 0x2

    return v0

    .line 312
    :pswitch_3
    return v0

    .line 313
    :pswitch_4
    const/4 v0, 0x4

    return v0

    .line 314
    :pswitch_5
    const/4 v0, 0x5

    return v0

    .line 308
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private getCallForwardInfo(Lcom/android/ims/ImsCallForwardInfo;)Lcom/android/internal/telephony/CallForwardInfo;
    .locals 2
    .param p1, "info"    # Lcom/android/ims/ImsCallForwardInfo;

    .prologue
    .line 277
    new-instance v0, Lcom/android/internal/telephony/CallForwardInfo;

    invoke-direct {v0}, Lcom/android/internal/telephony/CallForwardInfo;-><init>()V

    .line 278
    .local v0, "cfInfo":Lcom/android/internal/telephony/CallForwardInfo;
    iget v1, p1, Lcom/android/ims/ImsCallForwardInfo;->mStatus:I

    iput v1, v0, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    .line 279
    iget v1, p1, Lcom/android/ims/ImsCallForwardInfo;->mCondition:I

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->getCFReasonFromCondition(I)I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    .line 280
    const/4 v1, 0x1

    iput v1, v0, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    .line 281
    iget v1, p1, Lcom/android/ims/ImsCallForwardInfo;->mToA:I

    iput v1, v0, Lcom/android/internal/telephony/CallForwardInfo;->toa:I

    .line 282
    iget-object v1, p1, Lcom/android/ims/ImsCallForwardInfo;->mNumber:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    .line 283
    iget v1, p1, Lcom/android/ims/ImsCallForwardInfo;->mTimeSeconds:I

    iput v1, v0, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    .line 284
    return-object v0
.end method

.method private getCallForwardInfoEx(Lcom/android/ims/ImsCallForwardInfoEx;)Lcom/android/internal/telephony/CallForwardInfoEx;
    .locals 2
    .param p1, "info"    # Lcom/android/ims/ImsCallForwardInfoEx;

    .prologue
    .line 245
    new-instance v0, Lcom/android/internal/telephony/CallForwardInfoEx;

    invoke-direct {v0}, Lcom/android/internal/telephony/CallForwardInfoEx;-><init>()V

    .line 246
    .local v0, "cfInfo":Lcom/android/internal/telephony/CallForwardInfoEx;
    iget v1, p1, Lcom/android/ims/ImsCallForwardInfoEx;->mStatus:I

    iput v1, v0, Lcom/android/internal/telephony/CallForwardInfoEx;->status:I

    .line 247
    iget v1, p1, Lcom/android/ims/ImsCallForwardInfoEx;->mCondition:I

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->getCFReasonFromCondition(I)I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/CallForwardInfoEx;->reason:I

    .line 248
    iget v1, p1, Lcom/android/ims/ImsCallForwardInfoEx;->mServiceClass:I

    iput v1, v0, Lcom/android/internal/telephony/CallForwardInfoEx;->serviceClass:I

    .line 249
    iget v1, p1, Lcom/android/ims/ImsCallForwardInfoEx;->mToA:I

    iput v1, v0, Lcom/android/internal/telephony/CallForwardInfoEx;->toa:I

    .line 250
    iget-object v1, p1, Lcom/android/ims/ImsCallForwardInfoEx;->mNumber:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/internal/telephony/CallForwardInfoEx;->number:Ljava/lang/String;

    .line 251
    iget v1, p1, Lcom/android/ims/ImsCallForwardInfoEx;->mTimeSeconds:I

    iput v1, v0, Lcom/android/internal/telephony/CallForwardInfoEx;->timeSeconds:I

    .line 252
    iget-object v1, p1, Lcom/android/ims/ImsCallForwardInfoEx;->mTimeSlot:[J

    iput-object v1, v0, Lcom/android/internal/telephony/CallForwardInfoEx;->timeSlot:[J

    .line 253
    return-object v0
.end method

.method private getCommandException(Lcom/android/ims/ImsException;)Lcom/android/internal/telephony/CommandException;
    .locals 2
    .param p1, "imsException"    # Lcom/android/ims/ImsException;

    .prologue
    .line 1181
    invoke-virtual {p1}, Lcom/android/ims/ImsException;->getCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1189
    const-string/jumbo v0, "SSDecisonMaker"

    const-string/jumbo v1, "getCommandException GENERIC_FAILURE"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1190
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    return-object v0

    .line 1183
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->isEnableXcapHttpResponse409()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1184
    const-string/jumbo v0, "SSDecisonMaker"

    const-string/jumbo v1, "getCommandException UT_XCAP_409_CONFLICT"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1185
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->UT_XCAP_409_CONFLICT:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    return-object v0

    .line 1192
    :cond_0
    const-string/jumbo v0, "SSDecisonMaker"

    const-string/jumbo v1, "getCommandException GENERIC_FAILURE"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1193
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    return-object v0

    .line 1181
    :pswitch_data_0
    .packed-switch 0x341
        :pswitch_0
    .end packed-switch
.end method

.method private getConditionFromCFReason(I)I
    .locals 1
    .param p1, "reason"    # I

    .prologue
    .line 189
    packed-switch p1, :pswitch_data_0

    .line 200
    const/4 v0, -0x1

    return v0

    .line 190
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 191
    :pswitch_1
    const/4 v0, 0x1

    return v0

    .line 192
    :pswitch_2
    const/4 v0, 0x2

    return v0

    .line 193
    :pswitch_3
    const/4 v0, 0x3

    return v0

    .line 194
    :pswitch_4
    const/4 v0, 0x4

    return v0

    .line 195
    :pswitch_5
    const/4 v0, 0x5

    return v0

    .line 189
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private getPhoneId()I
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mPhoneId:I

    .line 154
    iget v0, p0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mPhoneId:I

    return v0
.end method

.method private getUtInterface()Lcom/android/ims/ImsUtInterface;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 158
    iget-object v1, p0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mImsManager:Lcom/android/ims/ImsManager;

    if-nez v1, :cond_0

    .line 159
    new-instance v1, Lcom/android/ims/ImsException;

    const-string/jumbo v2, "no ims manager"

    invoke-direct {v1, v2, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 162
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mImsManager:Lcom/android/ims/ImsManager;

    invoke-virtual {v1, v3}, Lcom/android/ims/ImsManager;->getSupplementaryServiceConfiguration(I)Lcom/android/ims/ImsUtInterface;

    move-result-object v0

    .line 163
    .local v0, "ut":Lcom/android/ims/ImsUtInterface;
    return-object v0
.end method

.method private handleCbQueryResult([Lcom/android/ims/ImsSsInfo;)[I
    .locals 3
    .param p1, "infos"    # [Lcom/android/ims/ImsSsInfo;

    .prologue
    const/4 v2, 0x0

    .line 226
    const/4 v1, 0x1

    new-array v0, v1, [I

    .line 227
    .local v0, "cbInfos":[I
    aget-object v1, p1, v2

    iget v1, v1, Lcom/android/ims/ImsSsInfo;->mStatus:I

    aput v1, v0, v2

    .line 229
    return-object v0
.end method

.method private handleCwQueryResult([Lcom/android/ims/ImsSsInfo;)[I
    .locals 4
    .param p1, "infos"    # [Lcom/android/ims/ImsSsInfo;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 233
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 234
    .local v0, "cwInfos":[I
    aput v2, v0, v2

    .line 236
    aget-object v1, p1, v2

    iget v1, v1, Lcom/android/ims/ImsSsInfo;->mStatus:I

    if-ne v1, v3, :cond_0

    .line 237
    aput v3, v0, v2

    .line 238
    aput v3, v0, v3

    .line 241
    :cond_0
    return-object v0
.end method

.method private imsCFInfoExToCFInfoEx([Lcom/android/ims/ImsCallForwardInfoEx;)[Lcom/android/internal/telephony/CallForwardInfoEx;
    .locals 6
    .param p1, "infos"    # [Lcom/android/ims/ImsCallForwardInfoEx;

    .prologue
    const/4 v5, 0x0

    .line 257
    const/4 v0, 0x0

    .line 259
    .local v0, "cfInfos":[Lcom/android/internal/telephony/CallForwardInfoEx;
    if-eqz p1, :cond_0

    array-length v3, p1

    if-eqz v3, :cond_0

    .line 260
    array-length v3, p1

    new-array v0, v3, [Lcom/android/internal/telephony/CallForwardInfoEx;

    .line 263
    .end local v0    # "cfInfos":[Lcom/android/internal/telephony/CallForwardInfoEx;
    :cond_0
    if-eqz p1, :cond_1

    array-length v3, p1

    if-nez v3, :cond_2

    .line 264
    :cond_1
    const-string/jumbo v3, "SSDecisonMaker"

    const-string/jumbo v4, "No CFInfoEx exist."

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    return-object v5

    .line 267
    :cond_2
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v2, p1

    .local v2, "s":I
    :goto_0
    if-ge v1, v2, :cond_3

    .line 268
    aget-object v3, p1, v1

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->getCallForwardInfoEx(Lcom/android/ims/ImsCallForwardInfoEx;)Lcom/android/internal/telephony/CallForwardInfoEx;

    move-result-object v3

    aput-object v3, v0, v1

    .line 267
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 272
    :cond_3
    const-string/jumbo v3, "SSDecisonMaker"

    const-string/jumbo v4, "imsCFInfoExToCFInfoEx finish."

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    return-object v0
.end method

.method private imsCFInfoToCFInfo([Lcom/android/ims/ImsCallForwardInfo;)[Lcom/android/internal/telephony/CallForwardInfo;
    .locals 6
    .param p1, "infos"    # [Lcom/android/ims/ImsCallForwardInfo;

    .prologue
    const/4 v5, 0x0

    .line 288
    const/4 v0, 0x0

    .line 290
    .local v0, "cfInfos":[Lcom/android/internal/telephony/CallForwardInfo;
    if-eqz p1, :cond_0

    array-length v3, p1

    if-eqz v3, :cond_0

    .line 291
    array-length v3, p1

    new-array v0, v3, [Lcom/android/internal/telephony/CallForwardInfo;

    .line 294
    .end local v0    # "cfInfos":[Lcom/android/internal/telephony/CallForwardInfo;
    :cond_0
    if-eqz p1, :cond_1

    array-length v3, p1

    if-nez v3, :cond_2

    .line 295
    :cond_1
    const-string/jumbo v3, "SSDecisonMaker"

    const-string/jumbo v4, "No CFInfo exist."

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    return-object v5

    .line 298
    :cond_2
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v2, p1

    .local v2, "s":I
    :goto_0
    if-ge v1, v2, :cond_3

    .line 299
    aget-object v3, p1, v1

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->getCallForwardInfo(Lcom/android/ims/ImsCallForwardInfo;)Lcom/android/internal/telephony/CallForwardInfo;

    move-result-object v3

    aput-object v3, v0, v1

    .line 298
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 303
    :cond_3
    const-string/jumbo v3, "SSDecisonMaker"

    const-string/jumbo v4, "imsCFInfoToCFInfo finish."

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    return-object v0
.end method

.method private processResponse(Ljava/lang/Object;)V
    .locals 38
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 642
    const/4 v10, 0x0

    .local v10, "resp":Landroid/os/Message;
    move-object/from16 v17, p1

    .line 643
    check-cast v17, Landroid/os/AsyncResult;

    .line 644
    .local v17, "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v19, v0

    .line 645
    .local v19, "arResult":Ljava/lang/Object;
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v18, v0

    .line 646
    .local v18, "arException":Ljava/lang/Throwable;
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v34, v0

    check-cast v34, Ljava/util/ArrayList;

    .line 647
    .local v34, "ssParmList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const/4 v4, 0x0

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/lang/Integer;

    .line 648
    .local v31, "request":Ljava/lang/Integer;
    const-string/jumbo v4, "SSDecisonMaker"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "processResponse, request = "

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v31

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    invoke-virtual/range {v31 .. v31}, Ljava/lang/Integer;->intValue()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 1167
    .end local v10    # "resp":Landroid/os/Message;
    .end local v19    # "arResult":Ljava/lang/Object;
    :cond_0
    :goto_0
    if-eqz v18, :cond_1

    move-object/from16 v0, v18

    instance-of v4, v0, Lcom/android/ims/ImsException;

    if-eqz v4, :cond_1

    .line 1168
    const-string/jumbo v11, "SSDecisonMaker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "processResponse, imsException.getCode = "

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v4, v18

    .line 1169
    check-cast v4, Lcom/android/ims/ImsException;

    invoke-virtual {v4}, Lcom/android/ims/ImsException;->getCode()I

    move-result v4

    .line 1168
    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v11, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1171
    check-cast v18, Lcom/android/ims/ImsException;

    .end local v18    # "arException":Ljava/lang/Throwable;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->getCommandException(Lcom/android/ims/ImsException;)Lcom/android/internal/telephony/CommandException;

    move-result-object v18

    .line 1174
    .restart local v18    # "arException":Ljava/lang/Throwable;
    :cond_1
    if-eqz v10, :cond_2

    .line 1175
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-static {v10, v0, v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1176
    invoke-virtual {v10}, Landroid/os/Message;->sendToTarget()V

    .line 641
    :cond_2
    return-void

    .line 652
    .restart local v10    # "resp":Landroid/os/Message;
    .restart local v19    # "arResult":Ljava/lang/Object;
    :pswitch_0
    const/4 v4, 0x1

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 653
    .local v6, "cfReason":I
    const/4 v4, 0x2

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 654
    .local v7, "serviceClass":I
    const/4 v4, 0x3

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 655
    .local v8, "number":Ljava/lang/String;
    const/4 v4, 0x4

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "resp":Landroid/os/Message;
    check-cast v10, Landroid/os/Message;

    .line 657
    .local v10, "resp":Landroid/os/Message;
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_4

    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v4, v4, Lcom/android/ims/ImsException;

    if-eqz v4, :cond_4

    .line 658
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v25, v0

    check-cast v25, Lcom/android/ims/ImsException;

    .line 659
    .local v25, "imsException":Lcom/android/ims/ImsException;
    invoke-virtual/range {v25 .. v25}, Lcom/android/ims/ImsException;->getCode()I

    move-result v4

    const/16 v11, 0x33e

    if-ne v4, v11, :cond_3

    .line 660
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4, v6, v7, v8, v10}, Lcom/android/internal/telephony/CommandsInterface;->queryCallForwardStatus(IILjava/lang/String;Landroid/os/Message;)V

    .line 661
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const/4 v11, 0x2

    invoke-virtual {v4, v11}, Lcom/android/internal/telephony/PhoneBase;->setCsFallbackStatus(I)V

    .line 662
    return-void

    .line 663
    :cond_3
    invoke-virtual/range {v25 .. v25}, Lcom/android/ims/ImsException;->getCode()I

    move-result v4

    const/16 v11, 0x33f

    if-ne v4, v11, :cond_4

    .line 664
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4, v6, v7, v8, v10}, Lcom/android/internal/telephony/CommandsInterface;->queryCallForwardStatus(IILjava/lang/String;Landroid/os/Message;)V

    .line 665
    return-void

    .line 669
    .end local v25    # "imsException":Lcom/android/ims/ImsException;
    :cond_4
    if-eqz v19, :cond_0

    .line 670
    const-string/jumbo v4, "SSDecisonMaker"

    const-string/jumbo v11, "SS_REQUEST_GET_CALL_FORWARD cfinfo check."

    invoke-static {v4, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    move-object/from16 v0, v19

    instance-of v4, v0, [Lcom/android/ims/ImsCallForwardInfo;

    if-eqz v4, :cond_0

    .line 672
    check-cast v19, [Lcom/android/ims/ImsCallForwardInfo;

    .end local v19    # "arResult":Ljava/lang/Object;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->imsCFInfoToCFInfo([Lcom/android/ims/ImsCallForwardInfo;)[Lcom/android/internal/telephony/CallForwardInfo;

    move-result-object v19

    .restart local v19    # "arResult":Ljava/lang/Object;
    goto/16 :goto_0

    .line 678
    .end local v6    # "cfReason":I
    .end local v7    # "serviceClass":I
    .end local v8    # "number":Ljava/lang/String;
    .local v10, "resp":Landroid/os/Message;
    :pswitch_1
    const/4 v4, 0x1

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 679
    .local v5, "action":I
    const/4 v4, 0x2

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 680
    .restart local v6    # "cfReason":I
    const/4 v4, 0x3

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 681
    .restart local v7    # "serviceClass":I
    const/4 v4, 0x4

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 682
    .restart local v8    # "number":Ljava/lang/String;
    const/4 v4, 0x5

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 683
    .local v9, "timeSeconds":I
    const/4 v4, 0x6

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "resp":Landroid/os/Message;
    check-cast v10, Landroid/os/Message;

    .line 685
    .local v10, "resp":Landroid/os/Message;
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_6

    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v4, v4, Lcom/android/ims/ImsException;

    if-eqz v4, :cond_6

    .line 686
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v25, v0

    check-cast v25, Lcom/android/ims/ImsException;

    .line 687
    .restart local v25    # "imsException":Lcom/android/ims/ImsException;
    invoke-virtual/range {v25 .. v25}, Lcom/android/ims/ImsException;->getCode()I

    move-result v4

    const/16 v11, 0x33e

    if-ne v4, v11, :cond_5

    .line 688
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface/range {v4 .. v10}, Lcom/android/internal/telephony/CommandsInterface;->setCallForward(IIILjava/lang/String;ILandroid/os/Message;)V

    .line 690
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const/4 v11, 0x2

    invoke-virtual {v4, v11}, Lcom/android/internal/telephony/PhoneBase;->setCsFallbackStatus(I)V

    .line 691
    return-void

    .line 692
    :cond_5
    invoke-virtual/range {v25 .. v25}, Lcom/android/ims/ImsException;->getCode()I

    move-result v4

    const/16 v11, 0x33f

    if-ne v4, v11, :cond_6

    .line 693
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface/range {v4 .. v10}, Lcom/android/internal/telephony/CommandsInterface;->setCallForward(IIILjava/lang/String;ILandroid/os/Message;)V

    .line 695
    return-void

    .line 699
    .end local v25    # "imsException":Lcom/android/ims/ImsException;
    :cond_6
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_0

    .line 701
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v4

    const/4 v11, 0x1

    if-ne v4, v11, :cond_8

    .line 702
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    instance-of v4, v4, Lcom/android/internal/telephony/gsm/GSMPhone;

    if-eqz v4, :cond_8

    .line 703
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v4, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->isSupportSaveCFNumber()Z

    move-result v4

    .line 702
    if-eqz v4, :cond_8

    .line 704
    const/4 v4, 0x1

    if-eq v5, v4, :cond_7

    .line 705
    const/4 v4, 0x3

    if-ne v5, v4, :cond_d

    .line 707
    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v4, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v4, v6, v8}, Lcom/android/internal/telephony/gsm/GSMPhone;->applyCFSharePreference(ILjava/lang/String;)Z

    move-result v32

    .line 708
    .local v32, "ret":Z
    if-nez v32, :cond_8

    .line 709
    const-string/jumbo v4, "SSDecisonMaker"

    const-string/jumbo v11, "applySharePreference false."

    invoke-static {v4, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    .end local v32    # "ret":Z
    :cond_8
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v4, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->isOp05IccCard()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 719
    if-nez v6, :cond_b

    .line 720
    const/16 v20, 0x0

    .line 721
    .local v20, "cfInfo":[Lcom/android/internal/telephony/CallForwardInfo;
    if-nez v19, :cond_e

    .line 722
    const-string/jumbo v4, "SSDecisonMaker"

    const-string/jumbo v11, "arResult is null."

    invoke-static {v4, v11}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    .end local v20    # "cfInfo":[Lcom/android/internal/telephony/CallForwardInfo;
    :cond_9
    :goto_2
    if-eqz v20, :cond_a

    move-object/from16 v0, v20

    array-length v4, v0

    if-nez v4, :cond_10

    .line 732
    :cond_a
    const-string/jumbo v4, "SSDecisonMaker"

    const-string/jumbo v11, "cfInfo is null or length is 0."

    invoke-static {v4, v11}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    :cond_b
    :goto_3
    if-nez v6, :cond_0

    .line 753
    const/4 v4, 0x1

    if-eq v5, v4, :cond_c

    const/4 v4, 0x3

    if-ne v5, v4, :cond_13

    .line 754
    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const-string/jumbo v11, "persist.radio.ut.cfu.mode"

    .line 755
    const-string/jumbo v15, "enabled_ut_cfu_mode_on"

    .line 754
    invoke-virtual {v4, v11, v15}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 711
    :cond_d
    const/4 v4, 0x4

    if-ne v5, v4, :cond_8

    .line 712
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v4, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v4, v6}, Lcom/android/internal/telephony/gsm/GSMPhone;->clearCFSharePreference(I)V

    goto :goto_1

    .line 724
    .restart local v20    # "cfInfo":[Lcom/android/internal/telephony/CallForwardInfo;
    :cond_e
    move-object/from16 v0, v19

    instance-of v4, v0, [Lcom/android/ims/ImsCallForwardInfo;

    if-eqz v4, :cond_f

    .line 725
    check-cast v19, [Lcom/android/ims/ImsCallForwardInfo;

    .end local v19    # "arResult":Ljava/lang/Object;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->imsCFInfoToCFInfo([Lcom/android/ims/ImsCallForwardInfo;)[Lcom/android/internal/telephony/CallForwardInfo;

    move-result-object v20

    .line 726
    .local v20, "cfInfo":[Lcom/android/internal/telephony/CallForwardInfo;
    move-object/from16 v19, v20

    .restart local v19    # "arResult":Ljava/lang/Object;
    goto :goto_2

    .line 727
    .local v20, "cfInfo":[Lcom/android/internal/telephony/CallForwardInfo;
    :cond_f
    move-object/from16 v0, v19

    instance-of v4, v0, [Lcom/android/internal/telephony/CallForwardInfo;

    if-eqz v4, :cond_9

    move-object/from16 v20, v19

    .line 728
    check-cast v20, [Lcom/android/internal/telephony/CallForwardInfo;

    .local v20, "cfInfo":[Lcom/android/internal/telephony/CallForwardInfo;
    goto :goto_2

    .line 734
    .end local v20    # "cfInfo":[Lcom/android/internal/telephony/CallForwardInfo;
    :cond_10
    const/16 v24, 0x0

    .local v24, "i":I
    :goto_4
    move-object/from16 v0, v20

    array-length v4, v0

    move/from16 v0, v24

    if-ge v0, v4, :cond_b

    .line 736
    aget-object v4, v20, v24

    iget v4, v4, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    .line 735
    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_12

    .line 737
    aget-object v4, v20, v24

    iget v4, v4, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    if-nez v4, :cond_11

    .line 738
    const-string/jumbo v4, "SSDecisonMaker"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Set CF_DISABLE, serviceClass: "

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 739
    aget-object v15, v20, v24

    iget v15, v15, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    .line 738
    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    const/4 v5, 0x0

    goto :goto_3

    .line 742
    :cond_11
    const-string/jumbo v4, "SSDecisonMaker"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Set CF_ENABLE, serviceClass: "

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 743
    aget-object v15, v20, v24

    iget v15, v15, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    .line 742
    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    const/4 v5, 0x1

    goto/16 :goto_3

    .line 734
    :cond_12
    add-int/lit8 v24, v24, 0x1

    goto :goto_4

    .line 757
    .end local v24    # "i":I
    :cond_13
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const-string/jumbo v11, "persist.radio.ut.cfu.mode"

    .line 758
    const-string/jumbo v15, "enabled_ut_cfu_mode_off"

    .line 757
    invoke-virtual {v4, v11, v15}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 765
    .end local v5    # "action":I
    .end local v6    # "cfReason":I
    .end local v7    # "serviceClass":I
    .end local v8    # "number":Ljava/lang/String;
    .end local v9    # "timeSeconds":I
    .local v10, "resp":Landroid/os/Message;
    :pswitch_2
    const/4 v4, 0x3

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "resp":Landroid/os/Message;
    check-cast v10, Landroid/os/Message;

    .line 767
    .local v10, "resp":Landroid/os/Message;
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_14

    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v4, v4, Lcom/android/ims/ImsException;

    if-eqz v4, :cond_14

    .line 768
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v25, v0

    check-cast v25, Lcom/android/ims/ImsException;

    .line 769
    .restart local v25    # "imsException":Lcom/android/ims/ImsException;
    invoke-virtual/range {v25 .. v25}, Lcom/android/ims/ImsException;->getCode()I

    move-result v4

    const/16 v11, 0x33e

    if-ne v4, v11, :cond_15

    .line 770
    new-instance v18, Lcom/android/internal/telephony/CommandException;

    .line 771
    .end local v18    # "arException":Ljava/lang/Throwable;
    sget-object v4, Lcom/android/internal/telephony/CommandException$Error;->SPECAIL_UT_COMMAND_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    .line 770
    move-object/from16 v0, v18

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 772
    .restart local v18    # "arException":Ljava/lang/Throwable;
    const/16 v19, 0x0

    .line 773
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const/4 v11, 0x2

    invoke-virtual {v4, v11}, Lcom/android/internal/telephony/PhoneBase;->setCsFallbackStatus(I)V

    .line 785
    .end local v19    # "arResult":Ljava/lang/Object;
    .end local v25    # "imsException":Lcom/android/ims/ImsException;
    :cond_14
    if-eqz v19, :cond_0

    .line 786
    const-string/jumbo v4, "SSDecisonMaker"

    const-string/jumbo v11, "SS_REQUEST_GET_CALL_FORWARD_TIME_SLOT cfinfoEx check."

    invoke-static {v4, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    move-object/from16 v0, v19

    instance-of v4, v0, [Lcom/android/ims/ImsCallForwardInfoEx;

    if-eqz v4, :cond_0

    .line 789
    check-cast v19, [Lcom/android/ims/ImsCallForwardInfoEx;

    .line 788
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->imsCFInfoExToCFInfoEx([Lcom/android/ims/ImsCallForwardInfoEx;)[Lcom/android/internal/telephony/CallForwardInfoEx;

    move-result-object v19

    .restart local v19    # "arResult":Ljava/lang/Object;
    goto/16 :goto_0

    .line 774
    .restart local v25    # "imsException":Lcom/android/ims/ImsException;
    :cond_15
    invoke-virtual/range {v25 .. v25}, Lcom/android/ims/ImsException;->getCode()I

    move-result v4

    const/16 v11, 0x33f

    if-ne v4, v11, :cond_14

    .line 775
    if-eqz v10, :cond_16

    .line 777
    new-instance v4, Lcom/android/internal/telephony/CommandException;

    .line 778
    sget-object v11, Lcom/android/internal/telephony/CommandException$Error;->SPECAIL_UT_COMMAND_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    .line 777
    invoke-direct {v4, v11}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 776
    const/4 v11, 0x0

    invoke-static {v10, v11, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 779
    invoke-virtual {v10}, Landroid/os/Message;->sendToTarget()V

    .line 781
    :cond_16
    return-void

    .line 795
    .end local v25    # "imsException":Lcom/android/ims/ImsException;
    .local v10, "resp":Landroid/os/Message;
    :pswitch_3
    const/4 v4, 0x7

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "resp":Landroid/os/Message;
    check-cast v10, Landroid/os/Message;

    .line 797
    .local v10, "resp":Landroid/os/Message;
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_0

    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v4, v4, Lcom/android/ims/ImsException;

    if-eqz v4, :cond_0

    .line 798
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v25, v0

    check-cast v25, Lcom/android/ims/ImsException;

    .line 799
    .restart local v25    # "imsException":Lcom/android/ims/ImsException;
    invoke-virtual/range {v25 .. v25}, Lcom/android/ims/ImsException;->getCode()I

    move-result v4

    const/16 v11, 0x33e

    if-ne v4, v11, :cond_17

    .line 800
    new-instance v18, Lcom/android/internal/telephony/CommandException;

    .line 801
    .end local v18    # "arException":Ljava/lang/Throwable;
    sget-object v4, Lcom/android/internal/telephony/CommandException$Error;->SPECAIL_UT_COMMAND_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    .line 800
    move-object/from16 v0, v18

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 802
    .restart local v18    # "arException":Ljava/lang/Throwable;
    const/16 v19, 0x0

    .line 803
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const/4 v11, 0x2

    invoke-virtual {v4, v11}, Lcom/android/internal/telephony/PhoneBase;->setCsFallbackStatus(I)V

    goto/16 :goto_0

    .line 804
    :cond_17
    invoke-virtual/range {v25 .. v25}, Lcom/android/ims/ImsException;->getCode()I

    move-result v4

    const/16 v11, 0x33f

    if-ne v4, v11, :cond_0

    .line 805
    if-eqz v10, :cond_18

    .line 807
    new-instance v4, Lcom/android/internal/telephony/CommandException;

    .line 808
    sget-object v11, Lcom/android/internal/telephony/CommandException$Error;->SPECAIL_UT_COMMAND_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    .line 807
    invoke-direct {v4, v11}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 806
    const/4 v11, 0x0

    invoke-static {v10, v11, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 809
    invoke-virtual {v10}, Landroid/os/Message;->sendToTarget()V

    .line 811
    :cond_18
    return-void

    .line 817
    .end local v25    # "imsException":Lcom/android/ims/ImsException;
    .local v10, "resp":Landroid/os/Message;
    :pswitch_4
    const/4 v4, 0x1

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 818
    .local v12, "facility":Ljava/lang/String;
    const/4 v4, 0x2

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 819
    .local v14, "password":Ljava/lang/String;
    const/4 v4, 0x3

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 820
    .restart local v7    # "serviceClass":I
    const/4 v4, 0x4

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "resp":Landroid/os/Message;
    check-cast v10, Landroid/os/Message;

    .line 822
    .local v10, "resp":Landroid/os/Message;
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_1b

    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v4, v4, Lcom/android/ims/ImsException;

    if-eqz v4, :cond_1b

    .line 823
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v25, v0

    check-cast v25, Lcom/android/ims/ImsException;

    .line 824
    .restart local v25    # "imsException":Lcom/android/ims/ImsException;
    invoke-virtual/range {v25 .. v25}, Lcom/android/ims/ImsException;->getCode()I

    move-result v4

    const/16 v11, 0x33e

    if-ne v4, v11, :cond_19

    .line 825
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4, v12, v14, v7, v10}, Lcom/android/internal/telephony/CommandsInterface;->queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V

    .line 827
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const/4 v11, 0x2

    invoke-virtual {v4, v11}, Lcom/android/internal/telephony/PhoneBase;->setCsFallbackStatus(I)V

    .line 828
    return-void

    .line 829
    :cond_19
    invoke-virtual/range {v25 .. v25}, Lcom/android/ims/ImsException;->getCode()I

    move-result v4

    const/16 v11, 0x33f

    if-ne v4, v11, :cond_1a

    .line 830
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4, v12, v14, v7, v10}, Lcom/android/internal/telephony/CommandsInterface;->queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V

    .line 831
    return-void

    .line 832
    :cond_1a
    invoke-virtual/range {v25 .. v25}, Lcom/android/ims/ImsException;->getCode()I

    move-result v4

    .line 833
    const/16 v11, 0x340

    .line 832
    if-ne v4, v11, :cond_1b

    .line 835
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v4, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->isOp05IccCard()Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 836
    const-string/jumbo v4, "SSDecisonMaker"

    const-string/jumbo v11, "processResponse CODE_UT_XCAP_404_NOT_FOUND"

    invoke-static {v4, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    new-instance v18, Lcom/android/internal/telephony/CommandException;

    .end local v18    # "arException":Ljava/lang/Throwable;
    sget-object v4, Lcom/android/internal/telephony/CommandException$Error;->UT_XCAP_404_NOT_FOUND:Lcom/android/internal/telephony/CommandException$Error;

    move-object/from16 v0, v18

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 843
    .end local v25    # "imsException":Lcom/android/ims/ImsException;
    .restart local v18    # "arException":Ljava/lang/Throwable;
    :cond_1b
    if-eqz v19, :cond_1c

    .line 844
    const-string/jumbo v4, "SSDecisonMaker"

    const-string/jumbo v11, "SS_REQUEST_GET_CALL_BARRING ssinfo check."

    invoke-static {v4, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    move-object/from16 v0, v19

    instance-of v4, v0, [Lcom/android/ims/ImsSsInfo;

    if-eqz v4, :cond_1c

    .line 846
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [Lcom/android/ims/ImsSsInfo;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->handleCbQueryResult([Lcom/android/ims/ImsSsInfo;)[I

    move-result-object v19

    .line 850
    :cond_1c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v4, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->isOp01IccCard()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 851
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v4, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v4, v12}, Lcom/android/internal/telephony/gsm/GSMPhone;->isOutgoingCallBarring(Ljava/lang/String;)Z

    move-result v4

    .line 850
    if-eqz v4, :cond_0

    .line 852
    new-instance v18, Lcom/android/internal/telephony/CommandException;

    .line 853
    .end local v18    # "arException":Ljava/lang/Throwable;
    sget-object v4, Lcom/android/internal/telephony/CommandException$Error;->SPECAIL_UT_COMMAND_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    .line 852
    move-object/from16 v0, v18

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 854
    .restart local v18    # "arException":Ljava/lang/Throwable;
    const/16 v19, 0x0

    .line 855
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mIsTempVolteUser:Z

    .line 857
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mSSRequestHandler:Lcom/android/internal/telephony/SSRequestDecisionMaker$SSRequestHandler;

    const/4 v11, 0x3

    invoke-virtual {v4, v11}, Lcom/android/internal/telephony/SSRequestDecisionMaker$SSRequestHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v28

    .line 858
    .local v28, "msg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mSSRequestHandler:Lcom/android/internal/telephony/SSRequestDecisionMaker$SSRequestHandler;

    const-wide/16 v36, 0x2710

    move-object/from16 v0, v28

    move-wide/from16 v1, v36

    invoke-virtual {v4, v0, v1, v2}, Lcom/android/internal/telephony/SSRequestDecisionMaker$SSRequestHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 863
    .end local v7    # "serviceClass":I
    .end local v12    # "facility":Ljava/lang/String;
    .end local v14    # "password":Ljava/lang/String;
    .end local v28    # "msg":Landroid/os/Message;
    .local v10, "resp":Landroid/os/Message;
    :pswitch_5
    const/4 v4, 0x1

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 864
    .restart local v12    # "facility":Ljava/lang/String;
    const/4 v4, 0x2

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    .line 865
    .local v13, "lockState":Z
    const/4 v4, 0x3

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 866
    .restart local v14    # "password":Ljava/lang/String;
    const/4 v4, 0x4

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 867
    .restart local v7    # "serviceClass":I
    const/4 v4, 0x5

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "resp":Landroid/os/Message;
    check-cast v10, Landroid/os/Message;

    .line 869
    .local v10, "resp":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v4, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->isOp01IccCard()Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 870
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v4, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v4, v12}, Lcom/android/internal/telephony/gsm/GSMPhone;->isOutgoingCallBarring(Ljava/lang/String;)Z

    move-result v4

    .line 869
    if-eqz v4, :cond_1d

    .line 871
    new-instance v18, Lcom/android/internal/telephony/CommandException;

    .line 872
    .end local v18    # "arException":Ljava/lang/Throwable;
    sget-object v4, Lcom/android/internal/telephony/CommandException$Error;->SPECAIL_UT_COMMAND_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    .line 871
    move-object/from16 v0, v18

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 873
    .restart local v18    # "arException":Ljava/lang/Throwable;
    const/16 v19, 0x0

    .line 876
    .end local v19    # "arResult":Ljava/lang/Object;
    :cond_1d
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_0

    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v4, v4, Lcom/android/ims/ImsException;

    if-eqz v4, :cond_0

    .line 877
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v25, v0

    check-cast v25, Lcom/android/ims/ImsException;

    .line 878
    .restart local v25    # "imsException":Lcom/android/ims/ImsException;
    invoke-virtual/range {v25 .. v25}, Lcom/android/ims/ImsException;->getCode()I

    move-result v4

    const/16 v11, 0x33e

    if-ne v4, v11, :cond_1e

    .line 879
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move v15, v7

    move-object/from16 v16, v10

    invoke-interface/range {v11 .. v16}, Lcom/android/internal/telephony/CommandsInterface;->setFacilityLock(Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;)V

    .line 881
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const/4 v11, 0x2

    invoke-virtual {v4, v11}, Lcom/android/internal/telephony/PhoneBase;->setCsFallbackStatus(I)V

    .line 882
    return-void

    .line 883
    :cond_1e
    invoke-virtual/range {v25 .. v25}, Lcom/android/ims/ImsException;->getCode()I

    move-result v4

    const/16 v11, 0x33f

    if-ne v4, v11, :cond_1f

    .line 884
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move v15, v7

    move-object/from16 v16, v10

    invoke-interface/range {v11 .. v16}, Lcom/android/internal/telephony/CommandsInterface;->setFacilityLock(Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;)V

    .line 885
    return-void

    .line 886
    :cond_1f
    invoke-virtual/range {v25 .. v25}, Lcom/android/ims/ImsException;->getCode()I

    move-result v4

    .line 887
    const/16 v11, 0x340

    .line 886
    if-ne v4, v11, :cond_0

    .line 889
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v4, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->isOp05IccCard()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 890
    const-string/jumbo v4, "SSDecisonMaker"

    const-string/jumbo v11, "processResponse CODE_UT_XCAP_404_NOT_FOUND"

    invoke-static {v4, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    new-instance v18, Lcom/android/internal/telephony/CommandException;

    .end local v18    # "arException":Ljava/lang/Throwable;
    sget-object v4, Lcom/android/internal/telephony/CommandException$Error;->UT_XCAP_404_NOT_FOUND:Lcom/android/internal/telephony/CommandException$Error;

    move-object/from16 v0, v18

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 891
    .restart local v18    # "arException":Ljava/lang/Throwable;
    goto/16 :goto_0

    .line 899
    .end local v7    # "serviceClass":I
    .end local v12    # "facility":Ljava/lang/String;
    .end local v13    # "lockState":Z
    .end local v14    # "password":Ljava/lang/String;
    .end local v25    # "imsException":Lcom/android/ims/ImsException;
    .local v10, "resp":Landroid/os/Message;
    .restart local v19    # "arResult":Ljava/lang/Object;
    :pswitch_6
    const/16 v29, 0x0

    .line 900
    .local v29, "queryVolteUser":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    instance-of v4, v4, Lcom/android/internal/telephony/gsm/GSMPhone;

    if-eqz v4, :cond_20

    .line 901
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v23, v0

    check-cast v23, Lcom/android/internal/telephony/gsm/GSMPhone;

    .line 902
    .local v23, "gsmPhone":Lcom/android/internal/telephony/gsm/GSMPhone;
    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/gsm/GSMPhone;->getTbcwMode()I

    move-result v4

    if-nez v4, :cond_20

    .line 903
    const/16 v29, 0x1

    .line 907
    .end local v23    # "gsmPhone":Lcom/android/internal/telephony/gsm/GSMPhone;
    :cond_20
    if-eqz v29, :cond_2a

    .line 908
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v23, v0

    check-cast v23, Lcom/android/internal/telephony/gsm/GSMPhone;

    .line 909
    .restart local v23    # "gsmPhone":Lcom/android/internal/telephony/gsm/GSMPhone;
    const/4 v4, 0x0

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/lang/Integer;

    .line 911
    .local v30, "reqCode":Ljava/lang/Integer;
    const/16 v22, 0x0

    .line 912
    .local v22, "enable":Z
    invoke-virtual/range {v30 .. v30}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v11, 0x5

    if-ne v4, v11, :cond_22

    .line 913
    const/4 v4, 0x1

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 914
    .restart local v7    # "serviceClass":I
    const/4 v4, 0x2

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "resp":Landroid/os/Message;
    check-cast v10, Landroid/os/Message;

    .line 921
    .end local v22    # "enable":Z
    .local v10, "resp":Landroid/os/Message;
    :goto_5
    const/16 v25, 0x0

    .line 922
    .local v25, "imsException":Lcom/android/ims/ImsException;
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_21

    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v4, v4, Lcom/android/ims/ImsException;

    if-eqz v4, :cond_21

    .line 923
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v25, v0

    .end local v25    # "imsException":Lcom/android/ims/ImsException;
    check-cast v25, Lcom/android/ims/ImsException;

    .line 926
    :cond_21
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_24

    .line 927
    const/4 v4, 0x2

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->setTbcwMode(I)V

    .line 928
    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/gsm/GSMPhone;->setTbcwToEnabledOnIfDisabled()V

    .line 929
    invoke-virtual/range {v30 .. v30}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v11, 0x5

    if-ne v4, v11, :cond_23

    .line 930
    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Lcom/android/internal/telephony/gsm/GSMPhone;->getTerminalBasedCallWaiting(Landroid/os/Message;)V

    .line 960
    :goto_6
    return-void

    .line 916
    .end local v7    # "serviceClass":I
    .local v10, "resp":Landroid/os/Message;
    .restart local v22    # "enable":Z
    :cond_22
    const/4 v4, 0x1

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v22

    .line 917
    .local v22, "enable":Z
    const/4 v4, 0x2

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 918
    .restart local v7    # "serviceClass":I
    const/4 v4, 0x3

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "resp":Landroid/os/Message;
    check-cast v10, Landroid/os/Message;

    .local v10, "resp":Landroid/os/Message;
    goto :goto_5

    .line 932
    .end local v22    # "enable":Z
    :cond_23
    move-object/from16 v0, v23

    move/from16 v1, v22

    invoke-virtual {v0, v1, v10}, Lcom/android/internal/telephony/gsm/GSMPhone;->setTerminalBasedCallWaiting(ZLandroid/os/Message;)V

    goto :goto_6

    .line 934
    :cond_24
    if-eqz v25, :cond_26

    .line 935
    invoke-virtual/range {v25 .. v25}, Lcom/android/ims/ImsException;->getCode()I

    move-result v4

    const/16 v11, 0x33e

    if-ne v4, v11, :cond_26

    .line 936
    const/4 v4, 0x3

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->setTbcwMode(I)V

    .line 937
    const-string/jumbo v4, "persist.radio.terminal-based.cw"

    .line 938
    const-string/jumbo v11, "disabled_tbcw"

    .line 937
    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v11}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 939
    invoke-virtual/range {v30 .. v30}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v11, 0x5

    if-ne v4, v11, :cond_25

    .line 940
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4, v7, v10}, Lcom/android/internal/telephony/CommandsInterface;->queryCallWaiting(ILandroid/os/Message;)V

    .line 944
    :goto_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const/4 v11, 0x2

    invoke-virtual {v4, v11}, Lcom/android/internal/telephony/PhoneBase;->setCsFallbackStatus(I)V

    goto :goto_6

    .line 942
    :cond_25
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move/from16 v0, v22

    invoke-interface {v4, v0, v7, v10}, Lcom/android/internal/telephony/CommandsInterface;->setCallWaiting(ZILandroid/os/Message;)V

    goto :goto_7

    .line 945
    :cond_26
    if-eqz v25, :cond_28

    .line 946
    invoke-virtual/range {v25 .. v25}, Lcom/android/ims/ImsException;->getCode()I

    move-result v4

    const/16 v11, 0x33f

    if-ne v4, v11, :cond_28

    .line 947
    invoke-virtual/range {v30 .. v30}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v11, 0x5

    if-ne v4, v11, :cond_27

    .line 948
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4, v7, v10}, Lcom/android/internal/telephony/CommandsInterface;->queryCallWaiting(ILandroid/os/Message;)V

    goto/16 :goto_6

    .line 950
    :cond_27
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move/from16 v0, v22

    invoke-interface {v4, v0, v7, v10}, Lcom/android/internal/telephony/CommandsInterface;->setCallWaiting(ZILandroid/os/Message;)V

    goto/16 :goto_6

    .line 953
    :cond_28
    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/gsm/GSMPhone;->setTbcwToEnabledOnIfDisabled()V

    .line 954
    invoke-virtual/range {v30 .. v30}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v11, 0x5

    if-ne v4, v11, :cond_29

    .line 955
    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Lcom/android/internal/telephony/gsm/GSMPhone;->getTerminalBasedCallWaiting(Landroid/os/Message;)V

    goto/16 :goto_6

    .line 957
    :cond_29
    move-object/from16 v0, v23

    move/from16 v1, v22

    invoke-virtual {v0, v1, v10}, Lcom/android/internal/telephony/gsm/GSMPhone;->setTerminalBasedCallWaiting(ZLandroid/os/Message;)V

    goto/16 :goto_6

    .line 962
    .end local v7    # "serviceClass":I
    .end local v23    # "gsmPhone":Lcom/android/internal/telephony/gsm/GSMPhone;
    .end local v30    # "reqCode":Ljava/lang/Integer;
    .local v10, "resp":Landroid/os/Message;
    :cond_2a
    const/4 v4, 0x1

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 963
    .restart local v7    # "serviceClass":I
    const/4 v4, 0x2

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "resp":Landroid/os/Message;
    check-cast v10, Landroid/os/Message;

    .line 965
    .local v10, "resp":Landroid/os/Message;
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_2c

    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v4, v4, Lcom/android/ims/ImsException;

    if-eqz v4, :cond_2c

    .line 966
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v25, v0

    check-cast v25, Lcom/android/ims/ImsException;

    .line 967
    .local v25, "imsException":Lcom/android/ims/ImsException;
    invoke-virtual/range {v25 .. v25}, Lcom/android/ims/ImsException;->getCode()I

    move-result v4

    const/16 v11, 0x33e

    if-ne v4, v11, :cond_2b

    .line 968
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4, v7, v10}, Lcom/android/internal/telephony/CommandsInterface;->queryCallWaiting(ILandroid/os/Message;)V

    .line 969
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const/4 v11, 0x2

    invoke-virtual {v4, v11}, Lcom/android/internal/telephony/PhoneBase;->setCsFallbackStatus(I)V

    .line 970
    return-void

    .line 971
    :cond_2b
    invoke-virtual/range {v25 .. v25}, Lcom/android/ims/ImsException;->getCode()I

    move-result v4

    const/16 v11, 0x33f

    if-ne v4, v11, :cond_2c

    .line 972
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4, v7, v10}, Lcom/android/internal/telephony/CommandsInterface;->queryCallWaiting(ILandroid/os/Message;)V

    .line 973
    return-void

    .line 977
    .end local v25    # "imsException":Lcom/android/ims/ImsException;
    :cond_2c
    if-eqz v19, :cond_0

    .line 978
    const-string/jumbo v4, "SSDecisonMaker"

    const-string/jumbo v11, "SS_REQUEST_GET_CALL_WAITING ssinfo check."

    invoke-static {v4, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 979
    move-object/from16 v0, v19

    instance-of v4, v0, [Lcom/android/ims/ImsSsInfo;

    if-eqz v4, :cond_0

    .line 980
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [Lcom/android/ims/ImsSsInfo;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->handleCwQueryResult([Lcom/android/ims/ImsSsInfo;)[I

    move-result-object v19

    goto/16 :goto_0

    .line 988
    .end local v7    # "serviceClass":I
    .end local v29    # "queryVolteUser":Z
    .local v10, "resp":Landroid/os/Message;
    :pswitch_7
    const/4 v4, 0x1

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v22

    .line 989
    .restart local v22    # "enable":Z
    const/4 v4, 0x2

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 990
    .restart local v7    # "serviceClass":I
    const/4 v4, 0x3

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "resp":Landroid/os/Message;
    check-cast v10, Landroid/os/Message;

    .line 991
    .local v10, "resp":Landroid/os/Message;
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_0

    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v4, v4, Lcom/android/ims/ImsException;

    if-eqz v4, :cond_0

    .line 992
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v25, v0

    check-cast v25, Lcom/android/ims/ImsException;

    .line 993
    .restart local v25    # "imsException":Lcom/android/ims/ImsException;
    invoke-virtual/range {v25 .. v25}, Lcom/android/ims/ImsException;->getCode()I

    move-result v4

    const/16 v11, 0x33e

    if-ne v4, v11, :cond_2d

    .line 994
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move/from16 v0, v22

    invoke-interface {v4, v0, v7, v10}, Lcom/android/internal/telephony/CommandsInterface;->setCallWaiting(ZILandroid/os/Message;)V

    .line 995
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const/4 v11, 0x2

    invoke-virtual {v4, v11}, Lcom/android/internal/telephony/PhoneBase;->setCsFallbackStatus(I)V

    .line 996
    return-void

    .line 997
    :cond_2d
    invoke-virtual/range {v25 .. v25}, Lcom/android/ims/ImsException;->getCode()I

    move-result v4

    const/16 v11, 0x33f

    if-ne v4, v11, :cond_0

    .line 998
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move/from16 v0, v22

    invoke-interface {v4, v0, v7, v10}, Lcom/android/internal/telephony/CommandsInterface;->setCallWaiting(ZILandroid/os/Message;)V

    .line 999
    return-void

    .line 1006
    .end local v7    # "serviceClass":I
    .end local v22    # "enable":Z
    .end local v25    # "imsException":Lcom/android/ims/ImsException;
    .local v10, "resp":Landroid/os/Message;
    :pswitch_8
    const/4 v4, 0x1

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "resp":Landroid/os/Message;
    check-cast v10, Landroid/os/Message;

    .line 1008
    .local v10, "resp":Landroid/os/Message;
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_2f

    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v4, v4, Lcom/android/ims/ImsException;

    if-eqz v4, :cond_2f

    .line 1009
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v25, v0

    check-cast v25, Lcom/android/ims/ImsException;

    .line 1010
    .restart local v25    # "imsException":Lcom/android/ims/ImsException;
    invoke-virtual/range {v25 .. v25}, Lcom/android/ims/ImsException;->getCode()I

    move-result v4

    const/16 v11, 0x33e

    if-ne v4, v11, :cond_2e

    .line 1011
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4, v10}, Lcom/android/internal/telephony/CommandsInterface;->getCLIR(Landroid/os/Message;)V

    .line 1012
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const/4 v11, 0x2

    invoke-virtual {v4, v11}, Lcom/android/internal/telephony/PhoneBase;->setCsFallbackStatus(I)V

    .line 1013
    return-void

    .line 1014
    :cond_2e
    invoke-virtual/range {v25 .. v25}, Lcom/android/ims/ImsException;->getCode()I

    move-result v4

    const/16 v11, 0x33f

    if-ne v4, v11, :cond_2f

    .line 1015
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4, v10}, Lcom/android/internal/telephony/CommandsInterface;->getCLIR(Landroid/os/Message;)V

    .line 1016
    return-void

    .line 1020
    .end local v25    # "imsException":Lcom/android/ims/ImsException;
    :cond_2f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v4, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->isOp01IccCard()Z

    move-result v4

    if-eqz v4, :cond_30

    .line 1021
    new-instance v18, Lcom/android/internal/telephony/CommandException;

    .line 1022
    .end local v18    # "arException":Ljava/lang/Throwable;
    sget-object v4, Lcom/android/internal/telephony/CommandException$Error;->SPECAIL_UT_COMMAND_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    .line 1021
    move-object/from16 v0, v18

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 1023
    .restart local v18    # "arException":Ljava/lang/Throwable;
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 1025
    :cond_30
    const/16 v21, 0x0

    .line 1026
    .local v21, "clirInfo":[I
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_31

    move-object/from16 v33, v19

    .line 1027
    check-cast v33, Landroid/os/Bundle;

    .line 1028
    .local v33, "ssInfo":Landroid/os/Bundle;
    const-string/jumbo v4, "queryClir"

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v21

    .line 1031
    .local v21, "clirInfo":[I
    const-string/jumbo v4, "SSDecisonMaker"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "SS_REQUEST_GET_CLIR: CLIR param n="

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v15, 0x0

    aget v15, v21, v15

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 1032
    const-string/jumbo v15, " m="

    .line 1031
    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 1032
    const/4 v15, 0x1

    aget v15, v21, v15

    .line 1031
    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1034
    .end local v21    # "clirInfo":[I
    .end local v33    # "ssInfo":Landroid/os/Bundle;
    :cond_31
    move-object/from16 v19, v21

    goto/16 :goto_0

    .line 1039
    .local v10, "resp":Landroid/os/Message;
    :pswitch_9
    const/4 v4, 0x1

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v26

    .line 1040
    .local v26, "mode":I
    const/4 v4, 0x2

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "resp":Landroid/os/Message;
    check-cast v10, Landroid/os/Message;

    .line 1042
    .local v10, "resp":Landroid/os/Message;
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_33

    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v4, v4, Lcom/android/ims/ImsException;

    if-eqz v4, :cond_33

    .line 1043
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v25, v0

    check-cast v25, Lcom/android/ims/ImsException;

    .line 1044
    .restart local v25    # "imsException":Lcom/android/ims/ImsException;
    invoke-virtual/range {v25 .. v25}, Lcom/android/ims/ImsException;->getCode()I

    move-result v4

    const/16 v11, 0x33e

    if-ne v4, v11, :cond_32

    .line 1045
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move/from16 v0, v26

    invoke-interface {v4, v0, v10}, Lcom/android/internal/telephony/CommandsInterface;->setCLIR(ILandroid/os/Message;)V

    .line 1046
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const/4 v11, 0x2

    invoke-virtual {v4, v11}, Lcom/android/internal/telephony/PhoneBase;->setCsFallbackStatus(I)V

    .line 1047
    return-void

    .line 1048
    :cond_32
    invoke-virtual/range {v25 .. v25}, Lcom/android/ims/ImsException;->getCode()I

    move-result v4

    const/16 v11, 0x33f

    if-ne v4, v11, :cond_33

    .line 1049
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move/from16 v0, v26

    invoke-interface {v4, v0, v10}, Lcom/android/internal/telephony/CommandsInterface;->setCLIR(ILandroid/os/Message;)V

    .line 1050
    return-void

    .line 1054
    .end local v25    # "imsException":Lcom/android/ims/ImsException;
    :cond_33
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v4, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->isOp01IccCard()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1055
    new-instance v18, Lcom/android/internal/telephony/CommandException;

    .line 1056
    .end local v18    # "arException":Ljava/lang/Throwable;
    sget-object v4, Lcom/android/internal/telephony/CommandException$Error;->SPECAIL_UT_COMMAND_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    .line 1055
    move-object/from16 v0, v18

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 1057
    .restart local v18    # "arException":Ljava/lang/Throwable;
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 1062
    .end local v26    # "mode":I
    .local v10, "resp":Landroid/os/Message;
    :pswitch_a
    const/4 v4, 0x1

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "resp":Landroid/os/Message;
    check-cast v10, Landroid/os/Message;

    .line 1063
    .local v10, "resp":Landroid/os/Message;
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_35

    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v4, v4, Lcom/android/ims/ImsException;

    if-eqz v4, :cond_35

    .line 1064
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v25, v0

    check-cast v25, Lcom/android/ims/ImsException;

    .line 1065
    .restart local v25    # "imsException":Lcom/android/ims/ImsException;
    invoke-virtual/range {v25 .. v25}, Lcom/android/ims/ImsException;->getCode()I

    move-result v4

    const/16 v11, 0x33e

    if-ne v4, v11, :cond_34

    .line 1066
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4, v10}, Lcom/android/internal/telephony/CommandsInterface;->queryCLIP(Landroid/os/Message;)V

    .line 1067
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const/4 v11, 0x2

    invoke-virtual {v4, v11}, Lcom/android/internal/telephony/PhoneBase;->setCsFallbackStatus(I)V

    .line 1068
    return-void

    .line 1069
    :cond_34
    invoke-virtual/range {v25 .. v25}, Lcom/android/ims/ImsException;->getCode()I

    move-result v4

    const/16 v11, 0x33f

    if-ne v4, v11, :cond_35

    .line 1070
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4, v10}, Lcom/android/internal/telephony/CommandsInterface;->queryCLIP(Landroid/os/Message;)V

    .line 1071
    return-void

    .line 1075
    .end local v25    # "imsException":Lcom/android/ims/ImsException;
    :cond_35
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v4, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->isOp01IccCard()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1076
    new-instance v18, Lcom/android/internal/telephony/CommandException;

    .line 1077
    .end local v18    # "arException":Ljava/lang/Throwable;
    sget-object v4, Lcom/android/internal/telephony/CommandException$Error;->SPECAIL_UT_COMMAND_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    .line 1076
    move-object/from16 v0, v18

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 1078
    .restart local v18    # "arException":Ljava/lang/Throwable;
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 1083
    .local v10, "resp":Landroid/os/Message;
    :pswitch_b
    const/4 v4, 0x1

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v26

    .line 1084
    .restart local v26    # "mode":I
    if-nez v26, :cond_36

    const/16 v27, 0x0

    .line 1085
    .local v27, "modeCs":Z
    :goto_8
    const/4 v4, 0x2

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "resp":Landroid/os/Message;
    check-cast v10, Landroid/os/Message;

    .line 1086
    .local v10, "resp":Landroid/os/Message;
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_38

    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v4, v4, Lcom/android/ims/ImsException;

    if-eqz v4, :cond_38

    .line 1087
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v25, v0

    check-cast v25, Lcom/android/ims/ImsException;

    .line 1088
    .restart local v25    # "imsException":Lcom/android/ims/ImsException;
    invoke-virtual/range {v25 .. v25}, Lcom/android/ims/ImsException;->getCode()I

    move-result v4

    const/16 v11, 0x33e

    if-ne v4, v11, :cond_37

    .line 1089
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move/from16 v0, v27

    invoke-interface {v4, v0, v10}, Lcom/android/internal/telephony/CommandsInterface;->setCLIP(ZLandroid/os/Message;)V

    .line 1090
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const/4 v11, 0x2

    invoke-virtual {v4, v11}, Lcom/android/internal/telephony/PhoneBase;->setCsFallbackStatus(I)V

    .line 1091
    return-void

    .line 1084
    .end local v25    # "imsException":Lcom/android/ims/ImsException;
    .end local v27    # "modeCs":Z
    .local v10, "resp":Landroid/os/Message;
    :cond_36
    const/16 v27, 0x1

    .restart local v27    # "modeCs":Z
    goto :goto_8

    .line 1092
    .local v10, "resp":Landroid/os/Message;
    .restart local v25    # "imsException":Lcom/android/ims/ImsException;
    :cond_37
    invoke-virtual/range {v25 .. v25}, Lcom/android/ims/ImsException;->getCode()I

    move-result v4

    const/16 v11, 0x33f

    if-ne v4, v11, :cond_38

    .line 1093
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move/from16 v0, v27

    invoke-interface {v4, v0, v10}, Lcom/android/internal/telephony/CommandsInterface;->setCLIP(ZLandroid/os/Message;)V

    .line 1094
    return-void

    .line 1098
    .end local v25    # "imsException":Lcom/android/ims/ImsException;
    :cond_38
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v4, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->isOp01IccCard()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1099
    new-instance v18, Lcom/android/internal/telephony/CommandException;

    .line 1100
    .end local v18    # "arException":Ljava/lang/Throwable;
    sget-object v4, Lcom/android/internal/telephony/CommandException$Error;->SPECAIL_UT_COMMAND_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    .line 1099
    move-object/from16 v0, v18

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 1101
    .restart local v18    # "arException":Ljava/lang/Throwable;
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 1106
    .end local v26    # "mode":I
    .end local v27    # "modeCs":Z
    .local v10, "resp":Landroid/os/Message;
    :pswitch_c
    const/4 v4, 0x1

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "resp":Landroid/os/Message;
    check-cast v10, Landroid/os/Message;

    .line 1107
    .local v10, "resp":Landroid/os/Message;
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_3a

    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v4, v4, Lcom/android/ims/ImsException;

    if-eqz v4, :cond_3a

    .line 1108
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v25, v0

    check-cast v25, Lcom/android/ims/ImsException;

    .line 1109
    .restart local v25    # "imsException":Lcom/android/ims/ImsException;
    invoke-virtual/range {v25 .. v25}, Lcom/android/ims/ImsException;->getCode()I

    move-result v4

    const/16 v11, 0x33e

    if-ne v4, v11, :cond_39

    .line 1110
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4, v10}, Lcom/android/internal/telephony/CommandsInterface;->getCOLR(Landroid/os/Message;)V

    .line 1111
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const/4 v11, 0x2

    invoke-virtual {v4, v11}, Lcom/android/internal/telephony/PhoneBase;->setCsFallbackStatus(I)V

    .line 1112
    return-void

    .line 1113
    :cond_39
    invoke-virtual/range {v25 .. v25}, Lcom/android/ims/ImsException;->getCode()I

    move-result v4

    const/16 v11, 0x33f

    if-ne v4, v11, :cond_3a

    .line 1114
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4, v10}, Lcom/android/internal/telephony/CommandsInterface;->getCOLR(Landroid/os/Message;)V

    .line 1115
    return-void

    .line 1119
    .end local v25    # "imsException":Lcom/android/ims/ImsException;
    :cond_3a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v4, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->isOp01IccCard()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1120
    new-instance v18, Lcom/android/internal/telephony/CommandException;

    .line 1121
    .end local v18    # "arException":Ljava/lang/Throwable;
    sget-object v4, Lcom/android/internal/telephony/CommandException$Error;->SPECAIL_UT_COMMAND_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    .line 1120
    move-object/from16 v0, v18

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 1122
    .restart local v18    # "arException":Ljava/lang/Throwable;
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 1127
    .local v10, "resp":Landroid/os/Message;
    :pswitch_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v4, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->isOp01IccCard()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1128
    new-instance v18, Lcom/android/internal/telephony/CommandException;

    .line 1129
    .end local v18    # "arException":Ljava/lang/Throwable;
    sget-object v4, Lcom/android/internal/telephony/CommandException$Error;->SPECAIL_UT_COMMAND_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    .line 1128
    move-object/from16 v0, v18

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 1130
    .restart local v18    # "arException":Ljava/lang/Throwable;
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 1135
    :pswitch_e
    const/4 v4, 0x1

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "resp":Landroid/os/Message;
    check-cast v10, Landroid/os/Message;

    .line 1136
    .local v10, "resp":Landroid/os/Message;
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_3c

    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v4, v4, Lcom/android/ims/ImsException;

    if-eqz v4, :cond_3c

    .line 1137
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v25, v0

    check-cast v25, Lcom/android/ims/ImsException;

    .line 1138
    .restart local v25    # "imsException":Lcom/android/ims/ImsException;
    invoke-virtual/range {v25 .. v25}, Lcom/android/ims/ImsException;->getCode()I

    move-result v4

    const/16 v11, 0x33e

    if-ne v4, v11, :cond_3b

    .line 1139
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4, v10}, Lcom/android/internal/telephony/CommandsInterface;->getCOLP(Landroid/os/Message;)V

    .line 1140
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const/4 v11, 0x2

    invoke-virtual {v4, v11}, Lcom/android/internal/telephony/PhoneBase;->setCsFallbackStatus(I)V

    .line 1141
    return-void

    .line 1142
    :cond_3b
    invoke-virtual/range {v25 .. v25}, Lcom/android/ims/ImsException;->getCode()I

    move-result v4

    const/16 v11, 0x33f

    if-ne v4, v11, :cond_3c

    .line 1143
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4, v10}, Lcom/android/internal/telephony/CommandsInterface;->getCOLP(Landroid/os/Message;)V

    .line 1144
    return-void

    .line 1148
    .end local v25    # "imsException":Lcom/android/ims/ImsException;
    :cond_3c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v4, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->isOp01IccCard()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1149
    new-instance v18, Lcom/android/internal/telephony/CommandException;

    .line 1150
    .end local v18    # "arException":Ljava/lang/Throwable;
    sget-object v4, Lcom/android/internal/telephony/CommandException$Error;->SPECAIL_UT_COMMAND_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    .line 1149
    move-object/from16 v0, v18

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 1151
    .restart local v18    # "arException":Ljava/lang/Throwable;
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 1156
    .local v10, "resp":Landroid/os/Message;
    :pswitch_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v4, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->isOp01IccCard()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1157
    new-instance v18, Lcom/android/internal/telephony/CommandException;

    .line 1158
    .end local v18    # "arException":Ljava/lang/Throwable;
    sget-object v4, Lcom/android/internal/telephony/CommandException$Error;->SPECAIL_UT_COMMAND_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    .line 1157
    move-object/from16 v0, v18

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 1159
    .restart local v18    # "arException":Ljava/lang/Throwable;
    const/16 v19, 0x0

    .line 1160
    goto/16 :goto_0

    .line 650
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
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
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private processSendRequest(Ljava/lang/Object;)V
    .locals 28
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 359
    const/16 v26, 0x0

    .local v26, "resp":Landroid/os/Message;
    move-object/from16 v27, p1

    .line 360
    check-cast v27, Ljava/util/ArrayList;

    .line 361
    .local v27, "ssParmList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const/4 v3, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/Integer;

    .line 362
    .local v25, "request":Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mSSRequestHandler:Lcom/android/internal/telephony/SSRequestDecisionMaker$SSRequestHandler;

    const/4 v4, 0x2

    move-object/from16 v0, v27

    invoke-virtual {v3, v4, v0}, Lcom/android/internal/telephony/SSRequestDecisionMaker$SSRequestHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    .line 364
    .local v8, "utResp":Landroid/os/Message;
    const-string/jumbo v3, "SSDecisonMaker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "processSendRequest, request = "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 358
    .end local v26    # "resp":Landroid/os/Message;
    :goto_0
    return-void

    .line 368
    .restart local v26    # "resp":Landroid/os/Message;
    :pswitch_0
    const/4 v3, 0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v17

    .line 369
    .local v17, "cfReason":I
    const/4 v3, 0x2

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 370
    .local v6, "serviceClass":I
    const/4 v3, 0x3

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 371
    .local v5, "number":Ljava/lang/String;
    const/4 v3, 0x4

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    .end local v26    # "resp":Landroid/os/Message;
    check-cast v26, Landroid/os/Message;

    .line 374
    .local v26, "resp":Landroid/os/Message;
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v2

    .line 375
    .local v2, "ut":Lcom/android/ims/ImsUtInterface;
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->getPhoneId()I

    move-result v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->setCSCurrentPhoneId(I)V

    .line 376
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->getConditionFromCFReason(I)I

    move-result v3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4, v8}, Lcom/android/ims/ImsUtInterface;->queryCallForward(ILjava/lang/String;Landroid/os/Message;)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 377
    .end local v2    # "ut":Lcom/android/ims/ImsUtInterface;
    :catch_0
    move-exception v18

    .line 378
    .local v18, "e":Lcom/android/ims/ImsException;
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->sendGenericErrorResponse(Landroid/os/Message;)V

    goto :goto_0

    .line 383
    .end local v5    # "number":Ljava/lang/String;
    .end local v6    # "serviceClass":I
    .end local v17    # "cfReason":I
    .end local v18    # "e":Lcom/android/ims/ImsException;
    .local v26, "resp":Landroid/os/Message;
    :pswitch_1
    const/4 v3, 0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v16

    .line 384
    .local v16, "action":I
    const/4 v3, 0x2

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v17

    .line 385
    .restart local v17    # "cfReason":I
    const/4 v3, 0x3

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 386
    .restart local v6    # "serviceClass":I
    const/4 v3, 0x4

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 387
    .restart local v5    # "number":Ljava/lang/String;
    const/4 v3, 0x5

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 388
    .local v7, "timeSeconds":I
    const/4 v3, 0x6

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    .end local v26    # "resp":Landroid/os/Message;
    check-cast v26, Landroid/os/Message;

    .line 391
    .local v26, "resp":Landroid/os/Message;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 392
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 393
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    instance-of v3, v3, Lcom/android/internal/telephony/gsm/GSMPhone;

    if-eqz v3, :cond_2

    .line 394
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v3, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->isSupportSaveCFNumber()Z

    move-result v3

    .line 393
    if-eqz v3, :cond_2

    .line 395
    const/4 v3, 0x1

    move/from16 v0, v16

    if-eq v0, v3, :cond_1

    .line 396
    const/4 v3, 0x3

    move/from16 v0, v16

    if-ne v0, v3, :cond_2

    .line 398
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v3, Lcom/android/internal/telephony/gsm/GSMPhone;

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getCFPreviousDialNumber(I)Ljava/lang/String;

    move-result-object v21

    .line 400
    .local v21, "getNumber":Ljava/lang/String;
    if-eqz v21, :cond_2

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 410
    .end local v21    # "getNumber":Ljava/lang/String;
    :cond_2
    :goto_1
    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v2

    .line 411
    .restart local v2    # "ut":Lcom/android/ims/ImsUtInterface;
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->getPhoneId()I

    move-result v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->setCSCurrentPhoneId(I)V

    .line 412
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->getActionFromCFAction(I)I

    move-result v3

    .line 413
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->getConditionFromCFReason(I)I

    move-result v4

    .line 412
    invoke-interface/range {v2 .. v8}, Lcom/android/ims/ImsUtInterface;->updateCallForward(IILjava/lang/String;IILandroid/os/Message;)V
    :try_end_1
    .catch Lcom/android/ims/ImsException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 418
    .end local v2    # "ut":Lcom/android/ims/ImsUtInterface;
    :catch_1
    move-exception v18

    .line 419
    .restart local v18    # "e":Lcom/android/ims/ImsException;
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->sendGenericErrorResponse(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 401
    .end local v18    # "e":Lcom/android/ims/ImsException;
    .restart local v21    # "getNumber":Ljava/lang/String;
    :cond_3
    move-object/from16 v5, v21

    goto :goto_1

    .line 424
    .end local v5    # "number":Ljava/lang/String;
    .end local v6    # "serviceClass":I
    .end local v7    # "timeSeconds":I
    .end local v16    # "action":I
    .end local v17    # "cfReason":I
    .end local v21    # "getNumber":Ljava/lang/String;
    .local v26, "resp":Landroid/os/Message;
    :pswitch_2
    const/4 v3, 0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v17

    .line 425
    .restart local v17    # "cfReason":I
    const/4 v3, 0x2

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 426
    .restart local v6    # "serviceClass":I
    const/4 v3, 0x3

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    .end local v26    # "resp":Landroid/os/Message;
    check-cast v26, Landroid/os/Message;

    .line 429
    .local v26, "resp":Landroid/os/Message;
    :try_start_2
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v2

    .line 430
    .restart local v2    # "ut":Lcom/android/ims/ImsUtInterface;
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->getPhoneId()I

    move-result v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->setCSCurrentPhoneId(I)V

    .line 432
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->getConditionFromCFReason(I)I

    move-result v3

    .line 431
    invoke-interface {v2, v3, v8}, Lcom/android/ims/ImsUtInterface;->queryCallForwardInTimeSlot(ILandroid/os/Message;)V
    :try_end_2
    .catch Lcom/android/ims/ImsException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 434
    .end local v2    # "ut":Lcom/android/ims/ImsUtInterface;
    :catch_2
    move-exception v18

    .line 435
    .restart local v18    # "e":Lcom/android/ims/ImsException;
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->sendGenericErrorResponse(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 440
    .end local v6    # "serviceClass":I
    .end local v17    # "cfReason":I
    .end local v18    # "e":Lcom/android/ims/ImsException;
    .local v26, "resp":Landroid/os/Message;
    :pswitch_3
    const/4 v3, 0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v16

    .line 441
    .restart local v16    # "action":I
    const/4 v3, 0x2

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v17

    .line 442
    .restart local v17    # "cfReason":I
    const/4 v3, 0x3

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 443
    .restart local v6    # "serviceClass":I
    const/4 v3, 0x4

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 444
    .restart local v5    # "number":Ljava/lang/String;
    const/4 v3, 0x5

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 445
    .restart local v7    # "timeSeconds":I
    const/4 v3, 0x6

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [J

    .line 446
    .local v14, "timeSlot":[J
    const/4 v3, 0x7

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    .end local v26    # "resp":Landroid/os/Message;
    check-cast v26, Landroid/os/Message;

    .line 449
    .local v26, "resp":Landroid/os/Message;
    :try_start_3
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v2

    .line 450
    .restart local v2    # "ut":Lcom/android/ims/ImsUtInterface;
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->getPhoneId()I

    move-result v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->setCSCurrentPhoneId(I)V

    .line 451
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->getActionFromCFAction(I)I

    move-result v10

    .line 452
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->getConditionFromCFReason(I)I

    move-result v11

    move-object v9, v2

    move-object v12, v5

    move v13, v7

    move-object v15, v8

    .line 451
    invoke-interface/range {v9 .. v15}, Lcom/android/ims/ImsUtInterface;->updateCallForwardInTimeSlot(IILjava/lang/String;I[JLandroid/os/Message;)V
    :try_end_3
    .catch Lcom/android/ims/ImsException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    .line 457
    .end local v2    # "ut":Lcom/android/ims/ImsUtInterface;
    :catch_3
    move-exception v18

    .line 458
    .restart local v18    # "e":Lcom/android/ims/ImsException;
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->sendGenericErrorResponse(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 463
    .end local v5    # "number":Ljava/lang/String;
    .end local v6    # "serviceClass":I
    .end local v7    # "timeSeconds":I
    .end local v14    # "timeSlot":[J
    .end local v16    # "action":I
    .end local v17    # "cfReason":I
    .end local v18    # "e":Lcom/android/ims/ImsException;
    .local v26, "resp":Landroid/os/Message;
    :pswitch_4
    const/4 v3, 0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    .line 464
    .local v20, "facility":Ljava/lang/String;
    const/4 v3, 0x2

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    .line 465
    .local v24, "password":Ljava/lang/String;
    const/4 v3, 0x3

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 466
    .restart local v6    # "serviceClass":I
    const/4 v3, 0x4

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    .end local v26    # "resp":Landroid/os/Message;
    check-cast v26, Landroid/os/Message;

    .line 468
    .local v26, "resp":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v3, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->isOp01IccCard()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 469
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v3, Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->isOutgoingCallBarring(Ljava/lang/String;)Z

    move-result v3

    .line 468
    if-eqz v3, :cond_6

    .line 470
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mIsTempVolteUser:Z

    if-eqz v3, :cond_5

    .line 471
    if-eqz v26, :cond_4

    .line 472
    new-instance v3, Lcom/android/internal/telephony/CommandException;

    .line 473
    sget-object v4, Lcom/android/internal/telephony/CommandException$Error;->SPECAIL_UT_COMMAND_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    .line 472
    invoke-direct {v3, v4}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    const/4 v4, 0x0

    move-object/from16 v0, v26

    invoke-static {v0, v4, v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 474
    invoke-virtual/range {v26 .. v26}, Landroid/os/Message;->sendToTarget()V

    .line 476
    :cond_4
    return-void

    .line 478
    :cond_5
    const-string/jumbo v20, "AI"

    .line 483
    :cond_6
    :try_start_4
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v2

    .line 484
    .restart local v2    # "ut":Lcom/android/ims/ImsUtInterface;
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->getPhoneId()I

    move-result v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->setCSCurrentPhoneId(I)V

    .line 485
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->getCBTypeFromFacility(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3, v8}, Lcom/android/ims/ImsUtInterface;->queryCallBarring(ILandroid/os/Message;)V
    :try_end_4
    .catch Lcom/android/ims/ImsException; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_0

    .line 486
    .end local v2    # "ut":Lcom/android/ims/ImsUtInterface;
    :catch_4
    move-exception v18

    .line 487
    .restart local v18    # "e":Lcom/android/ims/ImsException;
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->sendGenericErrorResponse(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 492
    .end local v6    # "serviceClass":I
    .end local v18    # "e":Lcom/android/ims/ImsException;
    .end local v20    # "facility":Ljava/lang/String;
    .end local v24    # "password":Ljava/lang/String;
    .local v26, "resp":Landroid/os/Message;
    :pswitch_5
    const/4 v3, 0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    .line 493
    .restart local v20    # "facility":Ljava/lang/String;
    const/4 v3, 0x2

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v22

    .line 494
    .local v22, "lockState":Z
    const/4 v3, 0x3

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    .line 495
    .restart local v24    # "password":Ljava/lang/String;
    const/4 v3, 0x4

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 496
    .restart local v6    # "serviceClass":I
    const/4 v3, 0x5

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    .end local v26    # "resp":Landroid/os/Message;
    check-cast v26, Landroid/os/Message;

    .line 499
    .local v26, "resp":Landroid/os/Message;
    :try_start_5
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v2

    .line 500
    .restart local v2    # "ut":Lcom/android/ims/ImsUtInterface;
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->getPhoneId()I

    move-result v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->setCSCurrentPhoneId(I)V

    .line 501
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->getCBTypeFromFacility(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    move/from16 v0, v22

    invoke-interface {v2, v3, v0, v8, v4}, Lcom/android/ims/ImsUtInterface;->updateCallBarring(IZLandroid/os/Message;[Ljava/lang/String;)V
    :try_end_5
    .catch Lcom/android/ims/ImsException; {:try_start_5 .. :try_end_5} :catch_5

    goto/16 :goto_0

    .line 502
    .end local v2    # "ut":Lcom/android/ims/ImsUtInterface;
    :catch_5
    move-exception v18

    .line 503
    .restart local v18    # "e":Lcom/android/ims/ImsException;
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->sendGenericErrorResponse(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 508
    .end local v6    # "serviceClass":I
    .end local v18    # "e":Lcom/android/ims/ImsException;
    .end local v20    # "facility":Ljava/lang/String;
    .end local v22    # "lockState":Z
    .end local v24    # "password":Ljava/lang/String;
    .local v26, "resp":Landroid/os/Message;
    :pswitch_6
    const/4 v3, 0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 509
    .restart local v6    # "serviceClass":I
    const/4 v3, 0x2

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    .end local v26    # "resp":Landroid/os/Message;
    check-cast v26, Landroid/os/Message;

    .line 512
    .local v26, "resp":Landroid/os/Message;
    :try_start_6
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v2

    .line 513
    .restart local v2    # "ut":Lcom/android/ims/ImsUtInterface;
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->getPhoneId()I

    move-result v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->setCSCurrentPhoneId(I)V

    .line 514
    invoke-interface {v2, v8}, Lcom/android/ims/ImsUtInterface;->queryCallWaiting(Landroid/os/Message;)V
    :try_end_6
    .catch Lcom/android/ims/ImsException; {:try_start_6 .. :try_end_6} :catch_6

    goto/16 :goto_0

    .line 515
    .end local v2    # "ut":Lcom/android/ims/ImsUtInterface;
    :catch_6
    move-exception v18

    .line 516
    .restart local v18    # "e":Lcom/android/ims/ImsException;
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->sendGenericErrorResponse(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 521
    .end local v6    # "serviceClass":I
    .end local v18    # "e":Lcom/android/ims/ImsException;
    .local v26, "resp":Landroid/os/Message;
    :pswitch_7
    const/4 v3, 0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v19

    .line 522
    .local v19, "enable":Z
    const/4 v3, 0x2

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 523
    .restart local v6    # "serviceClass":I
    const/4 v3, 0x3

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    .end local v26    # "resp":Landroid/os/Message;
    check-cast v26, Landroid/os/Message;

    .line 526
    .local v26, "resp":Landroid/os/Message;
    :try_start_7
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v2

    .line 527
    .restart local v2    # "ut":Lcom/android/ims/ImsUtInterface;
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->getPhoneId()I

    move-result v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->setCSCurrentPhoneId(I)V

    .line 530
    invoke-interface {v2, v8}, Lcom/android/ims/ImsUtInterface;->queryCallWaiting(Landroid/os/Message;)V
    :try_end_7
    .catch Lcom/android/ims/ImsException; {:try_start_7 .. :try_end_7} :catch_7

    goto/16 :goto_0

    .line 531
    .end local v2    # "ut":Lcom/android/ims/ImsUtInterface;
    :catch_7
    move-exception v18

    .line 532
    .restart local v18    # "e":Lcom/android/ims/ImsException;
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->sendGenericErrorResponse(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 537
    .end local v6    # "serviceClass":I
    .end local v18    # "e":Lcom/android/ims/ImsException;
    .end local v19    # "enable":Z
    .local v26, "resp":Landroid/os/Message;
    :pswitch_8
    const/4 v3, 0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    .end local v26    # "resp":Landroid/os/Message;
    check-cast v26, Landroid/os/Message;

    .line 540
    .local v26, "resp":Landroid/os/Message;
    :try_start_8
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v2

    .line 541
    .restart local v2    # "ut":Lcom/android/ims/ImsUtInterface;
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->getPhoneId()I

    move-result v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->setCSCurrentPhoneId(I)V

    .line 542
    invoke-interface {v2, v8}, Lcom/android/ims/ImsUtInterface;->queryCLIR(Landroid/os/Message;)V
    :try_end_8
    .catch Lcom/android/ims/ImsException; {:try_start_8 .. :try_end_8} :catch_8

    goto/16 :goto_0

    .line 543
    .end local v2    # "ut":Lcom/android/ims/ImsUtInterface;
    :catch_8
    move-exception v18

    .line 544
    .restart local v18    # "e":Lcom/android/ims/ImsException;
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->sendGenericErrorResponse(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 549
    .end local v18    # "e":Lcom/android/ims/ImsException;
    .local v26, "resp":Landroid/os/Message;
    :pswitch_9
    const/4 v3, 0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v23

    .line 550
    .local v23, "mode":I
    const/4 v3, 0x2

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    .end local v26    # "resp":Landroid/os/Message;
    check-cast v26, Landroid/os/Message;

    .line 553
    .local v26, "resp":Landroid/os/Message;
    :try_start_9
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v2

    .line 554
    .restart local v2    # "ut":Lcom/android/ims/ImsUtInterface;
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->getPhoneId()I

    move-result v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->setCSCurrentPhoneId(I)V

    .line 555
    move/from16 v0, v23

    invoke-interface {v2, v0, v8}, Lcom/android/ims/ImsUtInterface;->updateCLIR(ILandroid/os/Message;)V
    :try_end_9
    .catch Lcom/android/ims/ImsException; {:try_start_9 .. :try_end_9} :catch_9

    goto/16 :goto_0

    .line 556
    .end local v2    # "ut":Lcom/android/ims/ImsUtInterface;
    :catch_9
    move-exception v18

    .line 557
    .restart local v18    # "e":Lcom/android/ims/ImsException;
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->sendGenericErrorResponse(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 562
    .end local v18    # "e":Lcom/android/ims/ImsException;
    .end local v23    # "mode":I
    .local v26, "resp":Landroid/os/Message;
    :pswitch_a
    const/4 v3, 0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    .end local v26    # "resp":Landroid/os/Message;
    check-cast v26, Landroid/os/Message;

    .line 565
    .local v26, "resp":Landroid/os/Message;
    :try_start_a
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v2

    .line 566
    .restart local v2    # "ut":Lcom/android/ims/ImsUtInterface;
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->getPhoneId()I

    move-result v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->setCSCurrentPhoneId(I)V

    .line 567
    invoke-interface {v2, v8}, Lcom/android/ims/ImsUtInterface;->queryCLIP(Landroid/os/Message;)V
    :try_end_a
    .catch Lcom/android/ims/ImsException; {:try_start_a .. :try_end_a} :catch_a

    goto/16 :goto_0

    .line 568
    .end local v2    # "ut":Lcom/android/ims/ImsUtInterface;
    :catch_a
    move-exception v18

    .line 569
    .restart local v18    # "e":Lcom/android/ims/ImsException;
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->sendGenericErrorResponse(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 574
    .end local v18    # "e":Lcom/android/ims/ImsException;
    .local v26, "resp":Landroid/os/Message;
    :pswitch_b
    const/4 v3, 0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v23

    .line 575
    .restart local v23    # "mode":I
    const/4 v3, 0x2

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    .end local v26    # "resp":Landroid/os/Message;
    check-cast v26, Landroid/os/Message;

    .line 578
    .local v26, "resp":Landroid/os/Message;
    :try_start_b
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v2

    .line 579
    .restart local v2    # "ut":Lcom/android/ims/ImsUtInterface;
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->getPhoneId()I

    move-result v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->setCSCurrentPhoneId(I)V

    .line 580
    if-eqz v23, :cond_7

    const/4 v3, 0x1

    :goto_2
    invoke-interface {v2, v3, v8}, Lcom/android/ims/ImsUtInterface;->updateCLIP(ZLandroid/os/Message;)V
    :try_end_b
    .catch Lcom/android/ims/ImsException; {:try_start_b .. :try_end_b} :catch_b

    goto/16 :goto_0

    .line 581
    .end local v2    # "ut":Lcom/android/ims/ImsUtInterface;
    :catch_b
    move-exception v18

    .line 582
    .restart local v18    # "e":Lcom/android/ims/ImsException;
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->sendGenericErrorResponse(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 580
    .end local v18    # "e":Lcom/android/ims/ImsException;
    .restart local v2    # "ut":Lcom/android/ims/ImsUtInterface;
    :cond_7
    const/4 v3, 0x0

    goto :goto_2

    .line 587
    .end local v2    # "ut":Lcom/android/ims/ImsUtInterface;
    .end local v23    # "mode":I
    .local v26, "resp":Landroid/os/Message;
    :pswitch_c
    const/4 v3, 0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    .end local v26    # "resp":Landroid/os/Message;
    check-cast v26, Landroid/os/Message;

    .line 590
    .local v26, "resp":Landroid/os/Message;
    :try_start_c
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v2

    .line 591
    .restart local v2    # "ut":Lcom/android/ims/ImsUtInterface;
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->getPhoneId()I

    move-result v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->setCSCurrentPhoneId(I)V

    .line 592
    invoke-interface {v2, v8}, Lcom/android/ims/ImsUtInterface;->queryCOLR(Landroid/os/Message;)V
    :try_end_c
    .catch Lcom/android/ims/ImsException; {:try_start_c .. :try_end_c} :catch_c

    goto/16 :goto_0

    .line 593
    .end local v2    # "ut":Lcom/android/ims/ImsUtInterface;
    :catch_c
    move-exception v18

    .line 594
    .restart local v18    # "e":Lcom/android/ims/ImsException;
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->sendGenericErrorResponse(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 599
    .end local v18    # "e":Lcom/android/ims/ImsException;
    .local v26, "resp":Landroid/os/Message;
    :pswitch_d
    const/4 v3, 0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v23

    .line 600
    .restart local v23    # "mode":I
    const/4 v3, 0x2

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    .end local v26    # "resp":Landroid/os/Message;
    check-cast v26, Landroid/os/Message;

    .line 603
    .local v26, "resp":Landroid/os/Message;
    :try_start_d
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v2

    .line 604
    .restart local v2    # "ut":Lcom/android/ims/ImsUtInterface;
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->getPhoneId()I

    move-result v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->setCSCurrentPhoneId(I)V

    .line 605
    move/from16 v0, v23

    invoke-interface {v2, v0, v8}, Lcom/android/ims/ImsUtInterface;->updateCOLR(ILandroid/os/Message;)V
    :try_end_d
    .catch Lcom/android/ims/ImsException; {:try_start_d .. :try_end_d} :catch_d

    goto/16 :goto_0

    .line 606
    .end local v2    # "ut":Lcom/android/ims/ImsUtInterface;
    :catch_d
    move-exception v18

    .line 607
    .restart local v18    # "e":Lcom/android/ims/ImsException;
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->sendGenericErrorResponse(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 612
    .end local v18    # "e":Lcom/android/ims/ImsException;
    .end local v23    # "mode":I
    .local v26, "resp":Landroid/os/Message;
    :pswitch_e
    const/4 v3, 0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    .end local v26    # "resp":Landroid/os/Message;
    check-cast v26, Landroid/os/Message;

    .line 615
    .local v26, "resp":Landroid/os/Message;
    :try_start_e
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v2

    .line 616
    .restart local v2    # "ut":Lcom/android/ims/ImsUtInterface;
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->getPhoneId()I

    move-result v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->setCSCurrentPhoneId(I)V

    .line 617
    invoke-interface {v2, v8}, Lcom/android/ims/ImsUtInterface;->queryCOLP(Landroid/os/Message;)V
    :try_end_e
    .catch Lcom/android/ims/ImsException; {:try_start_e .. :try_end_e} :catch_e

    goto/16 :goto_0

    .line 618
    .end local v2    # "ut":Lcom/android/ims/ImsUtInterface;
    :catch_e
    move-exception v18

    .line 619
    .restart local v18    # "e":Lcom/android/ims/ImsException;
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->sendGenericErrorResponse(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 624
    .end local v18    # "e":Lcom/android/ims/ImsException;
    .local v26, "resp":Landroid/os/Message;
    :pswitch_f
    const/4 v3, 0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v23

    .line 625
    .restart local v23    # "mode":I
    const/4 v3, 0x2

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    .end local v26    # "resp":Landroid/os/Message;
    check-cast v26, Landroid/os/Message;

    .line 628
    .local v26, "resp":Landroid/os/Message;
    :try_start_f
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v2

    .line 629
    .restart local v2    # "ut":Lcom/android/ims/ImsUtInterface;
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->getPhoneId()I

    move-result v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->setCSCurrentPhoneId(I)V

    .line 630
    if-eqz v23, :cond_8

    const/4 v3, 0x1

    :goto_3
    invoke-interface {v2, v3, v8}, Lcom/android/ims/ImsUtInterface;->updateCOLP(ZLandroid/os/Message;)V
    :try_end_f
    .catch Lcom/android/ims/ImsException; {:try_start_f .. :try_end_f} :catch_f

    goto/16 :goto_0

    .line 631
    .end local v2    # "ut":Lcom/android/ims/ImsUtInterface;
    :catch_f
    move-exception v18

    .line 632
    .restart local v18    # "e":Lcom/android/ims/ImsException;
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->sendGenericErrorResponse(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 630
    .end local v18    # "e":Lcom/android/ims/ImsException;
    .restart local v2    # "ut":Lcom/android/ims/ImsUtInterface;
    :cond_8
    const/4 v3, 0x0

    goto :goto_3

    .line 366
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
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
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private setCSCurrentPhoneId(I)V
    .locals 3
    .param p1, "phoneId"    # I

    .prologue
    .line 1346
    const-string/jumbo v0, "SSDecisonMaker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setCSCurrentPhoneId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1347
    const-string/jumbo v0, "gsm.radio.ss.phoneid"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1345
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 3

    .prologue
    .line 147
    const-string/jumbo v1, "SSDecisonMaker"

    const-string/jumbo v2, "dispose."

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iget-object v1, p0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mSSHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 149
    .local v0, "looper":Landroid/os/Looper;
    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 146
    return-void
.end method

.method public getCLIP(Landroid/os/Message;)V
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 1301
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1302
    .local v0, "ssParmList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x9

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1303
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1304
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->send(Ljava/util/ArrayList;)V

    .line 1300
    return-void
.end method

.method public getCLIR(Landroid/os/Message;)V
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 1286
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1287
    .local v0, "ssParmList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x7

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1288
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1289
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->send(Ljava/util/ArrayList;)V

    .line 1285
    return-void
.end method

.method public getCOLP(Landroid/os/Message;)V
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 1331
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1332
    .local v0, "ssParmList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0xd

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1333
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1334
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->send(Ljava/util/ArrayList;)V

    .line 1330
    return-void
.end method

.method public getCOLR(Landroid/os/Message;)V
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 1316
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1317
    .local v0, "ssParmList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0xb

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1318
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1319
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->send(Ljava/util/ArrayList;)V

    .line 1315
    return-void
.end method

.method public queryCallForwardInTimeSlotStatus(IILandroid/os/Message;)V
    .locals 3
    .param p1, "cfReason"    # I
    .param p2, "serviceClass"    # I
    .param p3, "response"    # Landroid/os/Message;

    .prologue
    .line 1223
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1224
    .local v0, "ssParmList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0xf

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1225
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1226
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1227
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1228
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->send(Ljava/util/ArrayList;)V

    .line 1222
    return-void
.end method

.method public queryCallForwardStatus(IILjava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "cfReason"    # I
    .param p2, "serviceClass"    # I
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "response"    # Landroid/os/Message;

    .prologue
    .line 1198
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1199
    .local v0, "ssParmList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1200
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1201
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1202
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1203
    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1204
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->send(Ljava/util/ArrayList;)V

    .line 1197
    return-void
.end method

.method public queryCallWaiting(ILandroid/os/Message;)V
    .locals 3
    .param p1, "serviceClass"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 1269
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1270
    .local v0, "ssParmList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1271
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1272
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1273
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->send(Ljava/util/ArrayList;)V

    .line 1268
    return-void
.end method

.method public queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V
    .locals 3
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "serviceClass"    # I
    .param p4, "response"    # Landroid/os/Message;

    .prologue
    .line 1247
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1248
    .local v0, "ssParmList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1249
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1250
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1251
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1252
    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1253
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->send(Ljava/util/ArrayList;)V

    .line 1246
    return-void
.end method

.method send(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1352
    .local p1, "ssParmList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    iget-object v1, p0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mSSRequestHandler:Lcom/android/internal/telephony/SSRequestDecisionMaker$SSRequestHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1}, Lcom/android/internal/telephony/SSRequestDecisionMaker$SSRequestHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1353
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1350
    return-void
.end method

.method sendGenericErrorResponse(Landroid/os/Message;)V
    .locals 3
    .param p1, "onComplete"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x0

    .line 167
    const-string/jumbo v0, "SSDecisonMaker"

    const-string/jumbo v1, "sendErrorResponse"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    if-eqz p1, :cond_0

    .line 170
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 169
    invoke-static {p1, v2, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 171
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 166
    :cond_0
    return-void
.end method

.method public setCLIP(ILandroid/os/Message;)V
    .locals 3
    .param p1, "clipMode"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 1308
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1309
    .local v0, "ssParmList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1310
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1311
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1312
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->send(Ljava/util/ArrayList;)V

    .line 1307
    return-void
.end method

.method public setCLIR(ILandroid/os/Message;)V
    .locals 3
    .param p1, "clirMode"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 1293
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1294
    .local v0, "ssParmList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1295
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1296
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1297
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->send(Ljava/util/ArrayList;)V

    .line 1292
    return-void
.end method

.method public setCOLP(ILandroid/os/Message;)V
    .locals 3
    .param p1, "colpMode"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 1338
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1339
    .local v0, "ssParmList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0xe

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1340
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1341
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1342
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->send(Ljava/util/ArrayList;)V

    .line 1337
    return-void
.end method

.method public setCOLR(ILandroid/os/Message;)V
    .locals 3
    .param p1, "colrMode"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 1323
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1324
    .local v0, "ssParmList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0xc

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1325
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1326
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1327
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->send(Ljava/util/ArrayList;)V

    .line 1322
    return-void
.end method

.method public setCallForward(IIILjava/lang/String;ILandroid/os/Message;)V
    .locals 3
    .param p1, "action"    # I
    .param p2, "cfReason"    # I
    .param p3, "serviceClass"    # I
    .param p4, "number"    # Ljava/lang/String;
    .param p5, "timeSeconds"    # I
    .param p6, "response"    # Landroid/os/Message;

    .prologue
    .line 1210
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1211
    .local v0, "ssParmList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1212
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1213
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1214
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1215
    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1216
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1217
    invoke-virtual {v0, p6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1218
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->send(Ljava/util/ArrayList;)V

    .line 1208
    return-void
.end method

.method public setCallForwardInTimeSlot(IIILjava/lang/String;I[JLandroid/os/Message;)V
    .locals 3
    .param p1, "action"    # I
    .param p2, "cfReason"    # I
    .param p3, "serviceClass"    # I
    .param p4, "number"    # Ljava/lang/String;
    .param p5, "timeSeconds"    # I
    .param p6, "timeSlot"    # [J
    .param p7, "response"    # Landroid/os/Message;

    .prologue
    .line 1233
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1234
    .local v0, "ssParmList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1235
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1236
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1237
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1238
    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1239
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1240
    invoke-virtual {v0, p6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1241
    invoke-virtual {v0, p7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1242
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->send(Ljava/util/ArrayList;)V

    .line 1232
    return-void
.end method

.method public setCallWaiting(ZILandroid/os/Message;)V
    .locals 3
    .param p1, "enable"    # Z
    .param p2, "serviceClass"    # I
    .param p3, "response"    # Landroid/os/Message;

    .prologue
    .line 1277
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1278
    .local v0, "ssParmList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1279
    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1280
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1281
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1282
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->send(Ljava/util/ArrayList;)V

    .line 1276
    return-void
.end method

.method public setFacilityLock(Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;)V
    .locals 3
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "lockState"    # Z
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "serviceClass"    # I
    .param p5, "response"    # Landroid/os/Message;

    .prologue
    .line 1258
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1259
    .local v0, "ssParmList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1260
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1261
    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, p2}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1262
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1263
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1264
    invoke-virtual {v0, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1265
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->send(Ljava/util/ArrayList;)V

    .line 1257
    return-void
.end method
