import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalSetTheoryFunctionsRelationsCanonicalLaneLean

structure AxiomChoiceLayersPackage where
  axiomOfChoiceDefined : Prop
  zornsLemmaDefined : Prop
  wellOrderingTheoremDefined : Prop
  notChoiceDefined : Prop
  axiomOfChoiceDefinedTerm : axiomOfChoiceDefined
  zornsLemmaDefinedTerm : zornsLemmaDefined
  wellOrderingTheoremDefinedTerm : wellOrderingTheoremDefined
  notChoiceDefinedTerm : notChoiceDefined

structure AxiomChoiceLayersEvidence (A : AxiomChoiceLayersPackage) where
  axiomOfChoiceDefinedClosed : A.axiomOfChoiceDefined
  zornsLemmaDefinedClosed : A.zornsLemmaDefined
  wellOrderingTheoremDefinedClosed : A.wellOrderingTheoremDefined
  notChoiceDefinedClosed : A.notChoiceDefined

def AxiomChoiceLayersClosed (A : AxiomChoiceLayersPackage) : Prop :=
  A.axiomOfChoiceDefined ∧ A.zornsLemmaDefined ∧ A.wellOrderingTheoremDefined ∧ A.notChoiceDefined

theorem axiom_choice_layers_closed_from_evidence
    (A : AxiomChoiceLayersPackage) (E : AxiomChoiceLayersEvidence A) :
    AxiomChoiceLayersClosed A := by
  exact And.intro E.axiomOfChoiceDefinedClosed
    (And.intro E.zornsLemmaDefinedClosed
      (And.intro E.wellOrderingTheoremDefinedClosed
        E.notChoiceDefinedClosed))

end ClassicalSetTheoryFunctionsRelationsCanonicalLaneLean
end HautevilleHouse
