import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ElectromagneticTheoryGeneralCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.satisfiesMaxwell

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end ElectromagneticTheoryGeneralCanonicalLaneLean
end HautevilleHouse