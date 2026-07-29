import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalSetTheoryFunctionsRelationsCanonicalLaneLean

structure RelationLayersPackage where
  cartesianProductDefined : Prop
  subsetRelationDefined : Prop
  domainDefined : Prop
  rangeDefined : Prop
  fieldDefined : Prop
  inverseRelationDefined : Prop
  compositionDefined : Prop
  cartesianProductDefinedTerm : cartesianProductDefined
  subsetRelationDefinedTerm : subsetRelationDefined
  domainDefinedTerm : domainDefined
  rangeDefinedTerm : rangeDefined
  fieldDefinedTerm : fieldDefined
  inverseRelationDefinedTerm : inverseRelationDefined
  compositionDefinedTerm : compositionDefined

structure RelationLayersEvidence (R : RelationLayersPackage) where
  cartesianProductDefinedClosed : R.cartesianProductDefined
  subsetRelationDefinedClosed : R.subsetRelationDefined
  domainDefinedClosed : R.domainDefined
  rangeDefinedClosed : R.rangeDefined
  fieldDefinedClosed : R.fieldDefined
  inverseRelationDefinedClosed : R.inverseRelationDefined
  compositionDefinedClosed : R.compositionDefined

def RelationLayersClosed (R : RelationLayersPackage) : Prop :=
  R.cartesianProductDefined ∧ R.subsetRelationDefined ∧ R.domainDefined ∧
  R.rangeDefined ∧ R.fieldDefined ∧ R.inverseRelationDefined ∧ R.compositionDefined

theorem relation_layers_closed_from_evidence
    (R : RelationLayersPackage) (E : RelationLayersEvidence R) :
    RelationLayersClosed R := by
  exact And.intro E.cartesianProductDefinedClosed
    (And.intro E.subsetRelationDefinedClosed
      (And.intro E.domainDefinedClosed
        (And.intro E.rangeDefinedClosed
          (And.intro E.fieldDefinedClosed
            (And.intro E.inverseRelationDefinedClosed
              E.compositionDefinedClosed)))))

end ClassicalSetTheoryFunctionsRelationsCanonicalLaneLean
end HautevilleHouse
