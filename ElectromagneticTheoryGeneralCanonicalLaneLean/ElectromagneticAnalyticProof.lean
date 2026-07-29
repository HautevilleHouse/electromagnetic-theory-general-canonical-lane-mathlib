import HautevilleHouse.ElectromagneticTheoryGeneralCanonicalLaneLean.MaxwellFieldPackage

namespace HautevilleHouse
namespace ElectromagneticTheoryGeneralCanonicalLaneLean

structure MaxwellFieldAnalyticCertificate {G : ElectromagneticSpace}
    (F : MaxwellFieldPackage G) where
  faradayLawValid : Prop
  maxwellAmpèreLawValid : Prop
  gaussElectricValid : Prop
  gaussMagneticValid : Prop
  faradayLawValidClosed : faradayLawValid
  maxwellAmpèreLawValidClosed : maxwellAmpèreLawValid
  gaussElectricValidClosed : gaussElectricValid
  gaussMagneticValidClosed : gaussMagneticValid
  fieldEvidence : MaxwellFieldEvidence F

def MaxwellFieldAnalyticCertificateClosed {G : ElectromagneticSpace}
    {F : MaxwellFieldPackage G} (C : MaxwellFieldAnalyticCertificate F) : Prop :=
  C.faradayLawValid ∧ C.maxwellAmpèreLawValid ∧ C.gaussElectricValid ∧ C.gaussMagneticValid ∧ MaxwellFieldClosed F

theorem maxwell_field_analytic_certificate_closed
    {G : ElectromagneticSpace} {F : MaxwellFieldPackage G}
    (C : MaxwellFieldAnalyticCertificate F) :
    MaxwellFieldAnalyticCertificateClosed C := by
  exact And.intro C.faradayLawValidClosed
    (And.intro C.maxwellAmpèreLawValidClosed
      (And.intro C.gaussElectricValidClosed
        (And.intro C.gaussMagneticValidClosed
          (maxwell_field_closed_from_evidence F C.fieldEvidence))))

end ElectromagneticTheoryGeneralCanonicalLaneLean
end HautevilleHouse