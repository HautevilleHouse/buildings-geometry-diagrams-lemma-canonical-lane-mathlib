import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BuildingsGeometryDiagramsLemmaCanonicalLaneLean

structure SphericalNervePackage where
  simplexSet : Type u
  flagCondition : Prop
  sphericalBuilding : Prop
  rankAtLeastThree : Prop
  nerveComplexSimplicial : Prop

def SphericalNerveClosed (N : SphericalNervePackage) : Prop :=
  N.flagCondition ∧ N.sphericalBuilding ∧ N.nerveComplexSimplicial

theorem spherical_nerve_closed (N : SphericalNervePackage) : SphericalNerveClosed N := by
  exact And.intro N.flagCondition (And.intro N.sphericalBuilding N.nerveComplexSimplicial)

end BuildingsGeometryDiagramsLemmaCanonicalLaneLean
end HautevilleHouse