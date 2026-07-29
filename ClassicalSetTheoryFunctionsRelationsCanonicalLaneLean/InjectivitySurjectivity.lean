import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalSetTheoryFunctionsRelationsCanonicalLaneLean

structure InjectiveFunction (A B : Type u) where
  func : A → B
  injectiveProp : ∀ x y, func x = func y → x = y

structure SurjectiveFunction (A B : Type u) where
  func : A → B
  surjectiveProp : ∀ y, ∃ x, func x = y

theorem injective_composition {A B C : Type u} (f : A → B) (g : B → C) (hf : ∀ x y, f x = f y → x = y) (hg : ∀ x y, g x = g y → x = y) :
  ∀ x y, (g ∘ f) x = (g ∘ f) y → x = y := by
  intro x y h
  apply hf
  apply hg
  exact h

end ClassicalSetTheoryFunctionsRelationsCanonicalLaneLean
end HautevilleHouse