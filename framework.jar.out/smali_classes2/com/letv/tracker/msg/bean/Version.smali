.class public Lcom/letv/tracker/msg/bean/Version;
.super Ljava/lang/Object;
.source "Version.java"


# instance fields
.field private build:Ljava/lang/String;

.field private major:I

.field private minor:I

.field private patch:I

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput v0, p0, Lcom/letv/tracker/msg/bean/Version;->major:I

    .line 15
    iput v0, p0, Lcom/letv/tracker/msg/bean/Version;->minor:I

    .line 20
    iput v0, p0, Lcom/letv/tracker/msg/bean/Version;->patch:I

    .line 37
    return-void
.end method


# virtual methods
.method public getBuild()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/letv/tracker/msg/bean/Version;->build:Ljava/lang/String;

    return-object v0
.end method

.method public getMajor()I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lcom/letv/tracker/msg/bean/Version;->major:I

    return v0
.end method

.method public getMinor()I
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Lcom/letv/tracker/msg/bean/Version;->minor:I

    return v0
.end method

.method public getPatch()I
    .locals 1

    .prologue
    .line 116
    iget v0, p0, Lcom/letv/tracker/msg/bean/Version;->patch:I

    return v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/letv/tracker/msg/bean/Version;->version:Ljava/lang/String;

    return-object v0
.end method

.method public hasRequiredFields()Z
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 158
    iget-object v0, p0, Lcom/letv/tracker/msg/bean/Version;->version:Ljava/lang/String;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    iget v0, p0, Lcom/letv/tracker/msg/bean/Version;->major:I

    if-gt v0, v1, :cond_3

    :cond_2
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/letv/tracker/msg/bean/Version;->minor:I

    if-le v0, v1, :cond_2

    iget v0, p0, Lcom/letv/tracker/msg/bean/Version;->patch:I

    if-gt v0, v1, :cond_0

    goto :goto_1
.end method

.method public setVersion(III)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 50
    iput p1, p0, Lcom/letv/tracker/msg/bean/Version;->major:I

    .line 51
    iput p2, p0, Lcom/letv/tracker/msg/bean/Version;->minor:I

    .line 52
    iput p3, p0, Lcom/letv/tracker/msg/bean/Version;->patch:I

    .line 53
    iput-object v0, p0, Lcom/letv/tracker/msg/bean/Version;->build:Ljava/lang/String;

    .line 54
    iput-object v0, p0, Lcom/letv/tracker/msg/bean/Version;->version:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public setVersion(IIILjava/lang/String;)V
    .locals 1

    .prologue
    .line 71
    iput p1, p0, Lcom/letv/tracker/msg/bean/Version;->major:I

    .line 72
    iput p2, p0, Lcom/letv/tracker/msg/bean/Version;->minor:I

    .line 73
    iput p3, p0, Lcom/letv/tracker/msg/bean/Version;->patch:I

    .line 74
    iput-object p4, p0, Lcom/letv/tracker/msg/bean/Version;->build:Ljava/lang/String;

    const/4 v0, 0x0

    .line 75
    iput-object v0, p0, Lcom/letv/tracker/msg/bean/Version;->version:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 85
    iput v0, p0, Lcom/letv/tracker/msg/bean/Version;->major:I

    .line 86
    iput v0, p0, Lcom/letv/tracker/msg/bean/Version;->minor:I

    .line 87
    iput v0, p0, Lcom/letv/tracker/msg/bean/Version;->patch:I

    const/4 v0, 0x0

    .line 88
    iput-object v0, p0, Lcom/letv/tracker/msg/bean/Version;->build:Ljava/lang/String;

    .line 89
    iput-object p1, p0, Lcom/letv/tracker/msg/bean/Version;->version:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 139
    iget-object v0, p0, Lcom/letv/tracker/msg/bean/Version;->version:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/letv/tracker/msg/bean/Version;->version:Ljava/lang/String;

    return-object v0

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/letv/tracker/msg/bean/Version;->build:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string/jumbo v0, "%d.%d.%d.%s"

    const/4 v1, 0x4

    .line 143
    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/letv/tracker/msg/bean/Version;->major:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    iget v2, p0, Lcom/letv/tracker/msg/bean/Version;->minor:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    iget v2, p0, Lcom/letv/tracker/msg/bean/Version;->patch:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    iget-object v2, p0, Lcom/letv/tracker/msg/bean/Version;->build:Ljava/lang/String;

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-string/jumbo v0, "%d.%d.%d"

    .line 141
    new-array v1, v6, [Ljava/lang/Object;

    iget v2, p0, Lcom/letv/tracker/msg/bean/Version;->major:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    iget v2, p0, Lcom/letv/tracker/msg/bean/Version;->minor:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    iget v2, p0, Lcom/letv/tracker/msg/bean/Version;->patch:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
