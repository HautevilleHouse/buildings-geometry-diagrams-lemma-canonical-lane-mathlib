import BuildingsGeometryDiagramsLemmaCanonicalLaneLean.FinalTheorem
import canonicalLaneMathlib

namespace HautevilleHouse
namespace BuildingsGeometryDiagramsLemmaCanonicalLaneLean

open HautevilleHouse.canonicalLaneMathlib

structure MathlibProofObligation where
  sourceKey : String
  theoremObject : String
  commonCoreImported : Bool
  theoremSpecificDefinitionsNative : Bool
  theoremSpecificBridgeNative : Bool
  theoremSpecificAdmittedClosureNative : Bool
  unrestrictedClassicalClosureNative : Bool
  carriedGap : String

def mathlibProofObligation : MathlibProofObligation :=
  { sourceKey := "buildings-geometry-diagrams-lemma-canonical-lane",
    theoremObject := "Buildings Geometry Diagrams Lemma",
    commonCoreImported := true,
    theoremSpecificDefinitionsNative := true,
    theoremSpecificBridgeNative := true,
    theoremSpecificAdmittedClosureNative := true,
    unrestrictedClassicalClosureNative := false,
    carriedGap := "theorem-specific Mathlib endgame pilot closes over the admitted class; unrestricted classical closure remains carried"
  }

def theoremSpecificEndgamePilotClosed : Prop :=
  forall A : AdmissibleClass, ConstrainedBuildingsClosure A

theorem theorem_specific_endgame_pilot_checked :
    theoremSpecificEndgamePilotClosed := by
  intro A
  exact constrained_buildings_endgame A

end BuildingsGeometryDiagramsLemmaCanonicalLaneLean
end HautevilleHouse