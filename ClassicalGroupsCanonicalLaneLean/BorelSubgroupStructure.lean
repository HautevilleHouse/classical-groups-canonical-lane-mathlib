import ClassicalGroupsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalGroupsCanonicalLaneLean

structure BorelSubgroupStructurePackage where
  borelSubgroupDefined : Prop
  parabolicSubgroupsClassified : Prop
  rootsystemConstructed : Prop
  flagVarietyConstructed : Prop

structure BorelSubgroupStructureEvidence (B : BorelSubgroupStructurePackage) where
  borelSubgroupDefinedClosed : B.borelSubgroupDefined
  parabolicSubgroupsClassifiedClosed : B.parabolicSubgroupsClassified
  rootsystemConstructedClosed : B.rootsystemConstructed
  flagVarietyConstructedClosed : B.flagVarietyConstructed

def BorelSubgroupStructureClosed (B : BorelSubgroupStructurePackage) : Prop :=
  B.borelSubgroupDefined ∧ B.parabolicSubgroupsClassified ∧ B.rootsystemConstructed ∧ B.flagVarietyConstructed

theorem borel_subgroup_structure_closed_from_evidence (B : BorelSubgroupStructurePackage)(E : BorelSubgroupStructureEvidence B) :
    BorelSubgroupStructureClosed B := by
  exact And.intro E.borelSubgroupDefinedClosed (And.intro E.parabolicSubgroupsClassifiedClosed (And.intro E.rootsystemConstructedClosed E.flagVarietyConstructedClosed))

end ClassicalGroupsCanonicalLaneLean
end HautevilleHouse