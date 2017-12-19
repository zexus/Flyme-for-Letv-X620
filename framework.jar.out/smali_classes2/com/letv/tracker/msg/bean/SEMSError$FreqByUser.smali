.class public final enum Lcom/letv/tracker/msg/bean/SEMSError$FreqByUser;
.super Ljava/lang/Enum;
.source "SEMSError.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/tracker/msg/bean/SEMSError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FreqByUser"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/letv/tracker/msg/bean/SEMSError$FreqByUser;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/letv/tracker/msg/bean/SEMSError$FreqByUser;

.field public static final enum LOW:Lcom/letv/tracker/msg/bean/SEMSError$FreqByUser;

.field public static final enum OFTEN:Lcom/letv/tracker/msg/bean/SEMSError$FreqByUser;

.field public static final enum ONLY_ONCE:Lcom/letv/tracker/msg/bean/SEMSError$FreqByUser;

.field public static final enum SONETIMES:Lcom/letv/tracker/msg/bean/SEMSError$FreqByUser;


# instance fields
.field private freqCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 172
    new-instance v0, Lcom/letv/tracker/msg/bean/SEMSError$FreqByUser;

    const-string/jumbo v1, "ONLY_ONCE"

    invoke-direct {v0, v1, v4, v3}, Lcom/letv/tracker/msg/bean/SEMSError$FreqByUser;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/letv/tracker/msg/bean/SEMSError$FreqByUser;->ONLY_ONCE:Lcom/letv/tracker/msg/bean/SEMSError$FreqByUser;

    .line 173
    new-instance v0, Lcom/letv/tracker/msg/bean/SEMSError$FreqByUser;

    const-string/jumbo v1, "LOW"

    const/16 v2, 0x28

    invoke-direct {v0, v1, v3, v2}, Lcom/letv/tracker/msg/bean/SEMSError$FreqByUser;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/letv/tracker/msg/bean/SEMSError$FreqByUser;->LOW:Lcom/letv/tracker/msg/bean/SEMSError$FreqByUser;

    .line 174
    new-instance v0, Lcom/letv/tracker/msg/bean/SEMSError$FreqByUser;

    const-string/jumbo v1, "SONETIMES"

    const/16 v2, 0x3c

    invoke-direct {v0, v1, v5, v2}, Lcom/letv/tracker/msg/bean/SEMSError$FreqByUser;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/letv/tracker/msg/bean/SEMSError$FreqByUser;->SONETIMES:Lcom/letv/tracker/msg/bean/SEMSError$FreqByUser;

    .line 175
    new-instance v0, Lcom/letv/tracker/msg/bean/SEMSError$FreqByUser;

    const-string/jumbo v1, "OFTEN"

    const/16 v2, 0x50

    invoke-direct {v0, v1, v6, v2}, Lcom/letv/tracker/msg/bean/SEMSError$FreqByUser;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/letv/tracker/msg/bean/SEMSError$FreqByUser;->OFTEN:Lcom/letv/tracker/msg/bean/SEMSError$FreqByUser;

    const/4 v0, 0x4

    .line 171
    new-array v0, v0, [Lcom/letv/tracker/msg/bean/SEMSError$FreqByUser;

    sget-object v1, Lcom/letv/tracker/msg/bean/SEMSError$FreqByUser;->ONLY_ONCE:Lcom/letv/tracker/msg/bean/SEMSError$FreqByUser;

    aput-object v1, v0, v4

    sget-object v1, Lcom/letv/tracker/msg/bean/SEMSError$FreqByUser;->LOW:Lcom/letv/tracker/msg/bean/SEMSError$FreqByUser;

    aput-object v1, v0, v3

    sget-object v1, Lcom/letv/tracker/msg/bean/SEMSError$FreqByUser;->SONETIMES:Lcom/letv/tracker/msg/bean/SEMSError$FreqByUser;

    aput-object v1, v0, v5

    sget-object v1, Lcom/letv/tracker/msg/bean/SEMSError$FreqByUser;->OFTEN:Lcom/letv/tracker/msg/bean/SEMSError$FreqByUser;

    aput-object v1, v0, v6

    sput-object v0, Lcom/letv/tracker/msg/bean/SEMSError$FreqByUser;->$VALUES:[Lcom/letv/tracker/msg/bean/SEMSError$FreqByUser;

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
    .line 188
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 189
    iput p3, p0, Lcom/letv/tracker/msg/bean/SEMSError$FreqByUser;->freqCode:I

    .line 190
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/letv/tracker/msg/bean/SEMSError$FreqByUser;
    .locals 1

    .prologue
    const-class v0, Lcom/letv/tracker/msg/bean/SEMSError$FreqByUser;

    .line 171
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/letv/tracker/msg/bean/SEMSError$FreqByUser;

    return-object v0
.end method

.method public static values()[Lcom/letv/tracker/msg/bean/SEMSError$FreqByUser;
    .locals 1

    .prologue
    .line 171
    sget-object v0, Lcom/letv/tracker/msg/bean/SEMSError$FreqByUser;->$VALUES:[Lcom/letv/tracker/msg/bean/SEMSError$FreqByUser;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/letv/tracker/msg/bean/SEMSError$FreqByUser;

    return-object v0
.end method


# virtual methods
.method public getFreqCode()I
    .locals 1

    .prologue
    .line 198
    iget v0, p0, Lcom/letv/tracker/msg/bean/SEMSError$FreqByUser;->freqCode:I

    return v0
.end method
