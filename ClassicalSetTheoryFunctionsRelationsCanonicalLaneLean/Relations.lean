import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalSetTheoryFunctionsRelationsCanonicalLaneLean

structure RelationsPackage where
  reflexiveDefined : Prop
  symmetricDefined : Prop
  transitiveDefined : Prop
  equivalenceRelationDefined : Prop
  partialOrderDefined : Prop

structure RelationsEvidence (R : RelationsPackage) where
  reflexiveDefinedClosed : R.reflexiveDefined
  symmetricDefinedClosed : R.symmetricDefined
  transitiveDefinedClosed : R.transitiveDefined
  equivalenceRelationDefinedClosed : R.equivalenceRelationDefined
  partialOrderDefinedClosed : R.partialOrderDefined

def RelationsClosed (R : RelationsPackage) : Prop :=
  R.reflexiveDefined ∧ R.symmetricDefined ∧ R.transitiveDefined ∧
  R.equivalenceRelationDefined ∧ R.partialOrderDefined

theorem relations_closed_from_evidence (R : RelationsPackage)
    (E : RelationsEvidence R) : RelationsClosed R := by
  exact And.intro E.reflexiveDefinedClosed
    (And.intro E.symmetricDefinedClosed
      (And.intro E.transitiveDefinedClosed
        (And.intro E.equivalenceRelationDefinedClosed E.partialOrderDefinedClosed)))

end ClassicalSetTheoryFunctionsRelationsCanonicalLaneLean
end HautevilleHouse