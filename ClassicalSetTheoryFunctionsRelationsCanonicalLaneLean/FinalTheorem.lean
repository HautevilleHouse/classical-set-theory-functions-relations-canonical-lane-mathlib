import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalSetTheoryFunctionsRelationsCanonicalLaneLean

def ConstrainedSetTheoryFunctionsRelationsClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_set_theory_functions_relations_endgame (A : AdmissibleClass) :
    ConstrainedSetTheoryFunctionsRelationsClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ClassicalSetTheoryFunctionsRelationsCanonicalLaneLean
end HautevilleHouse