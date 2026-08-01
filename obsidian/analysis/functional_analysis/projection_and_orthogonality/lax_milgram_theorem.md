# Lax-Milgram 定理

<!-- functional_analysis_lax_milgram_theorem -->
> [!Theorem]
> **Lax-Milgram 定理 Lax-Milgram Theorem**：设 $H$ 是实或复 Hilbert 空间，$a:H\times H\to\mathbb{F}$ 是连续双线性型（复情形为第一变量共轭线性、第二变量线性），满足
> $$
> |a(u,v)|\leq C\|u\|\|v\|,\qquad \operatorname{Re}a(u,u)\geq\alpha\|u\|^2
> $$
> 其中 $C,\alpha>0$。则对每个 $f\in H^*$，存在唯一 $u\in H$ 使
> $$
> a(u,v)=f(v)\qquad(v\in H),
> $$
> 且 $\|u\|\leq\|f\|/\alpha$。
>
> **证明思路**：由 Riesz 表示定理把 $a$ 表为有界算子 $A$；强制性给出 $A$ 单射且像闭，进而结合其像正交补为零推出满射。

<!-- functional_analysis_lax_milgram_elliptic_application -->
> [!Example]+
> **椭圆方程弱解应用 Elliptic Weak-Solution Application**：对 $H=H_0^1(\Omega)$，若椭圆型方程的弱双线性型连续且强制，则 Lax-Milgram 定理给出其弱解的存在唯一性。