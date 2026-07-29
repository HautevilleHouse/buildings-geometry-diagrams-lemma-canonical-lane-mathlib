import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BuildingsGeometryDiagramsLemmaCanonicalLaneLean

structure RootSystem (Φ : Type u) where
  roots : Set Φ
  positiveRoots : Set Φ
  simpleRoots : Set Φ
  weylGroup : Type v
  rootReflections : Φ → (weylGroup)
  rootSystemAxioms : Prop
  rootSystemAxiomsTerm : rootSystemAxioms

structure RootGroupPair (Φ : Type u) (R : RootSystem Φ) where
  rootGroups : Φ → Type w
  groupLaws : Prop
  commutation : Prop
  groupLawsTerm : groupLaws
  commutationTerm : commutation

def RootGroupPairClosed (Φ : Type u) (R : RootSystem Φ) (P : RootGroupPair Φ R) : Prop :=
  P.groupLaws ∧ P.commutation

theorem root_group_pair_closed (Φ : Type u) (R : RootSystem Φ) (P : RootGroupPair Φ R) : RootGroupPairClosed Φ R P :=
  And.intro P.groupLawsTerm P.commutationTerm

end BuildingsGeometryDiagramsLemmaCanonicalLaneLean
end HautevilleHouse
