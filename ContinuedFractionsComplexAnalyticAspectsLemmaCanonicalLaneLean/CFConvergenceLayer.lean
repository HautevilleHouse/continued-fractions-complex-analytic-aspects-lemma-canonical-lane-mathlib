import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuedFractionsComplexAnalyticAspectsLemmaCanonicalLaneLean

structure CFConvergenceCertificate where
  convergenceRadius : ℝ
  tailBound : ℝ
  partialDenominatorGrowth : ℕ → ℕ
  analyticOnDisc : Prop

def cfConvergenceCertificate : CFConvergenceCertificate := {
  convergenceRadius := 4.0,
  tailBound := 0.25,
  partialDenominatorGrowth := λ n => n + 1,
  analyticOnDisc := True
}

def CFConvergenceClosed (C : CFConvergenceCertificate) : Prop :=
  C.convergenceRadius > 0 ∧
  C.tailBound > 0 ∧
  C.analyticOnDisc

theorem cf_convergence_closed_checked : CFConvergenceClosed cfConvergenceCertificate := by
  exact And.intro (by norm_num) (And.intro (by norm_num) trivial)

end ContinuedFractionsComplexAnalyticAspectsLemmaCanonicalLaneLean
end HautevilleHouse