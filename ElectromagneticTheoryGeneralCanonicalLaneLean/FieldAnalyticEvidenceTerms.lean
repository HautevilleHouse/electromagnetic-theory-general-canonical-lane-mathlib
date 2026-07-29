import HautevilleHouse.ElectromagneticTheoryGeneralCanonicalLaneLean.MaxwellFieldPackage

namespace HautevilleHouse
namespace ElectromagneticTheoryGeneralCanonicalLaneLean

structure MaxwellFieldEvidenceTerms {G : ElectromagneticSpace}
    (F : MaxwellFieldPackage G) (C : MaxwellFieldAnalyticCertificate F) where
  faradayLawValid : C.faradayLawValid
  maxwellAmpèreLawValid : C.maxwellAmpèreLawValid
  gaussElectricValid : C.gaussElectricValid
  gaussMagneticValid : C.gaussMagneticValid
  fieldClosed : MaxwellFieldClosed F

def MaxwellFieldAnalyticCertificate.evidenceTerms {G : ElectromagneticSpace}
    {F : MaxwellFieldPackage G} (C : MaxwellFieldAnalyticCertificate F) :
    MaxwellFieldEvidenceTerms F C :=
  {
    faradayLawValid := C.faradayLawValidClosed
    maxwellAmpèreLawValid := C.maxwellAmpèreLawValidClosed
    gaussElectricValid := C.gaussElectricValidClosed
    gaussMagneticValid := C.gaussMagneticValidClosed
    fieldClosed := maxwell_field_closed_from_evidence F C.fieldEvidence
  }

end ElectromagneticTheoryGeneralCanonicalLaneLean
end HautevilleHouse