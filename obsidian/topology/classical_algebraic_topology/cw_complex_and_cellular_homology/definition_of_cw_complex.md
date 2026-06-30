# CW 复形

## 胞腔分解

<!-- cw_complex_definition -->
> [!Definition]
> **CW 复形 CW Complex**：**CW 复形** $X$ 是通过如下归纳构造得到的 Hausdorff 拓扑空间：
> 1. 从离散集合 $X^0$（称为 **$0$-骨架 $0$-Skeleton**，元素为 **$0$-胞腔 $0$-Cells**）出发；
> 2. 对 $n \geq 1$，**$n$-骨架 $n$-Skeleton** $X^n$ 由 $X^{n-1}$ 通过粘合一族 $n$-胞腔 $\{e_\alpha^n\}$ 得到：对每个 $n$-胞腔 $e_\alpha^n$，选取连续**粘合映射 Attaching Map** $\varphi_\alpha: S^{n-1} \to X^{n-1}$，令：
>    $$X^n = X^{n-1} \sqcup_{\{\varphi_\alpha\}} \bigsqcup_\alpha D_\alpha^n = \left(X^{n-1} \sqcup \bigsqcup_\alpha D_\alpha^n\right) \bigg/ \sim,$$
>    其中等价关系由 $x \sim \varphi_\alpha(x)$（$x \in S_\alpha^{n-1} = \partial D_\alpha^n$）生成；
> 3. 若 $X = X^n$ 对某个有限 $n$，称 $X$ 是**有限维 CW 复形**；否则 $X = \bigcup_n X^n$，配备**弱拓扑 Weak Topology**：$A \subseteq X$ 是闭集当且仅当 $A \cap X^n$ 是 $X^n$ 的闭集（对所有 $n$）。

<!-- characteristic_map_definition -->
> [!Definition]
> **特征映射 Characteristic Map**：每个 $n$-胞腔 $e_\alpha^n$ 配备**特征映射 Characteristic Map** $\Phi_\alpha: D^n \to X^n$，满足：
> - $\Phi_\alpha|_{S^{n-1}} = \varphi_\alpha$（与粘合映射相容）；
> - $\Phi_\alpha$ 限制到 $\mathrm{Int}(D^n)$ 是同胚到 $e_\alpha^n$（开胞腔）。
>
> 闭胞腔为 $\bar{e}_\alpha^n = \Phi_\alpha(D^n)$，开胞腔为 $e_\alpha^n = \Phi_\alpha(\mathrm{Int}(D^n))$。$X$ 作为集合是所有开胞腔的不相交并。

<!-- cw_subcomplex_definition -->
> [!Definition]
> **子复形 Subcomplex**：CW 复形 $X$ 的**子复形 Subcomplex** 是子空间 $A \subseteq X$，满足 $A$ 是某些胞腔的并（包含每个闭胞腔），且 $A$ 本身也是 CW 复形（每个胞腔的闭包完全在 $A$ 中）。$(X, A)$ 称为 **CW 对**。

## CW 复形的例子

<!-- cw_sphere -->
> [!Example]+
> **球面 $S^n$ 的 CW 结构 CW Structure on $S^n$**：
> 1. **极小结构**：$S^n$ 有一个 CW 结构：一个 $0$-胞腔 $e^0$ 和一个 $n$-胞腔 $e^n$（粘合映射 $\varphi: S^{n-1} \to \{e^0\}$ 为常值映射）；
> 2. **赤道分解**：$S^n$ 有另一个 CW 结构：两个 $k$-胞腔（对 $0 \leq k \leq n$），对应上下两个 $k$ 维半球。

<!-- cw_projective_space -->
> [!Example]+
> **实射影空间 $\mathbb{R}P^n$ 的 CW 结构 CW Structure on $\mathbb{R}P^n$**：$\mathbb{R}P^n$ 有一个极小 CW 结构，在每个维数 $0 \leq k \leq n$ 中各有**一个** $k$-胞腔 $e^k$：
> $$\mathbb{R}P^n = e^0 \cup e^1 \cup \cdots \cup e^n.$$
> 第 $k$ 个胞腔 $e^k$ 的特征映射为商映射 $D^k \to \mathbb{R}P^k$（将 $D^k$ 的上半部分同胚映入 $\mathbb{R}P^k \setminus \mathbb{R}P^{k-1}$），粘合映射为双层覆叠 $\varphi_k: S^{k-1} \to \mathbb{R}P^{k-1}$，$\varphi_k(x) = [x]$。

<!-- cw_complex_projective_space -->
> [!Example]+
> **复射影空间 $\mathbb{C}P^n$ 的 CW 结构 CW Structure on $\mathbb{C}P^n$**：$\mathbb{C}P^n$ 有极小 CW 结构，在每个偶数维 $0, 2, 4, \ldots, 2n$ 中各有**一个**胞腔：
> $$\mathbb{C}P^n = e^0 \cup e^2 \cup e^4 \cup \cdots \cup e^{2n}.$$
> 没有奇数维胞腔。第 $2k$ 个胞腔的特征映射为 $D^{2k} \to \mathbb{C}P^k$（将 $D^{2k}$ 同胚映入 $\mathbb{C}P^k \setminus \mathbb{C}P^{k-1}$）。

<!-- cw_grassmannian -->
> [!Example]+
> **Grassmann 流形的 CW 结构（Schubert 胞腔）CW Structure on Grassmannians (Schubert Cells)**：复 Grassmann 流形 $G_\mathbb{C}(k, n)$（$\mathbb{C}^n$ 中 $k$ 维子空间的集合）有由 **Schubert 胞腔**给出的 CW 分解，胞腔由满足 $\lambda_1 \geq \lambda_2 \geq \cdots \geq \lambda_k \geq 0$，$\lambda_i \leq n-k$ 的分拆 $\lambda = (\lambda_1, \ldots, \lambda_k)$（Young 图）标记，对应复维数 $|\lambda| = \sum \lambda_i$ 的胞腔。Schubert 胞腔只出现在**偶数实维数**（即复维数 $|\lambda|$），没有奇数实维胞腔，故所有胞腔边界映射为零。
>
> 特别地：$G_\mathbb{C}(1, n) = \mathbb{C}P^{n-1}$；$G_\mathbb{C}(2, 4)$ 的胞腔对应分拆 $(0,0),(1,0),(2,0),(1,1),(2,1),(2,2)$，实维数分别为 $0,2,4,4,6,8$。
