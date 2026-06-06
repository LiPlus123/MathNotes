import mathematical_logic.propositional_logic.syntax.formation_rules
import mathematical_logic.propositional_logic.semantic.truth_func

namespace propositional_logic

--- 定义公式集
abbrev formula_set : Type := formula_l_0 → Prop

-- 定义 v 满足公式 φ
def satisfaction_l_0 (v : assignment_l_0) (phi : formula_l_0) : Prop :=
  formula_assignment_l_0 v phi = truth_value.true

-- 定义 v 满足公式集 Γ
def satisfaction_set_l_0 (v : assignment_l_0) (gamma : formula_set) : Prop :=
  ∀ phi, gamma phi → formula_assignment_l_0 v phi = truth_value.true

-- 定义可满足式
def satisfiable_formula (phi : formula_l_0) : Prop :=
  ∃ v, satisfaction_l_0 v phi

-- 定义重言式
def tautology (phi : formula_l_0) : Prop :=
  ∀ v, satisfaction_l_0 v phi

-- 定义矛盾式
def contradiction (phi : formula_l_0) : Prop :=
  ∀ v, formula_assignment_l_0 v phi = truth_value.false

-- 同一律是重言式
theorem law_of_identity (phi : formula_l_0) : tautology (Formula.imp phi phi) := by
  sorry

--- 排中律是重言式
theorem law_of_excluded_middle (phi : formula_l_0) : tautology (Formula.disj phi (Formula.neg phi)) := by
  sorry

--- 矛盾律是重言式
theorem law_of_non_contradiction (phi : formula_l_0) : tautology (Formula.neg (Formula.conj phi (Formula.neg phi))) := by
  sorry

--- 分离律是重言式
theorem law_of_mp (phi psi : formula_l_0) : tautology (Formula.imp (Formula.conj phi (Formula.imp phi psi)) psi) := by
  sorry

--- 交换律是重言式
theorem law_of_commutation_conj (phi psi : formula_l_0) : tautology (Formula.bicon (Formula.conj phi psi) (Formula.conj psi phi)) := by
  sorry

theorem law_of_commutation_disj (phi psi : formula_l_0) : tautology (Formula.bicon (Formula.disj phi psi) (Formula.disj psi phi)) := by
  sorry

--- 结合律是重言式
theorem law_of_association_conj (phi psi theta : formula_l_0) : tautology (Formula.bicon (Formula.conj phi (Formula.conj psi theta)) (Formula.conj (Formula.conj phi psi) theta)) := by
  sorry

theorem law_of_association_disj (phi psi theta : formula_l_0) : tautology (Formula.bicon (Formula.disj phi (Formula.disj psi theta)) (Formula.disj (Formula.disj phi psi) theta)) := by
  sorry

--- 分配律是重言式
theorem law_of_distribution_conj (phi psi theta : formula_l_0) : tautology (Formula.bicon (Formula.conj phi (Formula.disj psi theta)) (Formula.disj (Formula.conj phi psi) (Formula.conj phi theta))) := by
  sorry

theorem law_of_distribution_disj (phi psi theta : formula_l_0) : tautology (Formula.bicon (Formula.disj phi (Formula.conj psi theta)) (Formula.conj (Formula.disj phi psi) (Formula.disj phi theta))) := by
  sorry

--- 德摩根律是重言式
theorem de_morgan_conj (phi psi : formula_l_0) : tautology (Formula.bicon (Formula.neg (Formula.conj phi psi)) (Formula.disj (Formula.neg phi) (Formula.neg psi))) := by
  sorry

theorem de_morgan_disj (phi psi : formula_l_0) : tautology (Formula.bicon (Formula.neg (Formula.disj phi psi)) (Formula.conj (Formula.neg phi) (Formula.neg psi))) := by
  sorry

end propositional_logic
