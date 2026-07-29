import BuildingsGeometryDiagramsLemmaCanonicalLaneLean.CoxeterDiagram

namespace HautevilleHouse
namespace BuildingsGeometryDiagramsLemmaCanonicalLaneLean

structure BuildingGeometriesPackage (C : CoxeterDiagramData) where
  chamberSystem : Type u
  wallSystem : Type v
  residueStructures : Prop
  galleryConnected : Prop
  retractionProperties : Prop
  residueStructuresTerm : residueStructures
  galleryConnectedTerm : galleryConnected
  retractionPropertiesTerm : retractionProperties

structure BuildingGeometriesEvidence {C : CoxeterDiagramData} (G : BuildingGeometriesPackage C) where
  residueStructuresClosed : G.residueStructures
  galleryConnectedClosed : G.galleryConnected
  retractionPropertiesClosed : G.retractionProperties

def BuildingGeometriesClosed {C : CoxeterDiagramData} (G : BuildingGeometriesPackage C) : Prop :=
  G.residueStructures ∧ G.galleryConnected ∧ G.retractionProperties

theorem building_geometries_closed_from_evidence
    {C : CoxeterDiagramData} (G : BuildingGeometriesPackage C) (E : BuildingGeometriesEvidence G) :
    BuildingGeometriesClosed G := by
  exact And.intro E.residueStructuresClosed (And.intro E.galleryConnectedClosed E.retractionPropertiesClosed)

end BuildingsGeometryDiagramsLemmaCanonicalLaneLean
end HautevilleHouse