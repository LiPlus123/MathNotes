# 外形式

## 交替多线性映射

<!-- alternating_multilinear_map -->
> [!Definition]
> **交替多线性映射 Alternating Multilinear Map**：设 $V$ 为域 $F$ 上的 $n$ 维线性空间。称映射
> $$\omega: \underbrace{V \times \cdots \times V}_{k} \to F$$
> 为**交替 $k$-线性映射**（alternating $k$-linear map），若：
> 1. **多线性**：$\omega$ 对每个分量均为 $F$-线性的；
> 2. **交替性**：对任意 $v_1, \ldots, v_k \in V$，若存在 $i \neq j$ 使得 $v_i = v_j$，则 $\omega(v_1, \ldots, v_k) = 0$。

> **注**：交替性等价于：交换任意两个参数时，映射值变号：
> $$\omega(\ldots, v_i, \ldots, v_j, \ldots) = -\omega(\ldots, v_j, \ldots, v_i, \ldots).$$
> 当 $\mathrm{char}(F) \neq 2$ 时，两个条件等价。

## 外形式

<!-- exterior_form_def -->
> [!Definition]
> **$k$ 次外形式 $k$-Form**：设 $V$ 为域 $F$ 上的 $n$ 维线性空间。$V$ 上的 **$k$ 次外形式**（$k$-form）是一个交替 $k$-线性映射 $\omega: V^k \to F$。所有 $k$ 次外形式在逐点加法和数乘下构成 $F$-线性空间，记作 $\bigwedge^k V^*$。特别地：
> - $\bigwedge^0 V^* \cong F$（标量）；
> - $\bigwedge^1 V^* = V^*$（对偶空间，即线性泛函）；
> - $\bigwedge^k V^* = \{0\}$（当 $k > n$ 或 $k < 0$ 时）。

> **注**：$k$ 次外形式也称 **$k$ 次微分形式**（differential $k$-form）或**交替 $k$-线性型**。对 $0$ 次外形式（标量），惯例为 $\bigwedge^0 V^* = F$，与多线性泛函的框架相容。
