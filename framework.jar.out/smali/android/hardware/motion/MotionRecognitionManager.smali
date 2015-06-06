.class public Landroid/hardware/motion/MotionRecognitionManager;
.super Ljava/lang/Object;
.source "MotionRecognitionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;
    }
.end annotation


# static fields
.field public static final ACTION_MOTION_RECOGNITION_EVENT:Ljava/lang/String; = "android.hardware.motion.MOTION_RECOGNITION_EVENT"

.field private static final DEBUG_LEVEL_HIGH:I = 0x4948

.field private static final DEBUG_LEVEL_LOW:I = 0x4f4c

.field private static final DEBUG_LEVEL_MID:I = 0x494d

.field public static final EVENT_ALL:I = 0x1fffff

.field public static final EVENT_CALL_POSE:I = 0x40000

.field public static final EVENT_DIRECT_CALLING:I = 0x400

.field public static final EVENT_DOUBLE_TAP:I = 0x8

.field public static final EVENT_FLAT:I = 0x2000

.field public static final EVENT_LCD_UP_STEADY:I = 0x10000

.field public static final EVENT_LOCK_EXECUTE_L:I = 0x80

.field public static final EVENT_LOCK_EXECUTE_R:I = 0x100

.field public static final EVENT_NUM:I = 0x15

.field public static final EVENT_OVER_TURN:I = 0x1

.field public static final EVENT_OVER_TURN_LOW_POWER:I = 0x20000

.field public static final EVENT_PANNING_GALLERY:I = 0x20

.field public static final EVENT_PANNING_HOME:I = 0x40

.field public static final EVENT_REACTIVE_ALERT:I = 0x4

.field public static final EVENT_SHAKE:I = 0x2

.field public static final EVENT_SMART_ALERT_SETTING:I = 0x8000

.field public static final EVENT_SMART_RELAY:I = 0x100000

.field public static final EVENT_SMART_SCROLL:I = 0x80000

.field public static final EVENT_TILT:I = 0x10

.field public static final EVENT_TILT_LEVEL_ZERO:I = 0x1000

.field public static final EVENT_TILT_LEVEL_ZERO_LAND:I = 0x4000

.field public static final EVENT_TILT_TO_UNLOCK:I = 0x800

.field public static final EVENT_VOLUME_DOWN:I = 0x200

.field public static final MOTION_SENSOR_NUM:I = 0x4

.field public static final MOTION_USE_ACC:I = 0x1

.field public static final MOTION_USE_ALL:I = 0xf

.field public static final MOTION_USE_ALWAYS:I = 0x40000000

.field public static final MOTION_USE_GYRO:I = 0x2

.field public static final MOTION_USE_LIGHT:I = 0x8

.field public static final MOTION_USE_PROX:I = 0x4

.field private static final TAG:Ljava/lang/String; = "MotionRecognitionManager"

.field private static final localLOGV:Z = false

.field private static final mMotionVersion:I = 0x1


# instance fields
.field mMainLooper:Landroid/os/Looper;

.field private mMovementCnt:I

.field private motionService:Landroid/hardware/motion/IMotionRecognitionService;

.field private final sListenerDelegates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 1
    .param p1, "mainLooper"    # Landroid/os/Looper;

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/motion/MotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    .line 94
    const-string/jumbo v0, "motion_recognition"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/motion/IMotionRecognitionService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/motion/IMotionRecognitionService;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/motion/MotionRecognitionManager;->motionService:Landroid/hardware/motion/IMotionRecognitionService;

    .line 95
    iput-object p1, p0, Landroid/hardware/motion/MotionRecognitionManager;->mMainLooper:Landroid/os/Looper;

    .line 96
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/motion/MotionRecognitionManager;->mMovementCnt:I

    .line 98
    return-void
.end method

