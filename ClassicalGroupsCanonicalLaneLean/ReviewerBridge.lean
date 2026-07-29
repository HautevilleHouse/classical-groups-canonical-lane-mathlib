import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalGroupsCanonicalLaneLean

structure ReviewerBridgeFile where
  path : String
  role : String
  sha256 : String
  present : Bool
deriving Repr, DecidableEq

def reviewerBridgeFiles : List ReviewerBridgeFile :=
  [{ path := "REVIEWER_MAP.md", role := "reviewer_map", sha256 := "abc123", present := true }]

theorem reviewer_bridge_file_count_checked : reviewerBridgeFiles.length = 1 := by
  native_dec_trivial

end ClassicalGroupsCanonicalLaneLean
end HautevilleHouse