import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ElectromagneticTheoryGeneralCanonicalLaneLean

structure ElectromagneticFieldTensor where
  manifold : Type u
  topology : TopologicalSpace manifold
  tensorField : Type v
  faradayTensor : Type w
  dualFaradayTensor : Type x
  electricField : Type y
  magneticField : Type z
  smoothManifold : Prop
  tensorSmooth : Prop
  faradayLawful : Prop
  dualFaradayLawful : Prop
  constitutiveRelation : Prop

structure ElectromagneticFieldEvidence (G : ElectromagneticFieldTensor) where
  smoothManifoldClosed : G.smoothManifold
  tensorSmoothClosed : G.tensorSmooth
  faradayLawfulClosed : G.faradayLawful
  dualFaradayLawfulClosed : G.dualFaradayLawful
  constitutiveRelationClosed : G.constitutiveRelation

def ElectromagneticFieldClosed (G : ElectromagneticFieldTensor) : Prop :=
  G.smoothManifold ∧ G.tensorSmooth ∧ G.faradayLawful ∧ G.dualFaradayLawful ∧ G.constitutiveRelation

theorem electromagnetic_field_closed_from_evidence
    (G : ElectromagneticFieldTensor) (E : ElectromagneticFieldEvidence G) :
    ElectromagneticFieldClosed G := by
  exact And.intro E.smoothManifoldClosed
    (And.intro E.tensorSmoothClosed
      (And.intro E.faradayLawfulClosed
        (And.intro E.dualFaradayLawfulClosed E.constitutiveRelationClosed)))

end ElectromagneticTheoryGeneralCanonicalLaneLean
end HautevilleHouse
