//
//  main.mm (Objective-C)
//  TreeNewBee
//
//  Created by Lakr Aream on 4/1/21.
//

#import <Foundation/Foundation.h>

void NSMutableArrayShuffle(NSMutableArray *input) {
    NSUInteger count = [input count];
    if (count <= 1) return;
    for (NSUInteger i = 0; i < count - 1; ++i) {
        NSInteger remainingCount = count - i;
        NSInteger exchangeIndex = i + arc4random_uniform((u_int32_t )remainingCount);
        [input exchangeObjectAtIndex:i withObjectAtIndex:exchangeIndex];
    }
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSMutableArray *v = [[@"皮实、复盘、赋能、加持、沉淀、倒逼、落地、串联、协同、反哺、兼容、包装、重组、履约、响应、量化、发力、布局、联动、细分、梳理、输出、加速、共建、共创、支撑、融合、解耦、聚合、集成、对标、对齐、聚焦、抓手、拆解、拉通、抽象、摸索、提炼、打通、吃透、迁移、分发、分层、封装、辐射、围绕、复用、渗透、扩展、开拓、给到、死磕、破圈" componentsSeparatedByString:@"、"] mutableCopy];
        NSMutableArray *n2 = [[@"漏斗、中台、闭环、打法、纽带、矩阵、刺激、规模、场景、维度、格局、形态、生态、话术、体系、认知、玩法、体感、感知、调性、心智、战役、合力、赛道、基因、因子、模型、载体、横向、通道、补位、链路、试点" componentsSeparatedByString:@"、"] mutableCopy];
        NSMutableArray *n3 = [[@"新生态、感知度、颗粒度、方法论、组合拳、引爆点、点线面、精细化、差异化、平台化、结构化、影响力、耦合性、易用性、便捷性、一致性、端到端、短平快、护城河" componentsSeparatedByString:@"、"] mutableCopy];
        NSMutableArray *n4 = [[@"底层逻辑、顶层设计、交付价值、生命周期、价值转化、强化认知、资源倾斜、完善逻辑、抽离透传、复用打法、商业模式、快速响应、定性定量、关键路径、去中心化、结果导向、垂直领域、归因分析、体验度量、信息屏障" componentsSeparatedByString:@"、"] mutableCopy];
        
        NSMutableArrayShuffle(v);
        NSMutableArrayShuffle(n2);
        NSMutableArrayShuffle(n3);
        NSMutableArrayShuffle(n4);
        
        NSString *result = [[NSString alloc] initWithFormat: @"%@是%@%@，%@行业%@。%@是%@%@%@，通过%@和%@达到%@。%@是在%@采用%@打法达成%@。%@%@作为%@为产品赋能，%@作为%@的评判标准。亮点是%@，优势是%@。%@整个%@，%@%@%@%@。%@是%@达到%@标准。",
                            [n4 objectAtIndex:0],
                            [v objectAtIndex: 0],
                            [n4 objectAtIndex:1],
                            [v objectAtIndex: 1],
                            [n3 objectAtIndex:0],
                            [n4 objectAtIndex:2],
                            [v objectAtIndex: 2],
                            [n2 objectAtIndex:0],
                            [n4 objectAtIndex:3],
                            [n3 objectAtIndex:1],
                            [n3 objectAtIndex:2],
                            [n3 objectAtIndex:3],
                            [n4 objectAtIndex:4],
                            [n4 objectAtIndex:5],
                            [n2 objectAtIndex:1],
                            [n4 objectAtIndex:6],
                            [n4 objectAtIndex:7],
                            [n4 objectAtIndex:8],
                            [n2 objectAtIndex:2],
                            [n4 objectAtIndex:9],
                            [n2 objectAtIndex:3],
                            [n2 objectAtIndex:4],
                            [n2 objectAtIndex:5],
                            [v objectAtIndex: 3],
                            [n4 objectAtIndex:10],
                            [v objectAtIndex: 4],
                            [n2 objectAtIndex:6],
                            [v objectAtIndex: 5],
                            [n4 objectAtIndex:11],
                            [n3 objectAtIndex:4],
                            [n3 objectAtIndex:5],
                            [n3 objectAtIndex:6]
                         ];
        printf("%s\n", [result UTF8String]);
        
    }
    
    return 0;
}
