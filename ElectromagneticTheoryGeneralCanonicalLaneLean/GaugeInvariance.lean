import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ElectromagneticTheoryGeneralCanonicalLaneLean

structure GaugeInvariancePackage {M : MaxwellEquationsPackage}
    (P : ElectromagneticPotentialPackage M) where
  gaugeTransformation : Type u
  actionOnPotential : gaugeTransformation → (M.spacetime → ℝ) → (M.spacetime → Vector ℝ) → (M.spacetime → ℝ) × (M.spacetime → Vector ℝ)
  invarianceOfFields : Prop
  gaugeGroupStructure : Prop

structure GaugeInvarianceEvidence {M : MaxwellEquationsPackage}
    {P : ElectromagneticPotentialPackage M} (G : GaugeInvariancePackage P) where
  invarianceOfFieldsClosed : G.invarianceOfFields
  gaugeGroupStructureClosed : G.gaugeGroupStructure

def GaugeInvarianceClosed {M : MaxwellEquationsPackage}
    {P : ElectromagneticPotentialPackage M} (G : GaugeInvariancePackage P) : Prop :=
  G.invarianceOfFields ∧ G.gaugeGroupStructure

theorem gaugeInvariance_closed_from_evidence {M : MaxwellEquationsPackage}
    {P : ElectromagneticPotentialPackage M} (G : GaugeInvariancePackage P)
    (E : GaugeInvarianceEvidence G) : GaugeInvarianceClosed G := by
  exact And.intro E.invarianceOfFieldsClosed E.gaugeGroupStructureClosed

end ElectromagneticTheoryGeneralCanonicalLaneLean
end HautevilleHouse