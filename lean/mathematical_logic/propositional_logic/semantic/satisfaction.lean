import mathematical_logic.propositional_logic.syntax.formation_rules
import mathematical_logic.propositional_logic.semantic.truth_func

namespace propositional_logic

--- 定义公式集
abbrev formula_set : Type := formula_l_0 → Prop

-- 定义 v 满足公式 φ
def satisfaction_l_0 (v : assignment_l_0) (φ : formula_l_0) : Prop :=
  formula_assignment_l_0 v φ = truth_value.true

-- 定义 v 满足公式集 Γ
def satisfaction_set_l_0 (v : assignment_l_0) (gamma : formula_set) : Prop :=
  ∀ φ, gamma φ → formula_assignment_l_0 v φ = truth_value.true

-- 定义可满足式
def satisfiable_formula (φ : formula_l_0) : Prop :=
  ∃ v, satisfaction_l_0 v φ

-- 定义语义后承 Γ ⊨ φ
def semantic_consequence_l_0 (Γ : formula_set) (φ : formula_l_0) : Prop :=
  ∀ v, satisfaction_set_l_0 v Γ → satisfaction_l_0 v φ

end propositional_logic
