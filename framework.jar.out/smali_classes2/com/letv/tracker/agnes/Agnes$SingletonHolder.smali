.class Lcom/letv/tracker/agnes/Agnes$SingletonHolder;
.super Ljava/lang/Object;
.source "Agnes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/tracker/agnes/Agnes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SingletonHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/letv/tracker/agnes/Agnes;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 41
    new-instance v0, Lcom/letv/tracker/agnes/Agnes;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/letv/tracker/agnes/Agnes;-><init>(Lcom/letv/tracker/agnes/Agnes$1;)V

    sput-object v0, Lcom/letv/tracker/agnes/Agnes$SingletonHolder;->INSTANCE:Lcom/letv/tracker/agnes/Agnes;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/letv/tracker/agnes/Agnes;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/letv/tracker/agnes/Agnes$SingletonHolder;->INSTANCE:Lcom/letv/tracker/agnes/Agnes;

    return-object v0
.end method
