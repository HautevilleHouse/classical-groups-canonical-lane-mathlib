import ClassicalGroupsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalGroupsCanonicalLaneLean

structure GeneralLinearGroup (F : Type) [Field F] (n : ℕ) where
  matrices : Type
  invertibleCondition : Prop
  closureProperties : Prop
  evidence : closureProperties

structure SpecialLinearGroup (F : Type) [Field F] (n : ℕ) where
  determinantOneCondition : Prop
  subgroupOfGL : Prop
  evidence : subgroupOfGL

structure OrthogonalGroup (F : Type) [Field F] (n : ℕ) where
  bilinearForm : Type
  preserveFormCondition : Prop
  compactnessProperties : Prop
  evidence : compactnessProperties

structure UnitaryGroup (F : Type) [Field F] [StarRing F] (n : ℕ) where
  hermitianForm : Type
  preserveFormCondition : Prop
  compactnessProperties : Prop
  evidence : compactnessProperties

structure SymplecticGroup (F : Type) [Field F] (n : ℕ) where
  symplecticForm : Type
  preserveFormCondition : Prop
  closedUnderMultiplication : Prop
  evidence : closedUnderMultiplication

end ClassicalGroupsCanonicalLaneLean
end HautevilleHouse