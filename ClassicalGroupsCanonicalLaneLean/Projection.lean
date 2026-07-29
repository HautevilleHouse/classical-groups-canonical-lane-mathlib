import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalGroupsCanonicalLaneLean

structure ClassicalGroupProjection (G : Type u) [Group G] where
  toFun : G → G
  idempotent : ∀ g : G, toFun (toFun g) = toFun g

theorem classical_group_projection_idempotent {G : Type u} [Group G]
    (p : ClassicalGroupProjection G) (g : G) : p.toFun (p.toFun g) = p.toFun g :=
  p.idempotent g

end ClassicalGroupsCanonicalLaneLean
end HautevilleHouse