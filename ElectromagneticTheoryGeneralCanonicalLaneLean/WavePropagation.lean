import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ElectromagneticTheoryGeneralCanonicalLaneLean

structure WavePropagationPackage {G : ElectromagneticFieldTensor}
    (F : MaxwellEquationsPackage G) where
  waveEquation : Prop
  speedOfLight : Prop
  polarization : Prop
  energyTransport : Prop

structure WavePropagationEvidence {G : ElectromagneticFieldTensor}
    {F : MaxwellEquationsPackage G} (W : WavePropagationPackage F) where
  waveEquationClosed : W.waveEquation
  speedOfLightClosed : W.speedOfLight
  polarizationClosed : W.polarization
  energyTransportClosed : W.energyTransport

def WavePropagationClosed {G : ElectromagneticFieldTensor}
    {F : MaxwellEquationsPackage G} (W : WavePropagationPackage F) : Prop :=
  W.waveEquation ∧ W.speedOfLight ∧ W.polarization ∧ W.energyTransport

theorem wave_propagation_closed_from_evidence
    {G : ElectromagneticFieldTensor} {F : MaxwellEquationsPackage G}
    (W : WavePropagationPackage F) (E : WavePropagationEvidence W) :
    WavePropagationClosed W := by
  exact And.intro E.waveEquationClosed
    (And.intro E.speedOfLightClosed
      (And.intro E.polarizationClosed E.energyTransportClosed))

end ElectromagneticTheoryGeneralCanonicalLaneLean
end HautevilleHouse
