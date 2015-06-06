.class public Landroid/hardware/motion/MotionRecognitionService;
.super Landroid/hardware/motion/IMotionRecognitionService$Stub;
.source "MotionRecognitionService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/motion/MotionRecognitionService$EventPool;,
        Landroid/hardware/motion/MotionRecognitionService$ServiceHandler;,
        Landroid/hardware/motion/MotionRecognitionService$Listener;
    }
.end annotation


# static fields
.field private static final ACTION_MOTIONS_SETTINGS_CHANGED:Ljava/lang/String; = "com.sec.motions.MOTIONS_SETTINGS_CHANGED"

.field private static final CONFIG_BROADCAST_INTENT:Z = false

.field private static final CONFIG_ENGINE_SEND_GYRO:Z = false

.field private static final CONFIG_USE_ALWAYS:Z = false

.field private static final EVENT_FROM_ENGINE:I = 0x55

.field private static final MOTION_COMMAND_ACC_SENSOR_DISABLE:I = 0x5

.field private static final MOTION_COMMAND_ACC_SENSOR_ENABLE:I = 0x4

.field private static final MOTION_COMMAND_CALIBRATE_GYRO:I = 0xf

.field private static final MOTION_COMMAND_GYRO_SENSOR_DISABLE:I = 0x7

.field private static final MOTION_COMMAND_GYRO_SENSOR_ENABLE:I = 0x6

.field private static final MOTION_COMMAND_LIGHT_SENSOR_DISABLE:I = 0xb

.field private static final MOTION_COMMAND_LIGHT_SENSOR_ENABLE:I = 0xa

.field private static final MOTION_COMMAND_MRENGINE_RESET:I = 0x1

.field private static final MOTION_COMMAND_PANNINGD_DISABLE:I = 0xd

.field private static final MOTION_COMMAND_PANNINGD_ENABLE:I = 0xc

.field private static final MOTION_COMMAND_PROX_SENSOR_DISABLE:I = 0x9

.field private static final MOTION_COMMAND_PROX_SENSOR_ENABLE:I = 0x8

.field private static final MOTION_COMMAND_SET_LIST_SCROLL_ANGLE_INTERVAL:I = 0x3

.field private static final MOTION_COMMAND_SET_WINSET_ANGLE_RESET:I = 0x2

.field private static final MOTION_COMMAND_SMART_SCROLL:I = 0x10

.field private static final MOTION_COMMAND_VOLUME_CHANGED:I = 0xe

.field private static final MSG_SEND_FLAT:I = 0x2d

.field private static final TAG:Ljava/lang/String; = "MotionRecognitionService"

.field private static final localLOGD:Z = false

.field private static final localLOGV:Z = false

.field private static final localLOGVV:Z = false

.field private static final mDefaultAppId:I

.field private static final mSensitivityDef:I = 0x5

.field private static final mSensitivityMax:I = 0xa


# instance fields
.field mBootCompeleted:Z

.field private final mContext:Landroid/content/Context;

.field private mEnListenerForYoutube:Z

.field mEngineInitialized:Z

.field mEventPool:Landroid/hardware/motion/MotionRecognitionService$EventPool;

.field mFlatEvent:Z

.field mHandler:Landroid/hardware/motion/MotionRecognitionService$ServiceHandler;

.field private mIntentValid:I

.field private mIsFlat:Z

.field mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/motion/MotionRecognitionService$Listener;",
            ">;"
        }
    .end annotation
.end field

.field mLockEngine:Ljava/lang/Object;

.field mLogPW:Ljava/io/PrintWriter;

.field mLogPath:Ljava/lang/String;

.field mLogTime:J

.field private mPaused:I

