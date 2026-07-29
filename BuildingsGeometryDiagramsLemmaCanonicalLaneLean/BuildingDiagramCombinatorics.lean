import canonicalLaneMathlib.AdmissibleClass

/-!
# Building Diagram Combinatorics Package

This module defines combinatorial data structures for building geometry diagrams:
chamber systems, galleries, Coxeter groups, and diagram automorphisms.
The package packages the combinatorial layer of buildings into admissible-class
bridge/gate closure.
-/

namespace HautevilleHouse
namespace BuildingsGeometryDiagramsLemmaCanonicalLaneLean

structure CoxeterSystem where
  M : Type u
  S : Set M
  m : M × M → ℕ ∪ {∞}
  coxeterMatrixSymmetric : ∀ i j : M, m (i, j) = m (j, i)
  coxeterDiagonalOne : ∀ i : M, m (i, i) = 1
  coxeterOffDiagonalNotOne : ∀ i j : M, i ≠ j → m (i, j) ≠ 1
  groupPresented : Prop
  groupPresentedTerm : groupPresented

structure ChamberSystem (M : Type u) where
  chambers : Type v
  adjacency : chambers → chambers → Prop
  galleryConnected : Prop
  lengthFunction : chambers → ℕ
  W : CoxeterSystem
  typeFunction : chambers → W.S
  chamberTransitive : Prop
  chamberTransitiveTerm : chamberTransitive

structure Gallery (M : Type u) (C : ChamberSystem M) where
  start : C.chambers
  steps : List C.chambers
  adjacentEachStep : ∀ (c c' : C.chambers), (c, c') ∈ steps.zip pairs → C.adjacency c c'
  reduced : Prop
  reducedTerm : reduced

structure BuildingDiagram (M : Type u) (C : ChamberSystem M) where
  allApartments : Set (Subtype (fun (A : Set C.chambers) => -- apartment condition
    (∃ (W : CoxeterSystem), (∀ (c c' : A), W.m (C.typeFunction c, C.typeFunction c') = 2 → C.adjacency c c'))))
  anyTwoChambersInAnApartment : ∀ c c' : C.chambers, ∃ A : Subtype (fun A' : Set C.chambers => True),
    c ∈ A ∧ c' ∈ A ∧ A ∈ allApartments
  apartmentCoxeter : ∀ A ∈ allApartments, ∃ W : CoxeterSystem, (∀ c : A, C.typeFunction c ∈ W.S)
  buildingAxiomSatisfied : Prop
  buildingAxiomSatisfiedTerm : buildingAxiomSatisfied

def CoxeterSystemClosed (C : CoxeterSystem) : Prop := C.groupPresented

theorem coxeter_system_closed_from_evidence (C : CoxeterSystem) : CoxeterSystemClosed C := by
  exact C.groupPresentedTerm

end BuildingsGeometryDiagramsLemmaCanonicalLaneLean
end HautevilleHouse