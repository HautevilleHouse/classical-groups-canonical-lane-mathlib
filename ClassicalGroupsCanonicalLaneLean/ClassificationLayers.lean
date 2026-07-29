import ClassicalGroupsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalGroupsCanonicalLaneLean

structure ClassificationLayersPackage where
  classicalGroupsListed : Prop
  structureTheoryApplied : Prop
  representationTheoryApplied : Prop
  classificationComplete : Prop

structure ClassificationLayersEvidence (L : ClassificationLayersPackage) where
  classicalGroupsListedClosed : L.classicalGroupsListed
  structureTheoryAppliedClosed : L.structureTheoryApplied
  representationTheoryAppliedClosed : L.representationTheoryApplied
  classificationCompleteClosed : L.classificationComplete

def ClassificationLayersClosed (L : ClassificationLayersPackage) : Prop :=
  L.classicalGroupsListed ∧ L.structureTheoryApplied ∧ L.representationTheoryApplied ∧ L.classificationComplete

theorem classification_layers_closed_from_evidence (L : ClassificationLayersPackage)(E : ClassificationLayersEvidence L) :
    ClassificationLayersClosed L := by
  exact And.intro E.classicalGroupsListedClosed (And.intro E.structureTheoryAppliedClosed (And.intro E.representationTheoryAppliedClosed E.classificationCompleteClosed))

end ClassicalGroupsCanonicalLaneLean
end HautevilleHouse