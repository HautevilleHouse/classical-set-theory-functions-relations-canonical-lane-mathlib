import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalSetTheoryFunctionsRelationsCanonicalLaneLean

structure SetFunctionRelation where
  domain : Type u
  codomain : Type v
  graph : domain → codomain → Prop
  isFunctional : ∀ x, ∃! y, graph x y
  isRelation : Set (domain × codomain)

def functionalClosure (f : SetFunctionRelation) : Prop :=
  ∀ x, ∃ y, f.graph x y

theorem functional_from_isFunctional (f : SetFunctionRelation) : functionalClosure f := by
  intro x
  obtain ⟨y, hy⟩ := f.isFunctional x
  exact ⟨y, hy⟩

end ClassicalSetTheoryFunctionsRelationsCanonicalLaneLean
end HautevilleHouse