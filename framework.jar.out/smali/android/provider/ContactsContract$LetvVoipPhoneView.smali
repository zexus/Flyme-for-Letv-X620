.class public final Landroid/provider/ContactsContract$LetvVoipPhoneView;
.super Ljava/lang/Object;
.source "ContactsContract.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Landroid/provider/ContactsContract$DataColumns;
.implements Landroid/provider/ContactsContract$ContactsColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/ContactsContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LetvVoipPhoneView"
.end annotation


# static fields
.field public static final CONTACT_ID:Ljava/lang/String; = "contact_id"

.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/phone_v2"

.field public static final DISPLAY_NAME:Ljava/lang/String; = "display_name"

.field public static final MIMETYPE:Ljava/lang/String; = "mimetype"

.field public static final PHONE_NUMBER:Ljava/lang/String; = "data1"

.field public static final SUPPORT_LETV_VIDEO_CALL:Ljava/lang/String; = "support_letv_video_call"

.field public static final UPDATE_TIMESTAMP:Ljava/lang/String; = "contact_last_updated_timestamp"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
