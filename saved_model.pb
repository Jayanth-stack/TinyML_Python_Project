шо
эР
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( 
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype

Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)


DepthwiseConv2dNative

input"T
filter"T
output"T"
Ttype:
2"
strides	list(int)",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	

MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C

Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	

MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( 

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype
E
Relu
features"T
activations"T"
Ttype:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
9
Softmax
logits"T
softmax"T"
Ttype:
2
С
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring Ј
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*2.10.12v2.10.0-76-gfdfc646704c8П

Adamax/dense_3/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdamax/dense_3/bias/v
{
)Adamax/dense_3/bias/v/Read/ReadVariableOpReadVariableOpAdamax/dense_3/bias/v*
_output_shapes
:*
dtype0

Adamax/dense_3/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *(
shared_nameAdamax/dense_3/kernel/v

+Adamax/dense_3/kernel/v/Read/ReadVariableOpReadVariableOpAdamax/dense_3/kernel/v*
_output_shapes

: *
dtype0

 Adamax/separable_conv2d_3/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *1
shared_name" Adamax/separable_conv2d_3/bias/v

4Adamax/separable_conv2d_3/bias/v/Read/ReadVariableOpReadVariableOp Adamax/separable_conv2d_3/bias/v*
_output_shapes
: *
dtype0
М
,Adamax/separable_conv2d_3/pointwise_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *=
shared_name.,Adamax/separable_conv2d_3/pointwise_kernel/v
Е
@Adamax/separable_conv2d_3/pointwise_kernel/v/Read/ReadVariableOpReadVariableOp,Adamax/separable_conv2d_3/pointwise_kernel/v*&
_output_shapes
: *
dtype0
М
,Adamax/separable_conv2d_3/depthwise_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*=
shared_name.,Adamax/separable_conv2d_3/depthwise_kernel/v
Е
@Adamax/separable_conv2d_3/depthwise_kernel/v/Read/ReadVariableOpReadVariableOp,Adamax/separable_conv2d_3/depthwise_kernel/v*&
_output_shapes
:*
dtype0

 Adamax/separable_conv2d_2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*1
shared_name" Adamax/separable_conv2d_2/bias/v

4Adamax/separable_conv2d_2/bias/v/Read/ReadVariableOpReadVariableOp Adamax/separable_conv2d_2/bias/v*
_output_shapes
:*
dtype0
М
,Adamax/separable_conv2d_2/pointwise_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*=
shared_name.,Adamax/separable_conv2d_2/pointwise_kernel/v
Е
@Adamax/separable_conv2d_2/pointwise_kernel/v/Read/ReadVariableOpReadVariableOp,Adamax/separable_conv2d_2/pointwise_kernel/v*&
_output_shapes
:*
dtype0
М
,Adamax/separable_conv2d_2/depthwise_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*=
shared_name.,Adamax/separable_conv2d_2/depthwise_kernel/v
Е
@Adamax/separable_conv2d_2/depthwise_kernel/v/Read/ReadVariableOpReadVariableOp,Adamax/separable_conv2d_2/depthwise_kernel/v*&
_output_shapes
:*
dtype0

Adamax/dense_3/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdamax/dense_3/bias/m
{
)Adamax/dense_3/bias/m/Read/ReadVariableOpReadVariableOpAdamax/dense_3/bias/m*
_output_shapes
:*
dtype0

Adamax/dense_3/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *(
shared_nameAdamax/dense_3/kernel/m

+Adamax/dense_3/kernel/m/Read/ReadVariableOpReadVariableOpAdamax/dense_3/kernel/m*
_output_shapes

: *
dtype0

 Adamax/separable_conv2d_3/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *1
shared_name" Adamax/separable_conv2d_3/bias/m

4Adamax/separable_conv2d_3/bias/m/Read/ReadVariableOpReadVariableOp Adamax/separable_conv2d_3/bias/m*
_output_shapes
: *
dtype0
М
,Adamax/separable_conv2d_3/pointwise_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *=
shared_name.,Adamax/separable_conv2d_3/pointwise_kernel/m
Е
@Adamax/separable_conv2d_3/pointwise_kernel/m/Read/ReadVariableOpReadVariableOp,Adamax/separable_conv2d_3/pointwise_kernel/m*&
_output_shapes
: *
dtype0
М
,Adamax/separable_conv2d_3/depthwise_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*=
shared_name.,Adamax/separable_conv2d_3/depthwise_kernel/m
Е
@Adamax/separable_conv2d_3/depthwise_kernel/m/Read/ReadVariableOpReadVariableOp,Adamax/separable_conv2d_3/depthwise_kernel/m*&
_output_shapes
:*
dtype0

 Adamax/separable_conv2d_2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*1
shared_name" Adamax/separable_conv2d_2/bias/m

4Adamax/separable_conv2d_2/bias/m/Read/ReadVariableOpReadVariableOp Adamax/separable_conv2d_2/bias/m*
_output_shapes
:*
dtype0
М
,Adamax/separable_conv2d_2/pointwise_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*=
shared_name.,Adamax/separable_conv2d_2/pointwise_kernel/m
Е
@Adamax/separable_conv2d_2/pointwise_kernel/m/Read/ReadVariableOpReadVariableOp,Adamax/separable_conv2d_2/pointwise_kernel/m*&
_output_shapes
:*
dtype0
М
,Adamax/separable_conv2d_2/depthwise_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*=
shared_name.,Adamax/separable_conv2d_2/depthwise_kernel/m
Е
@Adamax/separable_conv2d_2/depthwise_kernel/m/Read/ReadVariableOpReadVariableOp,Adamax/separable_conv2d_2/depthwise_kernel/m*&
_output_shapes
:*
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
j
Adamax/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_nameAdamax/iter
c
Adamax/iter/Read/ReadVariableOpReadVariableOpAdamax/iter*
_output_shapes
: *
dtype0	
n
learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namelearning_rate
g
!learning_rate/Read/ReadVariableOpReadVariableOplearning_rate*
_output_shapes
: *
dtype0
^
decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namedecay
W
decay/Read/ReadVariableOpReadVariableOpdecay*
_output_shapes
: *
dtype0
`
beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namebeta_2
Y
beta_2/Read/ReadVariableOpReadVariableOpbeta_2*
_output_shapes
: *
dtype0
`
beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namebeta_1
Y
beta_1/Read/ReadVariableOpReadVariableOpbeta_1*
_output_shapes
: *
dtype0
p
dense_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_3/bias
i
 dense_3/bias/Read/ReadVariableOpReadVariableOpdense_3/bias*
_output_shapes
:*
dtype0
x
dense_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *
shared_namedense_3/kernel
q
"dense_3/kernel/Read/ReadVariableOpReadVariableOpdense_3/kernel*
_output_shapes

: *
dtype0

separable_conv2d_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_nameseparable_conv2d_3/bias

+separable_conv2d_3/bias/Read/ReadVariableOpReadVariableOpseparable_conv2d_3/bias*
_output_shapes
: *
dtype0
Њ
#separable_conv2d_3/pointwise_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *4
shared_name%#separable_conv2d_3/pointwise_kernel
Ѓ
7separable_conv2d_3/pointwise_kernel/Read/ReadVariableOpReadVariableOp#separable_conv2d_3/pointwise_kernel*&
_output_shapes
: *
dtype0
Њ
#separable_conv2d_3/depthwise_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#separable_conv2d_3/depthwise_kernel
Ѓ
7separable_conv2d_3/depthwise_kernel/Read/ReadVariableOpReadVariableOp#separable_conv2d_3/depthwise_kernel*&
_output_shapes
:*
dtype0

separable_conv2d_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameseparable_conv2d_2/bias

+separable_conv2d_2/bias/Read/ReadVariableOpReadVariableOpseparable_conv2d_2/bias*
_output_shapes
:*
dtype0
Њ
#separable_conv2d_2/pointwise_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#separable_conv2d_2/pointwise_kernel
Ѓ
7separable_conv2d_2/pointwise_kernel/Read/ReadVariableOpReadVariableOp#separable_conv2d_2/pointwise_kernel*&
_output_shapes
:*
dtype0
Њ
#separable_conv2d_2/depthwise_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#separable_conv2d_2/depthwise_kernel
Ѓ
7separable_conv2d_2/depthwise_kernel/Read/ReadVariableOpReadVariableOp#separable_conv2d_2/depthwise_kernel*&
_output_shapes
:*
dtype0

(serving_default_separable_conv2d_2_inputPlaceholder*1
_output_shapes
:џџџџџџџџџрр*
dtype0*&
shape:џџџџџџџџџрр
Й
StatefulPartitionedCallStatefulPartitionedCall(serving_default_separable_conv2d_2_input#separable_conv2d_2/depthwise_kernel#separable_conv2d_2/pointwise_kernelseparable_conv2d_2/bias#separable_conv2d_3/depthwise_kernel#separable_conv2d_3/pointwise_kernelseparable_conv2d_3/biasdense_3/kerneldense_3/bias*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *,
f'R%
#__inference_signature_wrapper_29140

NoOpNoOp
F
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*вE
valueШEBХE BОE
ш
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer-4
layer_with_weights-2
layer-5
	variables
trainable_variables
	regularization_losses

	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures*
ш
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
depthwise_kernel
pointwise_kernel
bias
 _jit_compiled_convolution_op*

	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses* 
ш
 	variables
!trainable_variables
"regularization_losses
#	keras_api
$__call__
*%&call_and_return_all_conditional_losses
&depthwise_kernel
'pointwise_kernel
(bias
 )_jit_compiled_convolution_op*

*	variables
+trainable_variables
,regularization_losses
-	keras_api
.__call__
*/&call_and_return_all_conditional_losses* 

0	variables
1trainable_variables
2regularization_losses
3	keras_api
4__call__
*5&call_and_return_all_conditional_losses* 
І
6	variables
7trainable_variables
8regularization_losses
9	keras_api
:__call__
*;&call_and_return_all_conditional_losses

<kernel
=bias*
<
0
1
2
&3
'4
(5
<6
=7*
<
0
1
2
&3
'4
(5
<6
=7*
* 
А
>non_trainable_variables

?layers
@metrics
Alayer_regularization_losses
Blayer_metrics
	variables
trainable_variables
	regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
Ctrace_0
Dtrace_1
Etrace_2
Ftrace_3* 
6
Gtrace_0
Htrace_1
Itrace_2
Jtrace_3* 
* 
ф

Kbeta_1

Lbeta_2
	Mdecay
Nlearning_rate
Oitermmm&m'm(m<m=mvvv&v'v(v<v=v*

Pserving_default* 

0
1
2*

0
1
2*
* 

Qnon_trainable_variables

Rlayers
Smetrics
Tlayer_regularization_losses
Ulayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

Vtrace_0* 

Wtrace_0* 
}w
VARIABLE_VALUE#separable_conv2d_2/depthwise_kernel@layer_with_weights-0/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUE#separable_conv2d_2/pointwise_kernel@layer_with_weights-0/pointwise_kernel/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUEseparable_conv2d_2/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 

Xnon_trainable_variables

Ylayers
Zmetrics
[layer_regularization_losses
\layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses* 

]trace_0* 

^trace_0* 

&0
'1
(2*

&0
'1
(2*
* 

_non_trainable_variables

`layers
ametrics
blayer_regularization_losses
clayer_metrics
 	variables
!trainable_variables
"regularization_losses
$__call__
*%&call_and_return_all_conditional_losses
&%"call_and_return_conditional_losses*

dtrace_0* 

etrace_0* 
}w
VARIABLE_VALUE#separable_conv2d_3/depthwise_kernel@layer_with_weights-1/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUE#separable_conv2d_3/pointwise_kernel@layer_with_weights-1/pointwise_kernel/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUEseparable_conv2d_3/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 

fnon_trainable_variables

glayers
hmetrics
ilayer_regularization_losses
jlayer_metrics
*	variables
+trainable_variables
,regularization_losses
.__call__
*/&call_and_return_all_conditional_losses
&/"call_and_return_conditional_losses* 

ktrace_0* 

ltrace_0* 
* 
* 
* 

mnon_trainable_variables

nlayers
ometrics
player_regularization_losses
qlayer_metrics
0	variables
1trainable_variables
2regularization_losses
4__call__
*5&call_and_return_all_conditional_losses
&5"call_and_return_conditional_losses* 

rtrace_0* 

strace_0* 

<0
=1*

<0
=1*
* 

tnon_trainable_variables

ulayers
vmetrics
wlayer_regularization_losses
xlayer_metrics
6	variables
7trainable_variables
8regularization_losses
:__call__
*;&call_and_return_all_conditional_losses
&;"call_and_return_conditional_losses*

ytrace_0* 

ztrace_0* 
^X
VARIABLE_VALUEdense_3/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_3/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
.
0
1
2
3
4
5*

{0
|1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
KE
VARIABLE_VALUEbeta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
KE
VARIABLE_VALUEbeta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
IC
VARIABLE_VALUEdecay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUElearning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUEAdamax/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
9
}	variables
~	keras_api
	total

count*
M
	variables
	keras_api

total

count

_fn_kwargs*

0
1*

}	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

0
1*

	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
Ѓ
VARIABLE_VALUE,Adamax/separable_conv2d_2/depthwise_kernel/m\layer_with_weights-0/depthwise_kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
Ѓ
VARIABLE_VALUE,Adamax/separable_conv2d_2/pointwise_kernel/m\layer_with_weights-0/pointwise_kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE Adamax/separable_conv2d_2/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
Ѓ
VARIABLE_VALUE,Adamax/separable_conv2d_3/depthwise_kernel/m\layer_with_weights-1/depthwise_kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
Ѓ
VARIABLE_VALUE,Adamax/separable_conv2d_3/pointwise_kernel/m\layer_with_weights-1/pointwise_kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE Adamax/separable_conv2d_3/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}
VARIABLE_VALUEAdamax/dense_3/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdamax/dense_3/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
Ѓ
VARIABLE_VALUE,Adamax/separable_conv2d_2/depthwise_kernel/v\layer_with_weights-0/depthwise_kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
Ѓ
VARIABLE_VALUE,Adamax/separable_conv2d_2/pointwise_kernel/v\layer_with_weights-0/pointwise_kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE Adamax/separable_conv2d_2/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
Ѓ
VARIABLE_VALUE,Adamax/separable_conv2d_3/depthwise_kernel/v\layer_with_weights-1/depthwise_kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
Ѓ
VARIABLE_VALUE,Adamax/separable_conv2d_3/pointwise_kernel/v\layer_with_weights-1/pointwise_kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE Adamax/separable_conv2d_3/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}
VARIABLE_VALUEAdamax/dense_3/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdamax/dense_3/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
с
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename7separable_conv2d_2/depthwise_kernel/Read/ReadVariableOp7separable_conv2d_2/pointwise_kernel/Read/ReadVariableOp+separable_conv2d_2/bias/Read/ReadVariableOp7separable_conv2d_3/depthwise_kernel/Read/ReadVariableOp7separable_conv2d_3/pointwise_kernel/Read/ReadVariableOp+separable_conv2d_3/bias/Read/ReadVariableOp"dense_3/kernel/Read/ReadVariableOp dense_3/bias/Read/ReadVariableOpbeta_1/Read/ReadVariableOpbeta_2/Read/ReadVariableOpdecay/Read/ReadVariableOp!learning_rate/Read/ReadVariableOpAdamax/iter/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp@Adamax/separable_conv2d_2/depthwise_kernel/m/Read/ReadVariableOp@Adamax/separable_conv2d_2/pointwise_kernel/m/Read/ReadVariableOp4Adamax/separable_conv2d_2/bias/m/Read/ReadVariableOp@Adamax/separable_conv2d_3/depthwise_kernel/m/Read/ReadVariableOp@Adamax/separable_conv2d_3/pointwise_kernel/m/Read/ReadVariableOp4Adamax/separable_conv2d_3/bias/m/Read/ReadVariableOp+Adamax/dense_3/kernel/m/Read/ReadVariableOp)Adamax/dense_3/bias/m/Read/ReadVariableOp@Adamax/separable_conv2d_2/depthwise_kernel/v/Read/ReadVariableOp@Adamax/separable_conv2d_2/pointwise_kernel/v/Read/ReadVariableOp4Adamax/separable_conv2d_2/bias/v/Read/ReadVariableOp@Adamax/separable_conv2d_3/depthwise_kernel/v/Read/ReadVariableOp@Adamax/separable_conv2d_3/pointwise_kernel/v/Read/ReadVariableOp4Adamax/separable_conv2d_3/bias/v/Read/ReadVariableOp+Adamax/dense_3/kernel/v/Read/ReadVariableOp)Adamax/dense_3/bias/v/Read/ReadVariableOpConst*.
Tin'
%2#	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *'
f"R 
__inference__traced_save_29487
Ш	
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filename#separable_conv2d_2/depthwise_kernel#separable_conv2d_2/pointwise_kernelseparable_conv2d_2/bias#separable_conv2d_3/depthwise_kernel#separable_conv2d_3/pointwise_kernelseparable_conv2d_3/biasdense_3/kerneldense_3/biasbeta_1beta_2decaylearning_rateAdamax/itertotal_1count_1totalcount,Adamax/separable_conv2d_2/depthwise_kernel/m,Adamax/separable_conv2d_2/pointwise_kernel/m Adamax/separable_conv2d_2/bias/m,Adamax/separable_conv2d_3/depthwise_kernel/m,Adamax/separable_conv2d_3/pointwise_kernel/m Adamax/separable_conv2d_3/bias/mAdamax/dense_3/kernel/mAdamax/dense_3/bias/m,Adamax/separable_conv2d_2/depthwise_kernel/v,Adamax/separable_conv2d_2/pointwise_kernel/v Adamax/separable_conv2d_2/bias/v,Adamax/separable_conv2d_3/depthwise_kernel/v,Adamax/separable_conv2d_3/pointwise_kernel/v Adamax/separable_conv2d_3/bias/vAdamax/dense_3/kernel/vAdamax/dense_3/bias/v*-
Tin&
$2"*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 **
f%R#
!__inference__traced_restore_29596ч
С

'__inference_dense_3_layer_call_fn_29354

inputs
unknown: 
	unknown_0:
identityЂStatefulPartitionedCallк
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_dense_3_layer_call_and_return_conditional_losses_28934o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ 
 
_user_specified_nameinputs
 
Р
G__inference_sequential_2_layer_call_and_return_conditional_losses_29019

inputs2
separable_conv2d_2_28996:2
separable_conv2d_2_28998:&
separable_conv2d_2_29000:2
separable_conv2d_3_29004:2
separable_conv2d_3_29006: &
separable_conv2d_3_29008: 
dense_3_29013: 
dense_3_29015:
identityЂdense_3/StatefulPartitionedCallЂ*separable_conv2d_2/StatefulPartitionedCallЂ*separable_conv2d_3/StatefulPartitionedCallО
*separable_conv2d_2/StatefulPartitionedCallStatefulPartitionedCallinputsseparable_conv2d_2_28996separable_conv2d_2_28998separable_conv2d_2_29000*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:џџџџџџџџџрр*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_separable_conv2d_2_layer_call_and_return_conditional_losses_28824§
max_pooling2d_6/PartitionedCallPartitionedCall3separable_conv2d_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџpp* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_max_pooling2d_6_layer_call_and_return_conditional_losses_28842о
*separable_conv2d_3/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_6/PartitionedCall:output:0separable_conv2d_3_29004separable_conv2d_3_29006separable_conv2d_3_29008*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџpp *%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_separable_conv2d_3_layer_call_and_return_conditional_losses_28865§
max_pooling2d_7/PartitionedCallPartitionedCall3separable_conv2d_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ88 * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_max_pooling2d_7_layer_call_and_return_conditional_losses_28883
*global_average_pooling2d_2/PartitionedCallPartitionedCall(max_pooling2d_7/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *^
fYRW
U__inference_global_average_pooling2d_2_layer_call_and_return_conditional_losses_28896
dense_3/StatefulPartitionedCallStatefulPartitionedCall3global_average_pooling2d_2/PartitionedCall:output:0dense_3_29013dense_3_29015*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_dense_3_layer_call_and_return_conditional_losses_28934w
IdentityIdentity(dense_3/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџТ
NoOpNoOp ^dense_3/StatefulPartitionedCall+^separable_conv2d_2/StatefulPartitionedCall+^separable_conv2d_3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:џџџџџџџџџрр: : : : : : : : 2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2X
*separable_conv2d_2/StatefulPartitionedCall*separable_conv2d_2/StatefulPartitionedCall2X
*separable_conv2d_3/StatefulPartitionedCall*separable_conv2d_3/StatefulPartitionedCall:Y U
1
_output_shapes
:џџџџџџџџџрр
 
_user_specified_nameinputs
Е

ё
,__inference_sequential_2_layer_call_fn_29059
separable_conv2d_2_input!
unknown:#
	unknown_0:
	unknown_1:#
	unknown_2:#
	unknown_3: 
	unknown_4: 
	unknown_5: 
	unknown_6:
identityЂStatefulPartitionedCallП
StatefulPartitionedCallStatefulPartitionedCallseparable_conv2d_2_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_sequential_2_layer_call_and_return_conditional_losses_29019o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:џџџџџџџџџрр: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:k g
1
_output_shapes
:џџџџџџџџџрр
2
_user_specified_nameseparable_conv2d_2_input
О8
Ќ
G__inference_sequential_2_layer_call_and_return_conditional_losses_29260

inputsU
;separable_conv2d_2_separable_conv2d_readvariableop_resource:W
=separable_conv2d_2_separable_conv2d_readvariableop_1_resource:@
2separable_conv2d_2_biasadd_readvariableop_resource:U
;separable_conv2d_3_separable_conv2d_readvariableop_resource:W
=separable_conv2d_3_separable_conv2d_readvariableop_1_resource: @
2separable_conv2d_3_biasadd_readvariableop_resource: 8
&dense_3_matmul_readvariableop_resource: 5
'dense_3_biasadd_readvariableop_resource:
identityЂdense_3/BiasAdd/ReadVariableOpЂdense_3/MatMul/ReadVariableOpЂ)separable_conv2d_2/BiasAdd/ReadVariableOpЂ2separable_conv2d_2/separable_conv2d/ReadVariableOpЂ4separable_conv2d_2/separable_conv2d/ReadVariableOp_1Ђ)separable_conv2d_3/BiasAdd/ReadVariableOpЂ2separable_conv2d_3/separable_conv2d/ReadVariableOpЂ4separable_conv2d_3/separable_conv2d/ReadVariableOp_1Ж
2separable_conv2d_2/separable_conv2d/ReadVariableOpReadVariableOp;separable_conv2d_2_separable_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0К
4separable_conv2d_2/separable_conv2d/ReadVariableOp_1ReadVariableOp=separable_conv2d_2_separable_conv2d_readvariableop_1_resource*&
_output_shapes
:*
dtype0
)separable_conv2d_2/separable_conv2d/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"            
1separable_conv2d_2/separable_conv2d/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      ю
-separable_conv2d_2/separable_conv2d/depthwiseDepthwiseConv2dNativeinputs:separable_conv2d_2/separable_conv2d/ReadVariableOp:value:0*
T0*1
_output_shapes
:џџџџџџџџџрр*
paddingSAME*
strides

#separable_conv2d_2/separable_conv2dConv2D6separable_conv2d_2/separable_conv2d/depthwise:output:0<separable_conv2d_2/separable_conv2d/ReadVariableOp_1:value:0*
T0*1
_output_shapes
:џџџџџџџџџрр*
paddingVALID*
strides

)separable_conv2d_2/BiasAdd/ReadVariableOpReadVariableOp2separable_conv2d_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Т
separable_conv2d_2/BiasAddBiasAdd,separable_conv2d_2/separable_conv2d:output:01separable_conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:џџџџџџџџџрр
separable_conv2d_2/ReluRelu#separable_conv2d_2/BiasAdd:output:0*
T0*1
_output_shapes
:џџџџџџџџџррЖ
max_pooling2d_6/MaxPoolMaxPool%separable_conv2d_2/Relu:activations:0*/
_output_shapes
:џџџџџџџџџpp*
ksize
*
paddingVALID*
strides
Ж
2separable_conv2d_3/separable_conv2d/ReadVariableOpReadVariableOp;separable_conv2d_3_separable_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0К
4separable_conv2d_3/separable_conv2d/ReadVariableOp_1ReadVariableOp=separable_conv2d_3_separable_conv2d_readvariableop_1_resource*&
_output_shapes
: *
dtype0
)separable_conv2d_3/separable_conv2d/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"            
1separable_conv2d_3/separable_conv2d/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      
-separable_conv2d_3/separable_conv2d/depthwiseDepthwiseConv2dNative max_pooling2d_6/MaxPool:output:0:separable_conv2d_3/separable_conv2d/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџpp*
paddingSAME*
strides

#separable_conv2d_3/separable_conv2dConv2D6separable_conv2d_3/separable_conv2d/depthwise:output:0<separable_conv2d_3/separable_conv2d/ReadVariableOp_1:value:0*
T0*/
_output_shapes
:џџџџџџџџџpp *
paddingVALID*
strides

)separable_conv2d_3/BiasAdd/ReadVariableOpReadVariableOp2separable_conv2d_3_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Р
separable_conv2d_3/BiasAddBiasAdd,separable_conv2d_3/separable_conv2d:output:01separable_conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџpp ~
separable_conv2d_3/ReluRelu#separable_conv2d_3/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџpp Ж
max_pooling2d_7/MaxPoolMaxPool%separable_conv2d_3/Relu:activations:0*/
_output_shapes
:џџџџџџџџџ88 *
ksize
*
paddingVALID*
strides

1global_average_pooling2d_2/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      З
global_average_pooling2d_2/MeanMean max_pooling2d_7/MaxPool:output:0:global_average_pooling2d_2/Mean/reduction_indices:output:0*
T0*'
_output_shapes
:џџџџџџџџџ 
dense_3/MatMul/ReadVariableOpReadVariableOp&dense_3_matmul_readvariableop_resource*
_output_shapes

: *
dtype0
dense_3/MatMulMatMul(global_average_pooling2d_2/Mean:output:0%dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџf
dense_3/SoftmaxSoftmaxdense_3/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџh
IdentityIdentitydense_3/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџЗ
NoOpNoOp^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp*^separable_conv2d_2/BiasAdd/ReadVariableOp3^separable_conv2d_2/separable_conv2d/ReadVariableOp5^separable_conv2d_2/separable_conv2d/ReadVariableOp_1*^separable_conv2d_3/BiasAdd/ReadVariableOp3^separable_conv2d_3/separable_conv2d/ReadVariableOp5^separable_conv2d_3/separable_conv2d/ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:џџџџџџџџџрр: : : : : : : : 2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2>
dense_3/MatMul/ReadVariableOpdense_3/MatMul/ReadVariableOp2V
)separable_conv2d_2/BiasAdd/ReadVariableOp)separable_conv2d_2/BiasAdd/ReadVariableOp2h
2separable_conv2d_2/separable_conv2d/ReadVariableOp2separable_conv2d_2/separable_conv2d/ReadVariableOp2l
4separable_conv2d_2/separable_conv2d/ReadVariableOp_14separable_conv2d_2/separable_conv2d/ReadVariableOp_12V
)separable_conv2d_3/BiasAdd/ReadVariableOp)separable_conv2d_3/BiasAdd/ReadVariableOp2h
2separable_conv2d_3/separable_conv2d/ReadVariableOp2separable_conv2d_3/separable_conv2d/ReadVariableOp2l
4separable_conv2d_3/separable_conv2d/ReadVariableOp_14separable_conv2d_3/separable_conv2d/ReadVariableOp_1:Y U
1
_output_shapes
:џџџџџџџџџрр
 
_user_specified_nameinputs
ж
в
G__inference_sequential_2_layer_call_and_return_conditional_losses_29085
separable_conv2d_2_input2
separable_conv2d_2_29062:2
separable_conv2d_2_29064:&
separable_conv2d_2_29066:2
separable_conv2d_3_29070:2
separable_conv2d_3_29072: &
separable_conv2d_3_29074: 
dense_3_29079: 
dense_3_29081:
identityЂdense_3/StatefulPartitionedCallЂ*separable_conv2d_2/StatefulPartitionedCallЂ*separable_conv2d_3/StatefulPartitionedCallа
*separable_conv2d_2/StatefulPartitionedCallStatefulPartitionedCallseparable_conv2d_2_inputseparable_conv2d_2_29062separable_conv2d_2_29064separable_conv2d_2_29066*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:џџџџџџџџџрр*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_separable_conv2d_2_layer_call_and_return_conditional_losses_28824§
max_pooling2d_6/PartitionedCallPartitionedCall3separable_conv2d_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџpp* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_max_pooling2d_6_layer_call_and_return_conditional_losses_28842о
*separable_conv2d_3/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_6/PartitionedCall:output:0separable_conv2d_3_29070separable_conv2d_3_29072separable_conv2d_3_29074*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџpp *%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_separable_conv2d_3_layer_call_and_return_conditional_losses_28865§
max_pooling2d_7/PartitionedCallPartitionedCall3separable_conv2d_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ88 * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_max_pooling2d_7_layer_call_and_return_conditional_losses_28883
*global_average_pooling2d_2/PartitionedCallPartitionedCall(max_pooling2d_7/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *^
fYRW
U__inference_global_average_pooling2d_2_layer_call_and_return_conditional_losses_28896
dense_3/StatefulPartitionedCallStatefulPartitionedCall3global_average_pooling2d_2/PartitionedCall:output:0dense_3_29079dense_3_29081*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_dense_3_layer_call_and_return_conditional_losses_28934w
IdentityIdentity(dense_3/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџТ
NoOpNoOp ^dense_3/StatefulPartitionedCall+^separable_conv2d_2/StatefulPartitionedCall+^separable_conv2d_3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:џџџџџџџџџрр: : : : : : : : 2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2X
*separable_conv2d_2/StatefulPartitionedCall*separable_conv2d_2/StatefulPartitionedCall2X
*separable_conv2d_3/StatefulPartitionedCall*separable_conv2d_3/StatefulPartitionedCall:k g
1
_output_shapes
:џџџџџџџџџрр
2
_user_specified_nameseparable_conv2d_2_input


ш
#__inference_signature_wrapper_29140
separable_conv2d_2_input!
unknown:#
	unknown_0:
	unknown_1:#
	unknown_2:#
	unknown_3: 
	unknown_4: 
	unknown_5: 
	unknown_6:
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallseparable_conv2d_2_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *)
f$R"
 __inference__wrapped_model_28804o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:џџџџџџџџџрр: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:k g
1
_output_shapes
:џџџџџџџџџрр
2
_user_specified_nameseparable_conv2d_2_input
 
Р
G__inference_sequential_2_layer_call_and_return_conditional_losses_28941

inputs2
separable_conv2d_2_28906:2
separable_conv2d_2_28908:&
separable_conv2d_2_28910:2
separable_conv2d_3_28914:2
separable_conv2d_3_28916: &
separable_conv2d_3_28918: 
dense_3_28935: 
dense_3_28937:
identityЂdense_3/StatefulPartitionedCallЂ*separable_conv2d_2/StatefulPartitionedCallЂ*separable_conv2d_3/StatefulPartitionedCallО
*separable_conv2d_2/StatefulPartitionedCallStatefulPartitionedCallinputsseparable_conv2d_2_28906separable_conv2d_2_28908separable_conv2d_2_28910*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:џџџџџџџџџрр*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_separable_conv2d_2_layer_call_and_return_conditional_losses_28824§
max_pooling2d_6/PartitionedCallPartitionedCall3separable_conv2d_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџpp* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_max_pooling2d_6_layer_call_and_return_conditional_losses_28842о
*separable_conv2d_3/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_6/PartitionedCall:output:0separable_conv2d_3_28914separable_conv2d_3_28916separable_conv2d_3_28918*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџpp *%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_separable_conv2d_3_layer_call_and_return_conditional_losses_28865§
max_pooling2d_7/PartitionedCallPartitionedCall3separable_conv2d_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ88 * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_max_pooling2d_7_layer_call_and_return_conditional_losses_28883
*global_average_pooling2d_2/PartitionedCallPartitionedCall(max_pooling2d_7/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *^
fYRW
U__inference_global_average_pooling2d_2_layer_call_and_return_conditional_losses_28896
dense_3/StatefulPartitionedCallStatefulPartitionedCall3global_average_pooling2d_2/PartitionedCall:output:0dense_3_28935dense_3_28937*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_dense_3_layer_call_and_return_conditional_losses_28934w
IdentityIdentity(dense_3/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџТ
NoOpNoOp ^dense_3/StatefulPartitionedCall+^separable_conv2d_2/StatefulPartitionedCall+^separable_conv2d_3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:џџџџџџџџџрр: : : : : : : : 2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2X
*separable_conv2d_2/StatefulPartitionedCall*separable_conv2d_2/StatefulPartitionedCall2X
*separable_conv2d_3/StatefulPartitionedCall*separable_conv2d_3/StatefulPartitionedCall:Y U
1
_output_shapes
:џџџџџџџџџрр
 
_user_specified_nameinputs
ж
в
G__inference_sequential_2_layer_call_and_return_conditional_losses_29111
separable_conv2d_2_input2
separable_conv2d_2_29088:2
separable_conv2d_2_29090:&
separable_conv2d_2_29092:2
separable_conv2d_3_29096:2
separable_conv2d_3_29098: &
separable_conv2d_3_29100: 
dense_3_29105: 
dense_3_29107:
identityЂdense_3/StatefulPartitionedCallЂ*separable_conv2d_2/StatefulPartitionedCallЂ*separable_conv2d_3/StatefulPartitionedCallа
*separable_conv2d_2/StatefulPartitionedCallStatefulPartitionedCallseparable_conv2d_2_inputseparable_conv2d_2_29088separable_conv2d_2_29090separable_conv2d_2_29092*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:џџџџџџџџџрр*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_separable_conv2d_2_layer_call_and_return_conditional_losses_28824§
max_pooling2d_6/PartitionedCallPartitionedCall3separable_conv2d_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџpp* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_max_pooling2d_6_layer_call_and_return_conditional_losses_28842о
*separable_conv2d_3/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_6/PartitionedCall:output:0separable_conv2d_3_29096separable_conv2d_3_29098separable_conv2d_3_29100*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџpp *%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_separable_conv2d_3_layer_call_and_return_conditional_losses_28865§
max_pooling2d_7/PartitionedCallPartitionedCall3separable_conv2d_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ88 * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_max_pooling2d_7_layer_call_and_return_conditional_losses_28883
*global_average_pooling2d_2/PartitionedCallPartitionedCall(max_pooling2d_7/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *^
fYRW
U__inference_global_average_pooling2d_2_layer_call_and_return_conditional_losses_28896
dense_3/StatefulPartitionedCallStatefulPartitionedCall3global_average_pooling2d_2/PartitionedCall:output:0dense_3_29105dense_3_29107*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_dense_3_layer_call_and_return_conditional_losses_28934w
IdentityIdentity(dense_3/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџТ
NoOpNoOp ^dense_3/StatefulPartitionedCall+^separable_conv2d_2/StatefulPartitionedCall+^separable_conv2d_3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:џџџџџџџџџрр: : : : : : : : 2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2X
*separable_conv2d_2/StatefulPartitionedCall*separable_conv2d_2/StatefulPartitionedCall2X
*separable_conv2d_3/StatefulPartitionedCall*separable_conv2d_3/StatefulPartitionedCall:k g
1
_output_shapes
:џџџџџџџџџрр
2
_user_specified_nameseparable_conv2d_2_input
Й
K
/__inference_max_pooling2d_7_layer_call_fn_29329

inputs
identityл
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_max_pooling2d_7_layer_call_and_return_conditional_losses_28883
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
Ћ

M__inference_separable_conv2d_3_layer_call_and_return_conditional_losses_29324

inputsB
(separable_conv2d_readvariableop_resource:D
*separable_conv2d_readvariableop_1_resource: -
biasadd_readvariableop_resource: 
identityЂBiasAdd/ReadVariableOpЂseparable_conv2d/ReadVariableOpЂ!separable_conv2d/ReadVariableOp_1
separable_conv2d/ReadVariableOpReadVariableOp(separable_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0
!separable_conv2d/ReadVariableOp_1ReadVariableOp*separable_conv2d_readvariableop_1_resource*&
_output_shapes
: *
dtype0o
separable_conv2d/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"            o
separable_conv2d/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      и
separable_conv2d/depthwiseDepthwiseConv2dNativeinputs'separable_conv2d/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides
п
separable_conv2dConv2D#separable_conv2d/depthwise:output:0)separable_conv2d/ReadVariableOp_1:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0
BiasAddBiasAddseparable_conv2d:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ j
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ {
IdentityIdentityRelu:activations:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ Ѕ
NoOpNoOp^BiasAdd/ReadVariableOp ^separable_conv2d/ReadVariableOp"^separable_conv2d/ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
separable_conv2d/ReadVariableOpseparable_conv2d/ReadVariableOp2F
!separable_conv2d/ReadVariableOp_1!separable_conv2d/ReadVariableOp_1:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
Й
K
/__inference_max_pooling2d_6_layer_call_fn_29292

inputs
identityл
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_max_pooling2d_6_layer_call_and_return_conditional_losses_28842
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
ќ
Ь
2__inference_separable_conv2d_2_layer_call_fn_29271

inputs!
unknown:#
	unknown_0:
	unknown_1:
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_separable_conv2d_2_layer_call_and_return_conditional_losses_28824
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs


ѓ
B__inference_dense_3_layer_call_and_return_conditional_losses_28934

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџV
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ 
 
_user_specified_nameinputs
Ж
q
U__inference_global_average_pooling2d_2_layer_call_and_return_conditional_losses_28896

inputs
identityg
Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      p
MeanMeaninputsMean/reduction_indices:output:0*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ^
IdentityIdentityMean:output:0*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
Ћ

M__inference_separable_conv2d_2_layer_call_and_return_conditional_losses_29287

inputsB
(separable_conv2d_readvariableop_resource:D
*separable_conv2d_readvariableop_1_resource:-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂseparable_conv2d/ReadVariableOpЂ!separable_conv2d/ReadVariableOp_1
separable_conv2d/ReadVariableOpReadVariableOp(separable_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0
!separable_conv2d/ReadVariableOp_1ReadVariableOp*separable_conv2d_readvariableop_1_resource*&
_output_shapes
:*
dtype0o
separable_conv2d/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"            o
separable_conv2d/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      и
separable_conv2d/depthwiseDepthwiseConv2dNativeinputs'separable_conv2d/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides
п
separable_conv2dConv2D#separable_conv2d/depthwise:output:0)separable_conv2d/ReadVariableOp_1:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddseparable_conv2d:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџj
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ{
IdentityIdentityRelu:activations:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџЅ
NoOpNoOp^BiasAdd/ReadVariableOp ^separable_conv2d/ReadVariableOp"^separable_conv2d/ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
separable_conv2d/ReadVariableOpseparable_conv2d/ReadVariableOp2F
!separable_conv2d/ReadVariableOp_1!separable_conv2d/ReadVariableOp_1:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
ЭB
ч	
 __inference__wrapped_model_28804
separable_conv2d_2_inputb
Hsequential_2_separable_conv2d_2_separable_conv2d_readvariableop_resource:d
Jsequential_2_separable_conv2d_2_separable_conv2d_readvariableop_1_resource:M
?sequential_2_separable_conv2d_2_biasadd_readvariableop_resource:b
Hsequential_2_separable_conv2d_3_separable_conv2d_readvariableop_resource:d
Jsequential_2_separable_conv2d_3_separable_conv2d_readvariableop_1_resource: M
?sequential_2_separable_conv2d_3_biasadd_readvariableop_resource: E
3sequential_2_dense_3_matmul_readvariableop_resource: B
4sequential_2_dense_3_biasadd_readvariableop_resource:
identityЂ+sequential_2/dense_3/BiasAdd/ReadVariableOpЂ*sequential_2/dense_3/MatMul/ReadVariableOpЂ6sequential_2/separable_conv2d_2/BiasAdd/ReadVariableOpЂ?sequential_2/separable_conv2d_2/separable_conv2d/ReadVariableOpЂAsequential_2/separable_conv2d_2/separable_conv2d/ReadVariableOp_1Ђ6sequential_2/separable_conv2d_3/BiasAdd/ReadVariableOpЂ?sequential_2/separable_conv2d_3/separable_conv2d/ReadVariableOpЂAsequential_2/separable_conv2d_3/separable_conv2d/ReadVariableOp_1а
?sequential_2/separable_conv2d_2/separable_conv2d/ReadVariableOpReadVariableOpHsequential_2_separable_conv2d_2_separable_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0д
Asequential_2/separable_conv2d_2/separable_conv2d/ReadVariableOp_1ReadVariableOpJsequential_2_separable_conv2d_2_separable_conv2d_readvariableop_1_resource*&
_output_shapes
:*
dtype0
6sequential_2/separable_conv2d_2/separable_conv2d/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"            
>sequential_2/separable_conv2d_2/separable_conv2d/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      
:sequential_2/separable_conv2d_2/separable_conv2d/depthwiseDepthwiseConv2dNativeseparable_conv2d_2_inputGsequential_2/separable_conv2d_2/separable_conv2d/ReadVariableOp:value:0*
T0*1
_output_shapes
:џџџџџџџџџрр*
paddingSAME*
strides
Џ
0sequential_2/separable_conv2d_2/separable_conv2dConv2DCsequential_2/separable_conv2d_2/separable_conv2d/depthwise:output:0Isequential_2/separable_conv2d_2/separable_conv2d/ReadVariableOp_1:value:0*
T0*1
_output_shapes
:џџџџџџџџџрр*
paddingVALID*
strides
В
6sequential_2/separable_conv2d_2/BiasAdd/ReadVariableOpReadVariableOp?sequential_2_separable_conv2d_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0щ
'sequential_2/separable_conv2d_2/BiasAddBiasAdd9sequential_2/separable_conv2d_2/separable_conv2d:output:0>sequential_2/separable_conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:џџџџџџџџџрр
$sequential_2/separable_conv2d_2/ReluRelu0sequential_2/separable_conv2d_2/BiasAdd:output:0*
T0*1
_output_shapes
:џџџџџџџџџрра
$sequential_2/max_pooling2d_6/MaxPoolMaxPool2sequential_2/separable_conv2d_2/Relu:activations:0*/
_output_shapes
:џџџџџџџџџpp*
ksize
*
paddingVALID*
strides
а
?sequential_2/separable_conv2d_3/separable_conv2d/ReadVariableOpReadVariableOpHsequential_2_separable_conv2d_3_separable_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0д
Asequential_2/separable_conv2d_3/separable_conv2d/ReadVariableOp_1ReadVariableOpJsequential_2_separable_conv2d_3_separable_conv2d_readvariableop_1_resource*&
_output_shapes
: *
dtype0
6sequential_2/separable_conv2d_3/separable_conv2d/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"            
>sequential_2/separable_conv2d_3/separable_conv2d/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      ­
:sequential_2/separable_conv2d_3/separable_conv2d/depthwiseDepthwiseConv2dNative-sequential_2/max_pooling2d_6/MaxPool:output:0Gsequential_2/separable_conv2d_3/separable_conv2d/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџpp*
paddingSAME*
strides
­
0sequential_2/separable_conv2d_3/separable_conv2dConv2DCsequential_2/separable_conv2d_3/separable_conv2d/depthwise:output:0Isequential_2/separable_conv2d_3/separable_conv2d/ReadVariableOp_1:value:0*
T0*/
_output_shapes
:џџџџџџџџџpp *
paddingVALID*
strides
В
6sequential_2/separable_conv2d_3/BiasAdd/ReadVariableOpReadVariableOp?sequential_2_separable_conv2d_3_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0ч
'sequential_2/separable_conv2d_3/BiasAddBiasAdd9sequential_2/separable_conv2d_3/separable_conv2d:output:0>sequential_2/separable_conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџpp 
$sequential_2/separable_conv2d_3/ReluRelu0sequential_2/separable_conv2d_3/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџpp а
$sequential_2/max_pooling2d_7/MaxPoolMaxPool2sequential_2/separable_conv2d_3/Relu:activations:0*/
_output_shapes
:џџџџџџџџџ88 *
ksize
*
paddingVALID*
strides

>sequential_2/global_average_pooling2d_2/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      о
,sequential_2/global_average_pooling2d_2/MeanMean-sequential_2/max_pooling2d_7/MaxPool:output:0Gsequential_2/global_average_pooling2d_2/Mean/reduction_indices:output:0*
T0*'
_output_shapes
:џџџџџџџџџ 
*sequential_2/dense_3/MatMul/ReadVariableOpReadVariableOp3sequential_2_dense_3_matmul_readvariableop_resource*
_output_shapes

: *
dtype0Т
sequential_2/dense_3/MatMulMatMul5sequential_2/global_average_pooling2d_2/Mean:output:02sequential_2/dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
+sequential_2/dense_3/BiasAdd/ReadVariableOpReadVariableOp4sequential_2_dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Е
sequential_2/dense_3/BiasAddBiasAdd%sequential_2/dense_3/MatMul:product:03sequential_2/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
sequential_2/dense_3/SoftmaxSoftmax%sequential_2/dense_3/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџu
IdentityIdentity&sequential_2/dense_3/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
NoOpNoOp,^sequential_2/dense_3/BiasAdd/ReadVariableOp+^sequential_2/dense_3/MatMul/ReadVariableOp7^sequential_2/separable_conv2d_2/BiasAdd/ReadVariableOp@^sequential_2/separable_conv2d_2/separable_conv2d/ReadVariableOpB^sequential_2/separable_conv2d_2/separable_conv2d/ReadVariableOp_17^sequential_2/separable_conv2d_3/BiasAdd/ReadVariableOp@^sequential_2/separable_conv2d_3/separable_conv2d/ReadVariableOpB^sequential_2/separable_conv2d_3/separable_conv2d/ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:џџџџџџџџџрр: : : : : : : : 2Z
+sequential_2/dense_3/BiasAdd/ReadVariableOp+sequential_2/dense_3/BiasAdd/ReadVariableOp2X
*sequential_2/dense_3/MatMul/ReadVariableOp*sequential_2/dense_3/MatMul/ReadVariableOp2p
6sequential_2/separable_conv2d_2/BiasAdd/ReadVariableOp6sequential_2/separable_conv2d_2/BiasAdd/ReadVariableOp2
?sequential_2/separable_conv2d_2/separable_conv2d/ReadVariableOp?sequential_2/separable_conv2d_2/separable_conv2d/ReadVariableOp2
Asequential_2/separable_conv2d_2/separable_conv2d/ReadVariableOp_1Asequential_2/separable_conv2d_2/separable_conv2d/ReadVariableOp_12p
6sequential_2/separable_conv2d_3/BiasAdd/ReadVariableOp6sequential_2/separable_conv2d_3/BiasAdd/ReadVariableOp2
?sequential_2/separable_conv2d_3/separable_conv2d/ReadVariableOp?sequential_2/separable_conv2d_3/separable_conv2d/ReadVariableOp2
Asequential_2/separable_conv2d_3/separable_conv2d/ReadVariableOp_1Asequential_2/separable_conv2d_3/separable_conv2d/ReadVariableOp_1:k g
1
_output_shapes
:џџџџџџџџџрр
2
_user_specified_nameseparable_conv2d_2_input
ќ
Ь
2__inference_separable_conv2d_3_layer_call_fn_29308

inputs!
unknown:#
	unknown_0: 
	unknown_1: 
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_separable_conv2d_3_layer_call_and_return_conditional_losses_28865
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
Е

ё
,__inference_sequential_2_layer_call_fn_28960
separable_conv2d_2_input!
unknown:#
	unknown_0:
	unknown_1:#
	unknown_2:#
	unknown_3: 
	unknown_4: 
	unknown_5: 
	unknown_6:
identityЂStatefulPartitionedCallП
StatefulPartitionedCallStatefulPartitionedCallseparable_conv2d_2_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_sequential_2_layer_call_and_return_conditional_losses_28941o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:џџџџџџџџџрр: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:k g
1
_output_shapes
:џџџџџџџџџрр
2
_user_specified_nameseparable_conv2d_2_input
ЫM
љ
__inference__traced_save_29487
file_prefixB
>savev2_separable_conv2d_2_depthwise_kernel_read_readvariableopB
>savev2_separable_conv2d_2_pointwise_kernel_read_readvariableop6
2savev2_separable_conv2d_2_bias_read_readvariableopB
>savev2_separable_conv2d_3_depthwise_kernel_read_readvariableopB
>savev2_separable_conv2d_3_pointwise_kernel_read_readvariableop6
2savev2_separable_conv2d_3_bias_read_readvariableop-
)savev2_dense_3_kernel_read_readvariableop+
'savev2_dense_3_bias_read_readvariableop%
!savev2_beta_1_read_readvariableop%
!savev2_beta_2_read_readvariableop$
 savev2_decay_read_readvariableop,
(savev2_learning_rate_read_readvariableop*
&savev2_adamax_iter_read_readvariableop	&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableopK
Gsavev2_adamax_separable_conv2d_2_depthwise_kernel_m_read_readvariableopK
Gsavev2_adamax_separable_conv2d_2_pointwise_kernel_m_read_readvariableop?
;savev2_adamax_separable_conv2d_2_bias_m_read_readvariableopK
Gsavev2_adamax_separable_conv2d_3_depthwise_kernel_m_read_readvariableopK
Gsavev2_adamax_separable_conv2d_3_pointwise_kernel_m_read_readvariableop?
;savev2_adamax_separable_conv2d_3_bias_m_read_readvariableop6
2savev2_adamax_dense_3_kernel_m_read_readvariableop4
0savev2_adamax_dense_3_bias_m_read_readvariableopK
Gsavev2_adamax_separable_conv2d_2_depthwise_kernel_v_read_readvariableopK
Gsavev2_adamax_separable_conv2d_2_pointwise_kernel_v_read_readvariableop?
;savev2_adamax_separable_conv2d_2_bias_v_read_readvariableopK
Gsavev2_adamax_separable_conv2d_3_depthwise_kernel_v_read_readvariableopK
Gsavev2_adamax_separable_conv2d_3_pointwise_kernel_v_read_readvariableop?
;savev2_adamax_separable_conv2d_3_bias_v_read_readvariableop6
2savev2_adamax_dense_3_kernel_v_read_readvariableop4
0savev2_adamax_dense_3_bias_v_read_readvariableop
savev2_const

identity_1ЂMergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: ­
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*ж
valueЬBЩ"B@layer_with_weights-0/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-0/pointwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-1/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-1/pointwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-0/depthwise_kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-0/pointwise_kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-1/depthwise_kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-1/pointwise_kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-0/depthwise_kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-0/pointwise_kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-1/depthwise_kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-1/pointwise_kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHБ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B л
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0>savev2_separable_conv2d_2_depthwise_kernel_read_readvariableop>savev2_separable_conv2d_2_pointwise_kernel_read_readvariableop2savev2_separable_conv2d_2_bias_read_readvariableop>savev2_separable_conv2d_3_depthwise_kernel_read_readvariableop>savev2_separable_conv2d_3_pointwise_kernel_read_readvariableop2savev2_separable_conv2d_3_bias_read_readvariableop)savev2_dense_3_kernel_read_readvariableop'savev2_dense_3_bias_read_readvariableop!savev2_beta_1_read_readvariableop!savev2_beta_2_read_readvariableop savev2_decay_read_readvariableop(savev2_learning_rate_read_readvariableop&savev2_adamax_iter_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableopGsavev2_adamax_separable_conv2d_2_depthwise_kernel_m_read_readvariableopGsavev2_adamax_separable_conv2d_2_pointwise_kernel_m_read_readvariableop;savev2_adamax_separable_conv2d_2_bias_m_read_readvariableopGsavev2_adamax_separable_conv2d_3_depthwise_kernel_m_read_readvariableopGsavev2_adamax_separable_conv2d_3_pointwise_kernel_m_read_readvariableop;savev2_adamax_separable_conv2d_3_bias_m_read_readvariableop2savev2_adamax_dense_3_kernel_m_read_readvariableop0savev2_adamax_dense_3_bias_m_read_readvariableopGsavev2_adamax_separable_conv2d_2_depthwise_kernel_v_read_readvariableopGsavev2_adamax_separable_conv2d_2_pointwise_kernel_v_read_readvariableop;savev2_adamax_separable_conv2d_2_bias_v_read_readvariableopGsavev2_adamax_separable_conv2d_3_depthwise_kernel_v_read_readvariableopGsavev2_adamax_separable_conv2d_3_pointwise_kernel_v_read_readvariableop;savev2_adamax_separable_conv2d_3_bias_v_read_readvariableop2savev2_adamax_dense_3_kernel_v_read_readvariableop0savev2_adamax_dense_3_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *0
dtypes&
$2"	
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*з
_input_shapesХ
Т: ::::: : : :: : : : : : : : : ::::: : : :::::: : : :: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
: : 

_output_shapes
: :$ 

_output_shapes

: : 

_output_shapes
::	

_output_shapes
: :


_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :,(
&
_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
: : 

_output_shapes
: :$ 

_output_shapes

: : 

_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
: : 

_output_shapes
: :$  

_output_shapes

: : !

_output_shapes
::"

_output_shapes
: 

f
J__inference_max_pooling2d_7_layer_call_and_return_conditional_losses_29334

inputs
identityЂ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
ц
я
!__inference__traced_restore_29596
file_prefixN
4assignvariableop_separable_conv2d_2_depthwise_kernel:P
6assignvariableop_1_separable_conv2d_2_pointwise_kernel:8
*assignvariableop_2_separable_conv2d_2_bias:P
6assignvariableop_3_separable_conv2d_3_depthwise_kernel:P
6assignvariableop_4_separable_conv2d_3_pointwise_kernel: 8
*assignvariableop_5_separable_conv2d_3_bias: 3
!assignvariableop_6_dense_3_kernel: -
assignvariableop_7_dense_3_bias:#
assignvariableop_8_beta_1: #
assignvariableop_9_beta_2: #
assignvariableop_10_decay: +
!assignvariableop_11_learning_rate: )
assignvariableop_12_adamax_iter:	 %
assignvariableop_13_total_1: %
assignvariableop_14_count_1: #
assignvariableop_15_total: #
assignvariableop_16_count: Z
@assignvariableop_17_adamax_separable_conv2d_2_depthwise_kernel_m:Z
@assignvariableop_18_adamax_separable_conv2d_2_pointwise_kernel_m:B
4assignvariableop_19_adamax_separable_conv2d_2_bias_m:Z
@assignvariableop_20_adamax_separable_conv2d_3_depthwise_kernel_m:Z
@assignvariableop_21_adamax_separable_conv2d_3_pointwise_kernel_m: B
4assignvariableop_22_adamax_separable_conv2d_3_bias_m: =
+assignvariableop_23_adamax_dense_3_kernel_m: 7
)assignvariableop_24_adamax_dense_3_bias_m:Z
@assignvariableop_25_adamax_separable_conv2d_2_depthwise_kernel_v:Z
@assignvariableop_26_adamax_separable_conv2d_2_pointwise_kernel_v:B
4assignvariableop_27_adamax_separable_conv2d_2_bias_v:Z
@assignvariableop_28_adamax_separable_conv2d_3_depthwise_kernel_v:Z
@assignvariableop_29_adamax_separable_conv2d_3_pointwise_kernel_v: B
4assignvariableop_30_adamax_separable_conv2d_3_bias_v: =
+assignvariableop_31_adamax_dense_3_kernel_v: 7
)assignvariableop_32_adamax_dense_3_bias_v:
identity_34ЂAssignVariableOpЂAssignVariableOp_1ЂAssignVariableOp_10ЂAssignVariableOp_11ЂAssignVariableOp_12ЂAssignVariableOp_13ЂAssignVariableOp_14ЂAssignVariableOp_15ЂAssignVariableOp_16ЂAssignVariableOp_17ЂAssignVariableOp_18ЂAssignVariableOp_19ЂAssignVariableOp_2ЂAssignVariableOp_20ЂAssignVariableOp_21ЂAssignVariableOp_22ЂAssignVariableOp_23ЂAssignVariableOp_24ЂAssignVariableOp_25ЂAssignVariableOp_26ЂAssignVariableOp_27ЂAssignVariableOp_28ЂAssignVariableOp_29ЂAssignVariableOp_3ЂAssignVariableOp_30ЂAssignVariableOp_31ЂAssignVariableOp_32ЂAssignVariableOp_4ЂAssignVariableOp_5ЂAssignVariableOp_6ЂAssignVariableOp_7ЂAssignVariableOp_8ЂAssignVariableOp_9А
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*ж
valueЬBЩ"B@layer_with_weights-0/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-0/pointwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-1/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-1/pointwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-0/depthwise_kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-0/pointwise_kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-1/depthwise_kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-1/pointwise_kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-0/depthwise_kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-0/pointwise_kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-1/depthwise_kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-1/pointwise_kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHД
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B Ы
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*
_output_shapes
::::::::::::::::::::::::::::::::::*0
dtypes&
$2"	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOpAssignVariableOp4assignvariableop_separable_conv2d_2_depthwise_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:Ѕ
AssignVariableOp_1AssignVariableOp6assignvariableop_1_separable_conv2d_2_pointwise_kernelIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_2AssignVariableOp*assignvariableop_2_separable_conv2d_2_biasIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:Ѕ
AssignVariableOp_3AssignVariableOp6assignvariableop_3_separable_conv2d_3_depthwise_kernelIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:Ѕ
AssignVariableOp_4AssignVariableOp6assignvariableop_4_separable_conv2d_3_pointwise_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_5AssignVariableOp*assignvariableop_5_separable_conv2d_3_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_6AssignVariableOp!assignvariableop_6_dense_3_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_7AssignVariableOpassignvariableop_7_dense_3_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_8AssignVariableOpassignvariableop_8_beta_1Identity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_9AssignVariableOpassignvariableop_9_beta_2Identity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_10AssignVariableOpassignvariableop_10_decayIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_11AssignVariableOp!assignvariableop_11_learning_rateIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0	*
_output_shapes
:
AssignVariableOp_12AssignVariableOpassignvariableop_12_adamax_iterIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_13AssignVariableOpassignvariableop_13_total_1Identity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_14AssignVariableOpassignvariableop_14_count_1Identity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_15AssignVariableOpassignvariableop_15_totalIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_16AssignVariableOpassignvariableop_16_countIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:Б
AssignVariableOp_17AssignVariableOp@assignvariableop_17_adamax_separable_conv2d_2_depthwise_kernel_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:Б
AssignVariableOp_18AssignVariableOp@assignvariableop_18_adamax_separable_conv2d_2_pointwise_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:Ѕ
AssignVariableOp_19AssignVariableOp4assignvariableop_19_adamax_separable_conv2d_2_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:Б
AssignVariableOp_20AssignVariableOp@assignvariableop_20_adamax_separable_conv2d_3_depthwise_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:Б
AssignVariableOp_21AssignVariableOp@assignvariableop_21_adamax_separable_conv2d_3_pointwise_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:Ѕ
AssignVariableOp_22AssignVariableOp4assignvariableop_22_adamax_separable_conv2d_3_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_23AssignVariableOp+assignvariableop_23_adamax_dense_3_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_24AssignVariableOp)assignvariableop_24_adamax_dense_3_bias_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:Б
AssignVariableOp_25AssignVariableOp@assignvariableop_25_adamax_separable_conv2d_2_depthwise_kernel_vIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:Б
AssignVariableOp_26AssignVariableOp@assignvariableop_26_adamax_separable_conv2d_2_pointwise_kernel_vIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:Ѕ
AssignVariableOp_27AssignVariableOp4assignvariableop_27_adamax_separable_conv2d_2_bias_vIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:Б
AssignVariableOp_28AssignVariableOp@assignvariableop_28_adamax_separable_conv2d_3_depthwise_kernel_vIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:Б
AssignVariableOp_29AssignVariableOp@assignvariableop_29_adamax_separable_conv2d_3_pointwise_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:Ѕ
AssignVariableOp_30AssignVariableOp4assignvariableop_30_adamax_separable_conv2d_3_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_31AssignVariableOp+assignvariableop_31_adamax_dense_3_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_32AssignVariableOp)assignvariableop_32_adamax_dense_3_bias_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 Ѕ
Identity_33Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_34IdentityIdentity_33:output:0^NoOp_1*
T0*
_output_shapes
: 
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_34Identity_34:output:0*W
_input_shapesF
D: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
Ћ

M__inference_separable_conv2d_2_layer_call_and_return_conditional_losses_28824

inputsB
(separable_conv2d_readvariableop_resource:D
*separable_conv2d_readvariableop_1_resource:-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂseparable_conv2d/ReadVariableOpЂ!separable_conv2d/ReadVariableOp_1
separable_conv2d/ReadVariableOpReadVariableOp(separable_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0
!separable_conv2d/ReadVariableOp_1ReadVariableOp*separable_conv2d_readvariableop_1_resource*&
_output_shapes
:*
dtype0o
separable_conv2d/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"            o
separable_conv2d/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      и
separable_conv2d/depthwiseDepthwiseConv2dNativeinputs'separable_conv2d/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides
п
separable_conv2dConv2D#separable_conv2d/depthwise:output:0)separable_conv2d/ReadVariableOp_1:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddseparable_conv2d:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџj
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ{
IdentityIdentityRelu:activations:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџЅ
NoOpNoOp^BiasAdd/ReadVariableOp ^separable_conv2d/ReadVariableOp"^separable_conv2d/ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
separable_conv2d/ReadVariableOpseparable_conv2d/ReadVariableOp2F
!separable_conv2d/ReadVariableOp_1!separable_conv2d/ReadVariableOp_1:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
О8
Ќ
G__inference_sequential_2_layer_call_and_return_conditional_losses_29221

inputsU
;separable_conv2d_2_separable_conv2d_readvariableop_resource:W
=separable_conv2d_2_separable_conv2d_readvariableop_1_resource:@
2separable_conv2d_2_biasadd_readvariableop_resource:U
;separable_conv2d_3_separable_conv2d_readvariableop_resource:W
=separable_conv2d_3_separable_conv2d_readvariableop_1_resource: @
2separable_conv2d_3_biasadd_readvariableop_resource: 8
&dense_3_matmul_readvariableop_resource: 5
'dense_3_biasadd_readvariableop_resource:
identityЂdense_3/BiasAdd/ReadVariableOpЂdense_3/MatMul/ReadVariableOpЂ)separable_conv2d_2/BiasAdd/ReadVariableOpЂ2separable_conv2d_2/separable_conv2d/ReadVariableOpЂ4separable_conv2d_2/separable_conv2d/ReadVariableOp_1Ђ)separable_conv2d_3/BiasAdd/ReadVariableOpЂ2separable_conv2d_3/separable_conv2d/ReadVariableOpЂ4separable_conv2d_3/separable_conv2d/ReadVariableOp_1Ж
2separable_conv2d_2/separable_conv2d/ReadVariableOpReadVariableOp;separable_conv2d_2_separable_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0К
4separable_conv2d_2/separable_conv2d/ReadVariableOp_1ReadVariableOp=separable_conv2d_2_separable_conv2d_readvariableop_1_resource*&
_output_shapes
:*
dtype0
)separable_conv2d_2/separable_conv2d/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"            
1separable_conv2d_2/separable_conv2d/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      ю
-separable_conv2d_2/separable_conv2d/depthwiseDepthwiseConv2dNativeinputs:separable_conv2d_2/separable_conv2d/ReadVariableOp:value:0*
T0*1
_output_shapes
:џџџџџџџџџрр*
paddingSAME*
strides

#separable_conv2d_2/separable_conv2dConv2D6separable_conv2d_2/separable_conv2d/depthwise:output:0<separable_conv2d_2/separable_conv2d/ReadVariableOp_1:value:0*
T0*1
_output_shapes
:џџџџџџџџџрр*
paddingVALID*
strides

)separable_conv2d_2/BiasAdd/ReadVariableOpReadVariableOp2separable_conv2d_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Т
separable_conv2d_2/BiasAddBiasAdd,separable_conv2d_2/separable_conv2d:output:01separable_conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:џџџџџџџџџрр
separable_conv2d_2/ReluRelu#separable_conv2d_2/BiasAdd:output:0*
T0*1
_output_shapes
:џџџџџџџџџррЖ
max_pooling2d_6/MaxPoolMaxPool%separable_conv2d_2/Relu:activations:0*/
_output_shapes
:џџџџџџџџџpp*
ksize
*
paddingVALID*
strides
Ж
2separable_conv2d_3/separable_conv2d/ReadVariableOpReadVariableOp;separable_conv2d_3_separable_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0К
4separable_conv2d_3/separable_conv2d/ReadVariableOp_1ReadVariableOp=separable_conv2d_3_separable_conv2d_readvariableop_1_resource*&
_output_shapes
: *
dtype0
)separable_conv2d_3/separable_conv2d/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"            
1separable_conv2d_3/separable_conv2d/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      
-separable_conv2d_3/separable_conv2d/depthwiseDepthwiseConv2dNative max_pooling2d_6/MaxPool:output:0:separable_conv2d_3/separable_conv2d/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџpp*
paddingSAME*
strides

#separable_conv2d_3/separable_conv2dConv2D6separable_conv2d_3/separable_conv2d/depthwise:output:0<separable_conv2d_3/separable_conv2d/ReadVariableOp_1:value:0*
T0*/
_output_shapes
:џџџџџџџџџpp *
paddingVALID*
strides

)separable_conv2d_3/BiasAdd/ReadVariableOpReadVariableOp2separable_conv2d_3_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Р
separable_conv2d_3/BiasAddBiasAdd,separable_conv2d_3/separable_conv2d:output:01separable_conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџpp ~
separable_conv2d_3/ReluRelu#separable_conv2d_3/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџpp Ж
max_pooling2d_7/MaxPoolMaxPool%separable_conv2d_3/Relu:activations:0*/
_output_shapes
:џџџџџџџџџ88 *
ksize
*
paddingVALID*
strides

1global_average_pooling2d_2/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      З
global_average_pooling2d_2/MeanMean max_pooling2d_7/MaxPool:output:0:global_average_pooling2d_2/Mean/reduction_indices:output:0*
T0*'
_output_shapes
:џџџџџџџџџ 
dense_3/MatMul/ReadVariableOpReadVariableOp&dense_3_matmul_readvariableop_resource*
_output_shapes

: *
dtype0
dense_3/MatMulMatMul(global_average_pooling2d_2/Mean:output:0%dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџf
dense_3/SoftmaxSoftmaxdense_3/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџh
IdentityIdentitydense_3/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџЗ
NoOpNoOp^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp*^separable_conv2d_2/BiasAdd/ReadVariableOp3^separable_conv2d_2/separable_conv2d/ReadVariableOp5^separable_conv2d_2/separable_conv2d/ReadVariableOp_1*^separable_conv2d_3/BiasAdd/ReadVariableOp3^separable_conv2d_3/separable_conv2d/ReadVariableOp5^separable_conv2d_3/separable_conv2d/ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:џџџџџџџџџрр: : : : : : : : 2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2>
dense_3/MatMul/ReadVariableOpdense_3/MatMul/ReadVariableOp2V
)separable_conv2d_2/BiasAdd/ReadVariableOp)separable_conv2d_2/BiasAdd/ReadVariableOp2h
2separable_conv2d_2/separable_conv2d/ReadVariableOp2separable_conv2d_2/separable_conv2d/ReadVariableOp2l
4separable_conv2d_2/separable_conv2d/ReadVariableOp_14separable_conv2d_2/separable_conv2d/ReadVariableOp_12V
)separable_conv2d_3/BiasAdd/ReadVariableOp)separable_conv2d_3/BiasAdd/ReadVariableOp2h
2separable_conv2d_3/separable_conv2d/ReadVariableOp2separable_conv2d_3/separable_conv2d/ReadVariableOp2l
4separable_conv2d_3/separable_conv2d/ReadVariableOp_14separable_conv2d_3/separable_conv2d/ReadVariableOp_1:Y U
1
_output_shapes
:џџџџџџџџџрр
 
_user_specified_nameinputs
џ	
п
,__inference_sequential_2_layer_call_fn_29161

inputs!
unknown:#
	unknown_0:
	unknown_1:#
	unknown_2:#
	unknown_3: 
	unknown_4: 
	unknown_5: 
	unknown_6:
identityЂStatefulPartitionedCall­
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_sequential_2_layer_call_and_return_conditional_losses_28941o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:џџџџџџџџџрр: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:џџџџџџџџџрр
 
_user_specified_nameinputs

f
J__inference_max_pooling2d_7_layer_call_and_return_conditional_losses_28883

inputs
identityЂ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
џ	
п
,__inference_sequential_2_layer_call_fn_29182

inputs!
unknown:#
	unknown_0:
	unknown_1:#
	unknown_2:#
	unknown_3: 
	unknown_4: 
	unknown_5: 
	unknown_6:
identityЂStatefulPartitionedCall­
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_sequential_2_layer_call_and_return_conditional_losses_29019o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:џџџџџџџџџрр: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:џџџџџџџџџрр
 
_user_specified_nameinputs

f
J__inference_max_pooling2d_6_layer_call_and_return_conditional_losses_28842

inputs
identityЂ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs


ѓ
B__inference_dense_3_layer_call_and_return_conditional_losses_29365

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџV
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ 
 
_user_specified_nameinputs
Ћ

M__inference_separable_conv2d_3_layer_call_and_return_conditional_losses_28865

inputsB
(separable_conv2d_readvariableop_resource:D
*separable_conv2d_readvariableop_1_resource: -
biasadd_readvariableop_resource: 
identityЂBiasAdd/ReadVariableOpЂseparable_conv2d/ReadVariableOpЂ!separable_conv2d/ReadVariableOp_1
separable_conv2d/ReadVariableOpReadVariableOp(separable_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0
!separable_conv2d/ReadVariableOp_1ReadVariableOp*separable_conv2d_readvariableop_1_resource*&
_output_shapes
: *
dtype0o
separable_conv2d/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"            o
separable_conv2d/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      и
separable_conv2d/depthwiseDepthwiseConv2dNativeinputs'separable_conv2d/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides
п
separable_conv2dConv2D#separable_conv2d/depthwise:output:0)separable_conv2d/ReadVariableOp_1:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0
BiasAddBiasAddseparable_conv2d:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ j
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ {
IdentityIdentityRelu:activations:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ Ѕ
NoOpNoOp^BiasAdd/ReadVariableOp ^separable_conv2d/ReadVariableOp"^separable_conv2d/ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
separable_conv2d/ReadVariableOpseparable_conv2d/ReadVariableOp2F
!separable_conv2d/ReadVariableOp_1!separable_conv2d/ReadVariableOp_1:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs

f
J__inference_max_pooling2d_6_layer_call_and_return_conditional_losses_29297

inputs
identityЂ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
Ж
q
U__inference_global_average_pooling2d_2_layer_call_and_return_conditional_losses_29345

inputs
identityg
Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      p
MeanMeaninputsMean/reduction_indices:output:0*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ^
IdentityIdentityMean:output:0*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs

V
:__inference_global_average_pooling2d_2_layer_call_fn_29339

inputs
identityЬ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *^
fYRW
U__inference_global_average_pooling2d_2_layer_call_and_return_conditional_losses_28896i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs"Е	L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*ж
serving_defaultТ
g
separable_conv2d_2_inputK
*serving_default_separable_conv2d_2_input:0џџџџџџџџџрр;
dense_30
StatefulPartitionedCall:0џџџџџџџџџtensorflow/serving/predict:ЉА

layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer-4
layer_with_weights-2
layer-5
	variables
trainable_variables
	regularization_losses

	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures"
_tf_keras_sequential
§
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
depthwise_kernel
pointwise_kernel
bias
 _jit_compiled_convolution_op"
_tf_keras_layer
Ѕ
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_layer
§
 	variables
!trainable_variables
"regularization_losses
#	keras_api
$__call__
*%&call_and_return_all_conditional_losses
&depthwise_kernel
'pointwise_kernel
(bias
 )_jit_compiled_convolution_op"
_tf_keras_layer
Ѕ
*	variables
+trainable_variables
,regularization_losses
-	keras_api
.__call__
*/&call_and_return_all_conditional_losses"
_tf_keras_layer
Ѕ
0	variables
1trainable_variables
2regularization_losses
3	keras_api
4__call__
*5&call_and_return_all_conditional_losses"
_tf_keras_layer
Л
6	variables
7trainable_variables
8regularization_losses
9	keras_api
:__call__
*;&call_and_return_all_conditional_losses

<kernel
=bias"
_tf_keras_layer
X
0
1
2
&3
'4
(5
<6
=7"
trackable_list_wrapper
X
0
1
2
&3
'4
(5
<6
=7"
trackable_list_wrapper
 "
trackable_list_wrapper
Ъ
>non_trainable_variables

?layers
@metrics
Alayer_regularization_losses
Blayer_metrics
	variables
trainable_variables
	regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
х
Ctrace_0
Dtrace_1
Etrace_2
Ftrace_32њ
,__inference_sequential_2_layer_call_fn_28960
,__inference_sequential_2_layer_call_fn_29161
,__inference_sequential_2_layer_call_fn_29182
,__inference_sequential_2_layer_call_fn_29059П
ЖВВ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zCtrace_0zDtrace_1zEtrace_2zFtrace_3
б
Gtrace_0
Htrace_1
Itrace_2
Jtrace_32ц
G__inference_sequential_2_layer_call_and_return_conditional_losses_29221
G__inference_sequential_2_layer_call_and_return_conditional_losses_29260
G__inference_sequential_2_layer_call_and_return_conditional_losses_29085
G__inference_sequential_2_layer_call_and_return_conditional_losses_29111П
ЖВВ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zGtrace_0zHtrace_1zItrace_2zJtrace_3
мBй
 __inference__wrapped_model_28804separable_conv2d_2_input"
В
FullArgSpec
args 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ѓ

Kbeta_1

Lbeta_2
	Mdecay
Nlearning_rate
Oitermmm&m'm(m<m=mvvv&v'v(v<v=v"
	optimizer
,
Pserving_default"
signature_map
5
0
1
2"
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
 "
trackable_list_wrapper
­
Qnon_trainable_variables

Rlayers
Smetrics
Tlayer_regularization_losses
Ulayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
і
Vtrace_02й
2__inference_separable_conv2d_2_layer_call_fn_29271Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zVtrace_0

Wtrace_02є
M__inference_separable_conv2d_2_layer_call_and_return_conditional_losses_29287Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zWtrace_0
=:;2#separable_conv2d_2/depthwise_kernel
=:;2#separable_conv2d_2/pointwise_kernel
%:#2separable_conv2d_2/bias
Д2БЎ
ЃВ
FullArgSpec'
args
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
­
Xnon_trainable_variables

Ylayers
Zmetrics
[layer_regularization_losses
\layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
ѓ
]trace_02ж
/__inference_max_pooling2d_6_layer_call_fn_29292Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 z]trace_0

^trace_02ё
J__inference_max_pooling2d_6_layer_call_and_return_conditional_losses_29297Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 z^trace_0
5
&0
'1
(2"
trackable_list_wrapper
5
&0
'1
(2"
trackable_list_wrapper
 "
trackable_list_wrapper
­
_non_trainable_variables

`layers
ametrics
blayer_regularization_losses
clayer_metrics
 	variables
!trainable_variables
"regularization_losses
$__call__
*%&call_and_return_all_conditional_losses
&%"call_and_return_conditional_losses"
_generic_user_object
і
dtrace_02й
2__inference_separable_conv2d_3_layer_call_fn_29308Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zdtrace_0

etrace_02є
M__inference_separable_conv2d_3_layer_call_and_return_conditional_losses_29324Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zetrace_0
=:;2#separable_conv2d_3/depthwise_kernel
=:; 2#separable_conv2d_3/pointwise_kernel
%:# 2separable_conv2d_3/bias
Д2БЎ
ЃВ
FullArgSpec'
args
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
­
fnon_trainable_variables

glayers
hmetrics
ilayer_regularization_losses
jlayer_metrics
*	variables
+trainable_variables
,regularization_losses
.__call__
*/&call_and_return_all_conditional_losses
&/"call_and_return_conditional_losses"
_generic_user_object
ѓ
ktrace_02ж
/__inference_max_pooling2d_7_layer_call_fn_29329Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zktrace_0

ltrace_02ё
J__inference_max_pooling2d_7_layer_call_and_return_conditional_losses_29334Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zltrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
­
mnon_trainable_variables

nlayers
ometrics
player_regularization_losses
qlayer_metrics
0	variables
1trainable_variables
2regularization_losses
4__call__
*5&call_and_return_all_conditional_losses
&5"call_and_return_conditional_losses"
_generic_user_object
ў
rtrace_02с
:__inference_global_average_pooling2d_2_layer_call_fn_29339Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zrtrace_0

strace_02ќ
U__inference_global_average_pooling2d_2_layer_call_and_return_conditional_losses_29345Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zstrace_0
.
<0
=1"
trackable_list_wrapper
.
<0
=1"
trackable_list_wrapper
 "
trackable_list_wrapper
­
tnon_trainable_variables

ulayers
vmetrics
wlayer_regularization_losses
xlayer_metrics
6	variables
7trainable_variables
8regularization_losses
:__call__
*;&call_and_return_all_conditional_losses
&;"call_and_return_conditional_losses"
_generic_user_object
ы
ytrace_02Ю
'__inference_dense_3_layer_call_fn_29354Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zytrace_0

ztrace_02щ
B__inference_dense_3_layer_call_and_return_conditional_losses_29365Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zztrace_0
 : 2dense_3/kernel
:2dense_3/bias
 "
trackable_list_wrapper
J
0
1
2
3
4
5"
trackable_list_wrapper
.
{0
|1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
B
,__inference_sequential_2_layer_call_fn_28960separable_conv2d_2_input"П
ЖВВ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
§Bњ
,__inference_sequential_2_layer_call_fn_29161inputs"П
ЖВВ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
§Bњ
,__inference_sequential_2_layer_call_fn_29182inputs"П
ЖВВ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
,__inference_sequential_2_layer_call_fn_29059separable_conv2d_2_input"П
ЖВВ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
G__inference_sequential_2_layer_call_and_return_conditional_losses_29221inputs"П
ЖВВ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
G__inference_sequential_2_layer_call_and_return_conditional_losses_29260inputs"П
ЖВВ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ЊBЇ
G__inference_sequential_2_layer_call_and_return_conditional_losses_29085separable_conv2d_2_input"П
ЖВВ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ЊBЇ
G__inference_sequential_2_layer_call_and_return_conditional_losses_29111separable_conv2d_2_input"П
ЖВВ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
: (2beta_1
: (2beta_2
: (2decay
: (2learning_rate
:	 (2Adamax/iter
лBи
#__inference_signature_wrapper_29140separable_conv2d_2_input"
В
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
цBу
2__inference_separable_conv2d_2_layer_call_fn_29271inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
Bў
M__inference_separable_conv2d_2_layer_call_and_return_conditional_losses_29287inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
уBр
/__inference_max_pooling2d_6_layer_call_fn_29292inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ўBћ
J__inference_max_pooling2d_6_layer_call_and_return_conditional_losses_29297inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
цBу
2__inference_separable_conv2d_3_layer_call_fn_29308inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
Bў
M__inference_separable_conv2d_3_layer_call_and_return_conditional_losses_29324inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
уBр
/__inference_max_pooling2d_7_layer_call_fn_29329inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ўBћ
J__inference_max_pooling2d_7_layer_call_and_return_conditional_losses_29334inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
юBы
:__inference_global_average_pooling2d_2_layer_call_fn_29339inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
U__inference_global_average_pooling2d_2_layer_call_and_return_conditional_losses_29345inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
лBи
'__inference_dense_3_layer_call_fn_29354inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
іBѓ
B__inference_dense_3_layer_call_and_return_conditional_losses_29365inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
O
}	variables
~	keras_api
	total

count"
_tf_keras_metric
c
	variables
	keras_api

total

count

_fn_kwargs"
_tf_keras_metric
/
0
1"
trackable_list_wrapper
-
}	variables"
_generic_user_object
:  (2total
:  (2count
0
0
1"
trackable_list_wrapper
.
	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
D:B2,Adamax/separable_conv2d_2/depthwise_kernel/m
D:B2,Adamax/separable_conv2d_2/pointwise_kernel/m
,:*2 Adamax/separable_conv2d_2/bias/m
D:B2,Adamax/separable_conv2d_3/depthwise_kernel/m
D:B 2,Adamax/separable_conv2d_3/pointwise_kernel/m
,:* 2 Adamax/separable_conv2d_3/bias/m
':% 2Adamax/dense_3/kernel/m
!:2Adamax/dense_3/bias/m
D:B2,Adamax/separable_conv2d_2/depthwise_kernel/v
D:B2,Adamax/separable_conv2d_2/pointwise_kernel/v
,:*2 Adamax/separable_conv2d_2/bias/v
D:B2,Adamax/separable_conv2d_3/depthwise_kernel/v
D:B 2,Adamax/separable_conv2d_3/pointwise_kernel/v
,:* 2 Adamax/separable_conv2d_3/bias/v
':% 2Adamax/dense_3/kernel/v
!:2Adamax/dense_3/bias/vЏ
 __inference__wrapped_model_28804&'(<=KЂH
AЂ>
<9
separable_conv2d_2_inputџџџџџџџџџрр
Њ "1Њ.
,
dense_3!
dense_3џџџџџџџџџЂ
B__inference_dense_3_layer_call_and_return_conditional_losses_29365\<=/Ђ,
%Ђ"
 
inputsџџџџџџџџџ 
Њ "%Ђ"

0џџџџџџџџџ
 z
'__inference_dense_3_layer_call_fn_29354O<=/Ђ,
%Ђ"
 
inputsџџџџџџџџџ 
Њ "џџџџџџџџџо
U__inference_global_average_pooling2d_2_layer_call_and_return_conditional_losses_29345RЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ ".Ђ+
$!
0џџџџџџџџџџџџџџџџџџ
 Е
:__inference_global_average_pooling2d_2_layer_call_fn_29339wRЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "!џџџџџџџџџџџџџџџџџџэ
J__inference_max_pooling2d_6_layer_call_and_return_conditional_losses_29297RЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "HЂE
>;
04џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 Х
/__inference_max_pooling2d_6_layer_call_fn_29292RЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ ";84џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџэ
J__inference_max_pooling2d_7_layer_call_and_return_conditional_losses_29334RЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "HЂE
>;
04џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 Х
/__inference_max_pooling2d_7_layer_call_fn_29329RЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ ";84џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџу
M__inference_separable_conv2d_2_layer_call_and_return_conditional_losses_29287IЂF
?Ђ<
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "?Ђ<
52
0+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 Л
2__inference_separable_conv2d_2_layer_call_fn_29271IЂF
?Ђ<
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "2/+џџџџџџџџџџџџџџџџџџџџџџџџџџџу
M__inference_separable_conv2d_3_layer_call_and_return_conditional_losses_29324&'(IЂF
?Ђ<
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "?Ђ<
52
0+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 Л
2__inference_separable_conv2d_3_layer_call_fn_29308&'(IЂF
?Ђ<
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "2/+џџџџџџџџџџџџџџџџџџџџџџџџџџџ в
G__inference_sequential_2_layer_call_and_return_conditional_losses_29085&'(<=SЂP
IЂF
<9
separable_conv2d_2_inputџџџџџџџџџрр
p 

 
Њ "%Ђ"

0џџџџџџџџџ
 в
G__inference_sequential_2_layer_call_and_return_conditional_losses_29111&'(<=SЂP
IЂF
<9
separable_conv2d_2_inputџџџџџџџџџрр
p

 
Њ "%Ђ"

0џџџџџџџџџ
 П
G__inference_sequential_2_layer_call_and_return_conditional_losses_29221t&'(<=AЂ>
7Ђ4
*'
inputsџџџџџџџџџрр
p 

 
Њ "%Ђ"

0џџџџџџџџџ
 П
G__inference_sequential_2_layer_call_and_return_conditional_losses_29260t&'(<=AЂ>
7Ђ4
*'
inputsџџџџџџџџџрр
p

 
Њ "%Ђ"

0џџџџџџџџџ
 Љ
,__inference_sequential_2_layer_call_fn_28960y&'(<=SЂP
IЂF
<9
separable_conv2d_2_inputџџџџџџџџџрр
p 

 
Њ "џџџџџџџџџЉ
,__inference_sequential_2_layer_call_fn_29059y&'(<=SЂP
IЂF
<9
separable_conv2d_2_inputџџџџџџџџџрр
p

 
Њ "џџџџџџџџџ
,__inference_sequential_2_layer_call_fn_29161g&'(<=AЂ>
7Ђ4
*'
inputsџџџџџџџџџрр
p 

 
Њ "џџџџџџџџџ
,__inference_sequential_2_layer_call_fn_29182g&'(<=AЂ>
7Ђ4
*'
inputsџџџџџџџџџрр
p

 
Њ "џџџџџџџџџЮ
#__inference_signature_wrapper_29140І&'(<=gЂd
Ђ 
]ЊZ
X
separable_conv2d_2_input<9
separable_conv2d_2_inputџџџџџџџџџрр"1Њ.
,
dense_3!
dense_3џџџџџџџџџ