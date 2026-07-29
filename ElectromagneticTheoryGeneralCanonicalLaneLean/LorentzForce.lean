import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ElectromagneticTheoryGeneralCanonicalLaneLean

structure LorentzForcePackage {G : ElectromagneticFieldTensor}
    (F : MaxwellEquationsPackage G) (W : WavePropagationPackage F) where
  forceLaw : Prop
  chargeDensity : Prop
  currentDensity : Prop
  energyMomentumTensor : Prop

structure LorentzForceEvidence {G : ElectromagneticFieldTensor}
    {F : MaxwellEquationsPackage G} {W : WavePropagationPackage F}
    (L : LorentzForcePackage F W) where
  forceLawClosed : L.forceLaw
  chargeDensityClosed : L.chargeDensity
  currentDensityClosed : L.currentDensity
  energyMomentumTensorClosed : L.energyMomentumTensor

def LorentzForceClosed {G : ElectromagneticFieldTensor}
    {F : MaxwellEquationsPackage G} {W : WavePropagationPackage F}
    (L : LorentzForcePackage F W) : Prop :=
  L.forceLaw ∧ L.chargeDensity ∧ L.currentDensity ∧ L.energyMomentumTensor

theorem lorentz_force_closed_from_evidence
    {G : ElectromagneticFieldTensor} {F : MaxwellEquationsPackage G}
    {W : WavePropagationPackage F} (L : LorentzForcePackage F W)
    (E : LorentzForceEvidence L) : LorentzForceClosed L := by
  exact And.intro E.forceLawClosed
    (And.intro E.chargeDensityClosed
      (And.intro E.currentDensityClosed E.energyMomentumTensorClosed))

end ElectromagneticTheoryGeneralCanonicalLaneLean
end HautevilleHouse
