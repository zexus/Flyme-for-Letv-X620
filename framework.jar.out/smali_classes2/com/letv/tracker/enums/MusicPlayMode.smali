.class public final enum Lcom/letv/tracker/enums/MusicPlayMode;
.super Ljava/lang/Enum;
.source "MusicPlayMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/letv/tracker/enums/MusicPlayMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/letv/tracker/enums/MusicPlayMode;

.field public static final enum Circle:Lcom/letv/tracker/enums/MusicPlayMode;

.field public static final enum Order:Lcom/letv/tracker/enums/MusicPlayMode;

.field public static final enum Random:Lcom/letv/tracker/enums/MusicPlayMode;

.field public static final enum Single:Lcom/letv/tracker/enums/MusicPlayMode;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4
    new-instance v0, Lcom/letv/tracker/enums/MusicPlayMode;

    const-string/jumbo v1, "Single"

    invoke-direct {v0, v1, v2}, Lcom/letv/tracker/enums/MusicPlayMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/letv/tracker/enums/MusicPlayMode;->Single:Lcom/letv/tracker/enums/MusicPlayMode;

    .line 5
    new-instance v0, Lcom/letv/tracker/enums/MusicPlayMode;

    const-string/jumbo v1, "Circle"

    invoke-direct {v0, v1, v3}, Lcom/letv/tracker/enums/MusicPlayMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/letv/tracker/enums/MusicPlayMode;->Circle:Lcom/letv/tracker/enums/MusicPlayMode;

    .line 6
    new-instance v0, Lcom/letv/tracker/enums/MusicPlayMode;

    const-string/jumbo v1, "Random"

    invoke-direct {v0, v1, v4}, Lcom/letv/tracker/enums/MusicPlayMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/letv/tracker/enums/MusicPlayMode;->Random:Lcom/letv/tracker/enums/MusicPlayMode;

    .line 7
    new-instance v0, Lcom/letv/tracker/enums/MusicPlayMode;

    const-string/jumbo v1, "Order"

    invoke-direct {v0, v1, v5}, Lcom/letv/tracker/enums/MusicPlayMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/letv/tracker/enums/MusicPlayMode;->Order:Lcom/letv/tracker/enums/MusicPlayMode;

    const/4 v0, 0x4

    .line 3
    new-array v0, v0, [Lcom/letv/tracker/enums/MusicPlayMode;

    sget-object v1, Lcom/letv/tracker/enums/MusicPlayMode;->Single:Lcom/letv/tracker/enums/MusicPlayMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/letv/tracker/enums/MusicPlayMode;->Circle:Lcom/letv/tracker/enums/MusicPlayMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/letv/tracker/enums/MusicPlayMode;->Random:Lcom/letv/tracker/enums/MusicPlayMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/letv/tracker/enums/MusicPlayMode;->Order:Lcom/letv/tracker/enums/MusicPlayMode;

    aput-object v1, v0, v5

    sput-object v0, Lcom/letv/tracker/enums/MusicPlayMode;->$VALUES:[Lcom/letv/tracker/enums/MusicPlayMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/letv/tracker/enums/MusicPlayMode;
    .locals 1

    .prologue
    const-class v0, Lcom/letv/tracker/enums/MusicPlayMode;

    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/letv/tracker/enums/MusicPlayMode;

    return-object v0
.end method

.method public static values()[Lcom/letv/tracker/enums/MusicPlayMode;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/letv/tracker/enums/MusicPlayMode;->$VALUES:[Lcom/letv/tracker/enums/MusicPlayMode;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/letv/tracker/enums/MusicPlayMode;

    return-object v0
.end method
