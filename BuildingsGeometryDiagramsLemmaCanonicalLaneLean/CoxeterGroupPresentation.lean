import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BuildingsGeometryDiagramsLemmaCanonicalLaneLean

structure CoxeterGroupPackage where
  generators : Type u
  relations : (generators × generators) → ℕ
  coxeterMatrixSymmetry : ∀ i j, relations (i,j) = relations (j,i)
  coxeterGroupDefined : Prop
  diagonalOne : ∀ i, relations (i,i) = 1

structure CoxeterGroupEvidence (C : CoxeterGroupPackage) where
  coxeterGroupDefinedClosed : C.coxeterGroupDefined
  diagonalOneClosed : ∀ i, C.relations (i,i) = 1
  symmetryClosed : ∀ i j, C.relations (i,j) = C.relations (j,i)

def CoxeterGroupClosed (C : CoxeterGroupPackage) : Prop :=
  C.coxeterGroupDefined

theorem coxeter_group_closed_from_evidence (C : CoxeterGroupPackage) (E : CoxeterGroupEvidence C) :
    CoxeterGroupClosed C := by
  exact E.coxeterGroupDefinedClosed

end BuildingsGeometryDiagramsLemmaCanonicalLaneLean
end HautevilleHouse