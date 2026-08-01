# Banach 不动点定理

## 压缩映射

<!-- functional_analysis_contraction_mapping_definition -->
> [!Definition]
> **压缩映射 Contraction Mapping**：设 $(X,d)$ 是度量空间，$T:X\to X$。若存在常数 $q\in[0,1)$，使得对任意 $x,y\in X$ 都有
> $$
> d(Tx,Ty)\leq qd(x,y),
> $$
> 则称 $T$ 为 $X$ 上的**压缩映射 Contraction Mapping**，$q$ 称为其压缩常数。

<!-- functional_analysis_contraction_mapping_continuity -->
> [!Proposition]
> **压缩映射的连续性 Contractions are Continuous**：每个压缩映射都是 Lipschitz 连续的，因而连续。
>
> **证明思路**：定义中的不等式正是 Lipschitz 条件，Lipschitz 常数为压缩常数 $q$。

## Banach 不动点定理

<!-- functional_analysis_banach_fixed_point_theorem -->
> [!Theorem]
> **Banach 不动点定理 Banach Fixed-Point Theorem**：设 $(X,d)$ 是完备度量空间，$T:X\to X$ 是压缩映射。则存在唯一的 $x^*\in X$ 使得
> $$
> T(x^*)=x^*.
> $$
> 此外，对任意 $x_0\in X$，由 $x_{n+1}=T(x_n)$ 定义的迭代列收敛到 $x^*$，并满足先验误差估计
> $$
> d(x_n,x^*)\leq\frac{q^n}{1-q}d(x_1,x_0)
> \qquad(n\geq0).
> $$
>
> **证明思路**：由压缩性反复应用可得 $d(x_{n+1},x_n)\leq q^nd(x_1,x_0)$。将尾项距离估计为几何级数，说明 $(x_n)$ 是柯西列；完备性给出极限 $x^*$，再由 $T$ 的连续性得到 $T(x^*)=x^*$。若 $x^*,y^*$ 都是不动点，则 $d(x^*,y^*)\leq qd(x^*,y^*)$，故两者相等。

<!-- functional_analysis_banach_fixed_point_a_posteriori_estimate -->
> [!Corollary]
> **后验误差估计 A Posteriori Error Estimate**：在 Banach 不动点定理的条件下，迭代列满足
> $$
> d(x_n,x^*)\leq\frac{q}{1-q}d(x_n,x_{n-1})
> \qquad(n\geq1).
> $$
>
> **证明思路**：将 $d(x_n,x^*)$ 估计为从第 $n$ 项开始的相邻差之和，再用 $d(x_{n+k+1},x_{n+k})\leq q^kd(x_{n+1},x_n)$ 求和。

## 应用

<!-- functional_analysis_banach_fixed_point_integral_equation_example -->
> [!Example]+
> **积分方程的唯一解 Unique Solution of an Integral Equation**：设 $f\in C([a,b])$，$K\in C([a,b]^2)$，并令
> $$
> (Tu)(x)=f(x)+\lambda\int_a^bK(x,t)u(t)\,dt
> \qquad\bigl(u\in C([a,b])\bigr).
> $$
> 若
> $$
> |\lambda|(b-a)\max_{(x,t)\in[a,b]^2}|K(x,t)|<1,
> $$
> 则积分方程 $u=Tu$ 在 $C([a,b])$ 的一致范数下有唯一解，且逐次逼近 $u_{n+1}=Tu_n$ 从任意初值收敛到该解。
>
> **证明思路**：$C([a,b])$ 在一致范数下完备。对任意 $u,v$，将 $|(Tu)(x)-(Tv)(x)|$ 以 $\|u-v\|_\infty$ 估计，得到的压缩常数正是上式左端，故可应用 Banach 不动点定理。