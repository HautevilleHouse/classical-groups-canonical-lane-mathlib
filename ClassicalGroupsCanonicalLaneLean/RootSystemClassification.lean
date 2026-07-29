import ClassicalGroupsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalGroupsCanonicalLaneLean

structure RootSystemClassificationPackage where
  finiterootSystemsEnumerated : Prop
  weylGroupConstructed : Prop
  DynkinDiagramsAssociated : Prop
  classificationTheoremApplied : Prop

structure RootSystemClassificationEvidence (R : RootSystemClassificationPackage) where
  finiterootSystemsEnumeratedClosed : R.finiterootSystemsEnumerated
  weylGroupConstructedClosed : R.weylGroupConstructed
  DynkinDiagramsAssociatedClosed : R.DynkinDiagramsAssociated
  classificationTheoremAppliedClosed : R.classificationTheoremApplied

def RootSystemClassificationClosed (R : RootSystemClassificationPackage) : Prop :=
  R.finiterootSystemsEnumerated ∧ R.weylGroupConstructed ∧ R.DynkinDiagramsAssociated ∧ R.classificationTheoremApplied

theorem root_system_classification_closed_from_evidence (R : RootSystemClassificationPackage)(E : RootSystemClassificationEvidence R) :
    RootSystemClassificationClosed R := by
  exact And.intro E.finiterootSystemsEnumeratedClosed (And.intro E.weylGroupConstructedClosed (And.intro E.DynkinDiagramsAssociatedClosed E.classificationTheoremAppliedClosed))

end ClassicalGroupsCanonicalLaneLean
end HautevilleHouse