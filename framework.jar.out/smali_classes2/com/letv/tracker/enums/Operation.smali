.class public final enum Lcom/letv/tracker/enums/Operation;
.super Ljava/lang/Enum;
.source "Operation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/letv/tracker/enums/Operation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/letv/tracker/enums/Operation;

.field public static final enum Click:Lcom/letv/tracker/enums/Operation;

.field public static final enum DoubleClick:Lcom/letv/tracker/enums/Operation;

.field public static final enum Drag:Lcom/letv/tracker/enums/Operation;

.field public static final enum Slide:Lcom/letv/tracker/enums/Operation;


# instance fields
.field private id:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 6
    new-instance v0, Lcom/letv/tracker/enums/Operation;

    const-string/jumbo v1, "Click"

    const-string/jumbo v2, "click"

    invoke-direct {v0, v1, v3, v2}, Lcom/letv/tracker/enums/Operation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/Operation;->Click:Lcom/letv/tracker/enums/Operation;

    .line 7
    new-instance v0, Lcom/letv/tracker/enums/Operation;

    const-string/jumbo v1, "Slide"

    const-string/jumbo v2, "slide"

    invoke-direct {v0, v1, v4, v2}, Lcom/letv/tracker/enums/Operation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/Operation;->Slide:Lcom/letv/tracker/enums/Operation;

    .line 8
    new-instance v0, Lcom/letv/tracker/enums/Operation;

    const-string/jumbo v1, "Drag"

    const-string/jumbo v2, "drag"

    invoke-direct {v0, v1, v5, v2}, Lcom/letv/tracker/enums/Operation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/Operation;->Drag:Lcom/letv/tracker/enums/Operation;

    .line 9
    new-instance v0, Lcom/letv/tracker/enums/Operation;

    const-string/jumbo v1, "DoubleClick"

    const-string/jumbo v2, "double_click"

    invoke-direct {v0, v1, v6, v2}, Lcom/letv/tracker/enums/Operation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/Operation;->DoubleClick:Lcom/letv/tracker/enums/Operation;

    const/4 v0, 0x4

    .line 5
    new-array v0, v0, [Lcom/letv/tracker/enums/Operation;

    sget-object v1, Lcom/letv/tracker/enums/Operation;->Click:Lcom/letv/tracker/enums/Operation;

    aput-object v1, v0, v3

    sget-object v1, Lcom/letv/tracker/enums/Operation;->Slide:Lcom/letv/tracker/enums/Operation;

    aput-object v1, v0, v4

    sget-object v1, Lcom/letv/tracker/enums/Operation;->Drag:Lcom/letv/tracker/enums/Operation;

    aput-object v1, v0, v5

    sget-object v1, Lcom/letv/tracker/enums/Operation;->DoubleClick:Lcom/letv/tracker/enums/Operation;

    aput-object v1, v0, v6

    sput-object v0, Lcom/letv/tracker/enums/Operation;->$VALUES:[Lcom/letv/tracker/enums/Operation;

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
    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 14
    iput-object p3, p0, Lcom/letv/tracker/enums/Operation;->id:Ljava/lang/String;

    .line 15
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/letv/tracker/enums/Operation;
    .locals 1

    .prologue
    const-class v0, Lcom/letv/tracker/enums/Operation;

    .line 5
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/letv/tracker/enums/Operation;

    return-object v0
.end method

.method public static values()[Lcom/letv/tracker/enums/Operation;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/letv/tracker/enums/Operation;->$VALUES:[Lcom/letv/tracker/enums/Operation;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/letv/tracker/enums/Operation;

    return-object v0
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lcom/letv/tracker/enums/Operation;->id:Ljava/lang/String;

    return-object v0
.end method
