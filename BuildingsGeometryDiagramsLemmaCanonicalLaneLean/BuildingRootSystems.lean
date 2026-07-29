import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BuildingsGeometryDiagramsLemmaCanonicalLaneLean

structure RootSystemPackage where
  rootLattice : Type u
  simpleRoots : Finset (rootLattice)
  positiveRoots : Prop
  rockWeylGroup : Prop
  crystallographicCondition : Prop

def RootSystemClosed (R : RootSystemPackage) : Prop :=
  R.positiveRoots ∧ R.rockWeylGroup ∧ R.crystallographicCondition

theorem root_system_closed_from_package (R : RootSystemPackage) : RootSystemClosed R := by
  exact And.intro R.positiveRoots (And.intro R.rockWeylGroup R.crystallographicCondition)

end BuildingsGeometryDiagramsLemmaCanonicalLaneLean
end HautevilleHouse