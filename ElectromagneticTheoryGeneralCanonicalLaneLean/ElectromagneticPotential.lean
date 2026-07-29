import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ElectromagneticTheoryGeneralCanonicalLaneLean

structure ElectromagneticPotentialPackage (M : MaxwellEquationsPackage) where
  scalarPotential : M.spacetime → ℝ
  vectorPotential : M.spacetime → Vector ℝ
  fieldsFromPotentials : Prop
  gaugeFreedom : Prop
  lorenzGaugeCondition : Prop

structure ElectromagneticPotentialEvidence {M : MaxwellEquationsPackage}
    (P : ElectromagneticPotentialPackage M) where
  fieldsFromPotentialsClosed : P.fieldsFromPotentials
  gaugeFreedomClosed : P.gaugeFreedom
  lorenzGaugeConditionClosed : P.lorenzGaugeCondition

def ElectromagneticPotentialClosed {M : MaxwellEquationsPackage}
    (P : ElectromagneticPotentialPackage M) : Prop :=
  P.fieldsFromPotentials ∧ P.gaugeFreedom ∧ P.lorenzGaugeCondition

theorem electromagneticPotential_closed_from_evidence {M : MaxwellEquationsPackage}
    (P : ElectromagneticPotentialPackage M) (E : ElectromagneticPotentialEvidence P) :
    ElectromagneticPotentialClosed P := by
  exact And.intro E.fieldsFromPotentialsClosed (And.intro E.gaugeFreedomClosed E.lorenzGaugeConditionClosed)

end ElectromagneticTheoryGeneralCanonicalLaneLean
end HautevilleHouse