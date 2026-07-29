import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalSetTheoryFunctionsRelationsCanonicalLaneLean

structure OrderLayersPackage where
  partialOrderDefined : Prop
  totalOrderDefined : Prop
  wellOrderDefined : Prop
  firstElementDefined : Prop
  lastElementDefined : Prop
  successorDefined : Prop
  predecessorDefined : Prop
  partialOrderDefinedTerm : partialOrderDefined
  totalOrderDefinedTerm : totalOrderDefined
  wellOrderDefinedTerm : wellOrderDefined
  firstElementDefinedTerm : firstElementDefined
  lastElementDefinedTerm : lastElementDefined
  successorDefinedTerm : successorDefined
  predecessorDefinedTerm : predecessorDefined

structure OrderLayersEvidence (O : OrderLayersPackage) where
  partialOrderDefinedClosed : O.partialOrderDefined
  totalOrderDefinedClosed : O.totalOrderDefined
  wellOrderDefinedClosed : O.wellOrderDefined
  firstElementDefinedClosed : O.firstElementDefined
  lastElementDefinedClosed : O.lastElementDefined
  successorDefinedClosed : O.successorDefined
  predecessorDefinedClosed : O.predecessorDefined

def OrderLayersClosed (O : OrderLayersPackage) : Prop :=
  O.partialOrderDefined ∧ O.totalOrderDefined ∧ O.wellOrderDefined ∧
  O.firstElementDefined ∧ O.lastElementDefined ∧ O.successorDefined ∧ O.predecessorDefined

theorem order_layers_closed_from_evidence
    (O : OrderLayersPackage) (E : OrderLayersEvidence O) :
    OrderLayersClosed O := by
  exact And.intro E.partialOrderDefinedClosed
    (And.intro E.totalOrderDefinedClosed
      (And.intro E.wellOrderDefinedClosed
        (And.intro E.firstElementDefinedClosed
          (And.intro E.lastElementDefinedClosed
            (And.intro E.successorDefinedClosed
              E.predecessorDefinedClosed)))))

end ClassicalSetTheoryFunctionsRelationsCanonicalLaneLean
end HautevilleHouse
