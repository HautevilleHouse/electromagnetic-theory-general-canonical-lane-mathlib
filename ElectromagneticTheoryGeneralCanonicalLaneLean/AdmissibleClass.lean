import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ElectromagneticTheoryGeneralCanonicalLaneLean

structure ElectromagneticAdmittedObject where
  spacetime : Type u
  topology : TopologicalSpace spacetime
  electricField : spacetime → Vector ℝ
  magneticField : spacetime → Vector ℝ
  satisfiesMaxwell : Prop
  conclusion : satisfiesMaxwell

structure AdmissibleClass where
  object : ElectromagneticAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  A.object.satisfiesMaxwell ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ElectromagneticTheoryGeneralCanonicalLaneLean
end HautevilleHouse