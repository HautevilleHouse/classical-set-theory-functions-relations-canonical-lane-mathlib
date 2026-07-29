import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalSetTheoryFunctionsRelationsCanonicalLaneLean

structure AxiomOfChoicePackage where
  choiceFunctionDefined : Prop
  productFormDefined : Prop
  wellOrderingTheoremEquivalent : Prop
  zornLemmaEquivalent : Prop
  hausdorffMaximalPrincipleEquivalent : Prop

structure AxiomOfChoiceEvidence (A : AxiomOfChoicePackage) where
  choiceFunctionDefinedClosed : A.choiceFunctionDefined
  productFormDefinedClosed : A.productFormDefined
  wellOrderingTheoremEquivalentClosed : A.wellOrderingTheoremEquivalent
  zornLemmaEquivalentClosed : A.zornLemmaEquivalent
  hausdorffMaximalPrincipleEquivalentClosed : A.hausdorffMaximalPrincipleEquivalent

def AxiomOfChoiceClosed (A : AxiomOfChoicePackage) : Prop :=
  A.choiceFunctionDefined ∧ A.productFormDefined ∧ A.wellOrderingTheoremEquivalent ∧
  A.zornLemmaEquivalent ∧ A.hausdorffMaximalPrincipleEquivalent

theorem axiom_of_choice_closed_from_evidence (A : AxiomOfChoicePackage)
    (E : AxiomOfChoiceEvidence A) : AxiomOfChoiceClosed A := by
  exact And.intro E.choiceFunctionDefinedClosed
    (And.intro E.productFormDefinedClosed
      (And.intro E.wellOrderingTheoremEquivalentClosed
        (And.intro E.zornLemmaEquivalentClosed E.hausdorffMaximalPrincipleEquivalentClosed)))

end ClassicalSetTheoryFunctionsRelationsCanonicalLaneLean
end HautevilleHouse