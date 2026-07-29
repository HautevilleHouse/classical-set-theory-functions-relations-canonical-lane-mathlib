import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalSetTheoryFunctionsRelationsCanonicalLaneLean

open Set
open Relation

structure OrderTheoryRelationsPackage where
  carrier : Type u
  partialOrder : carrier → carrier → Prop
  totalOrder : carrier → carrier → Prop
  posetProperties : Prop
  chainCondition : Nat
  posetPropertiesTerm : posetProperties
  chainConditionTerm : chainCondition = Nat
  partialOrderReflexive : ∀ a, partialOrder a a
  partialOrderAntisymmetric : ∀ a b, partialOrder a b → partialOrder b a → a = b
  partialOrderTransitive : ∀ a b c, partialOrder a b → partialOrder b c → partialOrder a c
  totalOrderTotal : ∀ a b, totalOrder a b ∨ totalOrder b a
  partialOrderReflexiveTerm : partialOrderReflexive
  partialOrderAntisymmetricTerm : partialOrderAntisymmetric
  partialOrderTransitiveTerm : partialOrderTransitive
  totalOrderTotalTerm : totalOrderTotal

structure OrderTheoryRelationsEvidence (P : OrderTheoryRelationsPackage) where
  posetPropertiesClosed : P.posetProperties
  chainConditionClosed : P.chainCondition = Nat
  partialOrderReflexiveClosed : P.partialOrderReflexive
  partialOrderAntisymmetricClosed : P.partialOrderAntisymmetric
  partialOrderTransitiveClosed : P.partialOrderTransitive
  totalOrderTotalClosed : P.totalOrderTotal

def OrderTheoryRelationsClosed (P : OrderTheoryRelationsPackage) : Prop :=
  P.posetProperties ∧ P.chainCondition = Nat ∧
  P.partialOrderReflexive ∧ P.partialOrderAntisymmetric ∧ P.partialOrderTransitive ∧
  P.totalOrderTotal

theorem order_theory_relations_closed_from_evidence
    (P : OrderTheoryRelationsPackage)
    (E : OrderTheoryRelationsEvidence P) :
    OrderTheoryRelationsClosed P := by
  exact And.intro E.posetPropertiesClosed
    (And.intro E.chainConditionClosed
      (And.intro E.partialOrderReflexiveClosed
        (And.intro E.partialOrderAntisymmetricClosed
          (And.intro E.partialOrderTransitiveClosed E.totalOrderTotalClosed))))

end ClassicalSetTheoryFunctionsRelationsCanonicalLaneLean
end HautevilleHouse