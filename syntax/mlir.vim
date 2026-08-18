" Vim syntax file
" Language:   mlir
" Maintainer: The MLIR team, http://github.com/tensorflow/mlir/
" Version:      $Revision$
" Some parts adapted from the LLVM vim syntax file.

if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

syn case match

" Types.
"
syn keyword mlirType index f16 f32 f64 bf16
" Signless integer types.
syn match mlirType /\<i\d\+\>/
" Unsigned integer types.
syn match mlirType /\<ui\d\+\>/
" Signed integer types.
syn match mlirType /\<si\d\+\>/

" Elemental types inside memref, tensor, or vector types.
syn match mlirType /x\s*\zs\(bf16|f16\|f32\|f64\|i\d\+\|ui\d\+\|si\d\+\)/

" Shaped types.
syn match mlirType /\<memref\ze\s*<.*>/
syn match mlirType /\<tensor\ze\s*<.*>/
syn match mlirType /\<vector\ze\s*<.*>/

" vector types inside memref or tensor.
syn match mlirType /x\s*\zsvector/

" Operations.

" Arith ops.
syn match mlirOps /\<arith\.addf\>/
syn match mlirOps /\<arith\.addi\>/
syn match mlirOps /\<arith\.andi\>/
syn match mlirOps /\<arith\.cmpf\>/
syn match mlirOps /\<arith\.cmpi\>/
syn match mlirOps /\<arith\.constant\>/
syn match mlirOps /\<arith\.divf\>/
syn match mlirOps /\<arith\.index_cast\>/
syn match mlirOps /\<arith\.mulf\>/
syn match mlirOps /\<arith\.muli\>/
syn match mlirOps /\<arith\.negf\>/
syn match mlirOps /\<arith\.select\>/
syn match mlirOps /\<arith\.sitofp\>/
syn match mlirOps /\<arith\.subf\>/
syn match mlirOps /\<arith\.subi\>/

" Func ops.
syn match mlirOps /\<func\.call\>/
syn match mlirOps /\<func\.call_indirect\>/

" Memref ops.
syn match mlirOps /\<memref\.alloc\>/
syn match mlirOps /\<memref\.alloca\>/
syn match mlirOps /\<memref\.cast\>/
syn match mlirOps /\<memref\.dealloc\>/
syn match mlirOps /\<memref\.dim\>/
syn match mlirOps /\<memref\.load\>/
syn match mlirOps /\<memref\.prefetch\>/
syn match mlirOps /\<memref\.store\>/
syn match mlirOps /\<memref\.subview\>/
syn match mlirOps /\<memref\.view\>/

" Tensor ops.
syn match mlirOps /\<tensor\.dim\>/
syn match mlirOps /\<tensor\.splat\>/

" Math ops.
syn match mlirOps /\<math\.absf\>/
syn match mlirOps /\<math\.absi\>/
syn match mlirOps /\<math\.acos\>/
syn match mlirOps /\<math\.acosh\>/
syn match mlirOps /\<math\.asin\>/
syn match mlirOps /\<math\.asinh\>/
syn match mlirOps /\<math\.atan\>/
syn match mlirOps /\<math\.atan2\>/
syn match mlirOps /\<math\.atanh\>/
syn match mlirOps /\<math\.cbrt\>/
syn match mlirOps /\<math\.ceil\>/
syn match mlirOps /\<math\.clampf\>/
syn match mlirOps /\<math\.copysign\>/
syn match mlirOps /\<math\.cos\>/
syn match mlirOps /\<math\.cosh\>/
syn match mlirOps /\<math\.ctlz\>/
syn match mlirOps /\<math\.ctpop\>/
syn match mlirOps /\<math\.cttz\>/
syn match mlirOps /\<math\.erf\>/
syn match mlirOps /\<math\.erfc\>/
syn match mlirOps /\<math\.exp\>/
syn match mlirOps /\<math\.exp2\>/
syn match mlirOps /\<math\.expm1\>/
syn match mlirOps /\<math\.floor\>/
syn match mlirOps /\<math\.fma\>/
syn match mlirOps /\<math\.fpowi\>/
syn match mlirOps /\<math\.ipowi\>/
syn match mlirOps /\<math\.isfinite\>/
syn match mlirOps /\<math\.isinf\>/
syn match mlirOps /\<math\.isnan\>/
syn match mlirOps /\<math\.isnormal\>/
syn match mlirOps /\<math\.log\>/
syn match mlirOps /\<math\.log10\>/
syn match mlirOps /\<math\.log1p\>/
syn match mlirOps /\<math\.log2\>/
syn match mlirOps /\<math\.powf\>/
syn match mlirOps /\<math\.round\>/
syn match mlirOps /\<math\.roundeven\>/
syn match mlirOps /\<math\.rsqrt\>/
syn match mlirOps /\<math\.sin\>/
syn match mlirOps /\<math\.sincos\>/
syn match mlirOps /\<math\.sinh\>/
syn match mlirOps /\<math\.sqrt\>/
syn match mlirOps /\<math\.tan\>/
syn match mlirOps /\<math\.tanh\>/
syn match mlirOps /\<math\.trunc\>/

