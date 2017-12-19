.class public Lcom/letv/leui/util/LeProductConfig;
.super Ljava/lang/Object;
.source "LeProductConfig.java"


# static fields
.field private static final CAMERA_PATH:Ljava/lang/String; = "/sys/class/hwinfo/main_camera/devinfo"

.field public static final DELUXE:I = 0x1

.field private static final DELUXE_INFO:Ljava/lang/String; = "imx230"

.field public static final GENERAL:I = 0x0

.field private static final GENERAL_INFO:Ljava/lang/String; = "ov16880"

.field private static final TAG:Ljava/lang/String; = "LeProductConfig"

.field public static final UNKNOW:I = -0x1

.field private static final VALID_MODEL:Ljava/lang/String; = "X62"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getCameraInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "filepath"    # Ljava/lang/String;

    .prologue
    .line 43
    const/4 v6, 0x0

    .line 44
    .local v6, "value":Ljava/lang/String;
    const/4 v4, 0x0

    .line 46
    .local v4, "reader":Ljava/io/FileReader;
    :try_start_0
    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    .end local v4    # "reader":Ljava/io/FileReader;
    .local v5, "reader":Ljava/io/FileReader;
    const/16 v7, 0xf

    :try_start_1
    new-array v0, v7, [C

    .line 48
    .local v0, "buf":[C
    invoke-virtual {v5, v0}, Ljava/io/FileReader;->read([C)I

    move-result v3

    .line 49
    .local v3, "n":I
    const/4 v7, 0x1

    if-le v3, v7, :cond_0

    .line 50
    const-string/jumbo v7, "LeProductConfig"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getCameraInfo n="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " buf="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v6

    .line 56
    .end local v6    # "value":Ljava/lang/String;
    :cond_0
    if-eqz v5, :cond_1

    .line 58
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    :goto_0
    move-object v4, v5

    .line 63
    .end local v0    # "buf":[C
    .end local v3    # "n":I
    .end local v5    # "reader":Ljava/io/FileReader;
    :cond_2
    :goto_1
    return-object v6

    .line 59
    .restart local v0    # "buf":[C
    .restart local v3    # "n":I
    .restart local v5    # "reader":Ljava/io/FileReader;
    :catch_0
    move-exception v2

    .local v2, "ex":Ljava/io/IOException;
    goto :goto_0

    .line 53
    .end local v0    # "buf":[C
    .end local v2    # "ex":Ljava/io/IOException;
    .end local v3    # "n":I
    .end local v5    # "reader":Ljava/io/FileReader;
    .restart local v4    # "reader":Ljava/io/FileReader;
    .restart local v6    # "value":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 54
    .end local v4    # "reader":Ljava/io/FileReader;
    .local v1, "e":Ljava/io/IOException;
    :goto_2
    :try_start_3
    const-string/jumbo v7, "LeProductConfig"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Could NOT read info from "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 56
    if-eqz v4, :cond_2

    .line 58
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 59
    :catch_2
    move-exception v2

    .restart local v2    # "ex":Ljava/io/IOException;
    goto :goto_1

    .line 55
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 56
    :goto_3
    if-eqz v4, :cond_3

    .line 58
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 55
    :cond_3
    :goto_4
    throw v7

    .line 59
    :catch_3
    move-exception v2

    .restart local v2    # "ex":Ljava/io/IOException;
    goto :goto_4

    .line 55
    .end local v2    # "ex":Ljava/io/IOException;
    .restart local v5    # "reader":Ljava/io/FileReader;
    :catchall_1
    move-exception v7

    move-object v4, v5

    .end local v5    # "reader":Ljava/io/FileReader;
    .local v4, "reader":Ljava/io/FileReader;
    goto :goto_3

    .line 53
    .end local v4    # "reader":Ljava/io/FileReader;
    .restart local v5    # "reader":Ljava/io/FileReader;
    :catch_4
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    move-object v4, v5

    .end local v5    # "reader":Ljava/io/FileReader;
    .restart local v4    # "reader":Ljava/io/FileReader;
    goto :goto_2
.end method

.method public static getProductConfigType()I
    .locals 5

    .prologue
    .line 25
    const/4 v1, -0x1

    .line 26
    .local v1, "type":I
    const-string/jumbo v2, "LeProductConfig"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "model name="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string/jumbo v3, "X62"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 28
    const-string/jumbo v2, "LeProductConfig"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid model ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " valid model="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "X62"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    const/4 v2, -0x1

    return v2

    .line 31
    :cond_0
    const-string/jumbo v2, "/sys/class/hwinfo/main_camera/devinfo"

    invoke-static {v2}, Lcom/letv/leui/util/LeProductConfig;->getCameraInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 32
    .local v0, "info":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 33
    const-string/jumbo v2, "ov16880"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 34
    const/4 v1, 0x0

    .line 39
    :cond_1
    :goto_0
    return v1

    .line 35
    :cond_2
    const-string/jumbo v2, "imx230"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 36
    const/4 v1, 0x1

    goto :goto_0
.end method
