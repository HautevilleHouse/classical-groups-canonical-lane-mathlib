import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalGroupsCanonicalLaneLean

structure RepresentationTheoryPackage where
  classicalGroup : ClassicalGroupPackage
  representationSpace : Type u
  representationMap : Type v
  isIrreducible : Prop
  highestWeight : Prop
  characterFormula : Prop

structure RepresentationTheoryEvidence (R : RepresentationTheoryPackage) where
  isIrreducibleClosed : R.isIrreducible
  highestWeightClosed : R.highestWeight
  characterFormulaClosed : R.characterFormula

def RepresentationTheoryClosed (R : RepresentationTheoryPackage) : Prop :=
  R.isIrreducible ∧ R.highestWeight ∧ R.characterFormula

theorem representation_theory_closed_from_evidence (R : RepresentationTheoryPackage) (E : RepresentationTheoryEvidence R) :
    RepresentationTheoryClosed R := by
  exact And.intro E.isIrreducibleClosed (And.intro E.highestWeightClosed E.characterFormulaClosed)

end ClassicalGroupsCanonicalLaneLean
end HautevilleHouse