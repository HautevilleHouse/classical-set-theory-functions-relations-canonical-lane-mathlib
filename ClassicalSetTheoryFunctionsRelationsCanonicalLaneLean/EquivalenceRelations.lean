import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalSetTheoryFunctionsRelationsCanonicalLaneLean

structure EquivalenceRelation (A : Type u) where
  rel : A → A → Prop
  reflexive : ∀ x, rel x x
  symmetric : ∀ x y, rel x y → rel y x
  transitive : ∀ x y z, rel x y → rel y z → rel x z

def quotientSet (A : Type u) (r : EquivalenceRelation A) : Type u :=
  A \ (λ a b => r.rel a b)

theorem equivalence_reflexive (A : Type u) (r : EquivalenceRelation A) (x : A) : r.rel x x :=
  r.reflexive x

end ClassicalSetTheoryFunctionsRelationsCanonicalLaneLean
end HautevilleHouse