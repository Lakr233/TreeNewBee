
use rand::prelude::*;
use std::collections::HashMap;


fn make_tree_new_bee_ppt() {
	let mut out_str = "{n40}是{v0}{n41}，{v1}行业{n30}。{n42}是{v2}{n20}{n43}，通过{n31}和{n32}达到{n33}。{n44}是在{n45}采用{n21}打法达成{n46}。{n47}{n48}作为{n22}为产品赋能，{n49}作为{n23}的评判标准。亮点是{n24}，优势是{n25}。{v3}整个{n410}，{v4}{n26}{v5}{n411}。{n34}是{n35}达到{n36}标准。".to_owned();

    let mut rng = thread_rng();
    let mut word_count:HashMap<&str, usize> = HashMap::new();

    word_count.insert("v", 6);
    word_count.insert("n2", 7);
    word_count.insert("n3", 7);
    word_count.insert("n4", 12);
    
    let mut v  = "皮实、复盘、赋能、加持、沉淀、倒逼、落地、串联、协同、反哺、兼容、包装、重组、履约、\
    响应、量化、发力、布局、联动、细分、梳理、输出、加速、共建、共创、支撑、融合、解耦、聚合、\
    集成、对标、对齐、聚焦、抓手、拆解、拉通、抽象、摸索、提炼、打通、吃透、迁移、分发、分层、\
    封装、辐射、围绕、复用、渗透、扩展、开拓、给到、死磕、破圈".split("、").collect::<Vec<&str>>();

    let mut n2 = "漏斗、中台、闭环、打法、纽带、矩阵、刺激、规模、场景、维度、格局、形态、生态、话术、\
     体系、认知、玩法、体感、感知、调性、心智、战役、合力、赛道、基因、因子、模型、载体、横向、\
     通道、补位、链路、试点".split('、').collect::<Vec<&str>>();

    let mut n3 = "新生态、感知度、颗粒度、方法论、组合拳、引爆点、点线面、精细化、差异化、平台化、结构化、\
     影响力、耦合性、易用性、便捷性、一致性、端到端、短平快、护城河".split('、').collect::<Vec<&str>>();

    let mut n4 = "底层逻辑、顶层设计、交付价值、生命周期、价值转化、强化认知、资源倾斜、完善逻辑、抽离透传、\
     复用打法、商业模式、快速响应、定性定量、关键路径、去中心化、结果导向、垂直领域、归因分析、\
     体验度量、信息屏障".split('、').collect::<Vec<&str>>();

    v.shuffle(&mut rng);
    n2.shuffle(&mut rng);
    n3.shuffle(&mut rng);
    n4.shuffle(&mut rng);

    let mut word_map:HashMap<&str, Vec<&str>> = HashMap::new();
    word_map.insert("v", v);
    word_map.insert("n2", n2);
    word_map.insert("n3", n3);
    word_map.insert("n4", n4);

    for (k, v) in word_count {
        for i in 0..v {
            let word = word_map.get(k).unwrap().get(i).unwrap();
            let t = format!("{{{}{}}}",k,i);
            //println!("k: {}, i: {}, word: {}", k, i, word);
            out_str = out_str.replace::<_>(&t, word);
        }
    }

    println!("{}", &out_str);

}


fn main() {
    make_tree_new_bee_ppt();
}
