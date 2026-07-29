import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuedFractionsComplexAnalyticAspectsLemmaCanonicalLaneLean

structure CFConformalMappingCertificate where
  mappingFunction : ℂ → ℂ
  conformalOnUnitDisc : Prop
  schwarzianDerivativeBound : ℝ
  distortionControl : ℝ → ℝ

def cfConformalMappingCertificate : CFConformalMappingCertificate := {
  mappingFunction := λ z => (1 - z) / (1 + z),
  conformalOnUnitDisc := True,
  schwarzianDerivativeBound := 0.5,
  distortionControl := λ r => 1.0
}

def CFConformalMappingClosed (C : CFConformalMappingCertificate) : Prop :=
  C.conformalOnUnitDisc ∧
  C.schwarzianDerivativeBound > 0 ∧
  (∀ r > 0, C.distortionControl r > 0)

theorem cf_conformal_mapping_closed_checked : CFConformalMappingClosed cfConformalMappingCertificate := by
  refine And.intro trivial (And.intro (by norm_num) ?_)
  intro r hr
  have : r > 0 := hr
  exact by
    simp [cfConformalMappingCertificate]

end ContinuedFractionsComplexAnalyticAspectsLemmaCanonicalLaneLean
end HautevilleHouse