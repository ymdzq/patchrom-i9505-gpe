.class Landroid/view/ViewDebug$DumpZ;
.super Ljava/lang/Object;
.source "ViewDebug.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewDebug;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DumpZ"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1522
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static WriteProperty(Ljava/lang/String;FLjava/io/BufferedWriter;)V
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "value"    # F
    .param p2, "out"    # Ljava/io/BufferedWriter;

    .prologue
    .line 1985
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1986
    invoke-static {p1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1987
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1988
    invoke-static {p1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1989
    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1994
    :goto_0
    return-void

    .line 1990
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static WriteProperty(Ljava/lang/String;ILjava/io/BufferedWriter;)V
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "value"    # I
    .param p2, "out"    # Ljava/io/BufferedWriter;

    .prologue
    .line 1971
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1972
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1973
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1974
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1975
    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1980
    :goto_0
    return-void

    .line 1976
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "out"    # Ljava/io/BufferedWriter;

    .prologue
    .line 1953
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1954
    const/16 v0, 0xa

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    .line 1955
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1956
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1957
    invoke-virtual {p2, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1958
    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1963
    :goto_0
    return-void

    .line 1959
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static WriteProperty(Ljava/lang/String;ZLjava/io/BufferedWriter;)V
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "value"    # Z
    .param p2, "out"    # Ljava/io/BufferedWriter;

    .prologue
    .line 2002
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 2004
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 2006
    const-string v0, "4,true "

    invoke-virtual {p2, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 2016
    :goto_0
    return-void

    .line 2010
    :cond_0
    const-string v0, "5,false "

    invoke-virtual {p2, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2012
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic access$000(Landroid/view/View;Ljava/io/OutputStream;)V
    .locals 0
    .param p0, "x0"    # Landroid/view/View;
    .param p1, "x1"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1522
    invoke-static {p0, p1}, Landroid/view/ViewDebug$DumpZ;->dump(Landroid/view/View;Ljava/io/OutputStream;)V

    return-void
.end method

.method private static dump(Landroid/view/View;Ljava/io/OutputStream;)V
    .locals 8
    .param p0, "root"    # Landroid/view/View;
    .param p1, "clientStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1527
    const/4 v3, 0x0

    .line 1529
    .local v3, "out":Ljava/io/BufferedWriter;
    :try_start_0
    new-instance v4, Ljava/io/BufferedWriter;

    new-instance v6, Ljava/io/OutputStreamWriter;

    invoke-direct {v6, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const v7, 0x8000

    invoke-direct {v4, v6, v7}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1530
    .end local v3    # "out":Ljava/io/BufferedWriter;
    .local v4, "out":Ljava/io/BufferedWriter;
    :try_start_1
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v5

    .line 1531
    .local v5, "view":Landroid/view/View;
    instance-of v6, v5, Landroid/view/ViewGroup;

    if-eqz v6, :cond_1

    .line 1532
    move-object v0, v5

    check-cast v0, Landroid/view/ViewGroup;

    move-object v2, v0

    .line 1533
    .local v2, "group":Landroid/view/ViewGroup;
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v2, v4, v7}, Landroid/view/ViewDebug$DumpZ;->dumpViewHierarchyWithProperties(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/io/BufferedWriter;I)V

    .line 1539
    .end local v2    # "group":Landroid/view/ViewGroup;
    :goto_0
    const-string v6, "DONE."

    invoke-virtual {v4, v6}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1540
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1544
    if-eqz v4, :cond_3

    .line 1545
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V

    move-object v3, v4

    .line 1548
    .end local v4    # "out":Ljava/io/BufferedWriter;
    .end local v5    # "view":Landroid/view/View;
    .restart local v3    # "out":Ljava/io/BufferedWriter;
    :cond_0
    :goto_1
    return-void

    .line 1537
    .end local v3    # "out":Ljava/io/BufferedWriter;
    .restart local v4    # "out":Ljava/io/BufferedWriter;
    .restart local v5    # "view":Landroid/view/View;
    :cond_1
    :try_start_2
    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v5, v4, v7}, Landroid/view/ViewDebug$DumpZ;->dumpViewWithProperties(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;I)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 1541
    .end local v5    # "view":Landroid/view/View;
    :catch_0
    move-exception v1

    move-object v3, v4

    .line 1542
    .end local v4    # "out":Ljava/io/BufferedWriter;
    .local v1, "e":Ljava/lang/Exception;
    .restart local v3    # "out":Ljava/io/BufferedWriter;
    :goto_2
    :try_start_3
    const-string v6, "View"

    const-string v7, "Problem dumping the view:"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1544
    if-eqz v3, :cond_0

    .line 1545
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V

    goto :goto_1

    .line 1544
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    :goto_3
    if-eqz v3, :cond_2

    .line 1545
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V

    :cond_2
    throw v6

    .line 1544
    .end local v3    # "out":Ljava/io/BufferedWriter;
    .restart local v4    # "out":Ljava/io/BufferedWriter;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4    # "out":Ljava/io/BufferedWriter;
    .restart local v3    # "out":Ljava/io/BufferedWriter;
    goto :goto_3

    .line 1541
    :catch_1
    move-exception v1

    goto :goto_2

    .end local v3    # "out":Ljava/io/BufferedWriter;
    .restart local v4    # "out":Ljava/io/BufferedWriter;
    .restart local v5    # "view":Landroid/view/View;
    :cond_3
    move-object v3, v4

    .end local v4    # "out":Ljava/io/BufferedWriter;
    .restart local v3    # "out":Ljava/io/BufferedWriter;
    goto :goto_1
.end method

.method private static dumpView(Ljava/lang/Object;Ljava/io/BufferedWriter;I)Z
    .locals 4
    .param p0, "view"    # Ljava/lang/Object;
    .param p1, "out"    # Ljava/io/BufferedWriter;
    .param p2, "level"    # I

    .prologue
    .line 2062
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_0

    .line 2063
    const/16 v2, 0x20

    :try_start_0
    invoke-virtual {p1, v2}, Ljava/io/BufferedWriter;->write(I)V

    .line 2062
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2065
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 2066
    const/16 v2, 0x40

    invoke-virtual {p1, v2}, Ljava/io/BufferedWriter;->write(I)V

    .line 2067
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 2068
    invoke-virtual {p1}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2073
    const/4 v2, 0x1

    :goto_1
    return v2

    .line 2069
    :catch_0
    move-exception v0

    .line 2070
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "View"

    const-string v3, "Error while dumping hierarchy tree"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2071
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private static dumpViewHierarchy(Landroid/view/ViewGroup;Ljava/io/BufferedWriter;I)V
    .locals 4
    .param p0, "group"    # Landroid/view/ViewGroup;
    .param p1, "out"    # Ljava/io/BufferedWriter;
    .param p2, "level"    # I

    .prologue
    .line 2042
    invoke-static {p0, p1, p2}, Landroid/view/ViewDebug$DumpZ;->dumpView(Ljava/lang/Object;Ljava/io/BufferedWriter;I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2055
    :cond_0
    return-void

    .line 2046
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 2047
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 2048
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2049
    .local v2, "view":Landroid/view/View;
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_2

    .line 2050
    check-cast v2, Landroid/view/ViewGroup;

    .end local v2    # "view":Landroid/view/View;
    add-int/lit8 v3, p2, 0x1

    invoke-static {v2, p1, v3}, Landroid/view/ViewDebug$DumpZ;->dumpViewHierarchy(Landroid/view/ViewGroup;Ljava/io/BufferedWriter;I)V

    .line 2047
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2052
    .restart local v2    # "view":Landroid/view/View;
    :cond_2
    add-int/lit8 v3, p2, 0x1

    invoke-static {v2, p1, v3}, Landroid/view/ViewDebug$DumpZ;->dumpView(Ljava/lang/Object;Ljava/io/BufferedWriter;I)Z

    goto :goto_1
.end method

.method private static dumpViewHierarchyWithProperties(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/io/BufferedWriter;I)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "group"    # Landroid/view/ViewGroup;
    .param p2, "out"    # Ljava/io/BufferedWriter;
    .param p3, "level"    # I

    .prologue
    .line 1555
    invoke-static {p0, p1, p2, p3}, Landroid/view/ViewDebug$DumpZ;->dumpViewWithProperties(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1568
    :cond_0
    return-void

    .line 1559
    :cond_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 1560
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1561
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1562
    .local v2, "view":Landroid/view/View;
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_2

    .line 1563
    check-cast v2, Landroid/view/ViewGroup;

    .end local v2    # "view":Landroid/view/View;
    add-int/lit8 v3, p3, 0x1

    invoke-static {p0, v2, p2, v3}, Landroid/view/ViewDebug$DumpZ;->dumpViewHierarchyWithProperties(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/io/BufferedWriter;I)V

    .line 1560
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1565
    .restart local v2    # "view":Landroid/view/View;
    :cond_2
    add-int/lit8 v3, p3, 0x1

    invoke-static {p0, v2, p2, v3}, Landroid/view/ViewDebug$DumpZ;->dumpViewWithProperties(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;I)Z

    goto :goto_1
.end method

.method private static dumpViewProperties(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;)V
    .locals 19
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "view"    # Ljava/lang/Object;
    .param p2, "out"    # Ljava/io/BufferedWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1617
    const-string v15, ""

    .line 1619
    .local v15, "strValue":Ljava/lang/String;
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/view/View;

    move/from16 v17, v0

    if-eqz v17, :cond_4

    move-object/from16 v16, p1

    .line 1621
    check-cast v16, Landroid/view/View;

    .line 1623
    .local v16, "tempView":Landroid/view/View;
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v10, v0, [I

    .line 1624
    .local v10, "location":[I
    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1627
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getId()I

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-static {v0, v1}, Landroid/view/ViewDebug$DumpZ;->resolveId(Landroid/content/Context;I)Ljava/lang/Object;

    move-result-object v15

    .end local v15    # "strValue":Ljava/lang/String;
    check-cast v15, Ljava/lang/String;

    .line 1628
    .restart local v15    # "strValue":Ljava/lang/String;
    const-string v17, "id"

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-static {v0, v15, v1}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    .line 1631
    const-string/jumbo v17, "x"

    const/16 v18, 0x0

    aget v18, v10, v18

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;ILjava/io/BufferedWriter;)V

    .line 1634
    const-string/jumbo v17, "y"

    const/16 v18, 0x1

    aget v18, v10, v18

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;ILjava/io/BufferedWriter;)V

    .line 1637
    const-string/jumbo v17, "width"

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getWidth()I

    move-result v18

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;ILjava/io/BufferedWriter;)V

    .line 1640
    const-string v17, "height"

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getHeight()I

    move-result v18

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;ILjava/io/BufferedWriter;)V

    .line 1643
    const-string/jumbo v17, "scrollx"

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getScrollX()I

    move-result v18

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;ILjava/io/BufferedWriter;)V

    .line 1646
    const-string/jumbo v17, "scrolly"

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getScrollY()I

    move-result v18

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;ILjava/io/BufferedWriter;)V

    .line 1649
    const-string v17, "enable"

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->isEnabled()Z

    move-result v18

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;ZLjava/io/BufferedWriter;)V

    .line 1651
    const-string v17, "longclickable"

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->isLongClickable()Z

    move-result v18

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;ZLjava/io/BufferedWriter;)V

    .line 1653
    const-string v17, "clickable"

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->isClickable()Z

    move-result v18

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;ZLjava/io/BufferedWriter;)V

    .line 1655
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->isFocusable()Z

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    .line 1657
    const-string v17, "hasfocus"

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->hasFocus()Z

    move-result v18

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;ZLjava/io/BufferedWriter;)V

    .line 1661
    :cond_0
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v3

    .line 1662
    .local v3, "TalkBack_value":Ljava/lang/CharSequence;
    if-eqz v3, :cond_1

    .line 1664
    const-string/jumbo v17, "talkback"

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    .line 1668
    :cond_1
    const-string v17, "isselected"

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->isSelected()Z

    move-result v18

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;ZLjava/io/BufferedWriter;)V

    .line 1671
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getVisibility()I

    move-result v17

    if-nez v17, :cond_8

    .line 1673
    const-string/jumbo v17, "visibility"

    const-string v18, "VISIBLE"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    .line 1693
    :cond_2
    :goto_0
    :try_start_0
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/view/WindowManager$LayoutParams;

    .line 1695
    .local v11, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v0, v11, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_a

    .line 1697
    const-string v17, "layouttype"

    const-string v18, "TYPE_BASE_APPLICATION"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1826
    .end local v11    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_3
    :goto_1
    :try_start_1
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1828
    .local v14, "mp":Landroid/view/ViewGroup$MarginLayoutParams;
    const-string v17, "bottommargin"

    iget v0, v14, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    move/from16 v18, v0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;ILjava/io/BufferedWriter;)V

    .line 1829
    const-string v17, "leftmargin"

    iget v0, v14, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v18, v0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;ILjava/io/BufferedWriter;)V

    .line 1830
    const-string/jumbo v17, "rightmargin"

    iget v0, v14, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v18, v0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;ILjava/io/BufferedWriter;)V

    .line 1831
    const-string/jumbo v17, "topmargin"

    iget v0, v14, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move/from16 v18, v0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;ILjava/io/BufferedWriter;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 1836
    .end local v14    # "mp":Landroid/view/ViewGroup$MarginLayoutParams;
    :goto_2
    const-string/jumbo v17, "willnotdraw"

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->willNotDraw()Z

    move-result v18

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;ZLjava/io/BufferedWriter;)V

    .line 1841
    .end local v3    # "TalkBack_value":Ljava/lang/CharSequence;
    .end local v10    # "location":[I
    .end local v16    # "tempView":Landroid/view/View;
    :cond_4
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    .line 1843
    .local v5, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v5}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v13

    .line 1845
    .local v13, "methods":[Ljava/lang/reflect/Method;
    move-object v4, v13

    .local v4, "arr$":[Ljava/lang/reflect/Method;
    array-length v9, v4

    .local v9, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    :goto_3
    if-ge v8, v9, :cond_28

    aget-object v12, v4, v8

    .line 1846
    .local v12, "method":Ljava/lang/reflect/Method;
    const-string v17, "isFillViewport"

    invoke-virtual {v12}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 1847
    const-string v18, "fillviewport"

    const/16 v17, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v12, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Boolean;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    move-object/from16 v0, v18

    move/from16 v1, v17

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;ZLjava/io/BufferedWriter;)V

    .line 1850
    :cond_5
    const-string v17, "getFirstVisiblePosition"

    invoke-virtual {v12}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 1851
    const-string v18, "firstposition"

    const/16 v17, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v12, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    move-object/from16 v0, v18

    move/from16 v1, v17

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;ILjava/io/BufferedWriter;)V

    .line 1854
    :cond_6
    const-string v17, "getCount"

    invoke-virtual {v12}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 1855
    const-string v18, "itemcount"

    const/16 v17, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v12, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    move-object/from16 v0, v18

    move/from16 v1, v17

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;ILjava/io/BufferedWriter;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 1845
    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 1675
    .end local v4    # "arr$":[Ljava/lang/reflect/Method;
    .end local v5    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v8    # "i$":I
    .end local v9    # "len$":I
    .end local v12    # "method":Ljava/lang/reflect/Method;
    .end local v13    # "methods":[Ljava/lang/reflect/Method;
    .restart local v3    # "TalkBack_value":Ljava/lang/CharSequence;
    .restart local v10    # "location":[I
    .restart local v16    # "tempView":Landroid/view/View;
    :cond_8
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getVisibility()I

    move-result v17

    const/16 v18, 0x4

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_9

    .line 1677
    const-string/jumbo v17, "visibility"

    const-string v18, "INVISIBLE"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    goto/16 :goto_0

    .line 1679
    :cond_9
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getVisibility()I

    move-result v17

    const/16 v18, 0x8

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    .line 1681
    const-string/jumbo v17, "visibility"

    const-string v18, "GONE"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    goto/16 :goto_0

    .line 1699
    .restart local v11    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_a
    :try_start_3
    iget v0, v11, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_b

    .line 1701
    const-string v17, "layouttype"

    const-string v18, "TYPE_APPLICATION"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    goto/16 :goto_1

    .line 1821
    .end local v11    # "lp":Landroid/view/WindowManager$LayoutParams;
    :catch_0
    move-exception v17

    goto/16 :goto_1

    .line 1703
    .restart local v11    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_b
    iget v0, v11, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v17, v0

    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_c

    .line 1705
    const-string v17, "layouttype"

    const-string v18, "TYPE_APPLICATION_STARTING"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    goto/16 :goto_1

    .line 1707
    :cond_c
    iget v0, v11, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v17, v0

    const/16 v18, 0x3e8

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_d

    .line 1709
    const-string v17, "layouttype"

    const-string v18, "TYPE_APPLICATION_PANEL"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    goto/16 :goto_1

    .line 1711
    :cond_d
    iget v0, v11, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v17, v0

    const/16 v18, 0x3e9

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_e

    .line 1713
    const-string v17, "layouttype"

    const-string v18, "TYPE_APPLICATION_MEDIA"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    goto/16 :goto_1

    .line 1715
    :cond_e
    iget v0, v11, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v17, v0

    const/16 v18, 0x3ea

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_f

    .line 1717
    const-string v17, "layouttype"

    const-string v18, "TYPE_APPLICATION_SUB_PANEL"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    goto/16 :goto_1

    .line 1719
    :cond_f
    iget v0, v11, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v17, v0

    const/16 v18, 0x3eb

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_10

    .line 1721
    const-string v17, "layouttype"

    const-string v18, "TYPE_APPLICATION_ATTACHED_DIALOG"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    goto/16 :goto_1

    .line 1723
    :cond_10
    iget v0, v11, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v17, v0

    const/16 v18, 0x7d0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_11

    .line 1725
    const-string v17, "layouttype"

    const-string v18, "TYPE_STATUS_BAR"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    goto/16 :goto_1

    .line 1727
    :cond_11
    iget v0, v11, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v17, v0

    const/16 v18, 0x7d1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_12

    .line 1729
    const-string v17, "layouttype"

    const-string v18, "TYPE_SEARCH_BAR"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    goto/16 :goto_1

    .line 1731
    :cond_12
    iget v0, v11, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v17, v0

    const/16 v18, 0x7d2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_13

    .line 1733
    const-string v17, "layouttype"

    const-string v18, "TYPE_PHONE"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    goto/16 :goto_1

    .line 1735
    :cond_13
    iget v0, v11, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v17, v0

    const/16 v18, 0x7d3

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_14

    .line 1737
    const-string v17, "layouttype"

    const-string v18, "TYPE_SYSTEM_ALERT"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    goto/16 :goto_1

    .line 1739
    :cond_14
    iget v0, v11, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v17, v0

    const/16 v18, 0x7d4

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_15

    .line 1741
    const-string v17, "layouttype"

    const-string v18, "TYPE_KEYGUARD"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    goto/16 :goto_1

    .line 1743
    :cond_15
    iget v0, v11, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v17, v0

    const/16 v18, 0x7d5

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_16

    .line 1745
    const-string v17, "layouttype"

    const-string v18, "TYPE_TOAST"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    goto/16 :goto_1

    .line 1747
    :cond_16
    iget v0, v11, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v17, v0

    const/16 v18, 0x7d6

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_17

    .line 1749
    const-string v17, "layouttype"

    const-string v18, "TYPE_SYSTEM_OVERLAY"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    goto/16 :goto_1

    .line 1751
    :cond_17
    iget v0, v11, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v17, v0

    const/16 v18, 0x7d7

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_18

    .line 1753
    const-string v17, "layouttype"

    const-string v18, "TYPE_PRIORITY_PHONE"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    goto/16 :goto_1

    .line 1755
    :cond_18
    iget v0, v11, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v17, v0

    const/16 v18, 0x7de

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_19

    .line 1757
    const-string v17, "layouttype"

    const-string v18, "TYPE_STATUS_BAR_PANEL"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    goto/16 :goto_1

    .line 1759
    :cond_19
    iget v0, v11, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v17, v0

    const/16 v18, 0x7e1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1a

    .line 1761
    const-string v17, "layouttype"

    const-string v18, "TYPE_STATUS_BAR_SUB_PANEL"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    goto/16 :goto_1

    .line 1763
    :cond_1a
    iget v0, v11, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v17, v0

    const/16 v18, 0x7d8

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1b

    .line 1765
    const-string v17, "layouttype"

    const-string v18, "TYPE_SYSTEM_DIALOG"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    goto/16 :goto_1

    .line 1767
    :cond_1b
    iget v0, v11, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v17, v0

    const/16 v18, 0x7d9

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1c

    .line 1769
    const-string v17, "layouttype"

    const-string v18, "TYPE_KEYGUARD_DIALOG"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    goto/16 :goto_1

    .line 1771
    :cond_1c
    iget v0, v11, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v17, v0

    const/16 v18, 0x7da

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1d

    .line 1773
    const-string v17, "layouttype"

    const-string v18, "TYPE_SYSTEM_ERROR"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    goto/16 :goto_1

    .line 1775
    :cond_1d
    iget v0, v11, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v17, v0

    const/16 v18, 0x7db

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1e

    .line 1777
    const-string v17, "layouttype"

    const-string v18, "TYPE_INPUT_METHOD"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    goto/16 :goto_1

    .line 1779
    :cond_1e
    iget v0, v11, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v17, v0

    const/16 v18, 0x7dc

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1f

    .line 1781
    const-string v17, "layouttype"

    const-string v18, "TYPE_INPUT_METHOD_DIALOG"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    goto/16 :goto_1

    .line 1783
    :cond_1f
    iget v0, v11, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v17, v0

    const/16 v18, 0x7dd

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_20

    .line 1785
    const-string v17, "layouttype"

    const-string v18, "TYPE_WALLPAPER"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    goto/16 :goto_1

    .line 1787
    :cond_20
    iget v0, v11, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v17, v0

    const/16 v18, 0x7de

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_21

    .line 1789
    const-string v17, "layouttype"

    const-string v18, "TYPE_STATUS_BAR_PANEL"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    goto/16 :goto_1

    .line 1791
    :cond_21
    iget v0, v11, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v17, v0

    const/16 v18, 0x7df

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_22

    .line 1793
    const-string v17, "layouttype"

    const-string v18, "TYPE_SECURE_SYSTEM_OVERLAY"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    goto/16 :goto_1

    .line 1795
    :cond_22
    iget v0, v11, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v17, v0

    const/16 v18, 0x7e0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_23

    .line 1797
    const-string v17, "layouttype"

    const-string v18, "TYPE_DRAG"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    goto/16 :goto_1

    .line 1799
    :cond_23
    iget v0, v11, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v17, v0

    const/16 v18, 0x7e1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_24

    .line 1801
    const-string v17, "layouttype"

    const-string v18, "TYPE_STATUS_BAR_SUB_PANEL"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    goto/16 :goto_1

    .line 1803
    :cond_24
    iget v0, v11, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v17, v0

    const/16 v18, 0x7e2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_25

    .line 1805
    const-string v17, "layouttype"

    const-string v18, "TYPE_POINTER"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    goto/16 :goto_1

    .line 1807
    :cond_25
    iget v0, v11, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v17, v0

    const/16 v18, 0x7e3

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_26

    .line 1809
    const-string v17, "layouttype"

    const-string v18, "TYPE_NAVIGATION_BAR"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    goto/16 :goto_1

    .line 1811
    :cond_26
    iget v0, v11, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v17, v0

    const/16 v18, 0x7e4

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_27

    .line 1813
    const-string v17, "layouttype"

    const-string v18, "TYPE_VOLUME_OVERLAY"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    goto/16 :goto_1

    .line 1815
    :cond_27
    iget v0, v11, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v17, v0

    const/16 v18, 0x7e5

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_3

    .line 1817
    const-string v17, "layouttype"

    const-string v18, "TYPE_BOOT_PROGRESS"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_1

    .line 1859
    .end local v3    # "TalkBack_value":Ljava/lang/CharSequence;
    .end local v10    # "location":[I
    .end local v11    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v16    # "tempView":Landroid/view/View;
    :catch_1
    move-exception v17

    .line 1862
    :cond_28
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/view/ViewGroup;

    move/from16 v17, v0

    if-eqz v17, :cond_29

    move-object/from16 v7, p1

    .line 1864
    check-cast v7, Landroid/view/ViewGroup;

    .line 1865
    .local v7, "group":Landroid/view/ViewGroup;
    const-string v17, "childcount"

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v18

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;ILjava/io/BufferedWriter;)V

    .line 1867
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v17

    const/high16 v18, 0x20000

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_2c

    .line 1869
    const-string v17, "focusability"

    const-string v18, "FOCUS_BEFORE_DESCENDANTS"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    .line 1881
    .end local v7    # "group":Landroid/view/ViewGroup;
    :cond_29
    :goto_4
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/widget/TextView;

    move/from16 v17, v0

    if-eqz v17, :cond_2a

    move-object/from16 v16, p1

    .line 1883
    check-cast v16, Landroid/widget/TextView;

    .line 1884
    .local v16, "tempView":Landroid/widget/TextView;
    const-string/jumbo v17, "text"

    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    .line 1887
    :try_start_4
    const-string v17, "hint"

    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView;->getHint()Ljava/lang/CharSequence;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 1892
    :goto_5
    const-string/jumbo v17, "selectionstart"

    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v18

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;ILjava/io/BufferedWriter;)V

    .line 1894
    const-string/jumbo v17, "selectionend"

    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v18

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;ILjava/io/BufferedWriter;)V

    .line 1897
    .end local v16    # "tempView":Landroid/widget/TextView;
    :cond_2a
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/widget/Checkable;

    move/from16 v17, v0

    if-eqz v17, :cond_2b

    move-object/from16 v6, p1

    .line 1899
    check-cast v6, Landroid/widget/Checkable;

    .line 1900
    .local v6, "checkable":Landroid/widget/Checkable;
    const-string v17, "ischecked"

    invoke-interface {v6}, Landroid/widget/Checkable;->isChecked()Z

    move-result v18

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;ZLjava/io/BufferedWriter;)V

    .line 1945
    .end local v6    # "checkable":Landroid/widget/Checkable;
    :cond_2b
    return-void

    .line 1871
    .restart local v7    # "group":Landroid/view/ViewGroup;
    :cond_2c
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v17

    const/high16 v18, 0x40000

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_2d

    .line 1873
    const-string v17, "focusability"

    const-string v18, "FOCUS_AFTER_DESCENDANTS"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    goto/16 :goto_4

    .line 1875
    :cond_2d
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v17

    const/high16 v18, 0x60000

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_29

    .line 1877
    const-string v17, "focusability"

    const-string v18, "FOCUS_BLOCK_DESCENDANTS"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    goto/16 :goto_4

    .line 1889
    .end local v7    # "group":Landroid/view/ViewGroup;
    .restart local v16    # "tempView":Landroid/widget/TextView;
    :catch_2
    move-exception v17

    goto :goto_5

    .line 1833
    .restart local v3    # "TalkBack_value":Ljava/lang/CharSequence;
    .restart local v10    # "location":[I
    .local v16, "tempView":Landroid/view/View;
    :catch_3
    move-exception v17

    goto/16 :goto_2