.method protected static EncodeLog(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 324
    const-string/jumbo v3, "ro.debug_level"

    const-string v4, "Unknown"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 325
    .local v2, "state":Ljava/lang/String;
    const/4 v0, -0x1

    .line 327
    .local v0, "debugLevel":I
    const-string v3, "Unknown"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 328
    const-string p0, " "

    .line 342
    .end local p0    # "path":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 332
    .restart local p0    # "path":Ljava/lang/String;
    :cond_1
    const/4 v3, 0x2

    :try_start_0
    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 337
    const/16 v3, 0x4f4c

    if-ne v0, v3, :cond_2

    .line 338
    const-string p0, " "

    goto :goto_0

    .line 333
    :catch_0
    move-exception v1

    .line 334
    .local v1, "ne":Ljava/lang/NumberFormatException;
    const-string p0, " "

    goto :goto_0

    .line 339
    .end local v1    # "ne":Ljava/lang/NumberFormatException;
    :cond_2
    const/16 v3, 0x494d

    if-eq v0, v3, :cond_0

    const/16 v3, 0x4948

    if-eq v0, v3, :cond_0

    .line 342
    const-string p0, " "

    goto :goto_0
.end method

.method public static getMotionVersion()I
    .locals 1

    .prologue
    .line 314
    const/4 v0, 0x1

    return v0
.end method

.method public static isValidMotionSensor(I)Z
    .locals 2
    .param p0, "motion_sensor"    # I

    .prologue
    const/4 v0, 0x1

    .line 307
    if-eq p0, v0, :cond_0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    const/4 v1, 0x4

    if-eq p0, v1, :cond_0

    const/16 v1, 0x8

    if-ne p0, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public registerListener(Landroid/hardware/motion/MRListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/hardware/motion/MRListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 108
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/hardware/motion/MotionRecognitionManager;->registerListener(Landroid/hardware/motion/MRListener;ILandroid/os/Handler;)V

    .line 109
    return-void
.end method

.method public registerListener(Landroid/hardware/motion/MRListener;I)V
    .locals 1
    .param p1, "listener"    # Landroid/hardware/motion/MRListener;
    .param p2, "motion_sensors"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 128
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/hardware/motion/MotionRecognitionManager;->registerListener(Landroid/hardware/motion/MRListener;ILandroid/os/Handler;)V

    .line 129
    return-void
.end method

.method public registerListener(Landroid/hardware/motion/MRListener;ILandroid/os/Handler;)V
    .locals 2
    .param p1, "listener"    # Landroid/hardware/motion/MRListener;
    .param p2, "motion_sensors"    # I
    .param p3, "handler"    # Landroid/os/Handler;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 138
    const/4 v0, 0x0

    .line 139
    .local v0, "motion_events":I
    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_0

    .line 140
    const v1, 0x3a002

    or-int/2addr v0, v1

    .line 142
    :cond_0
    and-int/lit8 v1, p2, 0x2

    if-eqz v1, :cond_1

    .line 143
    or-int/lit16 v0, v0, 0x51f9

    .line 146
    :cond_1
    and-int/lit8 v1, p2, 0x4

    if-eqz v1, :cond_2

    .line 147
    or-int/lit16 v0, v0, 0xc00

    .line 149
    :cond_2
    invoke-virtual {p0, p1, v0, p3}, Landroid/hardware/motion/MotionRecognitionManager;->registerListenerEvent(Landroid/hardware/motion/MRListener;ILandroid/os/Handler;)V

    .line 150
    return-void
.end method

.method public registerListener(Landroid/hardware/motion/MRListener;Landroid/os/Handler;)V
    .locals 1
    .param p1, "listener"    # Landroid/hardware/motion/MRListener;
    .param p2, "handler"    # Landroid/os/Handler;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 118
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Landroid/hardware/motion/MotionRecognitionManager;->registerListener(Landroid/hardware/motion/MRListener;ILandroid/os/Handler;)V

    .line 119
    return-void
.end method

.method public registerListenerEvent(Landroid/hardware/motion/MRListener;I)V
    .locals 1
    .param p1, "listener"    # Landroid/hardware/motion/MRListener;
    .param p2, "motion_events"    # I

    .prologue
    .line 154
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/hardware/motion/MotionRecognitionManager;->registerListenerEvent(Landroid/hardware/motion/MRListener;ILandroid/os/Handler;)V

    .line 155
    return-void
.end method

.method public registerListenerEvent(Landroid/hardware/motion/MRListener;IILandroid/os/Handler;)V
    .locals 14
    .param p1, "listener"    # Landroid/hardware/motion/MRListener;
    .param p2, "motion_sensors"    # I
    .param p3, "motion_events"    # I
    .param p4, "handler"    # Landroid/os/Handler;

    .prologue
    .line 157
    if-eqz p1, :cond_5

    const/high16 v10, 0x100000

    move/from16 v0, p3

    if-ne v0, v10, :cond_5

    .line 158
    iget-object v11, p0, Landroid/hardware/motion/MotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    monitor-enter v11

    .line 159
    const/4 v6, 0x0

    .line 160
    .local v6, "mrlistener":Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;
    :try_start_0
    iget-object v10, p0, Landroid/hardware/motion/MotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 161
    .local v8, "size":I
    const/4 v2, 0x0

    .line 162
    .local v2, "bregisterd":Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v8, :cond_2

    .line 163
    iget-object v10, p0, Landroid/hardware/motion/MotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;

    .line 164
    .local v5, "l":Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;
    invoke-virtual {v5}, Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;->getListener()Landroid/hardware/motion/MRListener;

    move-result-object v10

    if-ne v10, p1, :cond_0

    .line 165
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "name :"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/hardware/motion/MotionRecognitionManager;->EncodeLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 166
    .local v9, "strlistener":Ljava/lang/String;
    invoke-virtual {v5}, Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;->getMotionEvents()I

    move-result v10

    and-int v10, v10, p3

    if-eqz v10, :cond_1

    .line 167
    const-string v10, "MotionRecognitionManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "  .registerListenerEvent : fail. already registered / listener count = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Landroid/hardware/motion/MotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    const/4 v2, 0x1

    .line 162
    .end local v9    # "strlistener":Ljava/lang/String;
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 170
    .restart local v9    # "strlistener":Ljava/lang/String;
    :cond_1
    move-object v6, v5

    .line 171
    const-string v10, "MotionRecognitionManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "  .registerListenerEvent : already registered but need to update motion events / listener count = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Landroid/hardware/motion/MotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 199
    .end local v2    # "bregisterd":Z
    .end local v4    # "i":I
    .end local v5    # "l":Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;
    .end local v8    # "size":I
    .end local v9    # "strlistener":Ljava/lang/String;
    :catchall_0
    move-exception v10

    :goto_2
    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v10

    .line 175
    .restart local v2    # "bregisterd":Z
    .restart local v4    # "i":I
    .restart local v8    # "size":I
    :cond_2
    if-eqz v2, :cond_3

    :try_start_1
    monitor-exit v11

    .line 203
    .end local v2    # "bregisterd":Z
    .end local v4    # "i":I
    .end local v6    # "mrlistener":Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;
    .end local v8    # "size":I
    :goto_3
    return-void

    .line 176
    .restart local v2    # "bregisterd":Z
    .restart local v4    # "i":I
    .restart local v6    # "mrlistener":Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;
    .restart local v8    # "size":I
    :cond_3
    if-eqz v6, :cond_4

    .line 177
    invoke-virtual {v6}, Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;->getMotionEvents()I

    move-result v10

    or-int p3, p3, v10

    .line 178
    const/4 v6, 0x0

    .line 179
    invoke-virtual {p0, p1}, Landroid/hardware/motion/MotionRecognitionManager;->unregisterListener(Landroid/hardware/motion/MRListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    move-object v7, v6

    .line 182
    .end local v6    # "mrlistener":Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;
    .local v7, "mrlistener":Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;
    if-nez v7, :cond_6

    .line 183
    :try_start_2
    new-instance v6, Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;

    move/from16 v0, p3

    move-object/from16 v1, p4

    invoke-direct {v6, p0, p1, v0, v1}, Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;-><init>(Landroid/hardware/motion/MotionRecognitionManager;Landroid/hardware/motion/MRListener;ILandroid/os/Handler;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 186
    .end local v7    # "mrlistener":Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;
    .restart local v6    # "mrlistener":Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;
    :goto_4
    :try_start_3
    iget-object v10, p0, Landroid/hardware/motion/MotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 189
    :try_start_4
    iget-object v10, p0, Landroid/hardware/motion/MotionRecognitionManager;->motionService:Landroid/hardware/motion/IMotionRecognitionService;

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-interface {v10, v6, v0, v1}, Landroid/hardware/motion/IMotionRecognitionService;->registerCallback(Landroid/os/IBinder;II)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 196
    :goto_5
    :try_start_5
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "name :"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/hardware/motion/MotionRecognitionManager;->EncodeLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 197
    .restart local v9    # "strlistener":Ljava/lang/String;
    const-string v10, "MotionRecognitionManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "  .registerListenerEvent : success. listener count = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "->"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Landroid/hardware/motion/MotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", motion_events="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p3

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    monitor-exit v11

    goto :goto_3

    .line 190
    .end local v9    # "strlistener":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 191
    .local v3, "e":Landroid/os/RemoteException;
    const-string v10, "MotionRecognitionManager"

    const-string v12, "RemoteException in registerCallback: "

    invoke-static {v10, v12, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_5

    .line 201
    .end local v2    # "bregisterd":Z
    .end local v3    # "e":Landroid/os/RemoteException;
    .end local v4    # "i":I
    .end local v6    # "mrlistener":Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;
    .end local v8    # "size":I
    :cond_5
    const-string v10, "MotionRecognitionManager"

    const-string v11, "  .registerListenerEvent : failed. invalid listener or events"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 199
    .restart local v2    # "bregisterd":Z
    .restart local v4    # "i":I
    .restart local v7    # "mrlistener":Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;
    .restart local v8    # "size":I
    :catchall_1
    move-exception v10

    move-object v6, v7

    .end local v7    # "mrlistener":Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;
    .restart local v6    # "mrlistener":Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;
    goto/16 :goto_2

    .end local v6    # "mrlistener":Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;
    .restart local v7    # "mrlistener":Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;
    :cond_6
    move-object v6, v7

    .end local v7    # "mrlistener":Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;
    .restart local v6    # "mrlistener":Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;
    goto :goto_4
.end method

.method public registerListenerEvent(Landroid/hardware/motion/MRListener;ILandroid/os/Handler;)V
    .locals 1
    .param p1, "listener"    # Landroid/hardware/motion/MRListener;
    .param p2, "motion_events"    # I
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    .line 205
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, p3}, Landroid/hardware/motion/MotionRecognitionManager;->registerListenerEvent(Landroid/hardware/motion/MRListener;IILandroid/os/Handler;)V

    .line 207
    return-void
.end method

.method public resetMotionEngine()I
    .locals 1

    .prologue
    .line 303
    const/4 v0, 0x0

    return v0
.end method

.method public setLogPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 319
    return-void
.end method

.method public setMotionAngle(Landroid/hardware/motion/MRListener;I)V
    .locals 0
    .param p1, "listener"    # Landroid/hardware/motion/MRListener;
    .param p2, "status"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 274
    return-void
.end method

.method public setMotionTiltLevel(IIIIII)V
    .locals 0
    .param p1, "stopUp"    # I
    .param p2, "level1Up"    # I
    .param p3, "level2Up"    # I
    .param p4, "stopDown"    # I
    .param p5, "level1Down"    # I
    .param p6, "level2Down"    # I

    .prologue
    .line 298
    return-void
.end method

.method public setSmartMotionAngle(Landroid/hardware/motion/MRListener;I)V
    .locals 7
    .param p1, "listener"    # Landroid/hardware/motion/MRListener;
    .param p2, "status"    # I

    .prologue
    .line 280
    iget-object v5, p0, Landroid/hardware/motion/MotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    monitor-enter v5

    .line 281
    :try_start_0
    iget-object v4, p0, Landroid/hardware/motion/MotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 282
    .local v3, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 283
    iget-object v4, p0, Landroid/hardware/motion/MotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;

    .line 284
    .local v2, "l":Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;
    invoke-virtual {v2}, Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;->getListener()Landroid/hardware/motion/MRListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    if-ne v4, p1, :cond_0

    .line 286
    :try_start_1
    iget-object v4, p0, Landroid/hardware/motion/MotionRecognitionManager;->motionService:Landroid/hardware/motion/IMotionRecognitionService;

    invoke-interface {v4, v2, p2}, Landroid/hardware/motion/IMotionRecognitionService;->setMotionAngle(Landroid/os/IBinder;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 290
    :goto_1
    :try_start_2
    monitor-exit v5

    .line 295
    .end local v2    # "l":Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;
    :goto_2
    return-void

    .line 287
    .restart local v2    # "l":Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;
    :catch_0
    move-exception v0

    .line 288
    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "MotionRecognitionManager"

    const-string v6, "RemoteException in setSmartMotionAngle: "

    invoke-static {v4, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 294
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "i":I
    .end local v2    # "l":Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;
    .end local v3    # "size":I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 282
    .restart local v1    # "i":I
    .restart local v2    # "l":Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;
    .restart local v3    # "size":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 293
    .end local v2    # "l":Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;
    :cond_1
    :try_start_3
    const-string v4, "MotionRecognitionManager"

    const-string v6, "  .setSmartMotionAngle : listener has to be registered first"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2
.end method

.method public unregisterListener(Landroid/hardware/motion/MRListener;)V
    .locals 10
    .param p1, "listener"    # Landroid/hardware/motion/MRListener;

    .prologue
    .line 234
    iget-object v7, p0, Landroid/hardware/motion/MotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    monitor-enter v7

    .line 235
    :try_start_0
    iget-object v6, p0, Landroid/hardware/motion/MotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 237
    .local v4, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_0

    .line 238
    iget-object v6, p0, Landroid/hardware/motion/MotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;

    .line 239
    .local v2, "l":Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;
    invoke-virtual {v2}, Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;->getListener()Landroid/hardware/motion/MRListener;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 240
    .local v3, "listener_name":Ljava/lang/String;
    const-string v6, "MotionRecognitionManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "@ member "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v3}, Landroid/hardware/motion/MotionRecognitionManager;->EncodeLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 243
    .end local v2    # "l":Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;
    .end local v3    # "listener_name":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v4, :cond_1

    .line 244
    iget-object v6, p0, Landroid/hardware/motion/MotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;

    .line 245
    .restart local v2    # "l":Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;
    invoke-virtual {v2}, Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;->getListener()Landroid/hardware/motion/MRListener;

    move-result-object v6

    if-ne v6, p1, :cond_2

    .line 246
    iget-object v6, p0, Landroid/hardware/motion/MotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 249
    :try_start_1
    iget-object v6, p0, Landroid/hardware/motion/MotionRecognitionManager;->motionService:Landroid/hardware/motion/IMotionRecognitionService;

    invoke-interface {v6, v2}, Landroid/hardware/motion/IMotionRecognitionService;->unregisterCallback(Landroid/os/IBinder;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 259
    .end local v2    # "l":Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;
    :cond_1
    :goto_2
    :try_start_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "name :"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/hardware/motion/MotionRecognitionManager;->EncodeLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 260
    .local v5, "strlistener":Ljava/lang/String;
    const-string v6, "MotionRecognitionManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  .unregisterListener : / listener count = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "->"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Landroid/hardware/motion/MotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    monitor-exit v7

    .line 263
    return-void

    .line 250
    .end local v5    # "strlistener":Ljava/lang/String;
    .restart local v2    # "l":Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;
    :catch_0
    move-exception v0

    .line 251
    .local v0, "e":Landroid/os/RemoteException;
    const-string v6, "MotionRecognitionManager"

    const-string v8, "RemoteException in unregisterCallback: "

    invoke-static {v6, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 262
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "i":I
    .end local v2    # "l":Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;
    .end local v4    # "size":I
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    .line 243
    .restart local v1    # "i":I
    .restart local v2    # "l":Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;
    .restart local v4    # "size":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public unregisterListener(Landroid/hardware/motion/MRListener;I)V
    .locals 9
    .param p1, "listener"    # Landroid/hardware/motion/MRListener;
    .param p2, "motion_events"    # I

    .prologue
    .line 209
    iget-object v6, p0, Landroid/hardware/motion/MotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    monitor-enter v6

    .line 210
    :try_start_0
    iget-object v5, p0, Landroid/hardware/motion/MotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 211
    .local v4, "size":I
    const/4 v3, 0x0

    .line 212
    .local v3, "motionevents":I
    const/4 v1, 0x0

    .line 213
    .local v1, "l":Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_0

    .line 214
    iget-object v5, p0, Landroid/hardware/motion/MotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "l":Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;
    check-cast v1, Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;

    .line 215
    .restart local v1    # "l":Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;
    invoke-virtual {v1}, Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;->getListener()Landroid/hardware/motion/MRListener;

    move-result-object v5

    if-ne v5, p1, :cond_2

    .line 216
    invoke-virtual {v1}, Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;->getMotionEvents()I

    move-result v5

    xor-int/lit8 v7, p2, -0x1

    and-int v3, v5, v7

    .line 217
    invoke-virtual {v1}, Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;->getListener()Landroid/hardware/motion/MRListener;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 218
    .local v2, "listener_name":Ljava/lang/String;
    const-string v5, "MotionRecognitionManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "update listener"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v2}, Landroid/hardware/motion/MotionRecognitionManager;->EncodeLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;->getMotionEvents()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    .end local v2    # "listener_name":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, p1}, Landroid/hardware/motion/MotionRecognitionManager;->unregisterListener(Landroid/hardware/motion/MRListener;)V

    .line 226
    if-eqz v3, :cond_1

    .line 227
    invoke-virtual {p0, p1, v3}, Landroid/hardware/motion/MotionRecognitionManager;->registerListenerEvent(Landroid/hardware/motion/MRListener;I)V

    .line 229
    :cond_1
    monitor-exit v6

    .line 231
    return-void

    .line 213
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 229
    .end local v0    # "i":I
    .end local v1    # "l":Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;
    .end local v3    # "motionevents":I
    .end local v4    # "size":I
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method public useMotionAlways(Landroid/hardware/motion/MRListener;Z)V
    .locals 0
    .param p1, "listener"    # Landroid/hardware/motion/MRListener;
    .param p2, "bUseAlways"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 268
    return-void
.end method
