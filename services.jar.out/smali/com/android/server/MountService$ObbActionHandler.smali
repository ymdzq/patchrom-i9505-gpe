.class Lcom/android/server/MountService$ObbActionHandler;
.super Landroid/os/Handler;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ObbActionHandler"
.end annotation


# instance fields
.field private final mActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/MountService$ObbAction;",
            ">;"
        }
    .end annotation
.end field

.field private mBound:Z

.field final synthetic this$0:Lcom/android/server/MountService;


# direct methods
.method constructor <init>(Lcom/android/server/MountService;Landroid/os/Looper;)V
    .locals 1
    .param p2, "l"    # Landroid/os/Looper;

    .prologue
    .line 2767
    iput-object p1, p0, Lcom/android/server/MountService$ObbActionHandler;->this$0:Lcom/android/server/MountService;

    .line 2768
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2764
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/MountService$ObbActionHandler;->mBound:Z

    .line 2765
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/server/MountService$ObbActionHandler;->mActions:Ljava/util/List;

    .line 2769
    return-void
.end method

.method private connectToService()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 2906
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    sget-object v3, Lcom/android/server/MountService;->DEFAULT_CONTAINER_COMPONENT:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    .line 2907
    .local v0, "service":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/server/MountService$ObbActionHandler;->this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/MountService;->access$2600(Lcom/android/server/MountService;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/MountService$ObbActionHandler;->this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mDefContainerConn:Lcom/android/server/MountService$DefaultContainerConnection;
    invoke-static {v3}, Lcom/android/server/MountService;->access$2500(Lcom/android/server/MountService;)Lcom/android/server/MountService$DefaultContainerConnection;

    move-result-object v3

    invoke-virtual {v2, v0, v3, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2908
    iput-boolean v1, p0, Lcom/android/server/MountService$ObbActionHandler;->mBound:Z

    .line 2911
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private disconnectService()V
    .locals 2

    .prologue
    .line 2915
    iget-object v0, p0, Lcom/android/server/MountService$ObbActionHandler;->this$0:Lcom/android/server/MountService;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/MountService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;
    invoke-static {v0, v1}, Lcom/android/server/MountService;->access$2102(Lcom/android/server/MountService;Lcom/android/internal/app/IMediaContainerService;)Lcom/android/internal/app/IMediaContainerService;

    .line 2916
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/MountService$ObbActionHandler;->mBound:Z

    .line 2917
    iget-object v0, p0, Lcom/android/server/MountService$ObbActionHandler;->this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/MountService;->access$2600(Lcom/android/server/MountService;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/MountService$ObbActionHandler;->this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mDefContainerConn:Lcom/android/server/MountService$DefaultContainerConnection;
    invoke-static {v1}, Lcom/android/server/MountService;->access$2500(Lcom/android/server/MountService;)Lcom/android/server/MountService$DefaultContainerConnection;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 2918
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v9, 0x2

    const/4 v10, 0x0

    .line 2773
    iget v8, p1, Landroid/os/Message;->what:I

    packed-switch v8, :pswitch_data_0

    .line 2900
    :cond_0
    :goto_0
    return-void

    .line 2775
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/MountService$ObbAction;

    .line 2783
    .local v0, "action":Lcom/android/server/MountService$ObbAction;
    iget-boolean v8, p0, Lcom/android/server/MountService$ObbActionHandler;->mBound:Z

    if-nez v8, :cond_1

    .line 2786
    invoke-direct {p0}, Lcom/android/server/MountService$ObbActionHandler;->connectToService()Z

    move-result v8

    if-nez v8, :cond_1

    .line 2787
    const-string v8, "MountService"

    const-string v9, "Failed to bind to media container service"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2788
    invoke-virtual {v0}, Lcom/android/server/MountService$ObbAction;->handleError()V

    goto :goto_0

    .line 2793
    :cond_1
    iget-object v8, p0, Lcom/android/server/MountService$ObbActionHandler;->mActions:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2799
    .end local v0    # "action":Lcom/android/server/MountService$ObbAction;
    :pswitch_1
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v8, :cond_2

    .line 2800
    iget-object v9, p0, Lcom/android/server/MountService$ObbActionHandler;->this$0:Lcom/android/server/MountService;

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Lcom/android/internal/app/IMediaContainerService;

    # setter for: Lcom/android/server/MountService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;
    invoke-static {v9, v8}, Lcom/android/server/MountService;->access$2102(Lcom/android/server/MountService;Lcom/android/internal/app/IMediaContainerService;)Lcom/android/internal/app/IMediaContainerService;

    .line 2802
    :cond_2
    iget-object v8, p0, Lcom/android/server/MountService$ObbActionHandler;->this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;
    invoke-static {v8}, Lcom/android/server/MountService;->access$2100(Lcom/android/server/MountService;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v8

    if-nez v8, :cond_4

    .line 2804
    const-string v8, "MountService"

    const-string v9, "Cannot bind to media container service"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2805
    iget-object v8, p0, Lcom/android/server/MountService$ObbActionHandler;->mActions:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/MountService$ObbAction;

    .line 2807
    .restart local v0    # "action":Lcom/android/server/MountService$ObbAction;
    invoke-virtual {v0}, Lcom/android/server/MountService$ObbAction;->handleError()V

    goto :goto_1

    .line 2809
    .end local v0    # "action":Lcom/android/server/MountService$ObbAction;
    :cond_3
    iget-object v8, p0, Lcom/android/server/MountService$ObbActionHandler;->mActions:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->clear()V

    goto :goto_0

    .line 2810
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_4
    iget-object v8, p0, Lcom/android/server/MountService$ObbActionHandler;->mActions:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_5

    .line 2811
    iget-object v8, p0, Lcom/android/server/MountService$ObbActionHandler;->mActions:Ljava/util/List;

    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/MountService$ObbAction;

    .line 2812
    .restart local v0    # "action":Lcom/android/server/MountService$ObbAction;
    if-eqz v0, :cond_0

    .line 2813
    invoke-virtual {v0, p0}, Lcom/android/server/MountService$ObbAction;->execute(Lcom/android/server/MountService$ObbActionHandler;)V

    goto :goto_0

    .line 2817
    .end local v0    # "action":Lcom/android/server/MountService$ObbAction;
    :cond_5
    const-string v8, "MountService"

    const-string v9, "Empty queue"

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2824
    :pswitch_2
    iget-object v8, p0, Lcom/android/server/MountService$ObbActionHandler;->mActions:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_0

    .line 2825
    iget-boolean v8, p0, Lcom/android/server/MountService$ObbActionHandler;->mBound:Z

    if-eqz v8, :cond_6

    .line 2826
    invoke-direct {p0}, Lcom/android/server/MountService$ObbActionHandler;->disconnectService()V

    .line 2828
    :cond_6
    invoke-direct {p0}, Lcom/android/server/MountService$ObbActionHandler;->connectToService()Z

    move-result v8

    if-nez v8, :cond_0

    .line 2829
    const-string v8, "MountService"

    const-string v9, "Failed to bind to media container service"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2830
    iget-object v8, p0, Lcom/android/server/MountService$ObbActionHandler;->mActions:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/MountService$ObbAction;

    .line 2832
    .restart local v0    # "action":Lcom/android/server/MountService$ObbAction;
    invoke-virtual {v0}, Lcom/android/server/MountService$ObbAction;->handleError()V

    goto :goto_2

    .line 2834
    .end local v0    # "action":Lcom/android/server/MountService$ObbAction;
    :cond_7
    iget-object v8, p0, Lcom/android/server/MountService$ObbActionHandler;->mActions:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->clear()V

    goto/16 :goto_0

    .line 2844
    .end local v3    # "i$":Ljava/util/Iterator;
    :pswitch_3
    iget-object v8, p0, Lcom/android/server/MountService$ObbActionHandler;->mActions:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_8

    .line 2845
    iget-object v8, p0, Lcom/android/server/MountService$ObbActionHandler;->mActions:Ljava/util/List;

    invoke-interface {v8, v10}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2847
    :cond_8
    iget-object v8, p0, Lcom/android/server/MountService$ObbActionHandler;->mActions:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_9

    .line 2848
    iget-boolean v8, p0, Lcom/android/server/MountService$ObbActionHandler;->mBound:Z

    if-eqz v8, :cond_0

    .line 2849
    invoke-direct {p0}, Lcom/android/server/MountService$ObbActionHandler;->disconnectService()V

    goto/16 :goto_0

    .line 2855
    :cond_9
    iget-object v8, p0, Lcom/android/server/MountService$ObbActionHandler;->this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mObbActionHandler:Lcom/android/server/MountService$ObbActionHandler;
    invoke-static {v8}, Lcom/android/server/MountService;->access$000(Lcom/android/server/MountService;)Lcom/android/server/MountService$ObbActionHandler;

    move-result-object v8

    invoke-virtual {v8, v9}, Lcom/android/server/MountService$ObbActionHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 2860
    :pswitch_4
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    .line 2865
    .local v6, "path":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/MountService$ObbActionHandler;->this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;
    invoke-static {v8}, Lcom/android/server/MountService;->access$2200(Lcom/android/server/MountService;)Ljava/util/Map;

    move-result-object v9

    monitor-enter v9

    .line 2866
    :try_start_0
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    .line 2868
    .local v5, "obbStatesToRemove":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/MountService$ObbState;>;"
    iget-object v8, p0, Lcom/android/server/MountService$ObbActionHandler;->this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mObbPathToStateMap:Ljava/util/Map;
    invoke-static {v8}, Lcom/android/server/MountService;->access$2300(Lcom/android/server/MountService;)Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 2869
    .local v2, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/MountService$ObbState;>;"
    :cond_a
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_b

    .line 2870
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/MountService$ObbState;

    .line 2877
    .local v7, "state":Lcom/android/server/MountService$ObbState;
    iget-object v8, v7, Lcom/android/server/MountService$ObbState;->canonicalPath:Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 2878
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 2896
    .end local v2    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/MountService$ObbState;>;"
    .end local v5    # "obbStatesToRemove":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/MountService$ObbState;>;"
    .end local v7    # "state":Lcom/android/server/MountService$ObbState;
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .line 2882
    .restart local v2    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/MountService$ObbState;>;"
    .restart local v5    # "obbStatesToRemove":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/MountService$ObbState;>;"
    :cond_b
    :try_start_1
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/MountService$ObbState;

    .line 2886
    .local v4, "obbState":Lcom/android/server/MountService$ObbState;
    iget-object v8, p0, Lcom/android/server/MountService$ObbActionHandler;->this$0:Lcom/android/server/MountService;

    # invokes: Lcom/android/server/MountService;->removeObbStateLocked(Lcom/android/server/MountService$ObbState;)V
    invoke-static {v8, v4}, Lcom/android/server/MountService;->access$2400(Lcom/android/server/MountService;Lcom/android/server/MountService$ObbState;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2889
    :try_start_2
    iget-object v8, v4, Lcom/android/server/MountService$ObbState;->token:Landroid/os/storage/IObbActionListener;

    iget-object v10, v4, Lcom/android/server/MountService$ObbState;->rawPath:Ljava/lang/String;

    iget v11, v4, Lcom/android/server/MountService$ObbState;->nonce:I

    const/4 v12, 0x2

    invoke-interface {v8, v10, v11, v12}, Landroid/os/storage/IObbActionListener;->onObbResult(Ljava/lang/String;II)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    .line 2891
    :catch_0
    move-exception v1

    .line 2892
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string v8, "MountService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Couldn\'t send unmount notification for  OBB: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v4, Lcom/android/server/MountService$ObbState;->rawPath:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 2896
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v4    # "obbState":Lcom/android/server/MountService$ObbState;
    :cond_c
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 2773
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method
