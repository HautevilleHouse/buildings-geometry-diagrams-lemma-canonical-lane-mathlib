import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BuildingsGeometryDiagramsLemmaCanonicalLaneLean

structure ChamberSystemPackage where
  buildingType : Type u
  chamberSet : Type v
  adjacency : chamberSet → chamberSet → Prop
  galleryConnected : Prop
  rank : ℕ
  apartmentSystem : Prop

structure ChamberSystemEvidence (C : ChamberSystemPackage) where
  galleryConnectedClosed : C.galleryConnected
  apartmentSystemClosed : C.apartmentSystem

def ChamberSystemClosed (C : ChamberSystemPackage) : Prop :=
  C.galleryConnected ∧ C.apartmentSystem

theorem chamber_system_closed_from_evidence (C : ChamberSystemPackage) (E : ChamberSystemEvidence C) :
    ChamberSystemClosed C := by
  exact And.intro E.galleryConnectedClosed E.apartmentSystemClosed

end BuildingsGeometryDiagramsLemmaCanonicalLaneLean
end HautevilleHouse