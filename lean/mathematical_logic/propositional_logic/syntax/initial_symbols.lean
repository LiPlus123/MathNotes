namespace propositional_logic

-- 此处用自然数编号命题变元，类似于 $p_0, p_1, p_2, \cdots$
abbrev prop_var : Type := Nat

-- 定义初始命题连接词
inductive PrimitiveConnective : Type where
  | not : PrimitiveConnective -- 否定
  | imp : PrimitiveConnective -- 蕴含
deriving DecidableEq, Repr

-- 定义命题逻辑语言的初始符号
inductive InitialSymbols : Type where
  | variable : prop_var → InitialSymbols -- 命题变元
  | connective : PrimitiveConnective → InitialSymbols -- 逻辑连接词
  | leftParen : InitialSymbols -- 左括号
  | rightParen : InitialSymbols -- 右括号
deriving DecidableEq, Repr

abbrev initial_symbols_l_0 : Type := InitialSymbols

end propositional_logic
