import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalSetTheoryFunctionsRelationsCanonicalLaneLean

structure CardinalLayersPackage where
  cardinalDefined : Prop
  cardinalArithmeticDefined : Prop
  cardinalComparisonDefined : Prop
  countablyInfiniteDefined : Prop
  uncountablyInfiniteDefined : Prop
  cardinalDefinedTerm : cardinalDefined
  cardinalArithmeticDefinedTerm : cardinalArithmeticDefined
  cardinalComparisonDefinedTerm : cardinalComparisonDefined
  countablyInfiniteDefinedTerm : countablyInfiniteDefined
  uncountablyInfiniteDefinedTerm : uncountablyInfiniteDefined

structure CardinalLayersEvidence (C : CardinalLayersPackage) where
  cardinalDefinedClosed : C.cardinalDefined
  cardinalArithmeticDefinedClosed : C.cardinalArithmeticDefined
  cardinalComparisonDefinedClosed : C.cardinalComparisonDefined
  countablyInfiniteDefinedClosed : C.countablyInfiniteDefined
  uncountablyInfiniteDefinedClosed : C.uncountablyInfiniteDefined

def CardinalLayersClosed (C : CardinalLayersPackage) : Prop :=
  C.cardinalDefined ∧ C.cardinalArithmeticDefined ∧ C.cardinalComparisonDefined ∧
  C.countablyInfiniteDefined ∧ C.uncountablyInfiniteDefined

theorem cardinal_layers_closed_from_evidence
    (C : CardinalLayersPackage) (E : CardinalLayersEvidence C) :
    CardinalLayersClosed C := by
  exact And.intro E.cardinalDefinedClosed
    (And.intro E.cardinalArithmeticDefinedClosed
      (And.intro E.cardinalComparisonDefinedClosed
        (And.intro E.countablyInfiniteDefinedClosed
          E.uncountablyInfiniteDefinedClosed)))

end ClassicalSetTheoryFunctionsRelationsCanonicalLaneLean
end HautevilleHouse
