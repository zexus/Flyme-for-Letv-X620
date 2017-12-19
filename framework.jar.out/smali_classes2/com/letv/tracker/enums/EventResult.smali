.class public final enum Lcom/letv/tracker/enums/EventResult;
.super Ljava/lang/Enum;
.source "EventResult.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/letv/tracker/enums/EventResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/letv/tracker/enums/EventResult;

.field public static final enum Cancel:Lcom/letv/tracker/enums/EventResult;

.field public static final enum Failed:Lcom/letv/tracker/enums/EventResult;

.field public static final enum Success:Lcom/letv/tracker/enums/EventResult;


# instance fields
.field private id:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 4
    new-instance v0, Lcom/letv/tracker/enums/EventResult;

    const-string/jumbo v1, "Success"

    const-string/jumbo v2, "0"

    invoke-direct {v0, v1, v3, v2}, Lcom/letv/tracker/enums/EventResult;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/EventResult;->Success:Lcom/letv/tracker/enums/EventResult;

    .line 5
    new-instance v0, Lcom/letv/tracker/enums/EventResult;

    const-string/jumbo v1, "Failed"

    const-string/jumbo v2, "1"

    invoke-direct {v0, v1, v4, v2}, Lcom/letv/tracker/enums/EventResult;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/EventResult;->Failed:Lcom/letv/tracker/enums/EventResult;

    .line 6
    new-instance v0, Lcom/letv/tracker/enums/EventResult;

    const-string/jumbo v1, "Cancel"

    const-string/jumbo v2, "2"

    invoke-direct {v0, v1, v5, v2}, Lcom/letv/tracker/enums/EventResult;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/EventResult;->Cancel:Lcom/letv/tracker/enums/EventResult;

    const/4 v0, 0x3

    .line 3
    new-array v0, v0, [Lcom/letv/tracker/enums/EventResult;

    sget-object v1, Lcom/letv/tracker/enums/EventResult;->Success:Lcom/letv/tracker/enums/EventResult;

    aput-object v1, v0, v3

    sget-object v1, Lcom/letv/tracker/enums/EventResult;->Failed:Lcom/letv/tracker/enums/EventResult;

    aput-object v1, v0, v4

    sget-object v1, Lcom/letv/tracker/enums/EventResult;->Cancel:Lcom/letv/tracker/enums/EventResult;

    aput-object v1, v0, v5

    sput-object v0, Lcom/letv/tracker/enums/EventResult;->$VALUES:[Lcom/letv/tracker/enums/EventResult;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 11
    iput-object p3, p0, Lcom/letv/tracker/enums/EventResult;->id:Ljava/lang/String;

    .line 12
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/letv/tracker/enums/EventResult;
    .locals 1

    .prologue
    const-class v0, Lcom/letv/tracker/enums/EventResult;

    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/letv/tracker/enums/EventResult;

    return-object v0
.end method

.method public static values()[Lcom/letv/tracker/enums/EventResult;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/letv/tracker/enums/EventResult;->$VALUES:[Lcom/letv/tracker/enums/EventResult;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/letv/tracker/enums/EventResult;

    return-object v0
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/letv/tracker/enums/EventResult;->id:Ljava/lang/String;

    return-object v0
.end method
