import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalSetTheoryFunctionsRelationsCanonicalLaneLean

structure Chain (A : Type u) (p : PartialOrder A) where
  carrier : Set A
  total : ∀ x ∈ carrier, ∀ y ∈ carrier, p.le x y ∨ p.le y x

structure MaximalElement (A : Type u) (p : PartialOrder A) where
  element : A
  maximal : ∀ x, p.le element x → x = element

theorem zorns_lemma (A : Type u) (p : PartialOrder A) (h : ∀ c : Chain A p, ∃ ub : A, ∀ x ∈ c.carrier, p.le x ub) :
  ∃ m : MaximalElement A p := by
  sorry

end ClassicalSetTheoryFunctionsRelationsCanonicalLaneLean
end HautevilleHouse