" Affine ops.
syn match mlirOps /\<affine\.apply\>/
syn match mlirOps /\<affine\.delinearize_index\>/
syn match mlirOps /\<affine\.dma_start\>/
syn match mlirOps /\<affine\.dma_wait\>/
syn match mlirOps /\<affine\.for\>/
syn match mlirOps /\<affine\.if\>/
syn match mlirOps /\<affine\.linearize_index\>/
syn match mlirOps /\<affine\.load\>/
syn match mlirOps /\<affine\.max\>/
syn match mlirOps /\<affine\.min\>/
syn match mlirOps /\<affine\.parallel\>/
syn match mlirOps /\<affine\.prefetch\>/
syn match mlirOps /\<affine\.store\>/
syn match mlirOps /\<affine\.vector_load\>/
syn match mlirOps /\<affine\.vector_store\>/
syn match mlirOps /\<affine\.yield\>/

" scf ops.
syn match mlirOps /\<scf\.condition\>/
syn match mlirOps /\<scf\.execute_region\>/
syn match mlirOps /\<scf\.for\>/
syn match mlirOps /\<scf\.forall\>/
syn match mlirOps /\<scf\.forall\.in_parallel\>/
syn match mlirOps /\<scf\.if\>/
syn match mlirOps /\<scf\.index_switch\>/
syn match mlirOps /\<scf\.parallel\>/
syn match mlirOps /\<scf\.reduce\>/
syn match mlirOps /\<scf\.reduce\.return\>/
syn match mlirOps /\<scf\.while\>/
syn match mlirOps /\<scf\.yield\>/

