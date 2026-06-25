# 环同构基本定理

<!-- first_ring_iso_theorem -->
> [!Theorem]
> **第一同构定理 First Isomorphism Theorem**：设 $\varphi: R \to S$ 为环同态，则存在唯一的环同构
> $$
> \bar{\varphi}: R/\ker\varphi \xrightarrow{\;\sim\;} \mathrm{Im}\,\varphi, \quad a + \ker\varphi \mapsto \varphi(a)
> $$
> 特别地，若 $\varphi$ 为满同态，则 $R/\ker\varphi \cong S$。
>
> **证明思路**：定义 $\bar{\varphi}(a + \ker\varphi) = \varphi(a)$，验证：(1) 定义良好（若 $a + I = b + I$ 则 $a - b \in I = \ker\varphi$，从而 $\varphi(a) = \varphi(b)$）；(2) $\bar{\varphi}$ 是环同态（由 $\varphi$ 的同态性质）；(3) $\bar{\varphi}$ 是单射（$\ker\bar{\varphi}$ 只含零陪集）；(4) $\bar{\varphi}$ 是满射（像与 $\mathrm{Im}\,\varphi$ 一致）。

<!-- second_ring_iso_theorem -->
> [!Theorem]
> **第二同构定理 Second Isomorphism Theorem**：设 $R$ 为环，$S \leq R$ 为子环，$I \trianglelefteq R$ 为理想，则：
> - $S + I = \{s + a \mid s \in S,\, a \in I\}$ 是 $R$ 的子环；
> - $S \cap I$ 是 $S$ 的理想；
> - 存在环同构
>   $$
>   S/(S \cap I) \cong (S + I)/I
>   $$
>
> **证明思路**：定义映射 $\varphi: S \to (S+I)/I$，$s \mapsto s + I$，验证 $\varphi$ 是满同态，计算 $\ker\varphi = \{s \in S \mid s + I = I\} = S \cap I$，由第一同构定理得结论。

<!-- third_ring_iso_theorem -->
> [!Theorem]
> **第三同构定理 Third Isomorphism Theorem**：设 $R$ 为环，$I, J \trianglelefteq R$ 且 $I \subseteq J$，则 $J/I \trianglelefteq R/I$，且存在环同构
> $$
> (R/I)/(J/I) \cong R/J
> $$
>
> **证明思路**：定义映射 $\varphi: R/I \to R/J$，$a + I \mapsto a + J$，验证 $\varphi$ 是满同态（定义良好由 $I \subseteq J$ 保证），计算 $\ker\varphi = \{a + I \mid a \in J\} = J/I$，由第一同构定理得结论。

<!-- ring_correspondence_theorem -->
> [!Theorem]
> **对应定理 Correspondence Theorem**：设 $I \trianglelefteq R$，自然投影 $\pi: R \to R/I$。则 $R$ 中包含 $I$ 的理想与 $R/I$ 的理想之间存在保持包含关系的一一对应：
> $$
> J \mapsto J/I \quad (I \subseteq J \trianglelefteq R), \qquad \bar{J} \mapsto \pi^{-1}(\bar{J}) \quad (\bar{J} \trianglelefteq R/I)
> $$
>
> **证明思路**：验证两个映射互为逆映射，且均保持理想的性质和包含关系。
