# 共形映射初步

## 共形映射的定义

<!-- conformal_map_definition -->
> [!Definition]
> **共形映射 Conformal Mapping**：设 $D,E\subseteq\mathbb{C}$ 为区域，映射 $f:D\to E$ 称为在 $z_0\in D$ 处共形，若 $f$ 在 $z_0$ 的某邻域内保角且保向：任意两条在 $z_0$ 处具有非零切向量的光滑曲线，其夹角在映射后保持不变。
>
> 映射 $f$ 称为共形映射，若它在 $D$ 的每一点都共形。通常还要求 $f$ 是双射，从而得到区域之间的共形等价。

<!-- conformal_holomorphic_characterization -->
> [!Theorem]
> **共形映射的解析刻画 Analytic Characterization of Conformal Maps**：若 $f:D\to\mathbb{C}$ 在 $z_0$ 附近全纯，则
> $$
> f\text{ 在 }z_0\text{ 处共形}
> \Longleftrightarrow f'(z_0)\ne0.
> $$
> 若 $f$ 是双射且在 $D$ 上全纯、$f'(z)\ne0$ 对所有 $z\in D$ 成立，则 $f$ 是共形映射，且其逆映射也全纯。
>
> **证明思路**：全纯函数在 $z_0$ 附近的一阶近似为
> $$
> f(z_0+h)=f(z_0)+f'(z_0)h+o(|h|).
> $$
> 非零复数乘法是旋转与伸缩的复合，保持有向角；$f'(z_0)=0$ 时一阶近似退化，不能保证局部保角。

<!-- conformal_inverse_function -->
> [!Theorem]
> **局部共形逆映射 Local Conformal Inverse**：若 $f$ 在 $z_0$ 附近全纯且 $f'(z_0)\ne0$，则存在 $z_0$ 的邻域 $U$ 和 $f(z_0)$ 的邻域 $V$，使得 $f:U\to V$ 为双全纯映射，即 $f$ 在 $U$ 上双射且 $f^{-1}$ 在 $V$ 上全纯。
>
> **证明思路**：将 $f$ 视为实映射时，其 Jacobian 行列式为
> $$
> J_f(z_0)=|f'(z_0)|^2>0.
> $$
> 使用实逆函数定理得到局部微分同胚，再利用复导数关系证明逆映射全纯。

## 几何意义

<!-- conformal_local_geometry -->
> [!Theorem]
> **共形映射的局部几何意义 Local Geometry of a Conformal Map**：若 $f'(z_0)\ne0$，则在 $z_0$ 附近，$f$ 的一阶行为是乘以 $f'(z_0)$：长度局部按 $|f'(z_0)|$ 倍缩放，方向旋转 $\arg f'(z_0)$，有向角保持不变。
>
> **证明思路**：由复微分 $df=f'(z_0)\,dz$，非零复数 $f'(z_0)=|f'(z_0)|e^{i\theta}$ 具有伸缩因子 $|f'(z_0)|$ 和旋转角 $\theta$。

<!-- conformal_examples -->
> [!Example]+
> **共形映射的例子 Examples of Conformal Maps**：
> 1. 非零仿射映射 $f(z)=az+b$（$a\ne0$）把任意区域共形地映到其像；
> 2. 指数函数在每一点都满足 $e^z\ne0$，但在整个复平面上不是单射；
> 3. Möbius 变换 $f(z)=(az+b)/(cz+d)$（$ad-bc\ne0$）在其定义域上共形，并在广义复平面上给出双射。

<!-- conformal_not_holomorphic_orientation -->
> [!Example]+
> **反共形映射 Anti-Conformal Map**：共轭映射 $f(z)=\bar z$ 保持无向角的大小但反转方向。它处处实可微且 Jacobian 行列式为 $-1$，但不全纯，因此不是保向意义下的共形映射。

> **注**：共形映射的解析刻画参见 Lars Ahlfors, *Complex Analysis*, 3rd ed., Chapter 3，以及 John B. Conway, *Functions of One Complex Variable I*, Chapter 5。
