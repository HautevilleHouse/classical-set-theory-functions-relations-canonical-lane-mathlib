import SetTheoryFunctionsRelationsCanonicalLaneLean.RelationPackage

/-!
# Equivalence Package
-/

namespace HautevilleHouse
namespace SetTheoryFunctionsRelationsCanonicalLaneLean

structure EquivalencePackage (X : Type) where
  rel : X → X → Prop
  reflexive : ∀ x, rel x x
  symmetric : ∀ x y, rel x y → rel y x
  transitive : ∀ x y z, rel x y → rel y z → rel x z

structure EquivalenceEvidence (X : Type) (E : EquivalencePackage X) where
  reflexiveClosed : E.reflexive
  symmetricClosed : E.symmetric
  transitiveClosed : E.transitive

def EquivalenceClosed (X : Type) (E : EquivalencePackage X) : Prop :=
  E.reflexive ∧ E.symmetric ∧ E.transitive

theorem equivalence_closed_from_evidence (X : Type) (E : EquivalencePackage X)
    (Ev : EquivalenceEvidence X E) : EquivalenceClosed X E := by
  exact And.intro Ev.reflexiveClosed
    (And.intro Ev.symmetricClosed Ev.transitiveClosed)

end SetTheoryFunctionsRelationsCanonicalLaneLean
end HautevilleHouse