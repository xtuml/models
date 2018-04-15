#/bin/bash
BPHOME=~/xtuml/BridgePoint

echo "integrity tests beginning"

# First run the clean model data.
$BPHOME/tools/mc/bin/xtumlmc_build xtuml_integrity -i MWO_clean.xtuml | sort > MWO_clean.actual
diff -q <(sort MWO_clean.expected) MWO_clean.actual || echo "failed"

# Then run the (intentionally) corrupted model data.
$BPHOME/tools/mc/bin/xtumlmc_build xtuml_integrity -i ExtraSubtype.xtuml | sort > ExtraSubtype.actual
diff -q <(sort ExtraSubtype.expected) ExtraSubtype.actual || echo "failed"
$BPHOME/tools/mc/bin/xtumlmc_build xtuml_integrity -i InvalidNonNullConditionalFormalizerReferential.xtuml | sort > InvalidNonNullConditionalFormalizerReferential.actual
diff -q <(sort InvalidNonNullConditionalFormalizerReferential.expected) InvalidNonNullConditionalFormalizerReferential.actual || echo "failed"
$BPHOME/tools/mc/bin/xtumlmc_build xtuml_integrity -i InvalidNonNullConditionalReflexiveFormalizerReferential.xtuml | sort > InvalidNonNullConditionalReflexiveFormalizerReferential.actual
diff -q <(sort InvalidNonNullConditionalReflexiveFormalizerReferential.expected) InvalidNonNullConditionalReflexiveFormalizerReferential.actual || echo "failed"
$BPHOME/tools/mc/bin/xtumlmc_build xtuml_integrity -i MissingAssociativeAssociator.xtuml | sort > MissingAssociativeAssociator.actual
diff -q <(sort MissingAssociativeAssociator.expected) MissingAssociativeAssociator.actual || echo "failed"
$BPHOME/tools/mc/bin/xtumlmc_build xtuml_integrity -i MissingAssociativeOneSide.xtuml | sort > MissingAssociativeOneSide.actual
diff -q <(sort MissingAssociativeOneSide.expected) MissingAssociativeOneSide.actual || echo "failed"
$BPHOME/tools/mc/bin/xtumlmc_build xtuml_integrity -i MissingAssociativeOtherSide.xtuml | sort > MissingAssociativeOtherSide.actual
diff -q <(sort MissingAssociativeOtherSide.expected) MissingAssociativeOtherSide.actual || echo "failed"
$BPHOME/tools/mc/bin/xtumlmc_build xtuml_integrity -i MissingSimpleFormalizer.xtuml | sort > MissingSimpleFormalizer.actual
diff -q <(sort MissingSimpleFormalizer.expected) MissingSimpleFormalizer.actual || echo "failed"
$BPHOME/tools/mc/bin/xtumlmc_build xtuml_integrity -i MissingSimpleParticipant.xtuml | sort > MissingSimpleParticipant.actual
diff -q <(sort MissingSimpleParticipant.expected) MissingSimpleParticipant.actual || echo "failed"
$BPHOME/tools/mc/bin/xtumlmc_build xtuml_integrity -i MissingSimpleReflexiveFormalizer.xtuml | sort > MissingSimpleReflexiveFormalizer.actual
diff -q <(sort MissingSimpleReflexiveFormalizer.expected) MissingSimpleReflexiveFormalizer.actual || echo "failed"
$BPHOME/tools/mc/bin/xtumlmc_build xtuml_integrity -i MissingSimpleReflexiveParticipant.xtuml | sort > MissingSimpleReflexiveParticipant.actual
diff -q <(sort MissingSimpleReflexiveParticipant.expected) MissingSimpleReflexiveParticipant.actual || echo "failed"
$BPHOME/tools/mc/bin/xtumlmc_build xtuml_integrity -i MissingSubtype.xtuml | sort > MissingSubtype.actual
diff -q <(sort MissingSubtype.expected) MissingSubtype.actual || echo "failed"
$BPHOME/tools/mc/bin/xtumlmc_build xtuml_integrity -i MissingSupertype.xtuml | sort > MissingSupertype.actual
diff -q <(sort MissingSupertype.expected) MissingSupertype.actual || echo "failed"
$BPHOME/tools/mc/bin/xtumlmc_build xtuml_integrity -i NullAssociatorReferential.xtuml | sort > NullAssociatorReferential.actual
diff -q <(sort NullAssociatorReferential.expected) NullAssociatorReferential.actual || echo "failed"
$BPHOME/tools/mc/bin/xtumlmc_build xtuml_integrity -i NullFormalizerReferential.xtuml | sort > NullFormalizerReferential.actual
diff -q <(sort NullFormalizerReferential.expected) NullFormalizerReferential.actual || echo "failed"
$BPHOME/tools/mc/bin/xtumlmc_build xtuml_integrity -i NullReflexiveFormalizerReferential.xtuml | sort > NullReflexiveFormalizerReferential.actual
diff -q <(sort NullReflexiveFormalizerReferential.expected) NullReflexiveFormalizerReferential.actual || echo "failed"
$BPHOME/tools/mc/bin/xtumlmc_build xtuml_integrity -i NullSubtypeReferential.xtuml | sort > NullSubtypeReferential.actual
diff -q <(sort NullSubtypeReferential.expected) NullSubtypeReferential.actual || echo "failed"
$BPHOME/tools/mc/bin/xtumlmc_build xtuml_integrity -i TwoInstancesWithDuplicateIdentifiers.xtuml | sort > TwoInstancesWithDuplicateIdentifiers.actual
diff -q <(sort TwoInstancesWithDuplicateIdentifiers.expected) TwoInstancesWithDuplicateIdentifiers.actual || echo "failed"

echo "integrity tests done"