" LLVM ops.
syn match mlirOps /\<llvm\.add\>/
syn match mlirOps /\<llvm\.addrspacecast\>/
syn match mlirOps /\<llvm\.alloca\>/
syn match mlirOps /\<llvm\.and\>/
syn match mlirOps /\<llvm\.ashr\>/
syn match mlirOps /\<llvm\.atomicrmw\>/
syn match mlirOps /\<llvm\.bitcast\>/
syn match mlirOps /\<llvm\.blockaddress\>/
syn match mlirOps /\<llvm\.blocktag\>/
syn match mlirOps /\<llvm\.br\>/
syn match mlirOps /\<llvm\.call\>/
syn match mlirOps /\<llvm\.call_intrinsic\>/
syn match mlirOps /\<llvm\.cmpxchg\>/
syn match mlirOps /\<llvm\.comdat\>/
syn match mlirOps /\<llvm\.comdat_selector\>/
syn match mlirOps /\<llvm\.cond_br\>/
syn match mlirOps /\<llvm\.dso_local_equivalent\>/
syn match mlirOps /\<llvm\.extractelement\>/
syn match mlirOps /\<llvm\.extractvalue\>/
syn match mlirOps /\<llvm\.fadd\>/
syn match mlirOps /\<llvm\.fcmp\>/
syn match mlirOps /\<llvm\.fdiv\>/
syn match mlirOps /\<llvm\.fence\>/
syn match mlirOps /\<llvm\.fmul\>/
syn match mlirOps /\<llvm\.fneg\>/
syn match mlirOps /\<llvm\.fpext\>/
syn match mlirOps /\<llvm\.fptosi\>/
syn match mlirOps /\<llvm\.fptoui\>/
syn match mlirOps /\<llvm\.fptrunc\>/
syn match mlirOps /\<llvm\.freeze\>/
syn match mlirOps /\<llvm\.frem\>/
syn match mlirOps /\<llvm\.fsub\>/
syn match mlirOps /\<llvm\.func\>/
syn match mlirOps /\<llvm\.getelementptr\>/
syn match mlirOps /\<llvm\.icmp\>/
syn match mlirOps /\<llvm\.indirectbr\>/
syn match mlirOps /\<llvm\.inline_asm\>/
syn match mlirOps /\<llvm\.insertelement\>/
syn match mlirOps /\<llvm\.insertvalue\>/
syn match mlirOps /\<llvm\.inttoptr\>/
syn match mlirOps /\<llvm\.invoke\>/
syn match mlirOps /\<llvm\.landingpad\>/
syn match mlirOps /\<llvm\.linker_options\>/
syn match mlirOps /\<llvm\.load\>/
syn match mlirOps /\<llvm\.lshr\>/
syn match mlirOps /\<llvm\.mul\>/
syn match mlirOps /\<llvm\.or\>/
syn match mlirOps /\<llvm\.ptrtoaddr\>/
syn match mlirOps /\<llvm\.ptrtoint\>/
syn match mlirOps /\<llvm\.resume\>/
syn match mlirOps /\<llvm\.return\>/
syn match mlirOps /\<llvm\.sdiv\>/
syn match mlirOps /\<llvm\.select\>/
syn match mlirOps /\<llvm\.sext\>/
syn match mlirOps /\<llvm\.shl\>/
syn match mlirOps /\<llvm\.shufflevector\>/
syn match mlirOps /\<llvm\.sitofp\>/
syn match mlirOps /\<llvm\.srem\>/
syn match mlirOps /\<llvm\.store\>/
syn match mlirOps /\<llvm\.sub\>/
syn match mlirOps /\<llvm\.switch\>/
syn match mlirOps /\<llvm\.trunc\>/
syn match mlirOps /\<llvm\.udiv\>/
syn match mlirOps /\<llvm\.uitofp\>/
syn match mlirOps /\<llvm\.unreachable\>/
syn match mlirOps /\<llvm\.urem\>/
syn match mlirOps /\<llvm\.va_arg\>/
syn match mlirOps /\<llvm\.xor\>/
syn match mlirOps /\<llvm\.zext\>/

" LLVM mlir ops.
syn match mlirOps /\<llvm\.mlir\.addressof\>/
syn match mlirOps /\<llvm\.mlir\.alias\>/
syn match mlirOps /\<llvm\.mlir\.constant\>/
syn match mlirOps /\<llvm\.mlir\.global\>/
syn match mlirOps /\<llvm\.mlir\.global_ctors\>/
syn match mlirOps /\<llvm\.mlir\.global_dtors\>/
syn match mlirOps /\<llvm\.mlir\.ifunc\>/
syn match mlirOps /\<llvm\.mlir\.metadata_as_value\>/
syn match mlirOps /\<llvm\.mlir\.none\>/
syn match mlirOps /\<llvm\.mlir\.poison\>/
syn match mlirOps /\<llvm\.mlir\.undef\>/
syn match mlirOps /\<llvm\.mlir\.zero\>/
syn match mlirOps /\<llvm\.module_flags\>/
syn match mlirOps /\<llvm\.named_metadata\>/

" SPIR-V arithmetic ops.
syn match mlirOps /\<spirv\.Dot\>/
syn match mlirOps /\<spirv\.FAdd\>/
syn match mlirOps /\<spirv\.FDiv\>/
syn match mlirOps /\<spirv\.FMod\>/
syn match mlirOps /\<spirv\.FMul\>/
syn match mlirOps /\<spirv\.FNegate\>/
syn match mlirOps /\<spirv\.FRem\>/
syn match mlirOps /\<spirv\.FSub\>/
syn match mlirOps /\<spirv\.IAdd\>/
syn match mlirOps /\<spirv\.IAddCarry\>/
syn match mlirOps /\<spirv\.IMul\>/
syn match mlirOps /\<spirv\.ISub\>/
syn match mlirOps /\<spirv\.ISubBorrow\>/
syn match mlirOps /\<spirv\.SDiv\>/
syn match mlirOps /\<spirv\.SMod\>/
syn match mlirOps /\<spirv\.SMulExtended\>/
syn match mlirOps /\<spirv\.SNegate\>/
syn match mlirOps /\<spirv\.SRem\>/
syn match mlirOps /\<spirv\.UDiv\>/
syn match mlirOps /\<spirv\.UMod\>/
syn match mlirOps /\<spirv\.UMulExtended\>/
syn match mlirOps /\<spirv\.VectorTimesScalar\>/

