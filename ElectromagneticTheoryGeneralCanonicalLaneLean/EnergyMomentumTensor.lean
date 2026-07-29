import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ElectromagneticTheoryGeneralCanonicalLaneLean

structure EnergyMomentumTensorPackage {M : MaxwellEquationsPackage} where
  stressTensor : M.spacetime → Matrix ℝ 4 4
  energyDensity : M.spacetime → ℝ
  momentumDensity : M.spacetime → Vector ℝ
  conservationLaw : Prop
  positiveEnergyCondition : Prop

structure EnergyMomentumTensorEvidence {M : MaxwellEquationsPackage}
    (E : EnergyMomentumTensorPackage M) where
  conservationLawClosed : E.conservationLaw
  positiveEnergyConditionClosed : E.positiveEnergyCondition

def EnergyMomentumTensorClosed {M : MaxwellEquationsPackage}
    (E : EnergyMomentumTensorPackage M) : Prop :=
  E.conservationLaw ∧ E.positiveEnergyCondition

theorem energyMomentumTensor_closed_from_evidence {M : MaxwellEquationsPackage}
    (E : EnergyMomentumTensorPackage M) (Ev : EnergyMomentumTensorEvidence E) :
    EnergyMomentumTensorClosed E := by
  exact And.intro Ev.conservationLawClosed Ev.positiveEnergyConditionClosed

end ElectromagneticTheoryGeneralCanonicalLaneLean
end HautevilleHouse