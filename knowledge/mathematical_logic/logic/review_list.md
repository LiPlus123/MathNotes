# 逻辑学 复核清单

## 本课程内待复核问题

- `logic.logic_research_object`、`logic.propositional_inference`、`logic.significance_of_predicate_logic`、`logic.identity_law` 等所在 section 的 `section_scope.yml` 当前主要登记为 `toc.md` 或目录级来源，但实际抽取时已使用更细的正文材料。判断原因：四个 section 的 `section_summary.md` 都明确提到来源登记与实际使用正文之间存在差异。建议动作：把实际使用的正文文件补登记进对应 `section_scope.yml`，避免后续追溯来源时出现断层。
- `logic.logical_law`、`logic.common_tautological_forms`、`logic.law_of_noncontradiction`、`logic.law_of_excluded_middle` 存在层次边界需要人工确认。判断原因：前者是课程入口处对“逻辑规律”的总括性界定，中间一项是命题逻辑中的系统内恒真公式集合，后两项是逻辑基本规律中的元层规范，概念接近但不应混同。建议动作：保留现有知识点划分，并在后续写作中明确“课程总概念 / 系统内公式 / 元理论规律”的三级区分。
- `logic.logical_contradiction`、`logic.law_of_noncontradiction`、`logic.paradox` 的边界需要在课程级叙述中保持稳定。判断原因：三者都涉及“不矛盾”或“矛盾”主题，但分别对应形式恒假、基本规律和特殊理论难题。建议动作：保留并建立关联，不合并，后续 LaTeX 写作时增加显式对照说明。

## 与其他课程重复的知识点

- 暂未确认与其他课程存在可直接合并的重复知识点。判断原因：当前已读取的 [knowledge/mathematical_logic/proof_theory/summary.md](f:/Projects/AICodingTest/MathNotes/knowledge/mathematical_logic/proof_theory/summary.md)、[knowledge/discrete_mathematics/combinatorics/summary.md](f:/Projects/AICodingTest/MathNotes/knowledge/discrete_mathematics/combinatorics/summary.md)、[knowledge/discrete_mathematics/graph_theory/summary.md](f:/Projects/AICodingTest/MathNotes/knowledge/discrete_mathematics/graph_theory/summary.md) 内容极少，缺乏足够证据确认重复。建议动作：待其他课程 summary 补全后，优先复核 `logic.formal_system`、`logic.formal_validity_of_inference`、`logic.logical_law` 与证明论课程之间的边界。

## 与其他课程冲突的知识点

- 暂未发现已确认的跨课程冲突。判断原因：当前其他课程 summary 信息不足，尚未出现关于术语、假设或边界的明确不一致陈述。建议动作：后续在 proof_theory 课程 summary 完成后，重点检查“系统一致性”“证明”“形式有效性”等术语是否与本课程保持一致。

## 建议处理方案

- 补登记 `introduction`、`propositional_logic`、`predicate_logic`、`logical_laws` 四个 section 的实际正文来源文件，统一来源追溯链。
- 在课程级写作和后续复核中，明确区分 `logic.logical_law`、`logic.common_tautological_forms` 与四条逻辑基本规律的层次关系。
- 保留 `logic.logical_contradiction`、`logic.law_of_noncontradiction`、`logic.paradox` 三者分立的结构，并在后续正式文稿中增加边界提示。
- 待 [knowledge/mathematical_logic/proof_theory/summary.md](f:/Projects/AICodingTest/MathNotes/knowledge/mathematical_logic/proof_theory/summary.md) 补全后，优先进行一次课程间术语复核，重点核对“形式系统”“有效性”“证明”“一致性”相关知识点。