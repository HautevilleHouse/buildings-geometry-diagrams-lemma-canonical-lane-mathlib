import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BuildingsGeometryDiagramsLemmaCanonicalLaneLean

structure ChamberSystemPackage where
  chamberSet : Type u
  adjacencyRelation : chamberSet → chamberSet → Prop
  typeFunction : chamberSet → ℕ
  galleryConnected : Prop
  residuesDefined : Prop
  chamberSystemEvidence : galleryConnected ∧ residuesDefined

structure ChamberSystemEvidence (C : ChamberSystemPackage) where
  galleryConnectedClosed : C.galleryConnected
  residuesDefinedClosed : C.residuesDefined

def ChamberSystemClosed (C : ChamberSystemPackage) : Prop :=
  C.galleryConnected ∧ C.residuesDefined

theorem chamber_system_closed_from_evidence (C : ChamberSystemPackage) (E : ChamberSystemEvidence C) :
    ChamberSystemClosed C := by
  exact And.intro E.galleryConnectedClosed E.residuesDefinedClosed

end BuildingsGeometryDiagramsLemmaCanonicalLaneLean
end HautevilleHouse