import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalGroupsCanonicalLaneLean

structure ReductiveStructurePackage where
  classicalGroup : ClassicalGroupPackage
  reductiveRank : Nat
  cartanSubalgebra : Type u
  rootSystem : Type v
  weylGroup : Type w
  isReductive : Prop
  rootSystemCrystallographic : Prop

structure ReductiveStructureEvidence (R : ReductiveStructurePackage) where
  isReductiveClosed : R.isReductive
  rootSystemCrystallographicClosed : R.rootSystemCrystallographic

def ReductiveStructureClosed (R : ReductiveStructurePackage) : Prop :=
  R.isReductive ∧ R.rootSystemCrystallographic

theorem reductive_structure_closed_from_evidence (R : ReductiveStructurePackage) (E : ReductiveStructureEvidence R) :
    ReductiveStructureClosed R := by
  exact And.intro E.isReductiveClosed E.rootSystemCrystallographicClosed

end ClassicalGroupsCanonicalLaneLean
end HautevilleHouse