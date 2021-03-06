.class public Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;
.super Landroid/hardware/contextaware/aggregator/Aggregator;
.source "LocationAggregator.java"


# static fields
.field private static final ACCURACY_REQUIREMENT_DEFAULT:I = 0x64

.field private static final FILE_NAME_ALL_LOCATION:Ljava/lang/String; = "AllLocation"

.field private static final FILE_NAME_APDR_LOCATION:Ljava/lang/String; = "ApdrLocation"

.field private static final HYPOS_LPHP_FILTER_INITIALIZED:I = 0x1

.field private static final HYPOS_LPHP_MODE_GPSOFFWPSOFF:I = 0x0

.field private static final HYPOS_LPHP_MODE_GPSOFFWPSON:I = 0x1

.field private static final HYPOS_LPHP_MODE_GPSONWPSOFF:I = 0x2

.field private static final HYPOS_LPHP_MODE_GPSONWPSON:I = 0x3


# instance fields
.field private mApdrNoti:Z

.field private mCurAccuracy:F

.field private mCurAltitude:D

.field private mCurLatitude:D

.field private mCurLongitude:D

.field private mCurSysTime:J

.field private mCurTimeStamp:J

.field private mHybridPositioningEngine:Landroid/hardware/contextaware/lib/builtin/LphpLibEngine;

.field private mMovingUpdataCnt:I

.field private mPedestrianStatus:I

.field private mUserWantedAccuracy:I

.field private mlSysTimeHybrid:J

.field private mlTimeStampHybrid:J


# direct methods
.method public constructor <init>(Ljava/util/concurrent/CopyOnWriteArrayList;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IApPowerResetObservable;)V
    .locals 3
    .param p2, "observable"    # Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IApPowerResetObservable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Landroid/hardware/contextaware/manager/ContextProvider;",
            ">;",
            "Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IApPowerResetObservable;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "collectionList":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Landroid/hardware/contextaware/manager/ContextProvider;>;"
    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    .line 118
    invoke-direct {p0, v0, v0, p1, p2}, Landroid/hardware/contextaware/aggregator/Aggregator;-><init>(Landroid/content/Context;Landroid/os/Looper;Ljava/util/concurrent/CopyOnWriteArrayList;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IApPowerResetObservable;)V

    .line 75
    iput-wide v1, p0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mlSysTimeHybrid:J

    .line 78
    iput-wide v1, p0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mlTimeStampHybrid:J

    .line 105
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mApdrNoti:Z

    .line 119
    return-void
.end method

