## 整除

<!-- div_definition -->
> [!Definition]
> **整除 Divisibility**：设 $a, b \in \mathbb{Z}$，$a \neq 0$。若存在整数 $k$，使得 $b = ka$，则称 $a$ **整除** $b$，记作 $a \mid b$，并称 $a$ 是 $b$ 的**因数**（或**约数**），$b$ 是 $a$ 的**倍数**。若不存在这样的整数 $k$，则称 $a$ **不整除** $b$，记作 $a \nmid b$。

> **注**：整除关系要求 $a \neq 0$，而 $b$ 可以是任意整数。特别地，$a \mid 0$ 对一切非零整数 $a$ 成立；$1 \mid b$ 和 $(-1) \mid b$ 对一切整数 $b$ 成立。

<!-- div_basic_properties -->
> [!Theorem]
> **整除的基本性质 Basic Properties of Divisibility**：设 $a, b, c \in \mathbb{Z}$，$a \neq 0$，则：
> 1. **自反性**：$a \mid a$；
> 2. **传递性**：若 $a \mid b$ 且 $b \mid c$，则 $a \mid c$；
> 3. **线性组合封闭性**：若 $a \mid b$ 且 $a \mid c$，则对任意 $m, n \in \mathbb{Z}$，有 $a \mid (mb + nc)$；
> 4. **有界性**：若 $a \mid b$ 且 $b \neq 0$，则 $|a| \leq |b|$；
> 5. **反对称性**：若 $a \mid b$ 且 $b \mid a$，则 $|a| = |b|$；
> 6. 若 $a \mid b$，则 $|a| \mid |b|$，$(-a) \mid b$，$a \mid (-b)$。
>
> **证明思路**：各性质均直接由整除定义推出。传递性：令 $b = k_1 a$，$c = k_2 b$，则 $c = k_1 k_2 a$。线性组合封闭性：令 $b = k_1 a$，$c = k_2 a$，则 $mb + nc = (mk_1 + nk_2)a$。有界性：$b = ka \neq 0$，故 $|k| \geq 1$，从而 $|b| = |k| \cdot |a| \geq |a|$。
