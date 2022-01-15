Imports System.Collections.Generic

Public Module Program
	Public Sub Main()
		Randomize
		Dim i,j As Integer
		Dim str As String = "{n40}是{v0}{n41}，{v1}行业{n30}。{n42}是{v2}{n20}{n43}，通过{n31}和{n32}达到{n33}。{n44}是在{n45}采用{n21}打法达成{n46}。{n47}{n48}作为{n22}为产品赋能，{n49}作为{n23}的评判标准。亮点是{n24}，优势是{n25}。{v3}整个{n410}，{v4}{n26}{v5}{n411}。{n34}是{n35}达到{n36}标准。"
		Dim name As New List(Of String)(New String() {"v", "n2", "n3", "n4"})
		Dim words As New Dictionary(Of String, List(Of String))
		Dim word0 As New List(Of String)(New String() {"中台", "闭环", "打法", "纽带", "矩阵", "刺激", "规模", "场景", "维度", "格局", "形态", "生态", "体系", "认知", "玩法", "体感", "感知", "调性", "心智", "战役", "合力", "赛道", "基因", "模型", "载体", "横向", "通道", "补位", "试点", "布局", "联动", "价值", "细分", "梳理", "提炼", "支撵", "解法", "脑暴", "分层", "心力", "皮实", "复盘", "赋能", "加持", "沉淀", "倒逼", "落地", "串联", "协同", "反哺", "兼容", "包装", "重组", "履约", "响应", "量化", "发力", "布局", "联动", "细分", "梳理", "输出", "加速", "共建", "共创", "支撑", "融合", "解耦", "聚合", "集成", "对标", "对齐", "聚焦", "抓手", "拆解", "拉通", "抽象", "摸索", "提炼", "打通", "吃透", "迁移", "分发", "分层", "封装", "辐射", "围绕", "复用", "渗透", "扩展", "开拓", "给到", "死磕", "破圈"})
		Dim word1 As New List(Of String)(New String() {"UGC", "漏斗", "转化", "打法", "闭环", "生态", "发力", "导流", "格局", " 长尾", "垂直", "落地", "干货", "阈值", "优化", " 迭代", "敏捷", "评估", "高优", "体验", "布局", " 创新", "痛点", "价值", "流量", "数据", "玩法", " 体系", "跟进", "反哺", "回顾", "沉淀", "头部", "腰部", "沉浸", "生态", "头部", "腰部", "裂变", "导流", "测试", "迭代", "分发", "逻辑", "撬动", "盘活", "整合", "中台", "闭环", "打法", "纽带", "矩阵", "刺激", "规模", "场景", "维度", "格局", "形态", "生态", "话术", "体系", "认知", "玩法", "体感", "感知", "调性", "心智", "战役", "合力", "赛道", "基因", "因子", "模型", "载体", "横向", "通道", "补位", "链路", "试点"})
		Dim word2 As New List(Of String)(New String() {"新生态", "感知度", "颗粒度", "方法论", "组合拳", "引爆点", "点线面", "精细化", "差异化", "平台化", "结构化", "影响力", "耦合性", "易用性", "便捷性", "一致性", "端到端", "短平快", "护城河"})
		Dim word3 As New List(Of String)(New String() {"底层逻辑", "顶层设计", "交付价值", "生命周期", "价值转化", "强化认知", "资源倾斜", "完善逻辑", "抽离透传", "复用打法", "商业模式", "快速响应", "定性定量", "关键路径", "去中心化", "结果导向", "垂直领域", "归因分析", "体验度量", "信息屏障", "商业模式", "降维打法", "渠道下沉", "操盘漏斗"})
		words.Add(name.Item(0), Random(word0, 6))
		words.Add(name.Item(1), Random(word1, 7))
		words.Add(name.Item(2),Random(word2, 7))
		words.Add(name.Item(3),Random(word3, 12))
		For i=0 To name.Count-1
			For j=0 To words.Item(name(i)).Count-1
				str = Replace(str,"{"+name(i)+CStr(j)+"}", words.Item(name.Item(i)).Item(j))
			Next j
		Next i
		Console.WriteLine(str)
	End Sub
	
	Function Random(stringList As List(Of String), number As Integer) As List(Of String)
		Dim i,randomstr As Integer
		Dim randomList As New List(Of String)
		For i=0 To number-1
			randomstr = New System.Random().Next(i*CInt(stringList.Count/number), (i+1)*CInt(stringList.Count/number))
			If randomstr > stringList.Count-1 Then randomstr = stringList.Count-1
			randomList.Add(stringList(randomstr))
		Next i
		Return randomList
	End Function
End Module