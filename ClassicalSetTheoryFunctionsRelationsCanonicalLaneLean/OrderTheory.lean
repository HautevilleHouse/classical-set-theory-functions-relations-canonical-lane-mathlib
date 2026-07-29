import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalSetTheoryFunctionsRelationsCanonicalLaneLean

structure OrderTheoryPackage where
  wellOrderDefined : Prop
  zornLemmaDefined : Prop
  chainDefined : Prop
  maximalElementDefined : Prop
  latticeDefined : Prop

structure OrderTheoryEvidence (O : OrderTheoryPackage) where
  wellOrderDefinedClosed : O.wellOrderDefined
  zornLemmaDefinedClosed : O.zornLemmaDefined
  chainDefinedClosed : O.chainDefined
  maximalElementDefinedClosed : O.maximalElementDefined
  latticeDefinedClosed : O.latticeDefined

def OrderTheoryClosed (O : OrderTheoryPackage) : Prop :=
  O.wellOrderDefined ∧ O.zornLemmaDefined ∧ O.chainDefined ∧
  O.maximalElementDefined ∧ O.latticeDefined

theorem order_theory_closed_from_evidence (O : OrderTheoryPackage)
    (E : OrderTheoryEvidence O) : OrderTheoryClosed O := by
  exact And.intro E.wellOrderDefinedClosed
    (And.intro E.zornLemmaDefinedClosed
      (And.intro E.chainDefinedClosed
        (And.intro E.maximalElementDefinedClosed E.latticeDefinedClosed)))

end ClassicalSetTheoryFunctionsRelationsCanonicalLaneLean
end HautevilleHouse