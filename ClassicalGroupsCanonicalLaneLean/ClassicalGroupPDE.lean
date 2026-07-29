import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalGroupsCanonicalLaneLean

structure ClassicalGroupPDE (G : Type u) [Group G] [TopologicalSpace G] [LieGroup G] where
  timeParameter : Type v
  metricAt : timeParameter → RiemannianMetric G
  initialMetricMatches : Prop
  differentiableMetricFamily : Prop
  ricciFlowEquation : Prop
  maximalTimeInterval : Prop

structure ClassicalGroupPDEEvidence (F : ClassicalGroupPDE G) where
  initialMetricMatchesClosed : F.initialMetricMatches
  differentiableMetricFamilyClosed : F.differentiableMetricFamily
  ricciFlowEquationClosed : F.ricciFlowEquation
  maximalTimeIntervalClosed : F.maximalTimeInterval

def ClassicalGroupPDEClosed (F : ClassicalGroupPDE G) : Prop :=
  F.initialMetricMatches ∧ F.differentiableMetricFamily ∧ F.ricciFlowEquation ∧ F.maximalTimeInterval

theorem classical_group_pde_closed_from_evidence (F : ClassicalGroupPDE G)
    (E : ClassicalGroupPDEEvidence F) : ClassicalGroupPDEClosed F := by
  exact And.intro E.initialMetricMatchesClosed
    (And.intro E.differentiableMetricFamilyClosed
      (And.intro E.ricciFlowEquationClosed E.maximalTimeIntervalClosed))

end ClassicalGroupsCanonicalLaneLean
end HautevilleHouse