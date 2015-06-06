.class final Lcom/android/server/LightsService$SvcLEDReceiver;
.super Landroid/content/BroadcastReceiver;
.source "LightsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LightsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SvcLEDReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/LightsService;


# direct methods
.method private constructor <init>(Lcom/android/server/LightsService;)V
    .locals 0

    .prologue
    .line 492
    iput-object p1, p0, Lcom/android/server/LightsService$SvcLEDReceiver;->this$0:Lcom/android/server/LightsService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/LightsService;Lcom/android/server/LightsService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/LightsService;
    .param p2, "x1"    # Lcom/android/server/LightsService$1;

    .prologue
    .line 492
    invoke-direct {p0, p1}, Lcom/android/server/LightsService$SvcLEDReceiver;-><init>(Lcom/android/server/LightsService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 495
    const-string v0, "LightsService"

    const-string v1, "[SvcLED] SvcLEDReceiver"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    iget-object v0, p0, Lcom/android/server/LightsService$SvcLEDReceiver;->this$0:Lcom/android/server/LightsService;

    # getter for: Lcom/android/server/LightsService;->mSvcLEDHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/LightsService;->access$800(Lcom/android/server/LightsService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/LightsService$SvcLEDReceiver;->this$0:Lcom/android/server/LightsService;

    # getter for: Lcom/android/server/LightsService;->mWakeLockAquireTask:Lcom/android/server/LightsService$WakeLockAquireTask;
    invoke-static {v1}, Lcom/android/server/LightsService;->access$2900(Lcom/android/server/LightsService;)Lcom/android/server/LightsService$WakeLockAquireTask;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 499
    iget-object v0, p0, Lcom/android/server/LightsService$SvcLEDReceiver;->this$0:Lcom/android/server/LightsService;

    # getter for: Lcom/android/server/LightsService;->mSvcLEDThread:Landroid/os/HandlerThread;
    invoke-static {v0}, Lcom/android/server/LightsService;->access$400(Lcom/android/server/LightsService;)Landroid/os/HandlerThread;

    move-result-object v1

    monitor-enter v1

    .line 500
    :try_start_0
    iget-object v0, p0, Lcom/android/server/LightsService$SvcLEDReceiver;->this$0:Lcom/android/server/LightsService;

    const/4 v2, 0x1

    # invokes: Lcom/android/server/LightsService;->enableSvcLEDLightSensorLocked(Z)V
    invoke-static {v0, v2}, Lcom/android/server/LightsService;->access$600(Lcom/android/server/LightsService;Z)V

    .line 501
    monitor-exit v1

    .line 502
    return-void

    .line 501
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
