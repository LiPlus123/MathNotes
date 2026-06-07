import mathematical_logic.propositional_logic.semantic.satisfaction

namespace propositional_logic

-- 定义重言式
def tautology (φ : formula_l_0) : Prop :=
  ∀ v, satisfaction_l_0 v φ

-- 定义矛盾式
def contradiction (φ : formula_l_0) : Prop :=
  ∀ v, formula_assignment_l_0 v φ = truth_value.false

-- 同一律是重言式
theorem law_of_identity (φ : formula_l_0) : tautology (Formula.imp φ φ) := by
  sorry

--- 排中律是重言式
theorem law_of_excluded_middle (φ : formula_l_0) : tautology (Formula.disj φ (Formula.neg φ)) := by
  sorry

--- 矛盾律是重言式
theorem law_of_non_contradiction (φ : formula_l_0) : tautology (Formula.neg (Formula.conj φ (Formula.neg φ))) := by
  sorry

--- 分离律是重言式
theorem law_of_mp (φ ψ : formula_l_0) : tautology (Formula.imp (Formula.conj φ (Formula.imp φ ψ)) ψ) := by
  sorry

--- 交换律是重言式
theorem law_of_commutation_conj (φ ψ : formula_l_0) : tautology (Formula.bicon (Formula.conj φ ψ) (Formula.conj ψ φ)) := by
  sorry

theorem law_of_commutation_disj (φ ψ : formula_l_0) : tautology (Formula.bicon (Formula.disj φ ψ) (Formula.disj ψ φ)) := by
  sorry

--- 结合律是重言式
theorem law_of_association_conj (φ ψ θ : formula_l_0) : tautology (Formula.bicon (Formula.conj φ (Formula.conj ψ θ)) (Formula.conj (Formula.conj φ ψ) θ)) := by
  sorry

theorem law_of_association_disj (φ ψ θ : formula_l_0) : tautology (Formula.bicon (Formula.disj φ (Formula.disj ψ θ)) (Formula.disj (Formula.disj φ ψ) θ)) := by
  sorry

--- 分配律是重言式
theorem law_of_distribution_conj (φ ψ θ : formula_l_0) : tautology (Formula.bicon (Formula.conj φ (Formula.disj ψ θ)) (Formula.disj (Formula.conj φ ψ) (Formula.conj φ θ))) := by
  sorry

theorem law_of_distribution_disj (φ ψ θ : formula_l_0) : tautology (Formula.bicon (Formula.disj φ (Formula.conj ψ θ)) (Formula.conj (Formula.disj φ ψ) (Formula.disj φ θ))) := by
  sorry

--- 德摩根律是重言式
theorem de_morgan_conj (φ ψ : formula_l_0) : tautology (Formula.bicon (Formula.neg (Formula.conj φ ψ)) (Formula.disj (Formula.neg φ) (Formula.neg ψ))) := by
  sorry

theorem de_morgan_disj (φ ψ : formula_l_0) : tautology (Formula.bicon (Formula.neg (Formula.disj φ ψ)) (Formula.conj (Formula.neg φ) (Formula.neg ψ))) := by
  sorry

end propositional_logic
