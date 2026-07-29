import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalSetTheoryFunctionsRelationsCanonicalLaneLean

open Set
open Function

structure SetTheoryFunctionsRelationsPackage where
  domain : Type u
  codomain : Type v
  functionSpace : Set (domain → codomain)
  relations : Set (domain × codomain)
  functionProperties : Prop
  relationProperties : Prop
  functionPropertiesTerm : functionProperties
  relationPropertiesTerm : relationProperties

structure SetTheoryFunctionsRelationsEvidence (P : SetTheoryFunctionsRelationsPackage) where
  functionPropertiesClosed : P.functionProperties
  relationPropertiesClosed : P.relationProperties

def SetTheoryFunctionsRelationsClosed (P : SetTheoryFunctionsRelationsPackage) : Prop :=
  P.functionProperties ∧ P.relationProperties

theorem set_theory_functions_relations_closed_from_evidence
    (P : SetTheoryFunctionsRelationsPackage)
    (E : SetTheoryFunctionsRelationsEvidence P) :
    SetTheoryFunctionsRelationsClosed P := by
  exact And.intro E.functionPropertiesClosed E.relationPropertiesClosed

end ClassicalSetTheoryFunctionsRelationsCanonicalLaneLean
end HautevilleHouse