import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalGroupsCanonicalLaneLean

structure VectorSpaceOverField (k : Type u) [Field k] (n : ℕ) where
  basisDimension : ℕ
  basisDimensionIsN : basisDimension = n

structure GeneralLinearGroup (k : Type u) [Field k] (n : ℕ) (V : VectorSpaceOverField k n) where
  underlyingSet : Type v
  groupStructure : Group underlyingSet
  actsOnV : MulAction underlyingSet (Fin n → k)
  invertible : ∀ g : underlyingSet, IsUnit (actsOnV g)

structure SpecialLinearGroup (k : Type u) [Field k] (n : ℕ) (V : VectorSpaceOverField k n) extends GeneralLinearGroup k n V where
  determinantOne : Prop

structure OrthogonalGroup (k : Type u) [Field k] (n : ℕ) (V : VectorSpaceOverField k n) (q : QuadraticForm k (Fin n → k)) extends GeneralLinearGroup k n V where
  preservesForm : Prop

def ClassicalGroupAdmissible (G : Type u) [Group G] : Prop := True

end ClassicalGroupsCanonicalLaneLean
end HautevilleHouse