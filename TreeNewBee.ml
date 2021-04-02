(* run with `ocaml str.cma TreeNewBee.ml` *)

open Str;;

(* Initialize the generator with a random seed *)
Random.self_init ();;

let rec shuffle = function
  | [] -> []
  | [single] -> [single]
  | list -> 
    let (before, after) = List.partition (fun elt -> Random.bool ()) list in 
    List.rev_append (shuffle before) (shuffle after);;

(* 二字动词 *)
let v = "皮实、复盘、赋能、加持、沉淀、倒逼、落地、串联、协同、反哺、兼容、包装、重组、履约、响应、量化、发力、布局、联动、细分、梳理、输出、加速、共建、共创、支撑、融合、解耦、聚合、集成、对标、对齐、聚焦、抓手、拆解、拉通、抽象、摸索、提炼、打通、吃透、迁移、分发、分层、封装、辐射、围绕、复用、渗透、扩展、开拓、给到、死磕、破圈";;

(* 二字名词 *)
let n2 = "漏斗、中台、闭环、打法、纽带、矩阵、刺激、规模、场景、维度、格局、形态、生态、话术、体系、认知、玩法、体感、感知、调性、心智、战役、合力、赛道、基因、因子、模型、载体、横向、通道、补位、链路、试点";;

(* 三字名词 *)
let n3 = "新生态、感知度、颗粒度、方法论、组合拳、引爆点、点线面、精细化、差异化、平台化、结构化、影响力、耦合性、易用性、便捷性、一致性、端到端、短平快、护城河";;

(* 四字名词 *)
let n4 = "底层逻辑、顶层设计、交付价值、生命周期、价值转化、强化认知、资源倾斜、完善逻辑、抽离透传、复用打法、商业模式、快速响应、定性定量、关键路径、去中心化、结果导向、垂直领域、归因分析、体验度量、信息屏障";;

let main = 
  let v_list = shuffle (Str.split (Str.regexp "、") v) in
  let n2_list = shuffle (Str.split (Str.regexp "、") n2) in
  let n3_list = shuffle (Str.split (Str.regexp "、") n3) in
  let n4_list = shuffle (Str.split (Str.regexp "、") n4) in
  Printf.printf "%s是%s%s，%s行业%s。%s是%s%s%s，通过%s和%s达到%s。%s是在%s采用%s打法达成%s。%s%s作为%s为产品赋能，%s作为%s的评判标准。亮点是%s，优势是%s。%s整个%s，%s%s%s%s。%s是%s达到%s标准。\n" 
  (List.nth n4_list 0) (List.nth v_list 0) (List.nth n4_list 1) (List.nth v_list 1) (List.nth n3_list 0)
  (List.nth n4_list 2) (List.nth v_list 2) (List.nth n2_list 0) (List.nth n4_list 3) (List.nth n3_list 1) (List.nth n3_list 2) (List.nth n3_list 3)
  (List.nth n4_list 4) (List.nth n4_list 5) (List.nth n2_list 1) (List.nth n4_list 6)
  (List.nth n4_list 7) (List.nth n4_list 8) (List.nth n2_list 2) (List.nth n4_list 9) (List.nth n2_list 3)
  (List.nth n2_list 4) (List.nth n2_list 5)
  (List.nth v_list 3) (List.nth n4_list 10) (List.nth v_list 4) (List.nth n2_list 6) (List.nth v_list 5) (List.nth n4_list 11)
  (List.nth n3_list 4) (List.nth n3_list 5) (List.nth n3_list 6) in

main;;