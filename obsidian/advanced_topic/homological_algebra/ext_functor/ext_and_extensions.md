# Ext¹ 与模扩张

## 扩张与等价

<!-- module_extension_def -->
> [!Definition]
> **模扩张 Module Extension**：给定左 $R$-模 $A,B$，一个（短）扩张是短正合列
> $$
> 0\to B\xrightarrow{j} E\xrightarrow{q} A\to0.
> $$
> 两个扩张
> $$
> 0\to B\to E\to A\to0,\qquad 0\to B\to E'\to A\to0
> $$
> 称为**等价**，若存在同构 $\phi:E\xrightarrow{\sim}E'$ 使得两端 $A,B$ 上恒等且整图交换。

## Ext¹ 与扩张类的双射

<!-- ext1_extensions_bijection -->
> [!Theorem]
> **Ext\textsuperscript{1} 与扩张类的双射 Ext\textsuperscript{1} Classifies Extensions**：存在自然双射
> $$
> \mathrm{Ext}_R^1(A,B) \cong \left\{\text{$0\to B\to E\to A\to0$ 的等价类}\right\}.
> $$
>
> **证明思路**：
> - 从 Ext 元到扩张：取 $A$ 的投射分解并用上同调代表元构造推挤（pushout）短正合列；
> - 从扩张到 Ext 元：扩张对应于连接同态的像（或 Yoneda 描述中的 $1$-扩张类）；
> - 验证两过程互逆且自然。

## Baer 和

<!-- baer_sum_def -->
> [!Definition]
> **Baer 和 Baer Sum**：扩张类集合在如下运算下构成阿贝尔群，并与 $\mathrm{Ext}_R^1(A,B)$ 的加法对应：
> 1. 对两个扩张取直和，得到 $0\to B\oplus B\to E\oplus E'\to A\oplus A\to0$；
> 2. 通过对角映射 $\Delta_A:A\to A\oplus A$ 拉回；
> 3. 通过余对角映射 $\nabla_B:B\oplus B\to B$ 推出。
> 得到的新扩张类称为原两扩张类的 **Baer 和**，记作 $[E]+[E']$。

## 零元与分裂扩张

<!-- ext1_zero_split_extension -->
> [!Corollary]
> **零元对应分裂扩张 Zero Element Corresponds to Split Extension**：在上述双射下，
> $$
> 0\in\mathrm{Ext}_R^1(A,B)
> $$
> 对应且仅对应分裂短正合列
> $$
> 0\to B\to E\to A\to0,
> $$
> 即 $E\cong A\oplus B$（与两端映射相容）。
>
> **证明思路**：零元扩张与平凡 cocycle 对应，恰给出可选截面（或收缩）从而分裂；反之分裂扩张的扩张类在 Baer 群中为零。

## Yoneda 乘积（补充）

<!-- yoneda_product_note -->
> [!Definition]
> **Yoneda 乘积 Yoneda Product（补充）**：两个扩张类可通过拼接短正合列得到高次扩张类，对应于
> $$
> \mathrm{Ext}_R^m(B,C)\times \mathrm{Ext}_R^n(A,B)\to \mathrm{Ext}_R^{m+n}(A,C).
> $$
> 该乘积与导出范畴中的复合一致。

> **注**：$\mathrm{Ext}^1$ 的扩张解释是同调代数与具体模论之间最重要的桥梁。