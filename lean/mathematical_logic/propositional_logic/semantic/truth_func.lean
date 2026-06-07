import mathematical_logic.propositional_logic.syntax.initial_symbols
import mathematical_logic.propositional_logic.syntax.formation_rules
import mathematical_logic.propositional_logic.syntax.other_connectives

namespace propositional_logic

inductive truth_value : Type where
  | true : truth_value
  | false : truth_value
deriving DecidableEq, Repr

-- 定义反同真值函数
def neg_truth_func : truth_value -> truth_value
  | truth_value.true => truth_value.false
  | truth_value.false => truth_value.true

-- 定义蕴含真值函数
def imp_truth_func : truth_value -> truth_value -> truth_value
  | truth_value.true, truth_value.false => truth_value.false
  | _, _ => truth_value.true

-- 定义合取真值函数
def conj_truth_func : truth_value -> truth_value -> truth_value
  | truth_value.true, truth_value.true => truth_value.true
  | _, _ => truth_value.false

-- 定义析取真值函数
def disj_truth_func : truth_value -> truth_value -> truth_value
  | truth_value.false, truth_value.false => truth_value.false
  | _, _ => truth_value.true

-- 定义双条件真值函数
def bicond_truth_func : truth_value -> truth_value -> truth_value
  | truth_value.true, truth_value.true => truth_value.true
  | truth_value.false, truth_value.false => truth_value.true
  | _, _ => truth_value.false

-- 定义命题变元的赋值函数
abbrev Assignment (Var : Type) := Var → truth_value
abbrev assignment_l_0 : Type := Assignment prop_var

-- 定义公式赋值函数
def FormulaAssignment {Var : Type} (v : Assignment Var) : Formula Var → truth_value
  | Formula.var p => v p
  | Formula.neg φ => neg_truth_func (FormulaAssignment v φ)
  | Formula.imp φ ψ => imp_truth_func (FormulaAssignment v φ) (FormulaAssignment v ψ)

abbrev formula_assignment_l_0 : assignment_l_0 -> formula_l_0 -> truth_value := FormulaAssignment

theorem conj_formula_assignment (v : assignment_l_0) (φ ψ : formula_l_0) :
  formula_assignment_l_0 v (conj_l_0 φ ψ) = conj_truth_func (formula_assignment_l_0 v φ) (formula_assignment_l_0 v ψ) := by
  sorry

theorem disj_formula_assignment (v : assignment_l_0) (φ ψ : formula_l_0) :
  formula_assignment_l_0 v (disj_l_0 φ ψ) = disj_truth_func (formula_assignment_l_0 v φ) (formula_assignment_l_0 v ψ) := by
  sorry

theorem bicond_formula_assignment (v : assignment_l_0) (φ ψ : formula_l_0) :
  formula_assignment_l_0 v (bicon_l_0 φ ψ) = bicond_truth_func (formula_assignment_l_0 v φ) (formula_assignment_l_0 v ψ) := by
  sorry

end propositional_logic
