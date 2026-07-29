import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ElectromagneticTheoryGeneralCanonicalLaneLean

structure ElectromagneticSpace where
  spacetime : Type
  topology : TopologicalSpace spacetime
  metric : Type

structure ElectromagneticFieldConfig where
  space : ElectromagneticSpace
  maxwellEquations : Prop
  faradayLaw : Prop
  maxwellAmpèreLaw : Prop
  gaussElectric : Prop
  gaussMagnetic : Prop

structure ElectromagneticAdmittedObject where
  fieldConfig : ElectromagneticFieldConfig
  gaugeInvariance : Prop
  solutionExistence : Prop
  conclusion : solutionExistence

def ElectromagneticWitnessClosed (O : ElectromagneticAdmittedObject) : Prop :=
  O.solutionExistence

end ElectromagneticTheoryGeneralCanonicalLaneLean
end HautevilleHouse