## 素数幂模同余方程

<!-- hensel_lemma -->
> [!Lemma]
> **亨塞尔引理 Hensel's Lemma**：设 $p$ 为素数，$f(x) \in \mathbb{Z}[x]$，$k \geq 1$。设 $x_k$ 满足
> $$f(x_k) \equiv 0 \pmod{p^k}$$
> 若 $f'(x_k) \not\equiv 0 \pmod{p}$（非奇异情形），则存在唯一的 $t \in \{0, 1, \ldots, p-1\}$ 使得
> $$x_{k+1} = x_k + t p^k$$
> 满足 $f(x_{k+1}) \equiv 0 \pmod{p^{k+1}}$，其中 $t \equiv -f(x_k) p^{-k} \cdot (f'(x_k))^{-1} \pmod{p}$。
>
> 从而，模 $p$ 的每个非奇异解可唯一提升为模 $p^k$ 的解（对所有 $k \geq 1$）。
>
> **证明思路**：令 $x_{k+1} = x_k + tp^k$，对 $f$ 进行泰勒展开：
> $$f(x_k + tp^k) \equiv f(x_k) + f'(x_k) \cdot tp^k \pmod{p^{k+1}}$$
> 要求此式 $\equiv 0 \pmod{p^{k+1}}$，因 $p^k \mid f(x_k)$，令 $f(x_k) = p^k \cdot c$，则需 $c + f'(x_k) \cdot t \equiv 0 \pmod{p}$，即 $t \equiv -c \cdot (f'(x_k))^{-1} \pmod{p}$。由 $p \nmid f'(x_k)$ 知逆元存在，$t$ 唯一确定。

<!-- hensel_lemma_singular -->
> [!Lemma]
> **亨塞尔引理（奇异情形）Hensel's Lemma (Singular Case)**：设 $p$ 为素数，$f(x) \in \mathbb{Z}[x]$，$x_k$ 满足 $f(x_k) \equiv 0 \pmod{p^k}$。若 $f'(x_k) \equiv 0 \pmod{p}$（奇异情形），则：
> 1. 若 $f(x_k) \not\equiv 0 \pmod{p^{k+1}}$，则 $x_k$ 不能提升到模 $p^{k+1}$ 的解（无提升）；
> 2. 若 $f(x_k) \equiv 0 \pmod{p^{k+1}}$，则 $x_k$ 的所有 $p$ 个提升 $x_k, x_k + p^k, x_k + 2p^k, \ldots, x_k + (p-1)p^k$ 均为模 $p^{k+1}$ 的解（$p$ 个提升）。
>
> **证明思路**：同样展开 $f(x_k + tp^k) \equiv f(x_k) + f'(x_k) \cdot tp^k \pmod{p^{k+1}}$，当 $p \mid f'(x_k)$ 时，$f'(x_k) \cdot tp^k \equiv 0 \pmod{p^{k+1}}$，故 $f(x_k + tp^k) \equiv f(x_k) \pmod{p^{k+1}}$，对所有 $t$ 相同，情形由 $f(x_k) \bmod p^{k+1}$ 是否为零决定。

<!-- congruence_prime_power_solution_count -->
> [!Theorem]
> **素数幂模同余方程的解数 Number of Solutions Modulo Prime Power**：设 $p$ 为素数，$f(x) \in \mathbb{Z}[x]$，$N_k$ 表示 $f(x) \equiv 0 \pmod{p^k}$ 的不同余解数。
> 1. 模 $p$ 的每个非奇异解在模 $p^k$（$k \geq 1$）下恰好提升为唯一一个解；
> 2. 模 $p$ 的每个奇异解，或无法提升，或提升为 $p$ 个解；
> 3. 因此 $N_k$ 由模 $p$ 的解及其奇异性完全决定。
>
> **证明思路**：对 $k$ 归纳，逐步应用亨塞尔引理（非奇异和奇异两种情形）。

<!-- hensel_lemma_example_nonsingular -->
> [!Example]+
> **非奇异情形的提升 Lifting a Non-Singular Solution**：求 $f(x) = x^2 + 1$ 模 $5^k$ 的解。
>
> 先求模 $5$ 的解：$x^2 \equiv -1 \pmod 5$，即 $x^2 \equiv 4 \pmod 5$，解为 $x \equiv 2$ 和 $x \equiv 3 \pmod 5$。
>
> 对 $x_1 = 2$：$f'(x) = 2x$，$f'(2) = 4 \not\equiv 0 \pmod 5$，非奇异。提升到模 $25$：$f(2) = 5$，$c = 1$，$t \equiv -1 \cdot 4^{-1} \equiv -1 \cdot 4 \equiv -4 \equiv 1 \pmod 5$（因 $4 \cdot 4 = 16 \equiv 1$，故 $4^{-1} \equiv 4$），$x_2 = 2 + 1 \cdot 5 = 7$。验证：$7^2 + 1 = 50 \equiv 0 \pmod{25}$。故 $x \equiv 7 \pmod{25}$。

<!-- hensel_lemma_example_singular -->
> [!Example]+
> **奇异情形 Singular Case**：求 $f(x) = x^2 - p$ 模 $p^2$ 的解（$p$ 为奇素数）。
>
> 模 $p$ 的解：$x^2 \equiv 0 \pmod p$，即 $x \equiv 0 \pmod p$，唯一解 $x_1 = 0$。$f'(x) = 2x$，$f'(0) = 0 \equiv 0 \pmod p$，奇异情形。$f(0) = -p$，$p \mid f(0)$ 但 $p^2 \nmid f(0)$（因 $p \nmid 1$），故属于情形 1，无法提升，$f(x) \equiv 0 \pmod{p^2}$ 无解。
