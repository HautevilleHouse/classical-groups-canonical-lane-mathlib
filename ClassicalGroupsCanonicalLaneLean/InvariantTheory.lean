import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalGroupsCanonicalLaneLean

structure InvariantTheoryPackage where
  classicalGroup : ClassicalGroupPackage
  invariantRing : Type u
  generators : Type v
  relations : Type w
  hilbertSeries : Prop
  ringFinitelyGenerated : Prop

structure InvariantTheoryEvidence (I : InvariantTheoryPackage) where
  hilbertSeriesClosed : I.hilbertSeries
  ringFinitelyGeneratedClosed : I.ringFinitelyGenerated

def InvariantTheoryClosed (I : InvariantTheoryPackage) : Prop :=
  I.hilbertSeries ∧ I.ringFinitelyGenerated

theorem invariant_theory_closed_from_evidence (I : InvariantTheoryPackage) (E : InvariantTheoryEvidence I) :
    InvariantTheoryClosed I := by
  exact And.intro E.hilbertSeriesClosed E.ringFinitelyGeneratedClosed

end ClassicalGroupsCanonicalLaneLean
end HautevilleHouse