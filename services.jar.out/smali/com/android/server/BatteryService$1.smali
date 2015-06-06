.class Lcom/android/server/BatteryService$1;
.super Landroid/content/BroadcastReceiver;
.source "BatteryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BatteryService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BatteryService;


# direct methods
.method constructor <init>(Lcom/android/server/BatteryService;)V
    .locals 0

    .prologue
    .line 218
    iput-object p1, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 221
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 223
    .local v0, "action":Ljava/lang/String;
    const-string v8, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 224
    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$000()Ljava/lang/String;

    move-result-object v8

    const-string v9, "bootCompleted"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    iget-object v8, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/server/BatteryService;->access$100(Lcom/android/server/BatteryService;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 227
    .local v1, "contentResolver":Landroid/content/ContentResolver;
    iget-object v8, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;
    invoke-static {v8}, Lcom/android/server/BatteryService;->access$200(Lcom/android/server/BatteryService;)Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    .line 228
    :try_start_0
    iget-object v8, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    const/4 v10, 0x1

    # setter for: Lcom/android/server/BatteryService;->mBootCompleted:Z
    invoke-static {v8, v10}, Lcom/android/server/BatteryService;->access$302(Lcom/android/server/BatteryService;Z)Z

    .line 230
    iget-object v10, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    const-string v8, "dormant_switch_onoff"

    const/4 v11, 0x0

    const/4 v12, -0x2

    invoke-static {v1, v8, v11, v12}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v8

    const/4 v11, 0x1

    if-ne v8, v11, :cond_1

    const/4 v8, 0x1

    :goto_0
    # setter for: Lcom/android/server/BatteryService;->mDormantOnOff:Z
    invoke-static {v10, v8}, Lcom/android/server/BatteryService;->access$402(Lcom/android/server/BatteryService;Z)Z

    .line 231
    iget-object v10, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    const-string v8, "dormant_disable_led_indicator"

    const/4 v11, 0x0

    const/4 v12, -0x2

    invoke-static {v1, v8, v11, v12}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v8

    const/4 v11, 0x1

    if-ne v8, v11, :cond_2

    const/4 v8, 0x1

    :goto_1
    # setter for: Lcom/android/server/BatteryService;->mDormantDisableLED:Z
    invoke-static {v10, v8}, Lcom/android/server/BatteryService;->access$502(Lcom/android/server/BatteryService;Z)Z

    .line 232
    iget-object v10, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    const-string v8, "dormant_always"

    const/4 v11, 0x0

    const/4 v12, -0x2

    invoke-static {v1, v8, v11, v12}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v8

    const/4 v11, 0x1

    if-ne v8, v11, :cond_3

    const/4 v8, 0x1

    :goto_2
    # setter for: Lcom/android/server/BatteryService;->mDormantAlways:Z
    invoke-static {v10, v8}, Lcom/android/server/BatteryService;->access$602(Lcom/android/server/BatteryService;Z)Z

    .line 233
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 235
    const-string v8, "dormant_start_hour"

    const/4 v9, 0x0

    const/4 v10, -0x2

    invoke-static {v1, v8, v9, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    .line 236
    .local v5, "dormantStartHour":I
    const-string v8, "dormant_start_min"

    const/4 v9, 0x0

    const/4 v10, -0x2

    invoke-static {v1, v8, v9, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    .line 237
    .local v6, "dormantStartMinute":I
    const-string v8, "dormant_end_hour"

    const/4 v9, 0x0

    const/4 v10, -0x2

    invoke-static {v1, v8, v9, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    .line 238
    .local v2, "dormantEndHour":I
    const-string v8, "dormant_end_min"

    const/4 v9, 0x0

    const/4 v10, -0x2

    invoke-static {v1, v8, v9, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    .line 239
    .local v3, "dormantEndMinute":I
    mul-int/lit8 v8, v5, 0x3c

    add-int v7, v8, v6

    .line 240
    .local v7, "dormantStartMinutes":I
    mul-int/lit8 v8, v2, 0x3c

    add-int v4, v8, v3

    .line 241
    .local v4, "dormantEndMinutes":I
    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$000()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Dormant OnOff Settings = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mDormantOnOff:Z
    invoke-static {v10}, Lcom/android/server/BatteryService;->access$400(Lcom/android/server/BatteryService;)Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$000()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Dormant Disable LED Settings = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mDormantDisableLED:Z
    invoke-static {v10}, Lcom/android/server/BatteryService;->access$500(Lcom/android/server/BatteryService;)Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$000()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Dormant Always Settings = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mDormantAlways:Z
    invoke-static {v10}, Lcom/android/server/BatteryService;->access$600(Lcom/android/server/BatteryService;)Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$000()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Dormant time Settings = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ~ "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    iget-object v8, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    # invokes: Lcom/android/server/BatteryService;->setDormantAlarm(II)V
    invoke-static {v8, v7, v4}, Lcom/android/server/BatteryService;->access$700(Lcom/android/server/BatteryService;II)V

    .line 248
    iget-object v8, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;
    invoke-static {v8}, Lcom/android/server/BatteryService;->access$200(Lcom/android/server/BatteryService;)Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    .line 249
    :try_start_1
    iget-object v8, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mLed:Lcom/android/server/BatteryService$Led;
    invoke-static {v8}, Lcom/android/server/BatteryService;->access$800(Lcom/android/server/BatteryService;)Lcom/android/server/BatteryService$Led;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/BatteryService$Led;->updateLightsLocked()V

    .line 250
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 272
    .end local v1    # "contentResolver":Landroid/content/ContentResolver;
    .end local v2    # "dormantEndHour":I
    .end local v3    # "dormantEndMinute":I
    .end local v4    # "dormantEndMinutes":I
    .end local v5    # "dormantStartHour":I
    .end local v6    # "dormantStartMinute":I
    .end local v7    # "dormantStartMinutes":I
    :cond_0
    :goto_3
    return-void

    .line 230
    .restart local v1    # "contentResolver":Landroid/content/ContentResolver;
    :cond_1
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 231
    :cond_2
    const/4 v8, 0x0

    goto/16 :goto_1

    .line 232
    :cond_3
    const/4 v8, 0x0

    goto/16 :goto_2

    .line 233
    :catchall_0
    move-exception v8

    :try_start_2
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v8

    .line 250
    .restart local v2    # "dormantEndHour":I
    .restart local v3    # "dormantEndMinute":I
    .restart local v4    # "dormantEndMinutes":I
    .restart local v5    # "dormantStartHour":I
    .restart local v6    # "dormantStartMinute":I
    .restart local v7    # "dormantStartMinutes":I
    :catchall_1
    move-exception v8

    :try_start_3
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v8

    .line 251
    .end local v1    # "contentResolver":Landroid/content/ContentResolver;
    .end local v2    # "dormantEndHour":I
    .end local v3    # "dormantEndMinute":I
    .end local v4    # "dormantEndMinutes":I
    .end local v5    # "dormantStartHour":I
    .end local v6    # "dormantStartMinute":I
    .end local v7    # "dormantStartMinutes":I
    :cond_4
    const-string v8, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 252
    iget-object v8, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;
    invoke-static {v8}, Lcom/android/server/BatteryService;->access$200(Lcom/android/server/BatteryService;)Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    .line 253
    :try_start_4
    iget-object v8, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    const/4 v10, 0x1

    # setter for: Lcom/android/server/BatteryService;->mScreenOn:Z
    invoke-static {v8, v10}, Lcom/android/server/BatteryService;->access$902(Lcom/android/server/BatteryService;Z)Z

    .line 254
    iget-object v8, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mLed:Lcom/android/server/BatteryService$Led;
    invoke-static {v8}, Lcom/android/server/BatteryService;->access$800(Lcom/android/server/BatteryService;)Lcom/android/server/BatteryService$Led;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/BatteryService$Led;->updateLightsLocked()V

    .line 255
    monitor-exit v9

    goto :goto_3

    :catchall_2
    move-exception v8

    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v8

    .line 256
    :cond_5
    const-string v8, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 257
    iget-object v8, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;
    invoke-static {v8}, Lcom/android/server/BatteryService;->access$200(Lcom/android/server/BatteryService;)Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    .line 258
    :try_start_5
    iget-object v8, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    const/4 v10, 0x0

    # setter for: Lcom/android/server/BatteryService;->mScreenOn:Z
    invoke-static {v8, v10}, Lcom/android/server/BatteryService;->access$902(Lcom/android/server/BatteryService;Z)Z

    .line 259
    iget-object v8, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mLed:Lcom/android/server/BatteryService$Led;
    invoke-static {v8}, Lcom/android/server/BatteryService;->access$800(Lcom/android/server/BatteryService;)Lcom/android/server/BatteryService$Led;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/BatteryService$Led;->updateLightsLocked()V

    .line 260
    monitor-exit v9

    goto :goto_3

    :catchall_3
    move-exception v8

    monitor-exit v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v8

    .line 261
    :cond_6
    const-string v8, "com.android.server.BatteryService.action.DORMANT_START"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 262
    iget-object v8, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;
    invoke-static {v8}, Lcom/android/server/BatteryService;->access$200(Lcom/android/server/BatteryService;)Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    .line 263
    :try_start_6
    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$000()Ljava/lang/String;

    move-result-object v8

    const-string v10, "Dormant mode start"

    invoke-static {v8, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    iget-object v8, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mLed:Lcom/android/server/BatteryService$Led;
    invoke-static {v8}, Lcom/android/server/BatteryService;->access$800(Lcom/android/server/BatteryService;)Lcom/android/server/BatteryService$Led;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/BatteryService$Led;->updateLightsLocked()V

    .line 265
    monitor-exit v9

    goto :goto_3

    :catchall_4
    move-exception v8

    monitor-exit v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    throw v8

    .line 266
    :cond_7
    const-string v8, "com.android.server.BatteryService.action.DORMANT_END"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 267
    iget-object v8, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;
    invoke-static {v8}, Lcom/android/server/BatteryService;->access$200(Lcom/android/server/BatteryService;)Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    .line 268
    :try_start_7
    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$000()Ljava/lang/String;

    move-result-object v8

    const-string v10, "Dormant mode end"

    invoke-static {v8, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    iget-object v8, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mLed:Lcom/android/server/BatteryService$Led;
    invoke-static {v8}, Lcom/android/server/BatteryService;->access$800(Lcom/android/server/BatteryService;)Lcom/android/server/BatteryService$Led;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/BatteryService$Led;->updateLightsLocked()V

    .line 270
    monitor-exit v9

    goto/16 :goto_3

    :catchall_5
    move-exception v8

    monitor-exit v9
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    throw v8
.end method
