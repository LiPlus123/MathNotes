# 低次群上同调的解释

## $H^0$ 与不变量

<!-- group_cohomology_h0_interpretation -->
> [!Proposition]
> **$H^0(G,M)$ 与不变量 $H^0(G,M)$ as Invariants**：
> $$
> H^0(G,M)\cong M^G.
> $$
> 这给出零次群上同调的最基本解释：它刻画在群作用下保持不变的元素。

## $H^1$ 与导子模主导子

<!-- group_cohomology_h1_derivations -->
> [!Theorem]
> **$H^1(G,M)$ 与导子 $H^1(G,M)$ and Derivations**：定义从 $G$ 到 $M$ 的**导子**（derivation，亦称 crossed homomorphism）为满足
> $$
> f(gh)=f(g)+g\cdot f(h)
> $$
> 的函数 $f:G\to M$。主导子（principal derivation）是形如
> $$
> f_m(g)=g\cdot m-m
> $$
> 的导子。则
> $$
> H^1(G,M)\cong \mathrm{Der}(G,M)/\mathrm{PDer}(G,M).
> $$
>
> **证明思路**：bar 复形中 $1$-cocycle 恰是导子，$1$-coboundary 恰是主导子，故其商即为 $H^1(G,M)$。

## $H^2$ 与群扩张

<!-- group_cohomology_h2_extensions -->
> [!Theorem]
> **$H^2(G,M)$ 与群扩张 $H^2(G,M)$ and Group Extensions**：当 $M$ 视为阿贝尔正规子群并带给定 $G$-作用时，
> $$
> H^2(G,M)
> $$
> 与群扩张
> $$
> 1\to M\to E\to G\to 1
> $$
> 的等价类对应。零元对应分裂扩张。
>
> **证明思路**：给定扩张，选集合截面 $s:G\to E$，由乘法偏差定义 $2$-cocycle
> $$
> c(g,h)=s(g)s(h)s(gh)^{-1}\in M.
> $$
> 改变截面只改变 coboundary 类；反过来，任一 $2$-cocycle 可用来扭曲乘法构造扩张群。零类等价于可取群同态截面，即扩张分裂。

## $H_2(G,\mathbb{Z})$ 与 Schur 乘子

<!-- schur_multiplier_def -->
> [!Definition]
> **Schur 乘子 Schur Multiplier**：群 $G$ 的**Schur 乘子**定义为
> $$
> M(G):=H_2(G,\mathbb{Z}).
> $$
> 它控制 $G$ 的中心扩张，特别是在有限群表示论和射影表示中起重要作用。

<!-- schur_multiplier_interpretation -->
> [!Proposition]
> **Schur 乘子的解释 Interpretation of the Schur Multiplier**：若
> $$
> 1\to R\to F\to G\to1
> $$
> 是自由群表示，则 Hopf 公式给出
> $$
> H_2(G,\mathbb{Z})\cong \frac{R\cap [F,F]}{[F,R]}.
> $$
>
> **证明思路**：这是群下同调的经典结果，可由自由分解与 bar 分解比较得到。它说明 $H_2(G,\mathbb{Z})$ 记录了关系模中“交换子型”部分的额外信息。