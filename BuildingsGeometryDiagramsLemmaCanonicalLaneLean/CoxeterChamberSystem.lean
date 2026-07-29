import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BuildingsGeometryDiagramsLemmaCanonicalLaneLean

structure CoxeterSystem (M : Type u) where
  generators : List M
  relations : List (M × M)
  coxeterGroup : Type v
  groupPresentation : Prop
  coxeterGroupTerm : coxeterGroup
  presentationClosed : groupPresentation

structure ChamberSystem (Cox : CoxeterSystem M) where
  chambers : Type w
  adjacency : chambers → chambers → Prop
  galleryConnected : Prop
  adjacencyClosed : ∀ (c d : chambers), adjacency c d ∨ ¬ adjacency c d
  galleryConnectedTerm : galleryConnected

def CoxeterChamberClosed (Cox : CoxeterSystem M) (Ch : ChamberSystem Cox) : Prop :=
  Cox.groupPresentation ∧ Ch.galleryConnected

theorem coxeter_chamber_closed_from_system (Cox : CoxeterSystem M) (Ch : ChamberSystem Cox) : CoxeterChamberClosed Cox Ch :=
  And.intro Cox.presentationClosed Ch.galleryConnectedTerm

end BuildingsGeometryDiagramsLemmaCanonicalLaneLean
end HautevilleHouse
