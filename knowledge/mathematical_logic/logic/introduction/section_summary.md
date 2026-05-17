# 绪论

## 主题概览

本 section 处理逻辑学课程的进入性概念，不涉及具体数学对象或后续形式演算，而是先说明逻辑学究竟研究什么、为什么需要借助语言来研究思维，以及逻辑学作为一门学科具有什么性质和作用。

## Subsection 结构

### logic_object

这一 subsection 交代逻辑学以思维形式及其规律为研究对象，并把“思维形式”“逻辑常项”“逻辑变项”“逻辑规律”“逻辑矛盾”区分开来。这里的重点不是给出具体推理规则，而是建立后续课程判断“形式正确性”的最小概念框架。

### thought_language_and_logic

这一 subsection 说明思维、语言和逻辑之间的媒介关系：逻辑学通过分析语言形式研究思维形式。随后区分对象语言与元语言、自然语言与符号语言，并用“传统逻辑与现代逻辑”概括工具语言与形式化程度上的历史变化。

### nature_and_function_of_logic

这一 subsection 从学科定位上说明逻辑学的基础性、工具性和全人类性，并把逻辑学的实际作用概括为规范思维、分析论证、辅助表达和探求真理的方法训练。

## 核心知识点

- `logic.logic_research_object` 给出本章对逻辑学对象的总界定。
- `logic.thought_form`、`logic.logical_constant`、`logic.logical_variable` 构成后续命题和词项分析的概念前提。
- `logic.logical_law` 与 `logic.logical_contradiction` 提供“形式上正确”与“应被排除”的最初边界。
- `logic.relation_between_thought_language_and_logic` 与 `logic.object_language_and_metalanguage` 说明逻辑研究为何必须经过语言层次。
- `logic.natural_language`、`logic.symbolic_language`、`logic.formal_system`、`logic.traditional_and_modern_logic` 搭起从自然表达走向形式分析的主线。
- `logic.foundational_character_of_logic`、`logic.instrumental_character_of_logic`、`logic.universality_of_logic`、`logic.function_of_logic` 总结逻辑学的学科定位与现实用途。

## 阅读提示

本 section 只建立课程入口处的概念边界，不提前展开命题逻辑、谓词逻辑、证明论等后续章节的技术内容。阅读时应特别区分三组关系：一是思维内容与思维形式，二是对象语言与元语言，三是自然语言与符号语言。

需要人工特别注意的一点是：`section_scope.yml` 的主线来源登记为人大版教材目录页，而本次抽取的具体表述同时参考了同目录下另一部已提供正文的教材 `1.introduction.md` 来补足陈述细节。若后续要求严格限定为已登记正文来源，应先把当前实际使用的正文文件补登记到 [knowledge/mathematical_logic/logic/introduction/section_scope.yml](f:/Projects/AICodingTest/MathNotes/knowledge/mathematical_logic/logic/introduction/section_scope.yml)。