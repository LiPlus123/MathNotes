# 五引理与九引理

## 五引理

<!-- five_lemma_mod -->
> [!Lemma]
> **五引理 Five Lemma**：设 $R$-模有交换图，两行均正合：
> $$
> \begin{align*}
> A_1 \xrightarrow{f_1} A_2 \xrightarrow{f_2} A_3 \xrightarrow{f_3} A_4 \xrightarrow{f_4} A_5 \\
> \downarrow{\alpha_1} \quad\quad \downarrow{\alpha_2} \quad\quad \downarrow{\alpha_3} \quad\quad \downarrow{\alpha_4} \quad\quad \downarrow{\alpha_5} \\
> B_1 \xrightarrow{g_1} B_2 \xrightarrow{g_2} B_3 \xrightarrow{g_3} B_4 \xrightarrow{g_4} B_5
> \end{align*}
> $$
> 若 $\alpha_1, \alpha_2, \alpha_4, \alpha_5$ 均为同构，则 $\alpha_3$ 也是同构。
>
> **证明思路（图追踪）**：
> - **$\alpha_3$ 是单射**：设 $\alpha_3(x) = 0$。由 $\alpha_4$ 单：$\alpha_4(f_3(x)) = g_3(\alpha_3(x)) = 0 \Rightarrow f_3(x) = 0$。由上行正合：$x \in \ker f_3 = \mathrm{im}\, f_2$，取 $x = f_2(y)$。由 $\alpha_2$ 满：取 $b \in B_1$ 使 $\alpha_1(b) = g_1^{-1}(\alpha_2(y))$（利用 $\alpha_1$ 满），则 $\alpha_2(y - f_1(b)) = 0$，由 $\alpha_2$ 单得 $y = f_1(b)$，故 $x = f_2(f_1(b)) = 0$（上行正合）。
> - **$\alpha_3$ 是满射**：设 $b \in B_3$。由 $\alpha_4$ 满：取 $a_4 \in A_4$ 使 $\alpha_4(a_4) = g_3(b)$。由 $\alpha_5$ 单与 $g_4(g_3(b)) = 0$：$\alpha_5(f_4(a_4)) = 0 \Rightarrow f_4(a_4) = 0$，故 $a_4 \in \ker f_4 = \mathrm{im}\, f_3$，取 $a_3 \in A_3$ 使 $f_3(a_3) = a_4$。则 $g_3(\alpha_3(a_3) - b) = \alpha_4(a_4) - g_3(b) = 0$，故 $\alpha_3(a_3) - b \in \ker g_3 = \mathrm{im}\, g_2$，取 $b_2$ 使 $g_2(b_2) = \alpha_3(a_3) - b$；由 $\alpha_2$ 满取 $a_2$ 使 $\alpha_2(a_2) = b_2$，令 $a'_3 = a_3 - f_2(a_2)$，则 $\alpha_3(a'_3) = b$。

## 短五引理

<!-- short_five_lemma_mod -->
> [!Corollary]
> **短五引理 Short Five Lemma**：设 $R$-模有交换图，两行均是短正合列：
> $$
> \begin{align*}
> 0 \to A \xrightarrow{f} B \xrightarrow{g} C \to 0 \\
> \quad \downarrow{\alpha} \quad\quad \downarrow{\beta} \quad\quad \downarrow{\gamma} \\
> 0 \to A' \xrightarrow{f'} B' \xrightarrow{g'} C' \to 0
> \end{align*}
> $$
> 若 $\alpha$ 和 $\gamma$ 均为同构，则 $\beta$ 也是同构。
>
> **证明思路**：这是五引理在 $A_1 = B_1 = 0$、$A_5 = B_5 = 0$ 情形的直接推论。也可对 $\beta$ 单射和满射分别用图追踪直接验证。

## 九引理（$3 \times 3$ 引理）

<!-- nine_lemma_mod -->
> [!Lemma]
> **九引理（$3 \times 3$ 引理）Nine Lemma (3×3 Lemma)**：设 $R$-模有交换图，列均为短正合列：
> $$
> \begin{align*}
> &\quad 0 \quad\quad 0 \quad\quad 0 \\
> &\quad \downarrow \quad\quad \downarrow \quad\quad \downarrow \\
> &0 \to A' \xrightarrow{} B' \xrightarrow{} C' \to 0 \\
> &\quad \downarrow \quad\quad \downarrow \quad\quad \downarrow \\
> &0 \to A \xrightarrow{} B \xrightarrow{} C \to 0 \\
> &\quad \downarrow \quad\quad \downarrow \quad\quad \downarrow \\
> &0 \to A'' \xrightarrow{} B'' \xrightarrow{} C'' \to 0 \\
> &\quad \downarrow \quad\quad \downarrow \quad\quad \downarrow \\
> &\quad 0 \quad\quad 0 \quad\quad 0
> \end{align*}
> $$
> 若其中任意两行正合（行均为短正合列），则第三行也正合。
>
> **证明思路**：以"上两行正合推第三行正合"为例。由蛇引理分别应用于前两列（或前两行），并利用三列均为短正合列的条件，通过图追踪验证第三行在各处的正合性。另一方向（下两行推上行，或上下各一行推中间行）类似，均可归结为蛇引理的应用。

## 图追踪法

<!-- diagram_chasing_principle -->
> [!Definition]
> **图追踪法 Diagram Chasing**：**图追踪**（diagram chasing）是同调代数中证明涉及交换图的命题的基本方法。其核心步骤为：
>
> 1. 取目标处的任意元素（或零元素的原像）；
> 2. 利用正合性逐步在图中各模之间"追踪"元素，利用某态射满或单将元素提升或投射；
> 3. 在每一步利用交换性转化到另一模中；
> 4. 最终得到所需元素或证明某元素为零。
>
> 图追踪在 $R$-模范畴中有严格意义（元素存在），而在一般阿贝尔范畴中可通过 Freyd–Mitchell 嵌入定理还原为模范畴中的图追踪，或直接用泛性质论证。

> **注**：五引理、短五引理、九引理、蛇引理的证明均是图追踪的典型应用。这些引理在同调代数中反复使用，是计算同调群和验证长正合列正合性的标准工具。
