import mathematical_logic.propositional_logic.syntax.initial_symbols

namespace propositional_logic

-- 定义命题逻辑语言的公式
inductive Formula(Var : Type) : Type where
  | var : Var → Formula Var -- 命题变元是公式
  | neg : Formula Var → Formula Var -- 如果 $φ$ 是公式，那么 $¬φ$ 也是公式
  | imp : Formula Var → Formula Var → Formula Var -- 如果 $φ$ 和 $ψ$ 是公式，那么 $(φ → ψ)$ 也是公式
deriving DecidableEq, Repr

abbrev formula_l_0 : Type := Formula prop_var -- 为用自然数编号命题变元的公式定义一个专门的类型

end propositional_logic
