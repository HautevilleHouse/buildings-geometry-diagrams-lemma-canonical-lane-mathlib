import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BuildingsGeometryDiagramsLemmaCanonicalLaneLean

structure TitsBuildingPackage where
  chamberSystem : ChamberSystemPackage
  apartmentSystem : Prop
  labelFunction : chamberSystem.chamberSet → ℕ
  weylGroup : Type u
  weylGroupAction : weylGroup → chamberSystem.chamberSet → chamberSystem.chamberSet
  buildingAxiom : Prop

structure TitsBuildingEvidence (T : TitsBuildingPackage) where
  apartmentSystemClosed : T.apartmentSystem
  buildingAxiomClosed : T.buildingAxiom

def TitsBuildingClosed (T : TitsBuildingPackage) : Prop :=
  T.apartmentSystem ∧ T.buildingAxiom

theorem tits_building_closed_from_evidence (T : TitsBuildingPackage) (E : TitsBuildingEvidence T) :
    TitsBuildingClosed T := by
  exact And.intro E.apartmentSystemClosed E.buildingAxiomClosed

end BuildingsGeometryDiagramsLemmaCanonicalLaneLean
end HautevilleHouse