# Schwarz 引理与 Schwarz-Pick 引理

## Schwarz 引理

<!-- schwarz_lemma -->
> [!Theorem]
> **Schwarz 引理 Schwarz Lemma**：设 $f:\mathbb D\to\mathbb D$ 全纯且 $f(0)=0$，则
> $$
> |f(z)|\le|z|,\qquad |f'(0)|\le1.
> $$
> 若等号在某个非零点成立，或 $|f'(0)|=1$，则 $f(z)=e^{i\theta}z$，其中 $\theta\in\mathbb R$。
>
> **证明思路**：函数 $f(z)/z$ 在 $0$ 处可去；在半径趋于 $1$ 的圆周上应用最大模原理，再令半径趋于 $1$。

<!-- schwarz_lemma_conformal_normalization -->
> [!Corollary]
> **Schwarz 引理的归一化形式 Normalized Schwarz Lemma**：若 $f:\mathbb D\to\mathbb D$ 全纯，$a=f(0)$，则
> $$
> \left|\frac{f(z)-a}{1-\bar a f(z)}\right|\le|z|.
> $$
> 这说明单位圆盘的伪双曲距离在全纯映射下不增加。

## Schwarz-Pick 引理与 Poincaré 度量

<!-- schwarz_pick_lemma -->
> [!Theorem]
> **Schwarz-Pick 引理 Schwarz-Pick Lemma**：若 $f:\mathbb D\to\mathbb D$ 全纯，则对任意 $z,w\in\mathbb D$，
> $$
> \left|\frac{f(z)-f(w)}{1-\overline{f(w)}f(z)}\right|
> \le
> \left|\frac{z-w}{1-\bar w z}\right|.
> $$
> 等价地，
> $$
> \frac{|f'(z)|}{1-|f(z)|^2}\le\frac1{1-|z|^2}.
> $$
> 若在某一对不同点上等号成立，则 $f$ 是单位圆盘的 Möbius 自同构。
>
> **证明思路**：用单位圆盘自同构将 $w$ 和 $f(w)$ 分别移到 $0$，再应用 Schwarz 引理；导数形式由令 $w\to z$ 得到。

<!-- poincare_metric_disk -->
> [!Definition]
> **单位圆盘上的 Poincaré 度量 Poincaré Metric on the Unit Disk**：单位圆盘上的 Poincaré 线元定义为
> $$
> ds_{\mathbb D}=\frac{2|dz|}{1-|z|^2},
> $$
> 对应的距离记为 $d_{\mathbb D}$。Schwarz-Pick 引理表明每个全纯映射 $f:\mathbb D\to\mathbb D$ 都满足
> $$
> d_{\mathbb D}(f(z),f(w))\le d_{\mathbb D}(z,w).
> $$

<!-- poincare_metric_invariance -->
> [!Theorem]
> **Poincaré 度量的自同构不变性 Invariance under Disk Automorphisms**：单位圆盘的 Möbius 自同构保持 Poincaré 线元和距离；因此它们是 Poincaré 度量的等距变换。
>
> **证明思路**：直接计算 $\varphi'(z)$ 与 $1-|\varphi(z)|^2$ 的关系，得到
> $$
> \frac{|\varphi'(z)|}{1-|\varphi(z)|^2}=\frac1{1-|z|^2}.
> $$

<!-- disk_hyperbolic_geometry -->
> [!Theorem]
> **单位圆盘的双曲几何 Hyperbolic Geometry of the Unit Disk**：Poincaré 度量使 $\mathbb D$ 成为常曲率为 $-1$ 的双曲平面模型；其测地线是直径或与单位圆周正交的圆弧。
>
> **证明思路**：利用 Möbius 自同构将任意测地线问题化到过原点的情形；线元的共形因子计算给出曲率和测地线方程。

> **注**：Schwarz 引理、Schwarz-Pick 引理和 Poincaré 度量参见 Lars Ahlfors, *Complex Analysis*, 3rd ed., Chapter 6。
