import SetTheoryFunctionsRelationsCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace SetTheoryFunctionsRelationsCanonicalLaneLean

structure AdmissibleClass where
  object : SetTheoryAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  SetTheoryWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end SetTheoryFunctionsRelationsCanonicalLaneLean
end HautevilleHouse