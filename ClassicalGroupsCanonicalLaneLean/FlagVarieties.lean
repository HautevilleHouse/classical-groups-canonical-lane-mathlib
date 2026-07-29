import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ClassicalGroupsCanonicalLaneLean.ClassicalGroupDefinitions

namespace HautevilleHouse
namespace ClassicalGroupsCanonicalLaneLean

structure Flag (V : Type u) [AddCommGroup V] [Module k V] (k : Type v) [Field k] (n : ℕ) where
  chain : List (Submodule k V)
  chainLength : ℕ
  strictInclusions : ∀ i : Fin (chainLength - 1), chain.get? (i.val) < chain.get? (i.val.succ)
  finalDimension : chain.get? (chainLength - 1) = ⊤

structure CompleteFlag (V : Type u) [AddCommGroup V] [Module k V] (k : Type v) [Field k] (n : ℕ) extends Flag V k n where
  dims : List ℕ
  dimensionsMatch : dims = List.range (n+1)
  chainByDimension : ∀ i : Fin n, Submodule.dim k (chain.get? i) = i.val

structure FlagVariety (G : Type u) [Group G] (V : Type v) [AddCommGroup V] [Module k V] (k : Type w) [Field k] (n : ℕ) where
  underlyingSet : Type x
  topology : TopologicalSpace underlyingSet
  smoothStructure : SmoothManifold underlyingSet
  gAction : MulAction G underlyingSet
  transitive : IsTransitive gAction

structure FlagVarietyEvidence {G : Type u} [Group G] {V : Type v} [AddCommGroup V] [Module k V] {k : Type w} [Field k] {n : ℕ} (F : FlagVariety G V k n) where
  transitiveClosed : IsTransitive F.gAction
  smoothClosed : SmoothManifold F.underlyingSet

def FlagVarietyClosed {G : Type u} [Group G] {V : Type v} [AddCommGroup V] [Module k V] {k : Type w} [Field k] {n : ℕ} (F : FlagVariety G V k n) : Prop :=
  IsTransitive F.gAction ∧ SmoothManifold F.underlyingSet

theorem flag_variety_closed_from_evidence {G : Type u} [Group G] {V : Type v} [AddCommGroup V] [Module k V] {k : Type w} [Field k] {n : ℕ} (F : FlagVariety G V k n) (E : FlagVarietyEvidence F) : FlagVarietyClosed F := by
  exact And.intro E.transitiveClosed E.smoothClosed

end ClassicalGroupsCanonicalLaneLean
end HautevilleHouse