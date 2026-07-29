import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BuildingsGeometryDiagramsLemmaCanonicalLaneLean.CoxeterChamberSystem

namespace HautevilleHouse
namespace BuildingsGeometryDiagramsLemmaCanonicalLaneLean

structure Building {Cox : CoxeterSystem M} (Ch : ChamberSystem Cox) where
  apartments : Type u
  apartmentChambers : apartments → Set (Ch.chambers)
  apartmentCoxeter : ∀ (A : apartments), CoxeterSystem M
  buildingAx1 : ∀ (c d : Ch.chambers), ∃ (A : apartments), c ∈ apartmentChambers A ∧ d ∈ apartmentChambers A
  buildingAx2 : ∀ (A B : apartments), ∃ (f : apartments → apartments), True
  buildingAx1Term : buildingAx1
  buildingAx2Term : buildingAx2

structure BuildingEvidence {Cox : CoxeterSystem M} {Ch : ChamberSystem Cox} (B : Building Ch) where
  buildingAx1Closed : B.buildingAx1
  buildingAx2Closed : B.buildingAx2

def BuildingClosed {Cox : CoxeterSystem M} {Ch : ChamberSystem Cox} (B : Building Ch) : Prop :=
  B.buildingAx1 ∧ B.buildingAx2

theorem building_closed_from_evidence {Cox : CoxeterSystem M} {Ch : ChamberSystem Cox} (B : Building Ch) (E : BuildingEvidence B) : BuildingClosed B :=
  And.intro E.buildingAx1Closed E.buildingAx2Closed

end BuildingsGeometryDiagramsLemmaCanonicalLaneLean
end HautevilleHouse
