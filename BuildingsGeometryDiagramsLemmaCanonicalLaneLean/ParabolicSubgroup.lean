import canonicalLaneMathlib.AdmissibleClass

/-!
# Parabolic Subgroup Package

This module defines parabolic subgroups of Coxeter groups and their role in
building geometry, including the bridge/gate closure for admissible classes.
-/

namespace HautevilleHouse
namespace BuildingsGeometryDiagramsLemmaCanonicalLaneLean

structure ParabolicSubgroup (M : Type u) (C : CoxeterSystem M) where
  J : Set C.S
  subgroup : Set (Group.Carrier C.groupPresented) -- requires group structure
  generatedByReflectionsInJ : Prop
  finiteParabolicCondition : Prop
  finiteParabolicConditionTerm : finiteParabolicCondition

structure ParabolicResidue (M : Type u) (C : ChamberSystem M) (P : ParabolicSubgroup M (coxeterSystemOf C)) where
  chambers : Set C.chambers
  residueType : Set C.W.S
  cosetDecomposition : Prop
  cosetDecompositionTerm : cosetDecomposition

structure ParabolicEvidence (M : Type u) (C : ChamberSystem M) (P : ParabolicSubgroup M (coxeterSystemOf C)) where
  parabolicSubgroupClosed : P.finiteParabolicCondition
  residueProvided : ParabolicResidue M C P

def ParabolicClosed (M : Type u) (C : ChamberSystem M) (P : ParabolicSubgroup M (coxeterSystemOf C)) : Prop :=
  P.finiteParabolicCondition ∧ P.J ⊆ C.W.S

theorem parabolic_closed_from_evidence
  (M : Type u) (C : ChamberSystem M) (P : ParabolicSubgroup M (coxeterSystemOf C))
  (E : ParabolicEvidence M C P) : ParabolicClosed M C P := by
  exact And.intro E.parabolicSubgroupClosed (by
    -- need to show P.J ⊆ C.W.S which is true by construction
    intro x hx
    exact hx)

end BuildingsGeometryDiagramsLemmaCanonicalLaneLean
end HautevilleHouse