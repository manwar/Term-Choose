use 5.010001;
use warnings;
use strict;

use Test::Perl::Critic (

    -profile => 'xt/perlcriticrc',

    -exclude => [ qw(
        BuiltinFunctions::ProhibitComplexMappings
        CodeLayout::RequireTidyCode
        CodeLayout::RequireTrailingCommas
        ControlStructures::ProhibitCascadingIfElse
        ControlStructures::ProhibitDeepNests
        ControlStructures::ProhibitPostfixControls
        Documentation::RequirePodLinksIncludeText
        Documentation::RequirePodSections
        InputOutput::ProhibitExplicitStdin
        InputOutput::ProhibitInteractiveTest
        InputOutput::ProhibitOneArgSelect
        InputOutput::RequireBracedFileHandleWithPrint
        InputOutput::RequireEncodingWithUTF8Layer
        NamingConventions::Capitalization
        References::ProhibitDoubleSigils
        RegularExpressions::ProhibitEnumeratedClasses
        RegularExpressions::RequireDotMatchAnything
        RegularExpressions::RequireExtendedFormatting
        RegularExpressions::RequireLineBoundaryMatching
        Subroutines::ProhibitExcessComplexity
        Subroutines::ProhibitSubroutinePrototypes
        Subroutines::ProhibitUnusedPrivateSubroutines
        Subroutines::RequireArgUnpacking
        Subroutines::RequireFinalReturn
        ValuesAndExpressions::ProhibitEmptyQuotes
        ValuesAndExpressions::ProhibitInterpolationOfLiterals
        ValuesAndExpressions::ProhibitMagicNumbers
        ValuesAndExpressions::ProhibitNoisyQuotes
        Variables::ProhibitPunctuationVars
        Variables::RequireLocalizedPunctuationVars
    ) ],

);


all_critic_ok();


__END__

        BuiltinFunctions::ProhibitBooleanGrep
#        BuiltinFunctions::ProhibitComplexMappings
        BuiltinFunctions::ProhibitLvalueSubstr
        BuiltinFunctions::ProhibitReverseSortBlock
        BuiltinFunctions::ProhibitSleepViaSelect
        BuiltinFunctions::ProhibitStringyEval
        BuiltinFunctions::ProhibitStringySplit
        BuiltinFunctions::ProhibitUniversalCan
        BuiltinFunctions::ProhibitUniversalIsa
        BuiltinFunctions::ProhibitVoidGrep
        BuiltinFunctions::ProhibitVoidMap
        BuiltinFunctions::RequireBlockGrep
        BuiltinFunctions::RequireBlockMap
        BuiltinFunctions::RequireGlobFunction
        BuiltinFunctions::RequireSimpleSortBlock
        ClassHierarchies::ProhibitAutoloading
        ClassHierarchies::ProhibitExplicitISA
        ClassHierarchies::ProhibitOneArgBless
        CodeLayout::ProhibitHardTabs
        CodeLayout::ProhibitParensWithBuiltins
        CodeLayout::ProhibitQuotedWordLists
        CodeLayout::ProhibitTrailingWhitespace
        CodeLayout::RequireConsistentNewlines
#        CodeLayout::RequireTidyCode
#        CodeLayout::RequireTrailingCommas
        ControlStructures::ProhibitCStyleForLoops
#        ControlStructures::ProhibitCascadingIfElse
#        ControlStructures::ProhibitDeepNests
        ControlStructures::ProhibitLabelsWithSpecialBlockNames
        ControlStructures::ProhibitMutatingListFunctions
        ControlStructures::ProhibitNegativeExpressionsInUnlessAndUntilConditions
#        ControlStructures::ProhibitPostfixControls
        ControlStructures::ProhibitUnlessBlocks
        ControlStructures::ProhibitUnreachableCode
        ControlStructures::ProhibitUntilBlocks
        Documentation::PodSpelling
        Documentation::RequirePackageMatchesPodName
        Documentation::RequirePodAtEnd
#        Documentation::RequirePodLinksIncludeText
#        Documentation::RequirePodSections
        ErrorHandling::RequireCarping
        ErrorHandling::RequireCheckingReturnValueOfEval
        InputOutput::ProhibitBacktickOperators
        InputOutput::ProhibitBarewordFileHandles
#        InputOutput::ProhibitExplicitStdin
#        InputOutput::ProhibitInteractiveTest
        InputOutput::ProhibitJoinedReadline
#        InputOutput::ProhibitOneArgSelect
        InputOutput::ProhibitReadlineInForLoop
        InputOutput::ProhibitTwoArgOpen
#        InputOutput::RequireBracedFileHandleWithPrint
        InputOutput::RequireBriefOpen
        InputOutput::RequireCheckedClose
        InputOutput::RequireCheckedOpen
        InputOutput::RequireCheckedSyscalls
