import HautevilleHouse.ElectromagneticTheoryGeneralCanonicalLaneLean.MaxwellObjects

namespace HautevilleHouse
namespace ElectromagneticTheoryGeneralCanonicalLaneLean

structure MaxwellFieldPackage (G : ElectromagneticSpace) where
  fieldTensor : Type u
  potential : Type v
  faradayTensor : fieldTensor
  maxwellSource : Prop
  gaugeInvarianceCondition : Prop

structure MaxwellFieldEvidence {G : ElectromagneticSpace} (F : MaxwellFieldPackage G) where
  faradayTensorClosed : F.faradayTensor = F.faradayTensor
  maxwellSourceClosed : F.maxwellSource
  gaugeInvarianceConditionClosed : F.gaugeInvarianceCondition

def MaxwellFieldClosed {G : ElectromagneticSpace} (F : MaxwellFieldPackage G) : Prop :=
  F.maxwellSource ∧ F.gaugeInvarianceCondition

theorem maxwell_field_closed_from_evidence
    {G : ElectromagneticSpace} (F : MaxwellFieldPackage G)
    (E : MaxwellFieldEvidence F) : MaxwellFieldClosed F := by
  exact And.intro E.maxwellSourceClosed E.gaugeInvarianceConditionClosed

end ElectromagneticTheoryGeneralCanonicalLaneLean
end HautevilleHouse