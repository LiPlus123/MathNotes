# 双复形的谱序列

## 双复形的两个滤过

<!-- double_complex_filtrations_def -->
> [!Definition]
> **双复形的两个自然滤过 Two Natural Filtrations of a Double Complex**：设 $(C^{\bullet,\bullet}, d^h, d^v)$ 是第一象限双复形，且全复形定义为
> $$
> \operatorname{Tot}^n(C)=\bigoplus_{p+q=n} C^{p,q},
> $$
> 微分为 $D=d^h+(-1)^p d^v$。则全复形上有两个自然滤过：
> - **按列滤过**：
> $$
> F^p\operatorname{Tot}^n = \bigoplus_{i\ge p} C^{i,n-i};
> $$
> - **按行滤过**：
> $$
> {}'F^q\operatorname{Tot}^n = \bigoplus_{j\ge q} C^{n-j,j}.
> $$
> 这两个滤过分别产生两条谱序列。

## 行谱序列与列谱序列

<!-- row_column_spectral_sequences -->
> [!Theorem]
> **由行与列得到的两条谱序列 Row and Column Spectral Sequences**：双复形 $(C^{\bullet,\bullet}, d^h,d^v)$ 产生两条谱序列：
> - 一条先对垂直方向取同调，再对水平微分取同调：
> $$
> E_1^{p,q} \cong H^q(C^{p,\bullet}, d^v), \qquad E_2^{p,q} \cong H^p(H^q(C^{\bullet,\bullet}, d^v), d^h);
> $$
> - 另一条先对水平方向取同调，再对垂直微分取同调：
> $$
> {}'E_1^{p,q} \cong H^p(C^{\bullet,q}, d^h), \qquad {}'E_2^{p,q} \cong H^q(H^p(C^{\bullet,\bullet}, d^h), d^v).
> $$
>
> 若适当有界，则两条谱序列都收敛到全复形的同调 $H^*(\operatorname{Tot}(C))$。

> **证明思路**：分别对全复形应用按列滤过与按行滤过的谱序列构造。第 $E_0$ 页只保留一个方向的微分，因此第 $E_1$ 页就是该方向的同调。

## 共同抽象出全复形同调

<!-- double_complex_common_target -->
> [!Proposition]
> **两条谱序列的共同目标 Common Target of the Two Spectral Sequences**：在第一象限且满足有界条件时，由双复形得到的行谱序列与列谱序列都收敛到同一个对象：
> $$
> E_\infty^{p,q},\ {}'E_\infty^{p,q} \Longrightarrow H^{p+q}(\operatorname{Tot}(C)).
> $$
> 因而可用两种不同的分层方式计算同一个全复形同调。

> **注**：这正是双复形谱序列的核心威力。许多经典定理都来自选择合适的双复形，再从其中一条谱序列容易计算，进而得到全复形同调。