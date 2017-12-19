.class Lcom/android/server/power/ShutdownThread$9;
.super Ljava/lang/Thread;
.source "ShutdownThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/ShutdownThread;->shutdownRadios(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/ShutdownThread;

.field final synthetic val$bypassRadioOff:Z

.field final synthetic val$done:[Z

.field final synthetic val$endTime:J

.field final synthetic val$timeout:I


# direct methods
.method constructor <init>(Lcom/android/server/power/ShutdownThread;JZ[ZI)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/power/ShutdownThread;
    .param p2, "val$endTime"    # J
    .param p4, "val$bypassRadioOff"    # Z
    .param p5, "val$done"    # [Z
    .param p6, "val$timeout"    # I

    .prologue
    .line 1145
    iput-object p1, p0, Lcom/android/server/power/ShutdownThread$9;->this$0:Lcom/android/server/power/ShutdownThread;

    iput-wide p2, p0, Lcom/android/server/power/ShutdownThread$9;->val$endTime:J

    iput-boolean p4, p0, Lcom/android/server/power/ShutdownThread$9;->val$bypassRadioOff:Z

    iput-object p5, p0, Lcom/android/server/power/ShutdownThread$9;->val$done:[Z

    iput p6, p0, Lcom/android/server/power/ShutdownThread$9;->val$timeout:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    .line 1151
    const-string/jumbo v10, "ShutdownThread"

    const-string/jumbo v11, "task run"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1154
    const-string/jumbo v10, "nfc"

    invoke-static {v10}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v10

    invoke-static {v10}, Landroid/nfc/INfcAdapter$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcAdapter;

    move-result-object v5

    .line 1156
    .local v5, "nfc":Landroid/nfc/INfcAdapter;
    const-string/jumbo v10, "phone"

    invoke-static {v10}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v10

    invoke-static {v10}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v7

    .line 1159
    .local v7, "phone":Lcom/android/internal/telephony/ITelephony;
    const-string/jumbo v10, "bluetooth_manager"

    .line 1158
    invoke-static {v10}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v10

    invoke-static {v10}, Landroid/bluetooth/IBluetoothManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothManager;

    move-result-object v0

    .line 1162
    .local v0, "bluetooth":Landroid/bluetooth/IBluetoothManager;
    if-eqz v5, :cond_4

    .line 1163
    :try_start_0
    invoke-interface {v5}, Landroid/nfc/INfcAdapter;->getState()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_5

    const/4 v6, 0x1

    .line 1164
    .local v6, "nfcOff":Z
    :goto_0
    if-nez v6, :cond_0

    .line 1165
    const-string/jumbo v10, "ShutdownThread"

    const-string/jumbo v11, "Turning off NFC..."

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1166
    const/4 v10, 0x0

    invoke-interface {v5, v10}, Landroid/nfc/INfcAdapter;->disable(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1174
    :cond_0
    :goto_1
    if-eqz v0, :cond_6

    :try_start_1
    invoke-interface {v0}, Landroid/bluetooth/IBluetoothManager;->isEnabled()Z

    move-result v10

    if-eqz v10, :cond_6

    const/4 v1, 0x0

    .line 1175
    .local v1, "bluetoothOff":Z
    :goto_2
    if-nez v1, :cond_1

    .line 1176
    const-string/jumbo v10, "ShutdownThread"

    const-string/jumbo v11, "Disabling Bluetooth..."

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1177
    const/4 v10, 0x0

    invoke-interface {v0, v10}, Landroid/bluetooth/IBluetoothManager;->disable(Z)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1185
    :cond_1
    :goto_3
    if-eqz v7, :cond_7

    :try_start_2
    invoke-interface {v7}, Lcom/android/internal/telephony/ITelephony;->needMobileRadioShutdown()Z

    move-result v10

    if-eqz v10, :cond_7

    const/4 v8, 0x0

    .line 1186
    .local v8, "radioOff":Z
    :goto_4
    if-nez v8, :cond_2

    .line 1187
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get5()I

    move-result v10

    const/4 v11, 0x1

    if-eq v10, v11, :cond_2

    .line 1188
    const-string/jumbo v10, "ShutdownThread"

    const-string/jumbo v11, "Turning off cellular radios..."

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1189
    invoke-interface {v7}, Lcom/android/internal/telephony/ITelephony;->shutdownMobileRadios()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1197
    :cond_2
    :goto_5
    const-string/jumbo v10, "ShutdownThread"

    const-string/jumbo v11, "Waiting for NFC, Bluetooth and Radio..."

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1199
    iget-wide v10, p0, Lcom/android/server/power/ShutdownThread$9;->val$endTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    sub-long v2, v10, v12

    .line 1200
    .local v2, "delay":J
    iget-boolean v10, p0, Lcom/android/server/power/ShutdownThread$9;->val$bypassRadioOff:Z

    if-eqz v10, :cond_9

    .line 1201
    iget-object v10, p0, Lcom/android/server/power/ShutdownThread$9;->val$done:[Z

    const/4 v11, 0x1

    const/4 v12, 0x0

    aput-boolean v11, v10, v12

    .line 1202
    const-string/jumbo v10, "ShutdownThread"

    const-string/jumbo v11, "bypass RadioOff!"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1146
    :cond_3
    :goto_6
    return-void

    .line 1162
    .end local v1    # "bluetoothOff":Z
    .end local v2    # "delay":J
    .end local v6    # "nfcOff":Z
    .end local v8    # "radioOff":Z
    :cond_4
    const/4 v6, 0x1

    .restart local v6    # "nfcOff":Z
    goto :goto_0

    .line 1163
    .end local v6    # "nfcOff":Z
    :cond_5
    const/4 v6, 0x0

    .restart local v6    # "nfcOff":Z
    goto :goto_0

    .line 1168
    .end local v6    # "nfcOff":Z
    :catch_0
    move-exception v4

    .line 1169
    .local v4, "ex":Landroid/os/RemoteException;
    const-string/jumbo v10, "ShutdownThread"

    const-string/jumbo v11, "RemoteException during NFC shutdown"

    invoke-static {v10, v11, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1170
    const/4 v6, 0x1

    .restart local v6    # "nfcOff":Z
    goto :goto_1

    .line 1174
    .end local v4    # "ex":Landroid/os/RemoteException;
    :cond_6
    const/4 v1, 0x1

    .restart local v1    # "bluetoothOff":Z
    goto :goto_2

    .line 1179
    .end local v1    # "bluetoothOff":Z
    :catch_1
    move-exception v4

    .line 1180
    .restart local v4    # "ex":Landroid/os/RemoteException;
    const-string/jumbo v10, "ShutdownThread"

    const-string/jumbo v11, "RemoteException during bluetooth shutdown"

    invoke-static {v10, v11, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1181
    const/4 v1, 0x1

    .restart local v1    # "bluetoothOff":Z
    goto :goto_3

    .line 1185
    .end local v4    # "ex":Landroid/os/RemoteException;
    :cond_7
    const/4 v8, 0x1

    .restart local v8    # "radioOff":Z
    goto :goto_4

    .line 1192
    .end local v8    # "radioOff":Z
    :catch_2
    move-exception v4

    .line 1193
    .restart local v4    # "ex":Landroid/os/RemoteException;
    const-string/jumbo v10, "ShutdownThread"

    const-string/jumbo v11, "RemoteException during radio shutdown"

    invoke-static {v10, v11, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1194
    const/4 v8, 0x1

    .restart local v8    # "radioOff":Z
    goto :goto_5

    .line 1251
    .end local v4    # "ex":Landroid/os/RemoteException;
    .restart local v2    # "delay":J
    :cond_8
    const-wide/16 v10, 0x1f4

    invoke-static {v10, v11}, Landroid/os/SystemClock;->sleep(J)V

    .line 1253
    iget-wide v10, p0, Lcom/android/server/power/ShutdownThread$9;->val$endTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    sub-long v2, v10, v12

    .line 1204
    :cond_9
    const-wide/16 v10, 0x0

    cmp-long v10, v2, v10

    if-lez v10, :cond_3

    .line 1205
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get3()Z

    move-result v10

    if-eqz v10, :cond_a

    .line 1206
    iget v10, p0, Lcom/android/server/power/ShutdownThread$9;->val$timeout:I

    int-to-long v10, v10

    sub-long/2addr v10, v2

    long-to-double v10, v10

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v10, v12

    .line 1207
    const-wide/high16 v12, 0x4028000000000000L    # 12.0

    .line 1206
    mul-double/2addr v10, v12

    .line 1207
    iget v12, p0, Lcom/android/server/power/ShutdownThread$9;->val$timeout:I

    int-to-double v12, v12

    .line 1206
    div-double/2addr v10, v12

    double-to-int v9, v10

    .line 1208
    .local v9, "status":I
    add-int/lit8 v9, v9, 0x6

    .line 1209
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get7()Lcom/android/server/power/ShutdownThread;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static {v10, v9, v11}, Lcom/android/server/power/ShutdownThread;->-wrap1(Lcom/android/server/power/ShutdownThread;ILjava/lang/CharSequence;)V

    .line 1212
    .end local v9    # "status":I
    :cond_a
    if-nez v1, :cond_b

    .line 1214
    :try_start_3
    invoke-interface {v0}, Landroid/bluetooth/IBluetoothManager;->isEnabled()Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    move-result v10

    if-eqz v10, :cond_e

    const/4 v1, 0x0

    .line 1219
    :goto_7
    if-eqz v1, :cond_b

    .line 1220
    const-string/jumbo v10, "ShutdownThread"

    const-string/jumbo v11, "Bluetooth turned off."

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1223
    :cond_b
    if-nez v8, :cond_c

    .line 1225
    :try_start_4
    invoke-interface {v7}, Lcom/android/internal/telephony/ITelephony;->needMobileRadioShutdown()Z
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    move-result v10

    if-eqz v10, :cond_f

    const/4 v8, 0x0

    .line 1230
    :goto_8
    if-eqz v8, :cond_c

    .line 1231
    const-string/jumbo v10, "ShutdownThread"

    const-string/jumbo v11, "Radio turned off."

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1234
    :cond_c
    if-nez v6, :cond_d

    .line 1236
    :try_start_5
    invoke-interface {v5}, Landroid/nfc/INfcAdapter;->getState()I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_5

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_10

    const/4 v6, 0x1

    .line 1241
    :goto_9
    if-eqz v6, :cond_d

    .line 1242
    const-string/jumbo v10, "ShutdownThread"

    const-string/jumbo v11, "NFC turned off."

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1246
    :cond_d
    if-eqz v8, :cond_8

    if-eqz v1, :cond_8

    if-eqz v6, :cond_8

    .line 1247
    const-string/jumbo v10, "ShutdownThread"

    const-string/jumbo v11, "NFC, Radio and Bluetooth shutdown complete."

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1248
    iget-object v10, p0, Lcom/android/server/power/ShutdownThread$9;->val$done:[Z

    const/4 v11, 0x1

    const/4 v12, 0x0

    aput-boolean v11, v10, v12

    goto/16 :goto_6

    .line 1214
    :cond_e
    const/4 v1, 0x1

    goto :goto_7

    .line 1215
    :catch_3
    move-exception v4

    .line 1216
    .restart local v4    # "ex":Landroid/os/RemoteException;
    const-string/jumbo v10, "ShutdownThread"

    const-string/jumbo v11, "RemoteException during bluetooth shutdown"

    invoke-static {v10, v11, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1217
    const/4 v1, 0x1

    goto :goto_7

    .line 1225
    .end local v4    # "ex":Landroid/os/RemoteException;
    :cond_f
    const/4 v8, 0x1

    goto :goto_8

    .line 1226
    :catch_4
    move-exception v4

    .line 1227
    .restart local v4    # "ex":Landroid/os/RemoteException;
    const-string/jumbo v10, "ShutdownThread"

    const-string/jumbo v11, "RemoteException during radio shutdown"

    invoke-static {v10, v11, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1228
    const/4 v8, 0x1

    goto :goto_8

    .line 1236
    .end local v4    # "ex":Landroid/os/RemoteException;
    :cond_10
    const/4 v6, 0x0

    goto :goto_9

    .line 1237
    :catch_5
    move-exception v4

    .line 1238
    .restart local v4    # "ex":Landroid/os/RemoteException;
    const-string/jumbo v10, "ShutdownThread"

    const-string/jumbo v11, "RemoteException during NFC shutdown"

    invoke-static {v10, v11, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1239
    const/4 v6, 0x1

    goto :goto_9
.end method
