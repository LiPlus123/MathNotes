# 几何态射

## 几何态射的定义

<!-- geometric_morphism_def -->
> [!Definition]
> **几何态射 Geometric Morphism**：设 $\mathcal{E}$ 与 $\mathcal{F}$ 是拓扑斯（初等或 Grothendieck）。一个从 $\mathcal{E}$ 到 $\mathcal{F}$ 的**几何态射**（geometric morphism）是一对函子
> $$
> f^*: \mathcal{F} \to \mathcal{E} \quad \text{（逆像函子）}, \qquad f_*: \mathcal{E} \to \mathcal{F} \quad \text{（正像函子）},
> $$
> 满足：
> 1. $f^* \dashv f_*$（$f^*$ 是 $f_*$ 的左伴随）；
> 2. $f^*$ **保持有限极限**（left exact）。
>
> 几何态射记作 $f: \mathcal{E} \to \mathcal{F}$（注意方向：几何态射的方向与左伴随/逆像函子相反）。

> **注**：连续映射 $f: X \to Y$ 诱导几何态射 $\mathrm{Sh}(X) \to \mathrm{Sh}(Y)$，其中逆像 $f^{-1}$ 保持有限极限（见 [[direct_and_inverse_image|正像与逆像]]），正像为 $f_*$。这是"几何态射"名称的来源。

## 几何态射的态射

<!-- geometric_morphism_morphism_def -->
> [!Definition]
> **几何态射的态射 Morphism of Geometric Morphisms**：设 $f, g: \mathcal{E} \to \mathcal{F}$ 是两个几何态射。从 $f$ 到 $g$ 的**几何变换**（geometric transformation，也称自然变换）是自然变换 $\alpha: f^* \Rightarrow g^*$（等价地，通过伴随，为 $\beta: g_* \Rightarrow f_*$）。
>
> 所有从 $\mathcal{E}$ 到 $\mathcal{F}$ 的几何态射及其态射构成范畴 $\mathrm{Geom}(\mathcal{E}, \mathcal{F})$。

## 拓扑斯的范畴

<!-- topos_category -->
> [!Definition]
> **拓扑斯范畴**：初等拓扑斯以几何态射为 1-胞、几何变换为 2-胞构成 **2-范畴** $\mathbf{Top}$（拓扑斯的 2-范畴）。Grothendieck 拓扑斯构成子 2-范畴 $\mathbf{GTop}$。

## 拓扑斯的点

<!-- topos_point_def -->
> [!Definition]
> **拓扑斯的点 Point of a Topos**：拓扑斯 $\mathcal{E}$ 的一个**点**（point）是几何态射
> $$
> p: \mathbf{Set} \to \mathcal{E},
> $$
> 即一对 $(p^*, p_*)$，其中 $p^*: \mathcal{E} \to \mathbf{Set}$（逆像，保有限极限的左伴随函子）、$p_*: \mathbf{Set} \to \mathcal{E}$（正像）。

> **注**：拓扑空间 $X$ 的每个点 $x \in X$ 给出拓扑斯 $\mathrm{Sh}(X)$ 的一个点：$p_x^*(\mathcal{F}) = \mathcal{F}_x$（茎函子，保有限极限且是正合的），$p_{x*}(S) = $ 常值层；"$x$ 上的茎"即对应点的逆像。**有足够多点的拓扑斯**（has enough points）是指点的逆像函子族共同保持同构（即检测同构）。

<!-- topos_point_examples -->
> [!Example]+
> **点的例子**：
> 1. **$\mathrm{Sh}(X)$ 的点**：与 $X$ 的点 $x \in X$ 对应，$p_x^*(\mathcal{F}) = \mathcal{F}_x$（茎）；
> 2. **$\mathrm{PSh}(\mathcal{C}) = [\mathcal{C}^{\mathrm{op}}, \mathbf{Set}]$ 的点**：对应于 $\mathcal{C}$ 的对象 $C$，$p_C^*(\mathcal{F}) = \mathcal{F}(C)$（求值）；
> 3. **无点的拓扑斯**：存在没有任何点的非平凡 Grothendieck 拓扑斯（如某些 étale 拓扑斯），这是"无点拓扑学"（pointless topology）的范畴体现。

## 基本性质

<!-- geometric_morphism_properties -->
> [!Theorem]
> **几何态射的性质**：
> 1. **复合**：若 $f: \mathcal{E} \to \mathcal{F}$ 与 $g: \mathcal{F} \to \mathcal{G}$ 是几何态射，则 $(g \circ f)^* = f^* \circ g^*$，$(g \circ f)_* = g_* \circ f_*$，且 $g \circ f$ 也是几何态射（$f^* \circ g^*$ 保有限极限的复合）；
> 2. **恒等**：$\mathrm{id}_\mathcal{E}$ 对应 $(\mathrm{id}_\mathcal{E}^* = \mathrm{id}, \mathrm{id}_{\mathcal{E}*} = \mathrm{id})$；
> 3. **几何态射的唯一性**：两个拓扑斯 $\mathcal{E}, \mathcal{F}$ 之间的几何态射不一定唯一（$\mathrm{Geom}(\mathcal{E}, \mathcal{F})$ 可以是非平凡的范畴）；
> 4. **开/闭子拓扑斯**：满子拓扑斯的包含函子是几何态射（局部连接几何态射）。
>
> **证明思路**：(1)(2) 由函子复合与保有限极限的稳定性直接验证；(3)(4) 由具体构造给出。

<!-- local_geometric_morphism -->
> [!Definition]
> **局部几何态射 Local Geometric Morphism**：几何态射 $f: \mathcal{E} \to \mathcal{F}$ 称为**局部的**（local），若 $f_*$ 还有右伴随 $f^!: \mathcal{F} \to \mathcal{E}$，即
> $$
> f^* \dashv f_* \dashv f^!.
> $$
> 局部几何态射对应"局部同胚"的范畴类比（如开包含 $\mathrm{Sh}(U) \to \mathrm{Sh}(X)$ 对应 $U \subseteq X$ 开包含）。
