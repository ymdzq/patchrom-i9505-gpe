.class Lcom/android/server/LightsService$ForcedSvcLEDTask;
.super Ljava/lang/Object;
.source "LightsService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LightsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ForcedSvcLEDTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/LightsService;


# direct methods
.method private constructor <init>(Lcom/android/server/LightsService;)V
    .locals 0

    .prologue
    .line 453
    iput-object p1, p0, Lcom/android/server/LightsService$ForcedSvcLEDTask;->this$0:Lcom/android/server/LightsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/LightsService;Lcom/android/server/LightsService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/LightsService;
    .param p2, "x1"    # Lcom/android/server/LightsService$1;

    .prologue
    .line 453
    invoke-direct {p0, p1}, Lcom/android/server/LightsService$ForcedSvcLEDTask;-><init>(Lcom/android/server/LightsService;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 455
    iget-object v0, p0, Lcom/android/server/LightsService$ForcedSvcLEDTask;->this$0:Lcom/android/server/LightsService;

    # getter for: Lcom/android/server/LightsService;->mSvcLEDThread:Landroid/os/HandlerThread;
    invoke-static {v0}, Lcom/android/server/LightsService;->access$400(Lcom/android/server/LightsService;)Landroid/os/HandlerThread;

    move-result-object v1

    monitor-enter v1

    .line 456
    :try_start_0
    const-string v0, "LightsService"

    const-string v2, "[SvcLED] ForcedSvcLEDTask is running."

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    iget-object v0, p0, Lcom/android/server/LightsService$ForcedSvcLEDTask;->this$0:Lcom/android/server/LightsService;

    const/4 v2, 0x0

    # invokes: Lcom/android/server/LightsService;->enableSvcLEDLightSensorLocked(Z)V
    invoke-static {v0, v2}, Lcom/android/server/LightsService;->access$600(Lcom/android/server/LightsService;Z)V

    .line 458
    iget-object v0, p0, Lcom/android/server/LightsService$ForcedSvcLEDTask;->this$0:Lcom/android/server/LightsService;

    const/16 v2, 0x13

    # invokes: Lcom/android/server/LightsService;->setSvcLedLightLocked(I)V
    invoke-static {v0, v2}, Lcom/android/server/LightsService;->access$2300(Lcom/android/server/LightsService;I)V

    .line 459
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 461
    iget-object v0, p0, Lcom/android/server/LightsService$ForcedSvcLEDTask;->this$0:Lcom/android/server/LightsService;

    # getter for: Lcom/android/server/LightsService;->mSvcLEDHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/LightsService;->access$800(Lcom/android/server/LightsService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/LightsService$ForcedSvcLEDTask;->this$0:Lcom/android/server/LightsService;

    # getter for: Lcom/android/server/LightsService;->mWakeLockReleaseTask:Lcom/android/server/LightsService$WakeLockReleaseTask;
    invoke-static {v1}, Lcom/android/server/LightsService;->access$2700(Lcom/android/server/LightsService;)Lcom/android/server/LightsService$WakeLockReleaseTask;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 463
    return-void

    .line 459
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
