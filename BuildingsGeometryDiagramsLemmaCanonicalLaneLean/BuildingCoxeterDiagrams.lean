import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BuildingsGeometryDiagramsLemmaCanonicalLaneLean

structure CoxeterDiagramPackage where
  coxeterType : Type u
  coxeterMatrix : coxeterType → coxeterType → ℕ
  finiteCoxeterGroup : Prop
  classificationClosed : Prop
  dihedralAngle : Prop

def CoxeterDiagramClosed (D : CoxeterDiagramPackage) : Prop :=
  D.finiteCoxeterGroup ∧ D.classificationClosed ∧ D.dihedralAngle

theorem coxeter_diagram_closed (D : CoxeterDiagramPackage) : CoxeterDiagramClosed D := by
  exact And.intro D.finiteCoxeterGroup (And.intro D.classificationClosed D.dihedralAngle)

end BuildingsGeometryDiagramsLemmaCanonicalLaneLean
end HautevilleHouse