" SPIR-V atomic ops.
syn match mlirOps /\<spirv\.AtomicAnd\>/
syn match mlirOps /\<spirv\.AtomicCompareExchange\>/
syn match mlirOps /\<spirv\.AtomicCompareExchangeWeak\>/
syn match mlirOps /\<spirv\.AtomicExchange\>/
syn match mlirOps /\<spirv\.AtomicFAdd\>/
syn match mlirOps /\<spirv\.AtomicIAdd\>/
syn match mlirOps /\<spirv\.AtomicIDecrement\>/
syn match mlirOps /\<spirv\.AtomicIIncrement\>/
syn match mlirOps /\<spirv\.AtomicISub\>/
syn match mlirOps /\<spirv\.AtomicLoad\>/
syn match mlirOps /\<spirv\.AtomicOr\>/
syn match mlirOps /\<spirv\.AtomicSMax\>/
syn match mlirOps /\<spirv\.AtomicSMin\>/
syn match mlirOps /\<spirv\.AtomicStore\>/
syn match mlirOps /\<spirv\.AtomicUMax\>/
syn match mlirOps /\<spirv\.AtomicUMin\>/
syn match mlirOps /\<spirv\.AtomicXor\>/

" SPIR-V barrier ops.
syn match mlirOps /\<spirv\.ControlBarrier\>/
syn match mlirOps /\<spirv\.MemoryBarrier\>/
syn match mlirOps /\<spirv\.MemoryNamedBarrier\>/
syn match mlirOps /\<spirv\.NamedBarrierInitialize\>/

" SPIR-V bit ops.
syn match mlirOps /\<spirv\.BitFieldInsert\>/
syn match mlirOps /\<spirv\.BitFieldSExtract\>/
syn match mlirOps /\<spirv\.BitFieldUExtract\>/
syn match mlirOps /\<spirv\.BitwiseAnd\>/
syn match mlirOps /\<spirv\.BitwiseOr\>/
syn match mlirOps /\<spirv\.BitwiseXor\>/

" SPIR-V cast ops.
syn match mlirOps /\<spirv\.Bitcast\>/
syn match mlirOps /\<spirv\.ConvertFToS\>/
syn match mlirOps /\<spirv\.ConvertFToU\>/
syn match mlirOps /\<spirv\.ConvertPtrToU\>/
syn match mlirOps /\<spirv\.ConvertSToF\>/
syn match mlirOps /\<spirv\.ConvertUToF\>/
syn match mlirOps /\<spirv\.ConvertUToPtr\>/
syn match mlirOps /\<spirv\.FConvert\>/
syn match mlirOps /\<spirv\.GenericCastToPtr\>/
syn match mlirOps /\<spirv\.GenericCastToPtrExplicit\>/
syn match mlirOps /\<spirv\.PtrCastToGeneric\>/
syn match mlirOps /\<spirv\.SConvert\>/
syn match mlirOps /\<spirv\.UConvert\>/

" SPIR-V composite ops.
syn match mlirOps /\<spirv\.CompositeConstruct\>/
syn match mlirOps /\<spirv\.CompositeExtract\>/
syn match mlirOps /\<spirv\.CompositeInsert\>/
syn match mlirOps /\<spirv\.VectorExtractDynamic\>/
syn match mlirOps /\<spirv\.VectorInsertDynamic\>/
syn match mlirOps /\<spirv\.VectorShuffle\>/

" SPIR-V control flow ops.
syn match mlirOps /\<spirv\.Branch\>/
syn match mlirOps /\<spirv\.BranchConditional\>/
syn match mlirOps /\<spirv\.FunctionCall\>/
syn match mlirOps /\<spirv\.Kill\>/
syn match mlirOps /\<spirv\.Return\>/
syn match mlirOps /\<spirv\.ReturnValue\>/
syn match mlirOps /\<spirv\.Switch\>/
syn match mlirOps /\<spirv\.Unreachable\>/

