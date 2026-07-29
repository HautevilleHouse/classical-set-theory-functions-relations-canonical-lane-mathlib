import SetTheoryFunctionsRelationsCanonicalLaneLean.RelationPackage

/-!
# Order Package
-/

namespace HautevilleHouse
namespace SetTheoryFunctionsRelationsCanonicalLaneLean

structure OrderPackage (X : Type) where
  le : X → X → Prop
  reflexive : ∀ x, le x x
  antisymmetric : ∀ x y, le x y → le y x → x = y
  transitive : ∀ x y z, le x y → le y z → le x z

structure OrderEvidence (X : Type) (O : OrderPackage X) where
  reflexiveClosed : O.reflexive
  antisymmetricClosed : O.antisymmetric
  transitiveClosed : O.transitive

def OrderClosed (X : Type) (O : OrderPackage X) : Prop :=
  O.reflexive ∧ O.antisymmetric ∧ O.transitive

theorem order_closed_from_evidence (X : Type) (O : OrderPackage X)
    (E : OrderEvidence X O) : OrderClosed X O := by
  exact And.intro E.reflexiveClosed
    (And.intro E.antisymmetricClosed E.transitiveClosed)

end SetTheoryFunctionsRelationsCanonicalLaneLean
end HautevilleHouse