.class public final enum Lcom/letv/tracker/msg/bean/SEMSError$Type;
.super Ljava/lang/Enum;
.source "SEMSError.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/tracker/msg/bean/SEMSError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/letv/tracker/msg/bean/SEMSError$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/letv/tracker/msg/bean/SEMSError$Type;

.field public static final enum APP_ANR:Lcom/letv/tracker/msg/bean/SEMSError$Type;

.field public static final enum APP_FORCE_CLOSE:Lcom/letv/tracker/msg/bean/SEMSError$Type;

.field public static final enum AP_KERNEL_PANIC:Lcom/letv/tracker/msg/bean/SEMSError$Type;

.field public static final enum ATCMD_FEEDBACK_ERROR:Lcom/letv/tracker/msg/bean/SEMSError$Type;

.field public static final enum CP_ASSERT_TYPE:Lcom/letv/tracker/msg/bean/SEMSError$Type;

.field public static final enum FD_LEAK:Lcom/letv/tracker/msg/bean/SEMSError$Type;

.field public static final enum NATIVE_CRASH:Lcom/letv/tracker/msg/bean/SEMSError$Type;

.field public static final enum OOM:Lcom/letv/tracker/msg/bean/SEMSError$Type;

.field public static final enum OTHERS:Lcom/letv/tracker/msg/bean/SEMSError$Type;

.field public static final enum RILD_ERROR:Lcom/letv/tracker/msg/bean/SEMSError$Type;

.field public static final enum RILD_RESTART:Lcom/letv/tracker/msg/bean/SEMSError$Type;

.field public static final enum SERVICE_DEAD:Lcom/letv/tracker/msg/bean/SEMSError$Type;

.field public static final enum SYSTEM_RESTART:Lcom/letv/tracker/msg/bean/SEMSError$Type;

.field public static final enum SYSTEM_WATCHDOG:Lcom/letv/tracker/msg/bean/SEMSError$Type;

.field public static final enum USER_SUBMIT:Lcom/letv/tracker/msg/bean/SEMSError$Type;


