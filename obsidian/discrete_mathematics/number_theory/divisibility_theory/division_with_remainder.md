## 带余除法

<!-- division_algorithm -->
> [!Theorem]
> **带余除法定理 Division Algorithm**：设 $a \in \mathbb{Z}$，$b \in \mathbb{Z}^+$，则存在唯一的整数 $q$（**商**）和整数 $r$（**余数**），使得：
> $$a = bq + r, \quad 0 \leq r < b$$
>
> **证明思路**：
> - **存在性**：令 $q = \lfloor a/b \rfloor$（对 $a/b$ 向下取整），令 $r = a - bq$，则由下取整定义有 $0 \leq r < b$。
> - **唯一性**：若同时有 $a = bq_1 + r_1 = bq_2 + r_2$，$0 \leq r_1, r_2 < b$，则 $b(q_1 - q_2) = r_2 - r_1$，从而 $b \mid (r_2 - r_1)$。因 $|r_2 - r_1| < b$，故 $r_1 = r_2$，进而 $q_1 = q_2$。

> **注**：余数 $r = 0$ 当且仅当 $b \mid a$。带余除法也可对负整数 $b$（$b \neq 0$）定义，此时要求 $0 \leq r < |b|$。
