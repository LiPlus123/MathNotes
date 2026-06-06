import mathematical_logic.propositional_logic.syntax.initial_symbols
import mathematical_logic.propositional_logic.syntax.formation_rules

namespace propositional_logic

-- 定义合取公式
def Formula.conj {Var : Type} (phi psi : Formula Var) : Formula Var :=
  Formula.neg (Formula.imp phi (Formula.neg psi)) -- $φ ∧ ψ := ¬(φ → ¬ψ)$

abbrev conj_l_0 : formula_l_0 → formula_l_0 → formula_l_0 := Formula.conj

-- 定义析取公式
def Formula.disj {Var : Type} (phi psi : Formula Var) : Formula Var :=
  Formula.imp (Formula.neg phi) psi -- $φ ∨ ψ := (¬φ → ψ)$

abbrev disj_l_0 : formula_l_0 → formula_l_0 → formula_l_0 := Formula.disj

-- 定义双条件公式
def Formula.bicon {Var : Type} (phi psi : Formula Var) : Formula Var :=
  Formula.conj (Formula.imp phi psi) (Formula.imp psi phi) -- $φ ↔ ψ := (φ → ψ) ∧ (ψ → φ)$

abbrev bicon_l_0 : formula_l_0 → formula_l_0 → formula_l_0 := Formula.bicon

end propositional_logic
