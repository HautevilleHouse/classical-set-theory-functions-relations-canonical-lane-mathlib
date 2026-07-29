import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalSetTheoryFunctionsRelationsCanonicalLaneLean

structure CardinalsPackage where
  cardinalityDefined : Prop
  finiteInfiniteDefined : Prop
  countableDefined : Prop
  cardinalArithmeticDefined : Prop
  continuumHypothesisRelevant : Prop

structure CardinalsEvidence (C : CardinalsPackage) where
  cardinalityDefinedClosed : C.cardinalityDefined
  finiteInfiniteDefinedClosed : C.finiteInfiniteDefined
  countableDefinedClosed : C.countableDefined
  cardinalArithmeticDefinedClosed : C.cardinalArithmeticDefined
  continuumHypothesisRelevantClosed : C.continuumHypothesisRelevant

def CardinalsClosed (C : CardinalsPackage) : Prop :=
  C.cardinalityDefined ∧ C.finiteInfiniteDefined ∧ C.countableDefined ∧
  C.cardinalArithmeticDefined ∧ C.continuumHypothesisRelevant

theorem cardinals_closed_from_evidence (C : CardinalsPackage)
    (E : CardinalsEvidence C) : CardinalsClosed C := by
  exact And.intro E.cardinalityDefinedClosed
    (And.intro E.finiteInfiniteDefinedClosed
      (And.intro E.countableDefinedClosed
        (And.intro E.cardinalArithmeticDefinedClosed E.continuumHypothesisRelevantClosed)))

end ClassicalSetTheoryFunctionsRelationsCanonicalLaneLean
end HautevilleHouse