# CMSIS DSP Library
local_src := $(wildcard $(subdirectory)/Source/BasicMathFunctions/*.c)
local_src += $(wildcard $(subdirectory)/Source/BayesFunctions/*.c)
local_src += $(wildcard $(subdirectory)/Source/CommonTables/*.c)
local_src += $(wildcard $(subdirectory)/Source/ComplexMathFunctions/*.c)
local_src += $(wildcard $(subdirectory)/Source/ControllerFunctions/*.c)
local_src += $(wildcard $(subdirectory)/Source/DistanceFunctions/*.c)
local_src += $(wildcard $(subdirectory)/Source/FastMathFunctions/*.c)
local_src += $(wildcard $(subdirectory)/Source/FilteringFunctions/*.c)
local_src += $(wildcard $(subdirectory)/Source/InterpolationFunctions/*.c)
local_src += $(wildcard $(subdirectory)/Source/MatrixFunctions/arm*.c)
local_src += $(wildcard $(subdirectory)/Source/QuaternionMathFunctions/*.c)
local_src += $(wildcard $(subdirectory)/Source/SVMFunctions/*.c)
local_src += $(wildcard $(subdirectory)/Source/StatisticsFunctions/*.c)
local_src += $(wildcard $(subdirectory)/Source/SupportFunctions/*.c)
local_src += $(wildcard $(subdirectory)/Source/TransformFunctions/*.c)
local_src += $(wildcard $(subdirectory)/Source/WindowFunctions/*.c)

includes_api += $(subdirectory)/CoreInclude
includes_api += $(subdirectory)/Include
includes_api += $(subdirectory)/PrivateInclude

local_bin := $(BINDIR)/$(subdirectory)
bindirs   += $(local_bin)
$(eval $(call make-library, $(local_bin)/ns-cmsis-dsp.a, $(local_src)))
