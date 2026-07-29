import ClassicalGroupsCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore

namespace HautevilleHouse
namespace ClassicalGroupsCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure GroupSpace where
  carrier : Type
  groupStructure : Group carrier
  topology : TopologicalSpace carrier

structure ClassicalGroupAdmittedObject where
  space : GroupSpace
  lieGroup : Prop
  linearRepresentation : Prop
  classificationComplete : Prop
  conclusion : classificationComplete

def ClassicalGroupWitnessClosed (O : ClassicalGroupAdmittedObject) : Prop :=
  O.classificationComplete

end ClassicalGroupsCanonicalLaneLean
end HautevilleHouse