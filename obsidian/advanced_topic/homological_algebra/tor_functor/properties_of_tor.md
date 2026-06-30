# Tor 的基本性质

## Tor\textsubscript{0} 与张量积

<!-- tor0_tensor_property -->
> [!Proposition]
> **Tor\textsubscript{0} 等于张量积 Tor\textsubscript{0} equals Tensor Product**：对任意右 $R$-模 $M$ 和左 $R$-模 $N$，
> $$
> \mathrm{Tor}_0^R(M,N) \cong M\otimes_R N.
> $$

## 平坦模的判别

<!-- flat_via_tor_characterization -->
> [!Theorem]
> **平坦模的 Tor 判别 Characterization of Flatness by Tor**：对左 $R$-模 $N$，以下命题等价：
> 1. $N$ 是平坦模；
> 2. 对任意右 $R$-模 $M$ 与任意 $n\ge1$，
> $$
> \mathrm{Tor}_n^R(M,N)=0;
> $$
> 3. 对任意右 $R$-模 $M$，
> $$
> \mathrm{Tor}_1^R(M,N)=0.
> $$
>
> **证明思路**：
> - $1\Rightarrow2$：若 $N$ 平坦，则可用长度 $0$ 平坦分解计算，或由张量函子正合性推出高次同调消失；
> - $2\Rightarrow3$：显然；
> - $3\Rightarrow1$：由任意短正合列 $0\to A'\to A\to A''\to0$ 的 Tor 长正合列开头部分
> $$
> \mathrm{Tor}_1^R(A'',N)\to A'\otimes_R N\to A\otimes_R N
> $$
> 以及假设 $\mathrm{Tor}_1^R(A'',N)=0$，可得 $-\otimes_R N$ 保持单射，从而 $N$ 平坦。

## PID 上 Tor 的次数集中

<!-- tor_over_pid_concentration -->
> [!Theorem]
> **PID 上 Tor 集中在 0 与 1 次 Tor over a PID is Concentrated in Degrees 0 and 1**：设 $R$ 是主理想整环（PID），$M$ 是右 $R$-模，$N$ 是左 $R$-模，则
> $$
> \mathrm{Tor}_n^R(M,N)=0, \quad n\ge2.
> $$
>
> **证明思路**：PID 上每个有限生成模有长度至多 $1$ 的自由分解，即投射维数至多 $1$，因此高于 $1$ 次的 Tor 消失。

## 与平坦维数的关系

<!-- tor_and_flat_dimension -->
> [!Corollary]
> **Tor 与平坦维数 Tor and Flat Dimension**：若 $\mathrm{fd}_R(N)\le d$，则对任意右 $R$-模 $M$，
> $$
> \mathrm{Tor}_n^R(M,N)=0, \quad n>d.
> $$
>
> **注**：Tor 的消失次数反映了对象距离平坦对象有多远，这使平坦维数成为可计算的不变量。