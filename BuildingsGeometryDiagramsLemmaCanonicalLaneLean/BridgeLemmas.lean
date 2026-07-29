import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BuildingsGeometryDiagramsLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  BuildingClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end BuildingsGeometryDiagramsLemmaCanonicalLaneLean
end HautevilleHouse