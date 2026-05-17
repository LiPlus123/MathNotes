# 逻辑学

## 课程概览

本课程围绕“什么是合乎逻辑的思维”展开，逐步建立从课程入口概念到具体分析工具的完整框架。知识主线可以概括为四层：先说明逻辑学研究思维形式及其规律，并通过语言来把握形式；再建立概念分析的基本方法；随后进入命题逻辑和谓词逻辑两套形式工具；最后以同一律、矛盾律、排中律和充足理由律对正确思维提出最一般的规范。

就知识性质而言，这门课既有工具层内容，也有规范层内容。工具层主要体现在命题逻辑与谓词逻辑对自然语言和推理结构的形式化；规范层主要体现在概念操作、逻辑基本规律以及有效推理判定标准。两者共同构成后续证明论、模态逻辑、归纳逻辑等课程的前置基础。

## 主题结构

### 绪论：逻辑学的对象、媒介与学科定位

课程从 `logic.logic_research_object` 出发，说明逻辑学研究的是撇开具体内容后的思维形式及其规律。`logic.thought_form`、`logic.logical_constant`、`logic.logical_variable`、`logic.logical_law`、`logic.logical_contradiction` 建立起判断“形式正确”与“应当排除”的最小框架；`logic.relation_between_thought_language_and_logic`、`logic.object_language_and_metalanguage`、`logic.natural_language`、`logic.symbolic_language`、`logic.formal_system` 则说明逻辑学为何必须通过语言，尤其是形式语言，来分析思维。

### 概念：对象把握、外延结构与概念操作

`logic.concept`、`logic.essential_property`、`logic.intension_of_concept`、`logic.extension_of_concept` 构成概念论的核心骨架。围绕这一骨架，课程进一步讨论概念分类、外延关系、定义、划分、限制和概括等方法，使“如何清楚地说一个概念是什么、与什么不同、如何由大到小或由小到大移动”成为后续命题与推理分析的基础。

### 命题逻辑：真值结构与形式有效性

命题逻辑部分首先通过 `logic.judgment_statement_and_proposition`、`logic.atomic_and_compound_propositions`、`logic.truth_functional_compound_proposition` 界定研究对象，再以联言、选言、假言、负命题和 `logic.truth_form` 建立真值抽象。接着，`logic.formal_validity_of_inference`、`logic.propositional_inference`、`logic.conjunctive_inference`、`logic.disjunctive_inference`、`logic.hypothetical_inference`、`logic.dilemma_inference` 形成基本推理框架，`logic.truth_table_method`、`logic.reductio_assignment_method`、`logic.normal_form`、`logic.common_tautological_forms` 则提供一般命题推理的判定方法。

### 谓词逻辑：原子命题结构与量化

谓词逻辑将命题逻辑无法继续分析的原子命题拆解为 `logic.predicate_and_individual_term`、`logic.quantifier`、`logic.domain_of_discourse`、`logic.bound_and_free_individual_variables` 等要素，并通过 `logic.propositional_form_in_predicate_logic` 与 `logic.interpretation_of_propositional_form` 说明公式如何获得真假。`logic.categorical_proposition_expression`、`logic.overlapping_quantification`、`logic.composition_of_quantified_expressions`、`logic.quantified_inference_expression` 展示自然语言符号化路径，`logic.quantified_inference`、`logic.decidability_of_quantified_inference`、`logic.finite_domain_reduction` 则说明量化推理的能力边界与可判定性问题。

### 逻辑基本规律：正确思维的元规范

课程最后以 `logic.identity_law`、`logic.law_of_noncontradiction`、`logic.law_of_excluded_middle`、`logic.law_of_sufficient_reason` 四条基本规律收束。它们分别从概念与论题稳定、思想协调、矛盾命题的取值边界以及论证理由充分性四个角度，为前面已经建立的形式分析工具提供元层面的规范说明。`logic.paradox` 的引入则提醒我们，形式一致性问题在某些情形下会逼近更深层的逻辑与哲学难题。

## 核心知识点

- `logic.logic_research_object`：规定课程研究对象，是整门课的起点。
- `logic.thought_form`、`logic.logical_law`、`logic.logical_contradiction`：给出“形式正确”和“形式错误”的基本边界。
- `logic.concept`、`logic.intension_of_concept`、`logic.extension_of_concept`：奠定概念分析与分类的语言基础。
- `logic.definition_structure_and_method`、`logic.definition_rule`、`logic.division_of_concept`、`logic.restriction_and_generalization_of_concepts`：总结概念操作的核心方法。
- `logic.truth_functional_compound_proposition`、`logic.truth_form`、`logic.classification_of_truth_forms`：把命题内容转化为统一的真值结构。
- `logic.formal_validity_of_inference`、`logic.propositional_inference`、`logic.truth_table_method`、`logic.normal_form`：构成命题推理的核心工具链。
- `logic.predicate_and_individual_term`、`logic.quantifier`、`logic.domain_of_discourse`、`logic.quantified_inference`：构成谓词逻辑的核心语言与问题域。
- `logic.relation_as_property_of_property`、`logic.reflexivity_of_binary_relation`、`logic.symmetry_of_binary_relation`、`logic.transitivity_of_binary_relation`：把关系分析扩展到对象间结构性质。
- `logic.identity_law`、`logic.law_of_noncontradiction`、`logic.law_of_excluded_middle`、`logic.law_of_sufficient_reason`：从元层面概括正确思维的最一般要求。

## 与其他课程的关系

与 [knowledge/mathematical_logic/proof_theory/summary.md](f:/Projects/AICodingTest/MathNotes/knowledge/mathematical_logic/proof_theory/summary.md) 的关系最为紧密。当前证明论课程总结内容尚未展开，但从本课程知识结构看，`logic.formal_system`、`logic.formal_validity_of_inference`、`logic.common_tautological_forms`、`logic.logical_law` 等知识点显然会作为证明论讨论形式系统、推导与一致性问题的前置背景。

与 [knowledge/discrete_mathematics/combinatorics/summary.md](f:/Projects/AICodingTest/MathNotes/knowledge/discrete_mathematics/combinatorics/summary.md) 和 [knowledge/discrete_mathematics/graph_theory/summary.md](f:/Projects/AICodingTest/MathNotes/knowledge/discrete_mathematics/graph_theory/summary.md) 目前未识别出课程级重复或冲突。它们主要共享的是较高层的方法论背景，例如形式化表达、定义清晰性与论证规范，而不是同一知识点。

当前可确认的课程内边界是：`logic.logical_law` 属于课程入口处的总括性概念，`logic.common_tautological_forms` 是命题逻辑中的系统内恒真公式集合，`logic.law_of_noncontradiction` 与 `logic.law_of_excluded_middle` 则是元理论层面的逻辑基本规律。三者应保持区分，同时通过关联关系互相指向。