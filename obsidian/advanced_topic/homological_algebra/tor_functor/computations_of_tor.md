# Tor 的计算

## $\mathbb{Z}$ 上的标准计算

<!-- tor_zm_zn_computation -->
> [!Theorem]
> **$\mathbb{Z}$ 上的 Tor 计算 Standard Computation of Tor over $\mathbb{Z}$**：设 $m,n\ge1$，则
> $$
> \mathrm{Tor}_1^{\mathbb{Z}}(\mathbb{Z}/m,\mathbb{Z}/n) \cong \mathbb{Z}/\gcd(m,n),
> $$
> 且
> $$
> \mathrm{Tor}_k^{\mathbb{Z}}(\mathbb{Z}/m,\mathbb{Z}/n)=0, \quad k\ge2.
> $$
>
> **证明思路**：取 $\mathbb{Z}/m$ 的自由分解
> $$
> 0\to\mathbb{Z}\xrightarrow{\cdot m}\mathbb{Z}\to\mathbb{Z}/m\to0,
> $$
> 与 $\mathbb{Z}/n$ 张量后得到
> $$
> 0\to\mathbb{Z}/n\xrightarrow{\cdot m}\mathbb{Z}/n\to0,
> $$
> 其第一同调为乘以 $m$ 的核，即 $\mathbb{Z}/\gcd(m,n)$。

## 有限生成阿贝尔群间的 Tor

<!-- tor_finitely_generated_abelian_groups -->
> [!Proposition]
> **有限生成阿贝尔群间的 Tor Tor between Finitely Generated Abelian Groups**：设
> $$
> A\cong \mathbb{Z}^r\oplus\bigoplus_{i=1}^t \mathbb{Z}/m_i,
> \qquad
> B\cong \mathbb{Z}^s\oplus\bigoplus_{j=1}^u \mathbb{Z}/n_j.
> $$
> 则
> $$
> \mathrm{Tor}_1^{\mathbb{Z}}(A,B)
> \cong \bigoplus_{i=1}^t\bigoplus_{j=1}^u \mathbb{Z}/\gcd(m_i,n_j).
> $$
> 特别地，自由部分对 Tor 没有贡献。
>
> **证明思路**：利用 Tor 对直和可加，以及
> $$
> \mathrm{Tor}_1^{\mathbb{Z}}(\mathbb{Z},B)=0,
> \qquad
> \mathrm{Tor}_1^{\mathbb{Z}}(\mathbb{Z}/m,\mathbb{Z}/n)\cong \mathbb{Z}/\gcd(m,n).
> $$

## 挠模与 Tor

<!-- torsion_modules_and_tor -->
> [!Proposition]
> **扭模与 Tor Torsion Modules and Tor**：在 $\mathbb{Z}$-模情形，$\mathrm{Tor}_1^{\mathbb{Z}}(A,B)$ 仅由 $A$ 与 $B$ 的扭部分决定，且其本身总是扭阿贝尔群。更一般地，在 PID 上，Tor 主要反映模的扭结构。

## 示例

<!-- tor_example_z4_z6 -->
> [!Example]+
> **示例：$\mathrm{Tor}_1^{\mathbb{Z}}(\mathbb{Z}/4,\mathbb{Z}/6)$ Example**：由标准公式，
> $$
> \mathrm{Tor}_1^{\mathbb{Z}}(\mathbb{Z}/4,\mathbb{Z}/6)
> \cong \mathbb{Z}/\gcd(4,6)
> = \mathbb{Z}/2.
> $$
> 而
> $$
> \mathbb{Z}/4\otimes_{\mathbb{Z}}\mathbb{Z}/6
> \cong \mathbb{Z}/2
> $$
> 也是同一个群，但来源不同：前者度量张量积失去左正合性，后者是零次导出。

> **注**：这些标准算例是后续群上同调与谱序列算例的基础。