# Math Notes

本项目利用 AI Coding 技术，基于教科书，从零开始，渐进式构建一份严谨的、成体系的“中文”数学笔记。笔记中的知识点包含数学对象（公理 Axioms，定义 Definitions，引理 Lemmas，命题 Propositions，定理 Theorems，推论 Corollaries，例子 Examples）和重要的概念 Concepts。

知识点按主题，划分到不同的章节。章节分为四个等级：
1. 部分，对应 LaTeX 的 `\part`，例如“数理逻辑”、“离散数学”、“代数学”、“分析学”、“几何学”、“应用数学”等
2. 章，对应 LaTeX 的 `\chapter`，例如“代数学”部分下的“线性代数”、“抽象代数”、“群表示论”等
3. 节，对应 LaTeX 的 `\section`，例如“线性代数”章下的“线性空间”、“特征值与特征向量”等
4. 子节，对应 LaTeX 的 `\subsection`，例如“线性空间”节下的“线性空间的基本概念”、“子空间”、“基底与维数”等

这份知识笔记由如下部分构成：
1. Knowledge 知识库：由 Markdown 文档和 YAML 配置构成，通过对教材的分析，提取出的章节大纲和重要知识点，维护知识点之间的关联关系
2. Obsidian 笔记：根据知识库，Obsidian 风格的 Markdown 文档
3. Lean4 代码：根据知识库，部分知识点形式化，其中重要的引理、命题、定理、推论和例子进行形式化验证
4. LaTeX 文档：根据知识库，分章节组织成一份严谨的、成体系的数学笔记。其中重要的引理、命题、定理、推论和例子，参考 Lean4 代码，给出用自然语言和一阶逻辑叙述的证明

## 核心目录结构
- `textbooks\`：按课程主题存放教材 pdf 原文
- `knowledge\`：按课程主题存放的知识库
- `obsidian\`：按课程主题存放的 Obsidian 笔记
- `latex\`：存放 LaTeX 代码
- `lean4\`：存放 Lean4 代码
- `lib\`：核心第三方库


## 全局约束
- subsection 为代码文件组织的最小单元；一个 subsection 包含若干知识点，这些知识点要足够内聚
- 每个 subsections 需要在参考文献中找到来源，不能臆造不存在和不相关的内容
- 每个知识点都要有来源，不能臆造不存在和不相关的内容
- 每个 part、chapter、section、subsection 都要有唯一的 id，且 id 不能修改
- 每个知识点都要有唯一的 id，且 id 不能修改
- Markdown 和 LaTeX 文档中，数学符号要统一且规范，不能滥用