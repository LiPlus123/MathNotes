# 链复形的定义

## 链复形

<!-- chain_complex_def -->
> [!Definition]
> **链复形 Chain Complex**：设 $R$ 是一个环，$R\text{-}\mathbf{Mod}$ 是左 $R$-模范畴。一个**链复形**（chain complex）$(C_\bullet, \partial)$ 是一族左 $R$-模 $(C_n)_{n \in \mathbb{Z}}$ 连同 $R$-模同态族
> $$
> \partial_n: C_n \to C_{n-1} \quad (n \in \mathbb{Z}),
> $$
> 满足**边界条件**：对所有 $n \in \mathbb{Z}$，
> $$
> \partial_{n-1} \circ \partial_n = 0.
> $$
> 即写成如下无穷序列：
> $$
> \cdots \to C_{n+1} \xrightarrow{\partial_{n+1}} C_n \xrightarrow{\partial_n} C_{n-1} \to \cdots
> $$
> 其中 $\partial_n$ 称为**第 $n$ 级边界算子**（boundary operator），或**微分**（differential）。

> **注**：边界条件 $\partial_{n-1} \circ \partial_n = 0$ 等价于 $\mathrm{im}\,\partial_{n+1} \subseteq \ker\partial_n$，即每级的像包含于下一级的核，这是同调群有意义的前提。

## 上链复形

<!-- cochain_complex_def -->
> [!Definition]
> **上链复形 Cochain Complex**：一个**上链复形**（cochain complex）$(C^\bullet, d)$ 是一族左 $R$-模 $(C^n)_{n \in \mathbb{Z}}$ 连同 $R$-模同态族
> $$
> d^n: C^n \to C^{n+1} \quad (n \in \mathbb{Z}),
> $$
> 满足 $d^{n+1} \circ d^n = 0$，即写成：
> $$
> \cdots \to C^{n-1} \xrightarrow{d^{n-1}} C^n \xrightarrow{d^n} C^{n+1} \to \cdots
> $$
> 其中 $d^n$ 称为**上边界算子**（coboundary operator）。

> **注**：上链复形是链复形的对偶概念。若 $(C_\bullet, \partial)$ 是链复形，令 $C^n = C_{-n}$，$d^n = \partial_{-n}$，则得到上链复形。在实践中，链复形与上链复形常可相互转化。

## 有界链复形

<!-- bounded_chain_complex_def -->
> [!Definition]
> **有界链复形 Bounded Chain Complex**：链复形 $(C_\bullet, \partial)$ 称为：
> - **有下界的**（bounded below），若存在 $N \in \mathbb{Z}$ 使得对所有 $n < N$ 均有 $C_n = 0$；
> - **有上界的**（bounded above），若存在 $N \in \mathbb{Z}$ 使得对所有 $n > N$ 均有 $C_n = 0$；
> - **有界的**（bounded），若既有下界又有上界，即仅有有限多个 $C_n \neq 0$。

## 双复形与全复形

<!-- double_complex_def -->
> [!Definition]
> **双复形 Double Complex (Bicomplex)**：一个**双复形**（double complex）$(C^{\bullet,\bullet}, d^h, d^v)$ 是一族左 $R$-模 $(C^{p,q})_{p,q \in \mathbb{Z}}$ 连同**水平微分**和**垂直微分**：
> $$
> d^h_{p,q}: C^{p,q} \to C^{p+1,q}, \quad d^v_{p,q}: C^{p,q} \to C^{p,q+1},
> $$
> 满足：
> $$
> (d^h)^2 = 0, \quad (d^v)^2 = 0, \quad d^h \circ d^v + d^v \circ d^h = 0.
> $$
> （若第三条改为 $d^h \circ d^v = d^v \circ d^h$，则称为**反交换双复形**，通过符号约定可相互转化。）

<!-- total_complex_def -->
> [!Definition]
> **全复形 Total Complex**：设 $(C^{\bullet,\bullet}, d^h, d^v)$ 是双复形，其**全复形**（total complex）$\mathrm{Tot}(C^{\bullet,\bullet})$ 定义为：
> $$
> \mathrm{Tot}(C^{\bullet,\bullet})^n = \bigoplus_{p+q=n} C^{p,q},
> $$
> 其上的微分 $D^n: \mathrm{Tot}^n \to \mathrm{Tot}^{n+1}$ 在分量 $C^{p,q}$ 上为：
> $$
> D|_{C^{p,q}} = d^h_{p,q} + (-1)^p d^v_{p,q}.
> $$
> 可验证 $D^2 = 0$，故全复形确实是上链复形。

> **注**：若 $C^{p,q}$ 仅在有限多对 $(p,q)$ 上非零，则直积与直和一致。一般情形下也可取 $\mathrm{Tot}^n = \prod_{p+q=n} C^{p,q}$（乘积全复形）。