" SPIR-V group ops.
syn match mlirOps /\<spirv\.GroupBroadcast\>/
syn match mlirOps /\<spirv\.GroupFAdd\>/
syn match mlirOps /\<spirv\.GroupFMax\>/
syn match mlirOps /\<spirv\.GroupFMin\>/
syn match mlirOps /\<spirv\.GroupFMul\>/
syn match mlirOps /\<spirv\.GroupIAdd\>/
syn match mlirOps /\<spirv\.GroupIMul\>/
syn match mlirOps /\<spirv\.GroupSMax\>/
syn match mlirOps /\<spirv\.GroupSMin\>/
syn match mlirOps /\<spirv\.GroupUMax\>/
syn match mlirOps /\<spirv\.GroupUMin\>/
syn match mlirOps /\<spirv\.SubgroupBallot\>/
syn match mlirOps /\<spirv\.SubgroupBlockRead\>/
syn match mlirOps /\<spirv\.SubgroupBlockWrite\>/

" SPIR-V image ops.
syn match mlirOps /\<spirv\.Image\>/
syn match mlirOps /\<spirv\.ImageDrefGather\>/
syn match mlirOps /\<spirv\.ImageFetch\>/
syn match mlirOps /\<spirv\.ImageQuerySize\>/
syn match mlirOps /\<spirv\.ImageRead\>/
syn match mlirOps /\<spirv\.ImageSampleExplicitLod\>/
syn match mlirOps /\<spirv\.ImageSampleImplicitLod\>/
syn match mlirOps /\<spirv\.ImageSampleProjDrefImplicitLod\>/
syn match mlirOps /\<spirv\.ImageWrite\>/
syn match mlirOps /\<spirv\.SampledImage\>/

" SPIR-V logical ops.
syn match mlirOps /\<spirv\.All\>/
syn match mlirOps /\<spirv\.Any\>/
syn match mlirOps /\<spirv\.FOrdEqual\>/
syn match mlirOps /\<spirv\.FOrdGreaterThan\>/
syn match mlirOps /\<spirv\.FOrdGreaterThanEqual\>/
syn match mlirOps /\<spirv\.FOrdLessThan\>/
syn match mlirOps /\<spirv\.FOrdLessThanEqual\>/
syn match mlirOps /\<spirv\.FOrdNotEqual\>/
syn match mlirOps /\<spirv\.FUnordEqual\>/
syn match mlirOps /\<spirv\.FUnordGreaterThan\>/
syn match mlirOps /\<spirv\.FUnordGreaterThanEqual\>/
syn match mlirOps /\<spirv\.FUnordLessThan\>/
syn match mlirOps /\<spirv\.FUnordLessThanEqual\>/
syn match mlirOps /\<spirv\.FUnordNotEqual\>/
syn match mlirOps /\<spirv\.IEqual\>/
syn match mlirOps /\<spirv\.INotEqual\>/
syn match mlirOps /\<spirv\.IsFinite\>/
syn match mlirOps /\<spirv\.IsInf\>/
syn match mlirOps /\<spirv\.IsNan\>/
syn match mlirOps /\<spirv\.IsNormal\>/
syn match mlirOps /\<spirv\.LogicalAnd\>/
syn match mlirOps /\<spirv\.LogicalEqual\>/
syn match mlirOps /\<spirv\.LogicalNot\>/
syn match mlirOps /\<spirv\.LogicalNotEqual\>/
syn match mlirOps /\<spirv\.LogicalOr\>/
syn match mlirOps /\<spirv\.Ordered\>/
syn match mlirOps /\<spirv\.SGreaterThan\>/
syn match mlirOps /\<spirv\.SGreaterThanEqual\>/
syn match mlirOps /\<spirv\.SLessThan\>/
syn match mlirOps /\<spirv\.SLessThanEqual\>/
syn match mlirOps /\<spirv\.Select\>/
syn match mlirOps /\<spirv\.UGreaterThan\>/
syn match mlirOps /\<spirv\.UGreaterThanEqual\>/
syn match mlirOps /\<spirv\.ULessThan\>/
syn match mlirOps /\<spirv\.ULessThanEqual\>/
syn match mlirOps /\<spirv\.Unordered\>/