.field private mPostMotionVal:[I

.field mPowerTime:J

.field private mQuickPanelOpend:Z

.field mRotate:I

.field mScreenOn:Z

.field mSensorDelayInMsec:I

.field mSensorsEnabled:I

.field mSensorsUsed:I

.field private mSupportedAppCount:I

.field mThread:Landroid/os/HandlerThread;

.field private mbEnabledPanning:Z

.field private mbmultiwindow:Z

.field mfdAccint:I

.field private mrefCntEvents:[I

.field private mrefCntEvents_open:[I

.field private mregisteredEvents_open:I

.field private msspenabled:Z

.field private refPanningDEnabled:I

.field private sensorManager:Landroid/hardware/SensorManager;

.field private final sensorMotionListener:Landroid/hardware/SensorEventListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    sget-object v0, Landroid/hardware/motion/MotionRecognitionEngineAppId$eAPPID;->APPID_TEST:Landroid/hardware/motion/MotionRecognitionEngineAppId$eAPPID;

    invoke-virtual {v0}, Landroid/hardware/motion/MotionRecognitionEngineAppId$eAPPID;->ordinal()I

    move-result v0

    sput v0, Landroid/hardware/motion/MotionRecognitionService;->mDefaultAppId:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v6, 0x0

    const/16 v5, 0x15

    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 150
    invoke-direct {p0}, Landroid/hardware/motion/IMotionRecognitionService$Stub;-><init>()V

    .line 103
    iput v2, p0, Landroid/hardware/motion/MotionRecognitionService;->mSupportedAppCount:I

    .line 104
    iput-boolean v2, p0, Landroid/hardware/motion/MotionRecognitionService;->mEnListenerForYoutube:Z

    .line 105
    iput v4, p0, Landroid/hardware/motion/MotionRecognitionService;->mPaused:I

    .line 106
    iput v2, p0, Landroid/hardware/motion/MotionRecognitionService;->mIntentValid:I

    .line 107
    iput-boolean v2, p0, Landroid/hardware/motion/MotionRecognitionService;->mQuickPanelOpend:Z

    .line 109
    iput-object v3, p0, Landroid/hardware/motion/MotionRecognitionService;->mLogPW:Ljava/io/PrintWriter;

    .line 110
    const-string v1, ""

    iput-object v1, p0, Landroid/hardware/motion/MotionRecognitionService;->mLogPath:Ljava/lang/String;

    .line 111
    iput-wide v6, p0, Landroid/hardware/motion/MotionRecognitionService;->mLogTime:J

    .line 112
    iput-wide v6, p0, Landroid/hardware/motion/MotionRecognitionService;->mPowerTime:J

    .line 114
    iput-object v3, p0, Landroid/hardware/motion/MotionRecognitionService;->mThread:Landroid/os/HandlerThread;

    .line 115
    iput-object v3, p0, Landroid/hardware/motion/MotionRecognitionService;->mHandler:Landroid/hardware/motion/MotionRecognitionService$ServiceHandler;

    .line 117
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/hardware/motion/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;

    .line 118
    iput-object v3, p0, Landroid/hardware/motion/MotionRecognitionService;->mEventPool:Landroid/hardware/motion/MotionRecognitionService$EventPool;

    .line 119
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/hardware/motion/MotionRecognitionService;->mLockEngine:Ljava/lang/Object;

    .line 122
    iput-boolean v2, p0, Landroid/hardware/motion/MotionRecognitionService;->mEngineInitialized:Z

    .line 123
    iput-boolean v2, p0, Landroid/hardware/motion/MotionRecognitionService;->mBootCompeleted:Z

    .line 124
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/hardware/motion/MotionRecognitionService;->mScreenOn:Z

    .line 125
    iput-boolean v2, p0, Landroid/hardware/motion/MotionRecognitionService;->mFlatEvent:Z

    .line 127
    const/16 v1, 0x1c

    iput v1, p0, Landroid/hardware/motion/MotionRecognitionService;->mRotate:I

    .line 128
    iput v2, p0, Landroid/hardware/motion/MotionRecognitionService;->mSensorsUsed:I

    .line 129
    iput v2, p0, Landroid/hardware/motion/MotionRecognitionService;->mSensorsEnabled:I

    .line 130
    const/16 v1, 0x14

    iput v1, p0, Landroid/hardware/motion/MotionRecognitionService;->mSensorDelayInMsec:I

    .line 131
    iput v4, p0, Landroid/hardware/motion/MotionRecognitionService;->mfdAccint:I

    .line 133
    iput-boolean v2, p0, Landroid/hardware/motion/MotionRecognitionService;->msspenabled:Z

    .line 142
    iput-boolean v2, p0, Landroid/hardware/motion/MotionRecognitionService;->mbmultiwindow:Z

    .line 143
    iput v2, p0, Landroid/hardware/motion/MotionRecognitionService;->refPanningDEnabled:I

    .line 144
    iput-boolean v2, p0, Landroid/hardware/motion/MotionRecognitionService;->mbEnabledPanning:Z

    .line 719
    const/4 v1, 0x4

    new-array v1, v1, [I

    iput-object v1, p0, Landroid/hardware/motion/MotionRecognitionService;->mPostMotionVal:[I

    .line 720
    iput-boolean v2, p0, Landroid/hardware/motion/MotionRecognitionService;->mIsFlat:Z

    .line 722
    new-instance v1, Landroid/hardware/motion/MotionRecognitionService$1;

    invoke-direct {v1, p0}, Landroid/hardware/motion/MotionRecognitionService$1;-><init>(Landroid/hardware/motion/MotionRecognitionService;)V

    iput-object v1, p0, Landroid/hardware/motion/MotionRecognitionService;->sensorMotionListener:Landroid/hardware/SensorEventListener;

    .line 151
    iput-object p1, p0, Landroid/hardware/motion/MotionRecognitionService;->mContext:Landroid/content/Context;

    .line 153
    new-instance v1, Landroid/os/HandlerThread;

    const-string/jumbo v2, "motion_recognition"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Landroid/hardware/motion/MotionRecognitionService;->mThread:Landroid/os/HandlerThread;

    .line 154
    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionService;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 155
    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionService;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 156
    .local v0, "looper_svchandler":Landroid/os/Looper;
    if-eqz v0, :cond_0

    .line 157
    new-instance v1, Landroid/hardware/motion/MotionRecognitionService$ServiceHandler;

    invoke-direct {v1, p0, v0}, Landroid/hardware/motion/MotionRecognitionService$ServiceHandler;-><init>(Landroid/hardware/motion/MotionRecognitionService;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/hardware/motion/MotionRecognitionService;->mHandler:Landroid/hardware/motion/MotionRecognitionService$ServiceHandler;

    .line 163
    new-instance v1, Landroid/hardware/motion/MotionRecognitionService$EventPool;

    invoke-direct {v1, p0}, Landroid/hardware/motion/MotionRecognitionService$EventPool;-><init>(Landroid/hardware/motion/MotionRecognitionService;)V

    iput-object v1, p0, Landroid/hardware/motion/MotionRecognitionService;->mEventPool:Landroid/hardware/motion/MotionRecognitionService$EventPool;

    .line 165
    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "sensor"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    iput-object v1, p0, Landroid/hardware/motion/MotionRecognitionService;->sensorManager:Landroid/hardware/SensorManager;

    .line 168
    new-array v1, v5, [I

    iput-object v1, p0, Landroid/hardware/motion/MotionRecognitionService;->mrefCntEvents:[I

    .line 169
    new-array v1, v5, [I

    iput-object v1, p0, Landroid/hardware/motion/MotionRecognitionService;->mrefCntEvents_open:[I

    .line 171
    :goto_0
    return-void

    .line 159
    :cond_0
    const-string v1, "MotionRecognitionService"

    const-string v2, " failed getting looper for service handler "

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$000(Landroid/hardware/motion/MotionRecognitionService;)[I
    .locals 1
    .param p0, "x0"    # Landroid/hardware/motion/MotionRecognitionService;

    .prologue
    .line 68
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionService;->mrefCntEvents:[I

    return-object v0
.end method

.method static synthetic access$100(Landroid/hardware/motion/MotionRecognitionService;)[I
    .locals 1
    .param p0, "x0"    # Landroid/hardware/motion/MotionRecognitionService;

    .prologue
    .line 68
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionService;->mrefCntEvents_open:[I

    return-object v0
.end method

.method static synthetic access$200(Landroid/hardware/motion/MotionRecognitionService;)V
    .locals 0
    .param p0, "x0"    # Landroid/hardware/motion/MotionRecognitionService;

    .prologue
    .line 68
    invoke-direct {p0}, Landroid/hardware/motion/MotionRecognitionService;->disableUnusedSensors()V

    return-void
.end method

.method static synthetic access$300(Landroid/hardware/motion/MotionRecognitionService;)[I
    .locals 1
    .param p0, "x0"    # Landroid/hardware/motion/MotionRecognitionService;

    .prologue
    .line 68
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionService;->mPostMotionVal:[I

    return-object v0
.end method

.method static synthetic access$400(Landroid/hardware/motion/MotionRecognitionService;IIII)V
    .locals 0
    .param p0, "x0"    # Landroid/hardware/motion/MotionRecognitionService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .prologue
    .line 68
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/hardware/motion/MotionRecognitionService;->sendMotionEvent(IIII)V

    return-void
.end method

.method private disableUnusedSensors()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 582
    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 583
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x4

    if-ge v0, v2, :cond_0

    .line 584
    const/4 v2, 0x1

    shl-int v1, v2, v0

    .line 585
    .local v1, "motion_sensor":I
    invoke-direct {p0, v1, v3}, Landroid/hardware/motion/MotionRecognitionService;->useSensor(IZ)V

    .line 583
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 587
    .end local v1    # "motion_sensor":I
    :cond_0
    invoke-direct {p0, v3}, Landroid/hardware/motion/MotionRecognitionService;->enableAllSensors(Z)V

    .line 589
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private enableAllSensors(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 572
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x4

    if-ge v0, v2, :cond_0

    .line 573
    const/4 v2, 0x1

    shl-int v1, v2, v0

    .line 574
    .local v1, "motion_sensor":I
    invoke-direct {p0, v1, p1}, Landroid/hardware/motion/MotionRecognitionService;->enableSensor(IZ)V

    .line 572
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 576
    .end local v1    # "motion_sensor":I
    :cond_0
    return-void
.end method

.method private enableSensor(IZ)V
    .locals 6
    .param p1, "motion_sensor"    # I
    .param p2, "enabled"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 492
    invoke-static {p1}, Landroid/hardware/motion/MotionRecognitionManager;->isValidMotionSensor(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 566
    :cond_0
    :goto_0
    return-void

    .line 495
    :cond_1
    invoke-direct {p0, p1}, Landroid/hardware/motion/MotionRecognitionService;->isSensorEnabled(I)Z

    move-result v0

    if-eq p2, v0, :cond_0

    .line 497
    if-eqz p2, :cond_3

    .line 498
    invoke-direct {p0, p1}, Landroid/hardware/motion/MotionRecognitionService;->isSensorUsed(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 502
    iget v0, p0, Landroid/hardware/motion/MotionRecognitionService;->mSensorsEnabled:I

    if-nez v0, :cond_2

    .line 503
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionService;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionService;->sensorMotionListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionService;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v2}, Landroid/hardware/SensorManager;->getMotionSensor()Landroid/hardware/Sensor;

    move-result-object v2

    iget-object v3, p0, Landroid/hardware/motion/MotionRecognitionService;->mHandler:Landroid/hardware/motion/MotionRecognitionService$ServiceHandler;

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    .line 504
    const-string v0, "MotionRecognitionService"

    const-string v1, "Fail to registerListener : MotionSensor !"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 510
    :cond_2
    iget v0, p0, Landroid/hardware/motion/MotionRecognitionService;->mSensorsEnabled:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/hardware/motion/MotionRecognitionService;->mSensorsEnabled:I

    .line 515
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 517
    :pswitch_1
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionService;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionService;->sensorMotionListener:Landroid/hardware/SensorEventListener;

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2, v4, v5}, Landroid/hardware/SensorManager;->controlMotionSensor(Landroid/hardware/SensorEventListener;II[I)I

    goto :goto_0

    .line 521
    :pswitch_2
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionService;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionService;->sensorMotionListener:Landroid/hardware/SensorEventListener;

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2, v4, v5}, Landroid/hardware/SensorManager;->controlMotionSensor(Landroid/hardware/SensorEventListener;II[I)I

    goto :goto_0

    .line 525
    :pswitch_3
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionService;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionService;->sensorMotionListener:Landroid/hardware/SensorEventListener;

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2, v4, v5}, Landroid/hardware/SensorManager;->controlMotionSensor(Landroid/hardware/SensorEventListener;II[I)I

    goto :goto_0

    .line 529
    :pswitch_4
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionService;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionService;->sensorMotionListener:Landroid/hardware/SensorEventListener;

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v4, v5}, Landroid/hardware/SensorManager;->controlMotionSensor(Landroid/hardware/SensorEventListener;II[I)I

    goto :goto_0

    .line 536
    :cond_3
    iget v0, p0, Landroid/hardware/motion/MotionRecognitionService;->mSensorsEnabled:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/hardware/motion/MotionRecognitionService;->mSensorsEnabled:I

    .line 541
    packed-switch p1, :pswitch_data_1

    .line 561
    :goto_1
    :pswitch_5
    iget v0, p0, Landroid/hardware/motion/MotionRecognitionService;->mSensorsEnabled:I

    if-nez v0, :cond_0

    .line 562
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionService;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionService;->sensorMotionListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    goto :goto_0

    .line 543
    :pswitch_6
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionService;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionService;->sensorMotionListener:Landroid/hardware/SensorEventListener;

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2, v4, v5}, Landroid/hardware/SensorManager;->controlMotionSensor(Landroid/hardware/SensorEventListener;II[I)I

    goto :goto_1

    .line 547
    :pswitch_7
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionService;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionService;->sensorMotionListener:Landroid/hardware/SensorEventListener;

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2, v4, v5}, Landroid/hardware/SensorManager;->controlMotionSensor(Landroid/hardware/SensorEventListener;II[I)I

    goto :goto_1

    .line 551
    :pswitch_8
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionService;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionService;->sensorMotionListener:Landroid/hardware/SensorEventListener;

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2, v4, v5}, Landroid/hardware/SensorManager;->controlMotionSensor(Landroid/hardware/SensorEventListener;II[I)I

    goto :goto_1

    .line 555
    :pswitch_9
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionService;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionService;->sensorMotionListener:Landroid/hardware/SensorEventListener;

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2, v4, v5}, Landroid/hardware/SensorManager;->controlMotionSensor(Landroid/hardware/SensorEventListener;II[I)I

    goto :goto_1

    .line 515
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch

    .line 541
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_7
        :pswitch_5
        :pswitch_8
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_9
    .end packed-switch
.end method

.method private finalizeMotionEngine()V
    .locals 3

    .prologue
    .line 190
    iget-boolean v0, p0, Landroid/hardware/motion/MotionRecognitionService;->mEngineInitialized:Z

    if-nez v0, :cond_0

    .line 198
    :goto_0
    return-void

    .line 191
    :cond_0
    invoke-virtual {p0}, Landroid/hardware/motion/MotionRecognitionService;->sensorLogEnd()V

    .line 192
    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionService;->mLockEngine:Ljava/lang/Object;

    monitor-enter v1

    .line 193
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Landroid/hardware/motion/MotionRecognitionService;->mEngineInitialized:Z

    .line 194
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/hardware/motion/MotionRecognitionService;->enableAllSensors(Z)V

    .line 195
    const-string v0, "MotionRecognitionService"

    const-string v2, "  .finalizeMotionEngine"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/motion/MotionRecognitionService;->mIsFlat:Z

    .line 197
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private initializeMotionEngine()V
    .locals 2

    .prologue
    .line 175
    iget-boolean v0, p0, Landroid/hardware/motion/MotionRecognitionService;->mEngineInitialized:Z

    if-eqz v0, :cond_1

    .line 186
    :cond_0
    :goto_0
    return-void

    .line 176
    :cond_1
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    const-string v0, "MotionRecognitionService"

    const-string v1, "  .initializeMotionEngine"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    invoke-virtual {p0}, Landroid/hardware/motion/MotionRecognitionService;->sensorLogStart()V

    .line 182
    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionService;->mLockEngine:Ljava/lang/Object;

    monitor-enter v1

    .line 183
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Landroid/hardware/motion/MotionRecognitionService;->mEngineInitialized:Z

    .line 184
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/hardware/motion/MotionRecognitionService;->enableAllSensors(Z)V

    .line 185
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private isSensorEnabled(I)Z
    .locals 2
    .param p1, "motion_sensor"    # I

    .prologue
    const/4 v0, 0x0

    .line 467
    invoke-static {p1}, Landroid/hardware/motion/MotionRecognitionManager;->isValidMotionSensor(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 469
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Landroid/hardware/motion/MotionRecognitionService;->mSensorsEnabled:I

    and-int/2addr v1, p1

    if-ne v1, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isSensorUsed(I)Z
    .locals 2
    .param p1, "motion_sensor"    # I

    .prologue
    const/4 v0, 0x0

    .line 458
    invoke-static {p1}, Landroid/hardware/motion/MotionRecognitionManager;->isValidMotionSensor(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 460
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Landroid/hardware/motion/MotionRecognitionService;->mSensorsUsed:I

    and-int/2addr v1, p1

    if-ne v1, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private sendMotionEvent(I)V
    .locals 1
    .param p1, "motion"    # I

    .prologue
    const/4 v0, 0x0

    .line 211
    invoke-direct {p0, p1, v0, v0, v0}, Landroid/hardware/motion/MotionRecognitionService;->sendMotionEvent(IIII)V

    .line 212
    return-void
.end method

.method private sendMotionEvent(IIII)V
    .locals 2
    .param p1, "motion"    # I
    .param p2, "dataX"    # I
    .param p3, "dataY"    # I
    .param p4, "dataZ"    # I

    .prologue
    .line 216
    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionService;->mEventPool:Landroid/hardware/motion/MotionRecognitionService$EventPool;

    invoke-virtual {v1}, Landroid/hardware/motion/MotionRecognitionService$EventPool;->obtain()Landroid/hardware/motion/MREvent;

    move-result-object v0

    .line 217
    .local v0, "motionEvent":Landroid/hardware/motion/MREvent;
    const/16 v1, 0x71

    if-eq p1, v1, :cond_0

    .line 223
    :goto_0
    return-void

    .line 220
    :cond_0
    invoke-virtual {v0, p1}, Landroid/hardware/motion/MREvent;->setMotion(I)V

    .line 221
    invoke-direct {p0, v0}, Landroid/hardware/motion/MotionRecognitionService;->sendMotionEvent(Landroid/hardware/motion/MREvent;)V

    goto :goto_0
.end method

.method private sendMotionEvent(Landroid/hardware/motion/MREvent;)V
    .locals 2
    .param p1, "motionEvent"    # Landroid/hardware/motion/MREvent;

    .prologue
    .line 201
    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 202
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 203
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x55

    iput v1, v0, Landroid/os/Message;->what:I

    .line 204
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 206
    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionService;->mHandler:Landroid/hardware/motion/MotionRecognitionService$ServiceHandler;

    invoke-virtual {v1, v0}, Landroid/hardware/motion/MotionRecognitionService$ServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 208
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private useSensor(IZ)V
    .locals 2
    .param p1, "motion_sensor"    # I
    .param p2, "used"    # Z

    .prologue
    .line 476
    invoke-static {p1}, Landroid/hardware/motion/MotionRecognitionManager;->isValidMotionSensor(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 485
    :cond_0
    :goto_0
    return-void

    .line 479
    :cond_1
    invoke-direct {p0, p1}, Landroid/hardware/motion/MotionRecognitionService;->isSensorUsed(I)Z

    move-result v0

    if-eq p2, v0, :cond_0

    .line 480
    if-eqz p2, :cond_2

    .line 481
    iget v0, p0, Landroid/hardware/motion/MotionRecognitionService;->mSensorsUsed:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/hardware/motion/MotionRecognitionService;->mSensorsUsed:I

    goto :goto_0

    .line 483
    :cond_2
    iget v0, p0, Landroid/hardware/motion/MotionRecognitionService;->mSensorsUsed:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/hardware/motion/MotionRecognitionService;->mSensorsUsed:I

    goto :goto_0
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 10
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 378
    iget-object v7, p0, Landroid/hardware/motion/MotionRecognitionService;->mContext:Landroid/content/Context;

    const-string v8, "android.permission.DUMP"

    invoke-virtual {v7, v8}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_0

    .line 380
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Permission Denial: can\'t dump MotionService from from pid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", uid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " without permission "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "android.permission.DUMP"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 406
    :goto_0
    return-void

    .line 386
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 387
    .local v5, "time":J
    const-string/jumbo v7, "motion_recognition"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 389
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " : mSensorsUsed="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Landroid/hardware/motion/MotionRecognitionService;->mSensorsUsed:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mSensorsEnabled="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Landroid/hardware/motion/MotionRecognitionService;->mSensorsEnabled:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 390
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " : currentTimeMillis="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", lastSensorEventTime="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Landroid/hardware/motion/MotionRecognitionService;->mLogTime:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", diff="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Landroid/hardware/motion/MotionRecognitionService;->mLogTime:J

    sub-long v8, v5, v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 392
    iget-object v8, p0, Landroid/hardware/motion/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v8

    .line 393
    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " : listener count="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v9, p0, Landroid/hardware/motion/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 395
    const/4 v1, 0x0

    .line 396
    .local v1, "i":I
    iget-object v7, p0, Landroid/hardware/motion/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    move v2, v1

    .end local v1    # "i":I
    .local v2, "i":I
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/motion/MotionRecognitionService$Listener;

    .line 397
    .local v4, "listener":Landroid/hardware/motion/MotionRecognitionService$Listener;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "   mListeners["

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "] = mMotionSensors="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v9, v4, Landroid/hardware/motion/MotionRecognitionService$Listener;->mMotionSensors:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ", mUseAlways="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v9, v4, Landroid/hardware/motion/MotionRecognitionService$Listener;->mUseAlways:Z

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 399
    :try_start_1
    iget-object v7, v4, Landroid/hardware/motion/MotionRecognitionService$Listener;->mToken:Landroid/os/IBinder;

    invoke-static {v7}, Landroid/hardware/motion/IMotionRecognitionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/motion/IMotionRecognitionCallback;

    move-result-object v0

    .line 400
    .local v0, "cb":Landroid/hardware/motion/IMotionRecognitionCallback;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "                   "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v0}, Landroid/hardware/motion/IMotionRecognitionCallback;->getListenerInfo()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0    # "cb":Landroid/hardware/motion/IMotionRecognitionCallback;
    :goto_2
    move v2, v1

    .line 402
    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_1

    .line 404
    .end local v4    # "listener":Landroid/hardware/motion/MotionRecognitionService$Listener;
    :cond_1
    :try_start_2
    iget-object v7, p0, Landroid/hardware/motion/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/lang/Object;->notify()V

    .line 405
    monitor-exit v8

    goto/16 :goto_0

    .end local v2    # "i":I
    .end local v3    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v7

    .line 401
    .restart local v1    # "i":I
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v4    # "listener":Landroid/hardware/motion/MotionRecognitionService$Listener;
    :catch_0
    move-exception v7

    goto :goto_2
.end method

.method public registerCallback(Landroid/os/IBinder;II)V
    .locals 18
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "motion_sensors"    # I
    .param p3, "motion_events"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 226
    const/4 v9, 0x0

    .line 228
    .local v9, "l":Landroid/hardware/motion/MotionRecognitionService$Listener;
    const/4 v4, 0x0

    .line 229
    .local v4, "busemotionalways":Z
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/hardware/motion/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v15

    .line 230
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/hardware/motion/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/hardware/motion/MotionRecognitionService$Listener;

    .line 231
    .local v11, "listener":Landroid/hardware/motion/MotionRecognitionService$Listener;
    iget-object v14, v11, Landroid/hardware/motion/MotionRecognitionService$Listener;->mToken:Landroid/os/IBinder;

    move-object/from16 v0, p1

    if-ne v0, v14, :cond_0

    .line 232
    monitor-exit v15

    .line 300
    .end local v11    # "listener":Landroid/hardware/motion/MotionRecognitionService$Listener;
    :cond_1
    return-void

    .line 237
    :cond_2
    if-nez v9, :cond_8

    .line 238
    const/high16 v14, 0x40000000    # 2.0f

    move/from16 v0, p2

    if-ne v0, v14, :cond_3

    .line 239
    const/4 v4, 0x1

    .line 242
    :cond_3
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    const/16 v14, 0x15

    if-ge v7, v14, :cond_6

    .line 243
    const/4 v14, 0x1

    shl-int v12, v14, v7

    .line 244
    .local v12, "motion_event":I
    and-int v14, v12, p3

    if-eqz v14, :cond_5

    .line 245
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/hardware/motion/MotionRecognitionService;->mrefCntEvents:[I

    aget v16, v14, v7

    add-int/lit8 v16, v16, 0x1

    aput v16, v14, v7

    .line 246
    const/4 v14, 0x1

    if-ne v4, v14, :cond_4

    .line 247
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/hardware/motion/MotionRecognitionService;->mrefCntEvents_open:[I

    aget v16, v14, v7

    add-int/lit8 v16, v16, 0x1

    aput v16, v14, v7

    .line 249
    :cond_4
    packed-switch v12, :pswitch_data_0

    .line 254
    and-int/lit8 p2, p2, -0x8

    .line 242
    :cond_5
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 251
    :pswitch_0
    or-int/lit8 p2, p2, 0x7

    .line 252
    goto :goto_1

    .line 261
    .end local v12    # "motion_event":I
    :cond_6
    new-instance v10, Landroid/hardware/motion/MotionRecognitionService$Listener;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-direct {v10, v0, v1, v2, v3}, Landroid/hardware/motion/MotionRecognitionService$Listener;-><init>(Landroid/hardware/motion/MotionRecognitionService;Landroid/os/IBinder;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 262
    .end local v9    # "l":Landroid/hardware/motion/MotionRecognitionService$Listener;
    .local v10, "l":Landroid/hardware/motion/MotionRecognitionService$Listener;
    if-nez p1, :cond_b

    .line 263
    :try_start_1
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/hardware/motion/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v14, v0, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 267
    :goto_2
    const-string v6, ""

    .line 268
    .local v6, "client":Ljava/lang/String;
    if-eqz p1, :cond_7

    .line 269
    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v10, v14}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 272
    :try_start_2
    invoke-static/range {p1 .. p1}, Landroid/hardware/motion/IMotionRecognitionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/motion/IMotionRecognitionCallback;

    move-result-object v5

    .line 273
    .local v5, "cb":Landroid/hardware/motion/IMotionRecognitionCallback;
    invoke-interface {v5}, Landroid/hardware/motion/IMotionRecognitionCallback;->getListenerInfo()Ljava/lang/String;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v6

    .line 277
    .end local v5    # "cb":Landroid/hardware/motion/IMotionRecognitionCallback;
    :cond_7
    :goto_3
    :try_start_3
    const-string v14, "MotionRecognitionService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "  .registerCallback : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/motion/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", motion_sensors="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", client="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-static {v6}, Landroid/hardware/motion/MotionRecognitionManager;->EncodeLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/hardware/motion/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/lang/Object;->notify()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v9, v10

    .line 281
    .end local v6    # "client":Ljava/lang/String;
    .end local v7    # "i":I
    .end local v10    # "l":Landroid/hardware/motion/MotionRecognitionService$Listener;
    .restart local v9    # "l":Landroid/hardware/motion/MotionRecognitionService$Listener;
    :cond_8
    :try_start_4
    monitor-exit v15
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 286
    invoke-direct/range {p0 .. p0}, Landroid/hardware/motion/MotionRecognitionService;->initializeMotionEngine()V

    .line 289
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_4
    const/4 v14, 0x4

    if-ge v7, v14, :cond_1

    .line 290
    const/4 v14, 0x1

    shl-int v13, v14, v7

    .line 291
    .local v13, "motion_sensor":I
    and-int v14, v13, p2

    if-eqz v14, :cond_a

    .line 292
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Landroid/hardware/motion/MotionRecognitionService;->useSensor(IZ)V

    .line 293
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/hardware/motion/MotionRecognitionService;->mLockEngine:Ljava/lang/Object;

    monitor-enter v15

    .line 294
    :try_start_5
    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/hardware/motion/MotionRecognitionService;->mEngineInitialized:Z

    if-eqz v14, :cond_9

    .line 295
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Landroid/hardware/motion/MotionRecognitionService;->enableSensor(IZ)V

    .line 296
    :cond_9
    monitor-exit v15
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 289
    :cond_a
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 265
    .end local v9    # "l":Landroid/hardware/motion/MotionRecognitionService$Listener;
    .end local v13    # "motion_sensor":I
    .restart local v10    # "l":Landroid/hardware/motion/MotionRecognitionService$Listener;
    :cond_b
    :try_start_6
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/hardware/motion/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v14, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_2

    .line 281
    :catchall_0
    move-exception v14

    move-object v9, v10

    .end local v7    # "i":I
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v10    # "l":Landroid/hardware/motion/MotionRecognitionService$Listener;
    .restart local v9    # "l":Landroid/hardware/motion/MotionRecognitionService$Listener;
    :goto_5
    :try_start_7
    monitor-exit v15
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v14

    .line 296
    .restart local v7    # "i":I
    .restart local v8    # "i$":Ljava/util/Iterator;
    .restart local v13    # "motion_sensor":I
    :catchall_1
    move-exception v14

    :try_start_8
    monitor-exit v15
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v14

    .line 281
    .end local v7    # "i":I
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v13    # "motion_sensor":I
    :catchall_2
    move-exception v14

    goto :goto_5

    .line 274
    .end local v9    # "l":Landroid/hardware/motion/MotionRecognitionService$Listener;
    .restart local v6    # "client":Ljava/lang/String;
    .restart local v7    # "i":I
    .restart local v8    # "i$":Ljava/util/Iterator;
    .restart local v10    # "l":Landroid/hardware/motion/MotionRecognitionService$Listener;
    :catch_0
    move-exception v14

    goto/16 :goto_3

    .line 249
    nop

    :pswitch_data_0
    .packed-switch 0x100000
        :pswitch_0
    .end packed-switch
.end method

.method sensorLogEnd()V
    .locals 0

    .prologue
    .line 452
    return-void
.end method

.method sensorLogStart()V
    .locals 8

    .prologue
    .line 418
    iget-object v3, p0, Landroid/hardware/motion/MotionRecognitionService;->mLogPath:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    .line 419
    const-string v3, "log.path.motion.sensor"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/hardware/motion/MotionRecognitionService;->mLogPath:Ljava/lang/String;

    .line 421
    :cond_0
    iget-object v3, p0, Landroid/hardware/motion/MotionRecognitionService;->mLogPath:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/hardware/motion/MotionRecognitionService;->mLogPath:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    .line 445
    :cond_1
    :goto_0
    return-void

    .line 425
    :cond_2
    iget-object v4, p0, Landroid/hardware/motion/MotionRecognitionService;->mLogPath:Ljava/lang/String;

    monitor-enter v4

    .line 426
    :try_start_0
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Landroid/hardware/motion/MotionRecognitionService;->mLogPath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 428
    .local v2, "logFile":Ljava/io/File;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 429
    .local v1, "logDir":Ljava/io/File;
    if-eqz v1, :cond_4

    .line 430
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 431
    :cond_3
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x1fd

    const/4 v6, -0x1

    const/4 v7, -0x1

    invoke-static {v3, v5, v6, v7}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 434
    :cond_4
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 435
    :cond_5
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 436
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x1b6

    const/4 v6, -0x1

    const/4 v7, -0x1

    invoke-static {v3, v5, v6, v7}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 438
    new-instance v3, Ljava/io/PrintWriter;

    invoke-direct {v3, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/File;)V

    iput-object v3, p0, Landroid/hardware/motion/MotionRecognitionService;->mLogPW:Ljava/io/PrintWriter;

    .line 439
    const-string v3, "MotionRecognitionService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  .sensorLogStart : started - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/hardware/motion/MotionRecognitionService;->mLogPath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 444
    .end local v1    # "logDir":Ljava/io/File;
    :goto_1
    :try_start_2
    monitor-exit v4

    goto :goto_0

    .end local v2    # "logFile":Ljava/io/File;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 440
    .restart local v2    # "logFile":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 441
    .local v0, "e":Ljava/io/IOException;
    :try_start_3
    const-string v3, "MotionRecognitionService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  .sensorLogStart : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/hardware/motion/MotionRecognitionService;->mLogPath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/hardware/motion/MotionRecognitionService;->mLogPW:Ljava/io/PrintWriter;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method sensorLogWrite()V
    .locals 0

    .prologue
    .line 448
    return-void
.end method

.method public setLogPath(Ljava/lang/String;)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 409
    if-nez p1, :cond_0

    .line 410
    const-string v0, ""

    iput-object v0, p0, Landroid/hardware/motion/MotionRecognitionService;->mLogPath:Ljava/lang/String;

    .line 414
    :goto_0
    const-string v0, "MotionRecognitionService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  .setLogPath : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionService;->mLogPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    return-void

    .line 412
    :cond_0
    iput-object p1, p0, Landroid/hardware/motion/MotionRecognitionService;->mLogPath:Ljava/lang/String;

    goto :goto_0
.end method

.method public setMotionAngle(Landroid/os/IBinder;I)V
    .locals 11
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 346
    iget-object v6, p0, Landroid/hardware/motion/MotionRecognitionService;->sensorManager:Landroid/hardware/SensorManager;

    if-nez v6, :cond_0

    .line 372
    :goto_0
    return-void

    .line 347
    :cond_0
    const/4 v4, 0x0

    .line 349
    .local v4, "l":Landroid/hardware/motion/MotionRecognitionService$Listener;
    iget-object v7, p0, Landroid/hardware/motion/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v7

    .line 350
    :try_start_0
    iget-object v6, p0, Landroid/hardware/motion/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/motion/MotionRecognitionService$Listener;

    .line 351
    .local v5, "listener":Landroid/hardware/motion/MotionRecognitionService$Listener;
    iget-object v6, v5, Landroid/hardware/motion/MotionRecognitionService$Listener;->mToken:Landroid/os/IBinder;

    if-ne p1, v6, :cond_1

    .line 352
    move-object v4, v5

    .line 356
    .end local v5    # "listener":Landroid/hardware/motion/MotionRecognitionService$Listener;
    :cond_2
    const-string v1, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 358
    .local v1, "client":Ljava/lang/String;
    :try_start_1
    invoke-static {p1}, Landroid/hardware/motion/IMotionRecognitionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/motion/IMotionRecognitionCallback;

    move-result-object v0

    .line 359
    .local v0, "cb":Landroid/hardware/motion/IMotionRecognitionCallback;
    invoke-interface {v0}, Landroid/hardware/motion/IMotionRecognitionCallback;->getListenerInfo()Ljava/lang/String;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 363
    .end local v0    # "cb":Landroid/hardware/motion/IMotionRecognitionCallback;
    :goto_1
    if-eqz v4, :cond_3

    .line 364
    const/4 v6, 0x1

    :try_start_2
    new-array v2, v6, [I

    .line 365
    .local v2, "data":[I
    const/4 v6, 0x0

    aput p2, v2, v6

    .line 366
    iget-object v6, p0, Landroid/hardware/motion/MotionRecognitionService;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v8, p0, Landroid/hardware/motion/MotionRecognitionService;->sensorMotionListener:Landroid/hardware/SensorEventListener;

    const/4 v9, 0x2

    const/4 v10, 0x1

    invoke-virtual {v6, v8, v9, v10, v2}, Landroid/hardware/SensorManager;->controlMotionSensor(Landroid/hardware/SensorEventListener;II[I)I

    .line 367
    const-string v6, "MotionRecognitionService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  .setMotionAngle : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", client="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v1}, Landroid/hardware/motion/MotionRecognitionManager;->EncodeLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    .end local v2    # "data":[I
    :cond_3
    iget-object v6, p0, Landroid/hardware/motion/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/lang/Object;->notify()V

    .line 371
    monitor-exit v7

    goto :goto_0

    .end local v1    # "client":Ljava/lang/String;
    .end local v3    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    .line 360
    .restart local v1    # "client":Ljava/lang/String;
    .restart local v3    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v6

    goto :goto_1
.end method

.method public unregisterCallback(Landroid/os/IBinder;)V
    .locals 11
    .param p1, "binder"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 304
    const/4 v4, 0x0

    .line 305
    .local v4, "l":Landroid/hardware/motion/MotionRecognitionService$Listener;
    const-string v1, ""

    .line 307
    .local v1, "client":Ljava/lang/String;
    iget-object v8, p0, Landroid/hardware/motion/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v8

    .line 308
    :try_start_0
    iget-object v7, p0, Landroid/hardware/motion/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/motion/MotionRecognitionService$Listener;

    .line 309
    .local v5, "listener":Landroid/hardware/motion/MotionRecognitionService$Listener;
    iget-object v7, v5, Landroid/hardware/motion/MotionRecognitionService$Listener;->mToken:Landroid/os/IBinder;

    if-ne p1, v7, :cond_0

    .line 310
    move-object v4, v5

    .line 315
    .end local v5    # "listener":Landroid/hardware/motion/MotionRecognitionService$Listener;
    :cond_1
    if-eqz v4, :cond_5

    .line 316
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/16 v7, 0x15

    if-ge v2, v7, :cond_3

    .line 317
    const/4 v7, 0x1

    shl-int v6, v7, v2

    .line 318
    .local v6, "motion_event":I
    iget v7, v4, Landroid/hardware/motion/MotionRecognitionService$Listener;->mMotionEvents:I

    and-int/2addr v7, v6

    if-eqz v7, :cond_2

    .line 319
    iget-object v7, p0, Landroid/hardware/motion/MotionRecognitionService;->mrefCntEvents:[I

    aget v9, v7, v2

    add-int/lit8 v9, v9, -0x1

    aput v9, v7, v2

    .line 320
    iget v7, v4, Landroid/hardware/motion/MotionRecognitionService$Listener;->mMotionSensors:I

    const/high16 v9, 0x40000000    # 2.0f

    and-int/2addr v7, v9

    if-eqz v7, :cond_2

    .line 321
    iget-object v7, p0, Landroid/hardware/motion/MotionRecognitionService;->mrefCntEvents_open:[I

    aget v9, v7, v2

    add-int/lit8 v9, v9, -0x1

    aput v9, v7, v2

    .line 316
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 324
    .end local v6    # "motion_event":I
    :cond_3
    iget-object v7, p0, Landroid/hardware/motion/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 326
    if-eqz p1, :cond_4

    .line 327
    const/4 v7, 0x0

    invoke-interface {p1, v4, v7}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 329
    :try_start_1
    invoke-static {p1}, Landroid/hardware/motion/IMotionRecognitionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/motion/IMotionRecognitionCallback;

    move-result-object v0

    .line 330
    .local v0, "cb":Landroid/hardware/motion/IMotionRecognitionCallback;
    invoke-interface {v0}, Landroid/hardware/motion/IMotionRecognitionCallback;->getListenerInfo()Ljava/lang/String;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 334
    .end local v0    # "cb":Landroid/hardware/motion/IMotionRecognitionCallback;
    :cond_4
    :goto_1
    :try_start_2
    const-string v7, "MotionRecognitionService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  .unregisterCallback : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Landroid/hardware/motion/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", client="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v1}, Landroid/hardware/motion/MotionRecognitionManager;->EncodeLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    iget-object v7, p0, Landroid/hardware/motion/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/lang/Object;->notify()V

    .line 338
    .end local v2    # "i":I
    :cond_5
    invoke-direct {p0}, Landroid/hardware/motion/MotionRecognitionService;->disableUnusedSensors()V

    .line 340
    iget-object v7, p0, Landroid/hardware/motion/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-nez v7, :cond_6

    invoke-direct {p0}, Landroid/hardware/motion/MotionRecognitionService;->finalizeMotionEngine()V

    .line 341
    :cond_6
    monitor-exit v8

    .line 342
    return-void

    .line 341
    .end local v3    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v7

    .line 331
    .restart local v2    # "i":I
    .restart local v3    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v7

    goto :goto_1
.end method
