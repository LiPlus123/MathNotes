# 高斯引理 Gauss's Lemma

## 本原多项式

<!-- gauss_primitive_polynomial_def -->
> [!Definition]
> **本原多项式 Primitive Polynomial**：设 $f(x)\in\mathbb{Z}[x]$ 为非零多项式，若其系数的最大公因数为 $1$，等价地
> $$c(f)=1,$$
> 则称 $f(x)$ 为本原多项式。

## 高斯引理

<!-- gauss_lemma_primitive_product_theorem -->
> [!Theorem]
> **高斯引理（本原性保持） Gauss's Lemma for Primitive Products**：若 $f(x),g(x)\in\mathbb{Z}[x]$ 都是本原多项式，则 $f(x)g(x)$ 仍是本原多项式。

> **证明思路**：反设存在素数 $p$ 整除 $f g$ 的全部系数。取 $f,g$ 中首个不被 $p$ 整除的系数位置，考察对应次数项的系数，可得到其不被 $p$ 整除，矛盾。

<!-- gauss_lemma_irreducibility_transfer_theorem -->
> [!Theorem]
> **高斯引理（不可约性转移） Irreducibility Transfer Between $\mathbb{Z}[x]$ and $\mathbb{Q}[x]$**：设 $f(x)\in\mathbb{Z}[x]$ 为本原非常数多项式，则
> $$f(x)\text{ 在 }\mathbb{Z}[x]\text{ 中不可约 }\Longleftrightarrow f(x)\text{ 在 }\mathbb{Q}[x]\text{ 中不可约}.$$

> **证明思路**：必要性平凡。充分性方向中，若 $f$ 在 $\mathbb{Q}[x]$ 可约，则清分母后可写成两本原整系数多项式之积，再利用本原性保持可将分解下沉到 $\mathbb{Z}[x]$，与在 $\mathbb{Z}[x]$ 不可约矛盾。