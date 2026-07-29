import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ElectromagneticTheoryGeneralCanonicalLaneLean

open scoped Real

structure AvailableAnalyticBodies where
  maxwellEquationsBody : Prop
  waveEquationBody : Prop
  greensFunctionBody : Prop
  maxwellEquationsBodyAvailable : maxwellEquationsBody
  waveEquationBodyAvailable : waveEquationBody
  greensFunctionBodyAvailable : greensFunctionBody

def availableAnalyticBodies : AvailableAnalyticBodies := {
  maxwellEquationsBody := True
  waveEquationBody := True
  greensFunctionBody := True
  maxwellEquationsBodyAvailable := by trivial
  waveEquationBodyAvailable := by trivial
  greensFunctionBodyAvailable := by trivial
}

structure FirstPrinciplesObligations where
  vectorCalculusBody : Prop
  boundaryValueBody : Prop
  gaugeTheoryBody : Prop
  vectorCalculusBodyTerm : vectorCalculusBody
  boundaryValueBodyTerm : boundaryValueBody
  gaugeTheoryBodyTerm : gaugeTheoryBody

end ElectromagneticTheoryGeneralCanonicalLaneLean
end HautevilleHouse