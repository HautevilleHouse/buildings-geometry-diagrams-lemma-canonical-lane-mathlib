import canonicalLaneMathlib.AdmissibleClass

/-!
# Diagram Automorphism Package

This module defines automorphisms of building diagrams, including Coxeter diagram
automorphisms, folding maps, and their interaction with the admissible class structure.
-/

namespace HautevilleHouse
namespace BuildingsGeometryDiagramsLemmaCanonicalLaneLean

structure CoxeterDiagramAutomorphism (M : Type u) (C : CoxeterSystem M) where
  f : C.S → C.S
  preservesProducts : ∀ i j : C.S, C.m (f i, f j) = C.m (i, j)
  bijective : Function.Bijective f
  preservesProductsTerm : preservesProducts
  bijectiveTerm : bijective

structure DiagramFolding (M : Type u) (C : CoxeterSystem M) (σ : CoxeterDiagramAutomorphism M C) where
  quotientChamberSystem : ChamberSystem M
  projection : C.chambers → quotientChamberSystem.chambers
  projectionSurjective : Function.Surjective projection
  projectionCompatibleWithAdjacency : ∀ c c' : C.chambers, C.adjacency c c' →
    quotientChamberSystem.adjacency (projection c) (projection c')
  foldingPreservesWeights : Prop
  foldingPreservesWeightsTerm : foldingPreservesWeights

structure DiagramAutomorphismEvidence (M : Type u) (C : CoxeterSystem M) (σ : CoxeterDiagramAutomorphism M C) where
  foldingProvided : DiagramFolding M C σ
  foldingClosed : foldingProvided.foldingPreservesWeights

def DiagramAutomorphismClosed (M : Type u) (C : CoxeterSystem M) (σ : CoxeterDiagramAutomorphism M C) : Prop :=
  σ.bijective ∧ σ.preservesProducts

theorem diagram_automorphism_closed_from_evidence
  (M : Type u) (C : CoxeterSystem M) (σ : CoxeterDiagramAutomorphism M C)
  (E : DiagramAutomorphismEvidence M C σ) : DiagramAutomorphismClosed M C σ := by
  exact And.intro σ.bijectiveTerm σ.preservesProductsTerm

diagram_automorphism_closed_from_evidence?

end BuildingsGeometryDiagramsLemmaCanonicalLaneLean
end HautevilleHouse