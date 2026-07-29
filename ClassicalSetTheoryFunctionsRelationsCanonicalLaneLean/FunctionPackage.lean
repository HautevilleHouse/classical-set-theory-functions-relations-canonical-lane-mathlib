import SetTheoryFunctionsRelationsCanonicalLaneLean.MathlibObjects

/-!
# Function Package
-/

namespace HautevilleHouse
namespace SetTheoryFunctionsRelationsCanonicalLaneLean

structure FunctionPackage (X Y : Type) where
  graph : Set (X × Y)
  isFunctional : ∀ x, ∃ y, (x, y) ∈ graph
  singleValued : ∀ x y1 y2, (x, y1) ∈ graph → (x, y2) ∈ graph → y1 = y2

structure FunctionEvidence (X Y : Type) (F : FunctionPackage X Y) where
  isFunctionalClosed : F.isFunctional
  singleValuedClosed : F.singleValued

def FunctionClosed (X Y : Type) (F : FunctionPackage X Y) : Prop :=
  F.isFunctional ∧ F.singleValued

theorem function_closed_from_evidence (X Y : Type) (F : FunctionPackage X Y)
    (E : FunctionEvidence X Y F) : FunctionClosed X Y F := by
  exact And.intro E.isFunctionalClosed E.singleValuedClosed

end SetTheoryFunctionsRelationsCanonicalLaneLean
end HautevilleHouse