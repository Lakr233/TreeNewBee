//
//  main.swift
//  TreeNewBee
//
//  Created by Lakr Aream on 4/1/21.
//

import Foundation

// 二字动词
let v = """
皮实、复盘、赋能、加持、沉淀、倒逼、落地、串联、协同、反哺、兼容、包装、重组、履约、响应、量化、发力、布局、联动、细分、梳理、输出、加速、共建、共创、支撑、融合、解耦、聚合、集成、对标、对齐、聚焦、抓手、拆解、拉通、抽象、摸索、提炼、打通、吃透、迁移、分发、分层、封装、辐射、围绕、复用、渗透、扩展、开拓、给到、死磕、破圈
""".components(separatedBy: "、")

// 二字名词
let n2 = """
漏斗、中台、闭环、打法、纽带、矩阵、刺激、规模、场景、维度、格局、形态、生态、话术、体系、认知、玩法、体感、感知、调性、心智、战役、合力、赛道、基因、因子、模型、载体、横向、通道、补位、链路、试点
""".components(separatedBy: "、")

// 三字名词
let n3 = """
新生态、感知度、颗粒度、方法论、组合拳、引爆点、点线面、精细化、差异化、平台化、结构化、影响力、耦合性、易用性、便捷性、一致性、端到端、短平快、护城河
""".components(separatedBy: "、")

/// 四字名词
let n4 = """
底层逻辑、顶层设计、交付价值、生命周期、价值转化、强化认知、资源倾斜、完善逻辑、抽离透传、复用打法、商业模式、快速响应、定性定量、关键路径、去中心化、结果导向、垂直领域、归因分析、体验度量、信息屏障
""".components(separatedBy: "、")


let formatter = """
\(n4.randomElement()!)是\(v.randomElement()!)\(n4.randomElement()!)，\(v.randomElement()!)行业\(n3.randomElement()!)。\(n4.randomElement()!)是\(v.randomElement()!)\(n2.randomElement()!)\(n4.randomElement()!)，通过\(n3.randomElement()!)和\(n3.randomElement()!)达到\(n3.randomElement()!)。\(n4.randomElement()!)是在\(n4.randomElement()!)采用\(n2.randomElement()!)打法达成\(n4.randomElement()!)。\(n4.randomElement()!)\(n4.randomElement()!)作为\(n2.randomElement()!)为产品赋能，\(n4.randomElement()!)作为\(n2.randomElement()!)的评判标准。亮点是\(n2.randomElement()!)，优势是\(n2.randomElement()!)。\(v.randomElement()!)整个\(n4.randomElement()!)，\(v.randomElement()!)\(n2.randomElement()!)\(v.randomElement()!)\(n4.randomElement()!)。\(n3.randomElement()!)是\(n3.randomElement()!)达到\(n3.randomElement()!)标准。
"""
print(formatter)
