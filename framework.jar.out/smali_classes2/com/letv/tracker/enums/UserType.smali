.class public final enum Lcom/letv/tracker/enums/UserType;
.super Ljava/lang/Enum;
.source "UserType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/letv/tracker/enums/UserType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/letv/tracker/enums/UserType;

.field public static final enum Child:Lcom/letv/tracker/enums/UserType;

.field public static final enum Female:Lcom/letv/tracker/enums/UserType;

.field public static final enum Male:Lcom/letv/tracker/enums/UserType;


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
    new-instance v0, Lcom/letv/tracker/enums/UserType;

    const-string/jumbo v1, "Male"

    const-string/jumbo v2, "male"

    invoke-direct {v0, v1, v3, v2}, Lcom/letv/tracker/enums/UserType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/UserType;->Male:Lcom/letv/tracker/enums/UserType;

    .line 5
    new-instance v0, Lcom/letv/tracker/enums/UserType;

    const-string/jumbo v1, "Female"

    const-string/jumbo v2, "female"

    invoke-direct {v0, v1, v4, v2}, Lcom/letv/tracker/enums/UserType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/UserType;->Female:Lcom/letv/tracker/enums/UserType;

    .line 6
    new-instance v0, Lcom/letv/tracker/enums/UserType;

    const-string/jumbo v1, "Child"

    const-string/jumbo v2, "child"

    invoke-direct {v0, v1, v5, v2}, Lcom/letv/tracker/enums/UserType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/UserType;->Child:Lcom/letv/tracker/enums/UserType;

    const/4 v0, 0x3

    .line 3
    new-array v0, v0, [Lcom/letv/tracker/enums/UserType;

    sget-object v1, Lcom/letv/tracker/enums/UserType;->Male:Lcom/letv/tracker/enums/UserType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/letv/tracker/enums/UserType;->Female:Lcom/letv/tracker/enums/UserType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/letv/tracker/enums/UserType;->Child:Lcom/letv/tracker/enums/UserType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/letv/tracker/enums/UserType;->$VALUES:[Lcom/letv/tracker/enums/UserType;

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
    iput-object p3, p0, Lcom/letv/tracker/enums/UserType;->id:Ljava/lang/String;

    .line 12
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/letv/tracker/enums/UserType;
    .locals 1

    .prologue
    const-class v0, Lcom/letv/tracker/enums/UserType;

    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/letv/tracker/enums/UserType;

    return-object v0
.end method

.method public static values()[Lcom/letv/tracker/enums/UserType;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/letv/tracker/enums/UserType;->$VALUES:[Lcom/letv/tracker/enums/UserType;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/letv/tracker/enums/UserType;

    return-object v0
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/letv/tracker/enums/UserType;->id:Ljava/lang/String;

    return-object v0
.end method
