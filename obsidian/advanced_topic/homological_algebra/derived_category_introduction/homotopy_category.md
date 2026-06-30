# 链同伦范畴

## 链同伦类作为态射

<!-- chain_homotopy_relation_recalled -->
> [!Definition]
> **链同伦关系 Chain Homotopy Relation**：设 $C_\bullet,D_\bullet$ 是链复形。若两个链映射 $f_\bullet,g_\bullet:C_\bullet\to D_\bullet$ 满足存在链同伦算子 $h_n:C_n\to D_{n+1}$ 使
> $$
> g_n-f_n=\partial^D_{n+1}h_n+h_{n-1}\partial^C_n,
> $$
> 则称 $f_\bullet$ 与 $g_\bullet$ **链同伦**，记作
> $$
> f_\bullet\simeq g_\bullet.
> $$
> 这是链映射集合上的等价关系，且与复合相容。

## 链同伦范畴

<!-- homotopy_category_def -->
> [!Definition]
> **链同伦范畴 Homotopy Category**：设 $R$ 是环。$R$-模链复形的**链同伦范畴**记作
> $$
> K(R\text{-}\mathbf{Mod}).
> $$
> 其定义为：
> - 对象：所有链复形 $C_\bullet$；
> - 态射：链映射的链同伦类
> $$
> \mathrm{Hom}_{K(R\text{-}\mathbf{Mod})}(C_\bullet,D_\bullet)
> := \mathrm{Hom}_{\mathbf{Ch}(R\text{-}\mathbf{Mod})}(C_\bullet,D_\bullet)/\simeq;
> $$
> - 复合：由链映射复合诱导。

> **注**：链同伦等价的链复形在该范畴中同构，因为链同伦逆恰在商掉链同伦后变成真正逆元。

## 平移与映射锥在同伦范畴中的作用

<!-- shift_and_cone_in_homotopy_category -->
> [!Proposition]
> **平移与映射锥在同伦范畴中的角色 Shift and Cone in the Homotopy Category**：链复形平移 $C_\bullet[1]$ 与映射锥 $\mathrm{Cone}(f)$ 在链同伦范畴中仍有良定义，并为后续构造可分辨三角提供基本数据：
> $$
> C_\bullet \xrightarrow{f} D_\bullet \to \mathrm{Cone}(f) \to C_\bullet[1].
> $$
>
> **证明思路**：平移和映射锥的构造对链映射函子性成立，而链同伦的链映射诱导相同同调，并给出同伦范畴中的相同态射，因此这些构造可下降到 $K(R\text{-}\mathbf{Mod})$。

## 同伦范畴的意义

<!-- homotopy_category_significance -->
> [!Corollary]
> **同伦范畴的意义 Significance of the Homotopy Category**：$K(R\text{-}\mathbf{Mod})$ 比链复形范畴更贴近同调信息，因为它已经把“仅差一个链同伦”的链映射识别为同一态射。但它仍未将所有拟同构变成同构，这正是导出范畴要进一步完成的步骤。