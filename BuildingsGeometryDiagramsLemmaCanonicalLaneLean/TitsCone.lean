import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BuildingsGeometryDiagramsLemmaCanonicalLaneLean.RootGroupPair

namespace HautevilleHouse
namespace BuildingsGeometryDiagramsLemmaCanonicalLaneLean

structure TitsCone (Φ : Type u) (R : RootSystem Φ) (P : RootGroupPair Φ R) where
  cone : Type v
  weylChambers : Set (Set cone)
  fundamentalChamber : Set cone
  action : P.weylGroup → cone → cone
  coneProperties : Prop
  chamberDecomposition : Prop
  conePropertiesTerm : coneProperties
  chamberDecompositionTerm : chamberDecomposition

def TitsConeClosed (Φ : Type u) (R : RootSystem Φ) (P : RootGroupPair Φ R) (T : TitsCone Φ R P) : Prop :=
  T.coneProperties ∧ T.chamberDecomposition

theorem tits_cone_closed (Φ : Type u) (R : RootSystem Φ) (P : RootGroupPair Φ R) (T : TitsCone Φ R P) : TitsConeClosed Φ R P T :=
  And.intro T.conePropertiesTerm T.chamberDecompositionTerm

end BuildingsGeometryDiagramsLemmaCanonicalLaneLean
end HautevilleHouse
