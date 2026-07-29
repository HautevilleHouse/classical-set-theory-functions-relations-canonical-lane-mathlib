import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalSetTheoryFunctionsRelationsCanonicalLaneLean

structure SetTheoryLayersPackage where
  powersetExists : Prop
  unionExists : Prop
  intersectionExists : Prop
  differenceExists : Prop
  orderedPairExists : Prop
  powersetExistsTerm : powersetExists
  unionExistsTerm : unionExists
  intersectionExistsTerm : intersectionExists
  differenceExistsTerm : differenceExists
  orderedPairExistsTerm : orderedPairExists

structure SetTheoryLayersEvidence (S : SetTheoryLayersPackage) where
  powersetExistsClosed : S.powersetExists
  unionExistsClosed : S.unionExists
  intersectionExistsClosed : S.intersectionExists
  differenceExistsClosed : S.differenceExists
  orderedPairExistsClosed : S.orderedPairExists

def SetTheoryLayersClosed (S : SetTheoryLayersPackage) : Prop :=
  S.powersetExists ∧ S.unionExists ∧ S.intersectionExists ∧ S.differenceExists ∧ S.orderedPairExists

theorem set_theory_layers_closed_from_evidence
    (S : SetTheoryLayersPackage) (E : SetTheoryLayersEvidence S) :
    SetTheoryLayersClosed S := by
  exact And.intro E.powersetExistsClosed
    (And.intro E.unionExistsClosed
      (And.intro E.intersectionExistsClosed
        (And.intro E.differenceExistsClosed E.orderedPairExistsClosed)))

end ClassicalSetTheoryFunctionsRelationsCanonicalLaneLean
end HautevilleHouse
