.class Lcom/android/server/ServerThread;
.super Ljava/lang/Object;
.source "SystemServer.java"


# static fields
.field private static final ENCRYPTED_STATE:Ljava/lang/String; = "1"

.field private static final ENCRYPTING_STATE:Ljava/lang/String; = "trigger_restart_min_framework"

.field private static final TAG:Ljava/lang/String; = "SystemServer"


# instance fields
.field mContentResolver:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static final startSystemUi(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1180
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1181
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.systemui"

    const-string v3, "com.android.systemui.SystemUIService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1184
    sget-object v1, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 1185
    return-void
.end method


# virtual methods
.method public initAndLoop()V
    .locals 167

    .prologue
    .line 105
    const-string v7, "SystemServer"

    const-string v9, "!@Boot: Start initAndLoop"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    const/16 v7, 0xbc2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    invoke-static {v7, v9, v10}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 109
    invoke-static {}, Landroid/os/Looper;->prepareMainLooper()V

    .line 111
    const/16 v7, -0x13

    invoke-static {v7}, Landroid/os/Process;->setThreadPriority(I)V

    .line 114
    const/4 v7, 0x1

    invoke-static {v7}, Lcom/android/internal/os/BinderInternal;->disableBackgroundScheduling(Z)V

    .line 115
    const/4 v7, 0x0

    invoke-static {v7}, Landroid/os/Process;->setCanSelfBackground(Z)V

    .line 119
    const-string v7, "sys.shutdown.requested"

    const-string v9, ""

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v141

    .line 121
    .local v141, "shutdownAction":Ljava/lang/String;
    if-eqz v141, :cond_0

    invoke-virtual/range {v141 .. v141}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_0

    .line 122
    const/4 v7, 0x0

    move-object/from16 v0, v141

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v9, 0x31

    if-ne v7, v9, :cond_22

    const/16 v135, 0x1

    .line 125
    .local v135, "reboot":Z
    :goto_0
    invoke-virtual/range {v141 .. v141}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v9, 0x1

    if-le v7, v9, :cond_23

    .line 126
    const/4 v7, 0x1

    invoke-virtual/range {v141 .. v141}, Ljava/lang/String;->length()I

    move-result v9

    move-object/from16 v0, v141

    invoke-virtual {v0, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v134

    .line 131
    .local v134, "reason":Ljava/lang/String;
    :goto_1
    move/from16 v0, v135

    move-object/from16 v1, v134

    invoke-static {v0, v1}, Lcom/android/server/power/ShutdownThread;->rebootOrShutdown(ZLjava/lang/String;)V

    .line 135
    .end local v134    # "reason":Ljava/lang/String;
    .end local v135    # "reboot":Z
    :cond_0
    const-string v7, "ro.factorytest"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v107

    .line 136
    .local v107, "factoryTestStr":Ljava/lang/String;
    const-string v7, ""

    move-object/from16 v0, v107

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_24

    const/16 v106, 0x0

    .line 138
    .local v106, "factoryTest":I
    :goto_2
    const-string v7, "1"

    const-string v9, "ro.config.headless"

    const-string v10, "0"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    .line 140
    .local v33, "headless":Z
    const/16 v112, 0x0

    .line 141
    .local v112, "installer":Lcom/android/server/pm/Installer;
    const/16 v62, 0x0

    .line 142
    .local v62, "accountManager":Lcom/android/server/accounts/AccountManagerService;
    const/16 v86, 0x0

    .line 143
    .local v86, "contentService":Lcom/android/server/content/ContentService;
    const/16 v114, 0x0

    .line 144
    .local v114, "lights":Lcom/android/server/LightsService;
    const/4 v4, 0x0

    .line 145
    .local v4, "power":Lcom/android/server/power/PowerManagerService;
    const/16 v100, 0x0

    .line 146
    .local v100, "display":Lcom/android/server/display/DisplayManagerService;
    const/16 v69, 0x0

    .line 147
    .local v69, "battery":Lcom/android/server/BatteryService;
    const/16 v156, 0x0

    .line 148
    .local v156, "vibrator":Lcom/android/server/VibratorService;
    const/16 v64, 0x0

    .line 149
    .local v64, "alarm":Lcom/android/server/AlarmManagerService;
    const/16 v122, 0x0

    .line 150
    .local v122, "mountService":Lcom/android/server/MountService;
    const/16 v30, 0x0

    .line 151
    .local v30, "networkManagement":Lcom/android/server/NetworkManagementService;
    const/16 v29, 0x0

    .line 152
    .local v29, "networkStats":Lcom/android/server/net/NetworkStatsService;
    const/16 v124, 0x0

    .line 153
    .local v124, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    const/16 v82, 0x0

    .line 154
    .local v82, "connectivity":Lcom/android/server/ConnectivityService;
    const/16 v78, 0x0

    .line 155
    .local v78, "cneObj":Ljava/lang/Object;
    const/16 v163, 0x0

    .line 156
    .local v163, "wifiP2p":Landroid/net/wifi/p2p/WifiP2pService;
    const/16 v161, 0x0

    .line 157
    .local v161, "wifi":Lcom/android/server/wifi/WifiService;
    const/16 v140, 0x0

    .line 158
    .local v140, "serviceDiscovery":Lcom/android/server/NsdService;
    const/16 v130, 0x0

    .line 159
    .local v130, "pm":Landroid/content/pm/IPackageManager;
    const/4 v5, 0x0

    .line 160
    .local v5, "context":Landroid/content/Context;
    const/16 v165, 0x0

    .line 161
    .local v165, "wm":Lcom/android/server/wm/WindowManagerService;
    const/16 v70, 0x0

    .line 162
    .local v70, "bluetooth":Lcom/android/server/BluetoothManagerService;
    const/16 v101, 0x0

    .line 163
    .local v101, "dock":Lcom/android/server/DockObserver;
    const/16 v153, 0x0

    .line 164
    .local v153, "usb":Lcom/android/server/usb/UsbService;
    const/16 v138, 0x0

    .line 165
    .local v138, "serial":Lcom/android/server/SerialService;
    const/16 v149, 0x0

    .line 166
    .local v149, "twilight":Lcom/android/server/TwilightService;
    const/16 v151, 0x0

    .line 167
    .local v151, "uiMode":Lcom/android/server/UiModeManagerService;
    const/16 v136, 0x0

    .line 168
    .local v136, "recognition":Lcom/android/server/RecognitionManagerService;
    const/16 v126, 0x0

    .line 169
    .local v126, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    const/16 v79, 0x0

    .line 170
    .local v79, "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    const/16 v111, 0x0

    .line 171
    .local v111, "inputManager":Lcom/android/server/input/InputManagerService;
    const/16 v145, 0x0

    .line 172
    .local v145, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    const/16 v84, 0x0

    .line 175
    .local v84, "consumerIr":Lcom/android/server/ConsumerIrService;
    new-instance v166, Landroid/os/HandlerThread;

    const-string v7, "WindowManager"

    move-object/from16 v0, v166

    invoke-direct {v0, v7}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 176
    .local v166, "wmHandlerThread":Landroid/os/HandlerThread;
    invoke-virtual/range {v166 .. v166}, Landroid/os/HandlerThread;->start()V

    .line 177
    new-instance v21, Landroid/os/Handler;

    invoke-virtual/range {v166 .. v166}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v7

    move-object/from16 v0, v21

    invoke-direct {v0, v7}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 178
    .local v21, "wmHandler":Landroid/os/Handler;
    new-instance v7, Lcom/android/server/ServerThread$1;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/android/server/ServerThread$1;-><init>(Lcom/android/server/ServerThread;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 195
    const/16 v24, 0x0

    .line 196
    .local v24, "onlyCore":Z
    const/16 v108, 0x0

    .line 201
    .local v108, "firstBoot":Z
    :try_start_0
    const-string v7, "SystemServer"

    const-string v9, "Waiting for installd to be ready."

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    new-instance v113, Lcom/android/server/pm/Installer;

    invoke-direct/range {v113 .. v113}, Lcom/android/server/pm/Installer;-><init>()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    .end local v112    # "installer":Lcom/android/server/pm/Installer;
    .local v113, "installer":Lcom/android/server/pm/Installer;
    :try_start_1
    invoke-virtual/range {v113 .. v113}, Lcom/android/server/pm/Installer;->ping()Z

    .line 205
    const-string v7, "SystemServer"

    const-string v9, "Power Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    new-instance v131, Lcom/android/server/power/PowerManagerService;

    invoke-direct/range {v131 .. v131}, Lcom/android/server/power/PowerManagerService;-><init>()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_63

    .line 207
    .end local v4    # "power":Lcom/android/server/power/PowerManagerService;
    .local v131, "power":Lcom/android/server/power/PowerManagerService;
    :try_start_2
    const-string v7, "power"

    move-object/from16 v0, v131

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 209
    const-string v7, "SystemServer"

    const-string v9, "Activity Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    invoke-static/range {v106 .. v106}, Lcom/android/server/am/ActivityManagerService;->main(I)Landroid/content/Context;
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_64

    move-result-object v5

    move-object/from16 v4, v131

    .end local v131    # "power":Lcom/android/server/power/PowerManagerService;
    .restart local v4    # "power":Lcom/android/server/power/PowerManagerService;
    move-object/from16 v112, v113

    .line 216
    .end local v113    # "installer":Lcom/android/server/pm/Installer;
    .restart local v112    # "installer":Lcom/android/server/pm/Installer;
    :goto_3
    const-string v7, "config.disable_storage"

    const/4 v9, 0x0

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v97

    .line 217
    .local v97, "disableStorage":Z
    const-string v7, "config.disable_media"

    const/4 v9, 0x0

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v94

    .line 218
    .local v94, "disableMedia":Z
    const-string v7, "config.disable_bluetooth"

    const/4 v9, 0x0

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v92

    .line 219
    .local v92, "disableBluetooth":Z
    const-string v7, "config.disable_telephony"

    const/4 v9, 0x0

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v99

    .line 220
    .local v99, "disableTelephony":Z
    const-string v7, "config.disable_location"

    const/4 v9, 0x0

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v93

    .line 221
    .local v93, "disableLocation":Z
    const-string v7, "config.disable_systemui"

    const/4 v9, 0x0

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v98

    .line 222
    .local v98, "disableSystemUI":Z
    const-string v7, "config.disable_noncore"

    const/4 v9, 0x0

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v96

    .line 223
    .local v96, "disableNonCoreServices":Z
    const-string v7, "config.disable_network"

    const/4 v9, 0x0

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v95

    .line 226
    .local v95, "disableNetwork":Z
    :try_start_3
    const-string v7, "SystemServer"

    const-string v9, "Display Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    new-instance v11, Lcom/android/server/display/DisplayManagerService;

    move-object/from16 v0, v21

    invoke-direct {v11, v5, v0}, Lcom/android/server/display/DisplayManagerService;-><init>(Landroid/content/Context;Landroid/os/Handler;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_5a

    .line 228
    .end local v100    # "display":Lcom/android/server/display/DisplayManagerService;
    .local v11, "display":Lcom/android/server/display/DisplayManagerService;
    :try_start_4
    const-string v7, "display"

    const/4 v9, 0x1

    invoke-static {v7, v11, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;Z)V

    .line 230
    const-string v7, "SystemServer"

    const-string v9, "Telephony Registry"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    new-instance v146, Lcom/android/server/TelephonyRegistry;

    move-object/from16 v0, v146

    invoke-direct {v0, v5}, Lcom/android/server/TelephonyRegistry;-><init>(Landroid/content/Context;)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_5b

    .line 232
    .end local v145    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v146, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :try_start_5
    const-string v7, "telephony.registry"

    move-object/from16 v0, v146

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 234
    const-string v7, "SystemServer"

    const-string v9, "Scheduling Policy"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    const-string v7, "scheduling_policy"

    new-instance v9, Lcom/android/server/os/SchedulingPolicyService;

    invoke-direct {v9}, Lcom/android/server/os/SchedulingPolicyService;-><init>()V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 237
    invoke-static {v5}, Lcom/android/server/AttributeCache;->init(Landroid/content/Context;)V

    .line 239
    invoke-virtual {v11}, Lcom/android/server/display/DisplayManagerService;->waitForDefaultDisplay()Z

    move-result v7

    if-nez v7, :cond_1

    .line 240
    const-string v7, "Timeout waiting for default display to be initialized."

    new-instance v9, Ljava/lang/Throwable;

    invoke-direct {v9}, Ljava/lang/Throwable;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v9}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 244
    :cond_1
    const-string v7, "SystemServer"

    const-string v9, "Package Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    const-string v7, "vold.decrypt"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v89

    .line 247
    .local v89, "cryptState":Ljava/lang/String;
    const-string v7, "trigger_restart_min_framework"

    move-object/from16 v0, v89

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_25

    .line 248
    const-string v7, "SystemServer"

    const-string v9, "Detected encryption in progress - only parsing core apps"

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    const/16 v24, 0x1

    .line 258
    :goto_4
    const-string v7, "SystemServer"

    const-string v9, "!@Boot: Start PackageManagerService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    if-eqz v106, :cond_27

    const/4 v7, 0x1

    :goto_5
    move-object/from16 v0, v112

    move/from16 v1, v24

    invoke-static {v5, v0, v7, v1}, Lcom/android/server/pm/PackageManagerService;->main(Landroid/content/Context;Lcom/android/server/pm/Installer;ZZ)Landroid/content/pm/IPackageManager;

    move-result-object v130

    .line 262
    const-string v7, "SystemServer"

    const-string v9, "!@Boot: End PackageManagerService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_1

    .line 264
    :try_start_6
    invoke-interface/range {v130 .. v130}, Landroid/content/pm/IPackageManager;->isFirstBoot()Z
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_41
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_1

    move-result v108

    .line 268
    :goto_6
    :try_start_7
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->setSystemProcess()V

    .line 270
    const-string v7, "SystemServer"

    const-string v9, "Entropy Mixer"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    const-string v7, "entropy"

    new-instance v9, Lcom/android/server/EntropyMixer;

    invoke-direct {v9, v5}, Lcom/android/server/EntropyMixer;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 273
    const-string v7, "SystemServer"

    const-string v9, "User Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    const-string v7, "user"

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 277
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/android/server/ServerThread;->mContentResolver:Landroid/content/ContentResolver;
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_1

    .line 282
    :try_start_8
    const-string v7, "SystemServer"

    const-string v9, "Account Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    new-instance v63, Lcom/android/server/accounts/AccountManagerService;

    move-object/from16 v0, v63

    invoke-direct {v0, v5}, Lcom/android/server/accounts/AccountManagerService;-><init>(Landroid/content/Context;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_1

    .line 284
    .end local v62    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .local v63, "accountManager":Lcom/android/server/accounts/AccountManagerService;
    :try_start_9
    const-string v7, "account"

    move-object/from16 v0, v63

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_62
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_5c

    move-object/from16 v62, v63

    .line 289
    .end local v63    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v62    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    :goto_7
    :try_start_a
    const-string v7, "SystemServer"

    const-string v9, "Content Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    const/4 v7, 0x1

    move/from16 v0, v106

    if-ne v0, v7, :cond_28

    const/4 v7, 0x1

    :goto_8
    invoke-static {v5, v7}, Lcom/android/server/content/ContentService;->main(Landroid/content/Context;Z)Lcom/android/server/content/ContentService;

    move-result-object v86

    const-string v7, "SystemServer"

    const-string v9, "System Content Providers"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->installSystemProviders()V

    const-string v7, "SystemServer"

    const-string v9, "Lights Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Lcom/android/server/MiuiLightsService;

    invoke-direct {v6, v5}, Lcom/android/server/MiuiLightsService;-><init>(Landroid/content/Context;)V
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_1

    .end local v114    # "lights":Lcom/android/server/LightsService;
    .local v6, "lights":Lcom/android/server/LightsService;
    :try_start_b
    const-string v7, "SystemServer"

    const-string v9, "Battery Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    new-instance v8, Lcom/android/server/BatteryService;

    invoke-direct {v8, v5, v6}, Lcom/android/server/BatteryService;-><init>(Landroid/content/Context;Lcom/android/server/LightsService;)V
    :try_end_b
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_5d

    .line 301
    .end local v69    # "battery":Lcom/android/server/BatteryService;
    .local v8, "battery":Lcom/android/server/BatteryService;
    :try_start_c
    const-string v7, "battery"

    invoke-static {v7, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 303
    const-string v7, "SystemServer"

    const-string v9, "Vibrator Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    new-instance v157, Lcom/android/server/VibratorService;

    move-object/from16 v0, v157

    invoke-direct {v0, v5}, Lcom/android/server/VibratorService;-><init>(Landroid/content/Context;)V
    :try_end_c
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_5e

    .line 305
    .end local v156    # "vibrator":Lcom/android/server/VibratorService;
    .local v157, "vibrator":Lcom/android/server/VibratorService;
    :try_start_d
    const-string v7, "vibrator"

    move-object/from16 v0, v157

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 307
    const-string v7, "SystemServer"

    const-string v9, "SSRM Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_4

    .line 309
    :try_start_e
    new-instance v73, Ldalvik/system/PathClassLoader;

    const-string v7, "/system/framework/ssrm.jar"

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    move-object/from16 v0, v73

    invoke-direct {v0, v7, v9}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 310
    .local v73, "cfmsClassLoader":Ldalvik/system/PathClassLoader;
    const-string v7, "com.android.server.ssrm.CustomFrequencyManagerService"

    move-object/from16 v0, v73

    invoke-virtual {v0, v7}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v72

    .line 311
    .local v72, "cfmsClass":Ljava/lang/Class;
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Landroid/content/Context;

    aput-object v10, v7, v9

    const/4 v9, 0x1

    const-class v10, Landroid/app/IActivityManager;

    aput-object v10, v7, v9

    move-object/from16 v0, v72

    invoke-virtual {v0, v7}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v74

    .line 312
    .local v74, "cfmsConstructor":Ljava/lang/reflect/Constructor;
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v5, v7, v9

    const/4 v9, 0x1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v10

    aput-object v10, v7, v9

    move-object/from16 v0, v74

    invoke-virtual {v0, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v142

    check-cast v142, Landroid/os/IBinder;

    .line 313
    .local v142, "ssrmService":Landroid/os/IBinder;
    const-string v7, "CustomFrequencyManagerService"

    move-object/from16 v0, v142

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_4

    .line 318
    .end local v72    # "cfmsClass":Ljava/lang/Class;
    .end local v73    # "cfmsClassLoader":Ldalvik/system/PathClassLoader;
    .end local v74    # "cfmsConstructor":Ljava/lang/reflect/Constructor;
    .end local v142    # "ssrmService":Landroid/os/IBinder;
    :goto_9
    :try_start_f
    const-string v7, "SystemServer"

    const-string v9, "Consumer IR Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    new-instance v85, Lcom/android/server/ConsumerIrService;

    move-object/from16 v0, v85

    invoke-direct {v0, v5}, Lcom/android/server/ConsumerIrService;-><init>(Landroid/content/Context;)V
    :try_end_f
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_4

    .line 320
    .end local v84    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .local v85, "consumerIr":Lcom/android/server/ConsumerIrService;
    :try_start_10
    const-string v7, "consumer_ir"

    move-object/from16 v0, v85

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 324
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v9

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/server/am/ActivityManagerService;->getAppOpsService()Lcom/android/internal/app/IAppOpsService;

    move-result-object v10

    invoke-virtual/range {v4 .. v11}, Lcom/android/server/power/PowerManagerService;->init(Landroid/content/Context;Lcom/android/server/LightsService;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/BatteryService;Lcom/android/internal/app/IBatteryStats;Lcom/android/internal/app/IAppOpsService;Lcom/android/server/display/DisplayManagerService;)V

    .line 328
    const-string v7, "SystemServer"

    const-string v9, "Alarm Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    new-instance v16, Lcom/android/server/AlarmManagerService;

    move-object/from16 v0, v16

    invoke-direct {v0, v5}, Lcom/android/server/AlarmManagerService;-><init>(Landroid/content/Context;)V
    :try_end_10
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_5f

    .line 330
    .end local v64    # "alarm":Lcom/android/server/AlarmManagerService;
    .local v16, "alarm":Lcom/android/server/AlarmManagerService;
    :try_start_11
    const-string v7, "alarm"

    move-object/from16 v0, v16

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 332
    const-string v7, "SystemServer"

    const-string v9, "Init Watchdog"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v12

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v17

    move-object v13, v5

    move-object v14, v8

    move-object v15, v4

    invoke-virtual/range {v12 .. v17}, Lcom/android/server/Watchdog;->init(Landroid/content/Context;Lcom/android/server/BatteryService;Lcom/android/server/power/PowerManagerService;Lcom/android/server/AlarmManagerService;Lcom/android/server/am/ActivityManagerService;)V

    .line 335
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v7

    const-string v9, "WindowManager thread"

    move-object/from16 v0, v21

    invoke-virtual {v7, v0, v9}, Lcom/android/server/Watchdog;->addThread(Landroid/os/Handler;Ljava/lang/String;)V

    .line 337
    const-string v7, "SystemServer"

    const-string v9, "Input Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    new-instance v20, Lcom/android/server/input/InputManagerService;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v0, v5, v1}, Lcom/android/server/input/InputManagerService;-><init>(Landroid/content/Context;Landroid/os/Handler;)V
    :try_end_11
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_11} :catch_60

    .line 340
    .end local v111    # "inputManager":Lcom/android/server/input/InputManagerService;
    .local v20, "inputManager":Lcom/android/server/input/InputManagerService;
    :try_start_12
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const-string v9, "com.sec.feature.sensorhub"

    invoke-virtual {v7, v9}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 341
    const-string v7, "SystemServer"

    const-string v9, "Context Aware Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    const-string v7, "context_aware"

    new-instance v9, Landroid/hardware/contextaware/manager/ContextAwareService;

    invoke-direct {v9, v5}, Landroid/hardware/contextaware/manager/ContextAwareService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 344
    const-string v7, "SystemServer"

    const-string v9, "SContext Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    const-string v7, "scontext"

    new-instance v9, Landroid/hardware/scontext/SContextService;

    invoke-direct {v9, v5}, Landroid/hardware/scontext/SContextService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 348
    :cond_2
    const-string v7, "SystemServer"

    const-string v9, "Window Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    const/4 v7, 0x1

    move/from16 v0, v106

    if-eq v0, v7, :cond_29

    const/16 v22, 0x1

    :goto_a
    if-nez v108, :cond_2a

    const/16 v23, 0x1

    :goto_b
    move-object/from16 v17, v5

    move-object/from16 v18, v4

    move-object/from16 v19, v11

    invoke-static/range {v17 .. v24}, Lcom/android/server/wm/WindowManagerService;->main(Landroid/content/Context;Lcom/android/server/power/PowerManagerService;Lcom/android/server/display/DisplayManagerService;Lcom/android/server/input/InputManagerService;Landroid/os/Handler;ZZZ)Lcom/android/server/wm/WindowManagerService;

    move-result-object v165

    .line 352
    const-string v7, "window"

    move-object/from16 v0, v165

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 353
    const-string v7, "input"

    move-object/from16 v0, v20

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 355
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    move-object/from16 v0, v165

    invoke-virtual {v7, v0}, Lcom/android/server/am/ActivityManagerService;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    .line 357
    invoke-virtual/range {v165 .. v165}, Lcom/android/server/wm/WindowManagerService;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v7

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Lcom/android/server/input/InputManagerService;->setWindowManagerCallbacks(Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;)V

    .line 358
    invoke-virtual/range {v20 .. v20}, Lcom/android/server/input/InputManagerService;->start()V

    .line 360
    move-object/from16 v0, v165

    invoke-virtual {v11, v0}, Lcom/android/server/display/DisplayManagerService;->setWindowManager(Lcom/android/server/display/DisplayManagerService$WindowManagerFuncs;)V

    .line 361
    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Lcom/android/server/display/DisplayManagerService;->setInputManager(Lcom/android/server/display/DisplayManagerService$InputManagerFuncs;)V

    .line 366
    const-string v7, "ro.kernel.qemu"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v9, "1"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2b

    .line 367
    const-string v7, "SystemServer"

    const-string v9, "No Bluetooh Service (emulator)"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_12} :catch_5

    :goto_c
    move-object/from16 v84, v85

    .end local v85    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v84    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v145, v146

    .end local v146    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v145    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v156, v157

    .line 385
    .end local v89    # "cryptState":Ljava/lang/String;
    .end local v157    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v156    # "vibrator":Lcom/android/server/VibratorService;
    :goto_d
    const/16 v90, 0x0

    .line 386
    .local v90, "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    const/16 v143, 0x0

    .line 387
    .local v143, "statusBar":Lcom/android/server/StatusBarManagerService;
    const/16 v109, 0x0

    .line 388
    .local v109, "imm":Lcom/android/server/InputMethodManagerService;
    const/16 v65, 0x0

    .line 389
    .local v65, "appWidget":Lcom/android/server/AppWidgetService;
    const/16 v128, 0x0

    .line 390
    .local v128, "notification":Lcom/android/server/NotificationManagerService;
    const/16 v159, 0x0

    .line 391
    .local v159, "wallpaper":Lcom/android/server/WallpaperManagerService;
    const/16 v115, 0x0

    .line 392
    .local v115, "location":Lcom/android/server/LocationManagerService;
    const/16 v87, 0x0

    .line 393
    .local v87, "countryDetector":Lcom/android/server/CountryDetectorService;
    const/16 v147, 0x0

    .line 394
    .local v147, "tsms":Lcom/android/server/TextServicesManagerService;
    const/16 v117, 0x0

    .line 395
    .local v117, "lockSettings":Lcom/android/server/LockSettingsService;
    const/16 v103, 0x0

    .line 396
    .local v103, "dreamy":Lcom/android/server/dreams/DreamManagerService;
    const/16 v67, 0x0

    .line 397
    .local v67, "atlas":Lcom/android/server/AssetAtlasService;
    const/16 v132, 0x0

    .line 398
    .local v132, "printManager":Lcom/android/server/print/PrintManagerService;
    const/16 v119, 0x0

    .line 401
    .local v119, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    const/4 v7, 0x1

    move/from16 v0, v106

    if-eq v0, v7, :cond_3

    .line 405
    :try_start_13
    const-string v7, "SystemServer"

    const-string v9, "Input Method Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    new-instance v110, Lcom/android/server/InputMethodManagerService;

    move-object/from16 v0, v110

    move-object/from16 v1, v165

    invoke-direct {v0, v5, v1}, Lcom/android/server/InputMethodManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_6

    .line 407
    .end local v109    # "imm":Lcom/android/server/InputMethodManagerService;
    .local v110, "imm":Lcom/android/server/InputMethodManagerService;
    :try_start_14
    const-string v7, "input_method"

    move-object/from16 v0, v110

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_59

    move-object/from16 v109, v110

    .line 413
    .end local v110    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v109    # "imm":Lcom/android/server/InputMethodManagerService;
    :goto_e
    :try_start_15
    const-string v7, "SystemServer"

    const-string v9, "Accessibility Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    const-string v7, "accessibility"

    new-instance v9, Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {v9, v5}, Lcom/android/server/accessibility/AccessibilityManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_7

    .line 423
    :cond_3
    :goto_f
    :try_start_16
    invoke-virtual/range {v165 .. v165}, Lcom/android/server/wm/WindowManagerService;->displayReady()V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_8

    .line 429
    :goto_10
    :try_start_17
    invoke-interface/range {v130 .. v130}, Landroid/content/pm/IPackageManager;->performBootDexOpt()V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_9

    .line 435
    :goto_11
    :try_start_18
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v7

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x104041e

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v7, v9, v10}, Landroid/app/IActivityManager;->showBootMessage(Ljava/lang/CharSequence;Z)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_18} :catch_58

    .line 442
    :goto_12
    const/4 v7, 0x1

    move/from16 v0, v106

    if-eq v0, v7, :cond_31

    .line 443
    if-nez v97, :cond_4

    const-string v7, "0"

    const-string v9, "system_init.startmountservice"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 450
    :try_start_19
    const-string v7, "SystemServer"

    const-string v9, "Mount Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    new-instance v123, Lcom/android/server/MountService;

    move-object/from16 v0, v123

    invoke-direct {v0, v5}, Lcom/android/server/MountService;-><init>(Landroid/content/Context;)V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_19} :catch_a

    .line 452
    .end local v122    # "mountService":Lcom/android/server/MountService;
    .local v123, "mountService":Lcom/android/server/MountService;
    :try_start_1a
    const-string v7, "mount"

    move-object/from16 v0, v123

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1a} :catch_57

    move-object/from16 v122, v123

    .line 458
    .end local v123    # "mountService":Lcom/android/server/MountService;
    .restart local v122    # "mountService":Lcom/android/server/MountService;
    :cond_4
    :goto_13
    if-nez v96, :cond_5

    .line 460
    :try_start_1b
    const-string v7, "SystemServer"

    const-string v9, "LockSettingsService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    new-instance v118, Lcom/android/server/LockSettingsService;

    move-object/from16 v0, v118

    invoke-direct {v0, v5}, Lcom/android/server/LockSettingsService;-><init>(Landroid/content/Context;)V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1b} :catch_b

    .line 462
    .end local v117    # "lockSettings":Lcom/android/server/LockSettingsService;
    .local v118, "lockSettings":Lcom/android/server/LockSettingsService;
    :try_start_1c
    const-string v7, "lock_settings"

    move-object/from16 v0, v118

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_1c} :catch_56

    move-object/from16 v117, v118

    .line 468
    .end local v118    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v117    # "lockSettings":Lcom/android/server/LockSettingsService;
    :goto_14
    :try_start_1d
    const-string v7, "SystemServer"

    const-string v9, "Device Policy"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    new-instance v91, Lcom/android/server/DevicePolicyManagerService;

    move-object/from16 v0, v91

    invoke-direct {v0, v5}, Lcom/android/server/DevicePolicyManagerService;-><init>(Landroid/content/Context;)V
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_1d} :catch_c

    .line 470
    .end local v90    # "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    .local v91, "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    :try_start_1e
    const-string v7, "device_policy"

    move-object/from16 v0, v91

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_1e} :catch_55

    move-object/from16 v90, v91

    .line 476
    .end local v91    # "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    .restart local v90    # "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    :cond_5
    :goto_15
    if-nez v98, :cond_6

    .line 478
    :try_start_1f
    const-string v7, "SystemServer"

    const-string v9, "Status Bar"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    new-instance v144, Lcom/android/server/StatusBarManagerService;

    move-object/from16 v0, v144

    move-object/from16 v1, v165

    invoke-direct {v0, v5, v1}, Lcom/android/server/StatusBarManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_1f} :catch_d

    .line 480
    .end local v143    # "statusBar":Lcom/android/server/StatusBarManagerService;
    .local v144, "statusBar":Lcom/android/server/StatusBarManagerService;
    :try_start_20
    const-string v7, "statusbar"

    move-object/from16 v0, v144

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_20} :catch_54

    move-object/from16 v143, v144

    .line 486
    .end local v144    # "statusBar":Lcom/android/server/StatusBarManagerService;
    .restart local v143    # "statusBar":Lcom/android/server/StatusBarManagerService;
    :cond_6
    :goto_16
    if-nez v96, :cond_7

    .line 488
    :try_start_21
    const-string v7, "SystemServer"

    const-string v9, "Clipboard Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    const-string v7, "clipboard"

    new-instance v9, Lcom/android/server/ClipboardService;

    invoke-direct {v9, v5}, Lcom/android/server/ClipboardService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_21} :catch_e

    .line 496
    :cond_7
    :goto_17
    if-nez v95, :cond_8

    .line 498
    :try_start_22
    const-string v7, "SystemServer"

    const-string v9, "NetworkManagement Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    invoke-static {v5}, Lcom/android/server/NetworkManagementService;->create(Landroid/content/Context;)Lcom/android/server/NetworkManagementService;

    move-result-object v30

    .line 500
    const-string v7, "network_management"

    move-object/from16 v0, v30

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_22} :catch_f

    .line 506
    :cond_8
    :goto_18
    if-nez v96, :cond_9

    .line 508
    :try_start_23
    const-string v7, "SystemServer"

    const-string v9, "Text Service Manager Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    new-instance v148, Lcom/android/server/TextServicesManagerService;

    move-object/from16 v0, v148

    invoke-direct {v0, v5}, Lcom/android/server/TextServicesManagerService;-><init>(Landroid/content/Context;)V
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_23} :catch_10

    .line 510
    .end local v147    # "tsms":Lcom/android/server/TextServicesManagerService;
    .local v148, "tsms":Lcom/android/server/TextServicesManagerService;
    :try_start_24
    const-string v7, "textservices"

    move-object/from16 v0, v148

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_24} :catch_53

    move-object/from16 v147, v148

    .line 516
    .end local v148    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v147    # "tsms":Lcom/android/server/TextServicesManagerService;
    :cond_9
    :goto_19
    if-nez v95, :cond_30

    .line 518
    :try_start_25
    const-string v7, "SystemServer"

    const-string v9, "NetworkStats Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    new-instance v125, Lcom/android/server/net/NetworkStatsService;

    move-object/from16 v0, v125

    move-object/from16 v1, v30

    move-object/from16 v2, v16

    invoke-direct {v0, v5, v1, v2}, Lcom/android/server/net/NetworkStatsService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/app/IAlarmManager;)V
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_25} :catch_11

    .line 520
    .end local v29    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .local v125, "networkStats":Lcom/android/server/net/NetworkStatsService;
    :try_start_26
    const-string v7, "netstats"

    move-object/from16 v0, v125

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_26} :catch_52

    move-object/from16 v29, v125

    .line 526
    .end local v125    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .restart local v29    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    :goto_1a
    :try_start_27
    const-string v7, "SystemServer"

    const-string v9, "NetworkPolicy Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    new-instance v25, Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v27

    move-object/from16 v26, v5

    move-object/from16 v28, v4

    invoke-direct/range {v25 .. v30}, Lcom/android/server/net/NetworkPolicyManagerService;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/os/IPowerManager;Landroid/net/INetworkStatsService;Landroid/os/INetworkManagementService;)V
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_27} :catch_12

    .line 530
    .end local v124    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .local v25, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :try_start_28
    const-string v7, "netpolicy"

    move-object/from16 v0, v25

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_28} :catch_51

    .line 536
    :goto_1b
    :try_start_29
    const-string v7, "SystemServer"

    const-string v9, "Wi-Fi P2pService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    new-instance v164, Landroid/net/wifi/p2p/WifiP2pService;

    move-object/from16 v0, v164

    invoke-direct {v0, v5}, Landroid/net/wifi/p2p/WifiP2pService;-><init>(Landroid/content/Context;)V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_29} :catch_13

    .line 538
    .end local v163    # "wifiP2p":Landroid/net/wifi/p2p/WifiP2pService;
    .local v164, "wifiP2p":Landroid/net/wifi/p2p/WifiP2pService;
    :try_start_2a
    const-string v7, "wifip2p"

    move-object/from16 v0, v164

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_2a} :catch_50

    move-object/from16 v163, v164

    .line 544
    .end local v164    # "wifiP2p":Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v163    # "wifiP2p":Landroid/net/wifi/p2p/WifiP2pService;
    :goto_1c
    :try_start_2b
    const-string v7, "SystemServer"

    const-string v9, "Wi-Fi Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    new-instance v162, Lcom/android/server/wifi/WifiService;

    move-object/from16 v0, v162

    invoke-direct {v0, v5}, Lcom/android/server/wifi/WifiService;-><init>(Landroid/content/Context;)V
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_2b} :catch_14

    .line 546
    .end local v161    # "wifi":Lcom/android/server/wifi/WifiService;
    .local v162, "wifi":Lcom/android/server/wifi/WifiService;
    :try_start_2c
    const-string v7, "wifi"

    move-object/from16 v0, v162

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_2c} :catch_4f

    move-object/from16 v161, v162

    .line 552
    .end local v162    # "wifi":Lcom/android/server/wifi/WifiService;
    .restart local v161    # "wifi":Lcom/android/server/wifi/WifiService;
    :goto_1d
    :try_start_2d
    const-string v7, "SystemServer"

    const-string v9, "Connectivity Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    new-instance v83, Lcom/android/server/ConnectivityService;

    move-object/from16 v0, v83

    move-object/from16 v1, v30

    move-object/from16 v2, v29

    move-object/from16 v3, v25

    invoke-direct {v0, v5, v1, v2, v3}, Lcom/android/server/ConnectivityService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/INetworkPolicyManager;)V
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_2d} :catch_15

    .line 555
    .end local v82    # "connectivity":Lcom/android/server/ConnectivityService;
    .local v83, "connectivity":Lcom/android/server/ConnectivityService;
    :try_start_2e
    const-string v7, "connectivity"

    move-object/from16 v0, v83

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 556
    move-object/from16 v0, v29

    move-object/from16 v1, v83

    invoke-virtual {v0, v1}, Lcom/android/server/net/NetworkStatsService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    .line 557
    move-object/from16 v0, v25

    move-object/from16 v1, v83

    invoke-virtual {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    .line 559
    invoke-virtual/range {v163 .. v163}, Landroid/net/wifi/p2p/WifiP2pService;->connectivityServiceReady()V

    .line 560
    invoke-virtual/range {v161 .. v161}, Lcom/android/server/wifi/WifiService;->checkAndStartWifi()V
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_2e} :catch_4e

    move-object/from16 v82, v83

    .line 566
    .end local v83    # "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v82    # "connectivity":Lcom/android/server/ConnectivityService;
    :goto_1e
    :try_start_2f
    const-string v7, "persist.cne.feature"

    const/4 v9, 0x0

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_2f .. :try_end_2f} :catch_17

    move-result v155

    .line 567
    .local v155, "value":I
    if-lez v155, :cond_a

    .line 569
    :try_start_30
    new-instance v76, Ldalvik/system/PathClassLoader;

    const-string v7, "/system/framework/com.quicinc.cne.jar"

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    move-object/from16 v0, v76

    invoke-direct {v0, v7, v9}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 572
    .local v76, "cneClassLoader":Ldalvik/system/PathClassLoader;
    const-string v7, "com.quicinc.cne.CNE"

    move-object/from16 v0, v76

    invoke-virtual {v0, v7}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v75

    .line 573
    .local v75, "cneClass":Ljava/lang/Class;
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Landroid/content/Context;

    aput-object v10, v7, v9

    const/4 v9, 0x1

    const-class v10, Landroid/os/Handler;

    aput-object v10, v7, v9

    move-object/from16 v0, v75

    invoke-virtual {v0, v7}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v77

    .line 575
    .local v77, "cneConstructor":Ljava/lang/reflect/Constructor;
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v5, v7, v9

    const/4 v9, 0x1

    const/4 v10, 0x0

    aput-object v10, v7, v9

    move-object/from16 v0, v77

    invoke-virtual {v0, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_30} :catch_16
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_30} :catch_17

    move-result-object v78

    .line 581
    .end local v75    # "cneClass":Ljava/lang/Class;
    .end local v76    # "cneClassLoader":Ldalvik/system/PathClassLoader;
    .end local v77    # "cneConstructor":Ljava/lang/reflect/Constructor;
    .end local v78    # "cneObj":Ljava/lang/Object;
    :goto_1f
    if-eqz v78, :cond_a

    :try_start_31
    move-object/from16 v0, v78

    instance-of v7, v0, Landroid/os/IBinder;

    if-eqz v7, :cond_a

    .line 582
    const-string v7, "cneservice"

    check-cast v78, Landroid/os/IBinder;

    move-object/from16 v0, v78

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 583
    const-string v7, "SystemServer"

    const-string v9, "starting cneservice"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_31} :catch_17

    .line 592
    .end local v155    # "value":I
    :cond_a
    :goto_20
    :try_start_32
    const-string v7, "SystemServer"

    const-string v9, "Network Service Discovery Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    invoke-static {v5}, Lcom/android/server/NsdService;->create(Landroid/content/Context;)Lcom/android/server/NsdService;

    move-result-object v140

    .line 594
    const-string v7, "servicediscovery"

    move-object/from16 v0, v140

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_32} :catch_18

    .line 601
    :goto_21
    if-nez v96, :cond_b

    .line 603
    :try_start_33
    const-string v7, "SystemServer"

    const-string v9, "UpdateLock Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    const-string v7, "updatelock"

    new-instance v9, Lcom/android/server/UpdateLockService;

    invoke-direct {v9, v5}, Lcom/android/server/UpdateLockService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_33} :catch_19

    .line 616
    :cond_b
    :goto_22
    if-eqz v122, :cond_c

    if-nez v24, :cond_c

    .line 617
    invoke-virtual/range {v122 .. v122}, Lcom/android/server/MountService;->waitForAsecScan()V

    .line 621
    :cond_c
    if-eqz v62, :cond_d

    .line 622
    :try_start_34
    invoke-virtual/range {v62 .. v62}, Lcom/android/server/accounts/AccountManagerService;->systemReady()V
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_34} :catch_1a

    .line 628
    :cond_d
    :goto_23
    if-eqz v86, :cond_e

    .line 629
    :try_start_35
    invoke-virtual/range {v86 .. v86}, Lcom/android/server/content/ContentService;->systemReady()V
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_35 .. :try_end_35} :catch_1b

    .line 635
    :cond_e
    :goto_24
    :try_start_36
    const-string v7, "SystemServer"

    const-string v9, "Notification Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    new-instance v129, Lcom/android/server/NotificationManagerService;

    move-object/from16 v0, v129

    move-object/from16 v1, v143

    invoke-direct {v0, v5, v1, v6}, Lcom/android/server/NotificationManagerService;-><init>(Landroid/content/Context;Lcom/android/server/StatusBarManagerService;Lcom/android/server/LightsService;)V
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_36 .. :try_end_36} :catch_1c

    .line 637
    .end local v128    # "notification":Lcom/android/server/NotificationManagerService;
    .local v129, "notification":Lcom/android/server/NotificationManagerService;
    :try_start_37
    const-string v7, "notification"

    move-object/from16 v0, v129

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 638
    move-object/from16 v0, v25

    move-object/from16 v1, v129

    invoke-virtual {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->bindNotificationManager(Landroid/app/INotificationManager;)V
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_37} :catch_4d

    move-object/from16 v128, v129

    .line 644
    .end local v129    # "notification":Lcom/android/server/NotificationManagerService;
    .restart local v128    # "notification":Lcom/android/server/NotificationManagerService;
    :goto_25
    :try_start_38
    const-string v7, "SystemServer"

    const-string v9, "Device Storage Monitor"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    const-string v7, "devicestoragemonitor"

    new-instance v9, Lcom/android/server/DeviceStorageMonitorService;

    invoke-direct {v9, v5}, Lcom/android/server/DeviceStorageMonitorService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_38 .. :try_end_38} :catch_1d

    .line 651
    :goto_26
    if-nez v93, :cond_f

    .line 653
    :try_start_39
    const-string v7, "SystemServer"

    const-string v9, "Location Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    new-instance v116, Lcom/android/server/LocationManagerService;

    move-object/from16 v0, v116

    invoke-direct {v0, v5}, Lcom/android/server/LocationManagerService;-><init>(Landroid/content/Context;)V
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_39 .. :try_end_39} :catch_1e

    .line 655
    .end local v115    # "location":Lcom/android/server/LocationManagerService;
    .local v116, "location":Lcom/android/server/LocationManagerService;
    :try_start_3a
    const-string v7, "location"

    move-object/from16 v0, v116

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3a
    .catch Ljava/lang/Throwable; {:try_start_3a .. :try_end_3a} :catch_4c

    move-object/from16 v115, v116

    .line 661
    .end local v116    # "location":Lcom/android/server/LocationManagerService;
    .restart local v115    # "location":Lcom/android/server/LocationManagerService;
    :goto_27
    :try_start_3b
    const-string v7, "SystemServer"

    const-string v9, "Country Detector"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    new-instance v88, Lcom/android/server/CountryDetectorService;

    move-object/from16 v0, v88

    invoke-direct {v0, v5}, Lcom/android/server/CountryDetectorService;-><init>(Landroid/content/Context;)V
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_3b .. :try_end_3b} :catch_1f

    .line 663
    .end local v87    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .local v88, "countryDetector":Lcom/android/server/CountryDetectorService;
    :try_start_3c
    const-string v7, "country_detector"

    move-object/from16 v0, v88

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_3c .. :try_end_3c} :catch_4b

    move-object/from16 v87, v88

    .line 669
    .end local v88    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v87    # "countryDetector":Lcom/android/server/CountryDetectorService;
    :cond_f
    :goto_28
    if-nez v96, :cond_10

    .line 671
    :try_start_3d
    const-string v7, "SystemServer"

    const-string v9, "Search Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    const-string v7, "search"

    new-instance v9, Lcom/android/server/search/SearchManagerService;

    invoke-direct {v9, v5}, Lcom/android/server/search/SearchManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3d
    .catch Ljava/lang/Throwable; {:try_start_3d .. :try_end_3d} :catch_20

    .line 680
    :cond_10
    :goto_29
    :try_start_3e
    const-string v7, "SystemServer"

    const-string v9, "DropBox Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    const-string v7, "dropbox"

    new-instance v9, Lcom/android/server/DropBoxManagerService;

    new-instance v10, Ljava/io/File;

    const-string v12, "/data/system/dropbox"

    invoke-direct {v10, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v9, v5, v10}, Lcom/android/server/DropBoxManagerService;-><init>(Landroid/content/Context;Ljava/io/File;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3e
    .catch Ljava/lang/Throwable; {:try_start_3e .. :try_end_3e} :catch_21

    .line 687
    :goto_2a
    if-nez v96, :cond_11

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x111002f

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 690
    :try_start_3f
    const-string v7, "SystemServer"

    const-string v9, "Wallpaper Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    if-nez v33, :cond_11

    .line 692
    new-instance v160, Lcom/android/server/WallpaperManagerService;

    move-object/from16 v0, v160

    invoke-direct {v0, v5}, Lcom/android/server/WallpaperManagerService;-><init>(Landroid/content/Context;)V
    :try_end_3f
    .catch Ljava/lang/Throwable; {:try_start_3f .. :try_end_3f} :catch_22

    .line 693
    .end local v159    # "wallpaper":Lcom/android/server/WallpaperManagerService;
    .local v160, "wallpaper":Lcom/android/server/WallpaperManagerService;
    :try_start_40
    const-string v7, "wallpaper"

    move-object/from16 v0, v160

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string v7, "miui.usb.service"

    new-instance v9, Lcom/miui/server/MiuiUsbService;

    invoke-direct {v9, v5}, Lcom/miui/server/MiuiUsbService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string v7, "miui.os.servicemanager"

    new-instance v9, Landroid/os/MiuiServiceManagerInternal;

    invoke-direct {v9}, Landroid/os/MiuiServiceManagerInternal;-><init>()V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_40 .. :try_end_40} :catch_4a

    move-object/from16 v159, v160

    .line 700
    .end local v160    # "wallpaper":Lcom/android/server/WallpaperManagerService;
    .restart local v159    # "wallpaper":Lcom/android/server/WallpaperManagerService;
    :cond_11
    :goto_2b
    if-nez v94, :cond_12

    const-string v7, "0"

    const-string v9, "system_init.startaudioservice"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_12

    .line 702
    :try_start_41
    const-string v7, "SystemServer"

    const-string v9, "Audio Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    const-string v7, "audio"

    new-instance v9, Landroid/media/AudioService;

    invoke-direct {v9, v5}, Landroid/media/AudioService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_41 .. :try_end_41} :catch_23

    .line 709
    :cond_12
    :goto_2c
    if-nez v96, :cond_13

    .line 711
    :try_start_42
    const-string v7, "SystemServer"

    const-string v9, "Dock Observer"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    new-instance v102, Lcom/android/server/DockObserver;

    move-object/from16 v0, v102

    invoke-direct {v0, v5}, Lcom/android/server/DockObserver;-><init>(Landroid/content/Context;)V
    :try_end_42
    .catch Ljava/lang/Throwable; {:try_start_42 .. :try_end_42} :catch_24

    .end local v101    # "dock":Lcom/android/server/DockObserver;
    .local v102, "dock":Lcom/android/server/DockObserver;
    move-object/from16 v101, v102

    .line 719
    .end local v102    # "dock":Lcom/android/server/DockObserver;
    .restart local v101    # "dock":Lcom/android/server/DockObserver;
    :cond_13
    :goto_2d
    if-nez v94, :cond_14

    .line 721
    :try_start_43
    const-string v7, "SystemServer"

    const-string v9, "Wired Accessory Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    new-instance v7, Lcom/android/server/WiredAccessoryManager;

    move-object/from16 v0, v20

    invoke-direct {v7, v5, v0}, Lcom/android/server/WiredAccessoryManager;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Lcom/android/server/input/InputManagerService;->setWiredAccessoryCallbacks(Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;)V
    :try_end_43
    .catch Ljava/lang/Throwable; {:try_start_43 .. :try_end_43} :catch_25

    .line 730
    :cond_14
    :goto_2e
    if-nez v96, :cond_15

    .line 732
    :try_start_44
    const-string v7, "SystemServer"

    const-string v9, "USB Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    new-instance v154, Lcom/android/server/usb/UsbService;

    move-object/from16 v0, v154

    invoke-direct {v0, v5}, Lcom/android/server/usb/UsbService;-><init>(Landroid/content/Context;)V
    :try_end_44
    .catch Ljava/lang/Throwable; {:try_start_44 .. :try_end_44} :catch_26

    .line 735
    .end local v153    # "usb":Lcom/android/server/usb/UsbService;
    .local v154, "usb":Lcom/android/server/usb/UsbService;
    :try_start_45
    const-string v7, "usb"

    move-object/from16 v0, v154

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_45
    .catch Ljava/lang/Throwable; {:try_start_45 .. :try_end_45} :catch_49

    move-object/from16 v153, v154

    .line 741
    .end local v154    # "usb":Lcom/android/server/usb/UsbService;
    .restart local v153    # "usb":Lcom/android/server/usb/UsbService;
    :goto_2f
    :try_start_46
    const-string v7, "SystemServer"

    const-string v9, "Serial Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    new-instance v139, Lcom/android/server/SerialService;

    move-object/from16 v0, v139

    invoke-direct {v0, v5}, Lcom/android/server/SerialService;-><init>(Landroid/content/Context;)V
    :try_end_46
    .catch Ljava/lang/Throwable; {:try_start_46 .. :try_end_46} :catch_27

    .line 744
    .end local v138    # "serial":Lcom/android/server/SerialService;
    .local v139, "serial":Lcom/android/server/SerialService;
    :try_start_47
    const-string v7, "serial"

    move-object/from16 v0, v139

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_47
    .catch Ljava/lang/Throwable; {:try_start_47 .. :try_end_47} :catch_48

    move-object/from16 v138, v139

    .line 751
    .end local v139    # "serial":Lcom/android/server/SerialService;
    .restart local v138    # "serial":Lcom/android/server/SerialService;
    :cond_15
    :goto_30
    :try_start_48
    const-string v7, "SystemServer"

    const-string v9, "Twilight Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    new-instance v150, Lcom/android/server/TwilightService;

    move-object/from16 v0, v150

    invoke-direct {v0, v5}, Lcom/android/server/TwilightService;-><init>(Landroid/content/Context;)V
    :try_end_48
    .catch Ljava/lang/Throwable; {:try_start_48 .. :try_end_48} :catch_28

    .end local v149    # "twilight":Lcom/android/server/TwilightService;
    .local v150, "twilight":Lcom/android/server/TwilightService;
    move-object/from16 v149, v150

    .line 758
    .end local v150    # "twilight":Lcom/android/server/TwilightService;
    .restart local v149    # "twilight":Lcom/android/server/TwilightService;
    :goto_31
    :try_start_49
    const-string v7, "SystemServer"

    const-string v9, "UI Mode Manager Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    new-instance v152, Lcom/android/server/UiModeManagerService;

    move-object/from16 v0, v152

    move-object/from16 v1, v149

    invoke-direct {v0, v5, v1}, Lcom/android/server/UiModeManagerService;-><init>(Landroid/content/Context;Lcom/android/server/TwilightService;)V
    :try_end_49
    .catch Ljava/lang/Throwable; {:try_start_49 .. :try_end_49} :catch_29

    .end local v151    # "uiMode":Lcom/android/server/UiModeManagerService;
    .local v152, "uiMode":Lcom/android/server/UiModeManagerService;
    move-object/from16 v151, v152

    .line 765
    .end local v152    # "uiMode":Lcom/android/server/UiModeManagerService;
    .restart local v151    # "uiMode":Lcom/android/server/UiModeManagerService;
    :goto_32
    if-nez v96, :cond_16

    .line 767
    :try_start_4a
    const-string v7, "SystemServer"

    const-string v9, "Backup Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    const-string v7, "backup"

    new-instance v9, Lcom/android/server/BackupManagerService;

    invoke-direct {v9, v5}, Lcom/android/server/BackupManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4a
    .catch Ljava/lang/Throwable; {:try_start_4a .. :try_end_4a} :catch_2a

    .line 775
    :goto_33
    :try_start_4b
    const-string v7, "SystemServer"

    const-string v9, "AppWidget Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    new-instance v66, Lcom/android/server/AppWidgetService;

    move-object/from16 v0, v66

    invoke-direct {v0, v5}, Lcom/android/server/AppWidgetService;-><init>(Landroid/content/Context;)V
    :try_end_4b
    .catch Ljava/lang/Throwable; {:try_start_4b .. :try_end_4b} :catch_2b

    .line 777
    .end local v65    # "appWidget":Lcom/android/server/AppWidgetService;
    .local v66, "appWidget":Lcom/android/server/AppWidgetService;
    :try_start_4c
    const-string v7, "appwidget"

    move-object/from16 v0, v66

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4c
    .catch Ljava/lang/Throwable; {:try_start_4c .. :try_end_4c} :catch_47

    move-object/from16 v65, v66

    .line 783
    .end local v66    # "appWidget":Lcom/android/server/AppWidgetService;
    .restart local v65    # "appWidget":Lcom/android/server/AppWidgetService;
    :goto_34
    :try_start_4d
    const-string v7, "SystemServer"

    const-string v9, "Recognition Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    new-instance v137, Lcom/android/server/RecognitionManagerService;

    move-object/from16 v0, v137

    invoke-direct {v0, v5}, Lcom/android/server/RecognitionManagerService;-><init>(Landroid/content/Context;)V
    :try_end_4d
    .catch Ljava/lang/Throwable; {:try_start_4d .. :try_end_4d} :catch_2c

    .end local v136    # "recognition":Lcom/android/server/RecognitionManagerService;
    .local v137, "recognition":Lcom/android/server/RecognitionManagerService;
    move-object/from16 v136, v137

    .line 791
    .end local v137    # "recognition":Lcom/android/server/RecognitionManagerService;
    .restart local v136    # "recognition":Lcom/android/server/RecognitionManagerService;
    :cond_16
    :goto_35
    :try_start_4e
    const-string v7, "SystemServer"

    const-string v9, "DiskStats Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    const-string v7, "diskstats"

    new-instance v9, Lcom/android/server/DiskStatsService;

    invoke-direct {v9, v5}, Lcom/android/server/DiskStatsService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4e
    .catch Ljava/lang/Throwable; {:try_start_4e .. :try_end_4e} :catch_2d

    .line 802
    :goto_36
    :try_start_4f
    const-string v7, "SystemServer"

    const-string v9, "SamplingProfiler Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    const-string v7, "samplingprofiler"

    new-instance v9, Lcom/android/server/SamplingProfilerService;

    invoke-direct {v9, v5}, Lcom/android/server/SamplingProfilerService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4f
    .catch Ljava/lang/Throwable; {:try_start_4f .. :try_end_4f} :catch_2e

    .line 809
    :goto_37
    if-nez v95, :cond_17

    .line 811
    :try_start_50
    const-string v7, "SystemServer"

    const-string v9, "NetworkTimeUpdateService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 812
    new-instance v127, Lcom/android/server/NetworkTimeUpdateService;

    move-object/from16 v0, v127

    invoke-direct {v0, v5}, Lcom/android/server/NetworkTimeUpdateService;-><init>(Landroid/content/Context;)V
    :try_end_50
    .catch Ljava/lang/Throwable; {:try_start_50 .. :try_end_50} :catch_2f

    .end local v126    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .local v127, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v126, v127

    .line 818
    .end local v127    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .restart local v126    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    :cond_17
    :goto_38
    if-nez v94, :cond_18

    .line 820
    :try_start_51
    const-string v7, "SystemServer"

    const-string v9, "CommonTimeManagementService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    new-instance v80, Lcom/android/server/CommonTimeManagementService;

    move-object/from16 v0, v80

    invoke-direct {v0, v5}, Lcom/android/server/CommonTimeManagementService;-><init>(Landroid/content/Context;)V
    :try_end_51
    .catch Ljava/lang/Throwable; {:try_start_51 .. :try_end_51} :catch_30

    .line 822
    .end local v79    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .local v80, "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    :try_start_52
    const-string v7, "commontime_management"

    move-object/from16 v0, v80

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_52
    .catch Ljava/lang/Throwable; {:try_start_52 .. :try_end_52} :catch_46

    move-object/from16 v79, v80

    .line 829
    .end local v80    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v79    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    :cond_18
    :goto_39
    :try_start_53
    const-string v7, "SystemServer"

    const-string v9, "Motion Recognition Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    const-string v7, "motion_recognition"

    new-instance v9, Landroid/hardware/motion/MotionRecognitionService;

    invoke-direct {v9, v5}, Landroid/hardware/motion/MotionRecognitionService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_53
    .catch Ljava/lang/Throwable; {:try_start_53 .. :try_end_53} :catch_31

    .line 835
    :goto_3a
    if-nez v95, :cond_19

    .line 837
    :try_start_54
    const-string v7, "SystemServer"

    const-string v9, "CertBlacklister"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    new-instance v7, Lcom/android/server/CertBlacklister;

    invoke-direct {v7, v5}, Lcom/android/server/CertBlacklister;-><init>(Landroid/content/Context;)V
    :try_end_54
    .catch Ljava/lang/Throwable; {:try_start_54 .. :try_end_54} :catch_32

    .line 844
    :cond_19
    :goto_3b
    if-nez v96, :cond_1a

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x1110048

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-eqz v7, :cond_1a

    .line 847
    :try_start_55
    const-string v7, "SystemServer"

    const-string v9, "Dreams Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    new-instance v104, Lcom/android/server/dreams/DreamManagerService;

    move-object/from16 v0, v104

    move-object/from16 v1, v21

    invoke-direct {v0, v5, v1}, Lcom/android/server/dreams/DreamManagerService;-><init>(Landroid/content/Context;Landroid/os/Handler;)V
    :try_end_55
    .catch Ljava/lang/Throwable; {:try_start_55 .. :try_end_55} :catch_33

    .line 850
    .end local v103    # "dreamy":Lcom/android/server/dreams/DreamManagerService;
    .local v104, "dreamy":Lcom/android/server/dreams/DreamManagerService;
    :try_start_56
    const-string v7, "dreams"

    move-object/from16 v0, v104

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_56
    .catch Ljava/lang/Throwable; {:try_start_56 .. :try_end_56} :catch_45

    move-object/from16 v103, v104

    .line 856
    .end local v104    # "dreamy":Lcom/android/server/dreams/DreamManagerService;
    .restart local v103    # "dreamy":Lcom/android/server/dreams/DreamManagerService;
    :cond_1a
    :goto_3c
    if-nez v96, :cond_1b

    .line 858
    :try_start_57
    const-string v7, "SystemServer"

    const-string v9, "Assets Atlas Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    new-instance v68, Lcom/android/server/AssetAtlasService;

    move-object/from16 v0, v68

    invoke-direct {v0, v5}, Lcom/android/server/AssetAtlasService;-><init>(Landroid/content/Context;)V
    :try_end_57
    .catch Ljava/lang/Throwable; {:try_start_57 .. :try_end_57} :catch_34

    .line 860
    .end local v67    # "atlas":Lcom/android/server/AssetAtlasService;
    .local v68, "atlas":Lcom/android/server/AssetAtlasService;
    :try_start_58
    const-string v7, "assetatlas"

    move-object/from16 v0, v68

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_58
    .catch Ljava/lang/Throwable; {:try_start_58 .. :try_end_58} :catch_44

    move-object/from16 v67, v68

    .line 867
    .end local v68    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v67    # "atlas":Lcom/android/server/AssetAtlasService;
    :cond_1b
    :goto_3d
    :try_start_59
    const-string v7, "SystemServer"

    const-string v9, "IdleMaintenanceService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    new-instance v7, Lcom/android/server/IdleMaintenanceService;

    invoke-direct {v7, v5, v8}, Lcom/android/server/IdleMaintenanceService;-><init>(Landroid/content/Context;Lcom/android/server/BatteryService;)V
    :try_end_59
    .catch Ljava/lang/Throwable; {:try_start_59 .. :try_end_59} :catch_35

    .line 874
    :goto_3e
    :try_start_5a
    const-string v7, "SystemServer"

    const-string v9, "Print Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    new-instance v133, Lcom/android/server/print/PrintManagerService;

    move-object/from16 v0, v133

    invoke-direct {v0, v5}, Lcom/android/server/print/PrintManagerService;-><init>(Landroid/content/Context;)V
    :try_end_5a
    .catch Ljava/lang/Throwable; {:try_start_5a .. :try_end_5a} :catch_36

    .line 876
    .end local v132    # "printManager":Lcom/android/server/print/PrintManagerService;
    .local v133, "printManager":Lcom/android/server/print/PrintManagerService;
    :try_start_5b
    const-string v7, "print"

    move-object/from16 v0, v133

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_5b
    .catch Ljava/lang/Throwable; {:try_start_5b .. :try_end_5b} :catch_43

    move-object/from16 v132, v133

    .line 881
    .end local v133    # "printManager":Lcom/android/server/print/PrintManagerService;
    .restart local v132    # "printManager":Lcom/android/server/print/PrintManagerService;
    :goto_3f
    if-nez v96, :cond_1c

    .line 883
    :try_start_5c
    const-string v7, "SystemServer"

    const-string v9, "Media Router Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    new-instance v120, Lcom/android/server/media/MediaRouterService;

    move-object/from16 v0, v120

    invoke-direct {v0, v5}, Lcom/android/server/media/MediaRouterService;-><init>(Landroid/content/Context;)V
    :try_end_5c
    .catch Ljava/lang/Throwable; {:try_start_5c .. :try_end_5c} :catch_37

    .line 885
    .end local v119    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .local v120, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :try_start_5d
    const-string v7, "media_router"

    move-object/from16 v0, v120

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_5d
    .catch Ljava/lang/Throwable; {:try_start_5d .. :try_end_5d} :catch_42

    move-object/from16 v119, v120

    .line 894
    .end local v120    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v119    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :cond_1c
    :goto_40
    invoke-virtual/range {v165 .. v165}, Lcom/android/server/wm/WindowManagerService;->detectSafeMode()Z

    move-result v47

    .line 895
    .local v47, "safeMode":Z
    if-eqz v47, :cond_2f

    .line 896
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/am/ActivityManagerService;->enterSafeMode()V

    .line 898
    const/4 v7, 0x1

    sput-boolean v7, Ldalvik/system/Zygote;->systemInSafeMode:Z

    .line 900
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v7

    invoke-virtual {v7}, Ldalvik/system/VMRuntime;->disableJitCompilation()V

    .line 909
    :goto_41
    :try_start_5e
    invoke-virtual/range {v156 .. v156}, Lcom/android/server/VibratorService;->systemReady()V
    :try_end_5e
    .catch Ljava/lang/Throwable; {:try_start_5e .. :try_end_5e} :catch_38

    .line 914
    :goto_42
    if-eqz v117, :cond_1d

    .line 916
    :try_start_5f
    invoke-virtual/range {v117 .. v117}, Lcom/android/server/LockSettingsService;->systemReady()V
    :try_end_5f
    .catch Ljava/lang/Throwable; {:try_start_5f .. :try_end_5f} :catch_39

    .line 922
    :cond_1d
    :goto_43
    if-eqz v90, :cond_1e

    .line 924
    :try_start_60
    invoke-virtual/range {v90 .. v90}, Lcom/android/server/DevicePolicyManagerService;->systemReady()V
    :try_end_60
    .catch Ljava/lang/Throwable; {:try_start_60 .. :try_end_60} :catch_3a

    .line 930
    :cond_1e
    :goto_44
    if-eqz v128, :cond_1f

    .line 932
    :try_start_61
    invoke-virtual/range {v128 .. v128}, Lcom/android/server/NotificationManagerService;->systemReady()V
    :try_end_61
    .catch Ljava/lang/Throwable; {:try_start_61 .. :try_end_61} :catch_3b

    .line 939
    :cond_1f
    :goto_45
    :try_start_62
    invoke-virtual/range {v165 .. v165}, Lcom/android/server/wm/WindowManagerService;->systemReady()V
    :try_end_62
    .catch Ljava/lang/Throwable; {:try_start_62 .. :try_end_62} :catch_3c

    .line 944
    :goto_46
    if-eqz v47, :cond_20

    .line 945
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/am/ActivityManagerService;->showSafeModeOverlay()V

    .line 951
    :cond_20
    invoke-virtual/range {v165 .. v165}, Lcom/android/server/wm/WindowManagerService;->computeNewConfiguration()Landroid/content/res/Configuration;

    move-result-object v81

    .line 952
    .local v81, "config":Landroid/content/res/Configuration;
    new-instance v121, Landroid/util/DisplayMetrics;

    invoke-direct/range {v121 .. v121}, Landroid/util/DisplayMetrics;-><init>()V

    .line 953
    .local v121, "metrics":Landroid/util/DisplayMetrics;
    const-string v7, "window"

    invoke-virtual {v5, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v158

    check-cast v158, Landroid/view/WindowManager;

    .line 954
    .local v158, "w":Landroid/view/WindowManager;
    invoke-interface/range {v158 .. v158}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    move-object/from16 v0, v121

    invoke-virtual {v7, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 955
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    move-object/from16 v0, v81

    move-object/from16 v1, v121

    invoke-virtual {v7, v0, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 958
    :try_start_63
    move-object/from16 v0, v149

    move-object/from16 v1, v103

    invoke-virtual {v4, v0, v1}, Lcom/android/server/power/PowerManagerService;->systemReady(Lcom/android/server/TwilightService;Lcom/android/server/dreams/DreamManagerService;)V
    :try_end_63
    .catch Ljava/lang/Throwable; {:try_start_63 .. :try_end_63} :catch_3d

    .line 965
    :goto_47
    :try_start_64
    invoke-virtual {v6}, Lcom/android/server/LightsService;->systemReady()V
    :try_end_64
    .catch Ljava/lang/Throwable; {:try_start_64 .. :try_end_64} :catch_3e

    .line 971
    :goto_48
    :try_start_65
    invoke-interface/range {v130 .. v130}, Landroid/content/pm/IPackageManager;->systemReady()V
    :try_end_65
    .catch Ljava/lang/Throwable; {:try_start_65 .. :try_end_65} :catch_3f

    .line 977
    :goto_49
    :try_start_66
    move/from16 v0, v47

    move/from16 v1, v24

    invoke-virtual {v11, v0, v1}, Lcom/android/server/display/DisplayManagerService;->systemReady(ZZ)V
    :try_end_66
    .catch Ljava/lang/Throwable; {:try_start_66 .. :try_end_66} :catch_40

    .line 983
    :goto_4a
    move-object/from16 v34, v5

    .line 984
    .local v34, "contextF":Landroid/content/Context;
    move-object/from16 v35, v122

    .line 985
    .local v35, "mountServiceF":Lcom/android/server/MountService;
    move-object/from16 v36, v8

    .line 986
    .local v36, "batteryF":Lcom/android/server/BatteryService;
    move-object/from16 v37, v30

    .line 987
    .local v37, "networkManagementF":Lcom/android/server/NetworkManagementService;
    move-object/from16 v38, v29

    .line 988
    .local v38, "networkStatsF":Lcom/android/server/net/NetworkStatsService;
    move-object/from16 v39, v25

    .line 989
    .local v39, "networkPolicyF":Lcom/android/server/net/NetworkPolicyManagerService;
    move-object/from16 v40, v82

    .line 990
    .local v40, "connectivityF":Lcom/android/server/ConnectivityService;
    move-object/from16 v41, v101

    .line 991
    .local v41, "dockF":Lcom/android/server/DockObserver;
    move-object/from16 v42, v153

    .line 992
    .local v42, "usbF":Lcom/android/server/usb/UsbService;
    move-object/from16 v43, v149

    .line 993
    .local v43, "twilightF":Lcom/android/server/TwilightService;
    move-object/from16 v44, v151

    .line 994
    .local v44, "uiModeF":Lcom/android/server/UiModeManagerService;
    move-object/from16 v46, v65

    .line 995
    .local v46, "appWidgetF":Lcom/android/server/AppWidgetService;
    move-object/from16 v48, v159

    .line 996
    .local v48, "wallpaperF":Lcom/android/server/WallpaperManagerService;
    move-object/from16 v49, v109

    .line 997
    .local v49, "immF":Lcom/android/server/InputMethodManagerService;
    move-object/from16 v45, v136

    .line 998
    .local v45, "recognitionF":Lcom/android/server/RecognitionManagerService;
    move-object/from16 v51, v115

    .line 999
    .local v51, "locationF":Lcom/android/server/LocationManagerService;
    move-object/from16 v52, v87

    .line 1000
    .local v52, "countryDetectorF":Lcom/android/server/CountryDetectorService;
    move-object/from16 v53, v126

    .line 1001
    .local v53, "networkTimeUpdaterF":Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v54, v79

    .line 1002
    .local v54, "commonTimeMgmtServiceF":Lcom/android/server/CommonTimeManagementService;
    move-object/from16 v55, v147

    .line 1003
    .local v55, "textServiceManagerServiceF":Lcom/android/server/TextServicesManagerService;
    move-object/from16 v50, v143

    .line 1004
    .local v50, "statusBarF":Lcom/android/server/StatusBarManagerService;
    move-object/from16 v56, v103

    .line 1005
    .local v56, "dreamyF":Lcom/android/server/dreams/DreamManagerService;
    move-object/from16 v57, v67

    .line 1006
    .local v57, "atlasF":Lcom/android/server/AssetAtlasService;
    move-object/from16 v58, v20

    .line 1007
    .local v58, "inputManagerF":Lcom/android/server/input/InputManagerService;
    move-object/from16 v59, v145

    .line 1008
    .local v59, "telephonyRegistryF":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v60, v132

    .line 1009
    .local v60, "printManagerF":Lcom/android/server/print/PrintManagerService;
    move-object/from16 v61, v119

    .line 1016
    .local v61, "mediaRouterF":Lcom/android/server/media/MediaRouterService;
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    new-instance v31, Lcom/android/server/ServerThread$2;

    move-object/from16 v32, p0

    invoke-direct/range {v31 .. v61}, Lcom/android/server/ServerThread$2;-><init>(Lcom/android/server/ServerThread;ZLandroid/content/Context;Lcom/android/server/MountService;Lcom/android/server/BatteryService;Lcom/android/server/NetworkManagementService;Lcom/android/server/net/NetworkStatsService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/ConnectivityService;Lcom/android/server/DockObserver;Lcom/android/server/usb/UsbService;Lcom/android/server/TwilightService;Lcom/android/server/UiModeManagerService;Lcom/android/server/RecognitionManagerService;Lcom/android/server/AppWidgetService;ZLcom/android/server/WallpaperManagerService;Lcom/android/server/InputMethodManagerService;Lcom/android/server/StatusBarManagerService;Lcom/android/server/LocationManagerService;Lcom/android/server/CountryDetectorService;Lcom/android/server/NetworkTimeUpdateService;Lcom/android/server/CommonTimeManagementService;Lcom/android/server/TextServicesManagerService;Lcom/android/server/dreams/DreamManagerService;Lcom/android/server/AssetAtlasService;Lcom/android/server/input/InputManagerService;Lcom/android/server/TelephonyRegistry;Lcom/android/server/print/PrintManagerService;Lcom/android/server/media/MediaRouterService;)V

    move-object/from16 v0, v31

    invoke-virtual {v7, v0}, Lcom/android/server/am/ActivityManagerService;->systemReady(Ljava/lang/Runnable;)V

    .line 1167
    invoke-static {}, Landroid/os/StrictMode;->conditionallyEnableDebugLogging()Z

    move-result v7

    if-eqz v7, :cond_21

    .line 1168
    const-string v7, "SystemServer"

    const-string v9, "Enabled StrictMode for system server main thread."

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1171
    :cond_21
    const/4 v7, -0x2

    invoke-static {v7}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1174
    const-string v7, "SystemServer"

    const-string v9, "!@Boot: End initAndLoop"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1175
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 1176
    const-string v7, "SystemServer"

    const-string v9, "System ServerThread is exiting!"

    invoke-static {v7, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1177
    return-void

    .line 122
    .end local v4    # "power":Lcom/android/server/power/PowerManagerService;
    .end local v5    # "context":Landroid/content/Context;
    .end local v6    # "lights":Lcom/android/server/LightsService;
    .end local v8    # "battery":Lcom/android/server/BatteryService;
    .end local v11    # "display":Lcom/android/server/display/DisplayManagerService;
    .end local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v21    # "wmHandler":Landroid/os/Handler;
    .end local v24    # "onlyCore":Z
    .end local v25    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v29    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .end local v30    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .end local v33    # "headless":Z
    .end local v34    # "contextF":Landroid/content/Context;
    .end local v35    # "mountServiceF":Lcom/android/server/MountService;
    .end local v36    # "batteryF":Lcom/android/server/BatteryService;
    .end local v37    # "networkManagementF":Lcom/android/server/NetworkManagementService;
    .end local v38    # "networkStatsF":Lcom/android/server/net/NetworkStatsService;
    .end local v39    # "networkPolicyF":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v40    # "connectivityF":Lcom/android/server/ConnectivityService;
    .end local v41    # "dockF":Lcom/android/server/DockObserver;
    .end local v42    # "usbF":Lcom/android/server/usb/UsbService;
    .end local v43    # "twilightF":Lcom/android/server/TwilightService;
    .end local v44    # "uiModeF":Lcom/android/server/UiModeManagerService;
    .end local v45    # "recognitionF":Lcom/android/server/RecognitionManagerService;
    .end local v46    # "appWidgetF":Lcom/android/server/AppWidgetService;
    .end local v47    # "safeMode":Z
    .end local v48    # "wallpaperF":Lcom/android/server/WallpaperManagerService;
    .end local v49    # "immF":Lcom/android/server/InputMethodManagerService;
    .end local v50    # "statusBarF":Lcom/android/server/StatusBarManagerService;
    .end local v51    # "locationF":Lcom/android/server/LocationManagerService;
    .end local v52    # "countryDetectorF":Lcom/android/server/CountryDetectorService;
    .end local v53    # "networkTimeUpdaterF":Lcom/android/server/NetworkTimeUpdateService;
    .end local v54    # "commonTimeMgmtServiceF":Lcom/android/server/CommonTimeManagementService;
    .end local v55    # "textServiceManagerServiceF":Lcom/android/server/TextServicesManagerService;
    .end local v56    # "dreamyF":Lcom/android/server/dreams/DreamManagerService;
    .end local v57    # "atlasF":Lcom/android/server/AssetAtlasService;
    .end local v58    # "inputManagerF":Lcom/android/server/input/InputManagerService;
    .end local v59    # "telephonyRegistryF":Lcom/android/server/TelephonyRegistry;
    .end local v60    # "printManagerF":Lcom/android/server/print/PrintManagerService;
    .end local v61    # "mediaRouterF":Lcom/android/server/media/MediaRouterService;
    .end local v62    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .end local v65    # "appWidget":Lcom/android/server/AppWidgetService;
    .end local v67    # "atlas":Lcom/android/server/AssetAtlasService;
    .end local v70    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    .end local v79    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .end local v81    # "config":Landroid/content/res/Configuration;
    .end local v82    # "connectivity":Lcom/android/server/ConnectivityService;
    .end local v84    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v86    # "contentService":Lcom/android/server/content/ContentService;
    .end local v87    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .end local v90    # "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    .end local v92    # "disableBluetooth":Z
    .end local v93    # "disableLocation":Z
    .end local v94    # "disableMedia":Z
    .end local v95    # "disableNetwork":Z
    .end local v96    # "disableNonCoreServices":Z
    .end local v97    # "disableStorage":Z
    .end local v98    # "disableSystemUI":Z
    .end local v99    # "disableTelephony":Z
    .end local v101    # "dock":Lcom/android/server/DockObserver;
    .end local v103    # "dreamy":Lcom/android/server/dreams/DreamManagerService;
    .end local v106    # "factoryTest":I
    .end local v107    # "factoryTestStr":Ljava/lang/String;
    .end local v108    # "firstBoot":Z
    .end local v109    # "imm":Lcom/android/server/InputMethodManagerService;
    .end local v112    # "installer":Lcom/android/server/pm/Installer;
    .end local v115    # "location":Lcom/android/server/LocationManagerService;
    .end local v117    # "lockSettings":Lcom/android/server/LockSettingsService;
    .end local v119    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .end local v121    # "metrics":Landroid/util/DisplayMetrics;
    .end local v122    # "mountService":Lcom/android/server/MountService;
    .end local v126    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .end local v128    # "notification":Lcom/android/server/NotificationManagerService;
    .end local v130    # "pm":Landroid/content/pm/IPackageManager;
    .end local v132    # "printManager":Lcom/android/server/print/PrintManagerService;
    .end local v136    # "recognition":Lcom/android/server/RecognitionManagerService;
    .end local v138    # "serial":Lcom/android/server/SerialService;
    .end local v140    # "serviceDiscovery":Lcom/android/server/NsdService;
    .end local v143    # "statusBar":Lcom/android/server/StatusBarManagerService;
    .end local v145    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v147    # "tsms":Lcom/android/server/TextServicesManagerService;
    .end local v149    # "twilight":Lcom/android/server/TwilightService;
    .end local v151    # "uiMode":Lcom/android/server/UiModeManagerService;
    .end local v153    # "usb":Lcom/android/server/usb/UsbService;
    .end local v156    # "vibrator":Lcom/android/server/VibratorService;
    .end local v158    # "w":Landroid/view/WindowManager;
    .end local v159    # "wallpaper":Lcom/android/server/WallpaperManagerService;
    .end local v161    # "wifi":Lcom/android/server/wifi/WifiService;
    .end local v163    # "wifiP2p":Landroid/net/wifi/p2p/WifiP2pService;
    .end local v165    # "wm":Lcom/android/server/wm/WindowManagerService;
    .end local v166    # "wmHandlerThread":Landroid/os/HandlerThread;
    :cond_22
    const/16 v135, 0x0

    goto/16 :goto_0

    .line 128
    .restart local v135    # "reboot":Z
    :cond_23
    const/16 v134, 0x0

    .restart local v134    # "reason":Ljava/lang/String;
    goto/16 :goto_1

    .line 136
    .end local v134    # "reason":Ljava/lang/String;
    .end local v135    # "reboot":Z
    .restart local v107    # "factoryTestStr":Ljava/lang/String;
    :cond_24
    invoke-static/range {v107 .. v107}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v106

    goto/16 :goto_2

    .line 211
    .restart local v4    # "power":Lcom/android/server/power/PowerManagerService;
    .restart local v5    # "context":Landroid/content/Context;
    .restart local v21    # "wmHandler":Landroid/os/Handler;
    .restart local v24    # "onlyCore":Z
    .restart local v29    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .restart local v30    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .restart local v33    # "headless":Z
    .restart local v62    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v64    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v69    # "battery":Lcom/android/server/BatteryService;
    .restart local v70    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    .restart local v78    # "cneObj":Ljava/lang/Object;
    .restart local v79    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v82    # "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v84    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v86    # "contentService":Lcom/android/server/content/ContentService;
    .restart local v100    # "display":Lcom/android/server/display/DisplayManagerService;
    .restart local v101    # "dock":Lcom/android/server/DockObserver;
    .restart local v106    # "factoryTest":I
    .restart local v108    # "firstBoot":Z
    .restart local v111    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v112    # "installer":Lcom/android/server/pm/Installer;
    .restart local v114    # "lights":Lcom/android/server/LightsService;
    .restart local v122    # "mountService":Lcom/android/server/MountService;
    .restart local v124    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v126    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .restart local v130    # "pm":Landroid/content/pm/IPackageManager;
    .restart local v136    # "recognition":Lcom/android/server/RecognitionManagerService;
    .restart local v138    # "serial":Lcom/android/server/SerialService;
    .restart local v140    # "serviceDiscovery":Lcom/android/server/NsdService;
    .restart local v145    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v149    # "twilight":Lcom/android/server/TwilightService;
    .restart local v151    # "uiMode":Lcom/android/server/UiModeManagerService;
    .restart local v153    # "usb":Lcom/android/server/usb/UsbService;
    .restart local v156    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v161    # "wifi":Lcom/android/server/wifi/WifiService;
    .restart local v163    # "wifiP2p":Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v165    # "wm":Lcom/android/server/wm/WindowManagerService;
    .restart local v166    # "wmHandlerThread":Landroid/os/HandlerThread;
    :catch_0
    move-exception v105

    .line 212
    .local v105, "e":Ljava/lang/RuntimeException;
    :goto_4b
    const-string v7, "System"

    const-string v9, "******************************************"

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    const-string v7, "System"

    const-string v9, "************ Failure starting bootstrap service"

    move-object/from16 v0, v105

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 250
    .end local v100    # "display":Lcom/android/server/display/DisplayManagerService;
    .end local v105    # "e":Ljava/lang/RuntimeException;
    .end local v145    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v11    # "display":Lcom/android/server/display/DisplayManagerService;
    .restart local v89    # "cryptState":Ljava/lang/String;
    .restart local v92    # "disableBluetooth":Z
    .restart local v93    # "disableLocation":Z
    .restart local v94    # "disableMedia":Z
    .restart local v95    # "disableNetwork":Z
    .restart local v96    # "disableNonCoreServices":Z
    .restart local v97    # "disableStorage":Z
    .restart local v98    # "disableSystemUI":Z
    .restart local v99    # "disableTelephony":Z
    .restart local v146    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :cond_25
    :try_start_67
    const-string v7, "1"

    move-object/from16 v0, v89

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_26

    .line 251
    const-string v7, "SystemServer"

    const-string v9, "Device encrypted - only parsing core apps"

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    const/16 v24, 0x1

    goto/16 :goto_4

    .line 254
    :cond_26
    invoke-static {}, Lcom/android/server/pm/PackagePrefetcher;->getInstance()Lcom/android/server/pm/PackagePrefetcher;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/pm/PackagePrefetcher;->prefetchPermissions()V

    .line 255
    invoke-static {}, Lcom/android/server/pm/PackagePrefetcher;->getInstance()Lcom/android/server/pm/PackagePrefetcher;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/pm/PackagePrefetcher;->prefetchPackages()V
    :try_end_67
    .catch Ljava/lang/RuntimeException; {:try_start_67 .. :try_end_67} :catch_1

    goto/16 :goto_4

    .line 380
    .end local v89    # "cryptState":Ljava/lang/String;
    :catch_1
    move-exception v105

    move-object/from16 v145, v146

    .end local v146    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v145    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v20, v111

    .end local v111    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v16, v64

    .end local v64    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v69

    .end local v69    # "battery":Lcom/android/server/BatteryService;
    .restart local v8    # "battery":Lcom/android/server/BatteryService;
    move-object/from16 v6, v114

    .line 381
    .end local v114    # "lights":Lcom/android/server/LightsService;
    .restart local v6    # "lights":Lcom/android/server/LightsService;
    .restart local v105    # "e":Ljava/lang/RuntimeException;
    :goto_4c
    const-string v7, "System"

    const-string v9, "******************************************"

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    const-string v7, "System"

    const-string v9, "************ Failure starting core service"

    move-object/from16 v0, v105

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_d

    .line 259
    .end local v6    # "lights":Lcom/android/server/LightsService;
    .end local v8    # "battery":Lcom/android/server/BatteryService;
    .end local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v105    # "e":Ljava/lang/RuntimeException;
    .end local v145    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v64    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v69    # "battery":Lcom/android/server/BatteryService;
    .restart local v89    # "cryptState":Ljava/lang/String;
    .restart local v111    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v114    # "lights":Lcom/android/server/LightsService;
    .restart local v146    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :cond_27
    const/4 v7, 0x0

    goto/16 :goto_5

    .line 285
    :catch_2
    move-exception v105

    .line 286
    .local v105, "e":Ljava/lang/Throwable;
    :goto_4d
    :try_start_68
    const-string v7, "SystemServer"

    const-string v9, "Failure starting Account Manager"

    move-object/from16 v0, v105

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_68
    .catch Ljava/lang/RuntimeException; {:try_start_68 .. :try_end_68} :catch_1

    goto/16 :goto_7

    .line 290
    .end local v105    # "e":Ljava/lang/Throwable;
    :cond_28
    const/4 v7, 0x0

    goto/16 :goto_8

    .line 314
    .end local v69    # "battery":Lcom/android/server/BatteryService;
    .end local v114    # "lights":Lcom/android/server/LightsService;
    .end local v156    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v6    # "lights":Lcom/android/server/LightsService;
    .restart local v8    # "battery":Lcom/android/server/BatteryService;
    .restart local v157    # "vibrator":Lcom/android/server/VibratorService;
    :catch_3
    move-exception v105

    .line 315
    .local v105, "e":Ljava/lang/Exception;
    :try_start_69
    const-string v7, "SystemServer"

    const-string v9, "ssrm.jar not found"

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_69
    .catch Ljava/lang/RuntimeException; {:try_start_69 .. :try_end_69} :catch_4

    goto/16 :goto_9

    .line 380
    .end local v105    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v105

    move-object/from16 v145, v146

    .end local v146    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v145    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v20, v111

    .end local v111    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v16, v64

    .end local v64    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    move-object/from16 v156, v157

    .end local v157    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v156    # "vibrator":Lcom/android/server/VibratorService;
    goto :goto_4c

    .line 349
    .end local v84    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v145    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v156    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v85    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v146    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v157    # "vibrator":Lcom/android/server/VibratorService;
    :cond_29
    const/16 v22, 0x0

    goto/16 :goto_a

    :cond_2a
    const/16 v23, 0x0

    goto/16 :goto_b

    .line 368
    :cond_2b
    const/4 v7, 0x1

    move/from16 v0, v106

    if-ne v0, v7, :cond_2c

    .line 369
    :try_start_6a
    const-string v7, "SystemServer"

    const-string v9, "No Bluetooth Service (factory test)"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    .line 380
    :catch_5
    move-exception v105

    move-object/from16 v84, v85

    .end local v85    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v84    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v145, v146

    .end local v146    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v145    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v156, v157

    .end local v157    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v156    # "vibrator":Lcom/android/server/VibratorService;
    goto :goto_4c

    .line 370
    .end local v84    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v145    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v156    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v85    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v146    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v157    # "vibrator":Lcom/android/server/VibratorService;
    :cond_2c
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const-string v9, "android.hardware.bluetooth"

    invoke-virtual {v7, v9}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2d

    .line 372
    const-string v7, "SystemServer"

    const-string v9, "No Bluetooth Service (Bluetooth Hardware Not Present)"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    .line 373
    :cond_2d
    if-eqz v92, :cond_2e

    .line 374
    const-string v7, "SystemServer"

    const-string v9, "Bluetooth Service disabled by config"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    .line 376
    :cond_2e
    const-string v7, "SystemServer"

    const-string v9, "Bluetooth Manager Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    new-instance v71, Lcom/android/server/BluetoothManagerService;

    move-object/from16 v0, v71

    invoke-direct {v0, v5}, Lcom/android/server/BluetoothManagerService;-><init>(Landroid/content/Context;)V
    :try_end_6a
    .catch Ljava/lang/RuntimeException; {:try_start_6a .. :try_end_6a} :catch_5

    .line 378
    .end local v70    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    .local v71, "bluetooth":Lcom/android/server/BluetoothManagerService;
    :try_start_6b
    const-string v7, "bluetooth_manager"

    move-object/from16 v0, v71

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_6b
    .catch Ljava/lang/RuntimeException; {:try_start_6b .. :try_end_6b} :catch_61

    move-object/from16 v70, v71

    .end local v71    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    .restart local v70    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    goto/16 :goto_c

    .line 408
    .end local v85    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v89    # "cryptState":Ljava/lang/String;
    .end local v146    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v157    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v65    # "appWidget":Lcom/android/server/AppWidgetService;
    .restart local v67    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v84    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v87    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v90    # "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    .restart local v103    # "dreamy":Lcom/android/server/dreams/DreamManagerService;
    .restart local v109    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v115    # "location":Lcom/android/server/LocationManagerService;
    .restart local v117    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v119    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v128    # "notification":Lcom/android/server/NotificationManagerService;
    .restart local v132    # "printManager":Lcom/android/server/print/PrintManagerService;
    .restart local v143    # "statusBar":Lcom/android/server/StatusBarManagerService;
    .restart local v145    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v147    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v156    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v159    # "wallpaper":Lcom/android/server/WallpaperManagerService;
    :catch_6
    move-exception v105

    .line 409
    .local v105, "e":Ljava/lang/Throwable;
    :goto_4e
    const-string v7, "starting Input Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v105

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_e

    .line 416
    .end local v105    # "e":Ljava/lang/Throwable;
    :catch_7
    move-exception v105

    .line 417
    .restart local v105    # "e":Ljava/lang/Throwable;
    const-string v7, "starting Accessibility Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v105

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_f

    .line 424
    .end local v105    # "e":Ljava/lang/Throwable;
    :catch_8
    move-exception v105

    .line 425
    .restart local v105    # "e":Ljava/lang/Throwable;
    const-string v7, "making display ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v105

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_10

    .line 430
    .end local v105    # "e":Ljava/lang/Throwable;
    :catch_9
    move-exception v105

    .line 431
    .restart local v105    # "e":Ljava/lang/Throwable;
    const-string v7, "performing boot dexopt"

    move-object/from16 v0, p0

    move-object/from16 v1, v105

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_11

    .line 453
    .end local v105    # "e":Ljava/lang/Throwable;
    :catch_a
    move-exception v105

    .line 454
    .restart local v105    # "e":Ljava/lang/Throwable;
    :goto_4f
    const-string v7, "starting Mount Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v105

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_13

    .line 463
    .end local v105    # "e":Ljava/lang/Throwable;
    :catch_b
    move-exception v105

    .line 464
    .restart local v105    # "e":Ljava/lang/Throwable;
    :goto_50
    const-string v7, "starting LockSettingsService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v105

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_14

    .line 471
    .end local v105    # "e":Ljava/lang/Throwable;
    :catch_c
    move-exception v105

    .line 472
    .restart local v105    # "e":Ljava/lang/Throwable;
    :goto_51
    const-string v7, "starting DevicePolicyService"

    move-object/from16 v0, p0

    move-object/from16 v1, v105

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_15

    .line 481
    .end local v105    # "e":Ljava/lang/Throwable;
    :catch_d
    move-exception v105

    .line 482
    .restart local v105    # "e":Ljava/lang/Throwable;
    :goto_52
    const-string v7, "starting StatusBarManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v105

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_16

    .line 491
    .end local v105    # "e":Ljava/lang/Throwable;
    :catch_e
    move-exception v105

    .line 492
    .restart local v105    # "e":Ljava/lang/Throwable;
    const-string v7, "starting Clipboard Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v105

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_17

    .line 501
    .end local v105    # "e":Ljava/lang/Throwable;
    :catch_f
    move-exception v105

    .line 502
    .restart local v105    # "e":Ljava/lang/Throwable;
    const-string v7, "starting NetworkManagement Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v105

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_18

    .line 511
    .end local v105    # "e":Ljava/lang/Throwable;
    :catch_10
    move-exception v105

    .line 512
    .restart local v105    # "e":Ljava/lang/Throwable;
    :goto_53
    const-string v7, "starting Text Service Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v105

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_19

    .line 521
    .end local v105    # "e":Ljava/lang/Throwable;
    :catch_11
    move-exception v105

    .line 522
    .restart local v105    # "e":Ljava/lang/Throwable;
    :goto_54
    const-string v7, "starting NetworkStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v105

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1a

    .line 531
    .end local v105    # "e":Ljava/lang/Throwable;
    :catch_12
    move-exception v105

    move-object/from16 v25, v124

    .line 532
    .end local v124    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v25    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v105    # "e":Ljava/lang/Throwable;
    :goto_55
    const-string v7, "starting NetworkPolicy Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v105

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1b

    .line 539
    .end local v105    # "e":Ljava/lang/Throwable;
    :catch_13
    move-exception v105

    .line 540
    .restart local v105    # "e":Ljava/lang/Throwable;
    :goto_56
    const-string v7, "starting Wi-Fi P2pService"

    move-object/from16 v0, p0

    move-object/from16 v1, v105

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1c

    .line 547
    .end local v105    # "e":Ljava/lang/Throwable;
    :catch_14
    move-exception v105

    .line 548
    .restart local v105    # "e":Ljava/lang/Throwable;
    :goto_57
    const-string v7, "starting Wi-Fi Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v105

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1d

    .line 561
    .end local v105    # "e":Ljava/lang/Throwable;
    :catch_15
    move-exception v105

    .line 562
    .restart local v105    # "e":Ljava/lang/Throwable;
    :goto_58
    const-string v7, "starting Connectivity Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v105

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1e

    .line 576
    .end local v105    # "e":Ljava/lang/Throwable;
    .restart local v155    # "value":I
    :catch_16
    move-exception v105

    .line 577
    .local v105, "e":Ljava/lang/Exception;
    :try_start_6c
    const-string v7, "SystemServer"

    const-string v9, "Failed to load CNE class"

    move-object/from16 v0, v105

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 578
    const/16 v78, 0x0

    .line 579
    const-string v7, "Creating Connectivity Engine Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v105

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6c
    .catch Ljava/lang/Throwable; {:try_start_6c .. :try_end_6c} :catch_17

    goto/16 :goto_1f

    .line 586
    .end local v78    # "cneObj":Ljava/lang/Object;
    .end local v105    # "e":Ljava/lang/Exception;
    .end local v155    # "value":I
    :catch_17
    move-exception v105

    .line 587
    .local v105, "e":Ljava/lang/Throwable;
    const-string v7, "SystemServer"

    const-string v9, "Loading CNEService failed: "

    move-object/from16 v0, v105

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 588
    const-string v7, "starting Connectivity Engine Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v105

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_20

    .line 596
    .end local v105    # "e":Ljava/lang/Throwable;
    :catch_18
    move-exception v105

    .line 597
    .restart local v105    # "e":Ljava/lang/Throwable;
    const-string v7, "starting Service Discovery Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v105

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_21

    .line 606
    .end local v105    # "e":Ljava/lang/Throwable;
    :catch_19
    move-exception v105

    .line 607
    .restart local v105    # "e":Ljava/lang/Throwable;
    const-string v7, "starting UpdateLockService"

    move-object/from16 v0, p0

    move-object/from16 v1, v105

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_22

    .line 623
    .end local v105    # "e":Ljava/lang/Throwable;
    :catch_1a
    move-exception v105

    .line 624
    .restart local v105    # "e":Ljava/lang/Throwable;
    const-string v7, "making Account Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v105

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_23

    .line 630
    .end local v105    # "e":Ljava/lang/Throwable;
    :catch_1b
    move-exception v105

    .line 631
    .restart local v105    # "e":Ljava/lang/Throwable;
    const-string v7, "making Content Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v105

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_24

    .line 639
    .end local v105    # "e":Ljava/lang/Throwable;
    :catch_1c
    move-exception v105

    .line 640
    .restart local v105    # "e":Ljava/lang/Throwable;
    :goto_59
    const-string v7, "starting Notification Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v105

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_25

    .line 647
    .end local v105    # "e":Ljava/lang/Throwable;
    :catch_1d
    move-exception v105

    .line 648
    .restart local v105    # "e":Ljava/lang/Throwable;
    const-string v7, "starting DeviceStorageMonitor service"

    move-object/from16 v0, p0

    move-object/from16 v1, v105

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_26

    .line 656
    .end local v105    # "e":Ljava/lang/Throwable;
    :catch_1e
    move-exception v105

    .line 657
    .restart local v105    # "e":Ljava/lang/Throwable;
    :goto_5a
    const-string v7, "starting Location Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v105

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_27

    .line 664
    .end local v105    # "e":Ljava/lang/Throwable;
    :catch_1f
    move-exception v105

    .line 665
    .restart local v105    # "e":Ljava/lang/Throwable;
    :goto_5b
    const-string v7, "starting Country Detector"

    move-object/from16 v0, p0

    move-object/from16 v1, v105

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_28

    .line 674
    .end local v105    # "e":Ljava/lang/Throwable;
    :catch_20
    move-exception v105

    .line 675
    .restart local v105    # "e":Ljava/lang/Throwable;
    const-string v7, "starting Search Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v105

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_29

    .line 683
    .end local v105    # "e":Ljava/lang/Throwable;
    :catch_21
    move-exception v105

    .line 684
    .restart local v105    # "e":Ljava/lang/Throwable;
    const-string v7, "starting DropBoxManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v105

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2a

    .line 695
    .end local v105    # "e":Ljava/lang/Throwable;
    :catch_22
    move-exception v105

    .line 696
    .restart local v105    # "e":Ljava/lang/Throwable;
    :goto_5c
    const-string v7, "starting Wallpaper Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v105

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2b

    .line 704
    .end local v105    # "e":Ljava/lang/Throwable;
    :catch_23
    move-exception v105

    .line 705
    .restart local v105    # "e":Ljava/lang/Throwable;
    const-string v7, "starting Audio Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v105

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2c

    .line 714
    .end local v105    # "e":Ljava/lang/Throwable;
    :catch_24
    move-exception v105

    .line 715
    .restart local v105    # "e":Ljava/lang/Throwable;
    const-string v7, "starting DockObserver"

    move-object/from16 v0, p0

    move-object/from16 v1, v105

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2d

    .line 725
    .end local v105    # "e":Ljava/lang/Throwable;
    :catch_25
    move-exception v105

    .line 726
    .restart local v105    # "e":Ljava/lang/Throwable;
    const-string v7, "starting WiredAccessoryManager"

    move-object/from16 v0, p0

    move-object/from16 v1, v105

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2e

    .line 736
    .end local v105    # "e":Ljava/lang/Throwable;
    :catch_26
    move-exception v105

    .line 737
    .restart local v105    # "e":Ljava/lang/Throwable;
    :goto_5d
    const-string v7, "starting UsbService"

    move-object/from16 v0, p0

    move-object/from16 v1, v105

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2f

    .line 745
    .end local v105    # "e":Ljava/lang/Throwable;
    :catch_27
    move-exception v105

    .line 746
    .restart local v105    # "e":Ljava/lang/Throwable;
    :goto_5e
    const-string v7, "SystemServer"

    const-string v9, "Failure starting SerialService"

    move-object/from16 v0, v105

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_30

    .line 753
    .end local v105    # "e":Ljava/lang/Throwable;
    :catch_28
    move-exception v105

    .line 754
    .restart local v105    # "e":Ljava/lang/Throwable;
    const-string v7, "starting TwilightService"

    move-object/from16 v0, p0

    move-object/from16 v1, v105

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_31

    .line 761
    .end local v105    # "e":Ljava/lang/Throwable;
    :catch_29
    move-exception v105

    .line 762
    .restart local v105    # "e":Ljava/lang/Throwable;
    const-string v7, "starting UiModeManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v105

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_32

    .line 770
    .end local v105    # "e":Ljava/lang/Throwable;
    :catch_2a
    move-exception v105

    .line 771
    .restart local v105    # "e":Ljava/lang/Throwable;
    const-string v7, "SystemServer"

    const-string v9, "Failure starting Backup Service"

    move-object/from16 v0, v105

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_33

    .line 778
    .end local v105    # "e":Ljava/lang/Throwable;
    :catch_2b
    move-exception v105

    .line 779
    .restart local v105    # "e":Ljava/lang/Throwable;
    :goto_5f
    const-string v7, "starting AppWidget Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v105

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_34

    .line 785
    .end local v105    # "e":Ljava/lang/Throwable;
    :catch_2c
    move-exception v105

    .line 786
    .restart local v105    # "e":Ljava/lang/Throwable;
    const-string v7, "starting Recognition Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v105

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_35

    .line 793
    .end local v105    # "e":Ljava/lang/Throwable;
    :catch_2d
    move-exception v105

    .line 794
    .restart local v105    # "e":Ljava/lang/Throwable;
    const-string v7, "starting DiskStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v105

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_36

    .line 805
    .end local v105    # "e":Ljava/lang/Throwable;
    :catch_2e
    move-exception v105

    .line 806
    .restart local v105    # "e":Ljava/lang/Throwable;
    const-string v7, "starting SamplingProfiler Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v105

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_37

    .line 813
    .end local v105    # "e":Ljava/lang/Throwable;
    :catch_2f
    move-exception v105

    .line 814
    .restart local v105    # "e":Ljava/lang/Throwable;
    const-string v7, "starting NetworkTimeUpdate service"

    move-object/from16 v0, p0

    move-object/from16 v1, v105

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_38

    .line 823
    .end local v105    # "e":Ljava/lang/Throwable;
    :catch_30
    move-exception v105

    .line 824
    .restart local v105    # "e":Ljava/lang/Throwable;
    :goto_60
    const-string v7, "starting CommonTimeManagementService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v105

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_39

    .line 831
    .end local v105    # "e":Ljava/lang/Throwable;
    :catch_31
    move-exception v105

    .line 832
    .restart local v105    # "e":Ljava/lang/Throwable;
    const-string v7, "SystemServer"

    const-string v9, "Failure starting Motion Recognition Service"

    move-object/from16 v0, v105

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3a

    .line 839
    .end local v105    # "e":Ljava/lang/Throwable;
    :catch_32
    move-exception v105

    .line 840
    .restart local v105    # "e":Ljava/lang/Throwable;
    const-string v7, "starting CertBlacklister"

    move-object/from16 v0, p0

    move-object/from16 v1, v105

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3b

    .line 851
    .end local v105    # "e":Ljava/lang/Throwable;
    :catch_33
    move-exception v105

    .line 852
    .restart local v105    # "e":Ljava/lang/Throwable;
    :goto_61
    const-string v7, "starting DreamManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v105

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3c

    .line 861
    .end local v105    # "e":Ljava/lang/Throwable;
    :catch_34
    move-exception v105

    .line 862
    .restart local v105    # "e":Ljava/lang/Throwable;
    :goto_62
    const-string v7, "starting AssetAtlasService"

    move-object/from16 v0, p0

    move-object/from16 v1, v105

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3d

    .line 869
    .end local v105    # "e":Ljava/lang/Throwable;
    :catch_35
    move-exception v105

    .line 870
    .restart local v105    # "e":Ljava/lang/Throwable;
    const-string v7, "starting IdleMaintenanceService"

    move-object/from16 v0, p0

    move-object/from16 v1, v105

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3e

    .line 877
    .end local v105    # "e":Ljava/lang/Throwable;
    :catch_36
    move-exception v105

    .line 878
    .restart local v105    # "e":Ljava/lang/Throwable;
    :goto_63
    const-string v7, "starting Print Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v105

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3f

    .line 886
    .end local v105    # "e":Ljava/lang/Throwable;
    :catch_37
    move-exception v105

    .line 887
    .restart local v105    # "e":Ljava/lang/Throwable;
    :goto_64
    const-string v7, "starting MediaRouterService"

    move-object/from16 v0, p0

    move-object/from16 v1, v105

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_40

    .line 903
    .end local v105    # "e":Ljava/lang/Throwable;
    .restart local v47    # "safeMode":Z
    :cond_2f
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v7

    invoke-virtual {v7}, Ldalvik/system/VMRuntime;->startJitCompilation()V

    goto/16 :goto_41

    .line 910
    :catch_38
    move-exception v105

    .line 911
    .restart local v105    # "e":Ljava/lang/Throwable;
    const-string v7, "making Vibrator Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v105

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_42

    .line 917
    .end local v105    # "e":Ljava/lang/Throwable;
    :catch_39
    move-exception v105

    .line 918
    .restart local v105    # "e":Ljava/lang/Throwable;
    const-string v7, "making Lock Settings Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v105

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_43

    .line 925
    .end local v105    # "e":Ljava/lang/Throwable;
    :catch_3a
    move-exception v105

    .line 926
    .restart local v105    # "e":Ljava/lang/Throwable;
    const-string v7, "making Device Policy Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v105

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_44

    .line 933
    .end local v105    # "e":Ljava/lang/Throwable;
    :catch_3b
    move-exception v105

    .line 934
    .restart local v105    # "e":Ljava/lang/Throwable;
    const-string v7, "making Notification Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v105

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_45

    .line 940
    .end local v105    # "e":Ljava/lang/Throwable;
    :catch_3c
    move-exception v105

    .line 941
    .restart local v105    # "e":Ljava/lang/Throwable;
    const-string v7, "making Window Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v105

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_46

    .line 959
    .end local v105    # "e":Ljava/lang/Throwable;
    .restart local v81    # "config":Landroid/content/res/Configuration;
    .restart local v121    # "metrics":Landroid/util/DisplayMetrics;
    .restart local v158    # "w":Landroid/view/WindowManager;
    :catch_3d
    move-exception v105

    .line 960
    .restart local v105    # "e":Ljava/lang/Throwable;
    const-string v7, "making Power Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v105

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_47

    .line 966
    .end local v105    # "e":Ljava/lang/Throwable;
    :catch_3e
    move-exception v105

    .line 967
    .restart local v105    # "e":Ljava/lang/Throwable;
    const-string v7, "making Lights Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v105

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_48

    .line 972
    .end local v105    # "e":Ljava/lang/Throwable;
    :catch_3f
    move-exception v105

    .line 973
    .restart local v105    # "e":Ljava/lang/Throwable;
    const-string v7, "making Package Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v105

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_49

    .line 978
    .end local v105    # "e":Ljava/lang/Throwable;
    :catch_40
    move-exception v105

    .line 979
    .restart local v105    # "e":Ljava/lang/Throwable;
    const-string v7, "making Display Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v105

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4a

    .line 265
    .end local v6    # "lights":Lcom/android/server/LightsService;
    .end local v8    # "battery":Lcom/android/server/BatteryService;
    .end local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v25    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v47    # "safeMode":Z
    .end local v65    # "appWidget":Lcom/android/server/AppWidgetService;
    .end local v67    # "atlas":Lcom/android/server/AssetAtlasService;
    .end local v81    # "config":Landroid/content/res/Configuration;
    .end local v87    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .end local v90    # "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    .end local v103    # "dreamy":Lcom/android/server/dreams/DreamManagerService;
    .end local v105    # "e":Ljava/lang/Throwable;
    .end local v109    # "imm":Lcom/android/server/InputMethodManagerService;
    .end local v115    # "location":Lcom/android/server/LocationManagerService;
    .end local v117    # "lockSettings":Lcom/android/server/LockSettingsService;
    .end local v119    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .end local v121    # "metrics":Landroid/util/DisplayMetrics;
    .end local v128    # "notification":Lcom/android/server/NotificationManagerService;
    .end local v132    # "printManager":Lcom/android/server/print/PrintManagerService;
    .end local v143    # "statusBar":Lcom/android/server/StatusBarManagerService;
    .end local v145    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v147    # "tsms":Lcom/android/server/TextServicesManagerService;
    .end local v158    # "w":Landroid/view/WindowManager;
    .end local v159    # "wallpaper":Lcom/android/server/WallpaperManagerService;
    .restart local v64    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v69    # "battery":Lcom/android/server/BatteryService;
    .restart local v78    # "cneObj":Ljava/lang/Object;
    .restart local v89    # "cryptState":Ljava/lang/String;
    .restart local v111    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v114    # "lights":Lcom/android/server/LightsService;
    .restart local v124    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v146    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catch_41
    move-exception v7

    goto/16 :goto_6

    .line 886
    .end local v64    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v69    # "battery":Lcom/android/server/BatteryService;
    .end local v78    # "cneObj":Ljava/lang/Object;
    .end local v89    # "cryptState":Ljava/lang/String;
    .end local v111    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v114    # "lights":Lcom/android/server/LightsService;
    .end local v124    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v146    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v6    # "lights":Lcom/android/server/LightsService;
    .restart local v8    # "battery":Lcom/android/server/BatteryService;
    .restart local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v25    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v65    # "appWidget":Lcom/android/server/AppWidgetService;
    .restart local v67    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v87    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v90    # "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    .restart local v103    # "dreamy":Lcom/android/server/dreams/DreamManagerService;
    .restart local v109    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v115    # "location":Lcom/android/server/LocationManagerService;
    .restart local v117    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v120    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v128    # "notification":Lcom/android/server/NotificationManagerService;
    .restart local v132    # "printManager":Lcom/android/server/print/PrintManagerService;
    .restart local v143    # "statusBar":Lcom/android/server/StatusBarManagerService;
    .restart local v145    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v147    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v159    # "wallpaper":Lcom/android/server/WallpaperManagerService;
    :catch_42
    move-exception v105

    move-object/from16 v119, v120

    .end local v120    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v119    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    goto/16 :goto_64

    .line 877
    .end local v132    # "printManager":Lcom/android/server/print/PrintManagerService;
    .restart local v133    # "printManager":Lcom/android/server/print/PrintManagerService;
    :catch_43
    move-exception v105

    move-object/from16 v132, v133

    .end local v133    # "printManager":Lcom/android/server/print/PrintManagerService;
    .restart local v132    # "printManager":Lcom/android/server/print/PrintManagerService;
    goto/16 :goto_63

    .line 861
    .end local v67    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v68    # "atlas":Lcom/android/server/AssetAtlasService;
    :catch_44
    move-exception v105

    move-object/from16 v67, v68

    .end local v68    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v67    # "atlas":Lcom/android/server/AssetAtlasService;
    goto/16 :goto_62

    .line 851
    .end local v103    # "dreamy":Lcom/android/server/dreams/DreamManagerService;
    .restart local v104    # "dreamy":Lcom/android/server/dreams/DreamManagerService;
    :catch_45
    move-exception v105

    move-object/from16 v103, v104

    .end local v104    # "dreamy":Lcom/android/server/dreams/DreamManagerService;
    .restart local v103    # "dreamy":Lcom/android/server/dreams/DreamManagerService;
    goto/16 :goto_61

    .line 823
    .end local v79    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v80    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    :catch_46
    move-exception v105

    move-object/from16 v79, v80

    .end local v80    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v79    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    goto/16 :goto_60

    .line 778
    .end local v65    # "appWidget":Lcom/android/server/AppWidgetService;
    .restart local v66    # "appWidget":Lcom/android/server/AppWidgetService;
    :catch_47
    move-exception v105

    move-object/from16 v65, v66

    .end local v66    # "appWidget":Lcom/android/server/AppWidgetService;
    .restart local v65    # "appWidget":Lcom/android/server/AppWidgetService;
    goto/16 :goto_5f

    .line 745
    .end local v138    # "serial":Lcom/android/server/SerialService;
    .restart local v139    # "serial":Lcom/android/server/SerialService;
    :catch_48
    move-exception v105

    move-object/from16 v138, v139

    .end local v139    # "serial":Lcom/android/server/SerialService;
    .restart local v138    # "serial":Lcom/android/server/SerialService;
    goto/16 :goto_5e

    .line 736
    .end local v153    # "usb":Lcom/android/server/usb/UsbService;
    .restart local v154    # "usb":Lcom/android/server/usb/UsbService;
    :catch_49
    move-exception v105

    move-object/from16 v153, v154

    .end local v154    # "usb":Lcom/android/server/usb/UsbService;
    .restart local v153    # "usb":Lcom/android/server/usb/UsbService;
    goto/16 :goto_5d

    .line 695
    .end local v159    # "wallpaper":Lcom/android/server/WallpaperManagerService;
    .restart local v160    # "wallpaper":Lcom/android/server/WallpaperManagerService;
    :catch_4a
    move-exception v105

    move-object/from16 v159, v160

    .end local v160    # "wallpaper":Lcom/android/server/WallpaperManagerService;
    .restart local v159    # "wallpaper":Lcom/android/server/WallpaperManagerService;
    goto/16 :goto_5c

    .line 664
    .end local v87    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v88    # "countryDetector":Lcom/android/server/CountryDetectorService;
    :catch_4b
    move-exception v105

    move-object/from16 v87, v88

    .end local v88    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v87    # "countryDetector":Lcom/android/server/CountryDetectorService;
    goto/16 :goto_5b

    .line 656
    .end local v115    # "location":Lcom/android/server/LocationManagerService;
    .restart local v116    # "location":Lcom/android/server/LocationManagerService;
    :catch_4c
    move-exception v105

    move-object/from16 v115, v116

    .end local v116    # "location":Lcom/android/server/LocationManagerService;
    .restart local v115    # "location":Lcom/android/server/LocationManagerService;
    goto/16 :goto_5a

    .line 639
    .end local v128    # "notification":Lcom/android/server/NotificationManagerService;
    .restart local v129    # "notification":Lcom/android/server/NotificationManagerService;
    :catch_4d
    move-exception v105

    move-object/from16 v128, v129

    .end local v129    # "notification":Lcom/android/server/NotificationManagerService;
    .restart local v128    # "notification":Lcom/android/server/NotificationManagerService;
    goto/16 :goto_59

    .line 561
    .end local v82    # "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v78    # "cneObj":Ljava/lang/Object;
    .restart local v83    # "connectivity":Lcom/android/server/ConnectivityService;
    :catch_4e
    move-exception v105

    move-object/from16 v82, v83

    .end local v83    # "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v82    # "connectivity":Lcom/android/server/ConnectivityService;
    goto/16 :goto_58

    .line 547
    .end local v161    # "wifi":Lcom/android/server/wifi/WifiService;
    .restart local v162    # "wifi":Lcom/android/server/wifi/WifiService;
    :catch_4f
    move-exception v105

    move-object/from16 v161, v162

    .end local v162    # "wifi":Lcom/android/server/wifi/WifiService;
    .restart local v161    # "wifi":Lcom/android/server/wifi/WifiService;
    goto/16 :goto_57

    .line 539
    .end local v163    # "wifiP2p":Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v164    # "wifiP2p":Landroid/net/wifi/p2p/WifiP2pService;
    :catch_50
    move-exception v105

    move-object/from16 v163, v164

    .end local v164    # "wifiP2p":Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v163    # "wifiP2p":Landroid/net/wifi/p2p/WifiP2pService;
    goto/16 :goto_56

    .line 531
    :catch_51
    move-exception v105

    goto/16 :goto_55

    .line 521
    .end local v25    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v29    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .restart local v124    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v125    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    :catch_52
    move-exception v105

    move-object/from16 v29, v125

    .end local v125    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .restart local v29    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    goto/16 :goto_54

    .line 511
    .end local v147    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v148    # "tsms":Lcom/android/server/TextServicesManagerService;
    :catch_53
    move-exception v105

    move-object/from16 v147, v148

    .end local v148    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v147    # "tsms":Lcom/android/server/TextServicesManagerService;
    goto/16 :goto_53

    .line 481
    .end local v143    # "statusBar":Lcom/android/server/StatusBarManagerService;
    .restart local v144    # "statusBar":Lcom/android/server/StatusBarManagerService;
    :catch_54
    move-exception v105

    move-object/from16 v143, v144

    .end local v144    # "statusBar":Lcom/android/server/StatusBarManagerService;
    .restart local v143    # "statusBar":Lcom/android/server/StatusBarManagerService;
    goto/16 :goto_52

    .line 471
    .end local v90    # "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    .restart local v91    # "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    :catch_55
    move-exception v105

    move-object/from16 v90, v91

    .end local v91    # "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    .restart local v90    # "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    goto/16 :goto_51

    .line 463
    .end local v117    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v118    # "lockSettings":Lcom/android/server/LockSettingsService;
    :catch_56
    move-exception v105

    move-object/from16 v117, v118

    .end local v118    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v117    # "lockSettings":Lcom/android/server/LockSettingsService;
    goto/16 :goto_50

    .line 453
    .end local v122    # "mountService":Lcom/android/server/MountService;
    .restart local v123    # "mountService":Lcom/android/server/MountService;
    :catch_57
    move-exception v105

    move-object/from16 v122, v123

    .end local v123    # "mountService":Lcom/android/server/MountService;
    .restart local v122    # "mountService":Lcom/android/server/MountService;
    goto/16 :goto_4f

    .line 439
    :catch_58
    move-exception v7

    goto/16 :goto_12

    .line 408
    .end local v109    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v110    # "imm":Lcom/android/server/InputMethodManagerService;
    :catch_59
    move-exception v105

    move-object/from16 v109, v110

    .end local v110    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v109    # "imm":Lcom/android/server/InputMethodManagerService;
    goto/16 :goto_4e

    .line 380
    .end local v6    # "lights":Lcom/android/server/LightsService;
    .end local v8    # "battery":Lcom/android/server/BatteryService;
    .end local v11    # "display":Lcom/android/server/display/DisplayManagerService;
    .end local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v65    # "appWidget":Lcom/android/server/AppWidgetService;
    .end local v67    # "atlas":Lcom/android/server/AssetAtlasService;
    .end local v87    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .end local v90    # "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    .end local v103    # "dreamy":Lcom/android/server/dreams/DreamManagerService;
    .end local v109    # "imm":Lcom/android/server/InputMethodManagerService;
    .end local v115    # "location":Lcom/android/server/LocationManagerService;
    .end local v117    # "lockSettings":Lcom/android/server/LockSettingsService;
    .end local v119    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .end local v128    # "notification":Lcom/android/server/NotificationManagerService;
    .end local v132    # "printManager":Lcom/android/server/print/PrintManagerService;
    .end local v143    # "statusBar":Lcom/android/server/StatusBarManagerService;
    .end local v147    # "tsms":Lcom/android/server/TextServicesManagerService;
    .end local v159    # "wallpaper":Lcom/android/server/WallpaperManagerService;
    .restart local v64    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v69    # "battery":Lcom/android/server/BatteryService;
    .restart local v100    # "display":Lcom/android/server/display/DisplayManagerService;
    .restart local v111    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v114    # "lights":Lcom/android/server/LightsService;
    :catch_5a
    move-exception v105

    move-object/from16 v20, v111

    .end local v111    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v16, v64

    .end local v64    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v69

    .end local v69    # "battery":Lcom/android/server/BatteryService;
    .restart local v8    # "battery":Lcom/android/server/BatteryService;
    move-object/from16 v11, v100

    .end local v100    # "display":Lcom/android/server/display/DisplayManagerService;
    .restart local v11    # "display":Lcom/android/server/display/DisplayManagerService;
    move-object/from16 v6, v114

    .end local v114    # "lights":Lcom/android/server/LightsService;
    .restart local v6    # "lights":Lcom/android/server/LightsService;
    goto/16 :goto_4c

    .end local v6    # "lights":Lcom/android/server/LightsService;
    .end local v8    # "battery":Lcom/android/server/BatteryService;
    .end local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v64    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v69    # "battery":Lcom/android/server/BatteryService;
    .restart local v111    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v114    # "lights":Lcom/android/server/LightsService;
    :catch_5b
    move-exception v105

    move-object/from16 v20, v111

    .end local v111    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v16, v64

    .end local v64    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v69

    .end local v69    # "battery":Lcom/android/server/BatteryService;
    .restart local v8    # "battery":Lcom/android/server/BatteryService;
    move-object/from16 v6, v114

    .end local v114    # "lights":Lcom/android/server/LightsService;
    .restart local v6    # "lights":Lcom/android/server/LightsService;
    goto/16 :goto_4c

    .end local v6    # "lights":Lcom/android/server/LightsService;
    .end local v8    # "battery":Lcom/android/server/BatteryService;
    .end local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v62    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .end local v145    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v63    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v64    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v69    # "battery":Lcom/android/server/BatteryService;
    .restart local v89    # "cryptState":Ljava/lang/String;
    .restart local v111    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v114    # "lights":Lcom/android/server/LightsService;
    .restart local v146    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catch_5c
    move-exception v105

    move-object/from16 v145, v146

    .end local v146    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v145    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v20, v111

    .end local v111    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v16, v64

    .end local v64    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v69

    .end local v69    # "battery":Lcom/android/server/BatteryService;
    .restart local v8    # "battery":Lcom/android/server/BatteryService;
    move-object/from16 v6, v114

    .end local v114    # "lights":Lcom/android/server/LightsService;
    .restart local v6    # "lights":Lcom/android/server/LightsService;
    move-object/from16 v62, v63

    .end local v63    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v62    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    goto/16 :goto_4c

    .end local v8    # "battery":Lcom/android/server/BatteryService;
    .end local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v145    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v64    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v69    # "battery":Lcom/android/server/BatteryService;
    .restart local v111    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v146    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catch_5d
    move-exception v105

    move-object/from16 v145, v146

    .end local v146    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v145    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v20, v111

    .end local v111    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v16, v64

    .end local v64    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v69

    .end local v69    # "battery":Lcom/android/server/BatteryService;
    .restart local v8    # "battery":Lcom/android/server/BatteryService;
    goto/16 :goto_4c

    .end local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v145    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v64    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v111    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v146    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catch_5e
    move-exception v105

    move-object/from16 v145, v146

    .end local v146    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v145    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v20, v111

    .end local v111    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v16, v64

    .end local v64    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    goto/16 :goto_4c

    .end local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v84    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v145    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v156    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v64    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v85    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v111    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v146    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v157    # "vibrator":Lcom/android/server/VibratorService;
    :catch_5f
    move-exception v105

    move-object/from16 v84, v85

    .end local v85    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v84    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v145, v146

    .end local v146    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v145    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v20, v111

    .end local v111    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v16, v64

    .end local v64    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    move-object/from16 v156, v157

    .end local v157    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v156    # "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_4c

    .end local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v84    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v145    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v156    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v85    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v111    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v146    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v157    # "vibrator":Lcom/android/server/VibratorService;
    :catch_60
    move-exception v105

    move-object/from16 v84, v85

    .end local v85    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v84    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v145, v146

    .end local v146    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v145    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v20, v111

    .end local v111    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v156, v157

    .end local v157    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v156    # "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_4c

    .end local v70    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    .end local v84    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v145    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v156    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v71    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    .restart local v85    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v146    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v157    # "vibrator":Lcom/android/server/VibratorService;
    :catch_61
    move-exception v105

    move-object/from16 v84, v85

    .end local v85    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v84    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v145, v146

    .end local v146    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v145    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v70, v71

    .end local v71    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    .restart local v70    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    move-object/from16 v156, v157

    .end local v157    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v156    # "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_4c

    .line 285
    .end local v6    # "lights":Lcom/android/server/LightsService;
    .end local v8    # "battery":Lcom/android/server/BatteryService;
    .end local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v62    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .end local v145    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v63    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v64    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v69    # "battery":Lcom/android/server/BatteryService;
    .restart local v111    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v114    # "lights":Lcom/android/server/LightsService;
    .restart local v146    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catch_62
    move-exception v105

    move-object/from16 v62, v63

    .end local v63    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v62    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    goto/16 :goto_4d

    .line 211
    .end local v11    # "display":Lcom/android/server/display/DisplayManagerService;
    .end local v89    # "cryptState":Ljava/lang/String;
    .end local v92    # "disableBluetooth":Z
    .end local v93    # "disableLocation":Z
    .end local v94    # "disableMedia":Z
    .end local v95    # "disableNetwork":Z
    .end local v96    # "disableNonCoreServices":Z
    .end local v97    # "disableStorage":Z
    .end local v98    # "disableSystemUI":Z
    .end local v99    # "disableTelephony":Z
    .end local v112    # "installer":Lcom/android/server/pm/Installer;
    .end local v146    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v100    # "display":Lcom/android/server/display/DisplayManagerService;
    .restart local v113    # "installer":Lcom/android/server/pm/Installer;
    .restart local v145    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catch_63
    move-exception v105

    move-object/from16 v112, v113

    .end local v113    # "installer":Lcom/android/server/pm/Installer;
    .restart local v112    # "installer":Lcom/android/server/pm/Installer;
    goto/16 :goto_4b

    .end local v4    # "power":Lcom/android/server/power/PowerManagerService;
    .end local v112    # "installer":Lcom/android/server/pm/Installer;
    .restart local v113    # "installer":Lcom/android/server/pm/Installer;
    .restart local v131    # "power":Lcom/android/server/power/PowerManagerService;
    :catch_64
    move-exception v105

    move-object/from16 v4, v131

    .end local v131    # "power":Lcom/android/server/power/PowerManagerService;
    .restart local v4    # "power":Lcom/android/server/power/PowerManagerService;
    move-object/from16 v112, v113

    .end local v113    # "installer":Lcom/android/server/pm/Installer;
    .restart local v112    # "installer":Lcom/android/server/pm/Installer;
    goto/16 :goto_4b

    .end local v64    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v69    # "battery":Lcom/android/server/BatteryService;
    .end local v100    # "display":Lcom/android/server/display/DisplayManagerService;
    .end local v111    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v114    # "lights":Lcom/android/server/LightsService;
    .restart local v6    # "lights":Lcom/android/server/LightsService;
    .restart local v8    # "battery":Lcom/android/server/BatteryService;
    .restart local v11    # "display":Lcom/android/server/display/DisplayManagerService;
    .restart local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v65    # "appWidget":Lcom/android/server/AppWidgetService;
    .restart local v67    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v87    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v90    # "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    .restart local v92    # "disableBluetooth":Z
    .restart local v93    # "disableLocation":Z
    .restart local v94    # "disableMedia":Z
    .restart local v95    # "disableNetwork":Z
    .restart local v96    # "disableNonCoreServices":Z
    .restart local v97    # "disableStorage":Z
    .restart local v98    # "disableSystemUI":Z
    .restart local v99    # "disableTelephony":Z
    .restart local v103    # "dreamy":Lcom/android/server/dreams/DreamManagerService;
    .restart local v109    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v115    # "location":Lcom/android/server/LocationManagerService;
    .restart local v117    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v119    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v128    # "notification":Lcom/android/server/NotificationManagerService;
    .restart local v132    # "printManager":Lcom/android/server/print/PrintManagerService;
    .restart local v143    # "statusBar":Lcom/android/server/StatusBarManagerService;
    .restart local v147    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v159    # "wallpaper":Lcom/android/server/WallpaperManagerService;
    :cond_30
    move-object/from16 v25, v124

    .end local v124    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v25    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    goto/16 :goto_21

    .end local v25    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v124    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :cond_31
    move-object/from16 v25, v124

    .end local v124    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v25    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    goto/16 :goto_40
.end method

.method reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 100
    const-string v0, "SystemServer"

    const-string v1, "***********************************************"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    const-string v0, "SystemServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BOOT FAILURE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 102
    return-void
.end method
