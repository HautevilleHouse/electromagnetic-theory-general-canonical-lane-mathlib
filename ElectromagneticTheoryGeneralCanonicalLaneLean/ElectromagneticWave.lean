import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ElectromagneticTheoryGeneralCanonicalLaneLean.MaxwellEquations

namespace HautevilleHouse
namespace ElectromagneticTheoryGeneralCanonicalLaneLean

structure ElectromagneticWavePackage {M : MaxwellEquationsPackage} where
  waveEquation : Prop
  polarization : Prop
  speedOfLight : Prop
  energyFlux : Prop

structure ElectromagneticWaveEvidence {M : MaxwellEquationsPackage} (W : ElectromagneticWavePackage M) where
  waveEquationClosed : W.waveEquation
  polarizationClosed : W.polarization
  speedOfLightClosed : W.speedOfLight
  energyFluxClosed : W.energyFlux

def ElectromagneticWaveClosed {M : MaxwellEquationsPackage} (W : ElectromagneticWavePackage M) : Prop :=
  W.waveEquation ∧ W.polarization ∧ W.speedOfLight ∧ W.energyFlux

theorem electromagnetic_wave_closed_from_evidence {M : MaxwellEquationsPackage}
    (W : ElectromagneticWavePackage M) (E : ElectromagneticWaveEvidence W) :
    ElectromagneticWaveClosed W := by
  exact And.intro E.waveEquationClosed
    (And.intro E.polarizationClosed
      (And.intro E.speedOfLightClosed E.energyFluxClosed))

end ElectromagneticTheoryGeneralCanonicalLaneLean
end HautevilleHouse