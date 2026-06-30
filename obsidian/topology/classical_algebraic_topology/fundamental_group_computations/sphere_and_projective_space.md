# 球面与射影空间的基本群

## 高维球面的基本群

<!-- sphere_simply_connected -->
> [!Theorem]
> **高维球面单连通 Higher-Dimensional Spheres are Simply Connected**：对 $n \geq 2$，$n$ 维球面 $S^n$ 是单连通的，即：
> $$\pi_1(S^n, *) = 0, \quad n \geq 2.$$
>
> **证明思路**：设 $\gamma: I \to S^n$ 是以 $* \in S^n$ 为基点的回路。将 $S^n$ 覆盖为北半球 $U_+$（包含北极点邻域）和南半球 $U_-$（包含南极点邻域）两个开集，两者均同胚于 $\mathbb{R}^n$（从而单连通），其交 $U_+ \cap U_- \simeq S^{n-1}$（在 $n \geq 2$ 时道路连通）。利用 Lebesgue 数引理，将 $\gamma$ 细分为若干段，每段落在 $U_+$ 或 $U_-$ 之一中；在每段内利用该段所在半球的单连通性（$\mathbb{R}^n$ 可缩）将其收缩，逐步将 $\gamma$ 形变为常值回路。
>
> 另一论证：$\gamma$ 的像为 $I$ 在 $S^n$ 中的连续像，维数 $1 < n$；利用单纯逼近或 Sard 引理，$\gamma$ 可任意接近于不满射的映射，故与某个不经过北极点 $N$ 的回路道路同伦；而 $S^n \setminus \{N\} \cong \mathbb{R}^n$ 可缩，从而 $\gamma$ 同伦于常值回路。

## 实射影空间的基本群

<!-- real_projective_space_fundamental_group -->
> [!Theorem]
> **实射影空间的基本群 Fundamental Group of Real Projective Space**：对 $n \geq 2$，$n$ 维实射影空间 $\mathbb{R}P^n$ 的基本群为：
> $$\pi_1(\mathbb{R}P^n, [e_1]) \cong \mathbb{Z}/2\mathbb{Z}, \quad n \geq 2.$$
>
> **证明思路**：考虑商映射 $p: S^n \to \mathbb{R}P^n$，将对径点 $x$ 和 $-x$ 等同，即 $p(x) = [x]$。$p$ 是 $2$-层覆叠映射：对每个 $[x] \in \mathbb{R}P^n$，$p^{-1}([x]) = \{x, -x\}$。由于 $S^n$（$n \geq 2$）单连通，$S^n$ 是 $\mathbb{R}P^n$ 的万有覆叠空间，覆叠次数为 $2$。覆叠理论给出 $\pi_1(\mathbb{R}P^n) \cong$ 甲板变换群（Deck transformation group）$\cong \mathbb{Z}/2\mathbb{Z}$（甲板变换只有恒等变换和对径映射 $x \mapsto -x$ 两个）。
>
> 直接构造：令 $\alpha: I \to \mathbb{R}P^n$ 为道路 $\alpha(t) = [(\cos\pi t, \sin\pi t, 0, \ldots, 0)]$（即在 $\mathbb{R}P^n$ 中连接 $[e_1]$ 到 $[-e_1] = [e_1]$ 的回路）。其提升为 $\tilde\alpha(t) = (\cos\pi t, \sin\pi t, 0,\ldots, 0)$：$\tilde\alpha(0) = e_1$，$\tilde\alpha(1) = -e_1 \neq e_1$，故 $[\alpha]$ 非平凡；而 $\alpha * \alpha$ 的提升终点为 $-(-e_1) = e_1$，故 $[\alpha]^2 = [c_{[e_1]}]$，即 $[\alpha]$ 是 $2$ 阶元，$\pi_1(\mathbb{R}P^n) \cong \mathbb{Z}/2\mathbb{Z}$。

<!-- real_projective_line_fundamental_group -->
> [!Example]+
> **实射影直线 $\mathbb{R}P^1$**：$\mathbb{R}P^1 \cong S^1$（同胚），故 $\pi_1(\mathbb{R}P^1) \cong \mathbb{Z}$。注意 $n=1$ 时定理不适用，因为 $S^1$ 不单连通。

<!-- projective_space_summary -->
> [!Example]+
> **基本群汇总 Summary**：
> | 空间 | 基本群 |
> |---|---|
> | $S^n$（$n \geq 2$） | $0$ |
> | $S^1$ | $\mathbb{Z}$ |
> | $\mathbb{R}P^1 \cong S^1$ | $\mathbb{Z}$ |
> | $\mathbb{R}P^n$（$n \geq 2$） | $\mathbb{Z}/2\mathbb{Z}$ |
> | $T^n = (S^1)^n$ | $\mathbb{Z}^n$ |
