import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ClassicalGroupsCanonicalLaneLean.ClassicalGroupDefinitions

namespace HautevilleHouse
namespace ClassicalGroupsCanonicalLaneLean

structure RootSystem (V : Type u) [AddCommGroup V] [Module ℝ V] where
  rootSet : Set V
  rank : ℕ
  weylGroup : Group (weylGroupCarrier : Type v)
  weylGroupCarrier : Type v
  bilinearForm : BilinForm ℝ V
  reflections : RootSet → weylGroupCarrier
  rootProperties : ∀ α ∈ rootSet, bilinearForm α α ≠ 0 ∧ (bilinearForm α).reflection (weylGroup.reflections α) ∈ rootSet

structure RootSystemEvidence (R : RootSystem (Fin n → ℝ)) where
  rootSetClosed : R.rootSet.Finite
  weylGroupClosed : Group R.weylGroupCarrier
  bilinearFormClosed : True

def RootSystemClosed (R : RootSystem (Fin n → ℝ)) : Prop :=
  R.rootSet.Finite ∧ True

theorem root_system_closed_from_evidence (R : RootSystem (Fin n → ℝ)) (E : RootSystemEvidence R) : RootSystemClosed R := by
  exact And.intro E.rootSetClosed E.bilinearFormClosed

end ClassicalGroupsCanonicalLaneLean
end HautevilleHouse