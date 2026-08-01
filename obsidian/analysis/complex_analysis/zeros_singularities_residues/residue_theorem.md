# 留数定理

## 留数的定义与计算

<!-- residue_definition -->
> [!Definition]
> **留数 Residue**：设 $f$ 在 $a$ 的穿孔邻域内全纯，Laurent 展开为
> $$
> f(z)=\sum_{n=-\infty}^{\infty}c_n(z-a)^n.
> $$
> $f$ 在 $a$ 处的留数定义为
> $$
> \operatorname{Res}(f,a):=c_{-1}.
> $$
> 等价地，对任意足够小的正向圆周 $\gamma$，
> $$
> \operatorname{Res}(f,a)=\frac1{2\pi i}\int_\gamma f(z)\,dz.
> $$

<!-- residue_simple_pole -->
> [!Theorem]
> **单极点处的留数 Residue at a Simple Pole**：若 $a$ 是 $f$ 的单极点，则
> $$
> \operatorname{Res}(f,a)=\lim_{z\to a}(z-a)f(z).
> $$
> 更一般地，若 $f=g/h$，$g,h$ 在 $a$ 附近全纯，$g(a)\ne0$、$h(a)=0$、$h'(a)\ne0$，则
> $$
> \operatorname{Res}(f,a)=\frac{g(a)}{h'(a)}.
> $$

<!-- residue_higher_order_pole -->
> [!Theorem]
> **高阶极点处的留数 Residue at a Pole of Higher Order**：若 $a$ 是 $f$ 的 $m$ 阶极点，则
> $$
> \operatorname{Res}(f,a)=\frac1{(m-1)!}
> \lim_{z\to a}\frac{d^{m-1}}{dz^{m-1}}\left((z-a)^mf(z)\right).
> $$
>
> **证明思路**：$(z-a)^mf(z)$ 在 $a$ 处全纯，对其 Taylor 展开取一次项系数。

<!-- residue_essential_singularity -->
> [!Example]+
> **本性奇点处的留数 Residue at an Essential Singularity**：本性奇点的留数仍只是 Laurent 展开中的 $(z-a)^{-1}$ 项系数。例如
> $$
> e^{1/z}=1+\frac1z+\frac1{2!z^2}+\cdots,
> $$
> 因而 $\operatorname{Res}(e^{1/z},0)=1$。

## 留数定理

<!-- residue_theorem -->
> [!Theorem]
> **留数定理 Residue Theorem**：设 $D$ 是区域，$f$ 在 $D$ 内除有限个孤立奇点 $a_1,\ldots,a_m$ 外全纯。若 $\gamma$ 是 $D$ 内避免这些奇点的闭曲线，且其像与相关内部满足 Cauchy 定理的条件，则
> $$
> \frac1{2\pi i}\int_\gamma f(z)\,dz
> =\sum_{j=1}^{m}n(\gamma,a_j)\operatorname{Res}(f,a_j).
> $$
> 若 $\gamma$ 是包含全部奇点的正向简单闭曲线，则
> $$
> \int_\gamma f(z)\,dz=2\pi i\sum_{j=1}^{m}\operatorname{Res}(f,a_j).
> $$
>
> **证明思路**：在每个奇点周围挖去互不相交的小圆盘，对剩余区域应用 Cauchy 定理；每个小圆周积分由留数定义给出，内部边界方向产生相应符号。

<!-- residue_sum_independence -->
> [!Theorem]
> **留数和的路径表示 Path Representation of the Residue Sum**：在留数定理条件下，闭曲线积分只由各奇点的留数及其卷绕数决定，与曲线的具体形状无关。
>
> **证明思路**：由留数定理，所有形变保持过程中卷绕数不变，积分值随之保持不变。

> **注**：留数的定义、计算与留数定理参见 Lars Ahlfors, *Complex Analysis*, 3rd ed., Chapter 5，以及 John B. Conway, *Functions of One Complex Variable I*, Chapter 6。
