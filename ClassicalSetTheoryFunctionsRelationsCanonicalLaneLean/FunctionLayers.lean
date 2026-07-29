import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalSetTheoryFunctionsRelationsCanonicalLaneLean

structure FunctionLayersPackage where
  functionDefined : Prop
  injectionDefined : Prop
  surjectionDefined : Prop
  bijectionDefined : Prop
  imageDefined : Prop
  preimageDefined : Prop
  compositionDefined : Prop
  restrictionDefined : Prop
  functionDefinedTerm : functionDefined
  injectionDefinedTerm : injectionDefined
  surjectionDefinedTerm : surjectionDefined
  bijectionDefinedTerm : bijectionDefined
  imageDefinedTerm : imageDefined
  preimageDefinedTerm : preimageDefined
  compositionDefinedTerm : compositionDefined
  restrictionDefinedTerm : restrictionDefined

structure FunctionLayersEvidence (F : FunctionLayersPackage) where
  functionDefinedClosed : F.functionDefined
  injectionDefinedClosed : F.injectionDefined
  surjectionDefinedClosed : F.surjectionDefined
  bijectionDefinedClosed : F.bijectionDefined
  imageDefinedClosed : F.imageDefined
  preimageDefinedClosed : F.preimageDefined
  compositionDefinedClosed : F.compositionDefined
  restrictionDefinedClosed : F.restrictionDefined

def FunctionLayersClosed (F : FunctionLayersPackage) : Prop :=
  F.functionDefined ∧ F.injectionDefined ∧ F.surjectionDefined ∧
  F.bijectionDefined ∧ F.imageDefined ∧ F.preimageDefined ∧
  F.compositionDefined ∧ F.restrictionDefined

theorem function_layers_closed_from_evidence
    (F : FunctionLayersPackage) (E : FunctionLayersEvidence F) :
    FunctionLayersClosed F := by
  exact And.intro E.functionDefinedClosed
    (And.intro E.injectionDefinedClosed
      (And.intro E.surjectionDefinedClosed
        (And.intro E.bijectionDefinedClosed
          (And.intro E.imageDefinedClosed
            (And.intro E.preimageDefinedClosed
              (And.intro E.compositionDefinedClosed
                E.restrictionDefinedClosed))))))

end ClassicalSetTheoryFunctionsRelationsCanonicalLaneLean
end HautevilleHouse
