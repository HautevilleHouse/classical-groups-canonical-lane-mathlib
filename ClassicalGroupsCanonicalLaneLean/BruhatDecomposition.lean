import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalGroupsCanonicalLaneLean

structure BruhatDecompositionPackage where
  reductiveGroup : ReductiveStructurePackage
  borelSubgroup : Type u
  weylGroupAction : Type v
  doubleCosetRepresentatives : Type w
  bruhatDecompositionExists : Prop
  cellDecomposition : Prop

structure BruhatDecompositionEvidence (B : BruhatDecompositionPackage) where
  bruhatDecompositionExistsClosed : B.bruhatDecompositionExists
  cellDecompositionClosed : B.cellDecomposition

def BruhatDecompositionClosed (B : BruhatDecompositionPackage) : Prop :=
  B.bruhatDecompositionExists ∧ B.cellDecomposition

theorem bruhat_decomposition_closed_from_evidence (B : BruhatDecompositionPackage) (E : BruhatDecompositionEvidence B) :
    BruhatDecompositionClosed B := by
  exact And.intro E.bruhatDecompositionExistsClosed E.cellDecompositionClosed

end ClassicalGroupsCanonicalLaneLean
end HautevilleHouse