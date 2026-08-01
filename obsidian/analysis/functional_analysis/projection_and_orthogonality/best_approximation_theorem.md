# 最佳逼近定理

<!-- functional_analysis_best_approximation_theorem -->
> [!Theorem]
> **最佳逼近定理 Best Approximation Theorem**：设 $M$ 是 Hilbert 空间 $H$ 的非空闭凸集。对每个 $x\in H$，存在唯一 $m_0\in M$ 使
> $$
> \|x-m_0\|=\inf_{m\in M}\|x-m\|.
> $$
> **证明思路**：取极小化序列，平行四边形恒等式与凸性证明其为柯西列；闭性给出极限。严格凸性给出唯一性。