# Hadamard 因子分解定理

## 亏格与规范化乘积

<!-- weierstrass_product_genus -->
> [!Definition]
> **Weierstrass 乘积的亏格 Genus of a Weierstrass Product**：设零点列 $(a_n)$ 的收敛指数为 $\lambda$。若取同一整数 $p$ 作为所有初等因子的指标，使
> $$
> \prod_n E_p\left(\frac{z}{a_n}\right)
> $$
> 收敛，则称该乘积的亏格为 $p$。通常取使 $p+1>\lambda$ 的最小整数，以获得规范的收敛控制。

<!-- hadamard_factorization_theorem -->
> [!Theorem]
> **Hadamard 因子分解定理 Hadamard Factorization Theorem**：设 $f$ 是阶为有限值 $\rho$ 的整函数，$f$ 在 $0$ 处的零点阶为 $m$，非零零点按重数记为 $(a_n)$。令 $p$ 为不小于零点列收敛指数的最小整数，即 $p=\lceil\lambda\rceil$（当 $\lambda$ 为整数时需按收敛性选择相应规范）。则存在多项式 $g$，使
> $$
> f(z)=z^m e^{g(z)}\prod_{n=1}^{\infty}E_p\left(\frac{z}{a_n}\right).
> $$
> 并且可取 $\deg g\le\rho$；若 $\rho$ 不是整数，则 $\deg g\le\lfloor\rho\rfloor$。
>
> **证明思路**：Weierstrass 因子乘积消去 $f$ 的全部零点；商函数整且无零点，故可写为 $e^{g}$。利用有限阶增长估计证明 $g$ 必为次数受 $\rho$ 控制的多项式。

<!-- hadamard_factorization_canonical_form -->
> [!Corollary]
> **有限阶整函数的规范分解 Canonical Factorization of Finite-Order Entire Functions**：有限阶整函数由三部分决定其基本结构：原点处的有限阶零点 $z^m$、控制增长的指数多项式 $e^{g(z)}$、以及由全部非零零点组成的规范 Weierstrass 乘积。零点分布与增长阶之间通过 $p$ 和 $\deg g$ 联系起来。

<!-- hadamard_polynomial_special_case -->
> [!Example]+
> **多项式的 Hadamard 分解 Hadamard Factorization of a Polynomial**：若
> $$
> f(z)=c\prod_{j=1}^{N}(z-a_j)^{m_j},
> $$
> 则其零点列有限，Weierstrass 乘积退化为有限乘积，指数因子可并入常数 $c$。因此 Hadamard 分解在多项式情形退化为通常的代数因式分解。

<!-- hadamard_factorization_uniqueness_note -->
> [!Theorem]
> **分解的规范性与剩余自由度 Normalization and Remaining Freedom**：固定零点重数和初等因子指标后，Hadamard 分解中的指数因子至多因一个使指数函数不变的常数倍而有规范差异；若不固定初等因子指标，则可通过改变指数多项式重新组织乘积。
>
> **证明思路**：两个分解相除后得到无零点整函数；对其取对数并使用有限阶条件，得到指数中的差为多项式，常数部分只改变整体常数因子。

> **注**：Hadamard 因子分解定理参见 John B. Conway, *Functions of One Complex Variable I*, Chapter 5，以及 Lars Ahlfors, *Complex Analysis*, 3rd ed., Chapter 8。
