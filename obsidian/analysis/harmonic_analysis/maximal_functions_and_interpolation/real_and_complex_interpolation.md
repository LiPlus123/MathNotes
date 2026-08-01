# 实插值与复插值

设 $(X_0,X_1)$ 是嵌入某一共同 Hausdorff 向量空间的一对 Banach 空间，称为 Banach 对。

## Peetre 的 $K$ 方法与 $J$ 方法

<!-- peetre_k_functional_definition -->
> [!Definition]
> **Peetre $K$ 泛函 Peetre $K$-Functional**：对 $f\in X_0+X_1$ 及 $t>0$，定义
> $$
> K(t,f;X_0,X_1)=\inf_{f=f_0+f_1}\bigl(\|f_0\|_{X_0}+t\|f_1\|_{X_1}\bigr),
> $$
> 下确界遍历 $f_i\in X_i$ 的所有分解。

<!-- real_interpolation_k_method_definition -->
> [!Definition]
> **实插值空间：$K$ 方法 Real Interpolation Space: $K$-Method**：对 $0<\theta<1$ 及 $1\leq q\leq+\infty$，定义
> $$
> (X_0,X_1)_{\theta,q}=\left\{f\in X_0+X_1:
> \|f\|_{\theta,q}=
> \left(\int_0^\infty[t^{-\theta}K(t,f;X_0,X_1)]^q\frac{dt}{t}\right)^{1/q}<+\infty\right\},
> $$
> 当 $q=+\infty$ 时以 $\sup_{t>0}t^{-\theta}K(t,f)$ 代替积分表达式。

<!-- peetre_j_functional_definition -->
> [!Definition]
> **Peetre $J$ 泛函 Peetre $J$-Functional**：对 $u\in X_0\cap X_1$ 及 $t>0$，定义
> $$
> J(t,u;X_0,X_1)=\max\{\|u\|_{X_0},t\|u\|_{X_1}\}.
> $$
> $J$ 方法以 $f=\int_0^\infty u(t)\,dt/t$ 的分解和 $t^{-\theta}J(t,u(t))$ 的 $L^q(dt/t)$ 范数定义实插值空间；在适当意义下，它与 $K$ 方法给出相同的插值尺度。

<!-- real_interpolation_operator_theorem -->
> [!Theorem]
> **实插值的算子定理 Real Interpolation Operator Theorem**：若线性算子 $T$ 同时有界地映 $X_i$ 至 $Y_i$（$i=0,1$），则对任意 $0<\theta<1$、$1\leq q\leq+\infty$，
> $$
> T:(X_0,X_1)_{\theta,q}\longrightarrow(Y_0,Y_1)_{\theta,q}
> $$
> 有界，且
> $$
> \|T\|\leq\|T\|_{X_0\to Y_0}^{1-\theta}\|T\|_{X_1\to Y_1}^{\theta}.
> $$
>
> **证明思路**：对 $f=f_0+f_1$ 应用端点估计并取下确界，得到 $K(t,Tf;Y_0,Y_1)\leq\|T\|_{X_0\to Y_0}K(ct,f;X_0,X_1)$，其中 $c$ 为端点范数之比；代入 $K$ 范数并换元。

## Calderón 复插值与 Lorentz 空间

<!-- calderon_complex_interpolation_definition -->
> [!Definition]
> **Calderón 复插值空间 Calderón Complex Interpolation Space**：令 $\mathcal{F}(X_0,X_1)$ 为带状区域 $0\leq\operatorname{Re}z\leq1$ 上连续、内部全纯的函数类，并要求边界值分别有界地取于 $X_0$ 和 $X_1$，且在虚方向衰减。定义
> $$
> [X_0,X_1]_\theta=\{F(\theta):F\in\mathcal{F}(X_0,X_1)\},
> $$
> 其范数为所有满足 $F(\theta)=f$ 的 $F$ 的边界范数最大值的下确界。

<!-- calderon_complex_interpolation_operator_theorem -->
> [!Theorem]
> **Calderón 复插值定理 Calderón Complex Interpolation Theorem**：若 $T:X_i\to Y_i$ 在 $i=0,1$ 时有界，则
> $$
> T:[X_0,X_1]_\theta\longrightarrow[Y_0,Y_1]_\theta
> $$
> 有界，并满足
> $$
> \|T\|\leq\|T\|_{X_0\to Y_0}^{1-\theta}\|T\|_{X_1\to Y_1}^{\theta}.
> $$
>
> **证明思路**：对表示 $f=F(\theta)$ 的解析函数作 $TF$，在两个边界上使用端点算子估计，再由向量值三线定理在 $\theta$ 处插值。

<!-- lions_peetre_interpolation_theorem -->
> [!Theorem]
> **Lions-Peetre 插值定理 Lions-Peetre Interpolation Theorem**：实插值方法对 Banach 对是精确插值函子：若 $T:X_0+X_1\to Y_0+Y_1$ 在线性端点空间上有界，则其在所有 $(X_0,X_1)_{\theta,q}$ 上也有界。该框架将 Marcinkiewicz 型实插值推广到一般 Banach 对。
>
> **证明思路**：由 $K$ 泛函的端点控制估计 $K(t,Tf;Y_0,Y_1)$，再利用 $K$ 方法定义直接得到。

<!-- lorentz_space_definition -->
> [!Definition]
> **Lorentz 空间 Lorentz Space**：设 $f^*$ 是 $|f|$ 的递减重排。对 $0<p<+\infty$、$0<q<+\infty$，定义
> $$
> \|f\|_{L^{p,q}}=
> \left(\int_0^\infty[t^{1/p}f^*(t)]^q\frac{dt}{t}\right)^{1/q};
> $$
> 对 $q=+\infty$，定义 $\|f\|_{L^{p,\infty}}=\sup_{t>0}t^{1/p}f^*(t)$。特别地，$L^{p,p}=L^p$，且 $L^{p,\infty}$ 为弱 $L^p$ 空间。

<!-- real_interpolation_lebesgue_lorentz_identity -->
> [!Theorem]
> **Lebesgue 对的实插值公式 Real Interpolation Formula for Lebesgue Spaces**：若 $1\leq p_0<p_1\leq+\infty$、$0<\theta<1$，并令
> $$
> \frac{1}{p}=\frac{1-\theta}{p_0}+\frac{\theta}{p_1},
> $$
> 则对 $1\leq q\leq+\infty$，
> $$
> (L^{p_0},L^{p_1})_{\theta,q}=L^{p,q}
> $$
> （范数等价）。
>
> **证明思路**：计算 Lebesgue 对的 $K$ 泛函，并以递减重排将其化为一维积分；Hardy 型不等式给出与 Lorentz 范数的等价。

> **来源**：Jöran Bergh and Jörgen Löfström, *Interpolation Spaces*, Chapters 2--5；Colin Bennett and Robert Sharpley, *Interpolation of Operators*, Chapters 3--5。
