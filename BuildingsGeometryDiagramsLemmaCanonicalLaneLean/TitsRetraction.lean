import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BuildingsGeometryDiagramsLemmaCanonicalLaneLean

structure TitsRetractionPackage where
  sourceBuilding : BuildingGeometryPackage
  targetBuilding : BuildingGeometryPackage
  retractionMap : Type u
  retractionAxioms : Prop
  foldingCondition : Prop
  rankCompatibility : Prop

structure TitsRetractionEvidence (T : TitsRetractionPackage) where
  retractionAxiomsClosed : T.retractionAxioms
  foldingConditionClosed : T.foldingCondition
  rankCompatibilityClosed : T.rankCompatibility

def TitsRetractionClosed (T : TitsRetractionPackage) : Prop :=
  T.retractionAxioms ∧ T.foldingCondition ∧ T.rankCompatibility

theorem tits_retraction_closed_from_evidence (T : TitsRetractionPackage) (E : TitsRetractionEvidence T) : TitsRetractionClosed T := by
  exact And.intro E.retractionAxiomsClosed (And.intro E.foldingConditionClosed E.rankCompatibilityClosed)

end BuildingsGeometryDiagramsLemmaCanonicalLaneLean
end HautevilleHouse