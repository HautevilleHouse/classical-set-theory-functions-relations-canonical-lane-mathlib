import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalSetTheoryFunctionsRelationsCanonicalLaneLean

structure PartialOrder (A : Type u) where
  le : A → A → Prop
  refl : ∀ a, le a a
  antisymm : ∀ a b, le a b → le b a → a = b
  trans : ∀ a b c, le a b → le b c → le a c

def totalOrder (A : Type u) (p : PartialOrder A) : Prop :=
  ∀ a b, p.le a b ∨ p.le b a

theorem antisymmetry_from_order (A : Type u) (p : PartialOrder A) (a b : A) (h1 : p.le a b) (h2 : p.le b a) : a = b :=
  p.antisymm a b h1 h2

end ClassicalSetTheoryFunctionsRelationsCanonicalLaneLean
end HautevilleHouse