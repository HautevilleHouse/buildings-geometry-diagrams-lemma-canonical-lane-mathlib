import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BuildingsGeometryDiagramsLemmaCanonicalLaneLean.BruhatTitsBuilding

namespace HautevilleHouse
namespace BuildingsGeometryDiagramsLemmaCanonicalLaneLean

structure DiagramLemmaStatement {Cox : CoxeterSystem M} {Ch : ChamberSystem Cox} (B : Building Ch) where
  diagram : Type u
  diagramType : String
  commutationCondition : Prop
  conclusion : Prop
  commutationConditionTerm : commutationCondition
  conclusionTerm : conclusion

structure DiagramLemmaEvidence {Cox : CoxeterSystem M} {Ch : ChamberSystem Cox} {B : Building Ch} (D : DiagramLemmaStatement B) where
  commutationConditionClosed : D.commutationCondition
  conclusionClosed : D.conclusion

def DiagramLemmaClosed {Cox : CoxeterSystem M} {Ch : ChamberSystem Cox} {B : Building Ch} (D : DiagramLemmaStatement B) : Prop :=
  D.commutationCondition ∧ D.conclusion

theorem diagram_lemma_closed_from_evidence {Cox : CoxeterSystem M} {Ch : ChamberSystem Cox} {B : Building Ch} (D : DiagramLemmaStatement B) (E : DiagramLemmaEvidence D) : DiagramLemmaClosed D :=
  And.intro E.commutationConditionClosed E.conclusionClosed

end BuildingsGeometryDiagramsLemmaCanonicalLaneLean
end HautevilleHouse
