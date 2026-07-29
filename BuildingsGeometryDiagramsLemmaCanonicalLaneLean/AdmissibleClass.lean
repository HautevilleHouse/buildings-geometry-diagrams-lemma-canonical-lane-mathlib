import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BuildingsGeometryDiagramsLemmaCanonicalLaneLean

structure AdmissibleClass where
  object : AdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  BuildingClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BuildingsGeometryDiagramsLemmaCanonicalLaneLean
end HautevilleHouse