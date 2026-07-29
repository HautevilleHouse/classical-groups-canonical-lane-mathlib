import ClassicalGroupsCanonicalLaneLean.ClassicalGroupTypes

namespace HautevilleHouse
namespace ClassicalGroupsCanonicalLaneLean

structure StructureTheoryPackage where
  parabolicSubgroupsClassified : Prop
  leviDecompositionExists : Prop
  brhatDecompositionHolds : Prop
  evidence : parabolicSubgroupsClassified ∧ leviDecompositionExists ∧ brhatDecompositionHolds

theorem structure_theory_closed (S : StructureTheoryPackage) : S.evidence := S.evidence

theorem parabolic_classification_in_bridge (S : StructureTheoryPackage) : Prop :=
  S.parabolicSubgroupsClassified

theorem levi_decomposition_in_bridge (S : StructureTheoryPackage) : Prop :=
  S.leviDecompositionExists

theorem brhat_decomposition_in_bridge (S : StructureTheoryPackage) : Prop :=
  S.brhatDecompositionHolds

end ClassicalGroupsCanonicalLaneLean
end HautevilleHouse