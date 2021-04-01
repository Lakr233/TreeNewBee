func TestStencil(t *testing.T) {
	str := `{n40}是{v0}{n41}，{v1}行业{n30}。{n42}是{v2}{n20}{n43}，通过{n31}和{n32}达到{n33}。{n44}是在{n45}采用{n21}打法达成{n46}。{n47}{n48}作为{n22}为产品赋能，{n49}作为{n23}的评判标准。亮点是{n24}，优势是{n25}。{v3}整个{n410}，{v4}{n26}{v5}{n411}。{n34}是{n35}达到{n36}标准。`

	current := make(map[string][]string)
	// 二字动词
	current["v"] = randMapStr(`皮实、复盘、赋能、加持、沉淀、倒逼、落地、串联、协同、反哺、兼容、包装、重组、履约、响应、量化、发力、布局、联动、细分、梳理、输出、加速、共建、共创、支撑、融合、解耦、聚合、集成、对标、对齐、聚焦、抓手、拆解、拉通、抽象、摸索、提炼、打通、吃透、迁移、分发、分层、封装、辐射、围绕、复用、渗透、扩展、开拓、给到、死磕、破圈`, 6)
	// 二字名词
	current["n2"] = randMapStr(`漏斗、中台、闭环、打法、纽带、矩阵、刺激、规模、场景、维度、格局、形态、生态、话术、体系、认知、玩法、体感、感知、调性、心智、战役、合力、赛道、基因、因子、模型、载体、横向、通道、补位、链路、试点`, 7)
	// 三字名词
	current["n3"] = randMapStr(`新生态、感知度、颗粒度、方法论、组合拳、引爆点、点线面、精细化、差异化、平台化、结构化、影响力、耦合性、易用性、便捷性、一致性、端到端、短平快、护城河`, 7)
	// 四字名词
	current["n4"] = randMapStr(`底层逻辑、顶层设计、交付价值、生命周期、价值转化、强化认知、资源倾斜、完善逻辑、抽离透传、复用打法、商业模式、快速响应、定性定量、关键路径、去中心化、结果导向、垂直领域、归因分析、体验度量、信息屏障`, 12)

	for currentType, currentList := range current {
		for i, vs := range currentList {
			str = strings.ReplaceAll(str, `{`+currentType+strconv.Itoa(i)+`}`, vs)
		}
	}

	log.Println("str:", str)
}

func randMapStr(str string, n int) []string {
	strArr := strings.Split(str, "、")
	outArr := make([]string, n)
	rand.Seed(time.Now().UnixNano())
	for i := 0; i < n; i++ {
		outArr[i] = strArr[rand.Intn(len(strArr))]
	}
	return outArr
}
