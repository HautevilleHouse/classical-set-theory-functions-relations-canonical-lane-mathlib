import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalSetTheoryFunctionsRelationsCanonicalLaneLean

structure SetOperationsPackage where
  unionDefined : Prop
  intersectionDefined : Prop
  complementDefined : Prop
  differenceDefined : Prop
  symmetricDifferenceDefined : Prop

structure SetOperationsEvidence (S : SetOperationsPackage) where
  unionDefinedClosed : S.unionDefined
  intersectionDefinedClosed : S.intersectionDefined
  complementDefinedClosed : S.complementDefined
  differenceDefinedClosed : S.differenceDefined
  symmetricDifferenceDefinedClosed : S.symmetricDifferenceDefined

def SetOperationsClosed (S : SetOperationsPackage) : Prop :=
  S.unionDefined ∧ S.intersectionDefined ∧ S.complementDefined ∧
  S.differenceDefined ∧ S.symmetricDifferenceDefined

theorem set_operations_closed_from_evidence (S : SetOperationsPackage)
    (E : SetOperationsEvidence S) : SetOperationsClosed S := by
  exact And.intro E.unionDefinedClosed
    (And.intro E.intersectionDefinedClosed
      (And.intro E.complementDefinedClosed
        (And.intro E.differenceDefinedClosed E.symmetricDifferenceDefinedClosed)))

end ClassicalSetTheoryFunctionsRelationsCanonicalLaneLean
end HautevilleHouse