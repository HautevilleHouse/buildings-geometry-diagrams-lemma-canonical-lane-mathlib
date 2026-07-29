import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BuildingsGeometryDiagramsLemmaCanonicalLaneLean

structure ApartmentProjectionPackage where
  apartmentSet : Type u
  retractionMap : apartmentSet → apartmentSet
  projectionIdempotent : Prop
  chamberMapPreservesAdjacency : Prop
  titsConeContained : Prop

def ApartmentProjectionClosed (A : ApartmentProjectionPackage) : Prop :=
  A.projectionIdempotent ∧ A.chamberMapPreservesAdjacency ∧ A.titsConeContained

theorem apartment_projection_closed (A : ApartmentProjectionPackage) : ApartmentProjectionClosed A := by
  exact And.intro A.projectionIdempotent (And.intro A.chamberMapPreservesAdjacency A.titsConeContained)

end BuildingsGeometryDiagramsLemmaCanonicalLaneLean
end HautevilleHouse