#        InputOutput::RequireEncodingWithUTF8Layer
        Miscellanea::ProhibitFormats
        Miscellanea::ProhibitTies
        Miscellanea::ProhibitUnrestrictedNoCritic
        Miscellanea::ProhibitUselessNoCritic
        Modules::ProhibitAutomaticExportation
        Modules::ProhibitConditionalUseStatements
        Modules::ProhibitEvilModules
        Modules::ProhibitExcessMainComplexity
        Modules::ProhibitMultiplePackages
        Modules::RequireBarewordIncludes
        Modules::RequireEndWithOne
        Modules::RequireExplicitPackage
        Modules::RequireFilenameMatchesPackage
        Modules::RequireNoMatchVarsWithUseEnglish
        Modules::RequireVersionVar
#        NamingConventions::Capitalization
        NamingConventions::ProhibitAmbiguousNames
        Objects::ProhibitIndirectSyntax
#        References::ProhibitDoubleSigils
        RegularExpressions::ProhibitCaptureWithoutTest
        RegularExpressions::ProhibitComplexRegexes
#        RegularExpressions::ProhibitEnumeratedClasses
        RegularExpressions::ProhibitEscapedMetacharacters
        RegularExpressions::ProhibitFixedStringMatches
        RegularExpressions::ProhibitSingleCharAlternation
        RegularExpressions::ProhibitUnusedCapture
        RegularExpressions::ProhibitUnusualDelimiters
        RegularExpressions::RequireBracesForMultiline
#        RegularExpressions::RequireDotMatchAnything
#        RegularExpressions::RequireExtendedFormatting
#        RegularExpressions::RequireLineBoundaryMatching
        Subroutines::ProhibitAmpersandSigils
        Subroutines::ProhibitBuiltinHomonyms
#        Subroutines::ProhibitExcessComplexity
        Subroutines::ProhibitExplicitReturnUndef
        Subroutines::ProhibitManyArgs
        Subroutines::ProhibitNestedSubs
        Subroutines::ProhibitReturnSort
#        Subroutines::ProhibitSubroutinePrototypes
#        Subroutines::ProhibitUnusedPrivateSubroutines
        Subroutines::ProtectPrivateSubs
#        Subroutines::RequireArgUnpacking
#        Subroutines::RequireFinalReturn
        TestingAndDebugging::ProhibitNoStrict
#        TestingAndDebugging::ProhibitNoWarnings
        TestingAndDebugging::ProhibitProlongedStrictureOverride
        TestingAndDebugging::RequireTestLabels
        TestingAndDebugging::RequireUseStrict
        TestingAndDebugging::RequireUseWarnings
        ValuesAndExpressions::ProhibitCommaSeparatedStatements
        ValuesAndExpressions::ProhibitComplexVersion
        ValuesAndExpressions::ProhibitConstantPragma
#        ValuesAndExpressions::ProhibitEmptyQuotes
        ValuesAndExpressions::ProhibitEscapedCharacters
        ValuesAndExpressions::ProhibitImplicitNewlines
#        ValuesAndExpressions::ProhibitInterpolationOfLiterals
        ValuesAndExpressions::ProhibitLeadingZeros
        ValuesAndExpressions::ProhibitLongChainsOfMethodCalls
#        ValuesAndExpressions::ProhibitMagicNumbers
        ValuesAndExpressions::ProhibitMismatchedOperators
        ValuesAndExpressions::ProhibitMixedBooleanOperators
#        ValuesAndExpressions::ProhibitNoisyQuotes
        ValuesAndExpressions::ProhibitQuotesAsQuotelikeOperatorDelimiters
        ValuesAndExpressions::ProhibitSpecialLiteralHeredocTerminator
        ValuesAndExpressions::ProhibitVersionStrings
        ValuesAndExpressions::RequireConstantVersion
        ValuesAndExpressions::RequireInterpolationOfMetachars
        ValuesAndExpressions::RequireNumberSeparators
        ValuesAndExpressions::RequireQuotedHeredocTerminator
        ValuesAndExpressions::RequireUpperCaseHeredocTerminator
        Variables::ProhibitAugmentedAssignmentInDeclaration
        Variables::ProhibitConditionalDeclarations
        Variables::ProhibitEvilVariables
        Variables::ProhibitLocalVars
        Variables::ProhibitMatchVars
        Variables::ProhibitPackageVars
        Variables::ProhibitPerl4PackageNames
#        Variables::ProhibitPunctuationVars
        Variables::ProhibitReusedNames
        Variables::ProhibitUnusedVariables
        Variables::ProtectPrivateVars
        Variables::RequireInitializationForLocalVars
        Variables::RequireLexicalLoopIterators
#        Variables::RequireLocalizedPunctuationVars
        Variables::RequireNegativeIndices
