import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuedFractionsComplexAnalyticAspectsLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.sourceKeyChecked ∧ A.object.theoremObjectChecked

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact ⟨A.object.sourceKeyChecked, A.object.theoremObjectChecked⟩

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.gateWitness

def ConstrainedCFClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_cf_endgame (A : AdmissibleClass) : ConstrainedCFClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ContinuedFractionsComplexAnalyticAspectsLemmaCanonicalLaneLean
end HautevilleHouse