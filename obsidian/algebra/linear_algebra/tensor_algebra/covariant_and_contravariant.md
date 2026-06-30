# 协变与逆变

## 协变基与逆变基

<!-- covariant_basis -->
> [!Definition]
> **协变基 Covariant Basis**：设 $V$ 为域 $F$ 上的 $n$ 维线性空间。$V$ 的一组有序基 $\mathcal{B} = (e_1, e_2, \ldots, e_n)$ 称为**协变基**（covariant basis）。在坐标变换下，协变基向量与坐标分量的变换规则如下：若从旧基 $\{e_i\}$ 到新基 $\{e'_i\}$ 的过渡矩阵为 $A$，即
> $$e'_i = A^j_{\ i}\, e_j,$$
> 则协变基向量**与**过渡矩阵 $A$ **同向变换**（即按矩阵 $A$ 变换），这正是"协变"（covariant）之意。

<!-- contravariant_basis -->
> [!Definition]
> **逆变基 Contravariant Basis（对偶基）**：$V^*$ 的对偶基 $\{e^1, e^2, \ldots, e^n\}$ 称为**逆变基**（contravariant basis），定义为
> $$e^i(e_j) = \delta^i_{\ j}, \quad 1 \leq i, j \leq n.$$
> 在过渡矩阵 $A$（$e'_i = A^j_{\ i}\, e_j$）下，逆变基向量的变换规则为
> $$e'^i = (A^{-1})^i_{\ j}\, e^j,$$
> 即逆变基**按 $A$ 的逆矩阵变换**，与协变基的变换方向相反，这正是"逆变"（contravariant）之意。

> **注**：若 $V$ 配备了内积（度量结构），则 $e^i$ 可借助度量张量与协变基向量显式联系（见度量张量一节）。但在纯线性代数框架下，协变基属于 $V$，逆变基属于 $V^*$，二者互为对偶。

## 协变分量与逆变分量

<!-- contravariant_components -->
> [!Definition]
> **逆变分量 Contravariant Components**：向量 $v \in V$ 在协变基 $\{e_i\}$ 下的展开系数 $v^i$ 称为 $v$ 的**逆变分量**（contravariant components）：
> $$v = v^i\, e_i \quad \Longleftrightarrow \quad v^i = e^i(v).$$
> 在过渡矩阵 $A$（$e'_i = A^j_{\ i}\, e_j$）下，逆变分量按逆矩阵变换：
> $$v'^i = (A^{-1})^i_{\ j}\, v^j.$$

<!-- covariant_components -->
> [!Definition]
> **协变分量 Covariant Components**：线性泛函 $\alpha \in V^*$ 在逆变基 $\{e^i\}$ 下的展开系数 $\alpha_i$ 称为 $\alpha$ 的**协变分量**（covariant components）：
> $$\alpha = \alpha_i\, e^i \quad \Longleftrightarrow \quad \alpha_i = \alpha(e_i).$$
> 在过渡矩阵 $A$ 下，协变分量**与**过渡矩阵同向变换：
> $$\alpha'_i = A^j_{\ i}\, \alpha_j.$$

> **注**：一般张量 $T \in T^r_s(V)$ 的分量 $T^{i_1 \cdots i_r}{}_{j_1 \cdots j_s}$ 中，上标（逆变指标）在基变换下按 $(A^{-1})$ 变换，下标（协变指标）按 $A$ 变换。"协变/逆变"这一区分在弯曲空间（黎曼几何）中尤为重要，它保证了张量方程在坐标变换下的协变性（形式不变性）。
