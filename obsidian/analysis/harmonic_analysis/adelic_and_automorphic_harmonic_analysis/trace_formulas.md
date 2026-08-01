# 迹公式的入门

## 谱侧、几何侧与稳定化

<!-- adelic_kernel_function_definition -->
> [!Definition]
> **核函数 Kernel Function**：对适当的测试函数 $f\in C_c^\infty(G(\mathbb A_K))$，右正则表示的卷积算子形式上有核
> $$
> K_f(x,y)=\sum_{\gamma\in G(K)}f(x^{-1}\gamma y).
> $$
> 迹公式比较该核沿对角线的积分与其按共轭类或表示谱的不同展开。

<!-- adelic_selberg_trace_formula -->
> [!Theorem]
> **Selberg 迹公式的模型 Selberg Trace Formula Model**：对具有有限体积商的适当群及测试函数，Selberg 迹公式将谱数据与共轭类数据联系，原型形式为
> $$
> \sum_{\pi}m(\pi)\operatorname{tr}\pi(f)
> =\sum_{[\gamma]}\operatorname{vol}\bigl(G_\gamma(K)\backslash G_\gamma(\mathbb A_K)\bigr)
> O_\gamma(f),
> $$
> 其中左侧为离散谱侧，右侧为几何侧；非紧商还需加入连续谱和截断项。
>
> **证明思路**：将核 $K_f(x,y)$ 在商空间对角线积分。一方面按正则表示的谱分解求迹，另一方面将 $\gamma$ 按共轭类分组并展开积分，得到轨道积分。

<!-- adelic_orbital_integral_definition -->
> [!Definition]
> **轨道积分 Orbital Integral**：对半单元素 $\gamma\in G(K)$，其轨道积分形式上为
> $$
> O_\gamma(f)=\int_{G_\gamma(\mathbb A_K)\backslash G(\mathbb A_K)}
> f(x^{-1}\gamma x)\,dx,
> $$
> 其中 $G_\gamma$ 是 $\gamma$ 的中心化子。测度归一化和收敛性在具体迹公式中必须精确指定。

<!-- adelic_arthur_selberg_trace_formula -->
> [!Theorem]
> **Arthur--Selberg 迹公式 Arthur--Selberg Trace Formula**：Arthur 的不变迹公式通过截断处理一般约化群商空间的发散，将谱侧按离散自守表示和连续诱导数据组织，并将几何侧按加权轨道积分组织。它是比较不同群的自守谱、研究函子性的重要工具。
>
> **证明思路**：使用 Arthur 截断算子使核的积分可控，分别对截断核进行谱展开和几何展开；证明两侧的多项式型截断参数依赖相同，进而比较常数项。

<!-- adelic_stabilization_motivation -->
> [!Definition]
> **稳定化的动机 Motivation for Stabilization**：不变迹公式的轨道积分并不天然适合跨群比较。稳定化通过稳定共轭、内禀 endoscopy 数据和转移因子，将两侧重组为稳定分布，使端oscopic 群之间的迹公式能够匹配。

> **来源**：James Arthur, *The Endoscopic Classification of Representations*，导言；James Arthur, "A Trace Formula for Reductive Groups I", *Duke Mathematical Journal* 45 (1978)；Dennis Hejhal, *The Selberg Trace Formula for PSL(2,R)*。
