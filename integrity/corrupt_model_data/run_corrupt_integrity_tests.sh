#/bin/bash
BPHOME=~/xtuml/BridgePoint

echo "integrity tests beginning"

# First run the clean model data.
$BPHOME/tools/mc/bin/xtumlmc_build xtuml_integrity -i MWO_clean.xtuml > MWO_clean.actual
diff -q MWO_clean.expected MWO_clean.actual || echo "failed"

# Then run the (intentionally) corrupted model data.
$BPHOME/tools/mc/bin/xtumlmc_build xtuml_integrity -i ExtraSubtype.xtuml > ExtraSubtype.actual
diff -q ExtraSubtype.expected ExtraSubtype.actual || echo "failed"
$BPHOME/tools/mc/bin/xtumlmc_build xtuml_integrity -i InvalidNonNullConditionalFormalizerReferential.xtuml > InvalidNonNullConditionalFormalizerReferential.actual
diff -q InvalidNonNullConditionalFormalizerReferential.expected InvalidNonNullConditionalFormalizerReferential.actual || echo "failed"
$BPHOME/tools/mc/bin/xtumlmc_build xtuml_integrity -i InvalidNonNullConditionalReflexiveFormalizerReferential.xtuml > InvalidNonNullConditionalReflexiveFormalizerReferential.actual
diff -q InvalidNonNullConditionalReflexiveFormalizerReferential.expected InvalidNonNullConditionalReflexiveFormalizerReferential.actual || echo "failed"
$BPHOME/tools/mc/bin/xtumlmc_build xtuml_integrity -i MissingAssociativeAssociator.xtuml > MissingAssociativeAssociator.actual
diff -q MissingAssociativeAssociator.expected MissingAssociativeAssociator.actual || echo "failed"
$BPHOME/tools/mc/bin/xtumlmc_build xtuml_integrity -i MissingAssociativeOneSide.xtuml > MissingAssociativeOneSide.actual
diff -q MissingAssociativeOneSide.expected MissingAssociativeOneSide.actual || echo "failed"
$BPHOME/tools/mc/bin/xtumlmc_build xtuml_integrity -i MissingAssociativeOtherSide.xtuml > MissingAssociativeOtherSide.actual
diff -q MissingAssociativeOtherSide.expected MissingAssociativeOtherSide.actual || echo "failed"
$BPHOME/tools/mc/bin/xtumlmc_build xtuml_integrity -i MissingSimpleFormalizer.xtuml > MissingSimpleFormalizer.actual
diff -q MissingSimpleFormalizer.expected MissingSimpleFormalizer.actual || echo "failed"
$BPHOME/tools/mc/bin/xtumlmc_build xtuml_integrity -i MissingSimpleParticipant.xtuml > MissingSimpleParticipant.actual
diff -q MissingSimpleParticipant.expected MissingSimpleParticipant.actual || echo "failed"
$BPHOME/tools/mc/bin/xtumlmc_build xtuml_integrity -i MissingSimpleReflexiveFormalizer.xtuml > MissingSimpleReflexiveFormalizer.actual
diff -q MissingSimpleReflexiveFormalizer.expected MissingSimpleReflexiveFormalizer.actual || echo "failed"
$BPHOME/tools/mc/bin/xtumlmc_build xtuml_integrity -i MissingSimpleReflexiveParticipant.xtuml > MissingSimpleReflexiveParticipant.actual
diff -q MissingSimpleReflexiveParticipant.expected MissingSimpleReflexiveParticipant.actual || echo "failed"
$BPHOME/tools/mc/bin/xtumlmc_build xtuml_integrity -i MissingSubtype.xtuml > MissingSubtype.actual
diff -q MissingSubtype.expected MissingSubtype.actual || echo "failed"
$BPHOME/tools/mc/bin/xtumlmc_build xtuml_integrity -i MissingSupertype.xtuml > MissingSupertype.actual
diff -q MissingSupertype.expected MissingSupertype.actual || echo "failed"
$BPHOME/tools/mc/bin/xtumlmc_build xtuml_integrity -i NullAssociatorReferential.xtuml > NullAssociatorReferential.actual
diff -q NullAssociatorReferential.expected NullAssociatorReferential.actual || echo "failed"
$BPHOME/tools/mc/bin/xtumlmc_build xtuml_integrity -i NullFormalizerReferential.xtuml > NullFormalizerReferential.actual
diff -q NullFormalizerReferential.expected NullFormalizerReferential.actual || echo "failed"
$BPHOME/tools/mc/bin/xtumlmc_build xtuml_integrity -i NullReflexiveFormalizerReferential.xtuml > NullReflexiveFormalizerReferential.actual
diff -q NullReflexiveFormalizerReferential.expected NullReflexiveFormalizerReferential.actual || echo "failed"
$BPHOME/tools/mc/bin/xtumlmc_build xtuml_integrity -i NullSubtypeReferential.xtuml > NullSubtypeReferential.actual
diff -q NullSubtypeReferential.expected NullSubtypeReferential.actual || echo "failed"
$BPHOME/tools/mc/bin/xtumlmc_build xtuml_integrity -i TwoInstancesWithDuplicateIdentifiers.xtuml > TwoInstancesWithDuplicateIdentifiers.actual
diff -q TwoInstancesWithDuplicateIdentifiers.expected TwoInstancesWithDuplicateIdentifiers.actual || echo "failed"

echo "integrity tests done"
