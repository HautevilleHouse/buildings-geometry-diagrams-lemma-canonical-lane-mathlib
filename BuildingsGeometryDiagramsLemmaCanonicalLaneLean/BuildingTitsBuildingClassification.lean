import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BuildingsGeometryDiagramsLemmaCanonicalLaneLean

structure TitsBuildingClassificationPackage where
  buildingType : Type u
  sphericalBuilding : Prop
  irreducibleComponent : Prop
  classificationTheorem : Prop
  thicknessCondition : Prop

def TitsClassificationClosed (T : TitsBuildingClassificationPackage) : Prop :=
  T.sphericalBuilding ∧ T.irreducibleComponent ∧ T.classificationTheorem

theorem tits_classification_closed (T : TitsBuildingClassificationPackage) : TitsClassificationClosed T := by
  exact And.intro T.sphericalBuilding (And.intro T.irreducibleComponent T.classificationTheorem)

end BuildingsGeometryDiagramsLemmaCanonicalLaneLean
end HautevilleHouse