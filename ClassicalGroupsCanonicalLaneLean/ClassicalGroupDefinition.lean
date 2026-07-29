import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalGroupsCanonicalLaneLean

structure ClassicalGroupPackage where
  field : Type u
  fieldCharZero : Prop
  dimension : Nat
  groupType : String
  matrixGroup : Type v
  determinantOne : Prop
  preservesForm : Prop

structure ClassicalGroupEvidence (G : ClassicalGroupPackage) where
  fieldCharZeroClosed : G.fieldCharZero
  determinantOneClosed : G.determinantOne
  preservesFormClosed : G.preservesForm

def ClassicalGroupClosed (G : ClassicalGroupPackage) : Prop :=
  G.fieldCharZero ∧ G.determinantOne ∧ G.preservesForm

theorem classical_group_closed_from_evidence (G : ClassicalGroupPackage) (E : ClassicalGroupEvidence G) :
    ClassicalGroupClosed G := by
  exact And.intro E.fieldCharZeroClosed (And.intro E.determinantOneClosed E.preservesFormClosed)

end ClassicalGroupsCanonicalLaneLean
end HautevilleHouse