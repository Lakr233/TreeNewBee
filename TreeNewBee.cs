using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;

namespace TreeNewBee
{
    internal class EndlessShuffledEnumerator<T> : IEnumerator<T>
    {
        private Random r = new Random();
        private IEnumerable<T> source;
        private IOrderedEnumerable<T> shuffled;
        private IEnumerator shuffledEnumerator;

        private void DoShuffle()
        {
            this.shuffled = source.OrderBy(i => r.Next());
            this.shuffledEnumerator = this.shuffled.GetEnumerator();
            this.shuffledEnumerator.MoveNext();
        }

        public EndlessShuffledEnumerator(IEnumerable<T> source)
        {
            this.source = source;
            this.DoShuffle();
        }

        public T Current => (T)shuffledEnumerator.Current;

        object IEnumerator.Current => shuffledEnumerator.Current;

        public bool MoveNext()
        {
            if (this.shuffledEnumerator == null || !this.shuffledEnumerator.MoveNext())
                this.DoShuffle();
            return true;
        }

        public void Reset() => this.DoShuffle();

        public void Dispose() => throw new NotSupportedException();
    }

    static class IEnumeratorEx
    {
        public static TSource GetNext<TSource>(this IEnumerator<TSource> enumerator) => enumerator.MoveNext() ? enumerator.Current : default;
    }

    class Program
    {
        private static string StringInterpolateEnumeratorFunc(string template, Dictionary<string, Func<string>> funcs)
        {
            string result = String.Copy(template);
            foreach (KeyValuePair<string, Func<string>> item in funcs)
                result = new Regex($"{{{item.Key}}}", RegexOptions.Compiled).Replace(result, i => item.Value.Invoke());
            return result;
        }

        static void Main(string[] args)
        {
            string template = "{n4}是{v}{n4}，{v}行业{n3}。{n4}是{v}{n2}{n4}，通过{n3}和{n3}达到{n3}。{n4}是在{n4}采用{n2}打法达成{n4}。{n4}{n4}作为{n2}为产品赋能，{n4}作为{n2}的评判标准。亮点是{n2}，优势是{n2}。{v}整个{n4}，{v}{n2}{v}{n4}。{n3}是{n3}达到{n3}标准。";

            EndlessShuffledEnumerator<string> verb = new EndlessShuffledEnumerator<string>(new string[]
            {
                "皮实", "复盘", "赋能", "加持", "沉淀", "倒逼", "落地", "串联", "协同",
                "反哺", "兼容", "包装", "重组", "履约", "响应", "量化", "发力", "布局",
                "联动", "细分", "梳理", "输出", "加速", "共建", "共创", "支撑", "融合",
                "解耦", "聚合", "集成", "对标", "对齐", "聚焦", "抓手", "拆解", "拉通",
                "抽象", "摸索", "提炼", "打通", "吃透", "迁移", "分发", "分层", "封装",
                "辐射", "围绕", "复用", "渗透", "扩展", "开拓", "给到", "死磕", "破圈"
            });

            EndlessShuffledEnumerator<string> noun2 = new EndlessShuffledEnumerator<string>(new string[]
            {
                    "漏斗", "中台", "闭环", "打法", "纽带", "矩阵", "刺激", "规模", "场景",
                    "维度", "格局", "形态", "生态", "话术", "体系", "认知", "玩法", "体感",
                    "感知", "调性", "心智", "战役", "合力", "赛道", "基因", "因子", "模型",
                    "载体", "横向", "通道", "补位", "链路", "试点"
            });

            EndlessShuffledEnumerator<string> noun3 = new EndlessShuffledEnumerator<string>(new string[]
            {
                    "新生态", "感知度", "颗粒度", "方法论", "组合拳", "引爆点", "点线面", "精细化", "差异化",
                    "平台化", "结构化", "影响力", "耦合性", "易用性", "便捷性", "一致性", "端到端", "短平快",
                    "护城河"
            });

            EndlessShuffledEnumerator<string> noun4 = new EndlessShuffledEnumerator<string>(new string[]
            {
                    "底层逻辑", "顶层设计", "交付价值", "生命周期", "价值转化", "强化认知", "资源倾斜", "完善逻辑", "抽离透传",
                    "复用打法", "商业模式", "快速响应", "定性定量", "关键路径", "去中心化", "结果导向", "垂直领域", "归因分析",
                    "体验度量", "信息屏障"
            });

            string result = StringInterpolateEnumeratorFunc(template, new Dictionary<string, Func<string>>()
            {
                { "v", verb.GetNext },
                { "n2", noun2.GetNext },
                { "n3", noun3.GetNext },
                { "n4", noun4.GetNext },
            });

            Console.WriteLine(result);
            Console.ReadKey();
        }
    }
}

