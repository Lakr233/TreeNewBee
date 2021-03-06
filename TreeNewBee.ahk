#SingleInstance force

v := StrSplit("皮实、复盘、赋能、加持、沉淀、倒逼、落地、串联、协同、反哺、兼容、包装、重组、履约、响应、量化、发力、布局、联动、细分、梳理、输出、加速、共建、共创、支撑、融合、解耦、聚合、集成、对标、对齐、聚焦、抓手、拆解、拉通、抽象、摸索、提炼、打通、吃透、迁移、分发、分层、封装、辐射、围绕、复用、渗透、扩展、开拓、给到、死磕、破圈","、")
n2 := StrSplit("漏斗、中台、闭环、打法、纽带、矩阵、刺激、规模、场景、维度、格局、形态、生态、话术、体系、认知、玩法、体感、感知、调性、心智、战役、合力、赛道、基因、因子、模型、载体、横向、通道、补位、链路、试点", "、")
n3 := StrSplit("新生态、感知度、颗粒度、方法论、组合拳、引爆点、点线面、精细化、差异化、平台化、结构化、影响力、耦合性、易用性、便捷性、一致性、端到端、短平快、护城河", "、")
n4 := StrSplit("底层逻辑、顶层设计、交付价值、生命周期、价值转化、强化认知、资源倾斜、完善逻辑、抽离透传、复用打法、商业模式、快速响应、定性定量、关键路径、去中心化、结果导向、垂直领域、归因分析、体验度量、信息屏障", "、")

shuffleArray(v)
shuffleArray(n2)
shuffleArray(n3)
shuffleArray(n4)

result := Format("{}是{}{}，{}行业{}。{}是{}{}{}，通过{}和{}达到{}。{}是在{}采用{}打法达成{}。{}{}作为{}为产品赋能，{}作为{}的评判标准。亮点是{}，优势是{}。{}整个{}，{}{}{}{}。{}是{}达到{}标准。", n4[0+1], v[0+1], n4[1+1], v[1+1], n3[0+1], n4[2+1], v[2+1], n2[0+1], n4[3+1], n3[1+1], n3[2+1], n3[3+1], n4[4+1], n4[5+1], n2[1+1], n4[6+1], n4[7+1], n4[8+1], n2[2+1], n4[9+1], n2[3+1], n2[4+1], n2[5+1], v[3+1], n4[10+1], v[4+1], n2[6+1], v[5+1], n4[11+1], n3[4+1], n3[5+1], n3[6+1])

MsgBox % result

shuffleArray(array){
    count:=array.Count()
    if(count<=1){
        return
    }
    i=1
    for k in array{
        Random, exchangeIndex, i, count
        temp := array[i]
        array[i] := array[exchangeIndex]
        array[exchangeIndex] := temp
        i++
    }
}