" SPIR-V matrix ops.
syn match mlirOps /\<spirv\.MatrixTimesMatrix\>/
syn match mlirOps /\<spirv\.MatrixTimesScalar\>/
syn match mlirOps /\<spirv\.MatrixTimesVector\>/
syn match mlirOps /\<spirv\.OuterProduct\>/
syn match mlirOps /\<spirv\.Transpose\>/
syn match mlirOps /\<spirv\.VectorTimesMatrix\>/

" SPIR-V memory ops.
syn match mlirOps /\<spirv\.AccessChain\>/
syn match mlirOps /\<spirv\.CopyMemory\>/
syn match mlirOps /\<spirv\.InBoundsAccessChain\>/
syn match mlirOps /\<spirv\.InBoundsPtrAccessChain\>/
syn match mlirOps /\<spirv\.Load\>/
syn match mlirOps /\<spirv\.PtrAccessChain\>/
syn match mlirOps /\<spirv\.Store\>/
syn match mlirOps /\<spirv\.Variable\>/

" SPIR-V misc ops.
syn match mlirOps /\<spirv\.AssumeTrue\>/
syn match mlirOps /\<spirv\.Expect\>/
syn match mlirOps /\<spirv\.Undef\>/

" SPIR-V non-uniform ops.
syn match mlirOps /\<spirv\.GroupNonUniformAll\>/
syn match mlirOps /\<spirv\.GroupNonUniformAllEqual\>/
syn match mlirOps /\<spirv\.GroupNonUniformAny\>/
syn match mlirOps /\<spirv\.GroupNonUniformBallot\>/
syn match mlirOps /\<spirv\.GroupNonUniformBallotBitCount\>/
syn match mlirOps /\<spirv\.GroupNonUniformBallotFindLSB\>/
syn match mlirOps /\<spirv\.GroupNonUniformBallotFindMSB\>/
syn match mlirOps /\<spirv\.GroupNonUniformBitwiseAnd\>/
syn match mlirOps /\<spirv\.GroupNonUniformBitwiseOr\>/
syn match mlirOps /\<spirv\.GroupNonUniformBitwiseXor\>/
syn match mlirOps /\<spirv\.GroupNonUniformBroadcast\>/
syn match mlirOps /\<spirv\.GroupNonUniformBroadcastFirst\>/
syn match mlirOps /\<spirv\.GroupNonUniformElect\>/
syn match mlirOps /\<spirv\.GroupNonUniformFAdd\>/
syn match mlirOps /\<spirv\.GroupNonUniformFMax\>/
syn match mlirOps /\<spirv\.GroupNonUniformFMin\>/
syn match mlirOps /\<spirv\.GroupNonUniformFMul\>/
syn match mlirOps /\<spirv\.GroupNonUniformIAdd\>/
syn match mlirOps /\<spirv\.GroupNonUniformIMul\>/
syn match mlirOps /\<spirv\.GroupNonUniformLogicalAnd\>/
syn match mlirOps /\<spirv\.GroupNonUniformLogicalOr\>/
syn match mlirOps /\<spirv\.GroupNonUniformLogicalXor\>/
syn match mlirOps /\<spirv\.GroupNonUniformQuadSwap\>/
syn match mlirOps /\<spirv\.GroupNonUniformRotateKHR\>/
syn match mlirOps /\<spirv\.GroupNonUniformSMax\>/
syn match mlirOps /\<spirv\.GroupNonUniformSMin\>/
syn match mlirOps /\<spirv\.GroupNonUniformShuffle\>/
syn match mlirOps /\<spirv\.GroupNonUniformShuffleDown\>/
syn match mlirOps /\<spirv\.GroupNonUniformShuffleUp\>/
syn match mlirOps /\<spirv\.GroupNonUniformShuffleXor\>/
syn match mlirOps /\<spirv\.GroupNonUniformUMax\>/
syn match mlirOps /\<spirv\.GroupNonUniformUMin\>/

