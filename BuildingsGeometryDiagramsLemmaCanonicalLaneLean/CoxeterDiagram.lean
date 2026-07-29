import BuildingsGeometryDiagramsLemmaCanonicalLaneLean.BuildingBridgeLemmas

namespace HautevilleHouse
namespace BuildingsGeometryDiagramsLemmaCanonicalLaneLean

structure CoxeterDiagramData where
  rank : Nat
  matrix : Matrix (Fin rank) (Fin rank) ℕ
  symmetric : Prop
  diagonalOne : Prop
  offDiagonalAtLeastTwo : Prop
  symmetricTerm : symmetric
  diagonalOneTerm : diagonalOne
  offDiagonalAtLeastTwoTerm : offDiagonalAtLeastTwo

structure CoxeterDiagramEvidence (C : CoxeterDiagramData) where
  symmetricClosed : C.symmetric
  diagonalOneClosed : C.diagonalOne
  offDiagonalAtLeastTwoClosed : C.offDiagonalAtLeastTwo

def CoxeterDiagramClosed (C : CoxeterDiagramData) : Prop :=
  C.symmetric ∧ C.diagonalOne ∧ C.offDiagonalAtLeastTwo

theorem coxeter_diagram_closed_from_evidence (C : CoxeterDiagramData) (E : CoxeterDiagramEvidence C) :
    CoxeterDiagramClosed C := by
  exact And.intro E.symmetricClosed (And.intro E.diagonalOneClosed E.offDiagonalAtLeastTwoClosed)

end BuildingsGeometryDiagramsLemmaCanonicalLaneLean
end HautevilleHouse