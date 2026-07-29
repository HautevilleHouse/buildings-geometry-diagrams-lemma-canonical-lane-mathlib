import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BuildingsGeometryDiagramsLemmaCanonicalLaneLean

structure BuildingGeometryPackage where
  buildingType : Type u
  apartmentSystem : Type v
  chamberComplex : Type w
  rank : Nat
  buildingAxioms : Prop
  apartmentIntersection : Prop
  chamberConnectedness : Prop

structure BuildingGeometryEvidence (B : BuildingGeometryPackage) where
  buildingAxiomsClosed : B.buildingAxioms
  apartmentIntersectionClosed : B.apartmentIntersection
  chamberConnectednessClosed : B.chamberConnectedness

def BuildingGeometryClosed (B : BuildingGeometryPackage) : Prop :=
  B.buildingAxioms ∧ B.apartmentIntersection ∧ B.chamberConnectedness

theorem building_geometry_closed_from_evidence (B : BuildingGeometryPackage) (E : BuildingGeometryEvidence B) : BuildingGeometryClosed B := by
  exact And.intro E.buildingAxiomsClosed (And.intro E.apartmentIntersectionClosed E.chamberConnectednessClosed)

end BuildingsGeometryDiagramsLemmaCanonicalLaneLean
end HautevilleHouse