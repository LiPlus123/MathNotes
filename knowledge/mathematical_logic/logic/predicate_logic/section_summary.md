# 谓词逻辑

## 主题概览

本 section 从命题逻辑进一步走向对原子命题内部结构的分析。它首先引入谓词、个体词和量词，建立谓词逻辑的基本语言；随后说明自然语言如何被翻译成谓词表达式；再讨论量化推理的有效性边界；最后总结二元关系作为“属性的属性”时的若干性质。

本次抽取以稳定、可复用的概念知识点为主，没有把教材中的具体符号化练习、亲属关系例题或单个反例解释拆成独立知识点。

## Subsection 结构

### internal_structure_of_atomic_propositions

这一 subsection 说明为什么需要谓词逻辑，并把原子命题分析为谓词、个体词、量词和联结词的组合。随后教材进一步引入论域、自由与约束个体变项、量词辖域、命题形式及其解释，并据此区分普遍有效、可满足和不可满足等逻辑状态。

### predicate_expressions_in_natural_language

这一 subsection 处理自然语言到谓词表达式的对应方式，依次讨论直言命题的表达式、重叠量化式、量化式的复合以及量化推理式。重点在于把自然语言中含有“所有”“有的”“每一个”“存在”等结构的断定准确转写为量词和谓词的组合。

### quantified_inference

这一 subsection 讨论量化推理的判定边界。教材强调，一阶逻辑中不存在对任意命题形式做普遍有效性判定的能行方法，但在有穷个体域条件下，可以把量化式归约为命题逻辑中的有限真值形式，从而恢复能行判定。

### properties_of_binary_relations

这一 subsection 不再讨论量词本身，而是把关系视为一种“属性的属性”，归纳二元关系的自返性、对称性和传递性，并分别按三分法给出相关分类。

## 核心知识点

- `logic.significance_of_predicate_logic`、`logic.predicate_and_individual_term`、`logic.arity_of_predicate`、`logic.quantifier` 构成谓词逻辑语言的基础。
- `logic.domain_of_discourse`、`logic.bound_and_free_individual_variables`、`logic.scope_of_quantifier` 负责界定量词与个体变项的作用范围。
- `logic.propositional_form_in_predicate_logic`、`logic.interpretation_of_propositional_form`、`logic.logical_status_of_propositional_form` 说明谓词逻辑中的公式如何通过解释获得真假以及相应逻辑地位。
- `logic.categorical_proposition_expression`、`logic.overlapping_quantification`、`logic.composition_of_quantified_expressions`、`logic.quantified_inference_expression` 总结自然语言向谓词表达式的主要翻译模式。
- `logic.quantified_inference`、`logic.decidability_of_quantified_inference`、`logic.finite_domain_reduction` 概括量化推理的对象、可判定性边界及有穷域情形下的归约方法。
- `logic.relation_as_property_of_property`、`logic.reflexivity_of_binary_relation`、`logic.symmetry_of_binary_relation`、`logic.transitivity_of_binary_relation` 归纳二元关系的主要性质分类。

## 阅读提示

这一节最容易混淆的地方有三处。第一，含自由个体变项的表达式通常不是命题，而是需要解释或量化的命题形式。第二，量词的先后顺序和辖域范围会直接改变重叠量化式的含义。第三，教材对量化推理的讨论重点是可判定性边界和有穷域归约，而不是给出一个普适的机械判定程序。

需要人工特别注意的一点是：当前 [knowledge/mathematical_logic/logic/predicate_logic/section_scope.yml](f:/Projects/AICodingTest/MathNotes/knowledge/mathematical_logic/logic/predicate_logic/section_scope.yml) 登记的来源仍指向 `toc.md`，而本次具体表述依据了你提供的第五章正文内容进行细化。若后续要求严格按已登记正文溯源，建议把实际使用的正文文件补登记到 `section_scope.yml`。