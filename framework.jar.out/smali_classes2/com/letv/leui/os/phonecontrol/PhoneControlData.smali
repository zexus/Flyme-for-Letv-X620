.class public Lcom/letv/leui/os/phonecontrol/PhoneControlData;
.super Ljava/lang/Object;
.source "PhoneControlData.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/leui/os/phonecontrol/PhoneControlData$1;
    }
.end annotation


# static fields
.field public static final CONTROL_STATUS_BIND:I = 0x0

.field public static final CONTROL_STATUS_BIND_BIND:I = 0x1

.field public static final CONTROL_STATUS_BIND_UNBIND:I = 0x0

.field public static final CONTROL_STATUS_LOCK:I = 0x1

.field public static final CONTROL_STATUS_LOCK_LOCKED:I = 0x1

.field public static final CONTROL_STATUS_LOCK_UNLOCK:I = 0x0

.field public static final CONTROL_STATUS_WIPE:I = 0x2

.field public static final CONTROL_STATUS_WIPE_UNWIPE:I = 0x0

.field public static final CONTROL_STATUS_WIPE_WIPE:I = 0x2

.field public static final CONTROL_STATUS_WIPE_WIPING:I = 0x1

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/letv/leui/os/phonecontrol/PhoneControlData;",
            ">;"
        }
    .end annotation
.end field

.field public static final PHONE_STATUS_ACTIVATE:I = 0x3

.field public static final PHONE_STATUS_ACTIVATE_ACTIVATE:I = 0x1

.field public static final PHONE_STATUS_ACTIVATE_INIT:I = 0x0

.field public static final PHONE_STATUS_ACTIVATE_INVALID:I = 0x3e7

.field public static final PHONE_STATUS_ACTIVATE_TIMER:I = 0x2

.field public static final UNLOCKPHONE_ERROR_COUNT_LIMIT:I = 0x6

.field public static final UNLOCKPHONE_ERROR_NO_NETWORK:I = 0x3

.field public static final UNLOCKPHONE_ERROR_PSW:I = 0x5

.field public static final UNLOCKPHONE_ERROR_SERVICE_NO_READY:I = 0x4

.field public static final UNLOCKPHONE_ERROR_UNKNOWN:I = 0x0

.field public static final UNLOCKPHONE_SERVER_ERROR:I = 0x2

.field public static final UNLOCKPHONE_SUCCESS:I = 0x1


# instance fields
.field public mDescribe:Ljava/lang/String;

.field public final mResultCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 77
    new-instance v0, Lcom/letv/leui/os/phonecontrol/PhoneControlData$1;

    invoke-direct {v0}, Lcom/letv/leui/os/phonecontrol/PhoneControlData$1;-><init>()V

    sput-object v0, Lcom/letv/leui/os/phonecontrol/PhoneControlData;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 13
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "resultCode"    # I
    .param p2, "describe"    # Ljava/lang/String;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput p1, p0, Lcom/letv/leui/os/phonecontrol/PhoneControlData;->mResultCode:I

    .line 52
    iput-object p2, p0, Lcom/letv/leui/os/phonecontrol/PhoneControlData;->mDescribe:Ljava/lang/String;

    .line 50
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 56
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 57
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string/jumbo v1, "PhoneControlData: {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 58
    const-string/jumbo v1, "ResultCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 59
    iget v1, p0, Lcom/letv/leui/os/phonecontrol/PhoneControlData;->mResultCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 60
    const-string/jumbo v1, "Describe: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 61
    iget-object v1, p0, Lcom/letv/leui/os/phonecontrol/PhoneControlData;->mDescribe:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 62
    const-string/jumbo v1, "} "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 63
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 68
    iget v0, p0, Lcom/letv/leui/os/phonecontrol/PhoneControlData;->mResultCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 69
    iget-object v0, p0, Lcom/letv/leui/os/phonecontrol/PhoneControlData;->mDescribe:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 67
    return-void
.end method
