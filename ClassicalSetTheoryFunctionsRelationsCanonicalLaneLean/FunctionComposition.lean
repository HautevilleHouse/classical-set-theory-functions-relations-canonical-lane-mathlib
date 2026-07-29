import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalSetTheoryFunctionsRelationsCanonicalLaneLean

structure CompositionPair (A B C : Type u) where
  f : A → B
  g : B → C

def compose (p : CompositionPair A B C) : A → C :=
  λ x => p.g (p.f x)

theorem composition_associative {A B C D : Type u} (f : A → B) (g : B → C) (h : C → D) (x : A) :
  h (g (f x)) = (h ∘ g) (f x) := by
  rfl

end ClassicalSetTheoryFunctionsRelationsCanonicalLaneLean
end HautevilleHouse