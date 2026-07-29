import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ContinuedFractionsComplexAnalyticAspectsLemmaCanonicalLaneLean.CFEndgameClosure

namespace HautevilleHouse
namespace ContinuedFractionsComplexAnalyticAspectsLemmaCanonicalLaneLean

def cfAdmissibleObject : AdmittedTheoremObject := {
  sourceKeyChecked := rfl,
  theoremObjectChecked := rfl
}

def cfAdmissibleClass : AdmissibleClass := {
  object := cfAdmissibleObject,
  endpointSatisfied := True,
  remainderRecorded := False,
  gateWitness := Or.inl trivial
}

theorem cf_closure_checked : ConstrainedCFClosure cfAdmissibleClass := by
  exact constrained_cf_endgame cfAdmissibleClass

end ContinuedFractionsComplexAnalyticAspectsLemmaCanonicalLaneLean
end HautevilleHouse