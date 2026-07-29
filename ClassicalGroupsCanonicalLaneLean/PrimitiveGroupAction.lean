import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalGroupsCanonicalLaneLean

structure PrimitiveGroupAction (G : Type u) (X : Type v) where
  act : G → X → X
  identity : ∀ x : X, act (1 : G) x = x
  compatibility : ∀ (g h : G) (x : X), act (g * h) x = act g (act h x)

structure PrimitiveGroupActionEvidence {G : Type u} {X : Type v} (a : PrimitiveGroupAction G X) where
  identityClosed : a.identity
  compatibilityClosed : a.compatibility

def PrimitiveGroupActionClosed {G : Type u} {X : Type v} (a : PrimitiveGroupAction G X) : Prop :=
  a.identity ∧ a.compatibility

theorem primitive_group_action_closed_from_evidence
    {G : Type u} {X : Type v} (a : PrimitiveGroupAction G X)
    (e : PrimitiveGroupActionEvidence a) : PrimitiveGroupActionClosed a := by
  exact And.intro e.identityClosed e.compatibilityClosed

end ClassicalGroupsCanonicalLaneLean
end HautevilleHouse