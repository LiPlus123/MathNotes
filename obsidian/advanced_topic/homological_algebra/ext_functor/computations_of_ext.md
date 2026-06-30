# Ext 的计算

## 基本计算：$\mathrm{Ext}_{\mathbb{Z}}^n(\mathbb{Z}/m,\mathbb{Z}/n)$

<!-- ext_zm_zn_computation -->
> [!Theorem]
> **$\mathbb{Z}$ 上的标准计算 Standard Computation over $\mathbb{Z}$**：设 $m,n\ge1$，则
> $$
> \mathrm{Ext}_{\mathbb{Z}}^0(\mathbb{Z}/m,\mathbb{Z}/n)
> \cong \mathrm{Hom}_{\mathbb{Z}}(\mathbb{Z}/m,\mathbb{Z}/n)
> \cong \mathbb{Z}/\gcd(m,n),
> $$
> $$
> \mathrm{Ext}_{\mathbb{Z}}^1(\mathbb{Z}/m,\mathbb{Z}/n)
> \cong (\mathbb{Z}/n)/m(\mathbb{Z}/n)
> \cong \mathbb{Z}/\gcd(m,n),
> $$
> 且对 $k\ge2$，
> $$
> \mathrm{Ext}_{\mathbb{Z}}^k(\mathbb{Z}/m,\mathbb{Z}/n)=0.
> $$
>
> **证明思路**：用 $\mathbb{Z}/m$ 的长度 $1$ 自由分解
> $$
> 0\to\mathbb{Z}\xrightarrow{\cdot m}\mathbb{Z}\to\mathbb{Z}/m\to0
> $$
> 作用 $\mathrm{Hom}_{\mathbb{Z}}(-,\mathbb{Z}/n)$ 后得到复形
> $$
> 0\to\mathbb{Z}/n\xrightarrow{\cdot m}\mathbb{Z}/n\to0,
> $$
> 其核与余核都同构于 $\mathbb{Z}/\gcd(m,n)$。

## 有限生成阿贝尔群间的 Ext

<!-- ext_finitely_generated_abelian_groups -->
> [!Proposition]
> **有限生成阿贝尔群间的 Ext Ext between Finitely Generated Abelian Groups**：设
> $$
> A\cong \mathbb{Z}^r\oplus\bigoplus_{i=1}^t\mathbb{Z}/m_i,
> $$
> 则对任意阿贝尔群 $B$：
> $$
> \mathrm{Ext}_{\mathbb{Z}}^1(A,B)
> \cong \mathrm{Ext}_{\mathbb{Z}}^1(\mathbb{Z}^r,B)\oplus\bigoplus_{i=1}^t \mathrm{Ext}_{\mathbb{Z}}^1(\mathbb{Z}/m_i,B)
> \cong \bigoplus_{i=1}^t B/m_iB.
> $$
> 特别地，若
> $$
> B\cong \mathbb{Z}^s\oplus\bigoplus_{j=1}^u\mathbb{Z}/n_j,
> $$
> 则
> $$
> \mathrm{Ext}_{\mathbb{Z}}^1(A,B)
> \cong \bigoplus_{i=1}^t\left(\mathbb{Z}/m_i\right)^s
> \oplus\bigoplus_{i=1}^t\bigoplus_{j=1}^u\mathbb{Z}/\gcd(m_i,n_j).
> $$
>
> **证明思路**：利用 Ext 对第一变量直和可加性，以及
> $$
> \mathrm{Ext}_{\mathbb{Z}}^1(\mathbb{Z},B)=0,\quad
> \mathrm{Ext}_{\mathbb{Z}}^1(\mathbb{Z}/m,B)\cong B/mB.
> $$

## PID 上 Ext 的结构

<!-- ext_over_pid_structure -->
> [!Theorem]
> **PID 上 Ext 的结构 Structure of Ext over a PID**：设 $R$ 是主理想整环（PID），$M,N$ 为有限生成 $R$-模。则：
> 1. $\mathrm{pd}_R(M)\le1$，故
> $$
> \mathrm{Ext}_R^k(M,N)=0\quad(k\ge2);
> $$
> 2. 写 $M\cong R^r\oplus T(M)$（$T(M)$ 为挠子模），则
> $$
> \mathrm{Ext}_R^1(M,N)\cong \mathrm{Ext}_R^1(T(M),N);
> $$
> 3. 对循环挠模 $R/(a)$，有
> $$
> \mathrm{Ext}_R^1(R/(a),N)\cong N/aN.
> $$
>
> **证明思路**：PID 上有限生成模有标准分解；每个挠循环块都有长度 $1$ 自由分解，拼接后得到一般结论。

## 示例

<!-- ext_example_z4_z6 -->
> [!Example]+
> **示例：$\mathrm{Ext}_{\mathbb{Z}}^1(\mathbb{Z}/4,\mathbb{Z}/6)$ Example**：由上式
> $$
> \mathrm{Ext}_{\mathbb{Z}}^1(\mathbb{Z}/4,\mathbb{Z}/6)
> \cong \mathbb{Z}/\gcd(4,6)
> = \mathbb{Z}/2.
> $$
> 因而 $0\to\mathbb{Z}/6\to E\to\mathbb{Z}/4\to0$ 的扩张等价类恰有两个：一个分裂类（零元），一个非分裂类（非零元）。

> **注**：这些计算是后续群上同调、谱序列及导出范畴中具体算例的基础。