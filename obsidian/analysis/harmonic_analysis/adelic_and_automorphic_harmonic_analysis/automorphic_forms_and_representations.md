# 自守形式与自守表示

## 商空间上的谱与局部-整体分解

<!-- adelic_automorphic_form_definition -->
> [!Definition]
> **自守形式 Automorphic Form**：设 $G$ 是定义在全局域 $K$ 上的约化代数群。自守形式是商空间
> $$
> G(K)\backslash G(\mathbb A_K)
> $$
> 上满足适当光滑性、有限性和增长条件的函数；在 Archimedean 位置还要求 $K_\infty$-有限性和中心有限性等条件。具体定义随所用的函数空间范畴而定。

<!-- adelic_central_character_definition -->
> [!Definition]
> **中心特征 Central Character**：若 $Z_G$ 是 $G$ 的中心，角色
> $$
> \omega:Z_G(K)\backslash Z_G(\mathbb A_K)\to\mathbb{C}^\times
> $$
> 称为自守形式 $f$ 的中心特征，若
> $$
> f(zg)=\omega(z)f(g).
> $$

<!-- adelic_cusp_form_definition -->
> [!Definition]
> **尖点形式 Cusp Form**：自守形式 $f$ 称为尖点形式，若对每个真 $K$-有理抛物子群 $P=MN$，其常数项为零：
> $$
> \int_{N(K)\backslash N(\mathbb A_K)}f(ng)\,dn=0.
> $$
> 尖点条件排除了沿真抛物子群方向的非衰减部分。

<!-- adelic_cuspidal_l2_theorem -->
> [!Theorem]
> **尖点谱的平方可积性 Square Integrability of the Cuspidal Spectrum**：具有酉中心特征的尖点自守形式属于相应中心商上的 $L^2$ 空间。尖点子空间在右正则表示下不变，并离散分解为不可约酉自守表示的 Hilbert 直和。
>
> **证明思路**：尖点条件结合约化理论给出基本区域尖端处的快速衰减，故 $L^2$ 可积。右平移不变性和谱理论随后给出离散正交分解。

<!-- adelic_automorphic_representation_definition -->
> [!Definition]
> **自守表示 Automorphic Representation**：右正则表示在尖点空间或离散自守谱中的不可约子商称为自守表示。若 $\pi$ 不可约可容许，则在适当限制下有受限张量积分解
> $$
> \pi\cong\bigotimes_v'\pi_v,
> $$
> 其中 $\pi_v$ 是 $G(K_v)$ 的不可约可容许局部表示，且几乎所有 $\pi_v$ 未分歧。

<!-- adelic_local_global_principle -->
> [!Proposition]
> **局部-整体原则 Local-Global Principle for Automorphic Representations**：自守表示的局部因子 $\pi_v$ 编码每个完备化处的谐波信息；全局自守性则对这些局部表示施加兼容条件。局部数据的任意集合通常并不自动来自全局自守表示。

> **来源**：Stephen Gelbart, *Automorphic Forms on Adele Groups*；Daniel Bump, *Automorphic Forms and Representations*, Chapters 1--3。
