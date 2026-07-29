import SetTheoryFunctionsRelationsCanonicalLaneLean.MathlibObjects

/-!
# Relation Package
-/

namespace HautevilleHouse
namespace SetTheoryFunctionsRelationsCanonicalLaneLean

structure RelationPackage (X Y : Type) where
  graph : Set (X × Y)

structure RelationEvidence (X Y : Type) (R : RelationPackage X Y) where
  graphDefined : True

def RelationClosed (X Y : Type) (R : RelationPackage X Y) : Prop :=
  True

theorem relation_closed_from_evidence (X Y : Type) (R : RelationPackage X Y)
    (E : RelationEvidence X Y R) : RelationClosed X Y R := by
  exact True.intro

end SetTheoryFunctionsRelationsCanonicalLaneLean
end HautevilleHouse