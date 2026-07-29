import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalGroupsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ClassicalGroupWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end ClassicalGroupsCanonicalLaneLean
end HautevilleHouse