# instance fields
.field private errorCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 23
    new-instance v0, Lcom/letv/tracker/msg/bean/SEMSError$Type;

    const-string/jumbo v1, "OTHERS"

    invoke-direct {v0, v1, v4, v4}, Lcom/letv/tracker/msg/bean/SEMSError$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/letv/tracker/msg/bean/SEMSError$Type;->OTHERS:Lcom/letv/tracker/msg/bean/SEMSError$Type;

    .line 24
    new-instance v0, Lcom/letv/tracker/msg/bean/SEMSError$Type;

    const-string/jumbo v1, "CP_ASSERT_TYPE"

    invoke-direct {v0, v1, v5, v5}, Lcom/letv/tracker/msg/bean/SEMSError$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/letv/tracker/msg/bean/SEMSError$Type;->CP_ASSERT_TYPE:Lcom/letv/tracker/msg/bean/SEMSError$Type;

    .line 25
    new-instance v0, Lcom/letv/tracker/msg/bean/SEMSError$Type;

    const-string/jumbo v1, "RILD_ERROR"

    invoke-direct {v0, v1, v6, v6}, Lcom/letv/tracker/msg/bean/SEMSError$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/letv/tracker/msg/bean/SEMSError$Type;->RILD_ERROR:Lcom/letv/tracker/msg/bean/SEMSError$Type;

    .line 26
    new-instance v0, Lcom/letv/tracker/msg/bean/SEMSError$Type;

    const-string/jumbo v1, "ATCMD_FEEDBACK_ERROR"

    invoke-direct {v0, v1, v7, v7}, Lcom/letv/tracker/msg/bean/SEMSError$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/letv/tracker/msg/bean/SEMSError$Type;->ATCMD_FEEDBACK_ERROR:Lcom/letv/tracker/msg/bean/SEMSError$Type;

    .line 27
    new-instance v0, Lcom/letv/tracker/msg/bean/SEMSError$Type;

    const-string/jumbo v1, "RILD_RESTART"

    invoke-direct {v0, v1, v8, v8}, Lcom/letv/tracker/msg/bean/SEMSError$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/letv/tracker/msg/bean/SEMSError$Type;->RILD_RESTART:Lcom/letv/tracker/msg/bean/SEMSError$Type;

    .line 28
    new-instance v0, Lcom/letv/tracker/msg/bean/SEMSError$Type;

    const-string/jumbo v1, "AP_KERNEL_PANIC"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/tracker/msg/bean/SEMSError$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/letv/tracker/msg/bean/SEMSError$Type;->AP_KERNEL_PANIC:Lcom/letv/tracker/msg/bean/SEMSError$Type;

    .line 29
    new-instance v0, Lcom/letv/tracker/msg/bean/SEMSError$Type;

    const-string/jumbo v1, "APP_FORCE_CLOSE"

    const/4 v2, 0x6

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/tracker/msg/bean/SEMSError$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/letv/tracker/msg/bean/SEMSError$Type;->APP_FORCE_CLOSE:Lcom/letv/tracker/msg/bean/SEMSError$Type;

    .line 30
    new-instance v0, Lcom/letv/tracker/msg/bean/SEMSError$Type;

    const-string/jumbo v1, "APP_ANR"

    const/4 v2, 0x7

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/tracker/msg/bean/SEMSError$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/letv/tracker/msg/bean/SEMSError$Type;->APP_ANR:Lcom/letv/tracker/msg/bean/SEMSError$Type;

    .line 31
    new-instance v0, Lcom/letv/tracker/msg/bean/SEMSError$Type;

    const-string/jumbo v1, "SERVICE_DEAD"

    const/16 v2, 0x8

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/tracker/msg/bean/SEMSError$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/letv/tracker/msg/bean/SEMSError$Type;->SERVICE_DEAD:Lcom/letv/tracker/msg/bean/SEMSError$Type;

    .line 32
    new-instance v0, Lcom/letv/tracker/msg/bean/SEMSError$Type;

    const-string/jumbo v1, "OOM"

    const/16 v2, 0x9

    const/16 v3, 0x9

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/tracker/msg/bean/SEMSError$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/letv/tracker/msg/bean/SEMSError$Type;->OOM:Lcom/letv/tracker/msg/bean/SEMSError$Type;

    .line 33
    new-instance v0, Lcom/letv/tracker/msg/bean/SEMSError$Type;

    const-string/jumbo v1, "FD_LEAK"

    const/16 v2, 0xa

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/tracker/msg/bean/SEMSError$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/letv/tracker/msg/bean/SEMSError$Type;->FD_LEAK:Lcom/letv/tracker/msg/bean/SEMSError$Type;

    .line 34
    new-instance v0, Lcom/letv/tracker/msg/bean/SEMSError$Type;

    const-string/jumbo v1, "NATIVE_CRASH"

    const/16 v2, 0xb

    const/16 v3, 0xb

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/tracker/msg/bean/SEMSError$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/letv/tracker/msg/bean/SEMSError$Type;->NATIVE_CRASH:Lcom/letv/tracker/msg/bean/SEMSError$Type;

    .line 35
    new-instance v0, Lcom/letv/tracker/msg/bean/SEMSError$Type;

    const-string/jumbo v1, "SYSTEM_WATCHDOG"

    const/16 v2, 0xc

    const/16 v3, 0xc

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/tracker/msg/bean/SEMSError$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/letv/tracker/msg/bean/SEMSError$Type;->SYSTEM_WATCHDOG:Lcom/letv/tracker/msg/bean/SEMSError$Type;

    .line 36
    new-instance v0, Lcom/letv/tracker/msg/bean/SEMSError$Type;

    const-string/jumbo v1, "SYSTEM_RESTART"

    const/16 v2, 0xd

    const/16 v3, 0xd

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/tracker/msg/bean/SEMSError$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/letv/tracker/msg/bean/SEMSError$Type;->SYSTEM_RESTART:Lcom/letv/tracker/msg/bean/SEMSError$Type;

    .line 37
    new-instance v0, Lcom/letv/tracker/msg/bean/SEMSError$Type;

    const-string/jumbo v1, "USER_SUBMIT"

    const/16 v2, 0xe

    const/16 v3, 0xe

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/tracker/msg/bean/SEMSError$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/letv/tracker/msg/bean/SEMSError$Type;->USER_SUBMIT:Lcom/letv/tracker/msg/bean/SEMSError$Type;

    const/16 v0, 0xf

    .line 22
    new-array v0, v0, [Lcom/letv/tracker/msg/bean/SEMSError$Type;

    sget-object v1, Lcom/letv/tracker/msg/bean/SEMSError$Type;->OTHERS:Lcom/letv/tracker/msg/bean/SEMSError$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/letv/tracker/msg/bean/SEMSError$Type;->CP_ASSERT_TYPE:Lcom/letv/tracker/msg/bean/SEMSError$Type;

    aput-object v1, v0, v5

    sget-object v1, Lcom/letv/tracker/msg/bean/SEMSError$Type;->RILD_ERROR:Lcom/letv/tracker/msg/bean/SEMSError$Type;

    aput-object v1, v0, v6

    sget-object v1, Lcom/letv/tracker/msg/bean/SEMSError$Type;->ATCMD_FEEDBACK_ERROR:Lcom/letv/tracker/msg/bean/SEMSError$Type;

    aput-object v1, v0, v7

    sget-object v1, Lcom/letv/tracker/msg/bean/SEMSError$Type;->RILD_RESTART:Lcom/letv/tracker/msg/bean/SEMSError$Type;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/letv/tracker/msg/bean/SEMSError$Type;->AP_KERNEL_PANIC:Lcom/letv/tracker/msg/bean/SEMSError$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/letv/tracker/msg/bean/SEMSError$Type;->APP_FORCE_CLOSE:Lcom/letv/tracker/msg/bean/SEMSError$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/letv/tracker/msg/bean/SEMSError$Type;->APP_ANR:Lcom/letv/tracker/msg/bean/SEMSError$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/letv/tracker/msg/bean/SEMSError$Type;->SERVICE_DEAD:Lcom/letv/tracker/msg/bean/SEMSError$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/letv/tracker/msg/bean/SEMSError$Type;->OOM:Lcom/letv/tracker/msg/bean/SEMSError$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/letv/tracker/msg/bean/SEMSError$Type;->FD_LEAK:Lcom/letv/tracker/msg/bean/SEMSError$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/letv/tracker/msg/bean/SEMSError$Type;->NATIVE_CRASH:Lcom/letv/tracker/msg/bean/SEMSError$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/letv/tracker/msg/bean/SEMSError$Type;->SYSTEM_WATCHDOG:Lcom/letv/tracker/msg/bean/SEMSError$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/letv/tracker/msg/bean/SEMSError$Type;->SYSTEM_RESTART:Lcom/letv/tracker/msg/bean/SEMSError$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/letv/tracker/msg/bean/SEMSError$Type;->USER_SUBMIT:Lcom/letv/tracker/msg/bean/SEMSError$Type;

    aput-object v2, v0, v1

    sput-object v0, Lcom/letv/tracker/msg/bean/SEMSError$Type;->$VALUES:[Lcom/letv/tracker/msg/bean/SEMSError$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 51
    iput p3, p0, Lcom/letv/tracker/msg/bean/SEMSError$Type;->errorCode:I

    .line 52
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/letv/tracker/msg/bean/SEMSError$Type;
    .locals 1

    .prologue
    const-class v0, Lcom/letv/tracker/msg/bean/SEMSError$Type;

    .line 22
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/letv/tracker/msg/bean/SEMSError$Type;

    return-object v0
.end method

.method public static values()[Lcom/letv/tracker/msg/bean/SEMSError$Type;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/letv/tracker/msg/bean/SEMSError$Type;->$VALUES:[Lcom/letv/tracker/msg/bean/SEMSError$Type;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/letv/tracker/msg/bean/SEMSError$Type;

    return-object v0
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/letv/tracker/msg/bean/SEMSError$Type;->errorCode:I

    return v0
.end method
