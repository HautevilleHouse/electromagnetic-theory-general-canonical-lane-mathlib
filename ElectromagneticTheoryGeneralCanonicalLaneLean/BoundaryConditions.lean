import canonicalLaneMathlib.AdmissibleClass
import ElectromagneticTheoryGeneralCanonicalLaneLean.ElectromagneticField

namespace HautevilleHouse
namespace ElectromagneticTheoryGeneralCanonicalLaneLean

structure BoundaryConditionPackage {F : ElectromagneticFieldPackage} where
  domain : Type u
  boundaryType : Prop
  tangentialFieldContinuous : Prop
  normalFluxContinuous : Prop
  perfectlyConductingSurface : Prop

structure BoundaryConditionEvidence {F : ElectromagneticFieldPackage} (B : BoundaryConditionPackage F) where
  tangentialFieldContinuousClosed : B.tangentialFieldContinuous
  normalFluxContinuousClosed : B.normalFluxContinuous
  perfectlyConductingSurfaceClosed : B.perfectlyConductingSurface

def BoundaryConditionClosed {F : ElectromagneticFieldPackage} (B : BoundaryConditionPackage F) : Prop :=
  B.tangentialFieldContinuous ∧ B.normalFluxContinuous ∧ B.perfectlyConductingSurface

theorem boundary_condition_closed_from_evidence {F : ElectromagneticFieldPackage} (B : BoundaryConditionPackage F) (E : BoundaryConditionEvidence B) : BoundaryConditionClosed B := by
  exact And.intro E.tangentialFieldContinuousClosed (And.intro E.normalFluxContinuousClosed E.perfectlyConductingSurfaceClosed)

end ElectromagneticTheoryGeneralCanonicalLaneLean
end HautevilleHouse