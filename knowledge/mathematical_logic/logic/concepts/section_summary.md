# 概念

## 主题概览

本 section 讨论逻辑学中的“概念”及其基本操作，重点不在形式演算，而在于说明概念如何通过内涵和外延来把握对象、如何按不同标准分类、如何彼此形成外延关系，以及如何通过定义、划分、限制和概括来获得更清晰的概念边界。

本次抽取遵循用户要求，全部知识点都作为 `concept` 处理，没有把本节内容写成公理、定义、命题或定理等数学对象。

## Subsection 结构

### extension_and_intension

这一 subsection 建立“概念”“本质属性”“内涵”“外延”四个基础支点。后续关于概念分类、关系和操作的方法，都以这组区分为前提。

### kinds_of_concepts

这一 subsection 从外延分子数量、所反映对象的类型以及是否反映集合体整体三个角度，对概念进行分类。这里尤其需要注意集合概念与非集合概念的区分依赖具体语境。

### relations_of_concepts

这一 subsection 只处理概念外延之间的关系，先区分相容与不相容，再分别展开全同、属种、交叉、矛盾和对立等关系，为后续划分与推理分析提供边界框架。

### definition_of_concepts

这一 subsection 说明什么是概念陈述、何者构成定义，并进一步总结定义的一般结构、基本方法、合法性规则以及语词定义的特殊地位。

### division_of_concepts

这一 subsection 讨论如何通过划分揭示概念外延，强调划分的构成要素与规则，并将“把类分为子类”的划分和“把整体分为部分”的分解严格区分开来。

### generalization_and_restriction

这一 subsection 把属种关系上的内涵外延反变关系转化为两种基本操作，即限制和概括，说明概念如何沿着一般到特殊、特殊到一般的方向移动。

## 核心知识点

- `logic.concept`、`logic.essential_property`、`logic.intension_of_concept`、`logic.extension_of_concept` 构成全节的基础术语。
- `logic.universal_singular_and_empty_concepts`、`logic.entity_and_attribute_concepts`、`logic.collective_and_non_collective_concepts` 给出概念分类的三个主要维度。
- `logic.compatible_relation_between_concepts` 及其下的全同、属种、交叉关系，与 `logic.incompatible_relation_between_concepts` 及其下的矛盾、对立关系，共同刻画概念外延的主要关系型。
- `logic.concept_statement_and_definition`、`logic.definition_structure_and_method`、`logic.definition_rule`、`logic.verbal_definition`、`logic.stipulative_and_explanatory_word_definitions` 说明如何在语言中精确表达概念。
- `logic.division_of_concept`、`logic.elements_and_rules_of_division`、`logic.distinction_between_division_and_decomposition` 负责澄清概念外延的层级展开方式。
- `logic.inverse_variation_between_intension_and_extension` 与 `logic.restriction_and_generalization_of_concepts` 则说明概念沿属种链条移动时的基本规律。

## 阅读提示

这一节最容易混淆的边界有三处。第一，“本质属性”在这里采用逻辑学意义，而不是认识论意义。第二，集合概念与非集合概念不能脱离语境静态判断。第三，定义、划分、概括和限制分别处理的是概念的内涵表达、外延展开和属种链条移动，不应相互替代。

当前依据 `section_scope.yml` 的教材来源已经可以覆盖本 section 的全部 subsection，未发现必须单独登记的冲突来源；后续若补充百科页面，可优先用于术语对照，而不改变本次以教材为主线的边界。