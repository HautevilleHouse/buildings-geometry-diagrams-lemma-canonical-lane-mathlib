import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BuildingsGeometryDiagramsLemmaCanonicalLaneLean

structure BuildingSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure BuildingAdmittedObject where
  space : BuildingSpace
  isBuilding : Prop
  diagram : Prop
  lemmaConclusion : Prop
  conclusion : lemmaConclusion

structure BuildingEndgameState where
  object : BuildingAdmittedObject

def BuildingWitnessClosed (O : BuildingAdmittedObject) : Prop :=
  O.lemmaConclusion

end BuildingsGeometryDiagramsLemmaCanonicalLaneLean
end HautevilleHouse