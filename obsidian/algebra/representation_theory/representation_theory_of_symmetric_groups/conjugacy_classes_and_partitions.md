# 共轭类与分拆 Conjugacy Classes and Partitions

<!-- cycle_type_definition -->
> [!Definition]
> **轮换型 Cycle Type**：设 $\sigma \in S_n$ 是一个置换，将其写成不相交轮换的乘积（包括长度为 1 的不动点轮换），设各轮换的长度依递减顺序排列为 $\lambda_1 \geq \lambda_2 \geq \cdots \geq \lambda_k \geq 1$，且 $\lambda_1 + \lambda_2 + \cdots + \lambda_k = n$。称有序组 $(\lambda_1, \lambda_2, \ldots, \lambda_k)$ 为 $\sigma$ 的**轮换型**（cycle type）。

<!-- partition_definition -->
> [!Definition]
> **整数的分拆 Partition of an Integer**：$n$ 的一个**分拆**是满足
> $$\lambda_1 \geq \lambda_2 \geq \cdots \geq \lambda_k \geq 1, \quad \lambda_1 + \lambda_2 + \cdots + \lambda_k = n$$
> 的有序整数组 $\lambda = (\lambda_1, \lambda_2, \ldots, \lambda_k)$，记作 $\lambda \vdash n$。称 $\lambda_i$ 为 $\lambda$ 的**分部**，$k$ 为 $\lambda$ 的**长度**，记 $\ell(\lambda) = k$。$n$ 的所有分拆的集合记为 $\mathcal{P}(n)$，其元素个数为**分拆数** $p(n)$。

> **注**：约定空分拆 $\varnothing \vdash 0$。前几个分拆数为 $p(0)=1,\, p(1)=1,\, p(2)=2,\, p(3)=3,\, p(4)=5,\, p(5)=7$。

<!-- conjugacy_classes_of_sn -->
> [!Theorem]
> **$S_n$ 的共轭类 Conjugacy Classes of $S_n$**：$S_n$ 中两个置换 $\sigma, \tau$ 共轭当且仅当它们的轮换型相同。因此，$S_n$ 的共轭类与 $n$ 的分拆一一对应：
> $$\{\text{$S_n$ 的共轭类}\} \longleftrightarrow \mathcal{P}(n).$$
> 特别地，$S_n$ 恰有 $p(n)$ 个共轭类。

> **证明思路**：若 $\tau = \pi \sigma \pi^{-1}$，则将 $\sigma$ 的不相交轮换分解中每个元素 $i$ 替换为 $\pi(i)$，即得 $\tau$ 的轮换分解，故两者轮换型相同。反之，若 $\sigma$ 和 $\tau$ 有相同轮换型，可以显式构造共轭元 $\pi$：依次将 $\sigma$ 各轮换中的元素映到 $\tau$ 对应轮换中的元素，则 $\tau = \pi \sigma \pi^{-1}$。

<!-- conjugacy_class_size -->
> [!Proposition]
> **共轭类的大小 Size of a Conjugacy Class**：设 $\lambda = (1^{m_1} 2^{m_2} \cdots n^{m_n}) \vdash n$（其中 $m_i$ 表示分部 $i$ 出现的次数，$\sum_i i \cdot m_i = n$），则对应轮换型 $\lambda$ 的共轭类 $C_\lambda$ 的大小为
> $$|C_\lambda| = \frac{n!}{z_\lambda}, \quad z_\lambda = \prod_{i=1}^{n} i^{m_i} \cdot m_i\,.$$
> $z_\lambda$ 称为 $\lambda$ 的**中心化子阶**（即 $\sigma \in C_\lambda$ 的中心化子 $C_{S_n}(\sigma)$ 的阶）。

> **证明思路**：$|C_\lambda| = [S_n : C_{S_n}(\sigma)] = n! / |C_{S_n}(\sigma)|$。$C_{S_n}(\sigma)$ 由对每条等长轮换作内部循环旋转（每条 $i$-轮换给出 $\mathbb{Z}/i\mathbb{Z}$ 的贡献）和同等长轮换之间的置换（$m_i$ 条等长轮换给出 $S_{m_i}$ 的贡献）构成，故 $|C_{S_n}(\sigma)| = z_\lambda$。

<!-- partition_notation_example -->
> [!Example]+
> **$S_4$ 的共轭类 Conjugacy Classes of $S_4$**：$4$ 的分拆共有 $p(4) = 5$ 个：
> $$\lambda = (4),\; (3,1),\; (2,2),\; (2,1,1),\; (1,1,1,1).$$
> 对应 $S_4$ 的五个共轭类及其大小分别为：
> $$|C_{(4)}| = \frac{4!}{4} = 6,\quad |C_{(3,1)}| = \frac{4!}{3} = 8,\quad |C_{(2,2)}| = \frac{4!}{4} = 6,$$
> $$|C_{(2,1,1)}| = \frac{4!}{2} = 12,\quad |C_{(1,1,1,1)}| = \frac{4!}{24} = 1.$$
> 验证：$6+8+6+12+1 = 33 \neq 24$。
>
> 修正：$z_{(4)} = 4^1 \cdot 1! = 4$，$z_{(3,1)} = 3^1 \cdot 1! \cdot 1^1 \cdot 1! = 3$，$z_{(2,2)} = 2^2 \cdot 2! = 8$，$z_{(2,1,1)} = 2^1 \cdot 1! \cdot 1^2 \cdot 2! = 4$，$z_{(1,1,1,1)} = 1^4 \cdot 4! = 24$。
> 于是 $|C_\lambda|$ 分别为 $6, 8, 3, 6, 1$，验证：$6+8+3+6+1 = 24 = 4!$。$\checkmark$