" SPIR-V structure ops.
syn match mlirOps /\<spirv\.Constant\>/
syn match mlirOps /\<spirv\.ConstantCompositeReplicate\>/
syn match mlirOps /\<spirv\.EntryPoint\>/
syn match mlirOps /\<spirv\.ExecutionMode\>/
syn match mlirOps /\<spirv\.ExecutionModeId\>/
syn match mlirOps /\<spirv\.func\>/
syn match mlirOps /\<spirv\.GlobalVariable\>/
syn match mlirOps /\<spirv\.mlir\.addressof\>/
syn match mlirOps /\<spirv\.mlir\.referenceof\>/
syn match mlirOps /\<spirv\.mlir\.yield\>/
syn match mlirOps /\<spirv\.module\>/
syn match mlirOps /\<spirv\.SpecConstant\>/
syn match mlirOps /\<spirv\.SpecConstantComposite\>/
syn match mlirOps /\<spirv\.SpecConstantCompositeReplicate\>/
syn match mlirOps /\<spirv\.SpecConstantOperation\>/

" SPIR-V primitive ops.
syn match mlirOps /\<spirv\.EmitVertex\>/
syn match mlirOps /\<spirv\.EndPrimitive\>/

" Keywords.
syn keyword mlirKeyword
      \ affine_map
      \ affine_set
      \ dense
      \ else
      \ func
      \ module
      \ return
      \ step
      \ to

" Misc syntax.

syn match   mlirNumber /-\?\<\d\+\>/
" Match numbers even in shaped types.
syn match   mlirNumber /-\?\<\d\+\ze\s*x/
syn match   mlirNumber /x\s*\zs-\?\d\+\ze\s*x/

syn match   mlirFloat  /-\?\<\d\+\.\d*\(e[+-]\d\+\)\?\>/
syn match   mlirFloat  /\<0x\x\+\>/
syn keyword mlirBoolean true false
" Spell checking is enabled only in comments by default.
syn match   mlirComment /\/\/.*$/ contains=@Spell
syn region  mlirString start=/"/ skip=/\\"/ end=/"/
syn match   mlirLabel /[-a-zA-Z$._][-a-zA-Z$._0-9]*:/
" Prefixed identifiers usually used for ssa values and symbols.
syn match   mlirIdentifier /[%@][a-zA-Z$._-][a-zA-Z0-9$._-]*/
syn match   mlirIdentifier /[%@]\d\+\>/
" Prefixed identifiers usually used for blocks.
syn match   mlirBlockIdentifier /\^[a-zA-Z$._-][a-zA-Z0-9$._-]*/
syn match   mlirBlockIdentifier /\^\d\+\>/
" Prefixed identifiers usually used for types.
syn match   mlirTypeIdentifier /![a-zA-Z$._-][a-zA-Z0-9$._-]*/
syn match   mlirTypeIdentifier /!\d\+\>/
" Prefixed identifiers usually used for attribute aliases and result numbers.
syn match   mlirAttrIdentifier /#[a-zA-Z$._-][a-zA-Z0-9$._-]*/
syn match   mlirAttrIdentifier /#\d\+\>/

" Syntax-highlight lit test commands and bug numbers.
syn match  mlirSpecialComment /\/\/\s*RUN:.*$/
syn match  mlirSpecialComment /\/\/\s*CHECK:.*$/
syn match  mlirSpecialComment "\v\/\/\s*CHECK-(NEXT|NOT|DAG|SAME|LABEL):.*$"
syn match  mlirSpecialComment /\/\/\s*expected-error.*$/
syn match  mlirSpecialComment /\/\/\s*expected-remark.*$/
syn match  mlirSpecialComment /;\s*XFAIL:.*$/
syn match  mlirSpecialComment /\/\/\s*PR\d*\s*$/
syn match  mlirSpecialComment /\/\/\s*REQUIRES:.*$/

if version >= 508 || !exists("did_c_syn_inits")
  if version < 508
    let did_c_syn_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif

  HiLink mlirType Type
  HiLink mlirOps Statement
  HiLink mlirNumber Number
  HiLink mlirComment Comment
  HiLink mlirString String
  HiLink mlirLabel Label
  HiLink mlirKeyword Keyword
  HiLink mlirBoolean Boolean
  HiLink mlirFloat Float
  HiLink mlirConstant Constant
  HiLink mlirSpecialComment SpecialComment
  HiLink mlirIdentifier Identifier
  HiLink mlirBlockIdentifier Label
  HiLink mlirTypeIdentifier Type
  HiLink mlirAttrIdentifier PreProc

  delcommand HiLink
endif

let b:current_syntax = "mlir"
