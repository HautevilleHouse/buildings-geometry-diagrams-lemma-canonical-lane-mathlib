import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BuildingsGeometryDiagramsLemmaCanonicalLaneLean

structure DiagrammaticCoxeterPackage where
  generatorSet : Type u
  relationMatrix : Type v
  coxeterGroupType : Type w
  braidRelations : Prop
  exchangeCondition : Prop
  reflectionRepresentation : Prop

structure DiagrammaticCoxeterEvidence (C : DiagrammaticCoxeterPackage) where
  braidRelationsClosed : C.braidRelations
  exchangeConditionClosed : C.exchangeCondition
  reflectionRepresentationClosed : C.reflectionRepresentation

def DiagrammaticCoxeterClosed (C : DiagrammaticCoxeterPackage) : Prop :=
  C.braidRelations ∧ C.exchangeCondition ∧ C.reflectionRepresentation

theorem diagrammatic_coxeter_closed_from_evidence (C : DiagrammaticCoxeterPackage) (E : DiagrammaticCoxeterEvidence C) : DiagrammaticCoxeterClosed C := by
  exact And.intro E.braidRelationsClosed (And.intro E.exchangeConditionClosed E.reflectionRepresentationClosed)

end BuildingsGeometryDiagramsLemmaCanonicalLaneLean
end HautevilleHouse