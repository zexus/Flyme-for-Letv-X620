.class final Lcom/android/server/am/PendingIntentRecord$Key;
.super Ljava/lang/Object;
.source "PendingIntentRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/PendingIntentRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Key"
.end annotation


# static fields
.field private static final ODD_PRIME_NUMBER:I = 0x25


# instance fields
.field final activity:Lcom/android/server/am/ActivityRecord;

.field allIntents:[Landroid/content/Intent;

.field allResolvedTypes:[Ljava/lang/String;

.field final flags:I

.field final hashCode:I

.field final isShadow:Z

.field final options:Landroid/os/Bundle;

.field final packageName:Ljava/lang/String;

.field final requestCode:I

.field final requestIntent:Landroid/content/Intent;

.field final requestResolvedType:Ljava/lang/String;

.field final type:I

.field final userId:I

.field final who:Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/lang/String;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;I)V
    .locals 3
    .param p1, "_t"    # I
    .param p2, "_p"    # Ljava/lang/String;
    .param p3, "_a"    # Lcom/android/server/am/ActivityRecord;
    .param p4, "_w"    # Ljava/lang/String;
    .param p5, "_r"    # I
    .param p6, "_i"    # [Landroid/content/Intent;
    .param p7, "_it"    # [Ljava/lang/String;
    .param p8, "_f"    # I
    .param p9, "_o"    # Landroid/os/Bundle;
    .param p10, "_userId"    # I

    .prologue
    const/4 v2, 0x0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput p1, p0, Lcom/android/server/am/PendingIntentRecord$Key;->type:I

    .line 80
    iput-object p2, p0, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    .line 81
    iput-object p3, p0, Lcom/android/server/am/PendingIntentRecord$Key;->activity:Lcom/android/server/am/ActivityRecord;

    .line 82
    iput-object p4, p0, Lcom/android/server/am/PendingIntentRecord$Key;->who:Ljava/lang/String;

    .line 83
    iput p5, p0, Lcom/android/server/am/PendingIntentRecord$Key;->requestCode:I

    .line 84
    if-eqz p6, :cond_5

    array-length v1, p6

    add-int/lit8 v1, v1, -0x1

    aget-object v1, p6, v1

    :goto_0
    iput-object v1, p0, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    .line 85
    if-eqz p7, :cond_0

    array-length v1, p7

    add-int/lit8 v1, v1, -0x1

    aget-object v2, p7, v1

    :cond_0
    iput-object v2, p0, Lcom/android/server/am/PendingIntentRecord$Key;->requestResolvedType:Ljava/lang/String;

    .line 86
    iput-object p6, p0, Lcom/android/server/am/PendingIntentRecord$Key;->allIntents:[Landroid/content/Intent;

    .line 87
    iput-object p7, p0, Lcom/android/server/am/PendingIntentRecord$Key;->allResolvedTypes:[Ljava/lang/String;

    .line 88
    iput p8, p0, Lcom/android/server/am/PendingIntentRecord$Key;->flags:I

    .line 89
    iput-object p9, p0, Lcom/android/server/am/PendingIntentRecord$Key;->options:Landroid/os/Bundle;

    .line 90
    iput p10, p0, Lcom/android/server/am/PendingIntentRecord$Key;->userId:I

    .line 94
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/am/PendingIntentRecord$Key;->isShadow:Z

    .line 98
    add-int/lit16 v0, p8, 0x353

    .line 99
    .local v0, "hash":I
    mul-int/lit8 v1, v0, 0x25

    add-int v0, v1, p5

    .line 100
    mul-int/lit8 v1, v0, 0x25

    add-int v0, v1, p10

    .line 101
    if-eqz p4, :cond_1

    .line 102
    mul-int/lit8 v1, v0, 0x25

    invoke-virtual {p4}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 104
    :cond_1
    if-eqz p3, :cond_2

    .line 105
    mul-int/lit8 v1, v0, 0x25

    invoke-virtual {p3}, Lcom/android/server/am/ActivityRecord;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 107
    :cond_2
    iget-object v1, p0, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    if-eqz v1, :cond_3

    .line 108
    mul-int/lit8 v1, v0, 0x25

    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->filterHashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 110
    :cond_3
    iget-object v1, p0, Lcom/android/server/am/PendingIntentRecord$Key;->requestResolvedType:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 111
    mul-int/lit8 v1, v0, 0x25

    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord$Key;->requestResolvedType:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 113
    :cond_4
    mul-int/lit8 v1, v0, 0x25

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 114
    mul-int/lit8 v1, v0, 0x25

    add-int v0, v1, p1

    .line 115
    iput v0, p0, Lcom/android/server/am/PendingIntentRecord$Key;->hashCode:I

    .line 78
    return-void

    .end local v0    # "hash":I
    :cond_5
    move-object v1, v2

    .line 84
    goto :goto_0
.end method

.method constructor <init>(ILjava/lang/String;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;IZ)V
    .locals 3
    .param p1, "_t"    # I
    .param p2, "_p"    # Ljava/lang/String;
    .param p3, "_a"    # Lcom/android/server/am/ActivityRecord;
    .param p4, "_w"    # Ljava/lang/String;
    .param p5, "_r"    # I
    .param p6, "_i"    # [Landroid/content/Intent;
    .param p7, "_it"    # [Ljava/lang/String;
    .param p8, "_f"    # I
    .param p9, "_o"    # Landroid/os/Bundle;
    .param p10, "_userId"    # I
    .param p11, "_isShadow"    # Z

    .prologue
    const/4 v2, 0x0

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    iput p1, p0, Lcom/android/server/am/PendingIntentRecord$Key;->type:I

    .line 125
    iput-object p2, p0, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    .line 126
    iput-object p3, p0, Lcom/android/server/am/PendingIntentRecord$Key;->activity:Lcom/android/server/am/ActivityRecord;

    .line 127
    iput-object p4, p0, Lcom/android/server/am/PendingIntentRecord$Key;->who:Ljava/lang/String;

    .line 128
    iput p5, p0, Lcom/android/server/am/PendingIntentRecord$Key;->requestCode:I

    .line 129
    if-eqz p6, :cond_5

    array-length v1, p6

    add-int/lit8 v1, v1, -0x1

    aget-object v1, p6, v1

    :goto_0
    iput-object v1, p0, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    .line 130
    if-eqz p7, :cond_0

    array-length v1, p7

    add-int/lit8 v1, v1, -0x1

    aget-object v2, p7, v1

    :cond_0
    iput-object v2, p0, Lcom/android/server/am/PendingIntentRecord$Key;->requestResolvedType:Ljava/lang/String;

    .line 131
    iput-object p6, p0, Lcom/android/server/am/PendingIntentRecord$Key;->allIntents:[Landroid/content/Intent;

    .line 132
    iput-object p7, p0, Lcom/android/server/am/PendingIntentRecord$Key;->allResolvedTypes:[Ljava/lang/String;

    .line 133
    iput p8, p0, Lcom/android/server/am/PendingIntentRecord$Key;->flags:I

    .line 134
    iput-object p9, p0, Lcom/android/server/am/PendingIntentRecord$Key;->options:Landroid/os/Bundle;

    .line 135
    iput p10, p0, Lcom/android/server/am/PendingIntentRecord$Key;->userId:I

    .line 136
    iput-boolean p11, p0, Lcom/android/server/am/PendingIntentRecord$Key;->isShadow:Z

    .line 138
    add-int/lit16 v0, p8, 0x353

    .line 139
    .local v0, "hash":I
    mul-int/lit8 v1, v0, 0x25

    add-int v0, v1, p5

    .line 140
    mul-int/lit8 v1, v0, 0x25

    add-int v0, v1, p10

    .line 141
    if-eqz p4, :cond_1

    .line 142
    mul-int/lit8 v1, v0, 0x25

    invoke-virtual {p4}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 144
    :cond_1
    if-eqz p3, :cond_2

    .line 145
    mul-int/lit8 v1, v0, 0x25

    invoke-virtual {p3}, Lcom/android/server/am/ActivityRecord;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 147
    :cond_2
    iget-object v1, p0, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    if-eqz v1, :cond_3

    .line 148
    mul-int/lit8 v1, v0, 0x25

    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->filterHashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 150
    :cond_3
    iget-object v1, p0, Lcom/android/server/am/PendingIntentRecord$Key;->requestResolvedType:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 151
    mul-int/lit8 v1, v0, 0x25

    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord$Key;->requestResolvedType:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 153
    :cond_4
    mul-int/lit8 v1, v0, 0x25

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 154
    mul-int/lit8 v1, v0, 0x25

    add-int v0, v1, p1

    .line 155
    mul-int/lit8 v2, v0, 0x25

    iget-boolean v1, p0, Lcom/android/server/am/PendingIntentRecord$Key;->isShadow:Z

    if-eqz v1, :cond_6

    const/4 v1, 0x1

    :goto_1
    add-int v0, v2, v1

    .line 156
    iput v0, p0, Lcom/android/server/am/PendingIntentRecord$Key;->hashCode:I

    .line 123
    return-void

    .end local v0    # "hash":I
    :cond_5
    move-object v1, v2

    .line 129
    goto :goto_0

    .line 155
    .restart local v0    # "hash":I
    :cond_6
    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "otherObj"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x0

    .line 163
    if-nez p1, :cond_0

    .line 164
    return v5

    .line 167
    :cond_0
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/android/server/am/PendingIntentRecord$Key;

    move-object v2, v0

    .line 168
    .local v2, "other":Lcom/android/server/am/PendingIntentRecord$Key;
    iget v3, p0, Lcom/android/server/am/PendingIntentRecord$Key;->type:I

    iget v4, v2, Lcom/android/server/am/PendingIntentRecord$Key;->type:I

    if-eq v3, v4, :cond_1

    .line 169
    return v5

    .line 171
    :cond_1
    iget v3, p0, Lcom/android/server/am/PendingIntentRecord$Key;->userId:I

    iget v4, v2, Lcom/android/server/am/PendingIntentRecord$Key;->userId:I

    if-eq v3, v4, :cond_2

    .line 172
    return v5

    .line 174
    :cond_2
    iget-object v3, p0, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    iget-object v4, v2, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 175
    return v5

    .line 177
    :cond_3
    iget-object v3, p0, Lcom/android/server/am/PendingIntentRecord$Key;->activity:Lcom/android/server/am/ActivityRecord;

    iget-object v4, v2, Lcom/android/server/am/PendingIntentRecord$Key;->activity:Lcom/android/server/am/ActivityRecord;

    if-eq v3, v4, :cond_4

    .line 178
    return v5

    .line 180
    :cond_4
    iget-object v3, p0, Lcom/android/server/am/PendingIntentRecord$Key;->who:Ljava/lang/String;

    iget-object v4, v2, Lcom/android/server/am/PendingIntentRecord$Key;->who:Ljava/lang/String;

    if-eq v3, v4, :cond_6

    .line 181
    iget-object v3, p0, Lcom/android/server/am/PendingIntentRecord$Key;->who:Ljava/lang/String;

    if-eqz v3, :cond_5

    .line 182
    iget-object v3, p0, Lcom/android/server/am/PendingIntentRecord$Key;->who:Ljava/lang/String;

    iget-object v4, v2, Lcom/android/server/am/PendingIntentRecord$Key;->who:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 183
    return v5

    .line 185
    :cond_5
    iget-object v3, v2, Lcom/android/server/am/PendingIntentRecord$Key;->who:Ljava/lang/String;

    if-eqz v3, :cond_6

    .line 186
    return v5

    .line 189
    :cond_6
    iget v3, p0, Lcom/android/server/am/PendingIntentRecord$Key;->requestCode:I

    iget v4, v2, Lcom/android/server/am/PendingIntentRecord$Key;->requestCode:I

    if-eq v3, v4, :cond_7

    .line 190
    return v5

    .line 192
    :cond_7
    iget-object v3, p0, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    iget-object v4, v2, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    if-eq v3, v4, :cond_9

    .line 193
    iget-object v3, p0, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    if-eqz v3, :cond_8

    .line 194
    iget-object v3, p0, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    iget-object v4, v2, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    invoke-virtual {v3, v4}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 195
    return v5

    .line 197
    :cond_8
    iget-object v3, v2, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    if-eqz v3, :cond_9

    .line 198
    return v5

    .line 201
    :cond_9
    iget-object v3, p0, Lcom/android/server/am/PendingIntentRecord$Key;->requestResolvedType:Ljava/lang/String;

    iget-object v4, v2, Lcom/android/server/am/PendingIntentRecord$Key;->requestResolvedType:Ljava/lang/String;

    if-eq v3, v4, :cond_b

    .line 202
    iget-object v3, p0, Lcom/android/server/am/PendingIntentRecord$Key;->requestResolvedType:Ljava/lang/String;

    if-eqz v3, :cond_a

    .line 203
    iget-object v3, p0, Lcom/android/server/am/PendingIntentRecord$Key;->requestResolvedType:Ljava/lang/String;

    iget-object v4, v2, Lcom/android/server/am/PendingIntentRecord$Key;->requestResolvedType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 204
    return v5

    .line 206
    :cond_a
    iget-object v3, v2, Lcom/android/server/am/PendingIntentRecord$Key;->requestResolvedType:Ljava/lang/String;

    if-eqz v3, :cond_b

    .line 207
    return v5

    .line 210
    :cond_b
    iget v3, p0, Lcom/android/server/am/PendingIntentRecord$Key;->flags:I

    iget v4, v2, Lcom/android/server/am/PendingIntentRecord$Key;->flags:I

    if-eq v3, v4, :cond_c

    .line 211
    return v5

    .line 215
    :cond_c
    iget-boolean v3, p0, Lcom/android/server/am/PendingIntentRecord$Key;->isShadow:Z

    iget-boolean v4, v2, Lcom/android/server/am/PendingIntentRecord$Key;->isShadow:Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-eq v3, v4, :cond_d

    .line 216
    return v5

    .line 219
    :cond_d
    const/4 v3, 0x1

    return v3

    .line 220
    .end local v2    # "other":Lcom/android/server/am/PendingIntentRecord$Key;
    :catch_0
    move-exception v1

    .line 222
    .local v1, "e":Ljava/lang/ClassCastException;
    return v5
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 226
    iget v0, p0, Lcom/android/server/am/PendingIntentRecord$Key;->hashCode:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Key{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/am/PendingIntentRecord$Key;->typeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " pkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 231
    const-string/jumbo v1, " intent="

    .line 230
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 232
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    const/4 v2, 0x1

    invoke-virtual {v0, v3, v2, v3, v3}, Landroid/content/Intent;->toShortString(ZZZZ)Ljava/lang/String;

    move-result-object v0

    .line 230
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 234
    const-string/jumbo v1, " flags=0x"

    .line 230
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 234
    iget v1, p0, Lcom/android/server/am/PendingIntentRecord$Key;->flags:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 230
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 234
    const-string/jumbo v1, " u="

    .line 230
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 234
    iget v1, p0, Lcom/android/server/am/PendingIntentRecord$Key;->userId:I

    .line 230
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 234
    const-string/jumbo v1, "}"

    .line 230
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 233
    :cond_0
    const-string/jumbo v0, "<null>"

    goto :goto_0
.end method

.method typeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 238
    iget v0, p0, Lcom/android/server/am/PendingIntentRecord$Key;->type:I

    packed-switch v0, :pswitch_data_0

    .line 248
    iget v0, p0, Lcom/android/server/am/PendingIntentRecord$Key;->type:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 240
    :pswitch_0
    const-string/jumbo v0, "startActivity"

    return-object v0

    .line 242
    :pswitch_1
    const-string/jumbo v0, "broadcastIntent"

    return-object v0

    .line 244
    :pswitch_2
    const-string/jumbo v0, "startService"

    return-object v0

    .line 246
    :pswitch_3
    const-string/jumbo v0, "activityResult"

    return-object v0

    .line 238
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
