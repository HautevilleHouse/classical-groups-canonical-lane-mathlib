import ClassicalGroupsCanonicalLaneLean.ReviewerBridge

namespace HautevilleHouse
namespace ClassicalGroupsCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  manifoldConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String
deriving Repr, DecidableEq

end ClassicalGroupsCanonicalLaneLean
end HautevilleHouse