# 命题逻辑

## 主题概览

本 section 处理命题逻辑的入门框架：先说明什么是命题、复合命题及其真值结构，再说明什么是命题推理、何谓形式有效，以及如何用真值表、归谬赋值和范式方法来判定一般命题推理。

本次抽取以稳定、可复用的知识点为主，重点放在命题类型、真值形式、推理有效性和判定方法，没有把教材中的例题、具体推演步骤或单次赋值过程拆成独立知识点。

## Subsection 结构

### compound_propositions

这一 subsection 从“判断 - 语句 - 命题”的关系出发，界定命题的真假特征，并把命题逻辑所研究的对象收缩到真值由支命题唯一确定的复合命题。随后教材分别讨论联言、相容选言、不相容选言、假言和负命题，并进一步抽象出真值联结词、真值形式以及重言式、矛盾式、可真式的分类。

### propositional_inference

这一 subsection 先从一般推理和形式有效性讲起，再把研究范围限定到命题推理。之后教材依次讨论联言推理、选言推理、假言推理和二难推理，最后把这些基本形式推广到一般命题推理，并给出真值表方法、归谬赋值法和范式方法三类判定思路。

## 核心知识点

- `logic.judgment_statement_and_proposition`、`logic.truth_value_of_proposition`、`logic.atomic_and_compound_propositions`、`logic.truth_functional_compound_proposition` 构成命题逻辑的对象边界。
- `logic.conjunction_proposition`、`logic.inclusive_disjunction_proposition`、`logic.exclusive_disjunction_proposition`、`logic.hypothetical_proposition`、`logic.sufficient_necessary_and_biconditional_propositions`、`logic.negation_proposition` 概括几类基本复合命题。
- `logic.equivalent_negations_of_basic_compounds`、`logic.truth_functional_connective`、`logic.truth_form`、`logic.classification_of_truth_forms` 说明复合命题如何转化为统一的真值结构。
- `logic.inference_and_evidential_support`、`logic.formal_validity_of_inference`、`logic.propositional_inference` 给出命题推理的总框架。
- `logic.conjunctive_inference`、`logic.disjunctive_inference`、`logic.hypothetical_inference`、`logic.dilemma_inference` 总结几种基本的命题推理形式。
- `logic.general_propositional_inference`、`logic.truth_table_method`、`logic.reductio_assignment_method`、`logic.normal_form`、`logic.common_tautological_forms` 负责一般命题推理的统一判定。

## 阅读提示

这一节有三组边界需要特别注意。第一，教材区分“一般意义上的复合命题”和“命题逻辑所研究的复合命题”，后者必须具有真值函数性质。第二，自然语言里的“或者”“如果……那么……”往往带有语义联系，但在命题逻辑中，重点是其真值关系的抽象。第三，推理有效只保证“若前提真则结论真”，并不自动保证前提本身为真。
