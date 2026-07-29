import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ElectromagneticTheoryGeneralCanonicalLaneLean

structure WaveEquationsPackage {M : MaxwellEquationsPackage}
    (P : ElectromagneticPotentialPackage M) where
  waveEquationScalar : Prop
  waveEquationVector : Prop
  propagationSpeed : ℝ
  dispersionRelation : Prop

structure WaveEquationsEvidence {M : MaxwellEquationsPackage}
    {P : ElectromagneticPotentialPackage M} (W : WaveEquationsPackage P) where
  waveEquationScalarClosed : W.waveEquationScalar
  waveEquationVectorClosed : W.waveEquationVector
  dispersionRelationClosed : W.dispersionRelation

def WaveEquationsClosed {M : MaxwellEquationsPackage}
    {P : ElectromagneticPotentialPackage M} (W : WaveEquationsPackage P) : Prop :=
  W.waveEquationScalar ∧ W.waveEquationVector ∧ W.dispersionRelation

theorem waveEquations_closed_from_evidence {M : MaxwellEquationsPackage}
    {P : ElectromagneticPotentialPackage M} (W : WaveEquationsPackage P)
    (E : WaveEquationsEvidence W) : WaveEquationsClosed W := by
  exact And.intro E.waveEquationScalarClosed (And.intro E.waveEquationVectorClosed E.dispersionRelationClosed)

end ElectromagneticTheoryGeneralCanonicalLaneLean
end HautevilleHouse