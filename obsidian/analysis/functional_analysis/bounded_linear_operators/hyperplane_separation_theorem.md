# 超平面分离定理

<!-- functional_analysis_convex_set_definition -->
> [!Definition]
> **凸集 Convex Set**：设 $X$ 是实线性空间，$C\subseteq X$。若对任意 $x,y\in C$ 和 $t\in[0,1]$，均有
> $$
> tx+(1-t)y\in C,
> $$
> 则称 $C$ 为**凸集 Convex Set**。

<!-- functional_analysis_affine_hyperplane_definition -->
> [!Definition]
> **仿射超平面 Affine Hyperplane**：设 $X$ 是实赋范空间，$f\in X^*\setminus\{0\}$、$\alpha\in\mathbb{R}$。集合
> $$
> H=\{x\in X:f(x)=\alpha\}
> $$
> 称为 $X$ 中的**仿射超平面 Affine Hyperplane**。

<!-- functional_analysis_strict_hyperplane_separation_theorem -->
> [!Theorem]
> **严格超平面分离定理 Strict Hyperplane Separation Theorem**：设 $X$ 是实赋范空间，$C\subseteq X$ 是非空闭凸集，$x_0\notin C$。则存在 $f\in X^*\setminus\{0\}$ 与 $\alpha\in\mathbb{R}$，使得
> $$
> \sup_{x\in C}f(x)<\alpha<f(x_0).
> $$
> 因而超平面 $\{x:f(x)=\alpha\}$ 严格分离 $C$ 与点 $x_0$。
>
> **证明思路**：先取开凸集 $C+B(0,r)$，其中 $r<\operatorname{dist}(x_0,C)$。对该开凸集及点 $x_0$ 应用几何 Hahn-Banach 分离定理，得到连续线性泛函的严格分离；再限制回 $C$。

<!-- functional_analysis_two_convex_sets_separation_theorem -->
> [!Theorem]
> **两个凸集的分离定理 Separation of Two Convex Sets**：设 $A,B\subseteq X$ 是不交凸集，且 $A$ 为非空开集。则存在非零 $f\in X^*$ 和 $\alpha\in\mathbb{R}$，使得
> $$
> f(a)<\alpha\leq f(b)
> \qquad(a\in A,\ b\in B).
> $$
>
> **证明思路**：考察开凸集 $A-B=\{a-b:a\in A,b\in B\}$，其不含 $0$。使用几何 Hahn-Banach 定理将 $0$ 与 $A-B$ 分离，再将所得不等式改写为对 $A,B$ 的分离。