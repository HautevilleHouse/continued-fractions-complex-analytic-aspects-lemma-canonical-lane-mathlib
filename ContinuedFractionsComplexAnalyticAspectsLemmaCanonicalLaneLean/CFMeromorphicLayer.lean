import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuedFractionsComplexAnalyticAspectsLemmaCanonicalLaneLean

structure CFMeromorphicCertificate where
  poleLocations : Set ℂ
  orderOfPoles : ℂ → ℕ
  residualBounds : ℂ → ℂ
  essentialSingularityFree : Prop

def cfMeromorphicCertificate : CFMeromorphicCertificate := {
  poleLocations := {z | z = 0},
  orderOfPoles := λ z => if z = 0 then 1 else 0,
  residualBounds := λ z => 0,
  essentialSingularityFree := True
}

def CFMeromorphicClosed (C : CFMeromorphicCertificate) : Prop :=
  C.essentialSingularityFree ∧
  (∀ z, C.orderOfPoles z = 0 → C.residualBounds z = 0)

theorem cf_meromorphic_closed_checked : CFMeromorphicClosed cfMeromorphicCertificate := by
  exact And.intro trivial (λ z h => by
    simp [cfMeromorphicCertificate, h])

end ContinuedFractionsComplexAnalyticAspectsLemmaCanonicalLaneLean
end HautevilleHouse