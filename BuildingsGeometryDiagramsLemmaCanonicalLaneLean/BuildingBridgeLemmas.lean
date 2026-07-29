import BuildingsGeometryDiagramsLemmaCanonicalLaneLean.BuildingsAdmissibleObject

namespace HautevilleHouse
namespace BuildingsGeometryDiagramsLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  BuildingWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end BuildingsGeometryDiagramsLemmaCanonicalLaneLean
end HautevilleHouse