import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuedFractionsComplexAnalyticAspectsLemmaCanonicalLaneLean

structure ComplexContFracDatum where
  analyticContinuationRoute : Prop
  cauchyIntegralForm : Prop
  convergenceRegion : Prop
  valueDistributionEndpoint : Prop
  uniformizationRoute : Prop

def primitiveComplexContFracDatum : ComplexContFracDatum := {
  analyticContinuationRoute := True,
  cauchyIntegralForm := True,
  convergenceRegion := True,
  valueDistributionEndpoint := True,
  uniformizationRoute := True
}

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ScopedClosure A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact ⟨A.object.sourceKeyChecked,
    A.object.theoremObjectChecked,
    A.object.operatorModelWitness,
    A.object.spectralPersistenceBridgeWitness,
    A.object.sourceBoundaryLedgerWitness,
    A.object.classicalRemainderCarried⟩

end ContinuedFractionsComplexAnalyticAspectsLemmaCanonicalLaneLean
end HautevilleHouse
