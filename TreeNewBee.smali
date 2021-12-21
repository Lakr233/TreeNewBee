.class public LMain;
.super Ljava/lang/Object;
.source "Main.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .registers 11

    .prologue
    const/4 v9, 0x7

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 8
    const/4 v0, 0x4

    new-array v5, v0, [Ljava/lang/String;

    const-string v0, "v"

    aput-object v0, v5, v2

    const-string v0, "n2"

    aput-object v0, v5, v4

    const-string v0, "n3"

    aput-object v0, v5, v7

    const-string v0, "n4"

    aput-object v0, v5, v8

    .line 9
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 10
    aget-object v0, v5, v2

    const-string v1, "中台,闭环,打法,纽带,矩阵,刺激,规模,场景,维度,格局,形态,生态,体系,认知,玩法,体感,感知,调性,心智,战役,合力,赛道,基因,模型,载体,横向,通道,补位,试点,布局,联动,价值,细分,梳理,提炼,支撵,解法,脑暴,分层,心力,皮实,复盘,赋能,加持,沉淀,倒逼,落地,串联,协同,反哺,兼容,包装,重组,履约,响应,量化,发力,布局,联动,细分,梳理,输出,加速,共建,共创,支撑,融合,解耦,聚合,集成,对标,对齐,聚焦,抓手,拆解,拉通,抽象,摸索,提炼,打通,吃透,迁移,分发,分层,封装,辐射,围绕,复用,渗透,扩展,开拓,给到,死磕,破圈"

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x6

    invoke-static {v1, v3}, LMain;->r([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    aget-object v0, v5, v4

    const-string v1, "UGC,漏斗,转化,打法,闭环,生态,发力,导流,格局, 长尾,垂直,落地,干货,阈值,优化, 迭代,敏捷,评估,高优,体验,布局, 创新,痛点,价值,流量,数据,玩法, 体系,跟进,反哺,回顾,沉淀,头部,腰部,沉浸,生态,头部,腰部,裂变,导流,测试,迭代,分发,逻辑,撬动,盘活,整合,中台,闭环,打法,纽带,矩阵,刺激,规模,场景,维度,格局,形态,生态,话术,体系,认知,玩法,体感,感知,调性,心智,战役,合力,赛道,基因,因子,模型,载体,横向,通道,补位,链路,试点"

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v9}, LMain;->r([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    aget-object v0, v5, v7

    const-string v1, "新生态,感知度,颗粒度,方法论,组合拳,引爆点,点线面,精细化,差异化,平台化,结构化,影响力,耦合性,易用性,便捷性,一致性,端到端,短平快,护城河"

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v9}, LMain;->r([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    aget-object v0, v5, v8

    const-string v1, "底层逻辑,顶层设计,交付价值,生命周期,价值转化,强化认知,资源倾斜,完善逻辑,抽离透传,复用打法,商业模式,快速响应,定性定量,关键路径,去中心化,结果导向,垂直领域,归因分析,体验度量,信息屏障,商业模式,降维打法,渠道下沉,操盘漏斗"

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xc

    invoke-static {v1, v3}, LMain;->r([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    const-string v0, "{n40}是{v0}{n41}，{v1}行业{n30}。{n42}是{v2}{n20}{n43}，通过{n31}和{n32}达到{n33}。{n44}是在{n45}采用{n21}打法达成{n46}。{n47}{n48}作为{n22}为产品赋能，{n49}作为{n23}的评判标准。亮点是{n24}，优势是{n25}。{v3}整个{n410}，{v4}{n26}{v5}{n411}。{n34}是{n35}达到{n36}标准。"

    .line 15
    array-length v7, v5

    move v4, v2

    :goto_68
    if-ge v4, v7, :cond_a9

    aget-object v8, v5, v4

    move v1, v2

    move-object v3, v0

    .line 16
    :goto_6e
    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    array-length v0, v0

    if-ge v1, v0, :cond_a4

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "{"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, "}"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    aget-object v0, v0, v1

    invoke-virtual {v3, v9, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 16
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6e

    .line 15
    :cond_a4
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    move-object v0, v3

    goto :goto_68

    .line 18
    :cond_a9
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method private static r([Ljava/lang/String;I)[Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 22
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    .line 23
    :goto_7
    array-length v2, p0

    if-ge v0, v2, :cond_25

    .line 24
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    array-length v4, p0

    div-int/2addr v4, p1

    invoke-virtual {v2, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/2addr v2, v0

    .line 25
    array-length v4, p0

    if-lt v2, v4, :cond_1c

    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    .line 26
    :cond_1c
    aget-object v2, p0, v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    array-length v2, p0

    div-int/2addr v2, p1

    add-int/2addr v0, v2

    goto :goto_7

    .line 28
    :cond_25
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v2, v0, [Ljava/lang/String;

    .line 29
    :goto_2b
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_3c

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2b

    .line 30
    :cond_3c
    return-object v2
.end method