.end method

.method private static dumpViewWithProperties(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;I)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "view"    # Ljava/lang/Object;
    .param p2, "out"    # Ljava/io/BufferedWriter;
    .param p3, "level"    # I

    .prologue
    const/4 v5, 0x0

    .line 1576
    :try_start_0
    instance-of v6, p1, Landroid/view/View;

    if-eqz v6, :cond_0

    .line 1578
    move-object v0, p1

    check-cast v0, Landroid/view/View;

    move-object v4, v0

    .line 1579
    .local v4, "tempView":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-eqz v6, :cond_0

    .line 1607
    .end local v4    # "tempView":Landroid/view/View;
    :goto_0
    return v5

    .line 1585
    :cond_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, p3, :cond_1

    .line 1586
    const/16 v6, 0x20

    invoke-virtual {p2, v6}, Ljava/io/BufferedWriter;->write(I)V

    .line 1585
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1589
    :cond_1
    const-string v6, ""

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1591
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "\\."

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1592
    .local v1, "arr_str":[Ljava/lang/String;
    const-string v6, "class"

    array-length v7, v1

    add-int/lit8 v7, v7, -0x1

    aget-object v7, v1, v7

    invoke-static {v6, v7, p2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    .line 1599
    .end local v1    # "arr_str":[Ljava/lang/String;
    :goto_2
    const-string v6, "hash"

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, p2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    .line 1600
    invoke-static {p0, p1, p2}, Landroid/view/ViewDebug$DumpZ;->dumpViewProperties(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;)V

    .line 1601
    invoke-virtual {p2}, Ljava/io/BufferedWriter;->newLine()V

    .line 1607
    const/4 v5, 0x1

    goto :goto_0

    .line 1596
    :cond_2
    const-string v6, "class"

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, p2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1602
    .end local v3    # "i":I
    :catch_0
    move-exception v2

    .line 1603
    .local v2, "e":Ljava/io/IOException;
    const-string v6, "View"

    const-string v7, "Error while dumping hierarchy tree"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static resolveId(Landroid/content/Context;I)Ljava/lang/Object;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I

    .prologue
    .line 2023
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 2024
    .local v2, "resources":Landroid/content/res/Resources;
    if-ltz p1, :cond_0

    .line 2026
    :try_start_0
    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2035
    .local v1, "fieldValue":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 2029
    .end local v1    # "fieldValue":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 2030
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2031
    .restart local v1    # "fieldValue":Ljava/lang/String;
    goto :goto_0

    .line 2033
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    .end local v1    # "fieldValue":Ljava/lang/String;
    :cond_0
    const-string v1, "NO_ID"

    .restart local v1    # "fieldValue":Ljava/lang/String;
    goto :goto_0
.end method
