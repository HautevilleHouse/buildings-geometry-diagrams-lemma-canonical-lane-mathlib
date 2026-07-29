import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BuildingsGeometryDiagramsLemmaCanonicalLaneLean

structure MoufangPackage where
  buildingType : Type u
  rootGroups : Type v
  moufangCondition : Prop
  spherical : Prop
  thick : Prop

structure MoufangEvidence (M : MoufangPackage) where
  moufangConditionClosed : M.moufangCondition
  sphericalClosed : M.spherical
  thickClosed : M.thick

def MoufangClosed (M : MoufangPackage) : Prop :=
  M.moufangCondition ∧ M.spherical ∧ M.thick

theorem moufang_closed_from_evidence (M : MoufangPackage) (E : MoufangEvidence M) :
    MoufangClosed M := by
  exact And.intro E.moufangConditionClosed (And.intro E.sphericalClosed E.thickClosed)

end BuildingsGeometryDiagramsLemmaCanonicalLaneLean
end HautevilleHouse