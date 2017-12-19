.class public final enum Lcom/letv/tracker/msg/bean/SEMSError$TypeByUser;
.super Ljava/lang/Enum;
.source "SEMSError.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/tracker/msg/bean/SEMSError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TypeByUser"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/letv/tracker/msg/bean/SEMSError$TypeByUser;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/letv/tracker/msg/bean/SEMSError$TypeByUser;

.field public static final enum DESIGN_DISADVANTAGE:Lcom/letv/tracker/msg/bean/SEMSError$TypeByUser;

.field public static final enum FORCE_EXIT:Lcom/letv/tracker/msg/bean/SEMSError$TypeByUser;

.field public static final enum FUNCTIONAL_DEFECTS:Lcom/letv/tracker/msg/bean/SEMSError$TypeByUser;

.field public static final enum LOSE_DATA:Lcom/letv/tracker/msg/bean/SEMSError$TypeByUser;

.field public static final enum NO_RESPONSE:Lcom/letv/tracker/msg/bean/SEMSError$TypeByUser;

.field public static final enum OTHERS:Lcom/letv/tracker/msg/bean/SEMSError$TypeByUser;

.field public static final enum SLOW_RESPONSE:Lcom/letv/tracker/msg/bean/SEMSError$TypeByUser;

.field public static final enum SUGGESTION:Lcom/letv/tracker/msg/bean/SEMSError$TypeByUser;


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

    .line 134
    new-instance v0, Lcom/letv/tracker/msg/bean/SEMSError$TypeByUser;

    const-string/jumbo v1, "SLOW_RESPONSE"

    invoke-direct {v0, v1, v4, v5}, Lcom/letv/tracker/msg/bean/SEMSError$TypeByUser;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/letv/tracker/msg/bean/SEMSError$TypeByUser;->SLOW_RESPONSE:Lcom/letv/tracker/msg/bean/SEMSError$TypeByUser;

    .line 135
    new-instance v0, Lcom/letv/tracker/msg/bean/SEMSError$TypeByUser;

    const-string/jumbo v1, "NO_RESPONSE"

    invoke-direct {v0, v1, v5, v6}, Lcom/letv/tracker/msg/bean/SEMSError$TypeByUser;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/letv/tracker/msg/bean/SEMSError$TypeByUser;->NO_RESPONSE:Lcom/letv/tracker/msg/bean/SEMSError$TypeByUser;

    .line 136
    new-instance v0, Lcom/letv/tracker/msg/bean/SEMSError$TypeByUser;

    const-string/jumbo v1, "FORCE_EXIT"

    invoke-direct {v0, v1, v6, v7}, Lcom/letv/tracker/msg/bean/SEMSError$TypeByUser;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/letv/tracker/msg/bean/SEMSError$TypeByUser;->FORCE_EXIT:Lcom/letv/tracker/msg/bean/SEMSError$TypeByUser;

    .line 137
    new-instance v0, Lcom/letv/tracker/msg/bean/SEMSError$TypeByUser;

    const-string/jumbo v1, "LOSE_DATA"

    invoke-direct {v0, v1, v7, v8}, Lcom/letv/tracker/msg/bean/SEMSError$TypeByUser;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/letv/tracker/msg/bean/SEMSError$TypeByUser;->LOSE_DATA:Lcom/letv/tracker/msg/bean/SEMSError$TypeByUser;

    .line 138
    new-instance v0, Lcom/letv/tracker/msg/bean/SEMSError$TypeByUser;

    const-string/jumbo v1, "FUNCTIONAL_DEFECTS"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v8, v2}, Lcom/letv/tracker/msg/bean/SEMSError$TypeByUser;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/letv/tracker/msg/bean/SEMSError$TypeByUser;->FUNCTIONAL_DEFECTS:Lcom/letv/tracker/msg/bean/SEMSError$TypeByUser;

    .line 139
    new-instance v0, Lcom/letv/tracker/msg/bean/SEMSError$TypeByUser;

    const-string/jumbo v1, "DESIGN_DISADVANTAGE"

    const/4 v2, 0x5

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/tracker/msg/bean/SEMSError$TypeByUser;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/letv/tracker/msg/bean/SEMSError$TypeByUser;->DESIGN_DISADVANTAGE:Lcom/letv/tracker/msg/bean/SEMSError$TypeByUser;

    .line 140
    new-instance v0, Lcom/letv/tracker/msg/bean/SEMSError$TypeByUser;

    const-string/jumbo v1, "SUGGESTION"

    const/4 v2, 0x6

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/tracker/msg/bean/SEMSError$TypeByUser;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/letv/tracker/msg/bean/SEMSError$TypeByUser;->SUGGESTION:Lcom/letv/tracker/msg/bean/SEMSError$TypeByUser;

    .line 141
    new-instance v0, Lcom/letv/tracker/msg/bean/SEMSError$TypeByUser;

    const-string/jumbo v1, "OTHERS"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v4}, Lcom/letv/tracker/msg/bean/SEMSError$TypeByUser;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/letv/tracker/msg/bean/SEMSError$TypeByUser;->OTHERS:Lcom/letv/tracker/msg/bean/SEMSError$TypeByUser;

    const/16 v0, 0x8

    .line 133
    new-array v0, v0, [Lcom/letv/tracker/msg/bean/SEMSError$TypeByUser;

    sget-object v1, Lcom/letv/tracker/msg/bean/SEMSError$TypeByUser;->SLOW_RESPONSE:Lcom/letv/tracker/msg/bean/SEMSError$TypeByUser;

    aput-object v1, v0, v4

    sget-object v1, Lcom/letv/tracker/msg/bean/SEMSError$TypeByUser;->NO_RESPONSE:Lcom/letv/tracker/msg/bean/SEMSError$TypeByUser;

    aput-object v1, v0, v5

    sget-object v1, Lcom/letv/tracker/msg/bean/SEMSError$TypeByUser;->FORCE_EXIT:Lcom/letv/tracker/msg/bean/SEMSError$TypeByUser;

    aput-object v1, v0, v6

    sget-object v1, Lcom/letv/tracker/msg/bean/SEMSError$TypeByUser;->LOSE_DATA:Lcom/letv/tracker/msg/bean/SEMSError$TypeByUser;

    aput-object v1, v0, v7

    sget-object v1, Lcom/letv/tracker/msg/bean/SEMSError$TypeByUser;->FUNCTIONAL_DEFECTS:Lcom/letv/tracker/msg/bean/SEMSError$TypeByUser;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/letv/tracker/msg/bean/SEMSError$TypeByUser;->DESIGN_DISADVANTAGE:Lcom/letv/tracker/msg/bean/SEMSError$TypeByUser;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/letv/tracker/msg/bean/SEMSError$TypeByUser;->SUGGESTION:Lcom/letv/tracker/msg/bean/SEMSError$TypeByUser;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/letv/tracker/msg/bean/SEMSError$TypeByUser;->OTHERS:Lcom/letv/tracker/msg/bean/SEMSError$TypeByUser;

    aput-object v2, v0, v1

    sput-object v0, Lcom/letv/tracker/msg/bean/SEMSError$TypeByUser;->$VALUES:[Lcom/letv/tracker/msg/bean/SEMSError$TypeByUser;

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
    .line 154
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 155
    iput p3, p0, Lcom/letv/tracker/msg/bean/SEMSError$TypeByUser;->errorCode:I

    .line 156
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/letv/tracker/msg/bean/SEMSError$TypeByUser;
    .locals 1

    .prologue
    const-class v0, Lcom/letv/tracker/msg/bean/SEMSError$TypeByUser;

    .line 133
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/letv/tracker/msg/bean/SEMSError$TypeByUser;

    return-object v0
.end method

.method public static values()[Lcom/letv/tracker/msg/bean/SEMSError$TypeByUser;
    .locals 1

    .prologue
    .line 133
    sget-object v0, Lcom/letv/tracker/msg/bean/SEMSError$TypeByUser;->$VALUES:[Lcom/letv/tracker/msg/bean/SEMSError$TypeByUser;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/letv/tracker/msg/bean/SEMSError$TypeByUser;

    return-object v0
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    .prologue
    .line 164
    iget v0, p0, Lcom/letv/tracker/msg/bean/SEMSError$TypeByUser;->errorCode:I

    return v0
.end method
