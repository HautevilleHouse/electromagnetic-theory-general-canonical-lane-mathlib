import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ElectromagneticTheoryGeneralCanonicalLaneLean

structure MaxwellEquationsPackage where
  electricField : Type u
  magneticField : Type v
  chargeDensity : Type w
  currentDensity : Type x
  gaussLawElectric : Prop
  gaussLawMagnetic : Prop
  faradayLaw : Prop
  ampereLaw : Prop

structure MaxwellEquationsEvidence (P : MaxwellEquationsPackage) where
  gaussLawElectricClosed : P.gaussLawElectric
  gaussLawMagneticClosed : P.gaussLawMagnetic
  faradayLawClosed : P.faradayLaw
  ampereLawClosed : P.ampereLaw

def MaxwellEquationsClosed (P : MaxwellEquationsPackage) : Prop :=
  P.gaussLawElectric ∧ P.gaussLawMagnetic ∧ P.faradayLaw ∧ P.ampereLaw

theorem maxwell_equations_closed_from_evidence (P : MaxwellEquationsPackage) (E : MaxwellEquationsEvidence P) :
    MaxwellEquationsClosed P := by
  exact And.intro E.gaussLawElectricClosed
    (And.intro E.gaussLawMagneticClosed
      (And.intro E.faradayLawClosed E.ampereLawClosed))

end ElectromagneticTheoryGeneralCanonicalLaneLean
end HautevilleHouse