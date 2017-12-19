.class public final enum Lcom/letv/tracker/enums/TriggerSourceType;
.super Ljava/lang/Enum;
.source "TriggerSourceType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/letv/tracker/enums/TriggerSourceType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/letv/tracker/enums/TriggerSourceType;

.field public static final enum APP:Lcom/letv/tracker/enums/TriggerSourceType;

.field public static final enum SYS:Lcom/letv/tracker/enums/TriggerSourceType;


# instance fields
.field private id:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 4
    new-instance v0, Lcom/letv/tracker/enums/TriggerSourceType;

    const-string/jumbo v1, "APP"

    const-string/jumbo v2, "app"

    invoke-direct {v0, v1, v3, v2}, Lcom/letv/tracker/enums/TriggerSourceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/TriggerSourceType;->APP:Lcom/letv/tracker/enums/TriggerSourceType;

    .line 5
    new-instance v0, Lcom/letv/tracker/enums/TriggerSourceType;

    const-string/jumbo v1, "SYS"

    const-string/jumbo v2, "sys"

    invoke-direct {v0, v1, v4, v2}, Lcom/letv/tracker/enums/TriggerSourceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/TriggerSourceType;->SYS:Lcom/letv/tracker/enums/TriggerSourceType;

    const/4 v0, 0x2

    .line 3
    new-array v0, v0, [Lcom/letv/tracker/enums/TriggerSourceType;

    sget-object v1, Lcom/letv/tracker/enums/TriggerSourceType;->APP:Lcom/letv/tracker/enums/TriggerSourceType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/letv/tracker/enums/TriggerSourceType;->SYS:Lcom/letv/tracker/enums/TriggerSourceType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/letv/tracker/enums/TriggerSourceType;->$VALUES:[Lcom/letv/tracker/enums/TriggerSourceType;

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
    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 10
    iput-object p3, p0, Lcom/letv/tracker/enums/TriggerSourceType;->id:Ljava/lang/String;

    .line 11
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/letv/tracker/enums/TriggerSourceType;
    .locals 1

    .prologue
    const-class v0, Lcom/letv/tracker/enums/TriggerSourceType;

    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/letv/tracker/enums/TriggerSourceType;

    return-object v0
.end method

.method public static values()[Lcom/letv/tracker/enums/TriggerSourceType;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/letv/tracker/enums/TriggerSourceType;->$VALUES:[Lcom/letv/tracker/enums/TriggerSourceType;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/letv/tracker/enums/TriggerSourceType;

    return-object v0
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/letv/tracker/enums/TriggerSourceType;->id:Ljava/lang/String;

    return-object v0
.end method
