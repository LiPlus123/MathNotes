# Jordan-Brouwer 分离定理

## Alexander 对偶

<!-- alexander_duality -->
> [!Theorem]
> **Alexander 对偶 Alexander Duality**：设 $K \subseteq S^n$ 是紧致非空子空间，则存在同构：
> $$\tilde{H}_k(S^n \setminus K;\, \mathbb{Z}) \cong \tilde{H}^{n-k-1}(K;\, \mathbb{Z}) \quad \text{对所有 } k,$$
> 其中 $\tilde{H}^*$ 表示**上同调群 Cohomology Group**（约化版本）。

> **注**：Alexander 对偶将 $S^n$ 中紧致子空间的补的同调与该子空间本身的上同调联系起来，是计算补空间拓扑的有力工具。这里上同调的引入是必要的——同调与上同调的关系由万有系数定理（Universal Coefficient Theorem）给出，对有限生成阿贝尔群系数时 $H^k \cong \mathrm{Hom}(H_k, \mathbb{Z}) \oplus \mathrm{Ext}(H_{k-1}, \mathbb{Z})$。对自由情形（无扭转）$H^k(S^{n-1}) \cong H_k(S^{n-1})$。

## Jordan-Brouwer 分离定理

<!-- jordan_brouwer_separation_theorem -->
> [!Theorem]
> **Jordan-Brouwer 分离定理 Jordan-Brouwer Separation Theorem**：设 $h: S^{n-1} \hookrightarrow S^n$ 是嵌入（$n \geq 1$），则 $S^n \setminus h(S^{n-1})$ 恰好有**两个**道路连通分支，且每个分支是开集，其同调如同 $\mathbb{R}^n$（各分支均可缩）。
>
> **证明思路（利用 Alexander 对偶）**：令 $K = h(S^{n-1}) \cong S^{n-1}$，由 Alexander 对偶（取 $k=0$）：
> $$\tilde{H}_0(S^n \setminus K) \cong \tilde{H}^{n-1}(S^{n-1}).$$
> 由 $H^{n-1}(S^{n-1}) \cong \mathbb{Z}$（无扭转时 $H^{n-1} \cong H_{n-1} \cong \mathbb{Z}$），故 $\tilde{H}_0(S^n \setminus K) \cong \mathbb{Z}$，即 $S^n \setminus K$ 有 $1 + 1 = 2$ 个道路连通分支（$\tilde{H}_0 \cong \mathbb{Z}^{r-1}$ 意味着 $r = 2$ 个分支）。
>
> 对 $k \geq 1$，$\tilde{H}_k(S^n \setminus K) \cong \tilde{H}^{n-k-1}(S^{n-1})$，当 $n-k-1 \neq n-1$（即 $k \neq 0$）时，$\tilde{H}^{n-k-1}(S^{n-1}) \cong H_{n-k-1}(S^{n-1})$ 对 $n-k-1 \neq n-1$ 的分析给出各分支的高阶同调均为零，即各分支同调平凡（像 $\mathbb{R}^n$ 一样可缩）。

## Jordan 曲线定理

<!-- jordan_curve_theorem -->
> [!Theorem]
> **Jordan 曲线定理 Jordan Curve Theorem**：设 $C \subseteq \mathbb{R}^2$（或 $S^2$）是简单闭曲线（即 $S^1$ 的同胚像）。则 $\mathbb{R}^2 \setminus C$ 恰好有**两个**连通分支：一个有界（**内部 Interior**）和一个无界（**外部 Exterior**），每个分支均单连通，其公共边界为 $C$。
>
> **证明思路**：在 $S^2$ 中看：$S^2 \setminus C$ 有两个连通分支（由 $n=2$ 时的 Jordan-Brouwer 定理）。$\mathbb{R}^2 = S^2 \setminus \{\infty\}$，若 $\infty \notin C$，则 $\mathbb{R}^2 \setminus C = S^2 \setminus (C \cup \{\infty\})$；两个分支中有一个含 $\infty$（外部，无界），另一个不含（内部，有界）。

<!-- jordan_curve_examples -->
> [!Example]+
> **Jordan 曲线定理的例子 Examples**：
> 1. 单位圆 $S^1 \subset \mathbb{R}^2$：内部为开单位圆盘 $\{|z| < 1\}$，外部为 $\{|z| > 1\}$；
> 2. 带尖的曲线（星形曲线、椭圆等均适用）：只需是 $S^1$ 的连续单射像即可；
> 3. 注意"曲线"不需要是光滑的，甚至可以是处处不可微的（如 Koch 雪花曲线）。

> **注**：Jordan 曲线定理尽管直观，但其证明却相当微妙，因为 $S^1$ 在 $\mathbb{R}^2$ 中的嵌入可以非常复杂（如 Alexander 角状球体的二维版本 — Antoine 项链等病态情形）。代数拓扑（同调论）提供了最清晰的证明框架。
