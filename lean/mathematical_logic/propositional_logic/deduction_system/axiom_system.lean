import mathematical_logic.propositional_logic.syntax.formation_rules
import mathematical_logic.propositional_logic.semantic.satisfaction

namespace propositional_logic

-- 公理模式
inductive axiom_schema_l_0 : formula_l_0 -> Prop where
  | ax1 (φ ψ : formula_l_0) : -- Axiom schema 1: φ → (ψ → φ)
      axiom_schema_l_0
      (Formula.imp φ (Formula.imp ψ φ))
  | ax2 (φ ψ θ : formula_l_0) : -- Axiom schema 2: (φ → (ψ → θ)) → ((φ → ψ) → (φ → θ))
      axiom_schema_l_0
        (Formula.imp
          (Formula.imp φ (Formula.imp ψ θ))
          (Formula.imp (Formula.imp φ ψ) (Formula.imp φ θ)))
  | ax3 (φ ψ : formula_l_0) :  -- Axiom schema 3: ((¬φ → ¬ψ) → (ψ → φ))
      axiom_schema_l_0
        (Formula.imp
          (Formula.imp (Formula.neg φ) (Formula.neg ψ))
          (Formula.imp ψ φ))

-- 形式化证明
inductive formal_proof_l_0 (Γ : formula_set) : formula_l_0 → Prop where
  | hyp {φ : formula_l_0} :
      Γ φ →
      formal_proof_l_0 Γ φ
  | axiom {φ : formula_l_0} :
      axiom_schema_l_0 φ →
      formal_proof_l_0 Γ φ
  | mp {φ ψ : formula_l_0} : -- Modus Ponens: from φ and φ → ψ, infer ψ
      formal_proof_l_0 Γ φ →
      formal_proof_l_0 Γ (Formula.imp φ ψ) →
      formal_proof_l_0 Γ ψ

-- 定义可证明关系 Γ ⊢ φ
def provable_l_0 (Γ : formula_set) (φ : formula_l_0) : Prop :=
  formal_proof_l_0 Γ φ

end propositional_logic
