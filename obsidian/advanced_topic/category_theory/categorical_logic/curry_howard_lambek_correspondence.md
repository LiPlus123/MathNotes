# Curry–Howard–Lambek 对应

## 三重对应概述

<!-- curry_howard_lambek_overview -->
> [!Definition]
> **Curry–Howard–Lambek 对应 Curry–Howard–Lambek Correspondence**：**Curry–Howard–Lambek 对应**（也称"命题即类型"对应，propositions-as-types）是逻辑、类型论与范畴论之间的深刻三重对应：
>
> | 逻辑（直觉主义命题逻辑） | 类型论（简单类型 $\lambda$-演算） | 范畴论（笛卡尔闭范畴） |
> |---|---|---|
> | 命题 $A$ | 类型 $A$ | 对象 $A$ |
> | $A$ 的证明 | 类型 $A$ 的项（程序） | 态射 $1 \to A$ |
> | 蕴含 $A \Rightarrow B$ | 函数类型 $A \to B$ | 指数对象 $B^A$ |
> | 合取 $A \wedge B$ | 积类型 $A \times B$ | 积对象 $A \times B$ |
> | 真 $\top$ | 单位类型 $\mathbf{1}$ | 终对象 $1$ |
> | 蕴含引入（$\Rightarrow$-intro） | $\lambda$-抽象 $\lambda x.t$ | 柯里化 $\mathrm{cur}(f)$ |
> | 蕴含消去（modus ponens） | 函数应用 $t\, s$ | 求值 $\mathrm{ev}$ |
> | 假设（hypothesis） | 变量 $x: A$ | 恒等态射 $\mathrm{id}_A$ |

## 逻辑侧

<!-- logic_side -->
> [!Definition]
> **直觉主义命题逻辑（逻辑侧）**：在直觉主义命题逻辑中，命题 $A$ 的**证明**是构造性的（constructive），"$A$ 真"意味着存在 $A$ 的具体证明对象（proof term）。主要连接词对应：
> - $\top$（真）：有唯一证明（空证明）；
> - $A \wedge B$（合取）：证明为 $A$ 的证明与 $B$ 的证明的有序对；
> - $A \Rightarrow B$（蕴含）：证明为将 $A$ 的证明映射到 $B$ 的证明的**函数**；
> - $A \vee B$（析取）：证明为 $A$ 的证明或 $B$ 的证明（带标签），对应类型论的和类型。

## 类型论侧

<!-- type_theory_side -->
> [!Definition]
> **简单类型 $\lambda$-演算（类型论侧）**：**简单类型 $\lambda$-演算**（simply typed lambda calculus，STLC）包含：
> - **类型**：基本类型 $o$、单位类型 $\mathbf{1}$、积类型 $A \times B$、函数类型 $A \to B$；
> - **项**（programs）：变量 $x: A$、$\lambda$-抽象 $(\lambda x: A.\, t): A \to B$（当 $t: B$ 在 $x: A$ 假设下）、函数应用 $(t\, s): B$（当 $t: A \to B$，$s: A$）、配对 $\langle t, s\rangle: A \times B$、投影 $\pi_1, \pi_2$；
> - **归约规则**（$\beta$-归约）：$(\lambda x.t)\, s \leadsto t[s/x]$（应用即代入）；
> - **类型判断**（typing judgment）：$\Gamma \vdash t: A$（在上下文 $\Gamma$ 中，项 $t$ 具有类型 $A$）。

## 范畴论侧

<!-- category_theory_side -->
> [!Theorem]
> **简单类型 $\lambda$-演算与笛卡尔闭范畴等价**：简单类型 $\lambda$-演算与笛卡尔闭范畴之间存在精确对应：
> - **类型**对应**对象**；
> - **上下文** $\Gamma = (x_1: A_1, \ldots, x_n: A_n)$ 对应对象 $A_1 \times \cdots \times A_n$；
> - **类型判断** $\Gamma \vdash t: B$ 对应态射 $[\Gamma] \to B$（其中 $[\Gamma]$ 为上下文对应的积对象）；
> - **$\lambda$-抽象**对应**柯里化** $\mathrm{cur}$；
> - **函数应用**对应**求值** $\mathrm{ev}$；
> - **$\beta$-归约**对应**等式** $\mathrm{ev} \circ (\mathrm{cur}(f) \times \mathrm{id}) = f$。
>
> 具体地，从 STLC 构造一个笛卡尔闭范畴（"句法范畴"，syntactic category），对象为类型，态射为类型判断的等价类；反之，每个 CCC 给出一个 STLC 的模型（语义）。
>
> **证明思路**：构造句法范畴 $\mathcal{C}_{\mathrm{STLC}}$，验证积与指数对象的泛性质由类型规则保证；再验证 $\beta\eta$-等价对应范畴等式。

## 意义

<!-- chl_significance -->
> **注**：Curry–Howard–Lambek 对应揭示了以下深层统一：
> - **证明即程序**（proof-as-program）：逻辑证明可以被视为计算机程序，证明检验对应程序类型检查；
> - **命题即类型**（propositions-as-types）：命题的真值对应类型的非空性（存在居留项），构成类型论（如 Martin-Löf 类型论、同伦类型论）的基础；
> - **范畴语义**：CCC 为直觉主义逻辑和 $\lambda$-演算提供了统一的语义框架，推广到拓扑斯（Topos）后可处理更丰富的逻辑（见 [[internal_language|内部语言]]）。
