.class public Landroid/hardware/Camera$LetvSensorInfo;
.super Ljava/lang/Object;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LetvSensorInfo"
.end annotation


# static fields
.field private static mPathOfMainCamera:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 420
    const-string/jumbo v0, "/sys/class/hwinfo/main_camera/devinfo"

    sput-object v0, Landroid/hardware/Camera$LetvSensorInfo;->mPathOfMainCamera:Ljava/lang/String;

    .line 419
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 419
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSensorName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 422
    sget-object v0, Landroid/hardware/Camera$LetvSensorInfo;->mPathOfMainCamera:Ljava/lang/String;

    invoke-static {v0}, Landroid/hardware/Camera$LetvSensorInfo;->readInfoFromDriver(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static readInfoFromDriver(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 425
    const/4 v5, 0x0

    .line 426
    .local v5, "info":Ljava/lang/String;
    const/4 v0, 0x0

    .line 428
    .local v0, "bReader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 429
    .local v4, "fi":Ljava/io/FileInputStream;
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-direct {v6, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 430
    .local v1, "bReader":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .end local v0    # "bReader":Ljava/io/BufferedReader;
    move-result-object v5

    .line 439
    .local v5, "info":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 441
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_0
    move-object v0, v1

    .line 448
    .end local v1    # "bReader":Ljava/io/BufferedReader;
    .end local v4    # "fi":Ljava/io/FileInputStream;
    .end local v5    # "info":Ljava/lang/String;
    :cond_1
    :goto_1
    return-object v5

    .line 443
    .restart local v1    # "bReader":Ljava/io/BufferedReader;
    .restart local v4    # "fi":Ljava/io/FileInputStream;
    .restart local v5    # "info":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 444
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 435
    .end local v1    # "bReader":Ljava/io/BufferedReader;
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "fi":Ljava/io/FileInputStream;
    .restart local v0    # "bReader":Ljava/io/BufferedReader;
    .local v5, "info":Ljava/lang/String;
    :catch_1
    move-exception v3

    .line 436
    .end local v0    # "bReader":Ljava/io/BufferedReader;
    .restart local v3    # "e":Ljava/io/IOException;
    :goto_2
    :try_start_3
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 439
    if-eqz v0, :cond_1

    .line 441
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 443
    :catch_2
    move-exception v3

    .line 444
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 432
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v0    # "bReader":Ljava/io/BufferedReader;
    :catch_3
    move-exception v2

    .line 433
    .end local v0    # "bReader":Ljava/io/BufferedReader;
    .local v2, "e":Ljava/io/FileNotFoundException;
    :goto_3
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 439
    if-eqz v0, :cond_1

    .line 441
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_1

    .line 443
    :catch_4
    move-exception v3

    .line 444
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 438
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 439
    :goto_4
    if-eqz v0, :cond_2

    .line 441
    :try_start_7
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 438
    :cond_2
    :goto_5
    throw v6

    .line 443
    :catch_5
    move-exception v3

    .line 444
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 438
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v1    # "bReader":Ljava/io/BufferedReader;
    .restart local v4    # "fi":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v6

    move-object v0, v1

    .end local v1    # "bReader":Ljava/io/BufferedReader;
    .local v0, "bReader":Ljava/io/BufferedReader;
    goto :goto_4

    .line 432
    .end local v0    # "bReader":Ljava/io/BufferedReader;
    .restart local v1    # "bReader":Ljava/io/BufferedReader;
    :catch_6
    move-exception v2

    .restart local v2    # "e":Ljava/io/FileNotFoundException;
    move-object v0, v1

    .end local v1    # "bReader":Ljava/io/BufferedReader;
    .restart local v0    # "bReader":Ljava/io/BufferedReader;
    goto :goto_3

    .line 435
    .end local v0    # "bReader":Ljava/io/BufferedReader;
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    .restart local v1    # "bReader":Ljava/io/BufferedReader;
    :catch_7
    move-exception v3

    .restart local v3    # "e":Ljava/io/IOException;
    move-object v0, v1

    .end local v1    # "bReader":Ljava/io/BufferedReader;
    .restart local v0    # "bReader":Ljava/io/BufferedReader;
    goto :goto_2
.end method
