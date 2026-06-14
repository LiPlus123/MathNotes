# Math Notes

本项目利用 AI Coding 技术，基于教科书，从零开始，渐进式构建一份严谨的、成体系的“中文”数学笔记。笔记中的知识点包含数学对象（公理 Axioms，定义 Definitions，引理 Lemmas，命题 Propositions，定理 Theorems，推论 Corollaries，例子 Examples）和重要的概念 Concepts。

这份知识笔记由如下部分构成：
2. Obsidian 知识库：由 Obsidian Markdown 文档和 YAML 配置构成，记录重要的知识点，维护知识点之间的关联关系
3. Lean4 代码：根据知识库，使用 Lean4 对部分知识点进行形式化，其中重要的引理、命题、定理、推论和例子进行形式化验证
4. LaTeX 文档：根据知识库，分章节组织成一份严谨的、成体系的数学笔记。其中重要的引理、命题、定理、推论和例子，参考 Lean4 代码，给出用自然语言和一阶逻辑叙述的证明

## 核心目录结构
- `obsidian\`：按课程主题存放的 Obsidian Markdown 文档和 YAML 配置
- `latex\`：存放 LaTeX 代码
- `lean4\`：存放 Lean4 代码
- `lib\`：核心第三方库

## 全局约束
- 每个知识点都要有来源，不能臆造不存在和不相关的内容
- 每个 part、chapter、section、subsection 都要有唯一的 id，使用 snake_case 命名，且 id 不能修改
- 每个知识点都要有唯一的 id，使用 snake_case 命名，且 id 不能修改
- Markdown 和 LaTeX 文档中，数学符号要统一且规范，不能滥用