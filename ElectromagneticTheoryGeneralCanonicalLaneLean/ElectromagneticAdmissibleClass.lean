import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ElectromagneticTheoryGeneralCanonicalLaneLean

structure ElectromagneticAdmittedObject where
  electricField : Type u
  magneticField : Type v
  satisfiesMaxwell : Prop
  conclusion : satisfiesMaxwell

structure ElectromagneticAdmissibleClass where
  object : ElectromagneticAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

end ElectromagneticTheoryGeneralCanonicalLaneLean
end HautevilleHouse