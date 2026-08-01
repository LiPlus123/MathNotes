# 内积的定义

<!-- functional_analysis_sesquilinear_form_definition -->
> [!Definition]
> **共轭双线性函数 Sesquilinear Form**：设 $X$ 是复线性空间。映射 $b:X\times X\to\mathbb{C}$ 若对第一变量共轭线性、对第二变量线性，即
> $$
> b(\alpha x_1+\beta x_2,y)=\overline{\alpha}b(x_1,y)+\overline{\beta}b(x_2,y),
> $$
> $$
> b(x,\alpha y_1+\beta y_2)=\alpha b(x,y_1)+\beta b(x,y_2),
> $$
> 则称 $b$ 为**共轭双线性函数 Sesquilinear Form**。在实线性空间上，上述定义退化为双线性函数。

<!-- functional_analysis_quadratic_form_from_sesquilinear_form -->
> [!Definition]
> **共轭双线性函数诱导的二次型 Quadratic Form Induced by a Sesquilinear Form**：对共轭双线性函数 $b$，定义
> $$
> Q_b(x)=b(x,x).
> $$
> 称 $Q_b$ 为 $b$ 诱导的二次型。若 $b$ 是 Hermite 对称的，即 $b(y,x)=\overline{b(x,y)}$，则 $Q_b$ 为实值。

<!-- functional_analysis_inner_product_definition -->
> [!Definition]
> **内积 Inner Product**：设 $X$ 是 $\mathbb{F}\in\{\mathbb{R},\mathbb{C}\}$ 上的线性空间。若共轭双线性函数
> $$
> \langle\cdot,\cdot\rangle:X\times X\to\mathbb{F}
> $$
> 满足对任意 $x,y\in X$：
> $$
> \langle y,x\rangle=\overline{\langle x,y\rangle},
> \qquad
> \langle x,x\rangle\geq0,
> \qquad
> \langle x,x\rangle=0\Longleftrightarrow x=0,
> $$
> 则称它为 $X$ 上的**内积 Inner Product**。带内积的线性空间称为内积空间。

<!-- functional_analysis_inner_product_induced_norm -->
> [!Proposition]
> **内积诱导范数 The Norm Induced by an Inner Product**：内积空间上
> $$
> \|x\|=\sqrt{\langle x,x\rangle}
> $$
> 定义一个范数，称为内积诱导范数；相应度量为 $d(x,y)=\|x-y\|$。
>
> **证明思路**：正定性和齐次性直接由内积公理得到；三角不等式由柯西-施瓦兹不等式及 $\|x+y\|^2=\|x\|^2+2\operatorname{Re}\langle x,y\rangle+\|y\|^2$ 得到。

<!-- functional_analysis_inner_product_metric_tensor_relation -->
> [!Proposition]
> **内积与度量张量的关系 Relation between Inner Products and Metric Tensors**：在实内积空间中，内积本身给出常系数的度量张量。在有限维空间选取基 $(e_i)$ 后，其分量为
> $$
> g_{ij}=\langle e_i,e_j\rangle.
> $$
> 在复内积空间中，内积相应给出 Hermite 度量；其正定实部可视为底层实向量空间上的度量。

> **注**：一般 Riemann 流形的度量张量随点变化；此处的内积对应于线性空间上的常度量张量。