.method private getDate(J)[I
    .locals 7
    .param p1, "time"    # J

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 677
    const/4 v2, 0x6

    new-array v0, v2, [I

    .line 679
    .local v0, "mmUtcTime":[I
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 680
    .local v1, "utcDate":Ljava/util/Calendar;
    invoke-virtual {v1, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 682
    const/4 v2, 0x0

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    aput v3, v0, v2

    .line 683
    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v4

    .line 684
    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    aput v2, v0, v5

    .line 685
    const/4 v2, 0x3

    const/16 v3, 0xb

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    aput v3, v0, v2

    .line 686
    const/4 v2, 0x4

    const/16 v3, 0xc

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    aput v3, v0, v2

    .line 687
    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    aput v2, v0, v6

    .line 689
    return-object v0
.end method

.method private getLocationDel(Landroid/os/Bundle;)[D
    .locals 4
    .param p1, "context"    # Landroid/os/Bundle;

    .prologue
    .line 729
    const/4 v1, 0x3

    new-array v0, v1, [D

    .line 730
    .local v0, "locationDel":[D
    const/4 v1, 0x0

    const-string v2, "Latitude"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 731
    const/4 v1, 0x1

    const-string v2, "Longitude"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 732
    const/4 v1, 0x2

    const-string v2, "Altitude"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 733
    return-object v0
.end method

.method private getLocationExtDel(Landroid/os/Bundle;)[F
    .locals 3
    .param p1, "context"    # Landroid/os/Bundle;

    .prologue
    .line 744
    const/4 v1, 0x3

    new-array v0, v1, [F

    .line 745
    .local v0, "locationExtDel":[F
    const/4 v1, 0x0

    const-string v2, "Bearing"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v2

    aput v2, v0, v1

    .line 746
    const/4 v1, 0x1

    const-string v2, "Speed"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v2

    aput v2, v0, v1

    .line 747
    const/4 v1, 0x2

    const-string v2, "Accuracy"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v2

    aput v2, v0, v1

    .line 748
    return-object v0
.end method

.method private isFilterInitialized()Z
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mHybridPositioningEngine:Landroid/hardware/contextaware/lib/builtin/LphpLibEngine;

    if-nez v0, :cond_0

    .line 247
    const/4 v0, 0x0

    .line 254
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private notifyLocationContext(JJ[D[FZI)V
    .locals 5
    .param p1, "sysTime"    # J
    .param p3, "timeStamp"    # J
    .param p5, "daLocationHybrid"    # [D
    .param p6, "faLocationExtHybrid"    # [F
    .param p7, "valid"    # Z
    .param p8, "pedestrianStatus"    # I

    .prologue
    .line 595
    invoke-virtual {p0}, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->getContextValueNames()[Ljava/lang/String;

    move-result-object v0

    .line 597
    .local v0, "names":[Ljava/lang/String;
    invoke-super {p0}, Landroid/hardware/contextaware/aggregator/Aggregator;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-virtual {v1, v2, p1, p2}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 598
    invoke-super {p0}, Landroid/hardware/contextaware/aggregator/Aggregator;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-virtual {v1, v2, p3, p4}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 599
    invoke-super {p0}, Landroid/hardware/contextaware/aggregator/Aggregator;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v2, v0, v2

    const/4 v3, 0x0

    aget-wide v3, p5, v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V

    .line 600
    invoke-super {p0}, Landroid/hardware/contextaware/aggregator/Aggregator;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v1

    const/4 v2, 0x3

    aget-object v2, v0, v2

    const/4 v3, 0x1

    aget-wide v3, p5, v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V

    .line 601
    invoke-super {p0}, Landroid/hardware/contextaware/aggregator/Aggregator;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v1

    const/4 v2, 0x4

    aget-object v2, v0, v2

    const/4 v3, 0x2

    aget-wide v3, p5, v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V

    .line 602
    invoke-super {p0}, Landroid/hardware/contextaware/aggregator/Aggregator;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v1

    const/4 v2, 0x5

    aget-object v2, v0, v2

    const/4 v3, 0x0

    aget v3, p6, v3

    invoke-virtual {v1, v2, v3}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;F)V

    .line 603
    invoke-super {p0}, Landroid/hardware/contextaware/aggregator/Aggregator;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v1

    const/4 v2, 0x6

    aget-object v2, v0, v2

    const/4 v3, 0x1

    aget v3, p6, v3

    invoke-virtual {v1, v2, v3}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;F)V

    .line 604
    invoke-super {p0}, Landroid/hardware/contextaware/aggregator/Aggregator;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v1

    const/4 v2, 0x7

    aget-object v2, v0, v2

    const/4 v3, 0x2

    aget v3, p6, v3

    invoke-virtual {v1, v2, v3}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;F)V

    .line 605
    invoke-super {p0}, Landroid/hardware/contextaware/aggregator/Aggregator;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v1

    const/16 v2, 0x8

    aget-object v2, v0, v2

    invoke-virtual {v1, v2, p7}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;Z)V

    .line 606
    invoke-super {p0}, Landroid/hardware/contextaware/aggregator/Aggregator;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v1

    const/16 v2, 0x9

    aget-object v2, v0, v2

    invoke-virtual {v1, v2, p8}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    .line 608
    invoke-super {p0}, Landroid/hardware/contextaware/aggregator/Aggregator;->notifyObserver()V

    .line 609
    return-void
.end method

.method private receiveApdrNoti(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "context"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    .line 518
    if-nez p1, :cond_1

    .line 532
    :cond_0
    :goto_0
    return-void

    .line 522
    :cond_1
    const-string v1, "Alert"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 523
    .local v0, "notiType":I
    if-eq v0, v2, :cond_2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 528
    :cond_2
    iput-boolean v2, p0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mApdrNoti:Z

    .line 530
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 531
    invoke-super {p0}, Landroid/hardware/contextaware/aggregator/Aggregator;->resume()V

    goto :goto_0
.end method

.method private requestGpsData(JJ)V
    .locals 22
    .param p1, "sysTime"    # J
    .param p3, "timeStamp"    # J

    .prologue
    .line 543
    const/4 v1, 0x3

    new-array v6, v1, [D

    .line 544
    .local v6, "daLocationHybrid":[D
    const/4 v1, 0x3

    new-array v7, v1, [F

    .line 545
    .local v7, "faLocationExtHybrid":[F
    const/4 v1, 0x1

    new-array v0, v1, [I

    move-object/from16 v21, v0

    .line 547
    .local v21, "val":[I
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mHybridPositioningEngine:Landroid/hardware/contextaware/lib/builtin/LphpLibEngine;

    move-object/from16 v0, v21

    invoke-virtual {v1, v6, v7, v0}, Landroid/hardware/contextaware/lib/builtin/LphpLibEngine;->native_LPHPEngine_hybridGpsRequestGpsData([D[F[I)V

    .line 551
    const/4 v8, 0x1

    .line 552
    .local v8, "locationHybridValid":Z
    const/4 v1, 0x0

    aget v1, v21, v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 553
    const/4 v8, 0x1

    .line 558
    :goto_0
    if-eqz v8, :cond_0

    .line 559
    move-object/from16 v0, p0

    iget v9, v0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mPedestrianStatus:I

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    invoke-direct/range {v1 .. v9}, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->notifyLocationContext(JJ[D[FZI)V

    .line 563
    const/4 v1, 0x0

    aget-wide v14, v6, v1

    const/4 v1, 0x1

    aget-wide v16, v6, v1

    const/4 v1, 0x2

    aget-wide v18, v6, v1

    const/4 v1, 0x2

    aget v20, v7, v1

    move-object/from16 v9, p0

    move-wide/from16 v10, p1

    move-wide/from16 v12, p3

    invoke-direct/range {v9 .. v20}, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->setCurLocationforHubApdr(JJDDDF)V

    .line 573
    :cond_0
    return-void

    .line 555
    :cond_1
    const/4 v8, 0x0

    goto :goto_0
.end method

.method private sendSleepModeCmdToSensorHub()V
    .locals 13

    .prologue
    .line 261
    sget-object v9, Landroid/hardware/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_APDR:Landroid/hardware/contextaware/ContextList$ContextType;

    invoke-virtual {v9}, Landroid/hardware/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->getSubCollectionObj(Ljava/lang/String;)Landroid/hardware/contextaware/manager/ContextProvider;

    move-result-object v2

    check-cast v2, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;

    .line 264
    .local v2, "apdrRunner":Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;
    if-nez v2, :cond_0

    .line 302
    :goto_0
    return-void

    .line 269
    :cond_0
    const-wide v9, 0x4042800000000000L    # 37.0

    iput-wide v9, p0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mCurLatitude:D

    .line 270
    const-wide/high16 v9, 0x4060000000000000L    # 128.0

    iput-wide v9, p0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mCurLongitude:D

    .line 271
    const-wide/16 v9, 0x0

    iput-wide v9, p0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mCurAltitude:D

    .line 272
    const/high16 v9, 0x41200000    # 10.0f

    iput v9, p0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mCurAccuracy:F

    .line 274
    iget-wide v9, p0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mCurLatitude:D

    const-wide v11, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v9, v11

    double-to-int v9, v9

    const/4 v10, 0x4

    invoke-static {v9, v10}, Landroid/hardware/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v5

    .line 276
    .local v5, "latBuf":[B
    iget-wide v9, p0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mCurLongitude:D

    const-wide v11, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v9, v11

    double-to-int v9, v9

    const/4 v10, 0x4

    invoke-static {v9, v10}, Landroid/hardware/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v6

    .line 278
    .local v6, "longBuf":[B
    iget-wide v9, p0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mCurAltitude:D

    const-wide v11, 0x408f400000000000L    # 1000.0

    mul-double/2addr v9, v11

    double-to-int v9, v9

    const/4 v10, 0x3

    invoke-static {v9, v10}, Landroid/hardware/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v1

    .line 280
    .local v1, "altiBuf":[B
    iget v9, p0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mCurAccuracy:F

    float-to-int v9, v9

    const/4 v10, 0x1

    invoke-static {v9, v10}, Landroid/hardware/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v0

    .line 282
    .local v0, "accuracyBuf":[B
    iget v9, p0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mUserWantedAccuracy:I

    const/4 v10, 0x1

    invoke-static {v9, v10}, Landroid/hardware/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v8

    .line 285
    .local v8, "userWantedAccuracyBuf":[B
    array-length v9, v5

    array-length v10, v6

    add-int/2addr v9, v10

    array-length v10, v1

    add-int/2addr v9, v10

    array-length v10, v0

    add-int/2addr v9, v10

    array-length v10, v8

    add-int v3, v9, v10

    .line 288
    .local v3, "bufsize":I
    new-array v4, v3, [B

    .line 289
    .local v4, "dataPacket":[B
    const/4 v7, 0x0

    .line 290
    .local v7, "size":I
    const/4 v9, 0x0

    array-length v10, v5

    invoke-static {v5, v9, v4, v7, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 291
    array-length v9, v5

    add-int/2addr v7, v9

    .line 292
    const/4 v9, 0x0

    array-length v10, v6

    invoke-static {v6, v9, v4, v7, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 293
    array-length v9, v6

    add-int/2addr v7, v9

    .line 294
    const/4 v9, 0x0

    array-length v10, v1

    invoke-static {v1, v9, v4, v7, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 295
    array-length v9, v1

    add-int/2addr v7, v9

    .line 296
    const/4 v9, 0x0

    array-length v10, v0

    invoke-static {v0, v9, v4, v7, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 297
    array-length v9, v0

    add-int/2addr v7, v9

    .line 298
    const/4 v9, 0x0

    array-length v10, v8

    invoke-static {v8, v9, v4, v7, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 301
    invoke-virtual {v2, v4}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->sendSleepModeCmdToSensorHub([B)V

    goto :goto_0
.end method

.method private setCurLocationforHubApdr(JJDDDF)V
    .locals 0
    .param p1, "sysTime"    # J
    .param p3, "timeStamp"    # J
    .param p5, "latitude"    # D
    .param p7, "longitude"    # D
    .param p9, "altitude"    # D
    .param p11, "accuracy"    # F

    .prologue
    .line 630
    iput-wide p1, p0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mCurSysTime:J

    .line 631
    iput-wide p3, p0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mCurTimeStamp:J

    .line 632
    iput-wide p5, p0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mCurLatitude:D

    .line 633
    iput-wide p7, p0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mCurLongitude:D

    .line 634
    iput-wide p9, p0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mCurAltitude:D

    .line 635
    iput p11, p0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mCurAccuracy:F

    .line 636
    return-void
.end method

.method private updateApdrData(Landroid/os/Bundle;)V
    .locals 25
    .param p1, "context"    # Landroid/os/Bundle;

    .prologue
    .line 464
    invoke-direct/range {p0 .. p0}, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->isFilterInitialized()Z

    move-result v5

    if-eqz v5, :cond_0

    if-nez p1, :cond_1

    .line 509
    :cond_0
    :goto_0
    return-void

    .line 468
    :cond_1
    move-object/from16 v0, p0

    iget-wide v5, v0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mCurSysTime:J

    const-string v11, "DeltaTime"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v11

    double-to-long v11, v11

    add-long/2addr v5, v11

    move-object/from16 v0, p0

    iput-wide v5, v0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mCurSysTime:J

    .line 469
    move-object/from16 v0, p0

    iget-wide v5, v0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mCurTimeStamp:J

    const-string v11, "DeltaTime"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v11

    double-to-long v11, v11

    add-long/2addr v5, v11

    move-object/from16 v0, p0

    iput-wide v5, v0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mCurTimeStamp:J

    .line 471
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mHybridPositioningEngine:Landroid/hardware/contextaware/lib/builtin/LphpLibEngine;

    if-eqz v5, :cond_0

    .line 475
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 477
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mCurSysTime:J

    move-wide/from16 v20, v0

    .line 478
    .local v20, "systemTime":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mCurTimeStamp:J

    move-wide/from16 v22, v0

    .line 479
    .local v22, "timeStamp":J
    move-object/from16 v0, p0

    iget-wide v7, v0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mCurLatitude:D

    .line 480
    .local v7, "latitude":D
    move-object/from16 v0, p0

    iget-wide v9, v0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mCurLongitude:D

    .line 482
    .local v9, "longitude":D
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mHybridPositioningEngine:Landroid/hardware/contextaware/lib/builtin/LphpLibEngine;

    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-direct {v0, v1, v2}, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->getDate(J)[I

    move-result-object v6

    const-string v11, "Speed"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v11

    const-string v13, "Heading"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v13

    const-string v15, "DeltaTime"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v15

    const-string v17, "Doe"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v17

    invoke-virtual/range {v5 .. v17}, Landroid/hardware/contextaware/lib/builtin/LphpLibEngine;->native_LPHPEngine_hybridGpsDeliverSensorHubData([IDDDDDI)V

    .line 489
    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    move-wide/from16 v3, v22

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->requestGpsData(JJ)V

    .line 491
    const/4 v5, 0x3

    new-array v0, v5, [D

    move-object/from16 v18, v0

    .line 492
    .local v18, "daLocationHybrid":[D
    const/4 v5, 0x3

    new-array v0, v5, [F

    move-object/from16 v19, v0

    .line 493
    .local v19, "faLocationExtHybrid":[F
    const/4 v5, 0x1

    new-array v0, v5, [I

    move-object/from16 v24, v0

    .line 495
    .local v24, "val":[I
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mHybridPositioningEngine:Landroid/hardware/contextaware/lib/builtin/LphpLibEngine;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v24

    invoke-virtual {v5, v0, v1, v2}, Landroid/hardware/contextaware/lib/builtin/LphpLibEngine;->native_LPHPEngine_hybridGpsRequestGpsData([D[F[I)V

    goto/16 :goto_0
.end method

.method private updateRawGpsData(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "context"    # Landroid/os/Bundle;

    .prologue
    .line 311
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mHybridPositioningEngine:Landroid/hardware/contextaware/lib/builtin/LphpLibEngine;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 343
    :cond_0
    :goto_0
    return-void

    .line 315
    :cond_1
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 317
    const-string v0, "SystemTime"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 318
    .local v4, "systemTime":J
    const-string v0, "TimeStamp"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 319
    .local v8, "timeStamp":J
    invoke-direct {p0, p1}, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->getLocationDel(Landroid/os/Bundle;)[D

    move-result-object v1

    .line 320
    .local v1, "locationDel":[D
    invoke-direct {p0, p1}, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->getLocationExtDel(Landroid/os/Bundle;)[F

    move-result-object v2

    .line 322
    .local v2, "locationExtDel":[F
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mHybridPositioningEngine:Landroid/hardware/contextaware/lib/builtin/LphpLibEngine;

    invoke-direct {p0, v8, v9}, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->getDate(J)[I

    move-result-object v3

    const-string v6, "Valid"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    const-string v7, "SVCount"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual/range {v0 .. v7}, Landroid/hardware/contextaware/lib/builtin/LphpLibEngine;->native_LPHPEngine_hybridGpsDeliverGpsData([D[F[IJII)V

    .line 327
    iput-wide v4, p0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mlSysTimeHybrid:J

    .line 328
    iput-wide v8, p0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mlTimeStampHybrid:J

    .line 330
    invoke-direct {p0, v4, v5, v8, v9}, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->requestGpsData(JJ)V

    goto :goto_0
.end method

.method private updateRawSatelliteData(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "context"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x1

    .line 352
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mHybridPositioningEngine:Landroid/hardware/contextaware/lib/builtin/LphpLibEngine;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 376
    :cond_0
    :goto_0
    return-void

    .line 356
    :cond_1
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 358
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mHybridPositioningEngine:Landroid/hardware/contextaware/lib/builtin/LphpLibEngine;

    const-string v1, "NumSat"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "Prn"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v2

    const-string v3, "Snr"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getFloatArray(Ljava/lang/String;)[F

    move-result-object v3

    const-string v4, "El"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getFloatArray(Ljava/lang/String;)[F

    move-result-object v4

    const-string v5, "Az"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getFloatArray(Ljava/lang/String;)[F

    move-result-object v5

    const-string v6, "Mask"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/hardware/contextaware/lib/builtin/LphpLibEngine;->native_LPHPEngine_hybridGpsDeliverSvStatus(I[I[F[F[F[I)V

    .line 367
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/CaPowerManager;->getInstance()Landroid/hardware/contextaware/utilbundle/CaPowerManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/contextaware/utilbundle/CaPowerManager;->isScreenOn()Z

    move-result v8

    .line 368
    .local v8, "isScreenOn":Z
    invoke-super {p0}, Landroid/hardware/contextaware/aggregator/Aggregator;->getAPStatus()I

    move-result v0

    const/16 v1, -0x2e

    if-ne v0, v1, :cond_3

    move v7, v9

    .line 369
    .local v7, "isApSleep":Z
    :goto_1
    if-nez v8, :cond_0

    invoke-direct {p0}, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->isFilterInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez v7, :cond_2

    iget-boolean v0, p0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mApdrNoti:Z

    if-eqz v0, :cond_0

    .line 371
    :cond_2
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 372
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/CaAlarmManager;->getInstance()Landroid/hardware/contextaware/utilbundle/CaAlarmManager;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/hardware/contextaware/utilbundle/CaAlarmManager;->vibrateAlarm(Z)V

    .line 373
    invoke-virtual {p0}, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->notifyApStatus()V

    .line 374
    invoke-direct {p0}, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->sendSleepModeCmdToSensorHub()V

    goto :goto_0

    .line 368
    .end local v7    # "isApSleep":Z
    :cond_3
    const/4 v7, 0x0

    goto :goto_1
.end method

.method private updateRawWpsData(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "context"    # Landroid/os/Bundle;

    .prologue
    .line 385
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mHybridPositioningEngine:Landroid/hardware/contextaware/lib/builtin/LphpLibEngine;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 400
    :cond_0
    :goto_0
    return-void

    .line 389
    :cond_1
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 391
    invoke-direct {p0, p1}, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->getLocationDel(Landroid/os/Bundle;)[D

    move-result-object v1

    .line 393
    .local v1, "locationDel":[D
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mHybridPositioningEngine:Landroid/hardware/contextaware/lib/builtin/LphpLibEngine;

    const-string v2, "TimeStamp"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->getDate(J)[I

    move-result-object v2

    const-string v3, "SystemTime"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/hardware/contextaware/lib/builtin/LphpLibEngine;->native_LPHPEngine_hybridGpsDeliverWpsData([D[IJII)V

    .line 398
    const-string v0, "SystemTime"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mlSysTimeHybrid:J

    .line 399
    const-string v0, "TimeStamp"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mlTimeStampHybrid:J

    goto :goto_0
.end method


# virtual methods
.method public final clear()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    const-wide/16 v0, 0x0

    .line 199
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 200
    invoke-super {p0}, Landroid/hardware/contextaware/aggregator/Aggregator;->clear()V

    .line 202
    iput-wide v0, p0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mlSysTimeHybrid:J

    .line 203
    iput-wide v0, p0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mlTimeStampHybrid:J

    .line 205
    iput-wide v0, p0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mCurSysTime:J

    .line 206
    iput-wide v0, p0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mCurTimeStamp:J

    .line 207
    iput-wide v2, p0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mCurLatitude:D

    .line 208
    iput-wide v2, p0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mCurLongitude:D

    .line 209
    iput-wide v2, p0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mCurAltitude:D

    .line 210
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mCurAccuracy:F

    .line 212
    iput v4, p0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mMovingUpdataCnt:I

    .line 213
    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mPedestrianStatus:I

    .line 215
    iput-boolean v4, p0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mApdrNoti:Z

    .line 217
    const/16 v0, 0x64

    iput v0, p0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mUserWantedAccuracy:I

    .line 219
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mHybridPositioningEngine:Landroid/hardware/contextaware/lib/builtin/LphpLibEngine;

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mHybridPositioningEngine:Landroid/hardware/contextaware/lib/builtin/LphpLibEngine;

    invoke-virtual {v0, v4}, Landroid/hardware/contextaware/lib/builtin/LphpLibEngine;->native_LPHPEngine_hybridGpsInitialize(I)V

    .line 222
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mHybridPositioningEngine:Landroid/hardware/contextaware/lib/builtin/LphpLibEngine;

    iget v1, p0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mUserWantedAccuracy:I

    invoke-virtual {v0, v1}, Landroid/hardware/contextaware/lib/builtin/LphpLibEngine;->native_LPHPEngine_hybridGpsSetAccuracy(I)V

    .line 225
    :cond_0
    return-void
.end method

.method public final disable()V
    .locals 1

    .prologue
    .line 181
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 187
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mHybridPositioningEngine:Landroid/hardware/contextaware/lib/builtin/LphpLibEngine;

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mHybridPositioningEngine:Landroid/hardware/contextaware/lib/builtin/LphpLibEngine;

    invoke-virtual {v0}, Landroid/hardware/contextaware/lib/builtin/LphpLibEngine;->native_LPHPEngine_hybridGpsFinalize()V

    .line 190
    :cond_0
    return-void
.end method

.method public final enable()V
    .locals 0

    .prologue
    .line 167
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 172
    return-void
.end method

.method public final getContextType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 645
    sget-object v0, Landroid/hardware/contextaware/ContextList$ContextType;->AGGREGATOR_LOCATION:Landroid/hardware/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Landroid/hardware/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final getContextValueNames()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 235
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "SystemTime"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "TimeStamp"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Latitude"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Longitude"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "Altitude"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "Heading"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Speed"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Accuracy"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Valid"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "PedestrianStatus"

    aput-object v2, v0, v1

    return-object v0
.end method

.method protected final getPowerObserver()Landroid/hardware/contextaware/manager/IApPowerObserver;
    .locals 0

    .prologue
    .line 656
    return-object p0
.end method

.method protected final getPowerResetObserver()Landroid/hardware/contextaware/manager/IApPowerResetObserver;
    .locals 0

    .prologue
    .line 666
    return-object p0
.end method

.method protected final initializeAggregator()V
    .locals 1

    .prologue
    .line 129
    new-instance v0, Landroid/hardware/contextaware/lib/builtin/LphpLibEngine;

    invoke-direct {v0}, Landroid/hardware/contextaware/lib/builtin/LphpLibEngine;-><init>()V

    iput-object v0, p0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mHybridPositioningEngine:Landroid/hardware/contextaware/lib/builtin/LphpLibEngine;

    .line 130
    return-void
.end method

.method public final pause()V
    .locals 0

    .prologue
    .line 149
    return-void
.end method

.method public final resume()V
    .locals 0

    .prologue
    .line 158
    return-void
.end method

.method public final setPropertyValue(ILjava/lang/Object;)V
    .locals 4
    .param p1, "property"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(ITE;)V"
        }
    .end annotation

    .prologue
    .line 801
    .local p2, "value":Ljava/lang/Object;, "TE;"
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 802
    check-cast p2, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;

    .end local p2    # "value":Ljava/lang/Object;, "TE;"
    invoke-virtual {p2}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mUserWantedAccuracy:I

    .line 804
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setProperty (User Wanted Accuracy) = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mUserWantedAccuracy:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 817
    :cond_0
    :goto_0
    return-void

    .line 806
    .restart local p2    # "value":Ljava/lang/Object;, "TE;"
    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 807
    invoke-static {}, Landroid/hardware/contextaware/manager/CaUserInfo;->getInstance()Landroid/hardware/contextaware/manager/CaUserInfo;

    move-result-object v1

    check-cast p2, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;

    .end local p2    # "value":Ljava/lang/Object;, "TE;"
    invoke-virtual {p2}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/hardware/contextaware/manager/CaUserInfo;->setUserHeight(D)V

    .line 809
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setProperty (User Height) = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/hardware/contextaware/manager/CaUserInfo;->getInstance()Landroid/hardware/contextaware/manager/CaUserInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/contextaware/manager/CaUserInfo;->getUserHeight()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 811
    .restart local p2    # "value":Ljava/lang/Object;, "TE;"
    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 812
    invoke-static {}, Landroid/hardware/contextaware/manager/CaUserInfo;->getInstance()Landroid/hardware/contextaware/manager/CaUserInfo;

    move-result-object v1

    check-cast p2, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;

    .end local p2    # "value":Ljava/lang/Object;, "TE;"
    invoke-virtual {p2}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/hardware/contextaware/manager/CaUserInfo;->setUserWeight(D)V

    .line 814
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setProperty (User Weight) = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/hardware/contextaware/manager/CaUserInfo;->getInstance()Landroid/hardware/contextaware/manager/CaUserInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/contextaware/manager/CaUserInfo;->getUserWeight()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected final terminateAggregator()V
    .locals 1

    .prologue
    .line 139
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mHybridPositioningEngine:Landroid/hardware/contextaware/lib/builtin/LphpLibEngine;

    .line 140
    return-void
.end method

.method protected final updateApSleep()V
    .locals 1

    .prologue
    .line 826
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 827
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mApdrNoti:Z

    .line 828
    return-void
.end method

.method protected final updateApWakeup()V
    .locals 1

    .prologue
    .line 837
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 838
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->mApdrNoti:Z

    .line 839
    invoke-super {p0}, Landroid/hardware/contextaware/aggregator/Aggregator;->updateApWakeup()V

    .line 840
    return-void
.end method

.method public final updateContext(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/os/Bundle;

    .prologue
    .line 701
    if-nez p2, :cond_1

    .line 719
    :cond_0
    :goto_0
    return-void

    .line 705
    :cond_1
    sget-object v0, Landroid/hardware/contextaware/ContextList$ContextType;->ANDROID_RUNNER_RAW_GPS:Landroid/hardware/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Landroid/hardware/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 706
    invoke-direct {p0, p2}, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->updateRawGpsData(Landroid/os/Bundle;)V

    goto :goto_0

    .line 707
    :cond_2
    sget-object v0, Landroid/hardware/contextaware/ContextList$ContextType;->ANDROID_RUNNER_RAW_SATELLITE:Landroid/hardware/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Landroid/hardware/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 709
    invoke-direct {p0, p2}, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->updateRawSatelliteData(Landroid/os/Bundle;)V

    goto :goto_0

    .line 710
    :cond_3
    sget-object v0, Landroid/hardware/contextaware/ContextList$ContextType;->ANDROID_RUNNER_RAW_WPS:Landroid/hardware/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Landroid/hardware/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 711
    invoke-direct {p0, p2}, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->updateRawWpsData(Landroid/os/Bundle;)V

    goto :goto_0

    .line 712
    :cond_4
    sget-object v0, Landroid/hardware/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_APDR:Landroid/hardware/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Landroid/hardware/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 713
    invoke-virtual {p2}, Landroid/os/Bundle;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_5

    .line 714
    invoke-direct {p0, p2}, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->updateApdrData(Landroid/os/Bundle;)V

    goto :goto_0

    .line 716
    :cond_5
    invoke-direct {p0, p2}, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->receiveApdrNoti(Landroid/os/Bundle;)V

    goto :goto_0
.end method
