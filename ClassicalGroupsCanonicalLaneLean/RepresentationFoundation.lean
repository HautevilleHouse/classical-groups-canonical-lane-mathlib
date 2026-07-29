import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalGroupsCanonicalLaneLean

structure RepresentationFoundation (G : Type u) [Group G] (V : Type v) [AddCommGroup V] [Module ℝ V] where
  representation : G → (V →ₗ[ℝ] V)
  identityMap : representation 1 = LinearMap.id
  multiplicative : ∀ (g h : G), representation (g * h) = (representation g).comp (representation h)

structure RepresentationFoundationEvidence {G : Type u} [Group G] {V : Type v} [AddCommGroup V] [Module ℝ V]
    (R : RepresentationFoundation G V) where
  identityMapClosed : R.identityMap
  multiplicativeClosed : R.multiplicative

def RepresentationFoundationClosed {G : Type u} [Group G] {V : Type v} [AddCommGroup V] [Module ℝ V]
    (R : RepresentationFoundation G V) : Prop :=
  R.identityMap ∧ R.multiplicative

theorem representation_foundation_closed_from_evidence
    {G : Type u} [Group G] {V : Type v} [AddCommGroup V] [Module ℝ V]
    (R : RepresentationFoundation G V) (e : RepresentationFoundationEvidence R) :
    RepresentationFoundationClosed R := by
  exact And.intro e.identityMapClosed e.multiplicativeClosed

end ClassicalGroupsCanonicalLaneLean
end HautevilleHouse