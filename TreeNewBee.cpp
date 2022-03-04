//
//  main.cpp
//  TreeNewBee
//
//  Created by Lakr Aream on 4/1/21.
//

#include <iostream>
#include <vector>
#include <string>
#include <algorithm>
#include <random>

using namespace std;

class Solution {
private:
    vector<string> v = {"皮实", "复盘", "赋能", "加持", "沉淀", "倒逼", "落地", "串联", "协同", "反哺", "兼容", "包装", "重组", "履约", "响应", "量化", "发力", "布局", "联动", "细分", "梳理", "输出", "加速", "共建", "共创", "支撑", "融合", "解耦", "聚合", "集成", "对标", "对齐", "聚焦", "抓手", "拆解", "拉通", "抽象", "摸索", "提炼", "打通", "吃透", "迁移", "分发", "分层", "封装", "辐射", "围绕", "复用", "渗透", "扩展", "开拓", "给到", "死磕", "破圈"};
    vector<string> n2 = {"漏斗", "中台", "闭环", "打法", "纽带", "矩阵", "刺激", "规模", "场景", "维度", "格局", "形态", "生态", "话术", "体系", "认知", "玩法", "体感", "感知", "调性", "心智", "战役", "合力", "赛道", "基因", "因子", "模型", "载体", "横向", "通道", "补位", "链路", "试点"};
    vector<string> n3 = {"新生态", "感知度", "颗粒度", "方法论", "组合拳", "引爆点", "点线面", "精细化", "差异化", "平台化", "结构化", "影响力", "耦合性", "易用性", "便捷性", "一致性", "端到端", "短平快", "护城河"};
    vector<string> n4 = {"底层逻辑", "顶层设计", "交付价值", "生命周期", "价值转化", "强化认知", "资源倾斜", "完善逻辑", "抽离透传", "复用打法", "商业模式", "快速响应", "定性定量", "关键路径", "去中心化", "结果导向", "垂直领域", "归因分析", "体验度量", "信息屏障"};
public:
    void run() {
        srand(time(0));
        for (int k = 0; k < v.size(); k++) {
            int r = k + rand() % (v.size() - k);
            swap(v[k], v[r]);
        }
        for (int k = 0; k < n2.size(); k++) {
            int r = k + rand() % (n2.size() - k);
            swap(n2[k], n2[r]);
        }
        for (int k = 0; k < n3.size(); k++) {
            int r = k + rand() % (n3.size() - k);
            swap(n3[k], n3[r]);
        }
        for (int k = 0; k < n4.size(); k++) {
            int r = k + rand() % (n4.size() - k);
            swap(n4[k], n4[r]);
        }
        printf("%s是%s%s，%s行业%s。%s是%s%s%s，通过%s和%s达到%s。%s是在%s采用%s打法达成%s。%s%s作为%s为产品赋能，%s作为%s的评判标准。亮点是%s，优势是%s。%s整个%s，%s%s%s%s。%s是%s达到%s标准。\n", n4[0].c_str(), v[0].c_str(), n4[1].c_str(), v[1].c_str(), n3[0].c_str(), n4[2].c_str(), v[2].c_str(), n2[0].c_str(), n4[3].c_str(), n3[1].c_str(), n3[2].c_str(), n3[3].c_str(), n4[4].c_str(), n4[5].c_str(), n2[1].c_str(), n4[6].c_str(), n4[7].c_str(), n4[8].c_str(), n2[2].c_str(), n4[9].c_str(), n2[3].c_str(), n2[4].c_str(), n2[5].c_str(), v[3].c_str(), n4[10].c_str(), v[4].c_str(), n2[6].c_str(), v[5].c_str(), n4[11].c_str(), n3[4].c_str(), n3[5].c_str(), n3[6].c_str());
    }
};

int main(int argc, const char * argv[]) {
    Solution().run();
    return 0;
}
