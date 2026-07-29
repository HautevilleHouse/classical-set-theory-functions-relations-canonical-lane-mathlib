import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalSetTheoryFunctionsRelationsCanonicalLaneLean

structure FunctionPropertiesPackage where
  injectiveDefined : Prop
  surjectiveDefined : Prop
  bijectiveDefined : Prop
  compositionDefined : Prop
  inverseDefined : Prop

structure FunctionPropertiesEvidence (F : FunctionPropertiesPackage) where
  injectiveDefinedClosed : F.injectiveDefined
  surjectiveDefinedClosed : F.surjectiveDefined
  bijectiveDefinedClosed : F.bijectiveDefined
  compositionDefinedClosed : F.compositionDefined
  inverseDefinedClosed : F.inverseDefined

def FunctionPropertiesClosed (F : FunctionPropertiesPackage) : Prop :=
  F.injectiveDefined ∧ F.surjectiveDefined ∧ F.bijectiveDefined ∧
  F.compositionDefined ∧ F.inverseDefined

theorem function_properties_closed_from_evidence (F : FunctionPropertiesPackage)
    (E : FunctionPropertiesEvidence F) : FunctionPropertiesClosed F := by
  exact And.intro E.injectiveDefinedClosed
    (And.intro E.surjectiveDefinedClosed
      (And.intro E.bijectiveDefinedClosed
        (And.intro E.compositionDefinedClosed E.inverseDefinedClosed)))

end ClassicalSetTheoryFunctionsRelationsCanonicalLaneLean
end HautevilleHouse