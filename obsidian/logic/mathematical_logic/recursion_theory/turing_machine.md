
# 图灵机

<!-- turing_machine -->
> [!Definition]
> **图灵机 Turing Machine**：一台图灵机是一个七元组，记为 $M=(Q, F, q_0, \sqcup, \Gamma, \Sigma, \delta)$，每个部分分别是：
> 1. 状态集 State Set：非空有限集 $Q$
> 2. 停机状态集 Final State Set：非空有限集 $F\subset Q$
> 3. 初始状态 Initial State：$q_0\in Q$ 且 $q_0\notin F$
> 4. 空白符 Blank Symbol：记为 $\sqcup$，表示纸带上未写入任何符号的格子
> 5. 纸带字母表 Tape Alphabet：非空有限集 $\Gamma$，其中包含空白字符 $\sqcup\in \Gamma$
> 6. 输入字母表 Input Alphabet：非空有限集 $\Sigma \subseteq \Gamma \setminus \{\sqcup\}$
> 7. 转移函数 Transition Function：$\delta:(Q\setminus F)\times \Gamma \to Q\times \Gamma \times \{L,R\}$

> **注**：转移函数中，$L$ 表示读写头向左移动一格，$R$ 表示读写头向右移动一格

<!-- turing_machine_config -->
> [!Definition]
> **图灵机的配置 Configuration of a Turing Machine**：一台图灵机的配置是一个三元组，记为 $C=(T, q, h)$，每个部分分别是：
> 1. 纸带内容函数 Tape Content Function：$T:\mathbb{Z}\to \Gamma$，其中 $\mathbb{Z}$ 是纸带格子的整数编号集合，且 $\mathrm{supp}(T) = \{i \in \mathbb{Z} \mid T(i) \neq \sqcup\}$ 是有限集
> 2. 当前状态 Current State：图灵机当前状态，记为 $q\in Q$
> 3. 读写头位置 Head Position：图灵机读写头当前所在的纸带格子编号，记为 $h\in\mathbb{Z}$

> **注**：图灵机的纸带是一个无限长的格子序列，抽象成一个定义在整数集 $\mathbb{Z}$ 上的函数 $T$，其中 $T(i)$ 表示第 $i$ 个格子上的符号。需要强调，只有有限个格子上写有非空白符，其他格子均为 $\sqcup$。

<!-- turing_machine_input -->
> [!Definition]
> **图灵机的输入 Input of a Turing Machine**：图灵机的输入是一个字符串：
> $$
> w = a_0a_1\cdots a_{n-1} \in \Sigma^*
> $$
> 其中，$a_i\in \Sigma$ 是输入字母表中的符号，$n\ge 0$ 是输入字符串的长度。当输入 $w$ 后，图灵机的初始配置 $C$ 满足：
> 1. 纸带内容函数 $T$ 满足：
> $$
> T(i) = \begin{cases}
> a_i & \text{if } 0 \le i < n \\
> \sqcup & \text{otherwise}
> \end{cases}
> $$
> 2. 当前状态 $q=q_0 \in Q$
> 3. 读写头位置 $h=0$

<!-- single_step_computation -->
> [!Definition]
> **单步计算 Single-step Computation**：设 $M=(Q, F, q_0, \sqcup, \Gamma, \Sigma, \delta)$ 是一台图灵机，$C=(T,q,h)$ 是图灵机的当前配置。如果 $q\notin F$，并且根据转移函数 $\delta$：
> $$
> \delta(q,T(h)) = (q',a , D)
> $$
> 其中，$q'\in Q$ 是下一状态，$a\in \Gamma$ 是要写入当前格子的符号，$D\in\{L,R\}$ 是移动方向。那么图灵机 $M=(Q, F, q_0, \sqcup, \Gamma, \Sigma, \delta)$ 从配置 $C$ 进行“单步计算”得到的下一个配置 $C'=(T',q',h')$ 满足：
> 1. 纸带内容函数 $T'$ 满足：
> $$
> T'(i) = \begin{cases}
> a & \text{如果 } i = h \\
> T(i) & \text{如果 } i \neq h
> \end{cases}
> $$
> 2. 读写头位置 $h'$ 满足：
> $$
> h' = \begin{cases}
> h - 1 & \text{如果 } D = L \\
> h + 1 & \text{如果 } D = R
> \end{cases}
> $$

<!-- turing_machine_computation -->
> [!Definition]
> **图灵机的计算过程 Computation of a Turing Machine**：设图灵机 $M=(Q, F, q_0, \sqcup, \Gamma, \Sigma, \delta)$，输入 $w$ 后，得到一组配置的序列：
> $$
> C_0,C_1,C_2,\cdots
> $$
> 并且任意 $i\ge 1$，配置 $C_{i}$ 是由配置 $C_{i-1}$ 通过单步计算得到的。称该配置序列是图灵机 $M$ 在输入 $w$ 后的计算过程。

> **注**：计算过程产生的序列依赖输入 $w$，这个序列可能有限，也可能无限。

<!-- turing_machine_halting -->
> [!Definition]
> **停机 Halting**：图灵机 $M=(Q, F, q_0, \sqcup, \Gamma, \Sigma, \delta)$ 输入 $w$ 后停机，当且仅当，存在 $n\in \mathbb{N}$，使得配置 $C_n=(T_n,q_n,h_n)$ 满足 $q_n\in F$。

<!-- turing_machine_output -->
> [!Definition]
> **图灵机的输出 Output of a Turing Machine**：设图灵机 $M=(Q, F, q_0, \sqcup, \Gamma, \Sigma, \delta)$ 在输入 $w\in \Sigma^*$ 后，停机配置为：
> $$
> C_n=(T_n,q_n,h_n)
> $$
> 其中，$q_n \in F$。记停机配置的纸带内容的支撑集为：
> $$
> \mathrm{supp}(T_n) = \{i \in \mathbb{Z} \mid T_n(i) \neq \sqcup\}
> $$
> 如果 $\mathrm{supp}(T_n) = \varnothing$，则规定输出为空字符串 $\varepsilon$。如果 $\mathrm{supp}(T_n) \neq \varnothing$，令：
> $$
> m = \min \mathrm{supp}(T_n),\quad r = \max \mathrm{supp}(T_n)
> $$
> 则规定 $M$ 在输入 $w$ 上的输出为有限字符串：
> $$
> T_n(m) T_n(m+1) \cdots T_n(r) \in \Gamma^*
> $$
> 记为：$M(w)$。

> **注**：根据图灵机的输入输出，可以定义一个部分函数：$f:\Sigma^* \rightharpoonup \Gamma^*$，它输入一个字符串 $w\in \Sigma^*$，如果 $M$ 停机，则 $f$ 有定义 $f(w)\downarrow=M(w)$。如果 $M$ 不停机，则 $f$ 未定义 $f(w)\uparrow$。

<!-- turing_computable_function -->
> [!Definition]
> **图灵可计算函数 Turing Computable Function**：设 $f:\Sigma^* \rightharpoonup \Gamma^*$ 是一个部分函数，如果存在一个图灵机 $M$，对于任意字符串 $w\in \Sigma^*$：
> 1. $f(w)\downarrow$ 当且仅当 $M$ 在输入 $w$ 上停机并且 $f(w)=M(w)$；
> 2. $f(w)\uparrow$ 当且仅当 $M$ 在输入 $w$ 上不停机。
>
> 那么称函数 $f$ 是图灵可计算的。