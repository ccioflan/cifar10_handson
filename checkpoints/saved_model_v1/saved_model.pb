��/
��
D
AddV2
x"T
y"T
z"T"
Ttype:
2	��
B
AssignVariableOp
resource
value"dtype"
dtypetype�
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
�
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
�
FusedBatchNormV3
x"T

scale"U
offset"U	
mean"U
variance"U
y"T

batch_mean"U
batch_variance"U
reserve_space_1"U
reserve_space_2"U
reserve_space_3"U"
Ttype:
2"
Utype:
2"
epsilonfloat%��8"&
exponential_avg_factorfloat%  �?";
data_formatstringNHWC:
NHWCNCHWNDHWCNCDHW"
is_trainingbool(
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
�
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
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(�
?
Mul
x"T
y"T
z"T"
Ttype:
2	�
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
dtypetype�
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
.
Rsqrt
x"T
y"T"
Ttype:

2
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
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
�
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
executor_typestring ��
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
<
Sub
x"T
y"T
z"T"
Ttype:
2	
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �"serve*2.7.02v2.7.0-rc1-69-gc256c071bb28��)
z
dense_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
�A�*
shared_namedense_4/kernel
s
"dense_4/kernel/Read/ReadVariableOpReadVariableOpdense_4/kernel* 
_output_shapes
:
�A�*
dtype0
q
dense_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_namedense_4/bias
j
 dense_4/bias/Read/ReadVariableOpReadVariableOpdense_4/bias*
_output_shapes	
:�*
dtype0
�
batch_normalization_25/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*-
shared_namebatch_normalization_25/gamma
�
0batch_normalization_25/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_25/gamma*
_output_shapes	
:�*
dtype0
�
batch_normalization_25/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*,
shared_namebatch_normalization_25/beta
�
/batch_normalization_25/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_25/beta*
_output_shapes	
:�*
dtype0
�
"batch_normalization_25/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*3
shared_name$"batch_normalization_25/moving_mean
�
6batch_normalization_25/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_25/moving_mean*
_output_shapes	
:�*
dtype0
�
&batch_normalization_25/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*7
shared_name(&batch_normalization_25/moving_variance
�
:batch_normalization_25/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_25/moving_variance*
_output_shapes	
:�*
dtype0
y
dense_5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�
*
shared_namedense_5/kernel
r
"dense_5/kernel/Read/ReadVariableOpReadVariableOpdense_5/kernel*
_output_shapes
:	�
*
dtype0
p
dense_5/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*
shared_namedense_5/bias
i
 dense_5/bias/Read/ReadVariableOpReadVariableOpdense_5/bias*
_output_shapes
:
*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
�
conv2d_12/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv2d_12/kernel
}
$conv2d_12/kernel/Read/ReadVariableOpReadVariableOpconv2d_12/kernel*&
_output_shapes
:*
dtype0
t
conv2d_12/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_12/bias
m
"conv2d_12/bias/Read/ReadVariableOpReadVariableOpconv2d_12/bias*
_output_shapes
:*
dtype0
�
batch_normalization_19/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_namebatch_normalization_19/gamma
�
0batch_normalization_19/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_19/gamma*
_output_shapes
:*
dtype0
�
batch_normalization_19/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namebatch_normalization_19/beta
�
/batch_normalization_19/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_19/beta*
_output_shapes
:*
dtype0
�
"batch_normalization_19/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"batch_normalization_19/moving_mean
�
6batch_normalization_19/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_19/moving_mean*
_output_shapes
:*
dtype0
�
&batch_normalization_19/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*7
shared_name(&batch_normalization_19/moving_variance
�
:batch_normalization_19/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_19/moving_variance*
_output_shapes
:*
dtype0
�
conv2d_13/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:!*!
shared_nameconv2d_13/kernel
}
$conv2d_13/kernel/Read/ReadVariableOpReadVariableOpconv2d_13/kernel*&
_output_shapes
:!*
dtype0
t
conv2d_13/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:!*
shared_nameconv2d_13/bias
m
"conv2d_13/bias/Read/ReadVariableOpReadVariableOpconv2d_13/bias*
_output_shapes
:!*
dtype0
�
batch_normalization_20/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:!*-
shared_namebatch_normalization_20/gamma
�
0batch_normalization_20/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_20/gamma*
_output_shapes
:!*
dtype0
�
batch_normalization_20/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:!*,
shared_namebatch_normalization_20/beta
�
/batch_normalization_20/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_20/beta*
_output_shapes
:!*
dtype0
�
"batch_normalization_20/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:!*3
shared_name$"batch_normalization_20/moving_mean
�
6batch_normalization_20/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_20/moving_mean*
_output_shapes
:!*
dtype0
�
&batch_normalization_20/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:!*7
shared_name(&batch_normalization_20/moving_variance
�
:batch_normalization_20/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_20/moving_variance*
_output_shapes
:!*
dtype0
�
conv2d_14/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:!7*!
shared_nameconv2d_14/kernel
}
$conv2d_14/kernel/Read/ReadVariableOpReadVariableOpconv2d_14/kernel*&
_output_shapes
:!7*
dtype0
t
conv2d_14/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:7*
shared_nameconv2d_14/bias
m
"conv2d_14/bias/Read/ReadVariableOpReadVariableOpconv2d_14/bias*
_output_shapes
:7*
dtype0
�
batch_normalization_21/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:7*-
shared_namebatch_normalization_21/gamma
�
0batch_normalization_21/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_21/gamma*
_output_shapes
:7*
dtype0
�
batch_normalization_21/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:7*,
shared_namebatch_normalization_21/beta
�
/batch_normalization_21/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_21/beta*
_output_shapes
:7*
dtype0
�
"batch_normalization_21/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:7*3
shared_name$"batch_normalization_21/moving_mean
�
6batch_normalization_21/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_21/moving_mean*
_output_shapes
:7*
dtype0
�
&batch_normalization_21/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:7*7
shared_name(&batch_normalization_21/moving_variance
�
:batch_normalization_21/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_21/moving_variance*
_output_shapes
:7*
dtype0
�
conv2d_15/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:7<*!
shared_nameconv2d_15/kernel
}
$conv2d_15/kernel/Read/ReadVariableOpReadVariableOpconv2d_15/kernel*&
_output_shapes
:7<*
dtype0
t
conv2d_15/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:<*
shared_nameconv2d_15/bias
m
"conv2d_15/bias/Read/ReadVariableOpReadVariableOpconv2d_15/bias*
_output_shapes
:<*
dtype0
�
batch_normalization_22/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:<*-
shared_namebatch_normalization_22/gamma
�
0batch_normalization_22/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_22/gamma*
_output_shapes
:<*
dtype0
�
batch_normalization_22/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:<*,
shared_namebatch_normalization_22/beta
�
/batch_normalization_22/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_22/beta*
_output_shapes
:<*
dtype0
�
"batch_normalization_22/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:<*3
shared_name$"batch_normalization_22/moving_mean
�
6batch_normalization_22/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_22/moving_mean*
_output_shapes
:<*
dtype0
�
&batch_normalization_22/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:<*7
shared_name(&batch_normalization_22/moving_variance
�
:batch_normalization_22/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_22/moving_variance*
_output_shapes
:<*
dtype0
�
conv2d_16/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:<x*!
shared_nameconv2d_16/kernel
}
$conv2d_16/kernel/Read/ReadVariableOpReadVariableOpconv2d_16/kernel*&
_output_shapes
:<x*
dtype0
t
conv2d_16/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:x*
shared_nameconv2d_16/bias
m
"conv2d_16/bias/Read/ReadVariableOpReadVariableOpconv2d_16/bias*
_output_shapes
:x*
dtype0
�
batch_normalization_23/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:x*-
shared_namebatch_normalization_23/gamma
�
0batch_normalization_23/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_23/gamma*
_output_shapes
:x*
dtype0
�
batch_normalization_23/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:x*,
shared_namebatch_normalization_23/beta
�
/batch_normalization_23/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_23/beta*
_output_shapes
:x*
dtype0
�
"batch_normalization_23/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:x*3
shared_name$"batch_normalization_23/moving_mean
�
6batch_normalization_23/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_23/moving_mean*
_output_shapes
:x*
dtype0
�
&batch_normalization_23/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:x*7
shared_name(&batch_normalization_23/moving_variance
�
:batch_normalization_23/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_23/moving_variance*
_output_shapes
:x*
dtype0
�
conv2d_17/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:x�*!
shared_nameconv2d_17/kernel
~
$conv2d_17/kernel/Read/ReadVariableOpReadVariableOpconv2d_17/kernel*'
_output_shapes
:x�*
dtype0
u
conv2d_17/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_nameconv2d_17/bias
n
"conv2d_17/bias/Read/ReadVariableOpReadVariableOpconv2d_17/bias*
_output_shapes	
:�*
dtype0
�
batch_normalization_24/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*-
shared_namebatch_normalization_24/gamma
�
0batch_normalization_24/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_24/gamma*
_output_shapes	
:�*
dtype0
�
batch_normalization_24/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*,
shared_namebatch_normalization_24/beta
�
/batch_normalization_24/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_24/beta*
_output_shapes	
:�*
dtype0
�
"batch_normalization_24/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*3
shared_name$"batch_normalization_24/moving_mean
�
6batch_normalization_24/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_24/moving_mean*
_output_shapes	
:�*
dtype0
�
&batch_normalization_24/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*7
shared_name(&batch_normalization_24/moving_variance
�
:batch_normalization_24/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_24/moving_variance*
_output_shapes	
:�*
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
�
Adam/dense_4/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
�A�*&
shared_nameAdam/dense_4/kernel/m
�
)Adam/dense_4/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_4/kernel/m* 
_output_shapes
:
�A�*
dtype0

Adam/dense_4/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*$
shared_nameAdam/dense_4/bias/m
x
'Adam/dense_4/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_4/bias/m*
_output_shapes	
:�*
dtype0
�
#Adam/batch_normalization_25/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*4
shared_name%#Adam/batch_normalization_25/gamma/m
�
7Adam/batch_normalization_25/gamma/m/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_25/gamma/m*
_output_shapes	
:�*
dtype0
�
"Adam/batch_normalization_25/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*3
shared_name$"Adam/batch_normalization_25/beta/m
�
6Adam/batch_normalization_25/beta/m/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_25/beta/m*
_output_shapes	
:�*
dtype0
�
Adam/dense_5/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�
*&
shared_nameAdam/dense_5/kernel/m
�
)Adam/dense_5/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_5/kernel/m*
_output_shapes
:	�
*
dtype0
~
Adam/dense_5/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*$
shared_nameAdam/dense_5/bias/m
w
'Adam/dense_5/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_5/bias/m*
_output_shapes
:
*
dtype0
�
Adam/conv2d_12/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv2d_12/kernel/m
�
+Adam/conv2d_12/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_12/kernel/m*&
_output_shapes
:*
dtype0
�
Adam/conv2d_12/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv2d_12/bias/m
{
)Adam/conv2d_12/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_12/bias/m*
_output_shapes
:*
dtype0
�
#Adam/batch_normalization_19/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#Adam/batch_normalization_19/gamma/m
�
7Adam/batch_normalization_19/gamma/m/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_19/gamma/m*
_output_shapes
:*
dtype0
�
"Adam/batch_normalization_19/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adam/batch_normalization_19/beta/m
�
6Adam/batch_normalization_19/beta/m/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_19/beta/m*
_output_shapes
:*
dtype0
�
Adam/conv2d_13/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:!*(
shared_nameAdam/conv2d_13/kernel/m
�
+Adam/conv2d_13/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_13/kernel/m*&
_output_shapes
:!*
dtype0
�
Adam/conv2d_13/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:!*&
shared_nameAdam/conv2d_13/bias/m
{
)Adam/conv2d_13/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_13/bias/m*
_output_shapes
:!*
dtype0
�
#Adam/batch_normalization_20/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:!*4
shared_name%#Adam/batch_normalization_20/gamma/m
�
7Adam/batch_normalization_20/gamma/m/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_20/gamma/m*
_output_shapes
:!*
dtype0
�
"Adam/batch_normalization_20/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:!*3
shared_name$"Adam/batch_normalization_20/beta/m
�
6Adam/batch_normalization_20/beta/m/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_20/beta/m*
_output_shapes
:!*
dtype0
�
Adam/conv2d_14/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:!7*(
shared_nameAdam/conv2d_14/kernel/m
�
+Adam/conv2d_14/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_14/kernel/m*&
_output_shapes
:!7*
dtype0
�
Adam/conv2d_14/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:7*&
shared_nameAdam/conv2d_14/bias/m
{
)Adam/conv2d_14/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_14/bias/m*
_output_shapes
:7*
dtype0
�
#Adam/batch_normalization_21/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:7*4
shared_name%#Adam/batch_normalization_21/gamma/m
�
7Adam/batch_normalization_21/gamma/m/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_21/gamma/m*
_output_shapes
:7*
dtype0
�
"Adam/batch_normalization_21/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:7*3
shared_name$"Adam/batch_normalization_21/beta/m
�
6Adam/batch_normalization_21/beta/m/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_21/beta/m*
_output_shapes
:7*
dtype0
�
Adam/conv2d_15/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:7<*(
shared_nameAdam/conv2d_15/kernel/m
�
+Adam/conv2d_15/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_15/kernel/m*&
_output_shapes
:7<*
dtype0
�
Adam/conv2d_15/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:<*&
shared_nameAdam/conv2d_15/bias/m
{
)Adam/conv2d_15/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_15/bias/m*
_output_shapes
:<*
dtype0
�
#Adam/batch_normalization_22/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:<*4
shared_name%#Adam/batch_normalization_22/gamma/m
�
7Adam/batch_normalization_22/gamma/m/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_22/gamma/m*
_output_shapes
:<*
dtype0
�
"Adam/batch_normalization_22/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:<*3
shared_name$"Adam/batch_normalization_22/beta/m
�
6Adam/batch_normalization_22/beta/m/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_22/beta/m*
_output_shapes
:<*
dtype0
�
Adam/conv2d_16/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:<x*(
shared_nameAdam/conv2d_16/kernel/m
�
+Adam/conv2d_16/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_16/kernel/m*&
_output_shapes
:<x*
dtype0
�
Adam/conv2d_16/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:x*&
shared_nameAdam/conv2d_16/bias/m
{
)Adam/conv2d_16/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_16/bias/m*
_output_shapes
:x*
dtype0
�
#Adam/batch_normalization_23/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:x*4
shared_name%#Adam/batch_normalization_23/gamma/m
�
7Adam/batch_normalization_23/gamma/m/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_23/gamma/m*
_output_shapes
:x*
dtype0
�
"Adam/batch_normalization_23/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:x*3
shared_name$"Adam/batch_normalization_23/beta/m
�
6Adam/batch_normalization_23/beta/m/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_23/beta/m*
_output_shapes
:x*
dtype0
�
Adam/conv2d_17/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:x�*(
shared_nameAdam/conv2d_17/kernel/m
�
+Adam/conv2d_17/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_17/kernel/m*'
_output_shapes
:x�*
dtype0
�
Adam/conv2d_17/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*&
shared_nameAdam/conv2d_17/bias/m
|
)Adam/conv2d_17/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_17/bias/m*
_output_shapes	
:�*
dtype0
�
#Adam/batch_normalization_24/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*4
shared_name%#Adam/batch_normalization_24/gamma/m
�
7Adam/batch_normalization_24/gamma/m/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_24/gamma/m*
_output_shapes	
:�*
dtype0
�
"Adam/batch_normalization_24/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*3
shared_name$"Adam/batch_normalization_24/beta/m
�
6Adam/batch_normalization_24/beta/m/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_24/beta/m*
_output_shapes	
:�*
dtype0
�
Adam/dense_4/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
�A�*&
shared_nameAdam/dense_4/kernel/v
�
)Adam/dense_4/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_4/kernel/v* 
_output_shapes
:
�A�*
dtype0

Adam/dense_4/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*$
shared_nameAdam/dense_4/bias/v
x
'Adam/dense_4/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_4/bias/v*
_output_shapes	
:�*
dtype0
�
#Adam/batch_normalization_25/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*4
shared_name%#Adam/batch_normalization_25/gamma/v
�
7Adam/batch_normalization_25/gamma/v/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_25/gamma/v*
_output_shapes	
:�*
dtype0
�
"Adam/batch_normalization_25/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*3
shared_name$"Adam/batch_normalization_25/beta/v
�
6Adam/batch_normalization_25/beta/v/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_25/beta/v*
_output_shapes	
:�*
dtype0
�
Adam/dense_5/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�
*&
shared_nameAdam/dense_5/kernel/v
�
)Adam/dense_5/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_5/kernel/v*
_output_shapes
:	�
*
dtype0
~
Adam/dense_5/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*$
shared_nameAdam/dense_5/bias/v
w
'Adam/dense_5/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_5/bias/v*
_output_shapes
:
*
dtype0
�
Adam/conv2d_12/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv2d_12/kernel/v
�
+Adam/conv2d_12/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_12/kernel/v*&
_output_shapes
:*
dtype0
�
Adam/conv2d_12/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv2d_12/bias/v
{
)Adam/conv2d_12/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_12/bias/v*
_output_shapes
:*
dtype0
�
#Adam/batch_normalization_19/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#Adam/batch_normalization_19/gamma/v
�
7Adam/batch_normalization_19/gamma/v/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_19/gamma/v*
_output_shapes
:*
dtype0
�
"Adam/batch_normalization_19/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adam/batch_normalization_19/beta/v
�
6Adam/batch_normalization_19/beta/v/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_19/beta/v*
_output_shapes
:*
dtype0
�
Adam/conv2d_13/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:!*(
shared_nameAdam/conv2d_13/kernel/v
�
+Adam/conv2d_13/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_13/kernel/v*&
_output_shapes
:!*
dtype0
�
Adam/conv2d_13/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:!*&
shared_nameAdam/conv2d_13/bias/v
{
)Adam/conv2d_13/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_13/bias/v*
_output_shapes
:!*
dtype0
�
#Adam/batch_normalization_20/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:!*4
shared_name%#Adam/batch_normalization_20/gamma/v
�
7Adam/batch_normalization_20/gamma/v/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_20/gamma/v*
_output_shapes
:!*
dtype0
�
"Adam/batch_normalization_20/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:!*3
shared_name$"Adam/batch_normalization_20/beta/v
�
6Adam/batch_normalization_20/beta/v/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_20/beta/v*
_output_shapes
:!*
dtype0
�
Adam/conv2d_14/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:!7*(
shared_nameAdam/conv2d_14/kernel/v
�
+Adam/conv2d_14/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_14/kernel/v*&
_output_shapes
:!7*
dtype0
�
Adam/conv2d_14/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:7*&
shared_nameAdam/conv2d_14/bias/v
{
)Adam/conv2d_14/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_14/bias/v*
_output_shapes
:7*
dtype0
�
#Adam/batch_normalization_21/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:7*4
shared_name%#Adam/batch_normalization_21/gamma/v
�
7Adam/batch_normalization_21/gamma/v/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_21/gamma/v*
_output_shapes
:7*
dtype0
�
"Adam/batch_normalization_21/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:7*3
shared_name$"Adam/batch_normalization_21/beta/v
�
6Adam/batch_normalization_21/beta/v/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_21/beta/v*
_output_shapes
:7*
dtype0
�
Adam/conv2d_15/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:7<*(
shared_nameAdam/conv2d_15/kernel/v
�
+Adam/conv2d_15/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_15/kernel/v*&
_output_shapes
:7<*
dtype0
�
Adam/conv2d_15/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:<*&
shared_nameAdam/conv2d_15/bias/v
{
)Adam/conv2d_15/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_15/bias/v*
_output_shapes
:<*
dtype0
�
#Adam/batch_normalization_22/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:<*4
shared_name%#Adam/batch_normalization_22/gamma/v
�
7Adam/batch_normalization_22/gamma/v/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_22/gamma/v*
_output_shapes
:<*
dtype0
�
"Adam/batch_normalization_22/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:<*3
shared_name$"Adam/batch_normalization_22/beta/v
�
6Adam/batch_normalization_22/beta/v/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_22/beta/v*
_output_shapes
:<*
dtype0
�
Adam/conv2d_16/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:<x*(
shared_nameAdam/conv2d_16/kernel/v
�
+Adam/conv2d_16/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_16/kernel/v*&
_output_shapes
:<x*
dtype0
�
Adam/conv2d_16/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:x*&
shared_nameAdam/conv2d_16/bias/v
{
)Adam/conv2d_16/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_16/bias/v*
_output_shapes
:x*
dtype0
�
#Adam/batch_normalization_23/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:x*4
shared_name%#Adam/batch_normalization_23/gamma/v
�
7Adam/batch_normalization_23/gamma/v/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_23/gamma/v*
_output_shapes
:x*
dtype0
�
"Adam/batch_normalization_23/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:x*3
shared_name$"Adam/batch_normalization_23/beta/v
�
6Adam/batch_normalization_23/beta/v/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_23/beta/v*
_output_shapes
:x*
dtype0
�
Adam/conv2d_17/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:x�*(
shared_nameAdam/conv2d_17/kernel/v
�
+Adam/conv2d_17/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_17/kernel/v*'
_output_shapes
:x�*
dtype0
�
Adam/conv2d_17/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*&
shared_nameAdam/conv2d_17/bias/v
|
)Adam/conv2d_17/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_17/bias/v*
_output_shapes	
:�*
dtype0
�
#Adam/batch_normalization_24/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*4
shared_name%#Adam/batch_normalization_24/gamma/v
�
7Adam/batch_normalization_24/gamma/v/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_24/gamma/v*
_output_shapes	
:�*
dtype0
�
"Adam/batch_normalization_24/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*3
shared_name$"Adam/batch_normalization_24/beta/v
�
6Adam/batch_normalization_24/beta/v/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_24/beta/v*
_output_shapes	
:�*
dtype0

NoOpNoOp
��
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*��
value��B�� B��
�
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer-2
layer_with_weights-2
layer-3
layer_with_weights-3
layer-4
layer-5
layer_with_weights-4
layer-6
layer_with_weights-5
layer-7
	layer-8

layer-9
layer-10
layer_with_weights-6
layer-11
layer_with_weights-7
layer-12
layer-13
layer-14
layer_with_weights-8
layer-15
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api

signatures
�
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer-2
	variables
trainable_variables
regularization_losses
	keras_api
�
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
 layer-2
!	variables
"trainable_variables
#regularization_losses
$	keras_api
R
%	variables
&trainable_variables
'regularization_losses
(	keras_api
�
)layer_with_weights-0
)layer-0
*layer_with_weights-1
*layer-1
+layer-2
,	variables
-trainable_variables
.regularization_losses
/	keras_api
�
0layer_with_weights-0
0layer-0
1layer_with_weights-1
1layer-1
2layer-2
3	variables
4trainable_variables
5regularization_losses
6	keras_api
R
7	variables
8trainable_variables
9regularization_losses
:	keras_api
�
;layer_with_weights-0
;layer-0
<layer_with_weights-1
<layer-1
=layer-2
>	variables
?trainable_variables
@regularization_losses
A	keras_api
�
Blayer_with_weights-0
Blayer-0
Clayer_with_weights-1
Clayer-1
Dlayer-2
E	variables
Ftrainable_variables
Gregularization_losses
H	keras_api
R
I	variables
Jtrainable_variables
Kregularization_losses
L	keras_api
R
M	variables
Ntrainable_variables
Oregularization_losses
P	keras_api
R
Q	variables
Rtrainable_variables
Sregularization_losses
T	keras_api
h

Ukernel
Vbias
W	variables
Xtrainable_variables
Yregularization_losses
Z	keras_api
�
[axis
	\gamma
]beta
^moving_mean
_moving_variance
`	variables
atrainable_variables
bregularization_losses
c	keras_api
R
d	variables
etrainable_variables
fregularization_losses
g	keras_api
R
h	variables
itrainable_variables
jregularization_losses
k	keras_api
h

lkernel
mbias
n	variables
otrainable_variables
pregularization_losses
q	keras_api
�
riter

sbeta_1

tbeta_2
	udecay
vlearning_rateUm�Vm�\m�]m�lm�mm�wm�xm�ym�zm�}m�~m�m�	�m�	�m�	�m�	�m�	�m�	�m�	�m�	�m�	�m�	�m�	�m�	�m�	�m�	�m�	�m�	�m�	�m�Uv�Vv�\v�]v�lv�mv�wv�xv�yv�zv�}v�~v�v�	�v�	�v�	�v�	�v�	�v�	�v�	�v�	�v�	�v�	�v�	�v�	�v�	�v�	�v�	�v�	�v�	�v�
�
w0
x1
y2
z3
{4
|5
}6
~7
8
�9
�10
�11
�12
�13
�14
�15
�16
�17
�18
�19
�20
�21
�22
�23
�24
�25
�26
�27
�28
�29
�30
�31
�32
�33
�34
�35
U36
V37
\38
]39
^40
_41
l42
m43
�
w0
x1
y2
z3
}4
~5
6
�7
�8
�9
�10
�11
�12
�13
�14
�15
�16
�17
�18
�19
�20
�21
�22
�23
U24
V25
\26
]27
l28
m29
 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
	variables
trainable_variables
regularization_losses
 
l

wkernel
xbias
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�
	�axis
	ygamma
zbeta
{moving_mean
|moving_variance
�	variables
�trainable_variables
�regularization_losses
�	keras_api
V
�	variables
�trainable_variables
�regularization_losses
�	keras_api
*
w0
x1
y2
z3
{4
|5

w0
x1
y2
z3
 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
	variables
trainable_variables
regularization_losses
l

}kernel
~bias
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�
	�axis
	gamma
	�beta
�moving_mean
�moving_variance
�	variables
�trainable_variables
�regularization_losses
�	keras_api
V
�	variables
�trainable_variables
�regularization_losses
�	keras_api
-
}0
~1
2
�3
�4
�5

}0
~1
2
�3
 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
!	variables
"trainable_variables
#regularization_losses
 
 
 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
%	variables
&trainable_variables
'regularization_losses
n
�kernel
	�bias
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�
	�axis

�gamma
	�beta
�moving_mean
�moving_variance
�	variables
�trainable_variables
�regularization_losses
�	keras_api
V
�	variables
�trainable_variables
�regularization_losses
�	keras_api
0
�0
�1
�2
�3
�4
�5
 
�0
�1
�2
�3
 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
,	variables
-trainable_variables
.regularization_losses
n
�kernel
	�bias
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�
	�axis

�gamma
	�beta
�moving_mean
�moving_variance
�	variables
�trainable_variables
�regularization_losses
�	keras_api
V
�	variables
�trainable_variables
�regularization_losses
�	keras_api
0
�0
�1
�2
�3
�4
�5
 
�0
�1
�2
�3
 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
3	variables
4trainable_variables
5regularization_losses
 
 
 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
7	variables
8trainable_variables
9regularization_losses
n
�kernel
	�bias
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�
	�axis

�gamma
	�beta
�moving_mean
�moving_variance
�	variables
�trainable_variables
�regularization_losses
�	keras_api
V
�	variables
�trainable_variables
�regularization_losses
�	keras_api
0
�0
�1
�2
�3
�4
�5
 
�0
�1
�2
�3
 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
>	variables
?trainable_variables
@regularization_losses
n
�kernel
	�bias
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�
	�axis

�gamma
	�beta
�moving_mean
�moving_variance
�	variables
�trainable_variables
�regularization_losses
�	keras_api
V
�	variables
�trainable_variables
�regularization_losses
�	keras_api
0
�0
�1
�2
�3
�4
�5
 
�0
�1
�2
�3
 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
E	variables
Ftrainable_variables
Gregularization_losses
 
 
 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
I	variables
Jtrainable_variables
Kregularization_losses
 
 
 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
M	variables
Ntrainable_variables
Oregularization_losses
 
 
 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
Q	variables
Rtrainable_variables
Sregularization_losses
ZX
VARIABLE_VALUEdense_4/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_4/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE

U0
V1

U0
V1
 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
W	variables
Xtrainable_variables
Yregularization_losses
 
ge
VARIABLE_VALUEbatch_normalization_25/gamma5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUE
ec
VARIABLE_VALUEbatch_normalization_25/beta4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUE"batch_normalization_25/moving_mean;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUE&batch_normalization_25/moving_variance?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUE

\0
]1
^2
_3

\0
]1
 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
`	variables
atrainable_variables
bregularization_losses
 
 
 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
d	variables
etrainable_variables
fregularization_losses
 
 
 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
h	variables
itrainable_variables
jregularization_losses
ZX
VARIABLE_VALUEdense_5/kernel6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_5/bias4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUE

l0
m1

l0
m1
 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
n	variables
otrainable_variables
pregularization_losses
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEconv2d_12/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUEconv2d_12/bias&variables/1/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEbatch_normalization_19/gamma&variables/2/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEbatch_normalization_19/beta&variables/3/.ATTRIBUTES/VARIABLE_VALUE
^\
VARIABLE_VALUE"batch_normalization_19/moving_mean&variables/4/.ATTRIBUTES/VARIABLE_VALUE
b`
VARIABLE_VALUE&batch_normalization_19/moving_variance&variables/5/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEconv2d_13/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUEconv2d_13/bias&variables/7/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEbatch_normalization_20/gamma&variables/8/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEbatch_normalization_20/beta&variables/9/.ATTRIBUTES/VARIABLE_VALUE
_]
VARIABLE_VALUE"batch_normalization_20/moving_mean'variables/10/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE&batch_normalization_20/moving_variance'variables/11/.ATTRIBUTES/VARIABLE_VALUE
MK
VARIABLE_VALUEconv2d_14/kernel'variables/12/.ATTRIBUTES/VARIABLE_VALUE
KI
VARIABLE_VALUEconv2d_14/bias'variables/13/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEbatch_normalization_21/gamma'variables/14/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEbatch_normalization_21/beta'variables/15/.ATTRIBUTES/VARIABLE_VALUE
_]
VARIABLE_VALUE"batch_normalization_21/moving_mean'variables/16/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE&batch_normalization_21/moving_variance'variables/17/.ATTRIBUTES/VARIABLE_VALUE
MK
VARIABLE_VALUEconv2d_15/kernel'variables/18/.ATTRIBUTES/VARIABLE_VALUE
KI
VARIABLE_VALUEconv2d_15/bias'variables/19/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEbatch_normalization_22/gamma'variables/20/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEbatch_normalization_22/beta'variables/21/.ATTRIBUTES/VARIABLE_VALUE
_]
VARIABLE_VALUE"batch_normalization_22/moving_mean'variables/22/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE&batch_normalization_22/moving_variance'variables/23/.ATTRIBUTES/VARIABLE_VALUE
MK
VARIABLE_VALUEconv2d_16/kernel'variables/24/.ATTRIBUTES/VARIABLE_VALUE
KI
VARIABLE_VALUEconv2d_16/bias'variables/25/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEbatch_normalization_23/gamma'variables/26/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEbatch_normalization_23/beta'variables/27/.ATTRIBUTES/VARIABLE_VALUE
_]
VARIABLE_VALUE"batch_normalization_23/moving_mean'variables/28/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE&batch_normalization_23/moving_variance'variables/29/.ATTRIBUTES/VARIABLE_VALUE
MK
VARIABLE_VALUEconv2d_17/kernel'variables/30/.ATTRIBUTES/VARIABLE_VALUE
KI
VARIABLE_VALUEconv2d_17/bias'variables/31/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEbatch_normalization_24/gamma'variables/32/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEbatch_normalization_24/beta'variables/33/.ATTRIBUTES/VARIABLE_VALUE
_]
VARIABLE_VALUE"batch_normalization_24/moving_mean'variables/34/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE&batch_normalization_24/moving_variance'variables/35/.ATTRIBUTES/VARIABLE_VALUE
p
{0
|1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11
^12
_13
v
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15

�0
�1
 
 

w0
x1

w0
x1
 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
 

y0
z1
{2
|3

y0
z1
 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
 
 
 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses

{0
|1

0
1
2
 
 
 

}0
~1

}0
~1
 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
 

0
�1
�2
�3

0
�1
 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
 
 
 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses

�0
�1

0
1
 2
 
 
 
 
 
 
 
 

�0
�1

�0
�1
 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
 
 
�0
�1
�2
�3

�0
�1
 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
 
 
 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses

�0
�1

)0
*1
+2
 
 
 

�0
�1

�0
�1
 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
 
 
�0
�1
�2
�3

�0
�1
 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
 
 
 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses

�0
�1

00
11
22
 
 
 
 
 
 
 
 

�0
�1

�0
�1
 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
 
 
�0
�1
�2
�3

�0
�1
 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
 
 
 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses

�0
�1

;0
<1
=2
 
 
 

�0
�1

�0
�1
 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
 
 
�0
�1
�2
�3

�0
�1
 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
 
 
 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses

�0
�1

B0
C1
D2
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

^0
_1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
8

�total

�count
�	variables
�	keras_api
I

�total

�count
�
_fn_kwargs
�	variables
�	keras_api
 
 
 
 
 

{0
|1
 
 
 
 
 
 
 
 
 
 
 
 
 
 

�0
�1
 
 
 
 
 
 
 
 
 
 
 
 
 
 

�0
�1
 
 
 
 
 
 
 
 
 
 
 
 
 
 

�0
�1
 
 
 
 
 
 
 
 
 
 
 
 
 
 

�0
�1
 
 
 
 
 
 
 
 
 
 
 
 
 
 

�0
�1
 
 
 
 
 
 
 
 
 
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

�0
�1

�	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

�0
�1

�	variables
}{
VARIABLE_VALUEAdam/dense_4/kernel/mRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_4/bias/mPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE#Adam/batch_normalization_25/gamma/mQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE"Adam/batch_normalization_25/beta/mPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_5/kernel/mRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_5/bias/mPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
om
VARIABLE_VALUEAdam/conv2d_12/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
mk
VARIABLE_VALUEAdam/conv2d_12/bias/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUE#Adam/batch_normalization_19/gamma/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/batch_normalization_19/beta/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
om
VARIABLE_VALUEAdam/conv2d_13/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
mk
VARIABLE_VALUEAdam/conv2d_13/bias/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUE#Adam/batch_normalization_20/gamma/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/batch_normalization_20/beta/mBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
pn
VARIABLE_VALUEAdam/conv2d_14/kernel/mCvariables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
nl
VARIABLE_VALUEAdam/conv2d_14/bias/mCvariables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE#Adam/batch_normalization_21/gamma/mCvariables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUE"Adam/batch_normalization_21/beta/mCvariables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
pn
VARIABLE_VALUEAdam/conv2d_15/kernel/mCvariables/18/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
nl
VARIABLE_VALUEAdam/conv2d_15/bias/mCvariables/19/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE#Adam/batch_normalization_22/gamma/mCvariables/20/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUE"Adam/batch_normalization_22/beta/mCvariables/21/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
pn
VARIABLE_VALUEAdam/conv2d_16/kernel/mCvariables/24/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
nl
VARIABLE_VALUEAdam/conv2d_16/bias/mCvariables/25/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE#Adam/batch_normalization_23/gamma/mCvariables/26/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUE"Adam/batch_normalization_23/beta/mCvariables/27/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
pn
VARIABLE_VALUEAdam/conv2d_17/kernel/mCvariables/30/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
nl
VARIABLE_VALUEAdam/conv2d_17/bias/mCvariables/31/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE#Adam/batch_normalization_24/gamma/mCvariables/32/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUE"Adam/batch_normalization_24/beta/mCvariables/33/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_4/kernel/vRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_4/bias/vPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE#Adam/batch_normalization_25/gamma/vQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE"Adam/batch_normalization_25/beta/vPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_5/kernel/vRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_5/bias/vPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
om
VARIABLE_VALUEAdam/conv2d_12/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
mk
VARIABLE_VALUEAdam/conv2d_12/bias/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUE#Adam/batch_normalization_19/gamma/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/batch_normalization_19/beta/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
om
VARIABLE_VALUEAdam/conv2d_13/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
mk
VARIABLE_VALUEAdam/conv2d_13/bias/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUE#Adam/batch_normalization_20/gamma/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/batch_normalization_20/beta/vBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
pn
VARIABLE_VALUEAdam/conv2d_14/kernel/vCvariables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
nl
VARIABLE_VALUEAdam/conv2d_14/bias/vCvariables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE#Adam/batch_normalization_21/gamma/vCvariables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUE"Adam/batch_normalization_21/beta/vCvariables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
pn
VARIABLE_VALUEAdam/conv2d_15/kernel/vCvariables/18/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
nl
VARIABLE_VALUEAdam/conv2d_15/bias/vCvariables/19/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE#Adam/batch_normalization_22/gamma/vCvariables/20/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUE"Adam/batch_normalization_22/beta/vCvariables/21/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
pn
VARIABLE_VALUEAdam/conv2d_16/kernel/vCvariables/24/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
nl
VARIABLE_VALUEAdam/conv2d_16/bias/vCvariables/25/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE#Adam/batch_normalization_23/gamma/vCvariables/26/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUE"Adam/batch_normalization_23/beta/vCvariables/27/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
pn
VARIABLE_VALUEAdam/conv2d_17/kernel/vCvariables/30/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
nl
VARIABLE_VALUEAdam/conv2d_17/bias/vCvariables/31/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE#Adam/batch_normalization_24/gamma/vCvariables/32/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUE"Adam/batch_normalization_24/beta/vCvariables/33/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
�
#serving_default_sequential_15_inputPlaceholder*/
_output_shapes
:���������  *
dtype0*$
shape:���������  
�
StatefulPartitionedCallStatefulPartitionedCall#serving_default_sequential_15_inputconv2d_12/kernelconv2d_12/biasbatch_normalization_19/gammabatch_normalization_19/beta"batch_normalization_19/moving_mean&batch_normalization_19/moving_varianceconv2d_13/kernelconv2d_13/biasbatch_normalization_20/gammabatch_normalization_20/beta"batch_normalization_20/moving_mean&batch_normalization_20/moving_varianceconv2d_14/kernelconv2d_14/biasbatch_normalization_21/gammabatch_normalization_21/beta"batch_normalization_21/moving_mean&batch_normalization_21/moving_varianceconv2d_15/kernelconv2d_15/biasbatch_normalization_22/gammabatch_normalization_22/beta"batch_normalization_22/moving_mean&batch_normalization_22/moving_varianceconv2d_16/kernelconv2d_16/biasbatch_normalization_23/gammabatch_normalization_23/beta"batch_normalization_23/moving_mean&batch_normalization_23/moving_varianceconv2d_17/kernelconv2d_17/biasbatch_normalization_24/gammabatch_normalization_24/beta"batch_normalization_24/moving_mean&batch_normalization_24/moving_variancedense_4/kerneldense_4/bias&batch_normalization_25/moving_variancebatch_normalization_25/gamma"batch_normalization_25/moving_meanbatch_normalization_25/betadense_5/kerneldense_5/bias*8
Tin1
/2-*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*N
_read_only_resource_inputs0
.,	
 !"#$%&'()*+,*-
config_proto

CPU

GPU 2J 8� *,
f'R%
#__inference_signature_wrapper_68463
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�,
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename"dense_4/kernel/Read/ReadVariableOp dense_4/bias/Read/ReadVariableOp0batch_normalization_25/gamma/Read/ReadVariableOp/batch_normalization_25/beta/Read/ReadVariableOp6batch_normalization_25/moving_mean/Read/ReadVariableOp:batch_normalization_25/moving_variance/Read/ReadVariableOp"dense_5/kernel/Read/ReadVariableOp dense_5/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp$conv2d_12/kernel/Read/ReadVariableOp"conv2d_12/bias/Read/ReadVariableOp0batch_normalization_19/gamma/Read/ReadVariableOp/batch_normalization_19/beta/Read/ReadVariableOp6batch_normalization_19/moving_mean/Read/ReadVariableOp:batch_normalization_19/moving_variance/Read/ReadVariableOp$conv2d_13/kernel/Read/ReadVariableOp"conv2d_13/bias/Read/ReadVariableOp0batch_normalization_20/gamma/Read/ReadVariableOp/batch_normalization_20/beta/Read/ReadVariableOp6batch_normalization_20/moving_mean/Read/ReadVariableOp:batch_normalization_20/moving_variance/Read/ReadVariableOp$conv2d_14/kernel/Read/ReadVariableOp"conv2d_14/bias/Read/ReadVariableOp0batch_normalization_21/gamma/Read/ReadVariableOp/batch_normalization_21/beta/Read/ReadVariableOp6batch_normalization_21/moving_mean/Read/ReadVariableOp:batch_normalization_21/moving_variance/Read/ReadVariableOp$conv2d_15/kernel/Read/ReadVariableOp"conv2d_15/bias/Read/ReadVariableOp0batch_normalization_22/gamma/Read/ReadVariableOp/batch_normalization_22/beta/Read/ReadVariableOp6batch_normalization_22/moving_mean/Read/ReadVariableOp:batch_normalization_22/moving_variance/Read/ReadVariableOp$conv2d_16/kernel/Read/ReadVariableOp"conv2d_16/bias/Read/ReadVariableOp0batch_normalization_23/gamma/Read/ReadVariableOp/batch_normalization_23/beta/Read/ReadVariableOp6batch_normalization_23/moving_mean/Read/ReadVariableOp:batch_normalization_23/moving_variance/Read/ReadVariableOp$conv2d_17/kernel/Read/ReadVariableOp"conv2d_17/bias/Read/ReadVariableOp0batch_normalization_24/gamma/Read/ReadVariableOp/batch_normalization_24/beta/Read/ReadVariableOp6batch_normalization_24/moving_mean/Read/ReadVariableOp:batch_normalization_24/moving_variance/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp)Adam/dense_4/kernel/m/Read/ReadVariableOp'Adam/dense_4/bias/m/Read/ReadVariableOp7Adam/batch_normalization_25/gamma/m/Read/ReadVariableOp6Adam/batch_normalization_25/beta/m/Read/ReadVariableOp)Adam/dense_5/kernel/m/Read/ReadVariableOp'Adam/dense_5/bias/m/Read/ReadVariableOp+Adam/conv2d_12/kernel/m/Read/ReadVariableOp)Adam/conv2d_12/bias/m/Read/ReadVariableOp7Adam/batch_normalization_19/gamma/m/Read/ReadVariableOp6Adam/batch_normalization_19/beta/m/Read/ReadVariableOp+Adam/conv2d_13/kernel/m/Read/ReadVariableOp)Adam/conv2d_13/bias/m/Read/ReadVariableOp7Adam/batch_normalization_20/gamma/m/Read/ReadVariableOp6Adam/batch_normalization_20/beta/m/Read/ReadVariableOp+Adam/conv2d_14/kernel/m/Read/ReadVariableOp)Adam/conv2d_14/bias/m/Read/ReadVariableOp7Adam/batch_normalization_21/gamma/m/Read/ReadVariableOp6Adam/batch_normalization_21/beta/m/Read/ReadVariableOp+Adam/conv2d_15/kernel/m/Read/ReadVariableOp)Adam/conv2d_15/bias/m/Read/ReadVariableOp7Adam/batch_normalization_22/gamma/m/Read/ReadVariableOp6Adam/batch_normalization_22/beta/m/Read/ReadVariableOp+Adam/conv2d_16/kernel/m/Read/ReadVariableOp)Adam/conv2d_16/bias/m/Read/ReadVariableOp7Adam/batch_normalization_23/gamma/m/Read/ReadVariableOp6Adam/batch_normalization_23/beta/m/Read/ReadVariableOp+Adam/conv2d_17/kernel/m/Read/ReadVariableOp)Adam/conv2d_17/bias/m/Read/ReadVariableOp7Adam/batch_normalization_24/gamma/m/Read/ReadVariableOp6Adam/batch_normalization_24/beta/m/Read/ReadVariableOp)Adam/dense_4/kernel/v/Read/ReadVariableOp'Adam/dense_4/bias/v/Read/ReadVariableOp7Adam/batch_normalization_25/gamma/v/Read/ReadVariableOp6Adam/batch_normalization_25/beta/v/Read/ReadVariableOp)Adam/dense_5/kernel/v/Read/ReadVariableOp'Adam/dense_5/bias/v/Read/ReadVariableOp+Adam/conv2d_12/kernel/v/Read/ReadVariableOp)Adam/conv2d_12/bias/v/Read/ReadVariableOp7Adam/batch_normalization_19/gamma/v/Read/ReadVariableOp6Adam/batch_normalization_19/beta/v/Read/ReadVariableOp+Adam/conv2d_13/kernel/v/Read/ReadVariableOp)Adam/conv2d_13/bias/v/Read/ReadVariableOp7Adam/batch_normalization_20/gamma/v/Read/ReadVariableOp6Adam/batch_normalization_20/beta/v/Read/ReadVariableOp+Adam/conv2d_14/kernel/v/Read/ReadVariableOp)Adam/conv2d_14/bias/v/Read/ReadVariableOp7Adam/batch_normalization_21/gamma/v/Read/ReadVariableOp6Adam/batch_normalization_21/beta/v/Read/ReadVariableOp+Adam/conv2d_15/kernel/v/Read/ReadVariableOp)Adam/conv2d_15/bias/v/Read/ReadVariableOp7Adam/batch_normalization_22/gamma/v/Read/ReadVariableOp6Adam/batch_normalization_22/beta/v/Read/ReadVariableOp+Adam/conv2d_16/kernel/v/Read/ReadVariableOp)Adam/conv2d_16/bias/v/Read/ReadVariableOp7Adam/batch_normalization_23/gamma/v/Read/ReadVariableOp6Adam/batch_normalization_23/beta/v/Read/ReadVariableOp+Adam/conv2d_17/kernel/v/Read/ReadVariableOp)Adam/conv2d_17/bias/v/Read/ReadVariableOp7Adam/batch_normalization_24/gamma/v/Read/ReadVariableOp6Adam/batch_normalization_24/beta/v/Read/ReadVariableOpConst*~
Tinw
u2s	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *'
f"R 
__inference__traced_save_71077
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_4/kerneldense_4/biasbatch_normalization_25/gammabatch_normalization_25/beta"batch_normalization_25/moving_mean&batch_normalization_25/moving_variancedense_5/kerneldense_5/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_rateconv2d_12/kernelconv2d_12/biasbatch_normalization_19/gammabatch_normalization_19/beta"batch_normalization_19/moving_mean&batch_normalization_19/moving_varianceconv2d_13/kernelconv2d_13/biasbatch_normalization_20/gammabatch_normalization_20/beta"batch_normalization_20/moving_mean&batch_normalization_20/moving_varianceconv2d_14/kernelconv2d_14/biasbatch_normalization_21/gammabatch_normalization_21/beta"batch_normalization_21/moving_mean&batch_normalization_21/moving_varianceconv2d_15/kernelconv2d_15/biasbatch_normalization_22/gammabatch_normalization_22/beta"batch_normalization_22/moving_mean&batch_normalization_22/moving_varianceconv2d_16/kernelconv2d_16/biasbatch_normalization_23/gammabatch_normalization_23/beta"batch_normalization_23/moving_mean&batch_normalization_23/moving_varianceconv2d_17/kernelconv2d_17/biasbatch_normalization_24/gammabatch_normalization_24/beta"batch_normalization_24/moving_mean&batch_normalization_24/moving_variancetotalcounttotal_1count_1Adam/dense_4/kernel/mAdam/dense_4/bias/m#Adam/batch_normalization_25/gamma/m"Adam/batch_normalization_25/beta/mAdam/dense_5/kernel/mAdam/dense_5/bias/mAdam/conv2d_12/kernel/mAdam/conv2d_12/bias/m#Adam/batch_normalization_19/gamma/m"Adam/batch_normalization_19/beta/mAdam/conv2d_13/kernel/mAdam/conv2d_13/bias/m#Adam/batch_normalization_20/gamma/m"Adam/batch_normalization_20/beta/mAdam/conv2d_14/kernel/mAdam/conv2d_14/bias/m#Adam/batch_normalization_21/gamma/m"Adam/batch_normalization_21/beta/mAdam/conv2d_15/kernel/mAdam/conv2d_15/bias/m#Adam/batch_normalization_22/gamma/m"Adam/batch_normalization_22/beta/mAdam/conv2d_16/kernel/mAdam/conv2d_16/bias/m#Adam/batch_normalization_23/gamma/m"Adam/batch_normalization_23/beta/mAdam/conv2d_17/kernel/mAdam/conv2d_17/bias/m#Adam/batch_normalization_24/gamma/m"Adam/batch_normalization_24/beta/mAdam/dense_4/kernel/vAdam/dense_4/bias/v#Adam/batch_normalization_25/gamma/v"Adam/batch_normalization_25/beta/vAdam/dense_5/kernel/vAdam/dense_5/bias/vAdam/conv2d_12/kernel/vAdam/conv2d_12/bias/v#Adam/batch_normalization_19/gamma/v"Adam/batch_normalization_19/beta/vAdam/conv2d_13/kernel/vAdam/conv2d_13/bias/v#Adam/batch_normalization_20/gamma/v"Adam/batch_normalization_20/beta/vAdam/conv2d_14/kernel/vAdam/conv2d_14/bias/v#Adam/batch_normalization_21/gamma/v"Adam/batch_normalization_21/beta/vAdam/conv2d_15/kernel/vAdam/conv2d_15/bias/v#Adam/batch_normalization_22/gamma/v"Adam/batch_normalization_22/beta/vAdam/conv2d_16/kernel/vAdam/conv2d_16/bias/v#Adam/batch_normalization_23/gamma/v"Adam/batch_normalization_23/beta/vAdam/conv2d_17/kernel/vAdam/conv2d_17/bias/v#Adam/batch_normalization_24/gamma/v"Adam/batch_normalization_24/beta/v*}
Tinv
t2r*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� **
f%R#
!__inference__traced_restore_71426�%
�
�
Q__inference_batch_normalization_20_layer_call_and_return_conditional_losses_65765

inputs%
readvariableop_resource:!'
readvariableop_1_resource:!6
(fusedbatchnormv3_readvariableop_resource:!8
*fusedbatchnormv3_readvariableop_1_resource:!
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:!*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:!*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:!*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:!*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������!:!:!:!:!:*
epsilon%o�:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������!�
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������!: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������!
 
_user_specified_nameinputs
�
c
E__inference_dropout_10_layer_call_and_return_conditional_losses_67472

inputs

identity_1W
IdentityIdentityinputs*
T0*0
_output_shapes
:����������d

Identity_1IdentityIdentity:output:0*
T0*0
_output_shapes
:����������"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�	
�
-__inference_sequential_16_layer_call_fn_69126

inputs!
unknown:!
	unknown_0:!
	unknown_1:!
	unknown_2:!
	unknown_3:!
	unknown_4:!
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������!*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_sequential_16_layer_call_and_return_conditional_losses_65865w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������!`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������  : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������  
 
_user_specified_nameinputs
�
�

#__inference_signature_wrapper_68463
sequential_15_input!
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:#
	unknown_5:!
	unknown_6:!
	unknown_7:!
	unknown_8:!
	unknown_9:!

unknown_10:!$

unknown_11:!7

unknown_12:7

unknown_13:7

unknown_14:7

unknown_15:7

unknown_16:7$

unknown_17:7<

unknown_18:<

unknown_19:<

unknown_20:<

unknown_21:<

unknown_22:<$

unknown_23:<x

unknown_24:x

unknown_25:x

unknown_26:x

unknown_27:x

unknown_28:x%

unknown_29:x�

unknown_30:	�

unknown_31:	�

unknown_32:	�

unknown_33:	�

unknown_34:	�

unknown_35:
�A�

unknown_36:	�

unknown_37:	�

unknown_38:	�

unknown_39:	�

unknown_40:	�

unknown_41:	�


unknown_42:

identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallsequential_15_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42*8
Tin1
/2-*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*N
_read_only_resource_inputs0
.,	
 !"#$%&'()*+,*-
config_proto

CPU

GPU 2J 8� *)
f$R"
 __inference__wrapped_model_65438o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapesu
s:���������  : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:d `
/
_output_shapes
:���������  
-
_user_specified_namesequential_15_input
�S
�
H__inference_sequential_14_layer_call_and_return_conditional_losses_68254
sequential_15_input-
sequential_15_68149:!
sequential_15_68151:!
sequential_15_68153:!
sequential_15_68155:!
sequential_15_68157:!
sequential_15_68159:-
sequential_16_68162:!!
sequential_16_68164:!!
sequential_16_68166:!!
sequential_16_68168:!!
sequential_16_68170:!!
sequential_16_68172:!-
sequential_17_68176:!7!
sequential_17_68178:7!
sequential_17_68180:7!
sequential_17_68182:7!
sequential_17_68184:7!
sequential_17_68186:7-
sequential_18_68189:7<!
sequential_18_68191:<!
sequential_18_68193:<!
sequential_18_68195:<!
sequential_18_68197:<!
sequential_18_68199:<-
sequential_19_68203:<x!
sequential_19_68205:x!
sequential_19_68207:x!
sequential_19_68209:x!
sequential_19_68211:x!
sequential_19_68213:x.
sequential_20_68216:x�"
sequential_20_68218:	�"
sequential_20_68220:	�"
sequential_20_68222:	�"
sequential_20_68224:	�"
sequential_20_68226:	�!
dense_4_68232:
�A�
dense_4_68234:	�+
batch_normalization_25_68237:	�+
batch_normalization_25_68239:	�+
batch_normalization_25_68241:	�+
batch_normalization_25_68243:	� 
dense_5_68248:	�

dense_5_68250:

identity��.batch_normalization_25/StatefulPartitionedCall�dense_4/StatefulPartitionedCall�dense_5/StatefulPartitionedCall�%sequential_15/StatefulPartitionedCall�%sequential_16/StatefulPartitionedCall�%sequential_17/StatefulPartitionedCall�%sequential_18/StatefulPartitionedCall�%sequential_19/StatefulPartitionedCall�%sequential_20/StatefulPartitionedCall�
%sequential_15/StatefulPartitionedCallStatefulPartitionedCallsequential_15_inputsequential_15_68149sequential_15_68151sequential_15_68153sequential_15_68155sequential_15_68157sequential_15_68159*
Tin
	2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������  *(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_sequential_15_layer_call_and_return_conditional_losses_65560�
%sequential_16/StatefulPartitionedCallStatefulPartitionedCall.sequential_15/StatefulPartitionedCall:output:0sequential_16_68162sequential_16_68164sequential_16_68166sequential_16_68168sequential_16_68170sequential_16_68172*
Tin
	2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������!*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_sequential_16_layer_call_and_return_conditional_losses_65865�
dropout_8/PartitionedCallPartitionedCall.sequential_16/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������!* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dropout_8_layer_call_and_return_conditional_losses_67400�
%sequential_17/StatefulPartitionedCallStatefulPartitionedCall"dropout_8/PartitionedCall:output:0sequential_17_68176sequential_17_68178sequential_17_68180sequential_17_68182sequential_17_68184sequential_17_68186*
Tin
	2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������7*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_sequential_17_layer_call_and_return_conditional_losses_66170�
%sequential_18/StatefulPartitionedCallStatefulPartitionedCall.sequential_17/StatefulPartitionedCall:output:0sequential_18_68189sequential_18_68191sequential_18_68193sequential_18_68195sequential_18_68197sequential_18_68199*
Tin
	2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������<*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_sequential_18_layer_call_and_return_conditional_losses_66475�
dropout_9/PartitionedCallPartitionedCall.sequential_18/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������<* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dropout_9_layer_call_and_return_conditional_losses_67433�
%sequential_19/StatefulPartitionedCallStatefulPartitionedCall"dropout_9/PartitionedCall:output:0sequential_19_68203sequential_19_68205sequential_19_68207sequential_19_68209sequential_19_68211sequential_19_68213*
Tin
	2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������x*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_sequential_19_layer_call_and_return_conditional_losses_66780�
%sequential_20/StatefulPartitionedCallStatefulPartitionedCall.sequential_19/StatefulPartitionedCall:output:0sequential_20_68216sequential_20_68218sequential_20_68220sequential_20_68222sequential_20_68224sequential_20_68226*
Tin
	2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_sequential_20_layer_call_and_return_conditional_losses_67085�
max_pooling2d_2/PartitionedCallPartitionedCall.sequential_20/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_67465�
dropout_10/PartitionedCallPartitionedCall(max_pooling2d_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dropout_10_layer_call_and_return_conditional_losses_67472�
flatten_2/PartitionedCallPartitionedCall#dropout_10/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������A* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_flatten_2_layer_call_and_return_conditional_losses_67480�
dense_4/StatefulPartitionedCallStatefulPartitionedCall"flatten_2/PartitionedCall:output:0dense_4_68232dense_4_68234*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_dense_4_layer_call_and_return_conditional_losses_67492�
.batch_normalization_25/StatefulPartitionedCallStatefulPartitionedCall(dense_4/StatefulPartitionedCall:output:0batch_normalization_25_68237batch_normalization_25_68239batch_normalization_25_68241batch_normalization_25_68243*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_25_layer_call_and_return_conditional_losses_67304�
re_lu_25/PartitionedCallPartitionedCall7batch_normalization_25/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_re_lu_25_layer_call_and_return_conditional_losses_67512�
dropout_11/PartitionedCallPartitionedCall!re_lu_25/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dropout_11_layer_call_and_return_conditional_losses_67519�
dense_5/StatefulPartitionedCallStatefulPartitionedCall#dropout_11/PartitionedCall:output:0dense_5_68248dense_5_68250*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_dense_5_layer_call_and_return_conditional_losses_67532w
IdentityIdentity(dense_5/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������
�
NoOpNoOp/^batch_normalization_25/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall ^dense_5/StatefulPartitionedCall&^sequential_15/StatefulPartitionedCall&^sequential_16/StatefulPartitionedCall&^sequential_17/StatefulPartitionedCall&^sequential_18/StatefulPartitionedCall&^sequential_19/StatefulPartitionedCall&^sequential_20/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapesu
s:���������  : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2`
.batch_normalization_25/StatefulPartitionedCall.batch_normalization_25/StatefulPartitionedCall2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall2N
%sequential_15/StatefulPartitionedCall%sequential_15/StatefulPartitionedCall2N
%sequential_16/StatefulPartitionedCall%sequential_16/StatefulPartitionedCall2N
%sequential_17/StatefulPartitionedCall%sequential_17/StatefulPartitionedCall2N
%sequential_18/StatefulPartitionedCall%sequential_18/StatefulPartitionedCall2N
%sequential_19/StatefulPartitionedCall%sequential_19/StatefulPartitionedCall2N
%sequential_20/StatefulPartitionedCall%sequential_20/StatefulPartitionedCall:d `
/
_output_shapes
:���������  
-
_user_specified_namesequential_15_input
�%
�
H__inference_sequential_17_layer_call_and_return_conditional_losses_69304

inputsB
(conv2d_14_conv2d_readvariableop_resource:!77
)conv2d_14_biasadd_readvariableop_resource:7<
.batch_normalization_21_readvariableop_resource:7>
0batch_normalization_21_readvariableop_1_resource:7M
?batch_normalization_21_fusedbatchnormv3_readvariableop_resource:7O
Abatch_normalization_21_fusedbatchnormv3_readvariableop_1_resource:7
identity��%batch_normalization_21/AssignNewValue�'batch_normalization_21/AssignNewValue_1�6batch_normalization_21/FusedBatchNormV3/ReadVariableOp�8batch_normalization_21/FusedBatchNormV3/ReadVariableOp_1�%batch_normalization_21/ReadVariableOp�'batch_normalization_21/ReadVariableOp_1� conv2d_14/BiasAdd/ReadVariableOp�conv2d_14/Conv2D/ReadVariableOp�
conv2d_14/Conv2D/ReadVariableOpReadVariableOp(conv2d_14_conv2d_readvariableop_resource*&
_output_shapes
:!7*
dtype0�
conv2d_14/Conv2DConv2Dinputs'conv2d_14/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������7*
paddingSAME*
strides
�
 conv2d_14/BiasAdd/ReadVariableOpReadVariableOp)conv2d_14_biasadd_readvariableop_resource*
_output_shapes
:7*
dtype0�
conv2d_14/BiasAddBiasAddconv2d_14/Conv2D:output:0(conv2d_14/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������7�
%batch_normalization_21/ReadVariableOpReadVariableOp.batch_normalization_21_readvariableop_resource*
_output_shapes
:7*
dtype0�
'batch_normalization_21/ReadVariableOp_1ReadVariableOp0batch_normalization_21_readvariableop_1_resource*
_output_shapes
:7*
dtype0�
6batch_normalization_21/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_21_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:7*
dtype0�
8batch_normalization_21/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_21_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:7*
dtype0�
'batch_normalization_21/FusedBatchNormV3FusedBatchNormV3conv2d_14/BiasAdd:output:0-batch_normalization_21/ReadVariableOp:value:0/batch_normalization_21/ReadVariableOp_1:value:0>batch_normalization_21/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_21/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������7:7:7:7:7:*
epsilon%o�:*
exponential_avg_factor%
�#<�
%batch_normalization_21/AssignNewValueAssignVariableOp?batch_normalization_21_fusedbatchnormv3_readvariableop_resource4batch_normalization_21/FusedBatchNormV3:batch_mean:07^batch_normalization_21/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0�
'batch_normalization_21/AssignNewValue_1AssignVariableOpAbatch_normalization_21_fusedbatchnormv3_readvariableop_1_resource8batch_normalization_21/FusedBatchNormV3:batch_variance:09^batch_normalization_21/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0|
re_lu_21/ReluRelu+batch_normalization_21/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:���������7r
IdentityIdentityre_lu_21/Relu:activations:0^NoOp*
T0*/
_output_shapes
:���������7�
NoOpNoOp&^batch_normalization_21/AssignNewValue(^batch_normalization_21/AssignNewValue_17^batch_normalization_21/FusedBatchNormV3/ReadVariableOp9^batch_normalization_21/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_21/ReadVariableOp(^batch_normalization_21/ReadVariableOp_1!^conv2d_14/BiasAdd/ReadVariableOp ^conv2d_14/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������!: : : : : : 2N
%batch_normalization_21/AssignNewValue%batch_normalization_21/AssignNewValue2R
'batch_normalization_21/AssignNewValue_1'batch_normalization_21/AssignNewValue_12p
6batch_normalization_21/FusedBatchNormV3/ReadVariableOp6batch_normalization_21/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_21/FusedBatchNormV3/ReadVariableOp_18batch_normalization_21/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_21/ReadVariableOp%batch_normalization_21/ReadVariableOp2R
'batch_normalization_21/ReadVariableOp_1'batch_normalization_21/ReadVariableOp_12D
 conv2d_14/BiasAdd/ReadVariableOp conv2d_14/BiasAdd/ReadVariableOp2B
conv2d_14/Conv2D/ReadVariableOpconv2d_14/Conv2D/ReadVariableOp:W S
/
_output_shapes
:���������!
 
_user_specified_nameinputs
�
�
Q__inference_batch_normalization_22_layer_call_and_return_conditional_losses_70399

inputs%
readvariableop_resource:<'
readvariableop_1_resource:<6
(fusedbatchnormv3_readvariableop_resource:<8
*fusedbatchnormv3_readvariableop_1_resource:<
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:<*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:<*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:<*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:<*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������<:<:<:<:<:*
epsilon%o�:*
exponential_avg_factor%
�#<�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0k
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*/
_output_shapes
:���������<�
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������<: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:���������<
 
_user_specified_nameinputs
�
�
H__inference_sequential_18_layer_call_and_return_conditional_losses_66658
conv2d_15_input)
conv2d_15_66642:7<
conv2d_15_66644:<*
batch_normalization_22_66647:<*
batch_normalization_22_66649:<*
batch_normalization_22_66651:<*
batch_normalization_22_66653:<
identity��.batch_normalization_22/StatefulPartitionedCall�!conv2d_15/StatefulPartitionedCall�
!conv2d_15/StatefulPartitionedCallStatefulPartitionedCallconv2d_15_inputconv2d_15_66642conv2d_15_66644*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������<*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_conv2d_15_layer_call_and_return_conditional_losses_66434�
.batch_normalization_22/StatefulPartitionedCallStatefulPartitionedCall*conv2d_15/StatefulPartitionedCall:output:0batch_normalization_22_66647batch_normalization_22_66649batch_normalization_22_66651batch_normalization_22_66653*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������<*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_22_layer_call_and_return_conditional_losses_66529�
re_lu_22/PartitionedCallPartitionedCall7batch_normalization_22/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������<* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_re_lu_22_layer_call_and_return_conditional_losses_66472x
IdentityIdentity!re_lu_22/PartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������<�
NoOpNoOp/^batch_normalization_22/StatefulPartitionedCall"^conv2d_15/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������7: : : : : : 2`
.batch_normalization_22/StatefulPartitionedCall.batch_normalization_22/StatefulPartitionedCall2F
!conv2d_15/StatefulPartitionedCall!conv2d_15/StatefulPartitionedCall:` \
/
_output_shapes
:���������7
)
_user_specified_nameconv2d_15_input
�	
�
-__inference_sequential_18_layer_call_fn_69321

inputs!
unknown:7<
	unknown_0:<
	unknown_1:<
	unknown_2:<
	unknown_3:<
	unknown_4:<
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������<*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_sequential_18_layer_call_and_return_conditional_losses_66475w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������<`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������7: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������7
 
_user_specified_nameinputs
�
�

-__inference_sequential_14_layer_call_fn_67630
sequential_15_input!
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:#
	unknown_5:!
	unknown_6:!
	unknown_7:!
	unknown_8:!
	unknown_9:!

unknown_10:!$

unknown_11:!7

unknown_12:7

unknown_13:7

unknown_14:7

unknown_15:7

unknown_16:7$

unknown_17:7<

unknown_18:<

unknown_19:<

unknown_20:<

unknown_21:<

unknown_22:<$

unknown_23:<x

unknown_24:x

unknown_25:x

unknown_26:x

unknown_27:x

unknown_28:x%

unknown_29:x�

unknown_30:	�

unknown_31:	�

unknown_32:	�

unknown_33:	�

unknown_34:	�

unknown_35:
�A�

unknown_36:	�

unknown_37:	�

unknown_38:	�

unknown_39:	�

unknown_40:	�

unknown_41:	�


unknown_42:

identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallsequential_15_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42*8
Tin1
/2-*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*N
_read_only_resource_inputs0
.,	
 !"#$%&'()*+,*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_sequential_14_layer_call_and_return_conditional_losses_67539o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapesu
s:���������  : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:d `
/
_output_shapes
:���������  
-
_user_specified_namesequential_15_input
�
�
Q__inference_batch_normalization_24_layer_call_and_return_conditional_losses_70651

inputs&
readvariableop_resource:	�(
readvariableop_1_resource:	�7
(fusedbatchnormv3_readvariableop_resource:	�9
*fusedbatchnormv3_readvariableop_1_resource:	�
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:�*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:�*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,����������������������������:�:�:�:�:*
epsilon%o�:*
is_training( ~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,�����������������������������
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,����������������������������: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,����������������������������
 
_user_specified_nameinputs
�
�
6__inference_batch_normalization_22_layer_call_fn_70327

inputs
unknown:<
	unknown_0:<
	unknown_1:<
	unknown_2:<
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������<*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_22_layer_call_and_return_conditional_losses_66529w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������<`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������<: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������<
 
_user_specified_nameinputs
�

�
D__inference_conv2d_17_layer_call_and_return_conditional_losses_70581

inputs9
conv2d_readvariableop_resource:x�.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:x�*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������h
IdentityIdentityBiasAdd:output:0^NoOp*
T0*0
_output_shapes
:����������w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������x: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������x
 
_user_specified_nameinputs
�
c
E__inference_dropout_11_layer_call_and_return_conditional_losses_67519

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:����������\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:����������"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�

-__inference_sequential_14_layer_call_fn_68556

inputs!
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:#
	unknown_5:!
	unknown_6:!
	unknown_7:!
	unknown_8:!
	unknown_9:!

unknown_10:!$

unknown_11:!7

unknown_12:7

unknown_13:7

unknown_14:7

unknown_15:7

unknown_16:7$

unknown_17:7<

unknown_18:<

unknown_19:<

unknown_20:<

unknown_21:<

unknown_22:<$

unknown_23:<x

unknown_24:x

unknown_25:x

unknown_26:x

unknown_27:x

unknown_28:x%

unknown_29:x�

unknown_30:	�

unknown_31:	�

unknown_32:	�

unknown_33:	�

unknown_34:	�

unknown_35:
�A�

unknown_36:	�

unknown_37:	�

unknown_38:	�

unknown_39:	�

unknown_40:	�

unknown_41:	�


unknown_42:

identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42*8
Tin1
/2-*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*N
_read_only_resource_inputs0
.,	
 !"#$%&'()*+,*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_sequential_14_layer_call_and_return_conditional_losses_67539o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapesu
s:���������  : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������  
 
_user_specified_nameinputs
�

�
B__inference_dense_5_layer_call_and_return_conditional_losses_67532

inputs1
matmul_readvariableop_resource:	�
-
biasadd_readvariableop_resource:

identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:���������
`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:���������
w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
'__inference_dense_4_layer_call_fn_69650

inputs
unknown:
�A�
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_dense_4_layer_call_and_return_conditional_losses_67492p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������A: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������A
 
_user_specified_nameinputs
�

d
E__inference_dropout_10_layer_call_and_return_conditional_losses_67705

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @m
dropout/MulMulinputsdropout/Const:output:0*
T0*0
_output_shapes
:����������C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*0
_output_shapes
:����������*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:����������x
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:����������r
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*0
_output_shapes
:����������b
IdentityIdentitydropout/Mul_1:z:0*
T0*0
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�

d
E__inference_dropout_10_layer_call_and_return_conditional_losses_69630

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @m
dropout/MulMulinputsdropout/Const:output:0*
T0*0
_output_shapes
:����������C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*0
_output_shapes
:����������*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:����������x
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:����������r
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*0
_output_shapes
:����������b
IdentityIdentitydropout/Mul_1:z:0*
T0*0
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�
D
(__inference_re_lu_19_layer_call_fn_69945

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������  * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_re_lu_19_layer_call_and_return_conditional_losses_65557h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:���������  "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������  :W S
/
_output_shapes
:���������  
 
_user_specified_nameinputs
�
�
Q__inference_batch_normalization_21_layer_call_and_return_conditional_losses_66152

inputs%
readvariableop_resource:7'
readvariableop_1_resource:76
(fusedbatchnormv3_readvariableop_resource:78
*fusedbatchnormv3_readvariableop_1_resource:7
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:7*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:7*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:7*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:7*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������7:7:7:7:7:*
epsilon%o�:*
is_training( k
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*/
_output_shapes
:���������7�
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������7: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:���������7
 
_user_specified_nameinputs
�
�
H__inference_sequential_15_layer_call_and_return_conditional_losses_69084

inputsB
(conv2d_12_conv2d_readvariableop_resource:7
)conv2d_12_biasadd_readvariableop_resource:<
.batch_normalization_19_readvariableop_resource:>
0batch_normalization_19_readvariableop_1_resource:M
?batch_normalization_19_fusedbatchnormv3_readvariableop_resource:O
Abatch_normalization_19_fusedbatchnormv3_readvariableop_1_resource:
identity��6batch_normalization_19/FusedBatchNormV3/ReadVariableOp�8batch_normalization_19/FusedBatchNormV3/ReadVariableOp_1�%batch_normalization_19/ReadVariableOp�'batch_normalization_19/ReadVariableOp_1� conv2d_12/BiasAdd/ReadVariableOp�conv2d_12/Conv2D/ReadVariableOp�
conv2d_12/Conv2D/ReadVariableOpReadVariableOp(conv2d_12_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
conv2d_12/Conv2DConv2Dinputs'conv2d_12/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������  *
paddingSAME*
strides
�
 conv2d_12/BiasAdd/ReadVariableOpReadVariableOp)conv2d_12_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv2d_12/BiasAddBiasAddconv2d_12/Conv2D:output:0(conv2d_12/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������  �
%batch_normalization_19/ReadVariableOpReadVariableOp.batch_normalization_19_readvariableop_resource*
_output_shapes
:*
dtype0�
'batch_normalization_19/ReadVariableOp_1ReadVariableOp0batch_normalization_19_readvariableop_1_resource*
_output_shapes
:*
dtype0�
6batch_normalization_19/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_19_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
8batch_normalization_19/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_19_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
'batch_normalization_19/FusedBatchNormV3FusedBatchNormV3conv2d_12/BiasAdd:output:0-batch_normalization_19/ReadVariableOp:value:0/batch_normalization_19/ReadVariableOp_1:value:0>batch_normalization_19/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_19/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������  :::::*
epsilon%o�:*
is_training( |
re_lu_19/ReluRelu+batch_normalization_19/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:���������  r
IdentityIdentityre_lu_19/Relu:activations:0^NoOp*
T0*/
_output_shapes
:���������  �
NoOpNoOp7^batch_normalization_19/FusedBatchNormV3/ReadVariableOp9^batch_normalization_19/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_19/ReadVariableOp(^batch_normalization_19/ReadVariableOp_1!^conv2d_12/BiasAdd/ReadVariableOp ^conv2d_12/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������  : : : : : : 2p
6batch_normalization_19/FusedBatchNormV3/ReadVariableOp6batch_normalization_19/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_19/FusedBatchNormV3/ReadVariableOp_18batch_normalization_19/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_19/ReadVariableOp%batch_normalization_19/ReadVariableOp2R
'batch_normalization_19/ReadVariableOp_1'batch_normalization_19/ReadVariableOp_12D
 conv2d_12/BiasAdd/ReadVariableOp conv2d_12/BiasAdd/ReadVariableOp2B
conv2d_12/Conv2D/ReadVariableOpconv2d_12/Conv2D/ReadVariableOp:W S
/
_output_shapes
:���������  
 
_user_specified_nameinputs
�
`
D__inference_flatten_2_layer_call_and_return_conditional_losses_69641

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"�����   ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:����������AY
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:����������A"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
Q__inference_batch_normalization_20_layer_call_and_return_conditional_losses_70039

inputs%
readvariableop_resource:!'
readvariableop_1_resource:!6
(fusedbatchnormv3_readvariableop_resource:!8
*fusedbatchnormv3_readvariableop_1_resource:!
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:!*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:!*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:!*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:!*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������!:!:!:!:!:*
epsilon%o�:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������!�
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������!: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������!
 
_user_specified_nameinputs
�

�
D__inference_conv2d_13_layer_call_and_return_conditional_losses_65824

inputs8
conv2d_readvariableop_resource:!-
biasadd_readvariableop_resource:!
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:!*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������!*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:!*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������!g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:���������!w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������  : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������  
 
_user_specified_nameinputs
�
�
Q__inference_batch_normalization_20_layer_call_and_return_conditional_losses_65919

inputs%
readvariableop_resource:!'
readvariableop_1_resource:!6
(fusedbatchnormv3_readvariableop_resource:!8
*fusedbatchnormv3_readvariableop_1_resource:!
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:!*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:!*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:!*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:!*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������!:!:!:!:!:*
epsilon%o�:*
exponential_avg_factor%
�#<�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0k
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*/
_output_shapes
:���������!�
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������!: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:���������!
 
_user_specified_nameinputs
�
_
C__inference_re_lu_21_layer_call_and_return_conditional_losses_66167

inputs
identityN
ReluReluinputs*
T0*/
_output_shapes
:���������7b
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:���������7"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������7:W S
/
_output_shapes
:���������7
 
_user_specified_nameinputs
�
_
C__inference_re_lu_19_layer_call_and_return_conditional_losses_69950

inputs
identityN
ReluReluinputs*
T0*/
_output_shapes
:���������  b
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:���������  "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������  :W S
/
_output_shapes
:���������  
 
_user_specified_nameinputs
�
b
)__inference_dropout_8_layer_call_fn_69203

inputs
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������!* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dropout_8_layer_call_and_return_conditional_losses_67756w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������!`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������!22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������!
 
_user_specified_nameinputs
�
�
Q__inference_batch_normalization_21_layer_call_and_return_conditional_losses_66070

inputs%
readvariableop_resource:7'
readvariableop_1_resource:76
(fusedbatchnormv3_readvariableop_resource:78
*fusedbatchnormv3_readvariableop_1_resource:7
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:7*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:7*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:7*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:7*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������7:7:7:7:7:*
epsilon%o�:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������7�
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������7: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������7
 
_user_specified_nameinputs
�	
�
6__inference_batch_normalization_20_layer_call_fn_69995

inputs
unknown:!
	unknown_0:!
	unknown_1:!
	unknown_2:!
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������!*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_20_layer_call_and_return_conditional_losses_65796�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������!`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������!: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+���������������������������!
 
_user_specified_nameinputs
�
f
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_67465

inputs
identity�
MaxPoolMaxPoolinputs*0
_output_shapes
:����������*
ksize
*
paddingVALID*
strides
a
IdentityIdentityMaxPool:output:0*
T0*0
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
Q__inference_batch_normalization_22_layer_call_and_return_conditional_losses_66406

inputs%
readvariableop_resource:<'
readvariableop_1_resource:<6
(fusedbatchnormv3_readvariableop_resource:<8
*fusedbatchnormv3_readvariableop_1_resource:<
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:<*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:<*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:<*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:<*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������<:<:<:<:<:*
epsilon%o�:*
exponential_avg_factor%
�#<�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������<�
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������<: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������<
 
_user_specified_nameinputs
�%
�
H__inference_sequential_19_layer_call_and_return_conditional_losses_69499

inputsB
(conv2d_16_conv2d_readvariableop_resource:<x7
)conv2d_16_biasadd_readvariableop_resource:x<
.batch_normalization_23_readvariableop_resource:x>
0batch_normalization_23_readvariableop_1_resource:xM
?batch_normalization_23_fusedbatchnormv3_readvariableop_resource:xO
Abatch_normalization_23_fusedbatchnormv3_readvariableop_1_resource:x
identity��%batch_normalization_23/AssignNewValue�'batch_normalization_23/AssignNewValue_1�6batch_normalization_23/FusedBatchNormV3/ReadVariableOp�8batch_normalization_23/FusedBatchNormV3/ReadVariableOp_1�%batch_normalization_23/ReadVariableOp�'batch_normalization_23/ReadVariableOp_1� conv2d_16/BiasAdd/ReadVariableOp�conv2d_16/Conv2D/ReadVariableOp�
conv2d_16/Conv2D/ReadVariableOpReadVariableOp(conv2d_16_conv2d_readvariableop_resource*&
_output_shapes
:<x*
dtype0�
conv2d_16/Conv2DConv2Dinputs'conv2d_16/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������x*
paddingSAME*
strides
�
 conv2d_16/BiasAdd/ReadVariableOpReadVariableOp)conv2d_16_biasadd_readvariableop_resource*
_output_shapes
:x*
dtype0�
conv2d_16/BiasAddBiasAddconv2d_16/Conv2D:output:0(conv2d_16/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������x�
%batch_normalization_23/ReadVariableOpReadVariableOp.batch_normalization_23_readvariableop_resource*
_output_shapes
:x*
dtype0�
'batch_normalization_23/ReadVariableOp_1ReadVariableOp0batch_normalization_23_readvariableop_1_resource*
_output_shapes
:x*
dtype0�
6batch_normalization_23/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_23_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:x*
dtype0�
8batch_normalization_23/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_23_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:x*
dtype0�
'batch_normalization_23/FusedBatchNormV3FusedBatchNormV3conv2d_16/BiasAdd:output:0-batch_normalization_23/ReadVariableOp:value:0/batch_normalization_23/ReadVariableOp_1:value:0>batch_normalization_23/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_23/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������x:x:x:x:x:*
epsilon%o�:*
exponential_avg_factor%
�#<�
%batch_normalization_23/AssignNewValueAssignVariableOp?batch_normalization_23_fusedbatchnormv3_readvariableop_resource4batch_normalization_23/FusedBatchNormV3:batch_mean:07^batch_normalization_23/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0�
'batch_normalization_23/AssignNewValue_1AssignVariableOpAbatch_normalization_23_fusedbatchnormv3_readvariableop_1_resource8batch_normalization_23/FusedBatchNormV3:batch_variance:09^batch_normalization_23/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0|
re_lu_23/ReluRelu+batch_normalization_23/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:���������xr
IdentityIdentityre_lu_23/Relu:activations:0^NoOp*
T0*/
_output_shapes
:���������x�
NoOpNoOp&^batch_normalization_23/AssignNewValue(^batch_normalization_23/AssignNewValue_17^batch_normalization_23/FusedBatchNormV3/ReadVariableOp9^batch_normalization_23/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_23/ReadVariableOp(^batch_normalization_23/ReadVariableOp_1!^conv2d_16/BiasAdd/ReadVariableOp ^conv2d_16/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������<: : : : : : 2N
%batch_normalization_23/AssignNewValue%batch_normalization_23/AssignNewValue2R
'batch_normalization_23/AssignNewValue_1'batch_normalization_23/AssignNewValue_12p
6batch_normalization_23/FusedBatchNormV3/ReadVariableOp6batch_normalization_23/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_23/FusedBatchNormV3/ReadVariableOp_18batch_normalization_23/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_23/ReadVariableOp%batch_normalization_23/ReadVariableOp2R
'batch_normalization_23/ReadVariableOp_1'batch_normalization_23/ReadVariableOp_12D
 conv2d_16/BiasAdd/ReadVariableOp conv2d_16/BiasAdd/ReadVariableOp2B
conv2d_16/Conv2D/ReadVariableOpconv2d_16/Conv2D/ReadVariableOp:W S
/
_output_shapes
:���������<
 
_user_specified_nameinputs
��
�/
H__inference_sequential_14_layer_call_and_return_conditional_losses_68816

inputsP
6sequential_15_conv2d_12_conv2d_readvariableop_resource:E
7sequential_15_conv2d_12_biasadd_readvariableop_resource:J
<sequential_15_batch_normalization_19_readvariableop_resource:L
>sequential_15_batch_normalization_19_readvariableop_1_resource:[
Msequential_15_batch_normalization_19_fusedbatchnormv3_readvariableop_resource:]
Osequential_15_batch_normalization_19_fusedbatchnormv3_readvariableop_1_resource:P
6sequential_16_conv2d_13_conv2d_readvariableop_resource:!E
7sequential_16_conv2d_13_biasadd_readvariableop_resource:!J
<sequential_16_batch_normalization_20_readvariableop_resource:!L
>sequential_16_batch_normalization_20_readvariableop_1_resource:![
Msequential_16_batch_normalization_20_fusedbatchnormv3_readvariableop_resource:!]
Osequential_16_batch_normalization_20_fusedbatchnormv3_readvariableop_1_resource:!P
6sequential_17_conv2d_14_conv2d_readvariableop_resource:!7E
7sequential_17_conv2d_14_biasadd_readvariableop_resource:7J
<sequential_17_batch_normalization_21_readvariableop_resource:7L
>sequential_17_batch_normalization_21_readvariableop_1_resource:7[
Msequential_17_batch_normalization_21_fusedbatchnormv3_readvariableop_resource:7]
Osequential_17_batch_normalization_21_fusedbatchnormv3_readvariableop_1_resource:7P
6sequential_18_conv2d_15_conv2d_readvariableop_resource:7<E
7sequential_18_conv2d_15_biasadd_readvariableop_resource:<J
<sequential_18_batch_normalization_22_readvariableop_resource:<L
>sequential_18_batch_normalization_22_readvariableop_1_resource:<[
Msequential_18_batch_normalization_22_fusedbatchnormv3_readvariableop_resource:<]
Osequential_18_batch_normalization_22_fusedbatchnormv3_readvariableop_1_resource:<P
6sequential_19_conv2d_16_conv2d_readvariableop_resource:<xE
7sequential_19_conv2d_16_biasadd_readvariableop_resource:xJ
<sequential_19_batch_normalization_23_readvariableop_resource:xL
>sequential_19_batch_normalization_23_readvariableop_1_resource:x[
Msequential_19_batch_normalization_23_fusedbatchnormv3_readvariableop_resource:x]
Osequential_19_batch_normalization_23_fusedbatchnormv3_readvariableop_1_resource:xQ
6sequential_20_conv2d_17_conv2d_readvariableop_resource:x�F
7sequential_20_conv2d_17_biasadd_readvariableop_resource:	�K
<sequential_20_batch_normalization_24_readvariableop_resource:	�M
>sequential_20_batch_normalization_24_readvariableop_1_resource:	�\
Msequential_20_batch_normalization_24_fusedbatchnormv3_readvariableop_resource:	�^
Osequential_20_batch_normalization_24_fusedbatchnormv3_readvariableop_1_resource:	�:
&dense_4_matmul_readvariableop_resource:
�A�6
'dense_4_biasadd_readvariableop_resource:	�G
8batch_normalization_25_batchnorm_readvariableop_resource:	�K
<batch_normalization_25_batchnorm_mul_readvariableop_resource:	�I
:batch_normalization_25_batchnorm_readvariableop_1_resource:	�I
:batch_normalization_25_batchnorm_readvariableop_2_resource:	�9
&dense_5_matmul_readvariableop_resource:	�
5
'dense_5_biasadd_readvariableop_resource:

identity��/batch_normalization_25/batchnorm/ReadVariableOp�1batch_normalization_25/batchnorm/ReadVariableOp_1�1batch_normalization_25/batchnorm/ReadVariableOp_2�3batch_normalization_25/batchnorm/mul/ReadVariableOp�dense_4/BiasAdd/ReadVariableOp�dense_4/MatMul/ReadVariableOp�dense_5/BiasAdd/ReadVariableOp�dense_5/MatMul/ReadVariableOp�Dsequential_15/batch_normalization_19/FusedBatchNormV3/ReadVariableOp�Fsequential_15/batch_normalization_19/FusedBatchNormV3/ReadVariableOp_1�3sequential_15/batch_normalization_19/ReadVariableOp�5sequential_15/batch_normalization_19/ReadVariableOp_1�.sequential_15/conv2d_12/BiasAdd/ReadVariableOp�-sequential_15/conv2d_12/Conv2D/ReadVariableOp�Dsequential_16/batch_normalization_20/FusedBatchNormV3/ReadVariableOp�Fsequential_16/batch_normalization_20/FusedBatchNormV3/ReadVariableOp_1�3sequential_16/batch_normalization_20/ReadVariableOp�5sequential_16/batch_normalization_20/ReadVariableOp_1�.sequential_16/conv2d_13/BiasAdd/ReadVariableOp�-sequential_16/conv2d_13/Conv2D/ReadVariableOp�Dsequential_17/batch_normalization_21/FusedBatchNormV3/ReadVariableOp�Fsequential_17/batch_normalization_21/FusedBatchNormV3/ReadVariableOp_1�3sequential_17/batch_normalization_21/ReadVariableOp�5sequential_17/batch_normalization_21/ReadVariableOp_1�.sequential_17/conv2d_14/BiasAdd/ReadVariableOp�-sequential_17/conv2d_14/Conv2D/ReadVariableOp�Dsequential_18/batch_normalization_22/FusedBatchNormV3/ReadVariableOp�Fsequential_18/batch_normalization_22/FusedBatchNormV3/ReadVariableOp_1�3sequential_18/batch_normalization_22/ReadVariableOp�5sequential_18/batch_normalization_22/ReadVariableOp_1�.sequential_18/conv2d_15/BiasAdd/ReadVariableOp�-sequential_18/conv2d_15/Conv2D/ReadVariableOp�Dsequential_19/batch_normalization_23/FusedBatchNormV3/ReadVariableOp�Fsequential_19/batch_normalization_23/FusedBatchNormV3/ReadVariableOp_1�3sequential_19/batch_normalization_23/ReadVariableOp�5sequential_19/batch_normalization_23/ReadVariableOp_1�.sequential_19/conv2d_16/BiasAdd/ReadVariableOp�-sequential_19/conv2d_16/Conv2D/ReadVariableOp�Dsequential_20/batch_normalization_24/FusedBatchNormV3/ReadVariableOp�Fsequential_20/batch_normalization_24/FusedBatchNormV3/ReadVariableOp_1�3sequential_20/batch_normalization_24/ReadVariableOp�5sequential_20/batch_normalization_24/ReadVariableOp_1�.sequential_20/conv2d_17/BiasAdd/ReadVariableOp�-sequential_20/conv2d_17/Conv2D/ReadVariableOp�
-sequential_15/conv2d_12/Conv2D/ReadVariableOpReadVariableOp6sequential_15_conv2d_12_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
sequential_15/conv2d_12/Conv2DConv2Dinputs5sequential_15/conv2d_12/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������  *
paddingSAME*
strides
�
.sequential_15/conv2d_12/BiasAdd/ReadVariableOpReadVariableOp7sequential_15_conv2d_12_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
sequential_15/conv2d_12/BiasAddBiasAdd'sequential_15/conv2d_12/Conv2D:output:06sequential_15/conv2d_12/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������  �
3sequential_15/batch_normalization_19/ReadVariableOpReadVariableOp<sequential_15_batch_normalization_19_readvariableop_resource*
_output_shapes
:*
dtype0�
5sequential_15/batch_normalization_19/ReadVariableOp_1ReadVariableOp>sequential_15_batch_normalization_19_readvariableop_1_resource*
_output_shapes
:*
dtype0�
Dsequential_15/batch_normalization_19/FusedBatchNormV3/ReadVariableOpReadVariableOpMsequential_15_batch_normalization_19_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
Fsequential_15/batch_normalization_19/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpOsequential_15_batch_normalization_19_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
5sequential_15/batch_normalization_19/FusedBatchNormV3FusedBatchNormV3(sequential_15/conv2d_12/BiasAdd:output:0;sequential_15/batch_normalization_19/ReadVariableOp:value:0=sequential_15/batch_normalization_19/ReadVariableOp_1:value:0Lsequential_15/batch_normalization_19/FusedBatchNormV3/ReadVariableOp:value:0Nsequential_15/batch_normalization_19/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������  :::::*
epsilon%o�:*
is_training( �
sequential_15/re_lu_19/ReluRelu9sequential_15/batch_normalization_19/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:���������  �
-sequential_16/conv2d_13/Conv2D/ReadVariableOpReadVariableOp6sequential_16_conv2d_13_conv2d_readvariableop_resource*&
_output_shapes
:!*
dtype0�
sequential_16/conv2d_13/Conv2DConv2D)sequential_15/re_lu_19/Relu:activations:05sequential_16/conv2d_13/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������!*
paddingSAME*
strides
�
.sequential_16/conv2d_13/BiasAdd/ReadVariableOpReadVariableOp7sequential_16_conv2d_13_biasadd_readvariableop_resource*
_output_shapes
:!*
dtype0�
sequential_16/conv2d_13/BiasAddBiasAdd'sequential_16/conv2d_13/Conv2D:output:06sequential_16/conv2d_13/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������!�
3sequential_16/batch_normalization_20/ReadVariableOpReadVariableOp<sequential_16_batch_normalization_20_readvariableop_resource*
_output_shapes
:!*
dtype0�
5sequential_16/batch_normalization_20/ReadVariableOp_1ReadVariableOp>sequential_16_batch_normalization_20_readvariableop_1_resource*
_output_shapes
:!*
dtype0�
Dsequential_16/batch_normalization_20/FusedBatchNormV3/ReadVariableOpReadVariableOpMsequential_16_batch_normalization_20_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:!*
dtype0�
Fsequential_16/batch_normalization_20/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpOsequential_16_batch_normalization_20_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:!*
dtype0�
5sequential_16/batch_normalization_20/FusedBatchNormV3FusedBatchNormV3(sequential_16/conv2d_13/BiasAdd:output:0;sequential_16/batch_normalization_20/ReadVariableOp:value:0=sequential_16/batch_normalization_20/ReadVariableOp_1:value:0Lsequential_16/batch_normalization_20/FusedBatchNormV3/ReadVariableOp:value:0Nsequential_16/batch_normalization_20/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������!:!:!:!:!:*
epsilon%o�:*
is_training( �
sequential_16/re_lu_20/ReluRelu9sequential_16/batch_normalization_20/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:���������!�
dropout_8/IdentityIdentity)sequential_16/re_lu_20/Relu:activations:0*
T0*/
_output_shapes
:���������!�
-sequential_17/conv2d_14/Conv2D/ReadVariableOpReadVariableOp6sequential_17_conv2d_14_conv2d_readvariableop_resource*&
_output_shapes
:!7*
dtype0�
sequential_17/conv2d_14/Conv2DConv2Ddropout_8/Identity:output:05sequential_17/conv2d_14/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������7*
paddingSAME*
strides
�
.sequential_17/conv2d_14/BiasAdd/ReadVariableOpReadVariableOp7sequential_17_conv2d_14_biasadd_readvariableop_resource*
_output_shapes
:7*
dtype0�
sequential_17/conv2d_14/BiasAddBiasAdd'sequential_17/conv2d_14/Conv2D:output:06sequential_17/conv2d_14/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������7�
3sequential_17/batch_normalization_21/ReadVariableOpReadVariableOp<sequential_17_batch_normalization_21_readvariableop_resource*
_output_shapes
:7*
dtype0�
5sequential_17/batch_normalization_21/ReadVariableOp_1ReadVariableOp>sequential_17_batch_normalization_21_readvariableop_1_resource*
_output_shapes
:7*
dtype0�
Dsequential_17/batch_normalization_21/FusedBatchNormV3/ReadVariableOpReadVariableOpMsequential_17_batch_normalization_21_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:7*
dtype0�
Fsequential_17/batch_normalization_21/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpOsequential_17_batch_normalization_21_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:7*
dtype0�
5sequential_17/batch_normalization_21/FusedBatchNormV3FusedBatchNormV3(sequential_17/conv2d_14/BiasAdd:output:0;sequential_17/batch_normalization_21/ReadVariableOp:value:0=sequential_17/batch_normalization_21/ReadVariableOp_1:value:0Lsequential_17/batch_normalization_21/FusedBatchNormV3/ReadVariableOp:value:0Nsequential_17/batch_normalization_21/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������7:7:7:7:7:*
epsilon%o�:*
is_training( �
sequential_17/re_lu_21/ReluRelu9sequential_17/batch_normalization_21/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:���������7�
-sequential_18/conv2d_15/Conv2D/ReadVariableOpReadVariableOp6sequential_18_conv2d_15_conv2d_readvariableop_resource*&
_output_shapes
:7<*
dtype0�
sequential_18/conv2d_15/Conv2DConv2D)sequential_17/re_lu_21/Relu:activations:05sequential_18/conv2d_15/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������<*
paddingSAME*
strides
�
.sequential_18/conv2d_15/BiasAdd/ReadVariableOpReadVariableOp7sequential_18_conv2d_15_biasadd_readvariableop_resource*
_output_shapes
:<*
dtype0�
sequential_18/conv2d_15/BiasAddBiasAdd'sequential_18/conv2d_15/Conv2D:output:06sequential_18/conv2d_15/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������<�
3sequential_18/batch_normalization_22/ReadVariableOpReadVariableOp<sequential_18_batch_normalization_22_readvariableop_resource*
_output_shapes
:<*
dtype0�
5sequential_18/batch_normalization_22/ReadVariableOp_1ReadVariableOp>sequential_18_batch_normalization_22_readvariableop_1_resource*
_output_shapes
:<*
dtype0�
Dsequential_18/batch_normalization_22/FusedBatchNormV3/ReadVariableOpReadVariableOpMsequential_18_batch_normalization_22_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:<*
dtype0�
Fsequential_18/batch_normalization_22/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpOsequential_18_batch_normalization_22_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:<*
dtype0�
5sequential_18/batch_normalization_22/FusedBatchNormV3FusedBatchNormV3(sequential_18/conv2d_15/BiasAdd:output:0;sequential_18/batch_normalization_22/ReadVariableOp:value:0=sequential_18/batch_normalization_22/ReadVariableOp_1:value:0Lsequential_18/batch_normalization_22/FusedBatchNormV3/ReadVariableOp:value:0Nsequential_18/batch_normalization_22/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������<:<:<:<:<:*
epsilon%o�:*
is_training( �
sequential_18/re_lu_22/ReluRelu9sequential_18/batch_normalization_22/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:���������<�
dropout_9/IdentityIdentity)sequential_18/re_lu_22/Relu:activations:0*
T0*/
_output_shapes
:���������<�
-sequential_19/conv2d_16/Conv2D/ReadVariableOpReadVariableOp6sequential_19_conv2d_16_conv2d_readvariableop_resource*&
_output_shapes
:<x*
dtype0�
sequential_19/conv2d_16/Conv2DConv2Ddropout_9/Identity:output:05sequential_19/conv2d_16/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������x*
paddingSAME*
strides
�
.sequential_19/conv2d_16/BiasAdd/ReadVariableOpReadVariableOp7sequential_19_conv2d_16_biasadd_readvariableop_resource*
_output_shapes
:x*
dtype0�
sequential_19/conv2d_16/BiasAddBiasAdd'sequential_19/conv2d_16/Conv2D:output:06sequential_19/conv2d_16/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������x�
3sequential_19/batch_normalization_23/ReadVariableOpReadVariableOp<sequential_19_batch_normalization_23_readvariableop_resource*
_output_shapes
:x*
dtype0�
5sequential_19/batch_normalization_23/ReadVariableOp_1ReadVariableOp>sequential_19_batch_normalization_23_readvariableop_1_resource*
_output_shapes
:x*
dtype0�
Dsequential_19/batch_normalization_23/FusedBatchNormV3/ReadVariableOpReadVariableOpMsequential_19_batch_normalization_23_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:x*
dtype0�
Fsequential_19/batch_normalization_23/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpOsequential_19_batch_normalization_23_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:x*
dtype0�
5sequential_19/batch_normalization_23/FusedBatchNormV3FusedBatchNormV3(sequential_19/conv2d_16/BiasAdd:output:0;sequential_19/batch_normalization_23/ReadVariableOp:value:0=sequential_19/batch_normalization_23/ReadVariableOp_1:value:0Lsequential_19/batch_normalization_23/FusedBatchNormV3/ReadVariableOp:value:0Nsequential_19/batch_normalization_23/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������x:x:x:x:x:*
epsilon%o�:*
is_training( �
sequential_19/re_lu_23/ReluRelu9sequential_19/batch_normalization_23/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:���������x�
-sequential_20/conv2d_17/Conv2D/ReadVariableOpReadVariableOp6sequential_20_conv2d_17_conv2d_readvariableop_resource*'
_output_shapes
:x�*
dtype0�
sequential_20/conv2d_17/Conv2DConv2D)sequential_19/re_lu_23/Relu:activations:05sequential_20/conv2d_17/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
�
.sequential_20/conv2d_17/BiasAdd/ReadVariableOpReadVariableOp7sequential_20_conv2d_17_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
sequential_20/conv2d_17/BiasAddBiasAdd'sequential_20/conv2d_17/Conv2D:output:06sequential_20/conv2d_17/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:�����������
3sequential_20/batch_normalization_24/ReadVariableOpReadVariableOp<sequential_20_batch_normalization_24_readvariableop_resource*
_output_shapes	
:�*
dtype0�
5sequential_20/batch_normalization_24/ReadVariableOp_1ReadVariableOp>sequential_20_batch_normalization_24_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
Dsequential_20/batch_normalization_24/FusedBatchNormV3/ReadVariableOpReadVariableOpMsequential_20_batch_normalization_24_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype0�
Fsequential_20/batch_normalization_24/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpOsequential_20_batch_normalization_24_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
5sequential_20/batch_normalization_24/FusedBatchNormV3FusedBatchNormV3(sequential_20/conv2d_17/BiasAdd:output:0;sequential_20/batch_normalization_24/ReadVariableOp:value:0=sequential_20/batch_normalization_24/ReadVariableOp_1:value:0Lsequential_20/batch_normalization_24/FusedBatchNormV3/ReadVariableOp:value:0Nsequential_20/batch_normalization_24/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:����������:�:�:�:�:*
epsilon%o�:*
is_training( �
sequential_20/re_lu_24/ReluRelu9sequential_20/batch_normalization_24/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:�����������
max_pooling2d_2/MaxPoolMaxPool)sequential_20/re_lu_24/Relu:activations:0*0
_output_shapes
:����������*
ksize
*
paddingVALID*
strides
|
dropout_10/IdentityIdentity max_pooling2d_2/MaxPool:output:0*
T0*0
_output_shapes
:����������`
flatten_2/ConstConst*
_output_shapes
:*
dtype0*
valueB"�����   �
flatten_2/ReshapeReshapedropout_10/Identity:output:0flatten_2/Const:output:0*
T0*(
_output_shapes
:����������A�
dense_4/MatMul/ReadVariableOpReadVariableOp&dense_4_matmul_readvariableop_resource* 
_output_shapes
:
�A�*
dtype0�
dense_4/MatMulMatMulflatten_2/Reshape:output:0%dense_4/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
dense_4/BiasAdd/ReadVariableOpReadVariableOp'dense_4_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
dense_4/BiasAddBiasAdddense_4/MatMul:product:0&dense_4/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
/batch_normalization_25/batchnorm/ReadVariableOpReadVariableOp8batch_normalization_25_batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0k
&batch_normalization_25/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
$batch_normalization_25/batchnorm/addAddV27batch_normalization_25/batchnorm/ReadVariableOp:value:0/batch_normalization_25/batchnorm/add/y:output:0*
T0*
_output_shapes	
:�
&batch_normalization_25/batchnorm/RsqrtRsqrt(batch_normalization_25/batchnorm/add:z:0*
T0*
_output_shapes	
:��
3batch_normalization_25/batchnorm/mul/ReadVariableOpReadVariableOp<batch_normalization_25_batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0�
$batch_normalization_25/batchnorm/mulMul*batch_normalization_25/batchnorm/Rsqrt:y:0;batch_normalization_25/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:��
&batch_normalization_25/batchnorm/mul_1Muldense_4/BiasAdd:output:0(batch_normalization_25/batchnorm/mul:z:0*
T0*(
_output_shapes
:�����������
1batch_normalization_25/batchnorm/ReadVariableOp_1ReadVariableOp:batch_normalization_25_batchnorm_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
&batch_normalization_25/batchnorm/mul_2Mul9batch_normalization_25/batchnorm/ReadVariableOp_1:value:0(batch_normalization_25/batchnorm/mul:z:0*
T0*
_output_shapes	
:��
1batch_normalization_25/batchnorm/ReadVariableOp_2ReadVariableOp:batch_normalization_25_batchnorm_readvariableop_2_resource*
_output_shapes	
:�*
dtype0�
$batch_normalization_25/batchnorm/subSub9batch_normalization_25/batchnorm/ReadVariableOp_2:value:0*batch_normalization_25/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:��
&batch_normalization_25/batchnorm/add_1AddV2*batch_normalization_25/batchnorm/mul_1:z:0(batch_normalization_25/batchnorm/sub:z:0*
T0*(
_output_shapes
:����������t
re_lu_25/ReluRelu*batch_normalization_25/batchnorm/add_1:z:0*
T0*(
_output_shapes
:����������o
dropout_11/IdentityIdentityre_lu_25/Relu:activations:0*
T0*(
_output_shapes
:�����������
dense_5/MatMul/ReadVariableOpReadVariableOp&dense_5_matmul_readvariableop_resource*
_output_shapes
:	�
*
dtype0�
dense_5/MatMulMatMuldropout_11/Identity:output:0%dense_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
�
dense_5/BiasAdd/ReadVariableOpReadVariableOp'dense_5_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype0�
dense_5/BiasAddBiasAdddense_5/MatMul:product:0&dense_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
f
dense_5/SoftmaxSoftmaxdense_5/BiasAdd:output:0*
T0*'
_output_shapes
:���������
h
IdentityIdentitydense_5/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:���������
�
NoOpNoOp0^batch_normalization_25/batchnorm/ReadVariableOp2^batch_normalization_25/batchnorm/ReadVariableOp_12^batch_normalization_25/batchnorm/ReadVariableOp_24^batch_normalization_25/batchnorm/mul/ReadVariableOp^dense_4/BiasAdd/ReadVariableOp^dense_4/MatMul/ReadVariableOp^dense_5/BiasAdd/ReadVariableOp^dense_5/MatMul/ReadVariableOpE^sequential_15/batch_normalization_19/FusedBatchNormV3/ReadVariableOpG^sequential_15/batch_normalization_19/FusedBatchNormV3/ReadVariableOp_14^sequential_15/batch_normalization_19/ReadVariableOp6^sequential_15/batch_normalization_19/ReadVariableOp_1/^sequential_15/conv2d_12/BiasAdd/ReadVariableOp.^sequential_15/conv2d_12/Conv2D/ReadVariableOpE^sequential_16/batch_normalization_20/FusedBatchNormV3/ReadVariableOpG^sequential_16/batch_normalization_20/FusedBatchNormV3/ReadVariableOp_14^sequential_16/batch_normalization_20/ReadVariableOp6^sequential_16/batch_normalization_20/ReadVariableOp_1/^sequential_16/conv2d_13/BiasAdd/ReadVariableOp.^sequential_16/conv2d_13/Conv2D/ReadVariableOpE^sequential_17/batch_normalization_21/FusedBatchNormV3/ReadVariableOpG^sequential_17/batch_normalization_21/FusedBatchNormV3/ReadVariableOp_14^sequential_17/batch_normalization_21/ReadVariableOp6^sequential_17/batch_normalization_21/ReadVariableOp_1/^sequential_17/conv2d_14/BiasAdd/ReadVariableOp.^sequential_17/conv2d_14/Conv2D/ReadVariableOpE^sequential_18/batch_normalization_22/FusedBatchNormV3/ReadVariableOpG^sequential_18/batch_normalization_22/FusedBatchNormV3/ReadVariableOp_14^sequential_18/batch_normalization_22/ReadVariableOp6^sequential_18/batch_normalization_22/ReadVariableOp_1/^sequential_18/conv2d_15/BiasAdd/ReadVariableOp.^sequential_18/conv2d_15/Conv2D/ReadVariableOpE^sequential_19/batch_normalization_23/FusedBatchNormV3/ReadVariableOpG^sequential_19/batch_normalization_23/FusedBatchNormV3/ReadVariableOp_14^sequential_19/batch_normalization_23/ReadVariableOp6^sequential_19/batch_normalization_23/ReadVariableOp_1/^sequential_19/conv2d_16/BiasAdd/ReadVariableOp.^sequential_19/conv2d_16/Conv2D/ReadVariableOpE^sequential_20/batch_normalization_24/FusedBatchNormV3/ReadVariableOpG^sequential_20/batch_normalization_24/FusedBatchNormV3/ReadVariableOp_14^sequential_20/batch_normalization_24/ReadVariableOp6^sequential_20/batch_normalization_24/ReadVariableOp_1/^sequential_20/conv2d_17/BiasAdd/ReadVariableOp.^sequential_20/conv2d_17/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapesu
s:���������  : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2b
/batch_normalization_25/batchnorm/ReadVariableOp/batch_normalization_25/batchnorm/ReadVariableOp2f
1batch_normalization_25/batchnorm/ReadVariableOp_11batch_normalization_25/batchnorm/ReadVariableOp_12f
1batch_normalization_25/batchnorm/ReadVariableOp_21batch_normalization_25/batchnorm/ReadVariableOp_22j
3batch_normalization_25/batchnorm/mul/ReadVariableOp3batch_normalization_25/batchnorm/mul/ReadVariableOp2@
dense_4/BiasAdd/ReadVariableOpdense_4/BiasAdd/ReadVariableOp2>
dense_4/MatMul/ReadVariableOpdense_4/MatMul/ReadVariableOp2@
dense_5/BiasAdd/ReadVariableOpdense_5/BiasAdd/ReadVariableOp2>
dense_5/MatMul/ReadVariableOpdense_5/MatMul/ReadVariableOp2�
Dsequential_15/batch_normalization_19/FusedBatchNormV3/ReadVariableOpDsequential_15/batch_normalization_19/FusedBatchNormV3/ReadVariableOp2�
Fsequential_15/batch_normalization_19/FusedBatchNormV3/ReadVariableOp_1Fsequential_15/batch_normalization_19/FusedBatchNormV3/ReadVariableOp_12j
3sequential_15/batch_normalization_19/ReadVariableOp3sequential_15/batch_normalization_19/ReadVariableOp2n
5sequential_15/batch_normalization_19/ReadVariableOp_15sequential_15/batch_normalization_19/ReadVariableOp_12`
.sequential_15/conv2d_12/BiasAdd/ReadVariableOp.sequential_15/conv2d_12/BiasAdd/ReadVariableOp2^
-sequential_15/conv2d_12/Conv2D/ReadVariableOp-sequential_15/conv2d_12/Conv2D/ReadVariableOp2�
Dsequential_16/batch_normalization_20/FusedBatchNormV3/ReadVariableOpDsequential_16/batch_normalization_20/FusedBatchNormV3/ReadVariableOp2�
Fsequential_16/batch_normalization_20/FusedBatchNormV3/ReadVariableOp_1Fsequential_16/batch_normalization_20/FusedBatchNormV3/ReadVariableOp_12j
3sequential_16/batch_normalization_20/ReadVariableOp3sequential_16/batch_normalization_20/ReadVariableOp2n
5sequential_16/batch_normalization_20/ReadVariableOp_15sequential_16/batch_normalization_20/ReadVariableOp_12`
.sequential_16/conv2d_13/BiasAdd/ReadVariableOp.sequential_16/conv2d_13/BiasAdd/ReadVariableOp2^
-sequential_16/conv2d_13/Conv2D/ReadVariableOp-sequential_16/conv2d_13/Conv2D/ReadVariableOp2�
Dsequential_17/batch_normalization_21/FusedBatchNormV3/ReadVariableOpDsequential_17/batch_normalization_21/FusedBatchNormV3/ReadVariableOp2�
Fsequential_17/batch_normalization_21/FusedBatchNormV3/ReadVariableOp_1Fsequential_17/batch_normalization_21/FusedBatchNormV3/ReadVariableOp_12j
3sequential_17/batch_normalization_21/ReadVariableOp3sequential_17/batch_normalization_21/ReadVariableOp2n
5sequential_17/batch_normalization_21/ReadVariableOp_15sequential_17/batch_normalization_21/ReadVariableOp_12`
.sequential_17/conv2d_14/BiasAdd/ReadVariableOp.sequential_17/conv2d_14/BiasAdd/ReadVariableOp2^
-sequential_17/conv2d_14/Conv2D/ReadVariableOp-sequential_17/conv2d_14/Conv2D/ReadVariableOp2�
Dsequential_18/batch_normalization_22/FusedBatchNormV3/ReadVariableOpDsequential_18/batch_normalization_22/FusedBatchNormV3/ReadVariableOp2�
Fsequential_18/batch_normalization_22/FusedBatchNormV3/ReadVariableOp_1Fsequential_18/batch_normalization_22/FusedBatchNormV3/ReadVariableOp_12j
3sequential_18/batch_normalization_22/ReadVariableOp3sequential_18/batch_normalization_22/ReadVariableOp2n
5sequential_18/batch_normalization_22/ReadVariableOp_15sequential_18/batch_normalization_22/ReadVariableOp_12`
.sequential_18/conv2d_15/BiasAdd/ReadVariableOp.sequential_18/conv2d_15/BiasAdd/ReadVariableOp2^
-sequential_18/conv2d_15/Conv2D/ReadVariableOp-sequential_18/conv2d_15/Conv2D/ReadVariableOp2�
Dsequential_19/batch_normalization_23/FusedBatchNormV3/ReadVariableOpDsequential_19/batch_normalization_23/FusedBatchNormV3/ReadVariableOp2�
Fsequential_19/batch_normalization_23/FusedBatchNormV3/ReadVariableOp_1Fsequential_19/batch_normalization_23/FusedBatchNormV3/ReadVariableOp_12j
3sequential_19/batch_normalization_23/ReadVariableOp3sequential_19/batch_normalization_23/ReadVariableOp2n
5sequential_19/batch_normalization_23/ReadVariableOp_15sequential_19/batch_normalization_23/ReadVariableOp_12`
.sequential_19/conv2d_16/BiasAdd/ReadVariableOp.sequential_19/conv2d_16/BiasAdd/ReadVariableOp2^
-sequential_19/conv2d_16/Conv2D/ReadVariableOp-sequential_19/conv2d_16/Conv2D/ReadVariableOp2�
Dsequential_20/batch_normalization_24/FusedBatchNormV3/ReadVariableOpDsequential_20/batch_normalization_24/FusedBatchNormV3/ReadVariableOp2�
Fsequential_20/batch_normalization_24/FusedBatchNormV3/ReadVariableOp_1Fsequential_20/batch_normalization_24/FusedBatchNormV3/ReadVariableOp_12j
3sequential_20/batch_normalization_24/ReadVariableOp3sequential_20/batch_normalization_24/ReadVariableOp2n
5sequential_20/batch_normalization_24/ReadVariableOp_15sequential_20/batch_normalization_24/ReadVariableOp_12`
.sequential_20/conv2d_17/BiasAdd/ReadVariableOp.sequential_20/conv2d_17/BiasAdd/ReadVariableOp2^
-sequential_20/conv2d_17/Conv2D/ReadVariableOp-sequential_20/conv2d_17/Conv2D/ReadVariableOp:W S
/
_output_shapes
:���������  
 
_user_specified_nameinputs
�
_
C__inference_re_lu_25_layer_call_and_return_conditional_losses_67512

inputs
identityG
ReluReluinputs*
T0*(
_output_shapes
:����������[
IdentityIdentityRelu:activations:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
_
C__inference_re_lu_24_layer_call_and_return_conditional_losses_70715

inputs
identityO
ReluReluinputs*
T0*0
_output_shapes
:����������c
IdentityIdentityRelu:activations:0*
T0*0
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
)__inference_conv2d_14_layer_call_fn_70112

inputs!
unknown:!7
	unknown_0:7
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������7*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_conv2d_14_layer_call_and_return_conditional_losses_66129w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������7`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������!: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������!
 
_user_specified_nameinputs
�	
�
6__inference_batch_normalization_19_layer_call_fn_69842

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_19_layer_call_and_return_conditional_losses_65491�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�
�
)__inference_conv2d_12_layer_call_fn_69806

inputs!
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������  *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_conv2d_12_layer_call_and_return_conditional_losses_65519w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������  `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������  : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������  
 
_user_specified_nameinputs
�	
�
-__inference_sequential_17_layer_call_fn_66315
conv2d_14_input!
unknown:!7
	unknown_0:7
	unknown_1:7
	unknown_2:7
	unknown_3:7
	unknown_4:7
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallconv2d_14_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������7*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_sequential_17_layer_call_and_return_conditional_losses_66283w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������7`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������!: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:` \
/
_output_shapes
:���������!
)
_user_specified_nameconv2d_14_input
�
F
*__inference_dropout_10_layer_call_fn_69608

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dropout_10_layer_call_and_return_conditional_losses_67472i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
Q__inference_batch_normalization_23_layer_call_and_return_conditional_losses_70534

inputs%
readvariableop_resource:x'
readvariableop_1_resource:x6
(fusedbatchnormv3_readvariableop_resource:x8
*fusedbatchnormv3_readvariableop_1_resource:x
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:x*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:x*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:x*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:x*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������x:x:x:x:x:*
epsilon%o�:*
is_training( k
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*/
_output_shapes
:���������x�
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������x: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:���������x
 
_user_specified_nameinputs
�
�
Q__inference_batch_normalization_19_layer_call_and_return_conditional_losses_69904

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������:::::*
epsilon%o�:*
exponential_avg_factor%
�#<�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+����������������������������
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�
D
(__inference_re_lu_20_layer_call_fn_70098

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������!* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_re_lu_20_layer_call_and_return_conditional_losses_65862h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:���������!"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������!:W S
/
_output_shapes
:���������!
 
_user_specified_nameinputs
�
b
D__inference_dropout_9_layer_call_and_return_conditional_losses_69403

inputs

identity_1V
IdentityIdentityinputs*
T0*/
_output_shapes
:���������<c

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:���������<"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������<:W S
/
_output_shapes
:���������<
 
_user_specified_nameinputs
�	
�
-__inference_sequential_16_layer_call_fn_66010
conv2d_13_input!
unknown:!
	unknown_0:!
	unknown_1:!
	unknown_2:!
	unknown_3:!
	unknown_4:!
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallconv2d_13_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������!*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_sequential_16_layer_call_and_return_conditional_losses_65978w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������!`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������  : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:` \
/
_output_shapes
:���������  
)
_user_specified_nameconv2d_13_input
�%
�
H__inference_sequential_20_layer_call_and_return_conditional_losses_69583

inputsC
(conv2d_17_conv2d_readvariableop_resource:x�8
)conv2d_17_biasadd_readvariableop_resource:	�=
.batch_normalization_24_readvariableop_resource:	�?
0batch_normalization_24_readvariableop_1_resource:	�N
?batch_normalization_24_fusedbatchnormv3_readvariableop_resource:	�P
Abatch_normalization_24_fusedbatchnormv3_readvariableop_1_resource:	�
identity��%batch_normalization_24/AssignNewValue�'batch_normalization_24/AssignNewValue_1�6batch_normalization_24/FusedBatchNormV3/ReadVariableOp�8batch_normalization_24/FusedBatchNormV3/ReadVariableOp_1�%batch_normalization_24/ReadVariableOp�'batch_normalization_24/ReadVariableOp_1� conv2d_17/BiasAdd/ReadVariableOp�conv2d_17/Conv2D/ReadVariableOp�
conv2d_17/Conv2D/ReadVariableOpReadVariableOp(conv2d_17_conv2d_readvariableop_resource*'
_output_shapes
:x�*
dtype0�
conv2d_17/Conv2DConv2Dinputs'conv2d_17/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
�
 conv2d_17/BiasAdd/ReadVariableOpReadVariableOp)conv2d_17_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
conv2d_17/BiasAddBiasAddconv2d_17/Conv2D:output:0(conv2d_17/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:�����������
%batch_normalization_24/ReadVariableOpReadVariableOp.batch_normalization_24_readvariableop_resource*
_output_shapes	
:�*
dtype0�
'batch_normalization_24/ReadVariableOp_1ReadVariableOp0batch_normalization_24_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
6batch_normalization_24/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_24_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype0�
8batch_normalization_24/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_24_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
'batch_normalization_24/FusedBatchNormV3FusedBatchNormV3conv2d_17/BiasAdd:output:0-batch_normalization_24/ReadVariableOp:value:0/batch_normalization_24/ReadVariableOp_1:value:0>batch_normalization_24/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_24/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:����������:�:�:�:�:*
epsilon%o�:*
exponential_avg_factor%
�#<�
%batch_normalization_24/AssignNewValueAssignVariableOp?batch_normalization_24_fusedbatchnormv3_readvariableop_resource4batch_normalization_24/FusedBatchNormV3:batch_mean:07^batch_normalization_24/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0�
'batch_normalization_24/AssignNewValue_1AssignVariableOpAbatch_normalization_24_fusedbatchnormv3_readvariableop_1_resource8batch_normalization_24/FusedBatchNormV3:batch_variance:09^batch_normalization_24/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0}
re_lu_24/ReluRelu+batch_normalization_24/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:����������s
IdentityIdentityre_lu_24/Relu:activations:0^NoOp*
T0*0
_output_shapes
:�����������
NoOpNoOp&^batch_normalization_24/AssignNewValue(^batch_normalization_24/AssignNewValue_17^batch_normalization_24/FusedBatchNormV3/ReadVariableOp9^batch_normalization_24/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_24/ReadVariableOp(^batch_normalization_24/ReadVariableOp_1!^conv2d_17/BiasAdd/ReadVariableOp ^conv2d_17/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������x: : : : : : 2N
%batch_normalization_24/AssignNewValue%batch_normalization_24/AssignNewValue2R
'batch_normalization_24/AssignNewValue_1'batch_normalization_24/AssignNewValue_12p
6batch_normalization_24/FusedBatchNormV3/ReadVariableOp6batch_normalization_24/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_24/FusedBatchNormV3/ReadVariableOp_18batch_normalization_24/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_24/ReadVariableOp%batch_normalization_24/ReadVariableOp2R
'batch_normalization_24/ReadVariableOp_1'batch_normalization_24/ReadVariableOp_12D
 conv2d_17/BiasAdd/ReadVariableOp conv2d_17/BiasAdd/ReadVariableOp2B
conv2d_17/Conv2D/ReadVariableOpconv2d_17/Conv2D/ReadVariableOp:W S
/
_output_shapes
:���������x
 
_user_specified_nameinputs
�
_
C__inference_re_lu_21_layer_call_and_return_conditional_losses_70256

inputs
identityN
ReluReluinputs*
T0*/
_output_shapes
:���������7b
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:���������7"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������7:W S
/
_output_shapes
:���������7
 
_user_specified_nameinputs
�X
�
H__inference_sequential_14_layer_call_and_return_conditional_losses_67962

inputs-
sequential_15_67857:!
sequential_15_67859:!
sequential_15_67861:!
sequential_15_67863:!
sequential_15_67865:!
sequential_15_67867:-
sequential_16_67870:!!
sequential_16_67872:!!
sequential_16_67874:!!
sequential_16_67876:!!
sequential_16_67878:!!
sequential_16_67880:!-
sequential_17_67884:!7!
sequential_17_67886:7!
sequential_17_67888:7!
sequential_17_67890:7!
sequential_17_67892:7!
sequential_17_67894:7-
sequential_18_67897:7<!
sequential_18_67899:<!
sequential_18_67901:<!
sequential_18_67903:<!
sequential_18_67905:<!
sequential_18_67907:<-
sequential_19_67911:<x!
sequential_19_67913:x!
sequential_19_67915:x!
sequential_19_67917:x!
sequential_19_67919:x!
sequential_19_67921:x.
sequential_20_67924:x�"
sequential_20_67926:	�"
sequential_20_67928:	�"
sequential_20_67930:	�"
sequential_20_67932:	�"
sequential_20_67934:	�!
dense_4_67940:
�A�
dense_4_67942:	�+
batch_normalization_25_67945:	�+
batch_normalization_25_67947:	�+
batch_normalization_25_67949:	�+
batch_normalization_25_67951:	� 
dense_5_67956:	�

dense_5_67958:

identity��.batch_normalization_25/StatefulPartitionedCall�dense_4/StatefulPartitionedCall�dense_5/StatefulPartitionedCall�"dropout_10/StatefulPartitionedCall�"dropout_11/StatefulPartitionedCall�!dropout_8/StatefulPartitionedCall�!dropout_9/StatefulPartitionedCall�%sequential_15/StatefulPartitionedCall�%sequential_16/StatefulPartitionedCall�%sequential_17/StatefulPartitionedCall�%sequential_18/StatefulPartitionedCall�%sequential_19/StatefulPartitionedCall�%sequential_20/StatefulPartitionedCall�
%sequential_15/StatefulPartitionedCallStatefulPartitionedCallinputssequential_15_67857sequential_15_67859sequential_15_67861sequential_15_67863sequential_15_67865sequential_15_67867*
Tin
	2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������  *&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_sequential_15_layer_call_and_return_conditional_losses_65673�
%sequential_16/StatefulPartitionedCallStatefulPartitionedCall.sequential_15/StatefulPartitionedCall:output:0sequential_16_67870sequential_16_67872sequential_16_67874sequential_16_67876sequential_16_67878sequential_16_67880*
Tin
	2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������!*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_sequential_16_layer_call_and_return_conditional_losses_65978�
!dropout_8/StatefulPartitionedCallStatefulPartitionedCall.sequential_16/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������!* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dropout_8_layer_call_and_return_conditional_losses_67756�
%sequential_17/StatefulPartitionedCallStatefulPartitionedCall*dropout_8/StatefulPartitionedCall:output:0sequential_17_67884sequential_17_67886sequential_17_67888sequential_17_67890sequential_17_67892sequential_17_67894*
Tin
	2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������7*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_sequential_17_layer_call_and_return_conditional_losses_66283�
%sequential_18/StatefulPartitionedCallStatefulPartitionedCall.sequential_17/StatefulPartitionedCall:output:0sequential_18_67897sequential_18_67899sequential_18_67901sequential_18_67903sequential_18_67905sequential_18_67907*
Tin
	2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������<*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_sequential_18_layer_call_and_return_conditional_losses_66588�
!dropout_9/StatefulPartitionedCallStatefulPartitionedCall.sequential_18/StatefulPartitionedCall:output:0"^dropout_8/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������<* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dropout_9_layer_call_and_return_conditional_losses_67733�
%sequential_19/StatefulPartitionedCallStatefulPartitionedCall*dropout_9/StatefulPartitionedCall:output:0sequential_19_67911sequential_19_67913sequential_19_67915sequential_19_67917sequential_19_67919sequential_19_67921*
Tin
	2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������x*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_sequential_19_layer_call_and_return_conditional_losses_66893�
%sequential_20/StatefulPartitionedCallStatefulPartitionedCall.sequential_19/StatefulPartitionedCall:output:0sequential_20_67924sequential_20_67926sequential_20_67928sequential_20_67930sequential_20_67932sequential_20_67934*
Tin
	2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_sequential_20_layer_call_and_return_conditional_losses_67198�
max_pooling2d_2/PartitionedCallPartitionedCall.sequential_20/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_67465�
"dropout_10/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_2/PartitionedCall:output:0"^dropout_9/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dropout_10_layer_call_and_return_conditional_losses_67705�
flatten_2/PartitionedCallPartitionedCall+dropout_10/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������A* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_flatten_2_layer_call_and_return_conditional_losses_67480�
dense_4/StatefulPartitionedCallStatefulPartitionedCall"flatten_2/PartitionedCall:output:0dense_4_67940dense_4_67942*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_dense_4_layer_call_and_return_conditional_losses_67492�
.batch_normalization_25/StatefulPartitionedCallStatefulPartitionedCall(dense_4/StatefulPartitionedCall:output:0batch_normalization_25_67945batch_normalization_25_67947batch_normalization_25_67949batch_normalization_25_67951*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_25_layer_call_and_return_conditional_losses_67351�
re_lu_25/PartitionedCallPartitionedCall7batch_normalization_25/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_re_lu_25_layer_call_and_return_conditional_losses_67512�
"dropout_11/StatefulPartitionedCallStatefulPartitionedCall!re_lu_25/PartitionedCall:output:0#^dropout_10/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dropout_11_layer_call_and_return_conditional_losses_67660�
dense_5/StatefulPartitionedCallStatefulPartitionedCall+dropout_11/StatefulPartitionedCall:output:0dense_5_67956dense_5_67958*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_dense_5_layer_call_and_return_conditional_losses_67532w
IdentityIdentity(dense_5/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������
�
NoOpNoOp/^batch_normalization_25/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall ^dense_5/StatefulPartitionedCall#^dropout_10/StatefulPartitionedCall#^dropout_11/StatefulPartitionedCall"^dropout_8/StatefulPartitionedCall"^dropout_9/StatefulPartitionedCall&^sequential_15/StatefulPartitionedCall&^sequential_16/StatefulPartitionedCall&^sequential_17/StatefulPartitionedCall&^sequential_18/StatefulPartitionedCall&^sequential_19/StatefulPartitionedCall&^sequential_20/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapesu
s:���������  : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2`
.batch_normalization_25/StatefulPartitionedCall.batch_normalization_25/StatefulPartitionedCall2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall2H
"dropout_10/StatefulPartitionedCall"dropout_10/StatefulPartitionedCall2H
"dropout_11/StatefulPartitionedCall"dropout_11/StatefulPartitionedCall2F
!dropout_8/StatefulPartitionedCall!dropout_8/StatefulPartitionedCall2F
!dropout_9/StatefulPartitionedCall!dropout_9/StatefulPartitionedCall2N
%sequential_15/StatefulPartitionedCall%sequential_15/StatefulPartitionedCall2N
%sequential_16/StatefulPartitionedCall%sequential_16/StatefulPartitionedCall2N
%sequential_17/StatefulPartitionedCall%sequential_17/StatefulPartitionedCall2N
%sequential_18/StatefulPartitionedCall%sequential_18/StatefulPartitionedCall2N
%sequential_19/StatefulPartitionedCall%sequential_19/StatefulPartitionedCall2N
%sequential_20/StatefulPartitionedCall%sequential_20/StatefulPartitionedCall:W S
/
_output_shapes
:���������  
 
_user_specified_nameinputs
�
�
H__inference_sequential_20_layer_call_and_return_conditional_losses_67249
conv2d_17_input*
conv2d_17_67233:x�
conv2d_17_67235:	�+
batch_normalization_24_67238:	�+
batch_normalization_24_67240:	�+
batch_normalization_24_67242:	�+
batch_normalization_24_67244:	�
identity��.batch_normalization_24/StatefulPartitionedCall�!conv2d_17/StatefulPartitionedCall�
!conv2d_17/StatefulPartitionedCallStatefulPartitionedCallconv2d_17_inputconv2d_17_67233conv2d_17_67235*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_conv2d_17_layer_call_and_return_conditional_losses_67044�
.batch_normalization_24/StatefulPartitionedCallStatefulPartitionedCall*conv2d_17/StatefulPartitionedCall:output:0batch_normalization_24_67238batch_normalization_24_67240batch_normalization_24_67242batch_normalization_24_67244*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_24_layer_call_and_return_conditional_losses_67067�
re_lu_24/PartitionedCallPartitionedCall7batch_normalization_24/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_re_lu_24_layer_call_and_return_conditional_losses_67082y
IdentityIdentity!re_lu_24/PartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:�����������
NoOpNoOp/^batch_normalization_24/StatefulPartitionedCall"^conv2d_17/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������x: : : : : : 2`
.batch_normalization_24/StatefulPartitionedCall.batch_normalization_24/StatefulPartitionedCall2F
!conv2d_17/StatefulPartitionedCall!conv2d_17/StatefulPartitionedCall:` \
/
_output_shapes
:���������x
)
_user_specified_nameconv2d_17_input
�
_
C__inference_re_lu_22_layer_call_and_return_conditional_losses_66472

inputs
identityN
ReluReluinputs*
T0*/
_output_shapes
:���������<b
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:���������<"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������<:W S
/
_output_shapes
:���������<
 
_user_specified_nameinputs
�

c
D__inference_dropout_9_layer_call_and_return_conditional_losses_69415

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @l
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:���������<C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:���������<*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:���������<w
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:���������<q
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:���������<a
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:���������<"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������<:W S
/
_output_shapes
:���������<
 
_user_specified_nameinputs
�
�
6__inference_batch_normalization_20_layer_call_fn_70021

inputs
unknown:!
	unknown_0:!
	unknown_1:!
	unknown_2:!
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������!*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_20_layer_call_and_return_conditional_losses_65919w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������!`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������!: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������!
 
_user_specified_nameinputs
�
�
Q__inference_batch_normalization_22_layer_call_and_return_conditional_losses_66529

inputs%
readvariableop_resource:<'
readvariableop_1_resource:<6
(fusedbatchnormv3_readvariableop_resource:<8
*fusedbatchnormv3_readvariableop_1_resource:<
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:<*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:<*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:<*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:<*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������<:<:<:<:<:*
epsilon%o�:*
exponential_avg_factor%
�#<�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0k
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*/
_output_shapes
:���������<�
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������<: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:���������<
 
_user_specified_nameinputs
�
�
6__inference_batch_normalization_24_layer_call_fn_70620

inputs
unknown:	�
	unknown_0:	�
	unknown_1:	�
	unknown_2:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_24_layer_call_and_return_conditional_losses_67067x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:����������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�	
�
-__inference_sequential_17_layer_call_fn_66185
conv2d_14_input!
unknown:!7
	unknown_0:7
	unknown_1:7
	unknown_2:7
	unknown_3:7
	unknown_4:7
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallconv2d_14_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������7*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_sequential_17_layer_call_and_return_conditional_losses_66170w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������7`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������!: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:` \
/
_output_shapes
:���������!
)
_user_specified_nameconv2d_14_input
�%
�
Q__inference_batch_normalization_25_layer_call_and_return_conditional_losses_69740

inputs6
'assignmovingavg_readvariableop_resource:	�8
)assignmovingavg_1_readvariableop_resource:	�4
%batchnorm_mul_readvariableop_resource:	�0
!batchnorm_readvariableop_resource:	�
identity��AssignMovingAvg�AssignMovingAvg/ReadVariableOp�AssignMovingAvg_1� AssignMovingAvg_1/ReadVariableOp�batchnorm/ReadVariableOp�batchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	�*
	keep_dims(e
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes
:	��
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*(
_output_shapes
:����������l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	�*
	keep_dims(n
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:�*
squeeze_dims
 t
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:�*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes	
:�*
dtype0�
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes	
:�y
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:��
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes	
:�*
dtype0�
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes	
:�
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:��
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:r
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:�Q
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:�
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0u
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:�d
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:����������i
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:�w
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0q
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:�s
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:����������c
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
H__inference_sequential_16_layer_call_and_return_conditional_losses_66048
conv2d_13_input)
conv2d_13_66032:!
conv2d_13_66034:!*
batch_normalization_20_66037:!*
batch_normalization_20_66039:!*
batch_normalization_20_66041:!*
batch_normalization_20_66043:!
identity��.batch_normalization_20/StatefulPartitionedCall�!conv2d_13/StatefulPartitionedCall�
!conv2d_13/StatefulPartitionedCallStatefulPartitionedCallconv2d_13_inputconv2d_13_66032conv2d_13_66034*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������!*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_conv2d_13_layer_call_and_return_conditional_losses_65824�
.batch_normalization_20/StatefulPartitionedCallStatefulPartitionedCall*conv2d_13/StatefulPartitionedCall:output:0batch_normalization_20_66037batch_normalization_20_66039batch_normalization_20_66041batch_normalization_20_66043*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������!*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_20_layer_call_and_return_conditional_losses_65919�
re_lu_20/PartitionedCallPartitionedCall7batch_normalization_20/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������!* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_re_lu_20_layer_call_and_return_conditional_losses_65862x
IdentityIdentity!re_lu_20/PartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������!�
NoOpNoOp/^batch_normalization_20/StatefulPartitionedCall"^conv2d_13/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������  : : : : : : 2`
.batch_normalization_20/StatefulPartitionedCall.batch_normalization_20/StatefulPartitionedCall2F
!conv2d_13/StatefulPartitionedCall!conv2d_13/StatefulPartitionedCall:` \
/
_output_shapes
:���������  
)
_user_specified_nameconv2d_13_input
�
�
H__inference_sequential_19_layer_call_and_return_conditional_losses_66780

inputs)
conv2d_16_66740:<x
conv2d_16_66742:x*
batch_normalization_23_66763:x*
batch_normalization_23_66765:x*
batch_normalization_23_66767:x*
batch_normalization_23_66769:x
identity��.batch_normalization_23/StatefulPartitionedCall�!conv2d_16/StatefulPartitionedCall�
!conv2d_16/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_16_66740conv2d_16_66742*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������x*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_conv2d_16_layer_call_and_return_conditional_losses_66739�
.batch_normalization_23/StatefulPartitionedCallStatefulPartitionedCall*conv2d_16/StatefulPartitionedCall:output:0batch_normalization_23_66763batch_normalization_23_66765batch_normalization_23_66767batch_normalization_23_66769*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������x*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_23_layer_call_and_return_conditional_losses_66762�
re_lu_23/PartitionedCallPartitionedCall7batch_normalization_23/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������x* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_re_lu_23_layer_call_and_return_conditional_losses_66777x
IdentityIdentity!re_lu_23/PartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������x�
NoOpNoOp/^batch_normalization_23/StatefulPartitionedCall"^conv2d_16/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������<: : : : : : 2`
.batch_normalization_23/StatefulPartitionedCall.batch_normalization_23/StatefulPartitionedCall2F
!conv2d_16/StatefulPartitionedCall!conv2d_16/StatefulPartitionedCall:W S
/
_output_shapes
:���������<
 
_user_specified_nameinputs
�
�
Q__inference_batch_normalization_20_layer_call_and_return_conditional_losses_65796

inputs%
readvariableop_resource:!'
readvariableop_1_resource:!6
(fusedbatchnormv3_readvariableop_resource:!8
*fusedbatchnormv3_readvariableop_1_resource:!
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:!*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:!*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:!*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:!*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������!:!:!:!:!:*
epsilon%o�:*
exponential_avg_factor%
�#<�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������!�
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������!: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������!
 
_user_specified_nameinputs
�
D
(__inference_re_lu_21_layer_call_fn_70251

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������7* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_re_lu_21_layer_call_and_return_conditional_losses_66167h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:���������7"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������7:W S
/
_output_shapes
:���������7
 
_user_specified_nameinputs
�
_
C__inference_re_lu_22_layer_call_and_return_conditional_losses_70409

inputs
identityN
ReluReluinputs*
T0*/
_output_shapes
:���������<b
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:���������<"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������<:W S
/
_output_shapes
:���������<
 
_user_specified_nameinputs
�
�
Q__inference_batch_normalization_23_layer_call_and_return_conditional_losses_66711

inputs%
readvariableop_resource:x'
readvariableop_1_resource:x6
(fusedbatchnormv3_readvariableop_resource:x8
*fusedbatchnormv3_readvariableop_1_resource:x
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:x*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:x*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:x*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:x*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������x:x:x:x:x:*
epsilon%o�:*
exponential_avg_factor%
�#<�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������x�
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������x: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������x
 
_user_specified_nameinputs
�
c
E__inference_dropout_10_layer_call_and_return_conditional_losses_69618

inputs

identity_1W
IdentityIdentityinputs*
T0*0
_output_shapes
:����������d

Identity_1IdentityIdentity:output:0*
T0*0
_output_shapes
:����������"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
H__inference_sequential_15_layer_call_and_return_conditional_losses_65560

inputs)
conv2d_12_65520:
conv2d_12_65522:*
batch_normalization_19_65543:*
batch_normalization_19_65545:*
batch_normalization_19_65547:*
batch_normalization_19_65549:
identity��.batch_normalization_19/StatefulPartitionedCall�!conv2d_12/StatefulPartitionedCall�
!conv2d_12/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_12_65520conv2d_12_65522*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������  *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_conv2d_12_layer_call_and_return_conditional_losses_65519�
.batch_normalization_19/StatefulPartitionedCallStatefulPartitionedCall*conv2d_12/StatefulPartitionedCall:output:0batch_normalization_19_65543batch_normalization_19_65545batch_normalization_19_65547batch_normalization_19_65549*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������  *&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_19_layer_call_and_return_conditional_losses_65542�
re_lu_19/PartitionedCallPartitionedCall7batch_normalization_19/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������  * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_re_lu_19_layer_call_and_return_conditional_losses_65557x
IdentityIdentity!re_lu_19/PartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������  �
NoOpNoOp/^batch_normalization_19/StatefulPartitionedCall"^conv2d_12/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������  : : : : : : 2`
.batch_normalization_19/StatefulPartitionedCall.batch_normalization_19/StatefulPartitionedCall2F
!conv2d_12/StatefulPartitionedCall!conv2d_12/StatefulPartitionedCall:W S
/
_output_shapes
:���������  
 
_user_specified_nameinputs
�
�
Q__inference_batch_normalization_20_layer_call_and_return_conditional_losses_70057

inputs%
readvariableop_resource:!'
readvariableop_1_resource:!6
(fusedbatchnormv3_readvariableop_resource:!8
*fusedbatchnormv3_readvariableop_1_resource:!
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:!*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:!*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:!*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:!*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������!:!:!:!:!:*
epsilon%o�:*
exponential_avg_factor%
�#<�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������!�
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������!: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������!
 
_user_specified_nameinputs
�
_
C__inference_re_lu_20_layer_call_and_return_conditional_losses_70103

inputs
identityN
ReluReluinputs*
T0*/
_output_shapes
:���������!b
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:���������!"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������!:W S
/
_output_shapes
:���������!
 
_user_specified_nameinputs
�
_
C__inference_re_lu_23_layer_call_and_return_conditional_losses_70562

inputs
identityN
ReluReluinputs*
T0*/
_output_shapes
:���������xb
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:���������x"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������x:W S
/
_output_shapes
:���������x
 
_user_specified_nameinputs
�	
�
-__inference_sequential_19_layer_call_fn_66925
conv2d_16_input!
unknown:<x
	unknown_0:x
	unknown_1:x
	unknown_2:x
	unknown_3:x
	unknown_4:x
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallconv2d_16_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������x*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_sequential_19_layer_call_and_return_conditional_losses_66893w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������x`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������<: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:` \
/
_output_shapes
:���������<
)
_user_specified_nameconv2d_16_input
�R
�
H__inference_sequential_14_layer_call_and_return_conditional_losses_67539

inputs-
sequential_15_67369:!
sequential_15_67371:!
sequential_15_67373:!
sequential_15_67375:!
sequential_15_67377:!
sequential_15_67379:-
sequential_16_67382:!!
sequential_16_67384:!!
sequential_16_67386:!!
sequential_16_67388:!!
sequential_16_67390:!!
sequential_16_67392:!-
sequential_17_67402:!7!
sequential_17_67404:7!
sequential_17_67406:7!
sequential_17_67408:7!
sequential_17_67410:7!
sequential_17_67412:7-
sequential_18_67415:7<!
sequential_18_67417:<!
sequential_18_67419:<!
sequential_18_67421:<!
sequential_18_67423:<!
sequential_18_67425:<-
sequential_19_67435:<x!
sequential_19_67437:x!
sequential_19_67439:x!
sequential_19_67441:x!
sequential_19_67443:x!
sequential_19_67445:x.
sequential_20_67448:x�"
sequential_20_67450:	�"
sequential_20_67452:	�"
sequential_20_67454:	�"
sequential_20_67456:	�"
sequential_20_67458:	�!
dense_4_67493:
�A�
dense_4_67495:	�+
batch_normalization_25_67498:	�+
batch_normalization_25_67500:	�+
batch_normalization_25_67502:	�+
batch_normalization_25_67504:	� 
dense_5_67533:	�

dense_5_67535:

identity��.batch_normalization_25/StatefulPartitionedCall�dense_4/StatefulPartitionedCall�dense_5/StatefulPartitionedCall�%sequential_15/StatefulPartitionedCall�%sequential_16/StatefulPartitionedCall�%sequential_17/StatefulPartitionedCall�%sequential_18/StatefulPartitionedCall�%sequential_19/StatefulPartitionedCall�%sequential_20/StatefulPartitionedCall�
%sequential_15/StatefulPartitionedCallStatefulPartitionedCallinputssequential_15_67369sequential_15_67371sequential_15_67373sequential_15_67375sequential_15_67377sequential_15_67379*
Tin
	2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������  *(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_sequential_15_layer_call_and_return_conditional_losses_65560�
%sequential_16/StatefulPartitionedCallStatefulPartitionedCall.sequential_15/StatefulPartitionedCall:output:0sequential_16_67382sequential_16_67384sequential_16_67386sequential_16_67388sequential_16_67390sequential_16_67392*
Tin
	2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������!*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_sequential_16_layer_call_and_return_conditional_losses_65865�
dropout_8/PartitionedCallPartitionedCall.sequential_16/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������!* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dropout_8_layer_call_and_return_conditional_losses_67400�
%sequential_17/StatefulPartitionedCallStatefulPartitionedCall"dropout_8/PartitionedCall:output:0sequential_17_67402sequential_17_67404sequential_17_67406sequential_17_67408sequential_17_67410sequential_17_67412*
Tin
	2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������7*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_sequential_17_layer_call_and_return_conditional_losses_66170�
%sequential_18/StatefulPartitionedCallStatefulPartitionedCall.sequential_17/StatefulPartitionedCall:output:0sequential_18_67415sequential_18_67417sequential_18_67419sequential_18_67421sequential_18_67423sequential_18_67425*
Tin
	2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������<*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_sequential_18_layer_call_and_return_conditional_losses_66475�
dropout_9/PartitionedCallPartitionedCall.sequential_18/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������<* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dropout_9_layer_call_and_return_conditional_losses_67433�
%sequential_19/StatefulPartitionedCallStatefulPartitionedCall"dropout_9/PartitionedCall:output:0sequential_19_67435sequential_19_67437sequential_19_67439sequential_19_67441sequential_19_67443sequential_19_67445*
Tin
	2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������x*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_sequential_19_layer_call_and_return_conditional_losses_66780�
%sequential_20/StatefulPartitionedCallStatefulPartitionedCall.sequential_19/StatefulPartitionedCall:output:0sequential_20_67448sequential_20_67450sequential_20_67452sequential_20_67454sequential_20_67456sequential_20_67458*
Tin
	2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_sequential_20_layer_call_and_return_conditional_losses_67085�
max_pooling2d_2/PartitionedCallPartitionedCall.sequential_20/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_67465�
dropout_10/PartitionedCallPartitionedCall(max_pooling2d_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dropout_10_layer_call_and_return_conditional_losses_67472�
flatten_2/PartitionedCallPartitionedCall#dropout_10/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������A* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_flatten_2_layer_call_and_return_conditional_losses_67480�
dense_4/StatefulPartitionedCallStatefulPartitionedCall"flatten_2/PartitionedCall:output:0dense_4_67493dense_4_67495*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_dense_4_layer_call_and_return_conditional_losses_67492�
.batch_normalization_25/StatefulPartitionedCallStatefulPartitionedCall(dense_4/StatefulPartitionedCall:output:0batch_normalization_25_67498batch_normalization_25_67500batch_normalization_25_67502batch_normalization_25_67504*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_25_layer_call_and_return_conditional_losses_67304�
re_lu_25/PartitionedCallPartitionedCall7batch_normalization_25/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_re_lu_25_layer_call_and_return_conditional_losses_67512�
dropout_11/PartitionedCallPartitionedCall!re_lu_25/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dropout_11_layer_call_and_return_conditional_losses_67519�
dense_5/StatefulPartitionedCallStatefulPartitionedCall#dropout_11/PartitionedCall:output:0dense_5_67533dense_5_67535*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_dense_5_layer_call_and_return_conditional_losses_67532w
IdentityIdentity(dense_5/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������
�
NoOpNoOp/^batch_normalization_25/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall ^dense_5/StatefulPartitionedCall&^sequential_15/StatefulPartitionedCall&^sequential_16/StatefulPartitionedCall&^sequential_17/StatefulPartitionedCall&^sequential_18/StatefulPartitionedCall&^sequential_19/StatefulPartitionedCall&^sequential_20/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapesu
s:���������  : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2`
.batch_normalization_25/StatefulPartitionedCall.batch_normalization_25/StatefulPartitionedCall2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall2N
%sequential_15/StatefulPartitionedCall%sequential_15/StatefulPartitionedCall2N
%sequential_16/StatefulPartitionedCall%sequential_16/StatefulPartitionedCall2N
%sequential_17/StatefulPartitionedCall%sequential_17/StatefulPartitionedCall2N
%sequential_18/StatefulPartitionedCall%sequential_18/StatefulPartitionedCall2N
%sequential_19/StatefulPartitionedCall%sequential_19/StatefulPartitionedCall2N
%sequential_20/StatefulPartitionedCall%sequential_20/StatefulPartitionedCall:W S
/
_output_shapes
:���������  
 
_user_specified_nameinputs
�
D
(__inference_re_lu_23_layer_call_fn_70557

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������x* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_re_lu_23_layer_call_and_return_conditional_losses_66777h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:���������x"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������x:W S
/
_output_shapes
:���������x
 
_user_specified_nameinputs
�

�
D__inference_conv2d_12_layer_call_and_return_conditional_losses_69816

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������  *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������  g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:���������  w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������  : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������  
 
_user_specified_nameinputs
��
�K
!__inference__traced_restore_71426
file_prefix3
assignvariableop_dense_4_kernel:
�A�.
assignvariableop_1_dense_4_bias:	�>
/assignvariableop_2_batch_normalization_25_gamma:	�=
.assignvariableop_3_batch_normalization_25_beta:	�D
5assignvariableop_4_batch_normalization_25_moving_mean:	�H
9assignvariableop_5_batch_normalization_25_moving_variance:	�4
!assignvariableop_6_dense_5_kernel:	�
-
assignvariableop_7_dense_5_bias:
&
assignvariableop_8_adam_iter:	 (
assignvariableop_9_adam_beta_1: )
assignvariableop_10_adam_beta_2: (
assignvariableop_11_adam_decay: 0
&assignvariableop_12_adam_learning_rate: >
$assignvariableop_13_conv2d_12_kernel:0
"assignvariableop_14_conv2d_12_bias:>
0assignvariableop_15_batch_normalization_19_gamma:=
/assignvariableop_16_batch_normalization_19_beta:D
6assignvariableop_17_batch_normalization_19_moving_mean:H
:assignvariableop_18_batch_normalization_19_moving_variance:>
$assignvariableop_19_conv2d_13_kernel:!0
"assignvariableop_20_conv2d_13_bias:!>
0assignvariableop_21_batch_normalization_20_gamma:!=
/assignvariableop_22_batch_normalization_20_beta:!D
6assignvariableop_23_batch_normalization_20_moving_mean:!H
:assignvariableop_24_batch_normalization_20_moving_variance:!>
$assignvariableop_25_conv2d_14_kernel:!70
"assignvariableop_26_conv2d_14_bias:7>
0assignvariableop_27_batch_normalization_21_gamma:7=
/assignvariableop_28_batch_normalization_21_beta:7D
6assignvariableop_29_batch_normalization_21_moving_mean:7H
:assignvariableop_30_batch_normalization_21_moving_variance:7>
$assignvariableop_31_conv2d_15_kernel:7<0
"assignvariableop_32_conv2d_15_bias:<>
0assignvariableop_33_batch_normalization_22_gamma:<=
/assignvariableop_34_batch_normalization_22_beta:<D
6assignvariableop_35_batch_normalization_22_moving_mean:<H
:assignvariableop_36_batch_normalization_22_moving_variance:<>
$assignvariableop_37_conv2d_16_kernel:<x0
"assignvariableop_38_conv2d_16_bias:x>
0assignvariableop_39_batch_normalization_23_gamma:x=
/assignvariableop_40_batch_normalization_23_beta:xD
6assignvariableop_41_batch_normalization_23_moving_mean:xH
:assignvariableop_42_batch_normalization_23_moving_variance:x?
$assignvariableop_43_conv2d_17_kernel:x�1
"assignvariableop_44_conv2d_17_bias:	�?
0assignvariableop_45_batch_normalization_24_gamma:	�>
/assignvariableop_46_batch_normalization_24_beta:	�E
6assignvariableop_47_batch_normalization_24_moving_mean:	�I
:assignvariableop_48_batch_normalization_24_moving_variance:	�#
assignvariableop_49_total: #
assignvariableop_50_count: %
assignvariableop_51_total_1: %
assignvariableop_52_count_1: =
)assignvariableop_53_adam_dense_4_kernel_m:
�A�6
'assignvariableop_54_adam_dense_4_bias_m:	�F
7assignvariableop_55_adam_batch_normalization_25_gamma_m:	�E
6assignvariableop_56_adam_batch_normalization_25_beta_m:	�<
)assignvariableop_57_adam_dense_5_kernel_m:	�
5
'assignvariableop_58_adam_dense_5_bias_m:
E
+assignvariableop_59_adam_conv2d_12_kernel_m:7
)assignvariableop_60_adam_conv2d_12_bias_m:E
7assignvariableop_61_adam_batch_normalization_19_gamma_m:D
6assignvariableop_62_adam_batch_normalization_19_beta_m:E
+assignvariableop_63_adam_conv2d_13_kernel_m:!7
)assignvariableop_64_adam_conv2d_13_bias_m:!E
7assignvariableop_65_adam_batch_normalization_20_gamma_m:!D
6assignvariableop_66_adam_batch_normalization_20_beta_m:!E
+assignvariableop_67_adam_conv2d_14_kernel_m:!77
)assignvariableop_68_adam_conv2d_14_bias_m:7E
7assignvariableop_69_adam_batch_normalization_21_gamma_m:7D
6assignvariableop_70_adam_batch_normalization_21_beta_m:7E
+assignvariableop_71_adam_conv2d_15_kernel_m:7<7
)assignvariableop_72_adam_conv2d_15_bias_m:<E
7assignvariableop_73_adam_batch_normalization_22_gamma_m:<D
6assignvariableop_74_adam_batch_normalization_22_beta_m:<E
+assignvariableop_75_adam_conv2d_16_kernel_m:<x7
)assignvariableop_76_adam_conv2d_16_bias_m:xE
7assignvariableop_77_adam_batch_normalization_23_gamma_m:xD
6assignvariableop_78_adam_batch_normalization_23_beta_m:xF
+assignvariableop_79_adam_conv2d_17_kernel_m:x�8
)assignvariableop_80_adam_conv2d_17_bias_m:	�F
7assignvariableop_81_adam_batch_normalization_24_gamma_m:	�E
6assignvariableop_82_adam_batch_normalization_24_beta_m:	�=
)assignvariableop_83_adam_dense_4_kernel_v:
�A�6
'assignvariableop_84_adam_dense_4_bias_v:	�F
7assignvariableop_85_adam_batch_normalization_25_gamma_v:	�E
6assignvariableop_86_adam_batch_normalization_25_beta_v:	�<
)assignvariableop_87_adam_dense_5_kernel_v:	�
5
'assignvariableop_88_adam_dense_5_bias_v:
E
+assignvariableop_89_adam_conv2d_12_kernel_v:7
)assignvariableop_90_adam_conv2d_12_bias_v:E
7assignvariableop_91_adam_batch_normalization_19_gamma_v:D
6assignvariableop_92_adam_batch_normalization_19_beta_v:E
+assignvariableop_93_adam_conv2d_13_kernel_v:!7
)assignvariableop_94_adam_conv2d_13_bias_v:!E
7assignvariableop_95_adam_batch_normalization_20_gamma_v:!D
6assignvariableop_96_adam_batch_normalization_20_beta_v:!E
+assignvariableop_97_adam_conv2d_14_kernel_v:!77
)assignvariableop_98_adam_conv2d_14_bias_v:7E
7assignvariableop_99_adam_batch_normalization_21_gamma_v:7E
7assignvariableop_100_adam_batch_normalization_21_beta_v:7F
,assignvariableop_101_adam_conv2d_15_kernel_v:7<8
*assignvariableop_102_adam_conv2d_15_bias_v:<F
8assignvariableop_103_adam_batch_normalization_22_gamma_v:<E
7assignvariableop_104_adam_batch_normalization_22_beta_v:<F
,assignvariableop_105_adam_conv2d_16_kernel_v:<x8
*assignvariableop_106_adam_conv2d_16_bias_v:xF
8assignvariableop_107_adam_batch_normalization_23_gamma_v:xE
7assignvariableop_108_adam_batch_normalization_23_beta_v:xG
,assignvariableop_109_adam_conv2d_17_kernel_v:x�9
*assignvariableop_110_adam_conv2d_17_bias_v:	�G
8assignvariableop_111_adam_batch_normalization_24_gamma_v:	�F
7assignvariableop_112_adam_batch_normalization_24_beta_v:	�
identity_114��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_100�AssignVariableOp_101�AssignVariableOp_102�AssignVariableOp_103�AssignVariableOp_104�AssignVariableOp_105�AssignVariableOp_106�AssignVariableOp_107�AssignVariableOp_108�AssignVariableOp_109�AssignVariableOp_11�AssignVariableOp_110�AssignVariableOp_111�AssignVariableOp_112�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_22�AssignVariableOp_23�AssignVariableOp_24�AssignVariableOp_25�AssignVariableOp_26�AssignVariableOp_27�AssignVariableOp_28�AssignVariableOp_29�AssignVariableOp_3�AssignVariableOp_30�AssignVariableOp_31�AssignVariableOp_32�AssignVariableOp_33�AssignVariableOp_34�AssignVariableOp_35�AssignVariableOp_36�AssignVariableOp_37�AssignVariableOp_38�AssignVariableOp_39�AssignVariableOp_4�AssignVariableOp_40�AssignVariableOp_41�AssignVariableOp_42�AssignVariableOp_43�AssignVariableOp_44�AssignVariableOp_45�AssignVariableOp_46�AssignVariableOp_47�AssignVariableOp_48�AssignVariableOp_49�AssignVariableOp_5�AssignVariableOp_50�AssignVariableOp_51�AssignVariableOp_52�AssignVariableOp_53�AssignVariableOp_54�AssignVariableOp_55�AssignVariableOp_56�AssignVariableOp_57�AssignVariableOp_58�AssignVariableOp_59�AssignVariableOp_6�AssignVariableOp_60�AssignVariableOp_61�AssignVariableOp_62�AssignVariableOp_63�AssignVariableOp_64�AssignVariableOp_65�AssignVariableOp_66�AssignVariableOp_67�AssignVariableOp_68�AssignVariableOp_69�AssignVariableOp_7�AssignVariableOp_70�AssignVariableOp_71�AssignVariableOp_72�AssignVariableOp_73�AssignVariableOp_74�AssignVariableOp_75�AssignVariableOp_76�AssignVariableOp_77�AssignVariableOp_78�AssignVariableOp_79�AssignVariableOp_8�AssignVariableOp_80�AssignVariableOp_81�AssignVariableOp_82�AssignVariableOp_83�AssignVariableOp_84�AssignVariableOp_85�AssignVariableOp_86�AssignVariableOp_87�AssignVariableOp_88�AssignVariableOp_89�AssignVariableOp_9�AssignVariableOp_90�AssignVariableOp_91�AssignVariableOp_92�AssignVariableOp_93�AssignVariableOp_94�AssignVariableOp_95�AssignVariableOp_96�AssignVariableOp_97�AssignVariableOp_98�AssignVariableOp_99�5
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:r*
dtype0*�4
value�4B�4rB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB'variables/19/.ATTRIBUTES/VARIABLE_VALUEB'variables/20/.ATTRIBUTES/VARIABLE_VALUEB'variables/21/.ATTRIBUTES/VARIABLE_VALUEB'variables/22/.ATTRIBUTES/VARIABLE_VALUEB'variables/23/.ATTRIBUTES/VARIABLE_VALUEB'variables/24/.ATTRIBUTES/VARIABLE_VALUEB'variables/25/.ATTRIBUTES/VARIABLE_VALUEB'variables/26/.ATTRIBUTES/VARIABLE_VALUEB'variables/27/.ATTRIBUTES/VARIABLE_VALUEB'variables/28/.ATTRIBUTES/VARIABLE_VALUEB'variables/29/.ATTRIBUTES/VARIABLE_VALUEB'variables/30/.ATTRIBUTES/VARIABLE_VALUEB'variables/31/.ATTRIBUTES/VARIABLE_VALUEB'variables/32/.ATTRIBUTES/VARIABLE_VALUEB'variables/33/.ATTRIBUTES/VARIABLE_VALUEB'variables/34/.ATTRIBUTES/VARIABLE_VALUEB'variables/35/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/18/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/19/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/20/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/21/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/24/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/25/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/26/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/27/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/30/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/31/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/32/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/33/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/18/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/19/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/20/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/21/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/24/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/25/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/26/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/27/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/30/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/31/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/32/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/33/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:r*
dtype0*�
value�B�rB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*�
_output_shapes�
�::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*�
dtypesv
t2r	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOpAssignVariableOpassignvariableop_dense_4_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOpassignvariableop_1_dense_4_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOp/assignvariableop_2_batch_normalization_25_gammaIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOp.assignvariableop_3_batch_normalization_25_betaIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOp5assignvariableop_4_batch_normalization_25_moving_meanIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOp9assignvariableop_5_batch_normalization_25_moving_varianceIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_6AssignVariableOp!assignvariableop_6_dense_5_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOpassignvariableop_7_dense_5_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOp_8AssignVariableOpassignvariableop_8_adam_iterIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOpassignvariableop_9_adam_beta_1Identity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_10AssignVariableOpassignvariableop_10_adam_beta_2Identity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_11AssignVariableOpassignvariableop_11_adam_decayIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_12AssignVariableOp&assignvariableop_12_adam_learning_rateIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOp$assignvariableop_13_conv2d_12_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_14AssignVariableOp"assignvariableop_14_conv2d_12_biasIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_15AssignVariableOp0assignvariableop_15_batch_normalization_19_gammaIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_16AssignVariableOp/assignvariableop_16_batch_normalization_19_betaIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_17AssignVariableOp6assignvariableop_17_batch_normalization_19_moving_meanIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_18AssignVariableOp:assignvariableop_18_batch_normalization_19_moving_varianceIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_19AssignVariableOp$assignvariableop_19_conv2d_13_kernelIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_20AssignVariableOp"assignvariableop_20_conv2d_13_biasIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_21AssignVariableOp0assignvariableop_21_batch_normalization_20_gammaIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_22AssignVariableOp/assignvariableop_22_batch_normalization_20_betaIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_23AssignVariableOp6assignvariableop_23_batch_normalization_20_moving_meanIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_24AssignVariableOp:assignvariableop_24_batch_normalization_20_moving_varianceIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_25AssignVariableOp$assignvariableop_25_conv2d_14_kernelIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_26AssignVariableOp"assignvariableop_26_conv2d_14_biasIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_27AssignVariableOp0assignvariableop_27_batch_normalization_21_gammaIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_28AssignVariableOp/assignvariableop_28_batch_normalization_21_betaIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_29AssignVariableOp6assignvariableop_29_batch_normalization_21_moving_meanIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_30AssignVariableOp:assignvariableop_30_batch_normalization_21_moving_varianceIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_31AssignVariableOp$assignvariableop_31_conv2d_15_kernelIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_32AssignVariableOp"assignvariableop_32_conv2d_15_biasIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_33AssignVariableOp0assignvariableop_33_batch_normalization_22_gammaIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_34AssignVariableOp/assignvariableop_34_batch_normalization_22_betaIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_35AssignVariableOp6assignvariableop_35_batch_normalization_22_moving_meanIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_36AssignVariableOp:assignvariableop_36_batch_normalization_22_moving_varianceIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_37AssignVariableOp$assignvariableop_37_conv2d_16_kernelIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_38AssignVariableOp"assignvariableop_38_conv2d_16_biasIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_39AssignVariableOp0assignvariableop_39_batch_normalization_23_gammaIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_40AssignVariableOp/assignvariableop_40_batch_normalization_23_betaIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_41AssignVariableOp6assignvariableop_41_batch_normalization_23_moving_meanIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_42AssignVariableOp:assignvariableop_42_batch_normalization_23_moving_varianceIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_43AssignVariableOp$assignvariableop_43_conv2d_17_kernelIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_44AssignVariableOp"assignvariableop_44_conv2d_17_biasIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_45AssignVariableOp0assignvariableop_45_batch_normalization_24_gammaIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_46AssignVariableOp/assignvariableop_46_batch_normalization_24_betaIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_47AssignVariableOp6assignvariableop_47_batch_normalization_24_moving_meanIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_48AssignVariableOp:assignvariableop_48_batch_normalization_24_moving_varianceIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_49AssignVariableOpassignvariableop_49_totalIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_50AssignVariableOpassignvariableop_50_countIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_51AssignVariableOpassignvariableop_51_total_1Identity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_52AssignVariableOpassignvariableop_52_count_1Identity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_53AssignVariableOp)assignvariableop_53_adam_dense_4_kernel_mIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_54AssignVariableOp'assignvariableop_54_adam_dense_4_bias_mIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_55AssignVariableOp7assignvariableop_55_adam_batch_normalization_25_gamma_mIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_56AssignVariableOp6assignvariableop_56_adam_batch_normalization_25_beta_mIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_57AssignVariableOp)assignvariableop_57_adam_dense_5_kernel_mIdentity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_58AssignVariableOp'assignvariableop_58_adam_dense_5_bias_mIdentity_58:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_59AssignVariableOp+assignvariableop_59_adam_conv2d_12_kernel_mIdentity_59:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_60AssignVariableOp)assignvariableop_60_adam_conv2d_12_bias_mIdentity_60:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_61AssignVariableOp7assignvariableop_61_adam_batch_normalization_19_gamma_mIdentity_61:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_62AssignVariableOp6assignvariableop_62_adam_batch_normalization_19_beta_mIdentity_62:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_63AssignVariableOp+assignvariableop_63_adam_conv2d_13_kernel_mIdentity_63:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_64IdentityRestoreV2:tensors:64"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_64AssignVariableOp)assignvariableop_64_adam_conv2d_13_bias_mIdentity_64:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_65IdentityRestoreV2:tensors:65"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_65AssignVariableOp7assignvariableop_65_adam_batch_normalization_20_gamma_mIdentity_65:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_66IdentityRestoreV2:tensors:66"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_66AssignVariableOp6assignvariableop_66_adam_batch_normalization_20_beta_mIdentity_66:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_67IdentityRestoreV2:tensors:67"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_67AssignVariableOp+assignvariableop_67_adam_conv2d_14_kernel_mIdentity_67:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_68IdentityRestoreV2:tensors:68"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_68AssignVariableOp)assignvariableop_68_adam_conv2d_14_bias_mIdentity_68:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_69IdentityRestoreV2:tensors:69"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_69AssignVariableOp7assignvariableop_69_adam_batch_normalization_21_gamma_mIdentity_69:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_70IdentityRestoreV2:tensors:70"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_70AssignVariableOp6assignvariableop_70_adam_batch_normalization_21_beta_mIdentity_70:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_71IdentityRestoreV2:tensors:71"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_71AssignVariableOp+assignvariableop_71_adam_conv2d_15_kernel_mIdentity_71:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_72IdentityRestoreV2:tensors:72"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_72AssignVariableOp)assignvariableop_72_adam_conv2d_15_bias_mIdentity_72:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_73IdentityRestoreV2:tensors:73"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_73AssignVariableOp7assignvariableop_73_adam_batch_normalization_22_gamma_mIdentity_73:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_74IdentityRestoreV2:tensors:74"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_74AssignVariableOp6assignvariableop_74_adam_batch_normalization_22_beta_mIdentity_74:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_75IdentityRestoreV2:tensors:75"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_75AssignVariableOp+assignvariableop_75_adam_conv2d_16_kernel_mIdentity_75:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_76IdentityRestoreV2:tensors:76"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_76AssignVariableOp)assignvariableop_76_adam_conv2d_16_bias_mIdentity_76:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_77IdentityRestoreV2:tensors:77"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_77AssignVariableOp7assignvariableop_77_adam_batch_normalization_23_gamma_mIdentity_77:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_78IdentityRestoreV2:tensors:78"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_78AssignVariableOp6assignvariableop_78_adam_batch_normalization_23_beta_mIdentity_78:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_79IdentityRestoreV2:tensors:79"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_79AssignVariableOp+assignvariableop_79_adam_conv2d_17_kernel_mIdentity_79:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_80IdentityRestoreV2:tensors:80"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_80AssignVariableOp)assignvariableop_80_adam_conv2d_17_bias_mIdentity_80:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_81IdentityRestoreV2:tensors:81"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_81AssignVariableOp7assignvariableop_81_adam_batch_normalization_24_gamma_mIdentity_81:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_82IdentityRestoreV2:tensors:82"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_82AssignVariableOp6assignvariableop_82_adam_batch_normalization_24_beta_mIdentity_82:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_83IdentityRestoreV2:tensors:83"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_83AssignVariableOp)assignvariableop_83_adam_dense_4_kernel_vIdentity_83:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_84IdentityRestoreV2:tensors:84"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_84AssignVariableOp'assignvariableop_84_adam_dense_4_bias_vIdentity_84:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_85IdentityRestoreV2:tensors:85"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_85AssignVariableOp7assignvariableop_85_adam_batch_normalization_25_gamma_vIdentity_85:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_86IdentityRestoreV2:tensors:86"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_86AssignVariableOp6assignvariableop_86_adam_batch_normalization_25_beta_vIdentity_86:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_87IdentityRestoreV2:tensors:87"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_87AssignVariableOp)assignvariableop_87_adam_dense_5_kernel_vIdentity_87:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_88IdentityRestoreV2:tensors:88"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_88AssignVariableOp'assignvariableop_88_adam_dense_5_bias_vIdentity_88:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_89IdentityRestoreV2:tensors:89"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_89AssignVariableOp+assignvariableop_89_adam_conv2d_12_kernel_vIdentity_89:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_90IdentityRestoreV2:tensors:90"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_90AssignVariableOp)assignvariableop_90_adam_conv2d_12_bias_vIdentity_90:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_91IdentityRestoreV2:tensors:91"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_91AssignVariableOp7assignvariableop_91_adam_batch_normalization_19_gamma_vIdentity_91:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_92IdentityRestoreV2:tensors:92"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_92AssignVariableOp6assignvariableop_92_adam_batch_normalization_19_beta_vIdentity_92:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_93IdentityRestoreV2:tensors:93"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_93AssignVariableOp+assignvariableop_93_adam_conv2d_13_kernel_vIdentity_93:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_94IdentityRestoreV2:tensors:94"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_94AssignVariableOp)assignvariableop_94_adam_conv2d_13_bias_vIdentity_94:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_95IdentityRestoreV2:tensors:95"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_95AssignVariableOp7assignvariableop_95_adam_batch_normalization_20_gamma_vIdentity_95:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_96IdentityRestoreV2:tensors:96"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_96AssignVariableOp6assignvariableop_96_adam_batch_normalization_20_beta_vIdentity_96:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_97IdentityRestoreV2:tensors:97"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_97AssignVariableOp+assignvariableop_97_adam_conv2d_14_kernel_vIdentity_97:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_98IdentityRestoreV2:tensors:98"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_98AssignVariableOp)assignvariableop_98_adam_conv2d_14_bias_vIdentity_98:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_99IdentityRestoreV2:tensors:99"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_99AssignVariableOp7assignvariableop_99_adam_batch_normalization_21_gamma_vIdentity_99:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_100IdentityRestoreV2:tensors:100"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_100AssignVariableOp7assignvariableop_100_adam_batch_normalization_21_beta_vIdentity_100:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_101IdentityRestoreV2:tensors:101"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_101AssignVariableOp,assignvariableop_101_adam_conv2d_15_kernel_vIdentity_101:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_102IdentityRestoreV2:tensors:102"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_102AssignVariableOp*assignvariableop_102_adam_conv2d_15_bias_vIdentity_102:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_103IdentityRestoreV2:tensors:103"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_103AssignVariableOp8assignvariableop_103_adam_batch_normalization_22_gamma_vIdentity_103:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_104IdentityRestoreV2:tensors:104"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_104AssignVariableOp7assignvariableop_104_adam_batch_normalization_22_beta_vIdentity_104:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_105IdentityRestoreV2:tensors:105"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_105AssignVariableOp,assignvariableop_105_adam_conv2d_16_kernel_vIdentity_105:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_106IdentityRestoreV2:tensors:106"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_106AssignVariableOp*assignvariableop_106_adam_conv2d_16_bias_vIdentity_106:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_107IdentityRestoreV2:tensors:107"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_107AssignVariableOp8assignvariableop_107_adam_batch_normalization_23_gamma_vIdentity_107:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_108IdentityRestoreV2:tensors:108"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_108AssignVariableOp7assignvariableop_108_adam_batch_normalization_23_beta_vIdentity_108:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_109IdentityRestoreV2:tensors:109"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_109AssignVariableOp,assignvariableop_109_adam_conv2d_17_kernel_vIdentity_109:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_110IdentityRestoreV2:tensors:110"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_110AssignVariableOp*assignvariableop_110_adam_conv2d_17_bias_vIdentity_110:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_111IdentityRestoreV2:tensors:111"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_111AssignVariableOp8assignvariableop_111_adam_batch_normalization_24_gamma_vIdentity_111:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_112IdentityRestoreV2:tensors:112"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_112AssignVariableOp7assignvariableop_112_adam_batch_normalization_24_beta_vIdentity_112:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 �
Identity_113Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_100^AssignVariableOp_101^AssignVariableOp_102^AssignVariableOp_103^AssignVariableOp_104^AssignVariableOp_105^AssignVariableOp_106^AssignVariableOp_107^AssignVariableOp_108^AssignVariableOp_109^AssignVariableOp_11^AssignVariableOp_110^AssignVariableOp_111^AssignVariableOp_112^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_82^AssignVariableOp_83^AssignVariableOp_84^AssignVariableOp_85^AssignVariableOp_86^AssignVariableOp_87^AssignVariableOp_88^AssignVariableOp_89^AssignVariableOp_9^AssignVariableOp_90^AssignVariableOp_91^AssignVariableOp_92^AssignVariableOp_93^AssignVariableOp_94^AssignVariableOp_95^AssignVariableOp_96^AssignVariableOp_97^AssignVariableOp_98^AssignVariableOp_99^NoOp"/device:CPU:0*
T0*
_output_shapes
: Y
Identity_114IdentityIdentity_113:output:0^NoOp_1*
T0*
_output_shapes
: �
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_100^AssignVariableOp_101^AssignVariableOp_102^AssignVariableOp_103^AssignVariableOp_104^AssignVariableOp_105^AssignVariableOp_106^AssignVariableOp_107^AssignVariableOp_108^AssignVariableOp_109^AssignVariableOp_11^AssignVariableOp_110^AssignVariableOp_111^AssignVariableOp_112^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_82^AssignVariableOp_83^AssignVariableOp_84^AssignVariableOp_85^AssignVariableOp_86^AssignVariableOp_87^AssignVariableOp_88^AssignVariableOp_89^AssignVariableOp_9^AssignVariableOp_90^AssignVariableOp_91^AssignVariableOp_92^AssignVariableOp_93^AssignVariableOp_94^AssignVariableOp_95^AssignVariableOp_96^AssignVariableOp_97^AssignVariableOp_98^AssignVariableOp_99*"
_acd_function_control_output(*
_output_shapes
 "%
identity_114Identity_114:output:0*�
_input_shapes�
�: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102,
AssignVariableOp_100AssignVariableOp_1002,
AssignVariableOp_101AssignVariableOp_1012,
AssignVariableOp_102AssignVariableOp_1022,
AssignVariableOp_103AssignVariableOp_1032,
AssignVariableOp_104AssignVariableOp_1042,
AssignVariableOp_105AssignVariableOp_1052,
AssignVariableOp_106AssignVariableOp_1062,
AssignVariableOp_107AssignVariableOp_1072,
AssignVariableOp_108AssignVariableOp_1082,
AssignVariableOp_109AssignVariableOp_1092*
AssignVariableOp_11AssignVariableOp_112,
AssignVariableOp_110AssignVariableOp_1102,
AssignVariableOp_111AssignVariableOp_1112,
AssignVariableOp_112AssignVariableOp_1122*
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
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_50AssignVariableOp_502*
AssignVariableOp_51AssignVariableOp_512*
AssignVariableOp_52AssignVariableOp_522*
AssignVariableOp_53AssignVariableOp_532*
AssignVariableOp_54AssignVariableOp_542*
AssignVariableOp_55AssignVariableOp_552*
AssignVariableOp_56AssignVariableOp_562*
AssignVariableOp_57AssignVariableOp_572*
AssignVariableOp_58AssignVariableOp_582*
AssignVariableOp_59AssignVariableOp_592(
AssignVariableOp_6AssignVariableOp_62*
AssignVariableOp_60AssignVariableOp_602*
AssignVariableOp_61AssignVariableOp_612*
AssignVariableOp_62AssignVariableOp_622*
AssignVariableOp_63AssignVariableOp_632*
AssignVariableOp_64AssignVariableOp_642*
AssignVariableOp_65AssignVariableOp_652*
AssignVariableOp_66AssignVariableOp_662*
AssignVariableOp_67AssignVariableOp_672*
AssignVariableOp_68AssignVariableOp_682*
AssignVariableOp_69AssignVariableOp_692(
AssignVariableOp_7AssignVariableOp_72*
AssignVariableOp_70AssignVariableOp_702*
AssignVariableOp_71AssignVariableOp_712*
AssignVariableOp_72AssignVariableOp_722*
AssignVariableOp_73AssignVariableOp_732*
AssignVariableOp_74AssignVariableOp_742*
AssignVariableOp_75AssignVariableOp_752*
AssignVariableOp_76AssignVariableOp_762*
AssignVariableOp_77AssignVariableOp_772*
AssignVariableOp_78AssignVariableOp_782*
AssignVariableOp_79AssignVariableOp_792(
AssignVariableOp_8AssignVariableOp_82*
AssignVariableOp_80AssignVariableOp_802*
AssignVariableOp_81AssignVariableOp_812*
AssignVariableOp_82AssignVariableOp_822*
AssignVariableOp_83AssignVariableOp_832*
AssignVariableOp_84AssignVariableOp_842*
AssignVariableOp_85AssignVariableOp_852*
AssignVariableOp_86AssignVariableOp_862*
AssignVariableOp_87AssignVariableOp_872*
AssignVariableOp_88AssignVariableOp_882*
AssignVariableOp_89AssignVariableOp_892(
AssignVariableOp_9AssignVariableOp_92*
AssignVariableOp_90AssignVariableOp_902*
AssignVariableOp_91AssignVariableOp_912*
AssignVariableOp_92AssignVariableOp_922*
AssignVariableOp_93AssignVariableOp_932*
AssignVariableOp_94AssignVariableOp_942*
AssignVariableOp_95AssignVariableOp_952*
AssignVariableOp_96AssignVariableOp_962*
AssignVariableOp_97AssignVariableOp_972*
AssignVariableOp_98AssignVariableOp_982*
AssignVariableOp_99AssignVariableOp_99:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�
�
H__inference_sequential_19_layer_call_and_return_conditional_losses_66893

inputs)
conv2d_16_66877:<x
conv2d_16_66879:x*
batch_normalization_23_66882:x*
batch_normalization_23_66884:x*
batch_normalization_23_66886:x*
batch_normalization_23_66888:x
identity��.batch_normalization_23/StatefulPartitionedCall�!conv2d_16/StatefulPartitionedCall�
!conv2d_16/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_16_66877conv2d_16_66879*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������x*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_conv2d_16_layer_call_and_return_conditional_losses_66739�
.batch_normalization_23/StatefulPartitionedCallStatefulPartitionedCall*conv2d_16/StatefulPartitionedCall:output:0batch_normalization_23_66882batch_normalization_23_66884batch_normalization_23_66886batch_normalization_23_66888*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������x*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_23_layer_call_and_return_conditional_losses_66834�
re_lu_23/PartitionedCallPartitionedCall7batch_normalization_23/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������x* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_re_lu_23_layer_call_and_return_conditional_losses_66777x
IdentityIdentity!re_lu_23/PartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������x�
NoOpNoOp/^batch_normalization_23/StatefulPartitionedCall"^conv2d_16/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������<: : : : : : 2`
.batch_normalization_23/StatefulPartitionedCall.batch_normalization_23/StatefulPartitionedCall2F
!conv2d_16/StatefulPartitionedCall!conv2d_16/StatefulPartitionedCall:W S
/
_output_shapes
:���������<
 
_user_specified_nameinputs
�
c
*__inference_dropout_11_layer_call_fn_69760

inputs
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dropout_11_layer_call_and_return_conditional_losses_67660p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�

�
B__inference_dense_5_layer_call_and_return_conditional_losses_69797

inputs1
matmul_readvariableop_resource:	�
-
biasadd_readvariableop_resource:

identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:���������
`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:���������
w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�	
�
-__inference_sequential_15_layer_call_fn_69059

inputs!
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������  *&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_sequential_15_layer_call_and_return_conditional_losses_65673w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������  `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������  : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������  
 
_user_specified_nameinputs
�	
�
-__inference_sequential_18_layer_call_fn_66620
conv2d_15_input!
unknown:7<
	unknown_0:<
	unknown_1:<
	unknown_2:<
	unknown_3:<
	unknown_4:<
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallconv2d_15_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������<*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_sequential_18_layer_call_and_return_conditional_losses_66588w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������<`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������7: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:` \
/
_output_shapes
:���������7
)
_user_specified_nameconv2d_15_input
��
�8
 __inference__wrapped_model_65438
sequential_15_input^
Dsequential_14_sequential_15_conv2d_12_conv2d_readvariableop_resource:S
Esequential_14_sequential_15_conv2d_12_biasadd_readvariableop_resource:X
Jsequential_14_sequential_15_batch_normalization_19_readvariableop_resource:Z
Lsequential_14_sequential_15_batch_normalization_19_readvariableop_1_resource:i
[sequential_14_sequential_15_batch_normalization_19_fusedbatchnormv3_readvariableop_resource:k
]sequential_14_sequential_15_batch_normalization_19_fusedbatchnormv3_readvariableop_1_resource:^
Dsequential_14_sequential_16_conv2d_13_conv2d_readvariableop_resource:!S
Esequential_14_sequential_16_conv2d_13_biasadd_readvariableop_resource:!X
Jsequential_14_sequential_16_batch_normalization_20_readvariableop_resource:!Z
Lsequential_14_sequential_16_batch_normalization_20_readvariableop_1_resource:!i
[sequential_14_sequential_16_batch_normalization_20_fusedbatchnormv3_readvariableop_resource:!k
]sequential_14_sequential_16_batch_normalization_20_fusedbatchnormv3_readvariableop_1_resource:!^
Dsequential_14_sequential_17_conv2d_14_conv2d_readvariableop_resource:!7S
Esequential_14_sequential_17_conv2d_14_biasadd_readvariableop_resource:7X
Jsequential_14_sequential_17_batch_normalization_21_readvariableop_resource:7Z
Lsequential_14_sequential_17_batch_normalization_21_readvariableop_1_resource:7i
[sequential_14_sequential_17_batch_normalization_21_fusedbatchnormv3_readvariableop_resource:7k
]sequential_14_sequential_17_batch_normalization_21_fusedbatchnormv3_readvariableop_1_resource:7^
Dsequential_14_sequential_18_conv2d_15_conv2d_readvariableop_resource:7<S
Esequential_14_sequential_18_conv2d_15_biasadd_readvariableop_resource:<X
Jsequential_14_sequential_18_batch_normalization_22_readvariableop_resource:<Z
Lsequential_14_sequential_18_batch_normalization_22_readvariableop_1_resource:<i
[sequential_14_sequential_18_batch_normalization_22_fusedbatchnormv3_readvariableop_resource:<k
]sequential_14_sequential_18_batch_normalization_22_fusedbatchnormv3_readvariableop_1_resource:<^
Dsequential_14_sequential_19_conv2d_16_conv2d_readvariableop_resource:<xS
Esequential_14_sequential_19_conv2d_16_biasadd_readvariableop_resource:xX
Jsequential_14_sequential_19_batch_normalization_23_readvariableop_resource:xZ
Lsequential_14_sequential_19_batch_normalization_23_readvariableop_1_resource:xi
[sequential_14_sequential_19_batch_normalization_23_fusedbatchnormv3_readvariableop_resource:xk
]sequential_14_sequential_19_batch_normalization_23_fusedbatchnormv3_readvariableop_1_resource:x_
Dsequential_14_sequential_20_conv2d_17_conv2d_readvariableop_resource:x�T
Esequential_14_sequential_20_conv2d_17_biasadd_readvariableop_resource:	�Y
Jsequential_14_sequential_20_batch_normalization_24_readvariableop_resource:	�[
Lsequential_14_sequential_20_batch_normalization_24_readvariableop_1_resource:	�j
[sequential_14_sequential_20_batch_normalization_24_fusedbatchnormv3_readvariableop_resource:	�l
]sequential_14_sequential_20_batch_normalization_24_fusedbatchnormv3_readvariableop_1_resource:	�H
4sequential_14_dense_4_matmul_readvariableop_resource:
�A�D
5sequential_14_dense_4_biasadd_readvariableop_resource:	�U
Fsequential_14_batch_normalization_25_batchnorm_readvariableop_resource:	�Y
Jsequential_14_batch_normalization_25_batchnorm_mul_readvariableop_resource:	�W
Hsequential_14_batch_normalization_25_batchnorm_readvariableop_1_resource:	�W
Hsequential_14_batch_normalization_25_batchnorm_readvariableop_2_resource:	�G
4sequential_14_dense_5_matmul_readvariableop_resource:	�
C
5sequential_14_dense_5_biasadd_readvariableop_resource:

identity��=sequential_14/batch_normalization_25/batchnorm/ReadVariableOp�?sequential_14/batch_normalization_25/batchnorm/ReadVariableOp_1�?sequential_14/batch_normalization_25/batchnorm/ReadVariableOp_2�Asequential_14/batch_normalization_25/batchnorm/mul/ReadVariableOp�,sequential_14/dense_4/BiasAdd/ReadVariableOp�+sequential_14/dense_4/MatMul/ReadVariableOp�,sequential_14/dense_5/BiasAdd/ReadVariableOp�+sequential_14/dense_5/MatMul/ReadVariableOp�Rsequential_14/sequential_15/batch_normalization_19/FusedBatchNormV3/ReadVariableOp�Tsequential_14/sequential_15/batch_normalization_19/FusedBatchNormV3/ReadVariableOp_1�Asequential_14/sequential_15/batch_normalization_19/ReadVariableOp�Csequential_14/sequential_15/batch_normalization_19/ReadVariableOp_1�<sequential_14/sequential_15/conv2d_12/BiasAdd/ReadVariableOp�;sequential_14/sequential_15/conv2d_12/Conv2D/ReadVariableOp�Rsequential_14/sequential_16/batch_normalization_20/FusedBatchNormV3/ReadVariableOp�Tsequential_14/sequential_16/batch_normalization_20/FusedBatchNormV3/ReadVariableOp_1�Asequential_14/sequential_16/batch_normalization_20/ReadVariableOp�Csequential_14/sequential_16/batch_normalization_20/ReadVariableOp_1�<sequential_14/sequential_16/conv2d_13/BiasAdd/ReadVariableOp�;sequential_14/sequential_16/conv2d_13/Conv2D/ReadVariableOp�Rsequential_14/sequential_17/batch_normalization_21/FusedBatchNormV3/ReadVariableOp�Tsequential_14/sequential_17/batch_normalization_21/FusedBatchNormV3/ReadVariableOp_1�Asequential_14/sequential_17/batch_normalization_21/ReadVariableOp�Csequential_14/sequential_17/batch_normalization_21/ReadVariableOp_1�<sequential_14/sequential_17/conv2d_14/BiasAdd/ReadVariableOp�;sequential_14/sequential_17/conv2d_14/Conv2D/ReadVariableOp�Rsequential_14/sequential_18/batch_normalization_22/FusedBatchNormV3/ReadVariableOp�Tsequential_14/sequential_18/batch_normalization_22/FusedBatchNormV3/ReadVariableOp_1�Asequential_14/sequential_18/batch_normalization_22/ReadVariableOp�Csequential_14/sequential_18/batch_normalization_22/ReadVariableOp_1�<sequential_14/sequential_18/conv2d_15/BiasAdd/ReadVariableOp�;sequential_14/sequential_18/conv2d_15/Conv2D/ReadVariableOp�Rsequential_14/sequential_19/batch_normalization_23/FusedBatchNormV3/ReadVariableOp�Tsequential_14/sequential_19/batch_normalization_23/FusedBatchNormV3/ReadVariableOp_1�Asequential_14/sequential_19/batch_normalization_23/ReadVariableOp�Csequential_14/sequential_19/batch_normalization_23/ReadVariableOp_1�<sequential_14/sequential_19/conv2d_16/BiasAdd/ReadVariableOp�;sequential_14/sequential_19/conv2d_16/Conv2D/ReadVariableOp�Rsequential_14/sequential_20/batch_normalization_24/FusedBatchNormV3/ReadVariableOp�Tsequential_14/sequential_20/batch_normalization_24/FusedBatchNormV3/ReadVariableOp_1�Asequential_14/sequential_20/batch_normalization_24/ReadVariableOp�Csequential_14/sequential_20/batch_normalization_24/ReadVariableOp_1�<sequential_14/sequential_20/conv2d_17/BiasAdd/ReadVariableOp�;sequential_14/sequential_20/conv2d_17/Conv2D/ReadVariableOp�
;sequential_14/sequential_15/conv2d_12/Conv2D/ReadVariableOpReadVariableOpDsequential_14_sequential_15_conv2d_12_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
,sequential_14/sequential_15/conv2d_12/Conv2DConv2Dsequential_15_inputCsequential_14/sequential_15/conv2d_12/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������  *
paddingSAME*
strides
�
<sequential_14/sequential_15/conv2d_12/BiasAdd/ReadVariableOpReadVariableOpEsequential_14_sequential_15_conv2d_12_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
-sequential_14/sequential_15/conv2d_12/BiasAddBiasAdd5sequential_14/sequential_15/conv2d_12/Conv2D:output:0Dsequential_14/sequential_15/conv2d_12/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������  �
Asequential_14/sequential_15/batch_normalization_19/ReadVariableOpReadVariableOpJsequential_14_sequential_15_batch_normalization_19_readvariableop_resource*
_output_shapes
:*
dtype0�
Csequential_14/sequential_15/batch_normalization_19/ReadVariableOp_1ReadVariableOpLsequential_14_sequential_15_batch_normalization_19_readvariableop_1_resource*
_output_shapes
:*
dtype0�
Rsequential_14/sequential_15/batch_normalization_19/FusedBatchNormV3/ReadVariableOpReadVariableOp[sequential_14_sequential_15_batch_normalization_19_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
Tsequential_14/sequential_15/batch_normalization_19/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp]sequential_14_sequential_15_batch_normalization_19_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
Csequential_14/sequential_15/batch_normalization_19/FusedBatchNormV3FusedBatchNormV36sequential_14/sequential_15/conv2d_12/BiasAdd:output:0Isequential_14/sequential_15/batch_normalization_19/ReadVariableOp:value:0Ksequential_14/sequential_15/batch_normalization_19/ReadVariableOp_1:value:0Zsequential_14/sequential_15/batch_normalization_19/FusedBatchNormV3/ReadVariableOp:value:0\sequential_14/sequential_15/batch_normalization_19/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������  :::::*
epsilon%o�:*
is_training( �
)sequential_14/sequential_15/re_lu_19/ReluReluGsequential_14/sequential_15/batch_normalization_19/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:���������  �
;sequential_14/sequential_16/conv2d_13/Conv2D/ReadVariableOpReadVariableOpDsequential_14_sequential_16_conv2d_13_conv2d_readvariableop_resource*&
_output_shapes
:!*
dtype0�
,sequential_14/sequential_16/conv2d_13/Conv2DConv2D7sequential_14/sequential_15/re_lu_19/Relu:activations:0Csequential_14/sequential_16/conv2d_13/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������!*
paddingSAME*
strides
�
<sequential_14/sequential_16/conv2d_13/BiasAdd/ReadVariableOpReadVariableOpEsequential_14_sequential_16_conv2d_13_biasadd_readvariableop_resource*
_output_shapes
:!*
dtype0�
-sequential_14/sequential_16/conv2d_13/BiasAddBiasAdd5sequential_14/sequential_16/conv2d_13/Conv2D:output:0Dsequential_14/sequential_16/conv2d_13/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������!�
Asequential_14/sequential_16/batch_normalization_20/ReadVariableOpReadVariableOpJsequential_14_sequential_16_batch_normalization_20_readvariableop_resource*
_output_shapes
:!*
dtype0�
Csequential_14/sequential_16/batch_normalization_20/ReadVariableOp_1ReadVariableOpLsequential_14_sequential_16_batch_normalization_20_readvariableop_1_resource*
_output_shapes
:!*
dtype0�
Rsequential_14/sequential_16/batch_normalization_20/FusedBatchNormV3/ReadVariableOpReadVariableOp[sequential_14_sequential_16_batch_normalization_20_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:!*
dtype0�
Tsequential_14/sequential_16/batch_normalization_20/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp]sequential_14_sequential_16_batch_normalization_20_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:!*
dtype0�
Csequential_14/sequential_16/batch_normalization_20/FusedBatchNormV3FusedBatchNormV36sequential_14/sequential_16/conv2d_13/BiasAdd:output:0Isequential_14/sequential_16/batch_normalization_20/ReadVariableOp:value:0Ksequential_14/sequential_16/batch_normalization_20/ReadVariableOp_1:value:0Zsequential_14/sequential_16/batch_normalization_20/FusedBatchNormV3/ReadVariableOp:value:0\sequential_14/sequential_16/batch_normalization_20/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������!:!:!:!:!:*
epsilon%o�:*
is_training( �
)sequential_14/sequential_16/re_lu_20/ReluReluGsequential_14/sequential_16/batch_normalization_20/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:���������!�
 sequential_14/dropout_8/IdentityIdentity7sequential_14/sequential_16/re_lu_20/Relu:activations:0*
T0*/
_output_shapes
:���������!�
;sequential_14/sequential_17/conv2d_14/Conv2D/ReadVariableOpReadVariableOpDsequential_14_sequential_17_conv2d_14_conv2d_readvariableop_resource*&
_output_shapes
:!7*
dtype0�
,sequential_14/sequential_17/conv2d_14/Conv2DConv2D)sequential_14/dropout_8/Identity:output:0Csequential_14/sequential_17/conv2d_14/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������7*
paddingSAME*
strides
�
<sequential_14/sequential_17/conv2d_14/BiasAdd/ReadVariableOpReadVariableOpEsequential_14_sequential_17_conv2d_14_biasadd_readvariableop_resource*
_output_shapes
:7*
dtype0�
-sequential_14/sequential_17/conv2d_14/BiasAddBiasAdd5sequential_14/sequential_17/conv2d_14/Conv2D:output:0Dsequential_14/sequential_17/conv2d_14/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������7�
Asequential_14/sequential_17/batch_normalization_21/ReadVariableOpReadVariableOpJsequential_14_sequential_17_batch_normalization_21_readvariableop_resource*
_output_shapes
:7*
dtype0�
Csequential_14/sequential_17/batch_normalization_21/ReadVariableOp_1ReadVariableOpLsequential_14_sequential_17_batch_normalization_21_readvariableop_1_resource*
_output_shapes
:7*
dtype0�
Rsequential_14/sequential_17/batch_normalization_21/FusedBatchNormV3/ReadVariableOpReadVariableOp[sequential_14_sequential_17_batch_normalization_21_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:7*
dtype0�
Tsequential_14/sequential_17/batch_normalization_21/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp]sequential_14_sequential_17_batch_normalization_21_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:7*
dtype0�
Csequential_14/sequential_17/batch_normalization_21/FusedBatchNormV3FusedBatchNormV36sequential_14/sequential_17/conv2d_14/BiasAdd:output:0Isequential_14/sequential_17/batch_normalization_21/ReadVariableOp:value:0Ksequential_14/sequential_17/batch_normalization_21/ReadVariableOp_1:value:0Zsequential_14/sequential_17/batch_normalization_21/FusedBatchNormV3/ReadVariableOp:value:0\sequential_14/sequential_17/batch_normalization_21/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������7:7:7:7:7:*
epsilon%o�:*
is_training( �
)sequential_14/sequential_17/re_lu_21/ReluReluGsequential_14/sequential_17/batch_normalization_21/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:���������7�
;sequential_14/sequential_18/conv2d_15/Conv2D/ReadVariableOpReadVariableOpDsequential_14_sequential_18_conv2d_15_conv2d_readvariableop_resource*&
_output_shapes
:7<*
dtype0�
,sequential_14/sequential_18/conv2d_15/Conv2DConv2D7sequential_14/sequential_17/re_lu_21/Relu:activations:0Csequential_14/sequential_18/conv2d_15/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������<*
paddingSAME*
strides
�
<sequential_14/sequential_18/conv2d_15/BiasAdd/ReadVariableOpReadVariableOpEsequential_14_sequential_18_conv2d_15_biasadd_readvariableop_resource*
_output_shapes
:<*
dtype0�
-sequential_14/sequential_18/conv2d_15/BiasAddBiasAdd5sequential_14/sequential_18/conv2d_15/Conv2D:output:0Dsequential_14/sequential_18/conv2d_15/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������<�
Asequential_14/sequential_18/batch_normalization_22/ReadVariableOpReadVariableOpJsequential_14_sequential_18_batch_normalization_22_readvariableop_resource*
_output_shapes
:<*
dtype0�
Csequential_14/sequential_18/batch_normalization_22/ReadVariableOp_1ReadVariableOpLsequential_14_sequential_18_batch_normalization_22_readvariableop_1_resource*
_output_shapes
:<*
dtype0�
Rsequential_14/sequential_18/batch_normalization_22/FusedBatchNormV3/ReadVariableOpReadVariableOp[sequential_14_sequential_18_batch_normalization_22_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:<*
dtype0�
Tsequential_14/sequential_18/batch_normalization_22/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp]sequential_14_sequential_18_batch_normalization_22_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:<*
dtype0�
Csequential_14/sequential_18/batch_normalization_22/FusedBatchNormV3FusedBatchNormV36sequential_14/sequential_18/conv2d_15/BiasAdd:output:0Isequential_14/sequential_18/batch_normalization_22/ReadVariableOp:value:0Ksequential_14/sequential_18/batch_normalization_22/ReadVariableOp_1:value:0Zsequential_14/sequential_18/batch_normalization_22/FusedBatchNormV3/ReadVariableOp:value:0\sequential_14/sequential_18/batch_normalization_22/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������<:<:<:<:<:*
epsilon%o�:*
is_training( �
)sequential_14/sequential_18/re_lu_22/ReluReluGsequential_14/sequential_18/batch_normalization_22/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:���������<�
 sequential_14/dropout_9/IdentityIdentity7sequential_14/sequential_18/re_lu_22/Relu:activations:0*
T0*/
_output_shapes
:���������<�
;sequential_14/sequential_19/conv2d_16/Conv2D/ReadVariableOpReadVariableOpDsequential_14_sequential_19_conv2d_16_conv2d_readvariableop_resource*&
_output_shapes
:<x*
dtype0�
,sequential_14/sequential_19/conv2d_16/Conv2DConv2D)sequential_14/dropout_9/Identity:output:0Csequential_14/sequential_19/conv2d_16/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������x*
paddingSAME*
strides
�
<sequential_14/sequential_19/conv2d_16/BiasAdd/ReadVariableOpReadVariableOpEsequential_14_sequential_19_conv2d_16_biasadd_readvariableop_resource*
_output_shapes
:x*
dtype0�
-sequential_14/sequential_19/conv2d_16/BiasAddBiasAdd5sequential_14/sequential_19/conv2d_16/Conv2D:output:0Dsequential_14/sequential_19/conv2d_16/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������x�
Asequential_14/sequential_19/batch_normalization_23/ReadVariableOpReadVariableOpJsequential_14_sequential_19_batch_normalization_23_readvariableop_resource*
_output_shapes
:x*
dtype0�
Csequential_14/sequential_19/batch_normalization_23/ReadVariableOp_1ReadVariableOpLsequential_14_sequential_19_batch_normalization_23_readvariableop_1_resource*
_output_shapes
:x*
dtype0�
Rsequential_14/sequential_19/batch_normalization_23/FusedBatchNormV3/ReadVariableOpReadVariableOp[sequential_14_sequential_19_batch_normalization_23_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:x*
dtype0�
Tsequential_14/sequential_19/batch_normalization_23/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp]sequential_14_sequential_19_batch_normalization_23_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:x*
dtype0�
Csequential_14/sequential_19/batch_normalization_23/FusedBatchNormV3FusedBatchNormV36sequential_14/sequential_19/conv2d_16/BiasAdd:output:0Isequential_14/sequential_19/batch_normalization_23/ReadVariableOp:value:0Ksequential_14/sequential_19/batch_normalization_23/ReadVariableOp_1:value:0Zsequential_14/sequential_19/batch_normalization_23/FusedBatchNormV3/ReadVariableOp:value:0\sequential_14/sequential_19/batch_normalization_23/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������x:x:x:x:x:*
epsilon%o�:*
is_training( �
)sequential_14/sequential_19/re_lu_23/ReluReluGsequential_14/sequential_19/batch_normalization_23/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:���������x�
;sequential_14/sequential_20/conv2d_17/Conv2D/ReadVariableOpReadVariableOpDsequential_14_sequential_20_conv2d_17_conv2d_readvariableop_resource*'
_output_shapes
:x�*
dtype0�
,sequential_14/sequential_20/conv2d_17/Conv2DConv2D7sequential_14/sequential_19/re_lu_23/Relu:activations:0Csequential_14/sequential_20/conv2d_17/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
�
<sequential_14/sequential_20/conv2d_17/BiasAdd/ReadVariableOpReadVariableOpEsequential_14_sequential_20_conv2d_17_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
-sequential_14/sequential_20/conv2d_17/BiasAddBiasAdd5sequential_14/sequential_20/conv2d_17/Conv2D:output:0Dsequential_14/sequential_20/conv2d_17/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:�����������
Asequential_14/sequential_20/batch_normalization_24/ReadVariableOpReadVariableOpJsequential_14_sequential_20_batch_normalization_24_readvariableop_resource*
_output_shapes	
:�*
dtype0�
Csequential_14/sequential_20/batch_normalization_24/ReadVariableOp_1ReadVariableOpLsequential_14_sequential_20_batch_normalization_24_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
Rsequential_14/sequential_20/batch_normalization_24/FusedBatchNormV3/ReadVariableOpReadVariableOp[sequential_14_sequential_20_batch_normalization_24_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype0�
Tsequential_14/sequential_20/batch_normalization_24/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp]sequential_14_sequential_20_batch_normalization_24_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
Csequential_14/sequential_20/batch_normalization_24/FusedBatchNormV3FusedBatchNormV36sequential_14/sequential_20/conv2d_17/BiasAdd:output:0Isequential_14/sequential_20/batch_normalization_24/ReadVariableOp:value:0Ksequential_14/sequential_20/batch_normalization_24/ReadVariableOp_1:value:0Zsequential_14/sequential_20/batch_normalization_24/FusedBatchNormV3/ReadVariableOp:value:0\sequential_14/sequential_20/batch_normalization_24/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:����������:�:�:�:�:*
epsilon%o�:*
is_training( �
)sequential_14/sequential_20/re_lu_24/ReluReluGsequential_14/sequential_20/batch_normalization_24/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:�����������
%sequential_14/max_pooling2d_2/MaxPoolMaxPool7sequential_14/sequential_20/re_lu_24/Relu:activations:0*0
_output_shapes
:����������*
ksize
*
paddingVALID*
strides
�
!sequential_14/dropout_10/IdentityIdentity.sequential_14/max_pooling2d_2/MaxPool:output:0*
T0*0
_output_shapes
:����������n
sequential_14/flatten_2/ConstConst*
_output_shapes
:*
dtype0*
valueB"�����   �
sequential_14/flatten_2/ReshapeReshape*sequential_14/dropout_10/Identity:output:0&sequential_14/flatten_2/Const:output:0*
T0*(
_output_shapes
:����������A�
+sequential_14/dense_4/MatMul/ReadVariableOpReadVariableOp4sequential_14_dense_4_matmul_readvariableop_resource* 
_output_shapes
:
�A�*
dtype0�
sequential_14/dense_4/MatMulMatMul(sequential_14/flatten_2/Reshape:output:03sequential_14/dense_4/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
,sequential_14/dense_4/BiasAdd/ReadVariableOpReadVariableOp5sequential_14_dense_4_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
sequential_14/dense_4/BiasAddBiasAdd&sequential_14/dense_4/MatMul:product:04sequential_14/dense_4/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
=sequential_14/batch_normalization_25/batchnorm/ReadVariableOpReadVariableOpFsequential_14_batch_normalization_25_batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0y
4sequential_14/batch_normalization_25/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
2sequential_14/batch_normalization_25/batchnorm/addAddV2Esequential_14/batch_normalization_25/batchnorm/ReadVariableOp:value:0=sequential_14/batch_normalization_25/batchnorm/add/y:output:0*
T0*
_output_shapes	
:��
4sequential_14/batch_normalization_25/batchnorm/RsqrtRsqrt6sequential_14/batch_normalization_25/batchnorm/add:z:0*
T0*
_output_shapes	
:��
Asequential_14/batch_normalization_25/batchnorm/mul/ReadVariableOpReadVariableOpJsequential_14_batch_normalization_25_batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0�
2sequential_14/batch_normalization_25/batchnorm/mulMul8sequential_14/batch_normalization_25/batchnorm/Rsqrt:y:0Isequential_14/batch_normalization_25/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:��
4sequential_14/batch_normalization_25/batchnorm/mul_1Mul&sequential_14/dense_4/BiasAdd:output:06sequential_14/batch_normalization_25/batchnorm/mul:z:0*
T0*(
_output_shapes
:�����������
?sequential_14/batch_normalization_25/batchnorm/ReadVariableOp_1ReadVariableOpHsequential_14_batch_normalization_25_batchnorm_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
4sequential_14/batch_normalization_25/batchnorm/mul_2MulGsequential_14/batch_normalization_25/batchnorm/ReadVariableOp_1:value:06sequential_14/batch_normalization_25/batchnorm/mul:z:0*
T0*
_output_shapes	
:��
?sequential_14/batch_normalization_25/batchnorm/ReadVariableOp_2ReadVariableOpHsequential_14_batch_normalization_25_batchnorm_readvariableop_2_resource*
_output_shapes	
:�*
dtype0�
2sequential_14/batch_normalization_25/batchnorm/subSubGsequential_14/batch_normalization_25/batchnorm/ReadVariableOp_2:value:08sequential_14/batch_normalization_25/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:��
4sequential_14/batch_normalization_25/batchnorm/add_1AddV28sequential_14/batch_normalization_25/batchnorm/mul_1:z:06sequential_14/batch_normalization_25/batchnorm/sub:z:0*
T0*(
_output_shapes
:�����������
sequential_14/re_lu_25/ReluRelu8sequential_14/batch_normalization_25/batchnorm/add_1:z:0*
T0*(
_output_shapes
:�����������
!sequential_14/dropout_11/IdentityIdentity)sequential_14/re_lu_25/Relu:activations:0*
T0*(
_output_shapes
:�����������
+sequential_14/dense_5/MatMul/ReadVariableOpReadVariableOp4sequential_14_dense_5_matmul_readvariableop_resource*
_output_shapes
:	�
*
dtype0�
sequential_14/dense_5/MatMulMatMul*sequential_14/dropout_11/Identity:output:03sequential_14/dense_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
�
,sequential_14/dense_5/BiasAdd/ReadVariableOpReadVariableOp5sequential_14_dense_5_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype0�
sequential_14/dense_5/BiasAddBiasAdd&sequential_14/dense_5/MatMul:product:04sequential_14/dense_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
�
sequential_14/dense_5/SoftmaxSoftmax&sequential_14/dense_5/BiasAdd:output:0*
T0*'
_output_shapes
:���������
v
IdentityIdentity'sequential_14/dense_5/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:���������
�
NoOpNoOp>^sequential_14/batch_normalization_25/batchnorm/ReadVariableOp@^sequential_14/batch_normalization_25/batchnorm/ReadVariableOp_1@^sequential_14/batch_normalization_25/batchnorm/ReadVariableOp_2B^sequential_14/batch_normalization_25/batchnorm/mul/ReadVariableOp-^sequential_14/dense_4/BiasAdd/ReadVariableOp,^sequential_14/dense_4/MatMul/ReadVariableOp-^sequential_14/dense_5/BiasAdd/ReadVariableOp,^sequential_14/dense_5/MatMul/ReadVariableOpS^sequential_14/sequential_15/batch_normalization_19/FusedBatchNormV3/ReadVariableOpU^sequential_14/sequential_15/batch_normalization_19/FusedBatchNormV3/ReadVariableOp_1B^sequential_14/sequential_15/batch_normalization_19/ReadVariableOpD^sequential_14/sequential_15/batch_normalization_19/ReadVariableOp_1=^sequential_14/sequential_15/conv2d_12/BiasAdd/ReadVariableOp<^sequential_14/sequential_15/conv2d_12/Conv2D/ReadVariableOpS^sequential_14/sequential_16/batch_normalization_20/FusedBatchNormV3/ReadVariableOpU^sequential_14/sequential_16/batch_normalization_20/FusedBatchNormV3/ReadVariableOp_1B^sequential_14/sequential_16/batch_normalization_20/ReadVariableOpD^sequential_14/sequential_16/batch_normalization_20/ReadVariableOp_1=^sequential_14/sequential_16/conv2d_13/BiasAdd/ReadVariableOp<^sequential_14/sequential_16/conv2d_13/Conv2D/ReadVariableOpS^sequential_14/sequential_17/batch_normalization_21/FusedBatchNormV3/ReadVariableOpU^sequential_14/sequential_17/batch_normalization_21/FusedBatchNormV3/ReadVariableOp_1B^sequential_14/sequential_17/batch_normalization_21/ReadVariableOpD^sequential_14/sequential_17/batch_normalization_21/ReadVariableOp_1=^sequential_14/sequential_17/conv2d_14/BiasAdd/ReadVariableOp<^sequential_14/sequential_17/conv2d_14/Conv2D/ReadVariableOpS^sequential_14/sequential_18/batch_normalization_22/FusedBatchNormV3/ReadVariableOpU^sequential_14/sequential_18/batch_normalization_22/FusedBatchNormV3/ReadVariableOp_1B^sequential_14/sequential_18/batch_normalization_22/ReadVariableOpD^sequential_14/sequential_18/batch_normalization_22/ReadVariableOp_1=^sequential_14/sequential_18/conv2d_15/BiasAdd/ReadVariableOp<^sequential_14/sequential_18/conv2d_15/Conv2D/ReadVariableOpS^sequential_14/sequential_19/batch_normalization_23/FusedBatchNormV3/ReadVariableOpU^sequential_14/sequential_19/batch_normalization_23/FusedBatchNormV3/ReadVariableOp_1B^sequential_14/sequential_19/batch_normalization_23/ReadVariableOpD^sequential_14/sequential_19/batch_normalization_23/ReadVariableOp_1=^sequential_14/sequential_19/conv2d_16/BiasAdd/ReadVariableOp<^sequential_14/sequential_19/conv2d_16/Conv2D/ReadVariableOpS^sequential_14/sequential_20/batch_normalization_24/FusedBatchNormV3/ReadVariableOpU^sequential_14/sequential_20/batch_normalization_24/FusedBatchNormV3/ReadVariableOp_1B^sequential_14/sequential_20/batch_normalization_24/ReadVariableOpD^sequential_14/sequential_20/batch_normalization_24/ReadVariableOp_1=^sequential_14/sequential_20/conv2d_17/BiasAdd/ReadVariableOp<^sequential_14/sequential_20/conv2d_17/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapesu
s:���������  : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2~
=sequential_14/batch_normalization_25/batchnorm/ReadVariableOp=sequential_14/batch_normalization_25/batchnorm/ReadVariableOp2�
?sequential_14/batch_normalization_25/batchnorm/ReadVariableOp_1?sequential_14/batch_normalization_25/batchnorm/ReadVariableOp_12�
?sequential_14/batch_normalization_25/batchnorm/ReadVariableOp_2?sequential_14/batch_normalization_25/batchnorm/ReadVariableOp_22�
Asequential_14/batch_normalization_25/batchnorm/mul/ReadVariableOpAsequential_14/batch_normalization_25/batchnorm/mul/ReadVariableOp2\
,sequential_14/dense_4/BiasAdd/ReadVariableOp,sequential_14/dense_4/BiasAdd/ReadVariableOp2Z
+sequential_14/dense_4/MatMul/ReadVariableOp+sequential_14/dense_4/MatMul/ReadVariableOp2\
,sequential_14/dense_5/BiasAdd/ReadVariableOp,sequential_14/dense_5/BiasAdd/ReadVariableOp2Z
+sequential_14/dense_5/MatMul/ReadVariableOp+sequential_14/dense_5/MatMul/ReadVariableOp2�
Rsequential_14/sequential_15/batch_normalization_19/FusedBatchNormV3/ReadVariableOpRsequential_14/sequential_15/batch_normalization_19/FusedBatchNormV3/ReadVariableOp2�
Tsequential_14/sequential_15/batch_normalization_19/FusedBatchNormV3/ReadVariableOp_1Tsequential_14/sequential_15/batch_normalization_19/FusedBatchNormV3/ReadVariableOp_12�
Asequential_14/sequential_15/batch_normalization_19/ReadVariableOpAsequential_14/sequential_15/batch_normalization_19/ReadVariableOp2�
Csequential_14/sequential_15/batch_normalization_19/ReadVariableOp_1Csequential_14/sequential_15/batch_normalization_19/ReadVariableOp_12|
<sequential_14/sequential_15/conv2d_12/BiasAdd/ReadVariableOp<sequential_14/sequential_15/conv2d_12/BiasAdd/ReadVariableOp2z
;sequential_14/sequential_15/conv2d_12/Conv2D/ReadVariableOp;sequential_14/sequential_15/conv2d_12/Conv2D/ReadVariableOp2�
Rsequential_14/sequential_16/batch_normalization_20/FusedBatchNormV3/ReadVariableOpRsequential_14/sequential_16/batch_normalization_20/FusedBatchNormV3/ReadVariableOp2�
Tsequential_14/sequential_16/batch_normalization_20/FusedBatchNormV3/ReadVariableOp_1Tsequential_14/sequential_16/batch_normalization_20/FusedBatchNormV3/ReadVariableOp_12�
Asequential_14/sequential_16/batch_normalization_20/ReadVariableOpAsequential_14/sequential_16/batch_normalization_20/ReadVariableOp2�
Csequential_14/sequential_16/batch_normalization_20/ReadVariableOp_1Csequential_14/sequential_16/batch_normalization_20/ReadVariableOp_12|
<sequential_14/sequential_16/conv2d_13/BiasAdd/ReadVariableOp<sequential_14/sequential_16/conv2d_13/BiasAdd/ReadVariableOp2z
;sequential_14/sequential_16/conv2d_13/Conv2D/ReadVariableOp;sequential_14/sequential_16/conv2d_13/Conv2D/ReadVariableOp2�
Rsequential_14/sequential_17/batch_normalization_21/FusedBatchNormV3/ReadVariableOpRsequential_14/sequential_17/batch_normalization_21/FusedBatchNormV3/ReadVariableOp2�
Tsequential_14/sequential_17/batch_normalization_21/FusedBatchNormV3/ReadVariableOp_1Tsequential_14/sequential_17/batch_normalization_21/FusedBatchNormV3/ReadVariableOp_12�
Asequential_14/sequential_17/batch_normalization_21/ReadVariableOpAsequential_14/sequential_17/batch_normalization_21/ReadVariableOp2�
Csequential_14/sequential_17/batch_normalization_21/ReadVariableOp_1Csequential_14/sequential_17/batch_normalization_21/ReadVariableOp_12|
<sequential_14/sequential_17/conv2d_14/BiasAdd/ReadVariableOp<sequential_14/sequential_17/conv2d_14/BiasAdd/ReadVariableOp2z
;sequential_14/sequential_17/conv2d_14/Conv2D/ReadVariableOp;sequential_14/sequential_17/conv2d_14/Conv2D/ReadVariableOp2�
Rsequential_14/sequential_18/batch_normalization_22/FusedBatchNormV3/ReadVariableOpRsequential_14/sequential_18/batch_normalization_22/FusedBatchNormV3/ReadVariableOp2�
Tsequential_14/sequential_18/batch_normalization_22/FusedBatchNormV3/ReadVariableOp_1Tsequential_14/sequential_18/batch_normalization_22/FusedBatchNormV3/ReadVariableOp_12�
Asequential_14/sequential_18/batch_normalization_22/ReadVariableOpAsequential_14/sequential_18/batch_normalization_22/ReadVariableOp2�
Csequential_14/sequential_18/batch_normalization_22/ReadVariableOp_1Csequential_14/sequential_18/batch_normalization_22/ReadVariableOp_12|
<sequential_14/sequential_18/conv2d_15/BiasAdd/ReadVariableOp<sequential_14/sequential_18/conv2d_15/BiasAdd/ReadVariableOp2z
;sequential_14/sequential_18/conv2d_15/Conv2D/ReadVariableOp;sequential_14/sequential_18/conv2d_15/Conv2D/ReadVariableOp2�
Rsequential_14/sequential_19/batch_normalization_23/FusedBatchNormV3/ReadVariableOpRsequential_14/sequential_19/batch_normalization_23/FusedBatchNormV3/ReadVariableOp2�
Tsequential_14/sequential_19/batch_normalization_23/FusedBatchNormV3/ReadVariableOp_1Tsequential_14/sequential_19/batch_normalization_23/FusedBatchNormV3/ReadVariableOp_12�
Asequential_14/sequential_19/batch_normalization_23/ReadVariableOpAsequential_14/sequential_19/batch_normalization_23/ReadVariableOp2�
Csequential_14/sequential_19/batch_normalization_23/ReadVariableOp_1Csequential_14/sequential_19/batch_normalization_23/ReadVariableOp_12|
<sequential_14/sequential_19/conv2d_16/BiasAdd/ReadVariableOp<sequential_14/sequential_19/conv2d_16/BiasAdd/ReadVariableOp2z
;sequential_14/sequential_19/conv2d_16/Conv2D/ReadVariableOp;sequential_14/sequential_19/conv2d_16/Conv2D/ReadVariableOp2�
Rsequential_14/sequential_20/batch_normalization_24/FusedBatchNormV3/ReadVariableOpRsequential_14/sequential_20/batch_normalization_24/FusedBatchNormV3/ReadVariableOp2�
Tsequential_14/sequential_20/batch_normalization_24/FusedBatchNormV3/ReadVariableOp_1Tsequential_14/sequential_20/batch_normalization_24/FusedBatchNormV3/ReadVariableOp_12�
Asequential_14/sequential_20/batch_normalization_24/ReadVariableOpAsequential_14/sequential_20/batch_normalization_24/ReadVariableOp2�
Csequential_14/sequential_20/batch_normalization_24/ReadVariableOp_1Csequential_14/sequential_20/batch_normalization_24/ReadVariableOp_12|
<sequential_14/sequential_20/conv2d_17/BiasAdd/ReadVariableOp<sequential_14/sequential_20/conv2d_17/BiasAdd/ReadVariableOp2z
;sequential_14/sequential_20/conv2d_17/Conv2D/ReadVariableOp;sequential_14/sequential_20/conv2d_17/Conv2D/ReadVariableOp:d `
/
_output_shapes
:���������  
-
_user_specified_namesequential_15_input
�
_
C__inference_re_lu_25_layer_call_and_return_conditional_losses_69750

inputs
identityG
ReluReluinputs*
T0*(
_output_shapes
:����������[
IdentityIdentityRelu:activations:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�	
�
-__inference_sequential_16_layer_call_fn_69143

inputs!
unknown:!
	unknown_0:!
	unknown_1:!
	unknown_2:!
	unknown_3:!
	unknown_4:!
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������!*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_sequential_16_layer_call_and_return_conditional_losses_65978w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������!`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������  : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������  
 
_user_specified_nameinputs
�
�
H__inference_sequential_15_layer_call_and_return_conditional_losses_65743
conv2d_12_input)
conv2d_12_65727:
conv2d_12_65729:*
batch_normalization_19_65732:*
batch_normalization_19_65734:*
batch_normalization_19_65736:*
batch_normalization_19_65738:
identity��.batch_normalization_19/StatefulPartitionedCall�!conv2d_12/StatefulPartitionedCall�
!conv2d_12/StatefulPartitionedCallStatefulPartitionedCallconv2d_12_inputconv2d_12_65727conv2d_12_65729*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������  *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_conv2d_12_layer_call_and_return_conditional_losses_65519�
.batch_normalization_19/StatefulPartitionedCallStatefulPartitionedCall*conv2d_12/StatefulPartitionedCall:output:0batch_normalization_19_65732batch_normalization_19_65734batch_normalization_19_65736batch_normalization_19_65738*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������  *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_19_layer_call_and_return_conditional_losses_65614�
re_lu_19/PartitionedCallPartitionedCall7batch_normalization_19/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������  * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_re_lu_19_layer_call_and_return_conditional_losses_65557x
IdentityIdentity!re_lu_19/PartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������  �
NoOpNoOp/^batch_normalization_19/StatefulPartitionedCall"^conv2d_12/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������  : : : : : : 2`
.batch_normalization_19/StatefulPartitionedCall.batch_normalization_19/StatefulPartitionedCall2F
!conv2d_12/StatefulPartitionedCall!conv2d_12/StatefulPartitionedCall:` \
/
_output_shapes
:���������  
)
_user_specified_nameconv2d_12_input
�
�
H__inference_sequential_15_layer_call_and_return_conditional_losses_65673

inputs)
conv2d_12_65657:
conv2d_12_65659:*
batch_normalization_19_65662:*
batch_normalization_19_65664:*
batch_normalization_19_65666:*
batch_normalization_19_65668:
identity��.batch_normalization_19/StatefulPartitionedCall�!conv2d_12/StatefulPartitionedCall�
!conv2d_12/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_12_65657conv2d_12_65659*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������  *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_conv2d_12_layer_call_and_return_conditional_losses_65519�
.batch_normalization_19/StatefulPartitionedCallStatefulPartitionedCall*conv2d_12/StatefulPartitionedCall:output:0batch_normalization_19_65662batch_normalization_19_65664batch_normalization_19_65666batch_normalization_19_65668*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������  *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_19_layer_call_and_return_conditional_losses_65614�
re_lu_19/PartitionedCallPartitionedCall7batch_normalization_19/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������  * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_re_lu_19_layer_call_and_return_conditional_losses_65557x
IdentityIdentity!re_lu_19/PartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������  �
NoOpNoOp/^batch_normalization_19/StatefulPartitionedCall"^conv2d_12/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������  : : : : : : 2`
.batch_normalization_19/StatefulPartitionedCall.batch_normalization_19/StatefulPartitionedCall2F
!conv2d_12/StatefulPartitionedCall!conv2d_12/StatefulPartitionedCall:W S
/
_output_shapes
:���������  
 
_user_specified_nameinputs
�
�
H__inference_sequential_20_layer_call_and_return_conditional_losses_67268
conv2d_17_input*
conv2d_17_67252:x�
conv2d_17_67254:	�+
batch_normalization_24_67257:	�+
batch_normalization_24_67259:	�+
batch_normalization_24_67261:	�+
batch_normalization_24_67263:	�
identity��.batch_normalization_24/StatefulPartitionedCall�!conv2d_17/StatefulPartitionedCall�
!conv2d_17/StatefulPartitionedCallStatefulPartitionedCallconv2d_17_inputconv2d_17_67252conv2d_17_67254*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_conv2d_17_layer_call_and_return_conditional_losses_67044�
.batch_normalization_24/StatefulPartitionedCallStatefulPartitionedCall*conv2d_17/StatefulPartitionedCall:output:0batch_normalization_24_67257batch_normalization_24_67259batch_normalization_24_67261batch_normalization_24_67263*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_24_layer_call_and_return_conditional_losses_67139�
re_lu_24/PartitionedCallPartitionedCall7batch_normalization_24/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_re_lu_24_layer_call_and_return_conditional_losses_67082y
IdentityIdentity!re_lu_24/PartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:�����������
NoOpNoOp/^batch_normalization_24/StatefulPartitionedCall"^conv2d_17/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������x: : : : : : 2`
.batch_normalization_24/StatefulPartitionedCall.batch_normalization_24/StatefulPartitionedCall2F
!conv2d_17/StatefulPartitionedCall!conv2d_17/StatefulPartitionedCall:` \
/
_output_shapes
:���������x
)
_user_specified_nameconv2d_17_input
�	
�
-__inference_sequential_17_layer_call_fn_69237

inputs!
unknown:!7
	unknown_0:7
	unknown_1:7
	unknown_2:7
	unknown_3:7
	unknown_4:7
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������7*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_sequential_17_layer_call_and_return_conditional_losses_66170w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������7`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������!: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������!
 
_user_specified_nameinputs
�

�
D__inference_conv2d_14_layer_call_and_return_conditional_losses_66129

inputs8
conv2d_readvariableop_resource:!7-
biasadd_readvariableop_resource:7
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:!7*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������7*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:7*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������7g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:���������7w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������!: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������!
 
_user_specified_nameinputs
�
E
)__inference_dropout_8_layer_call_fn_69198

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������!* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dropout_8_layer_call_and_return_conditional_losses_67400h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:���������!"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������!:W S
/
_output_shapes
:���������!
 
_user_specified_nameinputs
��
�5
H__inference_sequential_14_layer_call_and_return_conditional_losses_69025

inputsP
6sequential_15_conv2d_12_conv2d_readvariableop_resource:E
7sequential_15_conv2d_12_biasadd_readvariableop_resource:J
<sequential_15_batch_normalization_19_readvariableop_resource:L
>sequential_15_batch_normalization_19_readvariableop_1_resource:[
Msequential_15_batch_normalization_19_fusedbatchnormv3_readvariableop_resource:]
Osequential_15_batch_normalization_19_fusedbatchnormv3_readvariableop_1_resource:P
6sequential_16_conv2d_13_conv2d_readvariableop_resource:!E
7sequential_16_conv2d_13_biasadd_readvariableop_resource:!J
<sequential_16_batch_normalization_20_readvariableop_resource:!L
>sequential_16_batch_normalization_20_readvariableop_1_resource:![
Msequential_16_batch_normalization_20_fusedbatchnormv3_readvariableop_resource:!]
Osequential_16_batch_normalization_20_fusedbatchnormv3_readvariableop_1_resource:!P
6sequential_17_conv2d_14_conv2d_readvariableop_resource:!7E
7sequential_17_conv2d_14_biasadd_readvariableop_resource:7J
<sequential_17_batch_normalization_21_readvariableop_resource:7L
>sequential_17_batch_normalization_21_readvariableop_1_resource:7[
Msequential_17_batch_normalization_21_fusedbatchnormv3_readvariableop_resource:7]
Osequential_17_batch_normalization_21_fusedbatchnormv3_readvariableop_1_resource:7P
6sequential_18_conv2d_15_conv2d_readvariableop_resource:7<E
7sequential_18_conv2d_15_biasadd_readvariableop_resource:<J
<sequential_18_batch_normalization_22_readvariableop_resource:<L
>sequential_18_batch_normalization_22_readvariableop_1_resource:<[
Msequential_18_batch_normalization_22_fusedbatchnormv3_readvariableop_resource:<]
Osequential_18_batch_normalization_22_fusedbatchnormv3_readvariableop_1_resource:<P
6sequential_19_conv2d_16_conv2d_readvariableop_resource:<xE
7sequential_19_conv2d_16_biasadd_readvariableop_resource:xJ
<sequential_19_batch_normalization_23_readvariableop_resource:xL
>sequential_19_batch_normalization_23_readvariableop_1_resource:x[
Msequential_19_batch_normalization_23_fusedbatchnormv3_readvariableop_resource:x]
Osequential_19_batch_normalization_23_fusedbatchnormv3_readvariableop_1_resource:xQ
6sequential_20_conv2d_17_conv2d_readvariableop_resource:x�F
7sequential_20_conv2d_17_biasadd_readvariableop_resource:	�K
<sequential_20_batch_normalization_24_readvariableop_resource:	�M
>sequential_20_batch_normalization_24_readvariableop_1_resource:	�\
Msequential_20_batch_normalization_24_fusedbatchnormv3_readvariableop_resource:	�^
Osequential_20_batch_normalization_24_fusedbatchnormv3_readvariableop_1_resource:	�:
&dense_4_matmul_readvariableop_resource:
�A�6
'dense_4_biasadd_readvariableop_resource:	�M
>batch_normalization_25_assignmovingavg_readvariableop_resource:	�O
@batch_normalization_25_assignmovingavg_1_readvariableop_resource:	�K
<batch_normalization_25_batchnorm_mul_readvariableop_resource:	�G
8batch_normalization_25_batchnorm_readvariableop_resource:	�9
&dense_5_matmul_readvariableop_resource:	�
5
'dense_5_biasadd_readvariableop_resource:

identity��&batch_normalization_25/AssignMovingAvg�5batch_normalization_25/AssignMovingAvg/ReadVariableOp�(batch_normalization_25/AssignMovingAvg_1�7batch_normalization_25/AssignMovingAvg_1/ReadVariableOp�/batch_normalization_25/batchnorm/ReadVariableOp�3batch_normalization_25/batchnorm/mul/ReadVariableOp�dense_4/BiasAdd/ReadVariableOp�dense_4/MatMul/ReadVariableOp�dense_5/BiasAdd/ReadVariableOp�dense_5/MatMul/ReadVariableOp�3sequential_15/batch_normalization_19/AssignNewValue�5sequential_15/batch_normalization_19/AssignNewValue_1�Dsequential_15/batch_normalization_19/FusedBatchNormV3/ReadVariableOp�Fsequential_15/batch_normalization_19/FusedBatchNormV3/ReadVariableOp_1�3sequential_15/batch_normalization_19/ReadVariableOp�5sequential_15/batch_normalization_19/ReadVariableOp_1�.sequential_15/conv2d_12/BiasAdd/ReadVariableOp�-sequential_15/conv2d_12/Conv2D/ReadVariableOp�3sequential_16/batch_normalization_20/AssignNewValue�5sequential_16/batch_normalization_20/AssignNewValue_1�Dsequential_16/batch_normalization_20/FusedBatchNormV3/ReadVariableOp�Fsequential_16/batch_normalization_20/FusedBatchNormV3/ReadVariableOp_1�3sequential_16/batch_normalization_20/ReadVariableOp�5sequential_16/batch_normalization_20/ReadVariableOp_1�.sequential_16/conv2d_13/BiasAdd/ReadVariableOp�-sequential_16/conv2d_13/Conv2D/ReadVariableOp�3sequential_17/batch_normalization_21/AssignNewValue�5sequential_17/batch_normalization_21/AssignNewValue_1�Dsequential_17/batch_normalization_21/FusedBatchNormV3/ReadVariableOp�Fsequential_17/batch_normalization_21/FusedBatchNormV3/ReadVariableOp_1�3sequential_17/batch_normalization_21/ReadVariableOp�5sequential_17/batch_normalization_21/ReadVariableOp_1�.sequential_17/conv2d_14/BiasAdd/ReadVariableOp�-sequential_17/conv2d_14/Conv2D/ReadVariableOp�3sequential_18/batch_normalization_22/AssignNewValue�5sequential_18/batch_normalization_22/AssignNewValue_1�Dsequential_18/batch_normalization_22/FusedBatchNormV3/ReadVariableOp�Fsequential_18/batch_normalization_22/FusedBatchNormV3/ReadVariableOp_1�3sequential_18/batch_normalization_22/ReadVariableOp�5sequential_18/batch_normalization_22/ReadVariableOp_1�.sequential_18/conv2d_15/BiasAdd/ReadVariableOp�-sequential_18/conv2d_15/Conv2D/ReadVariableOp�3sequential_19/batch_normalization_23/AssignNewValue�5sequential_19/batch_normalization_23/AssignNewValue_1�Dsequential_19/batch_normalization_23/FusedBatchNormV3/ReadVariableOp�Fsequential_19/batch_normalization_23/FusedBatchNormV3/ReadVariableOp_1�3sequential_19/batch_normalization_23/ReadVariableOp�5sequential_19/batch_normalization_23/ReadVariableOp_1�.sequential_19/conv2d_16/BiasAdd/ReadVariableOp�-sequential_19/conv2d_16/Conv2D/ReadVariableOp�3sequential_20/batch_normalization_24/AssignNewValue�5sequential_20/batch_normalization_24/AssignNewValue_1�Dsequential_20/batch_normalization_24/FusedBatchNormV3/ReadVariableOp�Fsequential_20/batch_normalization_24/FusedBatchNormV3/ReadVariableOp_1�3sequential_20/batch_normalization_24/ReadVariableOp�5sequential_20/batch_normalization_24/ReadVariableOp_1�.sequential_20/conv2d_17/BiasAdd/ReadVariableOp�-sequential_20/conv2d_17/Conv2D/ReadVariableOp�
-sequential_15/conv2d_12/Conv2D/ReadVariableOpReadVariableOp6sequential_15_conv2d_12_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
sequential_15/conv2d_12/Conv2DConv2Dinputs5sequential_15/conv2d_12/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������  *
paddingSAME*
strides
�
.sequential_15/conv2d_12/BiasAdd/ReadVariableOpReadVariableOp7sequential_15_conv2d_12_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
sequential_15/conv2d_12/BiasAddBiasAdd'sequential_15/conv2d_12/Conv2D:output:06sequential_15/conv2d_12/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������  �
3sequential_15/batch_normalization_19/ReadVariableOpReadVariableOp<sequential_15_batch_normalization_19_readvariableop_resource*
_output_shapes
:*
dtype0�
5sequential_15/batch_normalization_19/ReadVariableOp_1ReadVariableOp>sequential_15_batch_normalization_19_readvariableop_1_resource*
_output_shapes
:*
dtype0�
Dsequential_15/batch_normalization_19/FusedBatchNormV3/ReadVariableOpReadVariableOpMsequential_15_batch_normalization_19_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
Fsequential_15/batch_normalization_19/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpOsequential_15_batch_normalization_19_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
5sequential_15/batch_normalization_19/FusedBatchNormV3FusedBatchNormV3(sequential_15/conv2d_12/BiasAdd:output:0;sequential_15/batch_normalization_19/ReadVariableOp:value:0=sequential_15/batch_normalization_19/ReadVariableOp_1:value:0Lsequential_15/batch_normalization_19/FusedBatchNormV3/ReadVariableOp:value:0Nsequential_15/batch_normalization_19/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������  :::::*
epsilon%o�:*
exponential_avg_factor%
�#<�
3sequential_15/batch_normalization_19/AssignNewValueAssignVariableOpMsequential_15_batch_normalization_19_fusedbatchnormv3_readvariableop_resourceBsequential_15/batch_normalization_19/FusedBatchNormV3:batch_mean:0E^sequential_15/batch_normalization_19/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0�
5sequential_15/batch_normalization_19/AssignNewValue_1AssignVariableOpOsequential_15_batch_normalization_19_fusedbatchnormv3_readvariableop_1_resourceFsequential_15/batch_normalization_19/FusedBatchNormV3:batch_variance:0G^sequential_15/batch_normalization_19/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0�
sequential_15/re_lu_19/ReluRelu9sequential_15/batch_normalization_19/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:���������  �
-sequential_16/conv2d_13/Conv2D/ReadVariableOpReadVariableOp6sequential_16_conv2d_13_conv2d_readvariableop_resource*&
_output_shapes
:!*
dtype0�
sequential_16/conv2d_13/Conv2DConv2D)sequential_15/re_lu_19/Relu:activations:05sequential_16/conv2d_13/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������!*
paddingSAME*
strides
�
.sequential_16/conv2d_13/BiasAdd/ReadVariableOpReadVariableOp7sequential_16_conv2d_13_biasadd_readvariableop_resource*
_output_shapes
:!*
dtype0�
sequential_16/conv2d_13/BiasAddBiasAdd'sequential_16/conv2d_13/Conv2D:output:06sequential_16/conv2d_13/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������!�
3sequential_16/batch_normalization_20/ReadVariableOpReadVariableOp<sequential_16_batch_normalization_20_readvariableop_resource*
_output_shapes
:!*
dtype0�
5sequential_16/batch_normalization_20/ReadVariableOp_1ReadVariableOp>sequential_16_batch_normalization_20_readvariableop_1_resource*
_output_shapes
:!*
dtype0�
Dsequential_16/batch_normalization_20/FusedBatchNormV3/ReadVariableOpReadVariableOpMsequential_16_batch_normalization_20_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:!*
dtype0�
Fsequential_16/batch_normalization_20/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpOsequential_16_batch_normalization_20_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:!*
dtype0�
5sequential_16/batch_normalization_20/FusedBatchNormV3FusedBatchNormV3(sequential_16/conv2d_13/BiasAdd:output:0;sequential_16/batch_normalization_20/ReadVariableOp:value:0=sequential_16/batch_normalization_20/ReadVariableOp_1:value:0Lsequential_16/batch_normalization_20/FusedBatchNormV3/ReadVariableOp:value:0Nsequential_16/batch_normalization_20/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������!:!:!:!:!:*
epsilon%o�:*
exponential_avg_factor%
�#<�
3sequential_16/batch_normalization_20/AssignNewValueAssignVariableOpMsequential_16_batch_normalization_20_fusedbatchnormv3_readvariableop_resourceBsequential_16/batch_normalization_20/FusedBatchNormV3:batch_mean:0E^sequential_16/batch_normalization_20/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0�
5sequential_16/batch_normalization_20/AssignNewValue_1AssignVariableOpOsequential_16_batch_normalization_20_fusedbatchnormv3_readvariableop_1_resourceFsequential_16/batch_normalization_20/FusedBatchNormV3:batch_variance:0G^sequential_16/batch_normalization_20/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0�
sequential_16/re_lu_20/ReluRelu9sequential_16/batch_normalization_20/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:���������!\
dropout_8/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?�
dropout_8/dropout/MulMul)sequential_16/re_lu_20/Relu:activations:0 dropout_8/dropout/Const:output:0*
T0*/
_output_shapes
:���������!p
dropout_8/dropout/ShapeShape)sequential_16/re_lu_20/Relu:activations:0*
T0*
_output_shapes
:�
.dropout_8/dropout/random_uniform/RandomUniformRandomUniform dropout_8/dropout/Shape:output:0*
T0*/
_output_shapes
:���������!*
dtype0e
 dropout_8/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���>�
dropout_8/dropout/GreaterEqualGreaterEqual7dropout_8/dropout/random_uniform/RandomUniform:output:0)dropout_8/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:���������!�
dropout_8/dropout/CastCast"dropout_8/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:���������!�
dropout_8/dropout/Mul_1Muldropout_8/dropout/Mul:z:0dropout_8/dropout/Cast:y:0*
T0*/
_output_shapes
:���������!�
-sequential_17/conv2d_14/Conv2D/ReadVariableOpReadVariableOp6sequential_17_conv2d_14_conv2d_readvariableop_resource*&
_output_shapes
:!7*
dtype0�
sequential_17/conv2d_14/Conv2DConv2Ddropout_8/dropout/Mul_1:z:05sequential_17/conv2d_14/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������7*
paddingSAME*
strides
�
.sequential_17/conv2d_14/BiasAdd/ReadVariableOpReadVariableOp7sequential_17_conv2d_14_biasadd_readvariableop_resource*
_output_shapes
:7*
dtype0�
sequential_17/conv2d_14/BiasAddBiasAdd'sequential_17/conv2d_14/Conv2D:output:06sequential_17/conv2d_14/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������7�
3sequential_17/batch_normalization_21/ReadVariableOpReadVariableOp<sequential_17_batch_normalization_21_readvariableop_resource*
_output_shapes
:7*
dtype0�
5sequential_17/batch_normalization_21/ReadVariableOp_1ReadVariableOp>sequential_17_batch_normalization_21_readvariableop_1_resource*
_output_shapes
:7*
dtype0�
Dsequential_17/batch_normalization_21/FusedBatchNormV3/ReadVariableOpReadVariableOpMsequential_17_batch_normalization_21_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:7*
dtype0�
Fsequential_17/batch_normalization_21/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpOsequential_17_batch_normalization_21_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:7*
dtype0�
5sequential_17/batch_normalization_21/FusedBatchNormV3FusedBatchNormV3(sequential_17/conv2d_14/BiasAdd:output:0;sequential_17/batch_normalization_21/ReadVariableOp:value:0=sequential_17/batch_normalization_21/ReadVariableOp_1:value:0Lsequential_17/batch_normalization_21/FusedBatchNormV3/ReadVariableOp:value:0Nsequential_17/batch_normalization_21/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������7:7:7:7:7:*
epsilon%o�:*
exponential_avg_factor%
�#<�
3sequential_17/batch_normalization_21/AssignNewValueAssignVariableOpMsequential_17_batch_normalization_21_fusedbatchnormv3_readvariableop_resourceBsequential_17/batch_normalization_21/FusedBatchNormV3:batch_mean:0E^sequential_17/batch_normalization_21/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0�
5sequential_17/batch_normalization_21/AssignNewValue_1AssignVariableOpOsequential_17_batch_normalization_21_fusedbatchnormv3_readvariableop_1_resourceFsequential_17/batch_normalization_21/FusedBatchNormV3:batch_variance:0G^sequential_17/batch_normalization_21/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0�
sequential_17/re_lu_21/ReluRelu9sequential_17/batch_normalization_21/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:���������7�
-sequential_18/conv2d_15/Conv2D/ReadVariableOpReadVariableOp6sequential_18_conv2d_15_conv2d_readvariableop_resource*&
_output_shapes
:7<*
dtype0�
sequential_18/conv2d_15/Conv2DConv2D)sequential_17/re_lu_21/Relu:activations:05sequential_18/conv2d_15/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������<*
paddingSAME*
strides
�
.sequential_18/conv2d_15/BiasAdd/ReadVariableOpReadVariableOp7sequential_18_conv2d_15_biasadd_readvariableop_resource*
_output_shapes
:<*
dtype0�
sequential_18/conv2d_15/BiasAddBiasAdd'sequential_18/conv2d_15/Conv2D:output:06sequential_18/conv2d_15/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������<�
3sequential_18/batch_normalization_22/ReadVariableOpReadVariableOp<sequential_18_batch_normalization_22_readvariableop_resource*
_output_shapes
:<*
dtype0�
5sequential_18/batch_normalization_22/ReadVariableOp_1ReadVariableOp>sequential_18_batch_normalization_22_readvariableop_1_resource*
_output_shapes
:<*
dtype0�
Dsequential_18/batch_normalization_22/FusedBatchNormV3/ReadVariableOpReadVariableOpMsequential_18_batch_normalization_22_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:<*
dtype0�
Fsequential_18/batch_normalization_22/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpOsequential_18_batch_normalization_22_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:<*
dtype0�
5sequential_18/batch_normalization_22/FusedBatchNormV3FusedBatchNormV3(sequential_18/conv2d_15/BiasAdd:output:0;sequential_18/batch_normalization_22/ReadVariableOp:value:0=sequential_18/batch_normalization_22/ReadVariableOp_1:value:0Lsequential_18/batch_normalization_22/FusedBatchNormV3/ReadVariableOp:value:0Nsequential_18/batch_normalization_22/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������<:<:<:<:<:*
epsilon%o�:*
exponential_avg_factor%
�#<�
3sequential_18/batch_normalization_22/AssignNewValueAssignVariableOpMsequential_18_batch_normalization_22_fusedbatchnormv3_readvariableop_resourceBsequential_18/batch_normalization_22/FusedBatchNormV3:batch_mean:0E^sequential_18/batch_normalization_22/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0�
5sequential_18/batch_normalization_22/AssignNewValue_1AssignVariableOpOsequential_18_batch_normalization_22_fusedbatchnormv3_readvariableop_1_resourceFsequential_18/batch_normalization_22/FusedBatchNormV3:batch_variance:0G^sequential_18/batch_normalization_22/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0�
sequential_18/re_lu_22/ReluRelu9sequential_18/batch_normalization_22/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:���������<\
dropout_9/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @�
dropout_9/dropout/MulMul)sequential_18/re_lu_22/Relu:activations:0 dropout_9/dropout/Const:output:0*
T0*/
_output_shapes
:���������<p
dropout_9/dropout/ShapeShape)sequential_18/re_lu_22/Relu:activations:0*
T0*
_output_shapes
:�
.dropout_9/dropout/random_uniform/RandomUniformRandomUniform dropout_9/dropout/Shape:output:0*
T0*/
_output_shapes
:���������<*
dtype0e
 dropout_9/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
dropout_9/dropout/GreaterEqualGreaterEqual7dropout_9/dropout/random_uniform/RandomUniform:output:0)dropout_9/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:���������<�
dropout_9/dropout/CastCast"dropout_9/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:���������<�
dropout_9/dropout/Mul_1Muldropout_9/dropout/Mul:z:0dropout_9/dropout/Cast:y:0*
T0*/
_output_shapes
:���������<�
-sequential_19/conv2d_16/Conv2D/ReadVariableOpReadVariableOp6sequential_19_conv2d_16_conv2d_readvariableop_resource*&
_output_shapes
:<x*
dtype0�
sequential_19/conv2d_16/Conv2DConv2Ddropout_9/dropout/Mul_1:z:05sequential_19/conv2d_16/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������x*
paddingSAME*
strides
�
.sequential_19/conv2d_16/BiasAdd/ReadVariableOpReadVariableOp7sequential_19_conv2d_16_biasadd_readvariableop_resource*
_output_shapes
:x*
dtype0�
sequential_19/conv2d_16/BiasAddBiasAdd'sequential_19/conv2d_16/Conv2D:output:06sequential_19/conv2d_16/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������x�
3sequential_19/batch_normalization_23/ReadVariableOpReadVariableOp<sequential_19_batch_normalization_23_readvariableop_resource*
_output_shapes
:x*
dtype0�
5sequential_19/batch_normalization_23/ReadVariableOp_1ReadVariableOp>sequential_19_batch_normalization_23_readvariableop_1_resource*
_output_shapes
:x*
dtype0�
Dsequential_19/batch_normalization_23/FusedBatchNormV3/ReadVariableOpReadVariableOpMsequential_19_batch_normalization_23_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:x*
dtype0�
Fsequential_19/batch_normalization_23/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpOsequential_19_batch_normalization_23_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:x*
dtype0�
5sequential_19/batch_normalization_23/FusedBatchNormV3FusedBatchNormV3(sequential_19/conv2d_16/BiasAdd:output:0;sequential_19/batch_normalization_23/ReadVariableOp:value:0=sequential_19/batch_normalization_23/ReadVariableOp_1:value:0Lsequential_19/batch_normalization_23/FusedBatchNormV3/ReadVariableOp:value:0Nsequential_19/batch_normalization_23/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������x:x:x:x:x:*
epsilon%o�:*
exponential_avg_factor%
�#<�
3sequential_19/batch_normalization_23/AssignNewValueAssignVariableOpMsequential_19_batch_normalization_23_fusedbatchnormv3_readvariableop_resourceBsequential_19/batch_normalization_23/FusedBatchNormV3:batch_mean:0E^sequential_19/batch_normalization_23/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0�
5sequential_19/batch_normalization_23/AssignNewValue_1AssignVariableOpOsequential_19_batch_normalization_23_fusedbatchnormv3_readvariableop_1_resourceFsequential_19/batch_normalization_23/FusedBatchNormV3:batch_variance:0G^sequential_19/batch_normalization_23/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0�
sequential_19/re_lu_23/ReluRelu9sequential_19/batch_normalization_23/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:���������x�
-sequential_20/conv2d_17/Conv2D/ReadVariableOpReadVariableOp6sequential_20_conv2d_17_conv2d_readvariableop_resource*'
_output_shapes
:x�*
dtype0�
sequential_20/conv2d_17/Conv2DConv2D)sequential_19/re_lu_23/Relu:activations:05sequential_20/conv2d_17/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
�
.sequential_20/conv2d_17/BiasAdd/ReadVariableOpReadVariableOp7sequential_20_conv2d_17_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
sequential_20/conv2d_17/BiasAddBiasAdd'sequential_20/conv2d_17/Conv2D:output:06sequential_20/conv2d_17/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:�����������
3sequential_20/batch_normalization_24/ReadVariableOpReadVariableOp<sequential_20_batch_normalization_24_readvariableop_resource*
_output_shapes	
:�*
dtype0�
5sequential_20/batch_normalization_24/ReadVariableOp_1ReadVariableOp>sequential_20_batch_normalization_24_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
Dsequential_20/batch_normalization_24/FusedBatchNormV3/ReadVariableOpReadVariableOpMsequential_20_batch_normalization_24_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype0�
Fsequential_20/batch_normalization_24/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpOsequential_20_batch_normalization_24_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
5sequential_20/batch_normalization_24/FusedBatchNormV3FusedBatchNormV3(sequential_20/conv2d_17/BiasAdd:output:0;sequential_20/batch_normalization_24/ReadVariableOp:value:0=sequential_20/batch_normalization_24/ReadVariableOp_1:value:0Lsequential_20/batch_normalization_24/FusedBatchNormV3/ReadVariableOp:value:0Nsequential_20/batch_normalization_24/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:����������:�:�:�:�:*
epsilon%o�:*
exponential_avg_factor%
�#<�
3sequential_20/batch_normalization_24/AssignNewValueAssignVariableOpMsequential_20_batch_normalization_24_fusedbatchnormv3_readvariableop_resourceBsequential_20/batch_normalization_24/FusedBatchNormV3:batch_mean:0E^sequential_20/batch_normalization_24/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0�
5sequential_20/batch_normalization_24/AssignNewValue_1AssignVariableOpOsequential_20_batch_normalization_24_fusedbatchnormv3_readvariableop_1_resourceFsequential_20/batch_normalization_24/FusedBatchNormV3:batch_variance:0G^sequential_20/batch_normalization_24/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0�
sequential_20/re_lu_24/ReluRelu9sequential_20/batch_normalization_24/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:�����������
max_pooling2d_2/MaxPoolMaxPool)sequential_20/re_lu_24/Relu:activations:0*0
_output_shapes
:����������*
ksize
*
paddingVALID*
strides
]
dropout_10/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @�
dropout_10/dropout/MulMul max_pooling2d_2/MaxPool:output:0!dropout_10/dropout/Const:output:0*
T0*0
_output_shapes
:����������h
dropout_10/dropout/ShapeShape max_pooling2d_2/MaxPool:output:0*
T0*
_output_shapes
:�
/dropout_10/dropout/random_uniform/RandomUniformRandomUniform!dropout_10/dropout/Shape:output:0*
T0*0
_output_shapes
:����������*
dtype0f
!dropout_10/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
dropout_10/dropout/GreaterEqualGreaterEqual8dropout_10/dropout/random_uniform/RandomUniform:output:0*dropout_10/dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:�����������
dropout_10/dropout/CastCast#dropout_10/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:�����������
dropout_10/dropout/Mul_1Muldropout_10/dropout/Mul:z:0dropout_10/dropout/Cast:y:0*
T0*0
_output_shapes
:����������`
flatten_2/ConstConst*
_output_shapes
:*
dtype0*
valueB"�����   �
flatten_2/ReshapeReshapedropout_10/dropout/Mul_1:z:0flatten_2/Const:output:0*
T0*(
_output_shapes
:����������A�
dense_4/MatMul/ReadVariableOpReadVariableOp&dense_4_matmul_readvariableop_resource* 
_output_shapes
:
�A�*
dtype0�
dense_4/MatMulMatMulflatten_2/Reshape:output:0%dense_4/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
dense_4/BiasAdd/ReadVariableOpReadVariableOp'dense_4_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
dense_4/BiasAddBiasAdddense_4/MatMul:product:0&dense_4/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������
5batch_normalization_25/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
#batch_normalization_25/moments/meanMeandense_4/BiasAdd:output:0>batch_normalization_25/moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	�*
	keep_dims(�
+batch_normalization_25/moments/StopGradientStopGradient,batch_normalization_25/moments/mean:output:0*
T0*
_output_shapes
:	��
0batch_normalization_25/moments/SquaredDifferenceSquaredDifferencedense_4/BiasAdd:output:04batch_normalization_25/moments/StopGradient:output:0*
T0*(
_output_shapes
:�����������
9batch_normalization_25/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
'batch_normalization_25/moments/varianceMean4batch_normalization_25/moments/SquaredDifference:z:0Bbatch_normalization_25/moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	�*
	keep_dims(�
&batch_normalization_25/moments/SqueezeSqueeze,batch_normalization_25/moments/mean:output:0*
T0*
_output_shapes	
:�*
squeeze_dims
 �
(batch_normalization_25/moments/Squeeze_1Squeeze0batch_normalization_25/moments/variance:output:0*
T0*
_output_shapes	
:�*
squeeze_dims
 q
,batch_normalization_25/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
5batch_normalization_25/AssignMovingAvg/ReadVariableOpReadVariableOp>batch_normalization_25_assignmovingavg_readvariableop_resource*
_output_shapes	
:�*
dtype0�
*batch_normalization_25/AssignMovingAvg/subSub=batch_normalization_25/AssignMovingAvg/ReadVariableOp:value:0/batch_normalization_25/moments/Squeeze:output:0*
T0*
_output_shapes	
:��
*batch_normalization_25/AssignMovingAvg/mulMul.batch_normalization_25/AssignMovingAvg/sub:z:05batch_normalization_25/AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:��
&batch_normalization_25/AssignMovingAvgAssignSubVariableOp>batch_normalization_25_assignmovingavg_readvariableop_resource.batch_normalization_25/AssignMovingAvg/mul:z:06^batch_normalization_25/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0s
.batch_normalization_25/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
7batch_normalization_25/AssignMovingAvg_1/ReadVariableOpReadVariableOp@batch_normalization_25_assignmovingavg_1_readvariableop_resource*
_output_shapes	
:�*
dtype0�
,batch_normalization_25/AssignMovingAvg_1/subSub?batch_normalization_25/AssignMovingAvg_1/ReadVariableOp:value:01batch_normalization_25/moments/Squeeze_1:output:0*
T0*
_output_shapes	
:��
,batch_normalization_25/AssignMovingAvg_1/mulMul0batch_normalization_25/AssignMovingAvg_1/sub:z:07batch_normalization_25/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:��
(batch_normalization_25/AssignMovingAvg_1AssignSubVariableOp@batch_normalization_25_assignmovingavg_1_readvariableop_resource0batch_normalization_25/AssignMovingAvg_1/mul:z:08^batch_normalization_25/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0k
&batch_normalization_25/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
$batch_normalization_25/batchnorm/addAddV21batch_normalization_25/moments/Squeeze_1:output:0/batch_normalization_25/batchnorm/add/y:output:0*
T0*
_output_shapes	
:�
&batch_normalization_25/batchnorm/RsqrtRsqrt(batch_normalization_25/batchnorm/add:z:0*
T0*
_output_shapes	
:��
3batch_normalization_25/batchnorm/mul/ReadVariableOpReadVariableOp<batch_normalization_25_batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0�
$batch_normalization_25/batchnorm/mulMul*batch_normalization_25/batchnorm/Rsqrt:y:0;batch_normalization_25/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:��
&batch_normalization_25/batchnorm/mul_1Muldense_4/BiasAdd:output:0(batch_normalization_25/batchnorm/mul:z:0*
T0*(
_output_shapes
:�����������
&batch_normalization_25/batchnorm/mul_2Mul/batch_normalization_25/moments/Squeeze:output:0(batch_normalization_25/batchnorm/mul:z:0*
T0*
_output_shapes	
:��
/batch_normalization_25/batchnorm/ReadVariableOpReadVariableOp8batch_normalization_25_batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0�
$batch_normalization_25/batchnorm/subSub7batch_normalization_25/batchnorm/ReadVariableOp:value:0*batch_normalization_25/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:��
&batch_normalization_25/batchnorm/add_1AddV2*batch_normalization_25/batchnorm/mul_1:z:0(batch_normalization_25/batchnorm/sub:z:0*
T0*(
_output_shapes
:����������t
re_lu_25/ReluRelu*batch_normalization_25/batchnorm/add_1:z:0*
T0*(
_output_shapes
:����������]
dropout_11/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @�
dropout_11/dropout/MulMulre_lu_25/Relu:activations:0!dropout_11/dropout/Const:output:0*
T0*(
_output_shapes
:����������c
dropout_11/dropout/ShapeShapere_lu_25/Relu:activations:0*
T0*
_output_shapes
:�
/dropout_11/dropout/random_uniform/RandomUniformRandomUniform!dropout_11/dropout/Shape:output:0*
T0*(
_output_shapes
:����������*
dtype0f
!dropout_11/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
dropout_11/dropout/GreaterEqualGreaterEqual8dropout_11/dropout/random_uniform/RandomUniform:output:0*dropout_11/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:�����������
dropout_11/dropout/CastCast#dropout_11/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:�����������
dropout_11/dropout/Mul_1Muldropout_11/dropout/Mul:z:0dropout_11/dropout/Cast:y:0*
T0*(
_output_shapes
:�����������
dense_5/MatMul/ReadVariableOpReadVariableOp&dense_5_matmul_readvariableop_resource*
_output_shapes
:	�
*
dtype0�
dense_5/MatMulMatMuldropout_11/dropout/Mul_1:z:0%dense_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
�
dense_5/BiasAdd/ReadVariableOpReadVariableOp'dense_5_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype0�
dense_5/BiasAddBiasAdddense_5/MatMul:product:0&dense_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
f
dense_5/SoftmaxSoftmaxdense_5/BiasAdd:output:0*
T0*'
_output_shapes
:���������
h
IdentityIdentitydense_5/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:���������
�
NoOpNoOp'^batch_normalization_25/AssignMovingAvg6^batch_normalization_25/AssignMovingAvg/ReadVariableOp)^batch_normalization_25/AssignMovingAvg_18^batch_normalization_25/AssignMovingAvg_1/ReadVariableOp0^batch_normalization_25/batchnorm/ReadVariableOp4^batch_normalization_25/batchnorm/mul/ReadVariableOp^dense_4/BiasAdd/ReadVariableOp^dense_4/MatMul/ReadVariableOp^dense_5/BiasAdd/ReadVariableOp^dense_5/MatMul/ReadVariableOp4^sequential_15/batch_normalization_19/AssignNewValue6^sequential_15/batch_normalization_19/AssignNewValue_1E^sequential_15/batch_normalization_19/FusedBatchNormV3/ReadVariableOpG^sequential_15/batch_normalization_19/FusedBatchNormV3/ReadVariableOp_14^sequential_15/batch_normalization_19/ReadVariableOp6^sequential_15/batch_normalization_19/ReadVariableOp_1/^sequential_15/conv2d_12/BiasAdd/ReadVariableOp.^sequential_15/conv2d_12/Conv2D/ReadVariableOp4^sequential_16/batch_normalization_20/AssignNewValue6^sequential_16/batch_normalization_20/AssignNewValue_1E^sequential_16/batch_normalization_20/FusedBatchNormV3/ReadVariableOpG^sequential_16/batch_normalization_20/FusedBatchNormV3/ReadVariableOp_14^sequential_16/batch_normalization_20/ReadVariableOp6^sequential_16/batch_normalization_20/ReadVariableOp_1/^sequential_16/conv2d_13/BiasAdd/ReadVariableOp.^sequential_16/conv2d_13/Conv2D/ReadVariableOp4^sequential_17/batch_normalization_21/AssignNewValue6^sequential_17/batch_normalization_21/AssignNewValue_1E^sequential_17/batch_normalization_21/FusedBatchNormV3/ReadVariableOpG^sequential_17/batch_normalization_21/FusedBatchNormV3/ReadVariableOp_14^sequential_17/batch_normalization_21/ReadVariableOp6^sequential_17/batch_normalization_21/ReadVariableOp_1/^sequential_17/conv2d_14/BiasAdd/ReadVariableOp.^sequential_17/conv2d_14/Conv2D/ReadVariableOp4^sequential_18/batch_normalization_22/AssignNewValue6^sequential_18/batch_normalization_22/AssignNewValue_1E^sequential_18/batch_normalization_22/FusedBatchNormV3/ReadVariableOpG^sequential_18/batch_normalization_22/FusedBatchNormV3/ReadVariableOp_14^sequential_18/batch_normalization_22/ReadVariableOp6^sequential_18/batch_normalization_22/ReadVariableOp_1/^sequential_18/conv2d_15/BiasAdd/ReadVariableOp.^sequential_18/conv2d_15/Conv2D/ReadVariableOp4^sequential_19/batch_normalization_23/AssignNewValue6^sequential_19/batch_normalization_23/AssignNewValue_1E^sequential_19/batch_normalization_23/FusedBatchNormV3/ReadVariableOpG^sequential_19/batch_normalization_23/FusedBatchNormV3/ReadVariableOp_14^sequential_19/batch_normalization_23/ReadVariableOp6^sequential_19/batch_normalization_23/ReadVariableOp_1/^sequential_19/conv2d_16/BiasAdd/ReadVariableOp.^sequential_19/conv2d_16/Conv2D/ReadVariableOp4^sequential_20/batch_normalization_24/AssignNewValue6^sequential_20/batch_normalization_24/AssignNewValue_1E^sequential_20/batch_normalization_24/FusedBatchNormV3/ReadVariableOpG^sequential_20/batch_normalization_24/FusedBatchNormV3/ReadVariableOp_14^sequential_20/batch_normalization_24/ReadVariableOp6^sequential_20/batch_normalization_24/ReadVariableOp_1/^sequential_20/conv2d_17/BiasAdd/ReadVariableOp.^sequential_20/conv2d_17/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapesu
s:���������  : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2P
&batch_normalization_25/AssignMovingAvg&batch_normalization_25/AssignMovingAvg2n
5batch_normalization_25/AssignMovingAvg/ReadVariableOp5batch_normalization_25/AssignMovingAvg/ReadVariableOp2T
(batch_normalization_25/AssignMovingAvg_1(batch_normalization_25/AssignMovingAvg_12r
7batch_normalization_25/AssignMovingAvg_1/ReadVariableOp7batch_normalization_25/AssignMovingAvg_1/ReadVariableOp2b
/batch_normalization_25/batchnorm/ReadVariableOp/batch_normalization_25/batchnorm/ReadVariableOp2j
3batch_normalization_25/batchnorm/mul/ReadVariableOp3batch_normalization_25/batchnorm/mul/ReadVariableOp2@
dense_4/BiasAdd/ReadVariableOpdense_4/BiasAdd/ReadVariableOp2>
dense_4/MatMul/ReadVariableOpdense_4/MatMul/ReadVariableOp2@
dense_5/BiasAdd/ReadVariableOpdense_5/BiasAdd/ReadVariableOp2>
dense_5/MatMul/ReadVariableOpdense_5/MatMul/ReadVariableOp2j
3sequential_15/batch_normalization_19/AssignNewValue3sequential_15/batch_normalization_19/AssignNewValue2n
5sequential_15/batch_normalization_19/AssignNewValue_15sequential_15/batch_normalization_19/AssignNewValue_12�
Dsequential_15/batch_normalization_19/FusedBatchNormV3/ReadVariableOpDsequential_15/batch_normalization_19/FusedBatchNormV3/ReadVariableOp2�
Fsequential_15/batch_normalization_19/FusedBatchNormV3/ReadVariableOp_1Fsequential_15/batch_normalization_19/FusedBatchNormV3/ReadVariableOp_12j
3sequential_15/batch_normalization_19/ReadVariableOp3sequential_15/batch_normalization_19/ReadVariableOp2n
5sequential_15/batch_normalization_19/ReadVariableOp_15sequential_15/batch_normalization_19/ReadVariableOp_12`
.sequential_15/conv2d_12/BiasAdd/ReadVariableOp.sequential_15/conv2d_12/BiasAdd/ReadVariableOp2^
-sequential_15/conv2d_12/Conv2D/ReadVariableOp-sequential_15/conv2d_12/Conv2D/ReadVariableOp2j
3sequential_16/batch_normalization_20/AssignNewValue3sequential_16/batch_normalization_20/AssignNewValue2n
5sequential_16/batch_normalization_20/AssignNewValue_15sequential_16/batch_normalization_20/AssignNewValue_12�
Dsequential_16/batch_normalization_20/FusedBatchNormV3/ReadVariableOpDsequential_16/batch_normalization_20/FusedBatchNormV3/ReadVariableOp2�
Fsequential_16/batch_normalization_20/FusedBatchNormV3/ReadVariableOp_1Fsequential_16/batch_normalization_20/FusedBatchNormV3/ReadVariableOp_12j
3sequential_16/batch_normalization_20/ReadVariableOp3sequential_16/batch_normalization_20/ReadVariableOp2n
5sequential_16/batch_normalization_20/ReadVariableOp_15sequential_16/batch_normalization_20/ReadVariableOp_12`
.sequential_16/conv2d_13/BiasAdd/ReadVariableOp.sequential_16/conv2d_13/BiasAdd/ReadVariableOp2^
-sequential_16/conv2d_13/Conv2D/ReadVariableOp-sequential_16/conv2d_13/Conv2D/ReadVariableOp2j
3sequential_17/batch_normalization_21/AssignNewValue3sequential_17/batch_normalization_21/AssignNewValue2n
5sequential_17/batch_normalization_21/AssignNewValue_15sequential_17/batch_normalization_21/AssignNewValue_12�
Dsequential_17/batch_normalization_21/FusedBatchNormV3/ReadVariableOpDsequential_17/batch_normalization_21/FusedBatchNormV3/ReadVariableOp2�
Fsequential_17/batch_normalization_21/FusedBatchNormV3/ReadVariableOp_1Fsequential_17/batch_normalization_21/FusedBatchNormV3/ReadVariableOp_12j
3sequential_17/batch_normalization_21/ReadVariableOp3sequential_17/batch_normalization_21/ReadVariableOp2n
5sequential_17/batch_normalization_21/ReadVariableOp_15sequential_17/batch_normalization_21/ReadVariableOp_12`
.sequential_17/conv2d_14/BiasAdd/ReadVariableOp.sequential_17/conv2d_14/BiasAdd/ReadVariableOp2^
-sequential_17/conv2d_14/Conv2D/ReadVariableOp-sequential_17/conv2d_14/Conv2D/ReadVariableOp2j
3sequential_18/batch_normalization_22/AssignNewValue3sequential_18/batch_normalization_22/AssignNewValue2n
5sequential_18/batch_normalization_22/AssignNewValue_15sequential_18/batch_normalization_22/AssignNewValue_12�
Dsequential_18/batch_normalization_22/FusedBatchNormV3/ReadVariableOpDsequential_18/batch_normalization_22/FusedBatchNormV3/ReadVariableOp2�
Fsequential_18/batch_normalization_22/FusedBatchNormV3/ReadVariableOp_1Fsequential_18/batch_normalization_22/FusedBatchNormV3/ReadVariableOp_12j
3sequential_18/batch_normalization_22/ReadVariableOp3sequential_18/batch_normalization_22/ReadVariableOp2n
5sequential_18/batch_normalization_22/ReadVariableOp_15sequential_18/batch_normalization_22/ReadVariableOp_12`
.sequential_18/conv2d_15/BiasAdd/ReadVariableOp.sequential_18/conv2d_15/BiasAdd/ReadVariableOp2^
-sequential_18/conv2d_15/Conv2D/ReadVariableOp-sequential_18/conv2d_15/Conv2D/ReadVariableOp2j
3sequential_19/batch_normalization_23/AssignNewValue3sequential_19/batch_normalization_23/AssignNewValue2n
5sequential_19/batch_normalization_23/AssignNewValue_15sequential_19/batch_normalization_23/AssignNewValue_12�
Dsequential_19/batch_normalization_23/FusedBatchNormV3/ReadVariableOpDsequential_19/batch_normalization_23/FusedBatchNormV3/ReadVariableOp2�
Fsequential_19/batch_normalization_23/FusedBatchNormV3/ReadVariableOp_1Fsequential_19/batch_normalization_23/FusedBatchNormV3/ReadVariableOp_12j
3sequential_19/batch_normalization_23/ReadVariableOp3sequential_19/batch_normalization_23/ReadVariableOp2n
5sequential_19/batch_normalization_23/ReadVariableOp_15sequential_19/batch_normalization_23/ReadVariableOp_12`
.sequential_19/conv2d_16/BiasAdd/ReadVariableOp.sequential_19/conv2d_16/BiasAdd/ReadVariableOp2^
-sequential_19/conv2d_16/Conv2D/ReadVariableOp-sequential_19/conv2d_16/Conv2D/ReadVariableOp2j
3sequential_20/batch_normalization_24/AssignNewValue3sequential_20/batch_normalization_24/AssignNewValue2n
5sequential_20/batch_normalization_24/AssignNewValue_15sequential_20/batch_normalization_24/AssignNewValue_12�
Dsequential_20/batch_normalization_24/FusedBatchNormV3/ReadVariableOpDsequential_20/batch_normalization_24/FusedBatchNormV3/ReadVariableOp2�
Fsequential_20/batch_normalization_24/FusedBatchNormV3/ReadVariableOp_1Fsequential_20/batch_normalization_24/FusedBatchNormV3/ReadVariableOp_12j
3sequential_20/batch_normalization_24/ReadVariableOp3sequential_20/batch_normalization_24/ReadVariableOp2n
5sequential_20/batch_normalization_24/ReadVariableOp_15sequential_20/batch_normalization_24/ReadVariableOp_12`
.sequential_20/conv2d_17/BiasAdd/ReadVariableOp.sequential_20/conv2d_17/BiasAdd/ReadVariableOp2^
-sequential_20/conv2d_17/Conv2D/ReadVariableOp-sequential_20/conv2d_17/Conv2D/ReadVariableOp:W S
/
_output_shapes
:���������  
 
_user_specified_nameinputs
�
�
H__inference_sequential_19_layer_call_and_return_conditional_losses_66963
conv2d_16_input)
conv2d_16_66947:<x
conv2d_16_66949:x*
batch_normalization_23_66952:x*
batch_normalization_23_66954:x*
batch_normalization_23_66956:x*
batch_normalization_23_66958:x
identity��.batch_normalization_23/StatefulPartitionedCall�!conv2d_16/StatefulPartitionedCall�
!conv2d_16/StatefulPartitionedCallStatefulPartitionedCallconv2d_16_inputconv2d_16_66947conv2d_16_66949*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������x*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_conv2d_16_layer_call_and_return_conditional_losses_66739�
.batch_normalization_23/StatefulPartitionedCallStatefulPartitionedCall*conv2d_16/StatefulPartitionedCall:output:0batch_normalization_23_66952batch_normalization_23_66954batch_normalization_23_66956batch_normalization_23_66958*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������x*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_23_layer_call_and_return_conditional_losses_66834�
re_lu_23/PartitionedCallPartitionedCall7batch_normalization_23/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������x* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_re_lu_23_layer_call_and_return_conditional_losses_66777x
IdentityIdentity!re_lu_23/PartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������x�
NoOpNoOp/^batch_normalization_23/StatefulPartitionedCall"^conv2d_16/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������<: : : : : : 2`
.batch_normalization_23/StatefulPartitionedCall.batch_normalization_23/StatefulPartitionedCall2F
!conv2d_16/StatefulPartitionedCall!conv2d_16/StatefulPartitionedCall:` \
/
_output_shapes
:���������<
)
_user_specified_nameconv2d_16_input
�
�
Q__inference_batch_normalization_19_layer_call_and_return_conditional_losses_69886

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������:::::*
epsilon%o�:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+����������������������������
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�	
�
6__inference_batch_normalization_22_layer_call_fn_70301

inputs
unknown:<
	unknown_0:<
	unknown_1:<
	unknown_2:<
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������<*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_22_layer_call_and_return_conditional_losses_66406�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������<`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������<: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+���������������������������<
 
_user_specified_nameinputs
�
�

-__inference_sequential_14_layer_call_fn_68146
sequential_15_input!
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:#
	unknown_5:!
	unknown_6:!
	unknown_7:!
	unknown_8:!
	unknown_9:!

unknown_10:!$

unknown_11:!7

unknown_12:7

unknown_13:7

unknown_14:7

unknown_15:7

unknown_16:7$

unknown_17:7<

unknown_18:<

unknown_19:<

unknown_20:<

unknown_21:<

unknown_22:<$

unknown_23:<x

unknown_24:x

unknown_25:x

unknown_26:x

unknown_27:x

unknown_28:x%

unknown_29:x�

unknown_30:	�

unknown_31:	�

unknown_32:	�

unknown_33:	�

unknown_34:	�

unknown_35:
�A�

unknown_36:	�

unknown_37:	�

unknown_38:	�

unknown_39:	�

unknown_40:	�

unknown_41:	�


unknown_42:

identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallsequential_15_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42*8
Tin1
/2-*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*@
_read_only_resource_inputs"
 	
 !"%&)*+,*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_sequential_14_layer_call_and_return_conditional_losses_67962o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapesu
s:���������  : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:d `
/
_output_shapes
:���������  
-
_user_specified_namesequential_15_input
�	
�
6__inference_batch_normalization_19_layer_call_fn_69829

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_19_layer_call_and_return_conditional_losses_65460�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�	
d
E__inference_dropout_11_layer_call_and_return_conditional_losses_69777

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:����������C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:����������*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:����������p
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:����������j
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:����������Z
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
H__inference_sequential_18_layer_call_and_return_conditional_losses_69363

inputsB
(conv2d_15_conv2d_readvariableop_resource:7<7
)conv2d_15_biasadd_readvariableop_resource:<<
.batch_normalization_22_readvariableop_resource:<>
0batch_normalization_22_readvariableop_1_resource:<M
?batch_normalization_22_fusedbatchnormv3_readvariableop_resource:<O
Abatch_normalization_22_fusedbatchnormv3_readvariableop_1_resource:<
identity��6batch_normalization_22/FusedBatchNormV3/ReadVariableOp�8batch_normalization_22/FusedBatchNormV3/ReadVariableOp_1�%batch_normalization_22/ReadVariableOp�'batch_normalization_22/ReadVariableOp_1� conv2d_15/BiasAdd/ReadVariableOp�conv2d_15/Conv2D/ReadVariableOp�
conv2d_15/Conv2D/ReadVariableOpReadVariableOp(conv2d_15_conv2d_readvariableop_resource*&
_output_shapes
:7<*
dtype0�
conv2d_15/Conv2DConv2Dinputs'conv2d_15/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������<*
paddingSAME*
strides
�
 conv2d_15/BiasAdd/ReadVariableOpReadVariableOp)conv2d_15_biasadd_readvariableop_resource*
_output_shapes
:<*
dtype0�
conv2d_15/BiasAddBiasAddconv2d_15/Conv2D:output:0(conv2d_15/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������<�
%batch_normalization_22/ReadVariableOpReadVariableOp.batch_normalization_22_readvariableop_resource*
_output_shapes
:<*
dtype0�
'batch_normalization_22/ReadVariableOp_1ReadVariableOp0batch_normalization_22_readvariableop_1_resource*
_output_shapes
:<*
dtype0�
6batch_normalization_22/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_22_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:<*
dtype0�
8batch_normalization_22/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_22_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:<*
dtype0�
'batch_normalization_22/FusedBatchNormV3FusedBatchNormV3conv2d_15/BiasAdd:output:0-batch_normalization_22/ReadVariableOp:value:0/batch_normalization_22/ReadVariableOp_1:value:0>batch_normalization_22/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_22/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������<:<:<:<:<:*
epsilon%o�:*
is_training( |
re_lu_22/ReluRelu+batch_normalization_22/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:���������<r
IdentityIdentityre_lu_22/Relu:activations:0^NoOp*
T0*/
_output_shapes
:���������<�
NoOpNoOp7^batch_normalization_22/FusedBatchNormV3/ReadVariableOp9^batch_normalization_22/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_22/ReadVariableOp(^batch_normalization_22/ReadVariableOp_1!^conv2d_15/BiasAdd/ReadVariableOp ^conv2d_15/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������7: : : : : : 2p
6batch_normalization_22/FusedBatchNormV3/ReadVariableOp6batch_normalization_22/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_22/FusedBatchNormV3/ReadVariableOp_18batch_normalization_22/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_22/ReadVariableOp%batch_normalization_22/ReadVariableOp2R
'batch_normalization_22/ReadVariableOp_1'batch_normalization_22/ReadVariableOp_12D
 conv2d_15/BiasAdd/ReadVariableOp conv2d_15/BiasAdd/ReadVariableOp2B
conv2d_15/Conv2D/ReadVariableOpconv2d_15/Conv2D/ReadVariableOp:W S
/
_output_shapes
:���������7
 
_user_specified_nameinputs
�
f
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_67277

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�	
�
-__inference_sequential_15_layer_call_fn_69042

inputs!
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������  *(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_sequential_15_layer_call_and_return_conditional_losses_65560w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������  `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������  : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������  
 
_user_specified_nameinputs
�
_
C__inference_re_lu_19_layer_call_and_return_conditional_losses_65557

inputs
identityN
ReluReluinputs*
T0*/
_output_shapes
:���������  b
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:���������  "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������  :W S
/
_output_shapes
:���������  
 
_user_specified_nameinputs
�	
�
B__inference_dense_4_layer_call_and_return_conditional_losses_67492

inputs2
matmul_readvariableop_resource:
�A�.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
�A�*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������`
IdentityIdentityBiasAdd:output:0^NoOp*
T0*(
_output_shapes
:����������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������A: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������A
 
_user_specified_nameinputs
�
�
H__inference_sequential_18_layer_call_and_return_conditional_losses_66639
conv2d_15_input)
conv2d_15_66623:7<
conv2d_15_66625:<*
batch_normalization_22_66628:<*
batch_normalization_22_66630:<*
batch_normalization_22_66632:<*
batch_normalization_22_66634:<
identity��.batch_normalization_22/StatefulPartitionedCall�!conv2d_15/StatefulPartitionedCall�
!conv2d_15/StatefulPartitionedCallStatefulPartitionedCallconv2d_15_inputconv2d_15_66623conv2d_15_66625*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������<*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_conv2d_15_layer_call_and_return_conditional_losses_66434�
.batch_normalization_22/StatefulPartitionedCallStatefulPartitionedCall*conv2d_15/StatefulPartitionedCall:output:0batch_normalization_22_66628batch_normalization_22_66630batch_normalization_22_66632batch_normalization_22_66634*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������<*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_22_layer_call_and_return_conditional_losses_66457�
re_lu_22/PartitionedCallPartitionedCall7batch_normalization_22/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������<* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_re_lu_22_layer_call_and_return_conditional_losses_66472x
IdentityIdentity!re_lu_22/PartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������<�
NoOpNoOp/^batch_normalization_22/StatefulPartitionedCall"^conv2d_15/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������7: : : : : : 2`
.batch_normalization_22/StatefulPartitionedCall.batch_normalization_22/StatefulPartitionedCall2F
!conv2d_15/StatefulPartitionedCall!conv2d_15/StatefulPartitionedCall:` \
/
_output_shapes
:���������7
)
_user_specified_nameconv2d_15_input
�

�
D__inference_conv2d_15_layer_call_and_return_conditional_losses_70275

inputs8
conv2d_readvariableop_resource:7<-
biasadd_readvariableop_resource:<
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:7<*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������<*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:<*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������<g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:���������<w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������7: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������7
 
_user_specified_nameinputs
�
�
Q__inference_batch_normalization_23_layer_call_and_return_conditional_losses_66680

inputs%
readvariableop_resource:x'
readvariableop_1_resource:x6
(fusedbatchnormv3_readvariableop_resource:x8
*fusedbatchnormv3_readvariableop_1_resource:x
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:x*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:x*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:x*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:x*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������x:x:x:x:x:*
epsilon%o�:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������x�
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������x: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������x
 
_user_specified_nameinputs
�
�
Q__inference_batch_normalization_22_layer_call_and_return_conditional_losses_66457

inputs%
readvariableop_resource:<'
readvariableop_1_resource:<6
(fusedbatchnormv3_readvariableop_resource:<8
*fusedbatchnormv3_readvariableop_1_resource:<
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:<*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:<*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:<*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:<*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������<:<:<:<:<:*
epsilon%o�:*
is_training( k
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*/
_output_shapes
:���������<�
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������<: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:���������<
 
_user_specified_nameinputs
�

�
D__inference_conv2d_16_layer_call_and_return_conditional_losses_66739

inputs8
conv2d_readvariableop_resource:<x-
biasadd_readvariableop_resource:x
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:<x*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������x*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:x*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������xg
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:���������xw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������<: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������<
 
_user_specified_nameinputs
�	
�
-__inference_sequential_17_layer_call_fn_69254

inputs!
unknown:!7
	unknown_0:7
	unknown_1:7
	unknown_2:7
	unknown_3:7
	unknown_4:7
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������7*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_sequential_17_layer_call_and_return_conditional_losses_66283w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������7`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������!: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������!
 
_user_specified_nameinputs
�
�
6__inference_batch_normalization_19_layer_call_fn_69868

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������  *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_19_layer_call_and_return_conditional_losses_65614w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������  `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������  : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������  
 
_user_specified_nameinputs
�	
�
6__inference_batch_normalization_24_layer_call_fn_70607

inputs
unknown:	�
	unknown_0:	�
	unknown_1:	�
	unknown_2:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,����������������������������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_24_layer_call_and_return_conditional_losses_67016�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,����������������������������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,����������������������������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,����������������������������
 
_user_specified_nameinputs
�	
�
B__inference_dense_4_layer_call_and_return_conditional_losses_69660

inputs2
matmul_readvariableop_resource:
�A�.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
�A�*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������`
IdentityIdentityBiasAdd:output:0^NoOp*
T0*(
_output_shapes
:����������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������A: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������A
 
_user_specified_nameinputs
�
�
Q__inference_batch_normalization_23_layer_call_and_return_conditional_losses_70516

inputs%
readvariableop_resource:x'
readvariableop_1_resource:x6
(fusedbatchnormv3_readvariableop_resource:x8
*fusedbatchnormv3_readvariableop_1_resource:x
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:x*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:x*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:x*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:x*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������x:x:x:x:x:*
epsilon%o�:*
exponential_avg_factor%
�#<�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������x�
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������x: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������x
 
_user_specified_nameinputs
�
�
Q__inference_batch_normalization_23_layer_call_and_return_conditional_losses_70552

inputs%
readvariableop_resource:x'
readvariableop_1_resource:x6
(fusedbatchnormv3_readvariableop_resource:x8
*fusedbatchnormv3_readvariableop_1_resource:x
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:x*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:x*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:x*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:x*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������x:x:x:x:x:*
epsilon%o�:*
exponential_avg_factor%
�#<�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0k
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*/
_output_shapes
:���������x�
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������x: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:���������x
 
_user_specified_nameinputs
�
�
Q__inference_batch_normalization_22_layer_call_and_return_conditional_losses_70363

inputs%
readvariableop_resource:<'
readvariableop_1_resource:<6
(fusedbatchnormv3_readvariableop_resource:<8
*fusedbatchnormv3_readvariableop_1_resource:<
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:<*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:<*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:<*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:<*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������<:<:<:<:<:*
epsilon%o�:*
exponential_avg_factor%
�#<�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������<�
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������<: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������<
 
_user_specified_nameinputs
�
E
)__inference_flatten_2_layer_call_fn_69635

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������A* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_flatten_2_layer_call_and_return_conditional_losses_67480a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:����������A"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
H__inference_sequential_18_layer_call_and_return_conditional_losses_66588

inputs)
conv2d_15_66572:7<
conv2d_15_66574:<*
batch_normalization_22_66577:<*
batch_normalization_22_66579:<*
batch_normalization_22_66581:<*
batch_normalization_22_66583:<
identity��.batch_normalization_22/StatefulPartitionedCall�!conv2d_15/StatefulPartitionedCall�
!conv2d_15/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_15_66572conv2d_15_66574*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������<*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_conv2d_15_layer_call_and_return_conditional_losses_66434�
.batch_normalization_22/StatefulPartitionedCallStatefulPartitionedCall*conv2d_15/StatefulPartitionedCall:output:0batch_normalization_22_66577batch_normalization_22_66579batch_normalization_22_66581batch_normalization_22_66583*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������<*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_22_layer_call_and_return_conditional_losses_66529�
re_lu_22/PartitionedCallPartitionedCall7batch_normalization_22/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������<* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_re_lu_22_layer_call_and_return_conditional_losses_66472x
IdentityIdentity!re_lu_22/PartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������<�
NoOpNoOp/^batch_normalization_22/StatefulPartitionedCall"^conv2d_15/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������7: : : : : : 2`
.batch_normalization_22/StatefulPartitionedCall.batch_normalization_22/StatefulPartitionedCall2F
!conv2d_15/StatefulPartitionedCall!conv2d_15/StatefulPartitionedCall:W S
/
_output_shapes
:���������7
 
_user_specified_nameinputs
�

�
D__inference_conv2d_13_layer_call_and_return_conditional_losses_69969

inputs8
conv2d_readvariableop_resource:!-
biasadd_readvariableop_resource:!
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:!*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������!*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:!*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������!g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:���������!w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������  : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������  
 
_user_specified_nameinputs
�	
�
-__inference_sequential_18_layer_call_fn_69338

inputs!
unknown:7<
	unknown_0:<
	unknown_1:<
	unknown_2:<
	unknown_3:<
	unknown_4:<
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������<*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_sequential_18_layer_call_and_return_conditional_losses_66588w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������<`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������7: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������7
 
_user_specified_nameinputs
�%
�
H__inference_sequential_18_layer_call_and_return_conditional_losses_69388

inputsB
(conv2d_15_conv2d_readvariableop_resource:7<7
)conv2d_15_biasadd_readvariableop_resource:<<
.batch_normalization_22_readvariableop_resource:<>
0batch_normalization_22_readvariableop_1_resource:<M
?batch_normalization_22_fusedbatchnormv3_readvariableop_resource:<O
Abatch_normalization_22_fusedbatchnormv3_readvariableop_1_resource:<
identity��%batch_normalization_22/AssignNewValue�'batch_normalization_22/AssignNewValue_1�6batch_normalization_22/FusedBatchNormV3/ReadVariableOp�8batch_normalization_22/FusedBatchNormV3/ReadVariableOp_1�%batch_normalization_22/ReadVariableOp�'batch_normalization_22/ReadVariableOp_1� conv2d_15/BiasAdd/ReadVariableOp�conv2d_15/Conv2D/ReadVariableOp�
conv2d_15/Conv2D/ReadVariableOpReadVariableOp(conv2d_15_conv2d_readvariableop_resource*&
_output_shapes
:7<*
dtype0�
conv2d_15/Conv2DConv2Dinputs'conv2d_15/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������<*
paddingSAME*
strides
�
 conv2d_15/BiasAdd/ReadVariableOpReadVariableOp)conv2d_15_biasadd_readvariableop_resource*
_output_shapes
:<*
dtype0�
conv2d_15/BiasAddBiasAddconv2d_15/Conv2D:output:0(conv2d_15/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������<�
%batch_normalization_22/ReadVariableOpReadVariableOp.batch_normalization_22_readvariableop_resource*
_output_shapes
:<*
dtype0�
'batch_normalization_22/ReadVariableOp_1ReadVariableOp0batch_normalization_22_readvariableop_1_resource*
_output_shapes
:<*
dtype0�
6batch_normalization_22/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_22_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:<*
dtype0�
8batch_normalization_22/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_22_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:<*
dtype0�
'batch_normalization_22/FusedBatchNormV3FusedBatchNormV3conv2d_15/BiasAdd:output:0-batch_normalization_22/ReadVariableOp:value:0/batch_normalization_22/ReadVariableOp_1:value:0>batch_normalization_22/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_22/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������<:<:<:<:<:*
epsilon%o�:*
exponential_avg_factor%
�#<�
%batch_normalization_22/AssignNewValueAssignVariableOp?batch_normalization_22_fusedbatchnormv3_readvariableop_resource4batch_normalization_22/FusedBatchNormV3:batch_mean:07^batch_normalization_22/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0�
'batch_normalization_22/AssignNewValue_1AssignVariableOpAbatch_normalization_22_fusedbatchnormv3_readvariableop_1_resource8batch_normalization_22/FusedBatchNormV3:batch_variance:09^batch_normalization_22/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0|
re_lu_22/ReluRelu+batch_normalization_22/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:���������<r
IdentityIdentityre_lu_22/Relu:activations:0^NoOp*
T0*/
_output_shapes
:���������<�
NoOpNoOp&^batch_normalization_22/AssignNewValue(^batch_normalization_22/AssignNewValue_17^batch_normalization_22/FusedBatchNormV3/ReadVariableOp9^batch_normalization_22/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_22/ReadVariableOp(^batch_normalization_22/ReadVariableOp_1!^conv2d_15/BiasAdd/ReadVariableOp ^conv2d_15/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������7: : : : : : 2N
%batch_normalization_22/AssignNewValue%batch_normalization_22/AssignNewValue2R
'batch_normalization_22/AssignNewValue_1'batch_normalization_22/AssignNewValue_12p
6batch_normalization_22/FusedBatchNormV3/ReadVariableOp6batch_normalization_22/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_22/FusedBatchNormV3/ReadVariableOp_18batch_normalization_22/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_22/ReadVariableOp%batch_normalization_22/ReadVariableOp2R
'batch_normalization_22/ReadVariableOp_1'batch_normalization_22/ReadVariableOp_12D
 conv2d_15/BiasAdd/ReadVariableOp conv2d_15/BiasAdd/ReadVariableOp2B
conv2d_15/Conv2D/ReadVariableOpconv2d_15/Conv2D/ReadVariableOp:W S
/
_output_shapes
:���������7
 
_user_specified_nameinputs
�
�
Q__inference_batch_normalization_22_layer_call_and_return_conditional_losses_70345

inputs%
readvariableop_resource:<'
readvariableop_1_resource:<6
(fusedbatchnormv3_readvariableop_resource:<8
*fusedbatchnormv3_readvariableop_1_resource:<
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:<*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:<*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:<*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:<*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������<:<:<:<:<:*
epsilon%o�:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������<�
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������<: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������<
 
_user_specified_nameinputs
�	
�
6__inference_batch_normalization_23_layer_call_fn_70454

inputs
unknown:x
	unknown_0:x
	unknown_1:x
	unknown_2:x
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������x*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_23_layer_call_and_return_conditional_losses_66711�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������x`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������x: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+���������������������������x
 
_user_specified_nameinputs
�
K
/__inference_max_pooling2d_2_layer_call_fn_69588

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4������������������������������������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_67277�
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
H__inference_sequential_17_layer_call_and_return_conditional_losses_66353
conv2d_14_input)
conv2d_14_66337:!7
conv2d_14_66339:7*
batch_normalization_21_66342:7*
batch_normalization_21_66344:7*
batch_normalization_21_66346:7*
batch_normalization_21_66348:7
identity��.batch_normalization_21/StatefulPartitionedCall�!conv2d_14/StatefulPartitionedCall�
!conv2d_14/StatefulPartitionedCallStatefulPartitionedCallconv2d_14_inputconv2d_14_66337conv2d_14_66339*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������7*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_conv2d_14_layer_call_and_return_conditional_losses_66129�
.batch_normalization_21/StatefulPartitionedCallStatefulPartitionedCall*conv2d_14/StatefulPartitionedCall:output:0batch_normalization_21_66342batch_normalization_21_66344batch_normalization_21_66346batch_normalization_21_66348*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������7*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_21_layer_call_and_return_conditional_losses_66224�
re_lu_21/PartitionedCallPartitionedCall7batch_normalization_21/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������7* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_re_lu_21_layer_call_and_return_conditional_losses_66167x
IdentityIdentity!re_lu_21/PartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������7�
NoOpNoOp/^batch_normalization_21/StatefulPartitionedCall"^conv2d_14/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������!: : : : : : 2`
.batch_normalization_21/StatefulPartitionedCall.batch_normalization_21/StatefulPartitionedCall2F
!conv2d_14/StatefulPartitionedCall!conv2d_14/StatefulPartitionedCall:` \
/
_output_shapes
:���������!
)
_user_specified_nameconv2d_14_input
�
�
6__inference_batch_normalization_25_layer_call_fn_69686

inputs
unknown:	�
	unknown_0:	�
	unknown_1:	�
	unknown_2:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_25_layer_call_and_return_conditional_losses_67351p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
Q__inference_batch_normalization_19_layer_call_and_return_conditional_losses_69940

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������  :::::*
epsilon%o�:*
exponential_avg_factor%
�#<�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0k
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*/
_output_shapes
:���������  �
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������  : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:���������  
 
_user_specified_nameinputs
�

�
D__inference_conv2d_14_layer_call_and_return_conditional_losses_70122

inputs8
conv2d_readvariableop_resource:!7-
biasadd_readvariableop_resource:7
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:!7*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������7*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:7*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������7g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:���������7w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������!: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������!
 
_user_specified_nameinputs
�	
�
6__inference_batch_normalization_22_layer_call_fn_70288

inputs
unknown:<
	unknown_0:<
	unknown_1:<
	unknown_2:<
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������<*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_22_layer_call_and_return_conditional_losses_66375�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������<`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������<: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+���������������������������<
 
_user_specified_nameinputs
�
�
6__inference_batch_normalization_24_layer_call_fn_70633

inputs
unknown:	�
	unknown_0:	�
	unknown_1:	�
	unknown_2:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_24_layer_call_and_return_conditional_losses_67139x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:����������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�	
�
-__inference_sequential_19_layer_call_fn_66795
conv2d_16_input!
unknown:<x
	unknown_0:x
	unknown_1:x
	unknown_2:x
	unknown_3:x
	unknown_4:x
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallconv2d_16_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������x*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_sequential_19_layer_call_and_return_conditional_losses_66780w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������x`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������<: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:` \
/
_output_shapes
:���������<
)
_user_specified_nameconv2d_16_input
�Y
�
H__inference_sequential_14_layer_call_and_return_conditional_losses_68362
sequential_15_input-
sequential_15_68257:!
sequential_15_68259:!
sequential_15_68261:!
sequential_15_68263:!
sequential_15_68265:!
sequential_15_68267:-
sequential_16_68270:!!
sequential_16_68272:!!
sequential_16_68274:!!
sequential_16_68276:!!
sequential_16_68278:!!
sequential_16_68280:!-
sequential_17_68284:!7!
sequential_17_68286:7!
sequential_17_68288:7!
sequential_17_68290:7!
sequential_17_68292:7!
sequential_17_68294:7-
sequential_18_68297:7<!
sequential_18_68299:<!
sequential_18_68301:<!
sequential_18_68303:<!
sequential_18_68305:<!
sequential_18_68307:<-
sequential_19_68311:<x!
sequential_19_68313:x!
sequential_19_68315:x!
sequential_19_68317:x!
sequential_19_68319:x!
sequential_19_68321:x.
sequential_20_68324:x�"
sequential_20_68326:	�"
sequential_20_68328:	�"
sequential_20_68330:	�"
sequential_20_68332:	�"
sequential_20_68334:	�!
dense_4_68340:
�A�
dense_4_68342:	�+
batch_normalization_25_68345:	�+
batch_normalization_25_68347:	�+
batch_normalization_25_68349:	�+
batch_normalization_25_68351:	� 
dense_5_68356:	�

dense_5_68358:

identity��.batch_normalization_25/StatefulPartitionedCall�dense_4/StatefulPartitionedCall�dense_5/StatefulPartitionedCall�"dropout_10/StatefulPartitionedCall�"dropout_11/StatefulPartitionedCall�!dropout_8/StatefulPartitionedCall�!dropout_9/StatefulPartitionedCall�%sequential_15/StatefulPartitionedCall�%sequential_16/StatefulPartitionedCall�%sequential_17/StatefulPartitionedCall�%sequential_18/StatefulPartitionedCall�%sequential_19/StatefulPartitionedCall�%sequential_20/StatefulPartitionedCall�
%sequential_15/StatefulPartitionedCallStatefulPartitionedCallsequential_15_inputsequential_15_68257sequential_15_68259sequential_15_68261sequential_15_68263sequential_15_68265sequential_15_68267*
Tin
	2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������  *&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_sequential_15_layer_call_and_return_conditional_losses_65673�
%sequential_16/StatefulPartitionedCallStatefulPartitionedCall.sequential_15/StatefulPartitionedCall:output:0sequential_16_68270sequential_16_68272sequential_16_68274sequential_16_68276sequential_16_68278sequential_16_68280*
Tin
	2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������!*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_sequential_16_layer_call_and_return_conditional_losses_65978�
!dropout_8/StatefulPartitionedCallStatefulPartitionedCall.sequential_16/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������!* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dropout_8_layer_call_and_return_conditional_losses_67756�
%sequential_17/StatefulPartitionedCallStatefulPartitionedCall*dropout_8/StatefulPartitionedCall:output:0sequential_17_68284sequential_17_68286sequential_17_68288sequential_17_68290sequential_17_68292sequential_17_68294*
Tin
	2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������7*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_sequential_17_layer_call_and_return_conditional_losses_66283�
%sequential_18/StatefulPartitionedCallStatefulPartitionedCall.sequential_17/StatefulPartitionedCall:output:0sequential_18_68297sequential_18_68299sequential_18_68301sequential_18_68303sequential_18_68305sequential_18_68307*
Tin
	2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������<*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_sequential_18_layer_call_and_return_conditional_losses_66588�
!dropout_9/StatefulPartitionedCallStatefulPartitionedCall.sequential_18/StatefulPartitionedCall:output:0"^dropout_8/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������<* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dropout_9_layer_call_and_return_conditional_losses_67733�
%sequential_19/StatefulPartitionedCallStatefulPartitionedCall*dropout_9/StatefulPartitionedCall:output:0sequential_19_68311sequential_19_68313sequential_19_68315sequential_19_68317sequential_19_68319sequential_19_68321*
Tin
	2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������x*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_sequential_19_layer_call_and_return_conditional_losses_66893�
%sequential_20/StatefulPartitionedCallStatefulPartitionedCall.sequential_19/StatefulPartitionedCall:output:0sequential_20_68324sequential_20_68326sequential_20_68328sequential_20_68330sequential_20_68332sequential_20_68334*
Tin
	2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_sequential_20_layer_call_and_return_conditional_losses_67198�
max_pooling2d_2/PartitionedCallPartitionedCall.sequential_20/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_67465�
"dropout_10/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_2/PartitionedCall:output:0"^dropout_9/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dropout_10_layer_call_and_return_conditional_losses_67705�
flatten_2/PartitionedCallPartitionedCall+dropout_10/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������A* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_flatten_2_layer_call_and_return_conditional_losses_67480�
dense_4/StatefulPartitionedCallStatefulPartitionedCall"flatten_2/PartitionedCall:output:0dense_4_68340dense_4_68342*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_dense_4_layer_call_and_return_conditional_losses_67492�
.batch_normalization_25/StatefulPartitionedCallStatefulPartitionedCall(dense_4/StatefulPartitionedCall:output:0batch_normalization_25_68345batch_normalization_25_68347batch_normalization_25_68349batch_normalization_25_68351*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_25_layer_call_and_return_conditional_losses_67351�
re_lu_25/PartitionedCallPartitionedCall7batch_normalization_25/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_re_lu_25_layer_call_and_return_conditional_losses_67512�
"dropout_11/StatefulPartitionedCallStatefulPartitionedCall!re_lu_25/PartitionedCall:output:0#^dropout_10/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dropout_11_layer_call_and_return_conditional_losses_67660�
dense_5/StatefulPartitionedCallStatefulPartitionedCall+dropout_11/StatefulPartitionedCall:output:0dense_5_68356dense_5_68358*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_dense_5_layer_call_and_return_conditional_losses_67532w
IdentityIdentity(dense_5/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������
�
NoOpNoOp/^batch_normalization_25/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall ^dense_5/StatefulPartitionedCall#^dropout_10/StatefulPartitionedCall#^dropout_11/StatefulPartitionedCall"^dropout_8/StatefulPartitionedCall"^dropout_9/StatefulPartitionedCall&^sequential_15/StatefulPartitionedCall&^sequential_16/StatefulPartitionedCall&^sequential_17/StatefulPartitionedCall&^sequential_18/StatefulPartitionedCall&^sequential_19/StatefulPartitionedCall&^sequential_20/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapesu
s:���������  : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2`
.batch_normalization_25/StatefulPartitionedCall.batch_normalization_25/StatefulPartitionedCall2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall2H
"dropout_10/StatefulPartitionedCall"dropout_10/StatefulPartitionedCall2H
"dropout_11/StatefulPartitionedCall"dropout_11/StatefulPartitionedCall2F
!dropout_8/StatefulPartitionedCall!dropout_8/StatefulPartitionedCall2F
!dropout_9/StatefulPartitionedCall!dropout_9/StatefulPartitionedCall2N
%sequential_15/StatefulPartitionedCall%sequential_15/StatefulPartitionedCall2N
%sequential_16/StatefulPartitionedCall%sequential_16/StatefulPartitionedCall2N
%sequential_17/StatefulPartitionedCall%sequential_17/StatefulPartitionedCall2N
%sequential_18/StatefulPartitionedCall%sequential_18/StatefulPartitionedCall2N
%sequential_19/StatefulPartitionedCall%sequential_19/StatefulPartitionedCall2N
%sequential_20/StatefulPartitionedCall%sequential_20/StatefulPartitionedCall:d `
/
_output_shapes
:���������  
-
_user_specified_namesequential_15_input
�

�
D__inference_conv2d_17_layer_call_and_return_conditional_losses_67044

inputs9
conv2d_readvariableop_resource:x�.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:x�*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������h
IdentityIdentityBiasAdd:output:0^NoOp*
T0*0
_output_shapes
:����������w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������x: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������x
 
_user_specified_nameinputs
�
�
6__inference_batch_normalization_21_layer_call_fn_70174

inputs
unknown:7
	unknown_0:7
	unknown_1:7
	unknown_2:7
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������7*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_21_layer_call_and_return_conditional_losses_66224w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������7`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������7: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������7
 
_user_specified_nameinputs
�	
�
-__inference_sequential_20_layer_call_fn_67230
conv2d_17_input"
unknown:x�
	unknown_0:	�
	unknown_1:	�
	unknown_2:	�
	unknown_3:	�
	unknown_4:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallconv2d_17_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_sequential_20_layer_call_and_return_conditional_losses_67198x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������x: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:` \
/
_output_shapes
:���������x
)
_user_specified_nameconv2d_17_input
��
�4
__inference__traced_save_71077
file_prefix-
)savev2_dense_4_kernel_read_readvariableop+
'savev2_dense_4_bias_read_readvariableop;
7savev2_batch_normalization_25_gamma_read_readvariableop:
6savev2_batch_normalization_25_beta_read_readvariableopA
=savev2_batch_normalization_25_moving_mean_read_readvariableopE
Asavev2_batch_normalization_25_moving_variance_read_readvariableop-
)savev2_dense_5_kernel_read_readvariableop+
'savev2_dense_5_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop/
+savev2_conv2d_12_kernel_read_readvariableop-
)savev2_conv2d_12_bias_read_readvariableop;
7savev2_batch_normalization_19_gamma_read_readvariableop:
6savev2_batch_normalization_19_beta_read_readvariableopA
=savev2_batch_normalization_19_moving_mean_read_readvariableopE
Asavev2_batch_normalization_19_moving_variance_read_readvariableop/
+savev2_conv2d_13_kernel_read_readvariableop-
)savev2_conv2d_13_bias_read_readvariableop;
7savev2_batch_normalization_20_gamma_read_readvariableop:
6savev2_batch_normalization_20_beta_read_readvariableopA
=savev2_batch_normalization_20_moving_mean_read_readvariableopE
Asavev2_batch_normalization_20_moving_variance_read_readvariableop/
+savev2_conv2d_14_kernel_read_readvariableop-
)savev2_conv2d_14_bias_read_readvariableop;
7savev2_batch_normalization_21_gamma_read_readvariableop:
6savev2_batch_normalization_21_beta_read_readvariableopA
=savev2_batch_normalization_21_moving_mean_read_readvariableopE
Asavev2_batch_normalization_21_moving_variance_read_readvariableop/
+savev2_conv2d_15_kernel_read_readvariableop-
)savev2_conv2d_15_bias_read_readvariableop;
7savev2_batch_normalization_22_gamma_read_readvariableop:
6savev2_batch_normalization_22_beta_read_readvariableopA
=savev2_batch_normalization_22_moving_mean_read_readvariableopE
Asavev2_batch_normalization_22_moving_variance_read_readvariableop/
+savev2_conv2d_16_kernel_read_readvariableop-
)savev2_conv2d_16_bias_read_readvariableop;
7savev2_batch_normalization_23_gamma_read_readvariableop:
6savev2_batch_normalization_23_beta_read_readvariableopA
=savev2_batch_normalization_23_moving_mean_read_readvariableopE
Asavev2_batch_normalization_23_moving_variance_read_readvariableop/
+savev2_conv2d_17_kernel_read_readvariableop-
)savev2_conv2d_17_bias_read_readvariableop;
7savev2_batch_normalization_24_gamma_read_readvariableop:
6savev2_batch_normalization_24_beta_read_readvariableopA
=savev2_batch_normalization_24_moving_mean_read_readvariableopE
Asavev2_batch_normalization_24_moving_variance_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop4
0savev2_adam_dense_4_kernel_m_read_readvariableop2
.savev2_adam_dense_4_bias_m_read_readvariableopB
>savev2_adam_batch_normalization_25_gamma_m_read_readvariableopA
=savev2_adam_batch_normalization_25_beta_m_read_readvariableop4
0savev2_adam_dense_5_kernel_m_read_readvariableop2
.savev2_adam_dense_5_bias_m_read_readvariableop6
2savev2_adam_conv2d_12_kernel_m_read_readvariableop4
0savev2_adam_conv2d_12_bias_m_read_readvariableopB
>savev2_adam_batch_normalization_19_gamma_m_read_readvariableopA
=savev2_adam_batch_normalization_19_beta_m_read_readvariableop6
2savev2_adam_conv2d_13_kernel_m_read_readvariableop4
0savev2_adam_conv2d_13_bias_m_read_readvariableopB
>savev2_adam_batch_normalization_20_gamma_m_read_readvariableopA
=savev2_adam_batch_normalization_20_beta_m_read_readvariableop6
2savev2_adam_conv2d_14_kernel_m_read_readvariableop4
0savev2_adam_conv2d_14_bias_m_read_readvariableopB
>savev2_adam_batch_normalization_21_gamma_m_read_readvariableopA
=savev2_adam_batch_normalization_21_beta_m_read_readvariableop6
2savev2_adam_conv2d_15_kernel_m_read_readvariableop4
0savev2_adam_conv2d_15_bias_m_read_readvariableopB
>savev2_adam_batch_normalization_22_gamma_m_read_readvariableopA
=savev2_adam_batch_normalization_22_beta_m_read_readvariableop6
2savev2_adam_conv2d_16_kernel_m_read_readvariableop4
0savev2_adam_conv2d_16_bias_m_read_readvariableopB
>savev2_adam_batch_normalization_23_gamma_m_read_readvariableopA
=savev2_adam_batch_normalization_23_beta_m_read_readvariableop6
2savev2_adam_conv2d_17_kernel_m_read_readvariableop4
0savev2_adam_conv2d_17_bias_m_read_readvariableopB
>savev2_adam_batch_normalization_24_gamma_m_read_readvariableopA
=savev2_adam_batch_normalization_24_beta_m_read_readvariableop4
0savev2_adam_dense_4_kernel_v_read_readvariableop2
.savev2_adam_dense_4_bias_v_read_readvariableopB
>savev2_adam_batch_normalization_25_gamma_v_read_readvariableopA
=savev2_adam_batch_normalization_25_beta_v_read_readvariableop4
0savev2_adam_dense_5_kernel_v_read_readvariableop2
.savev2_adam_dense_5_bias_v_read_readvariableop6
2savev2_adam_conv2d_12_kernel_v_read_readvariableop4
0savev2_adam_conv2d_12_bias_v_read_readvariableopB
>savev2_adam_batch_normalization_19_gamma_v_read_readvariableopA
=savev2_adam_batch_normalization_19_beta_v_read_readvariableop6
2savev2_adam_conv2d_13_kernel_v_read_readvariableop4
0savev2_adam_conv2d_13_bias_v_read_readvariableopB
>savev2_adam_batch_normalization_20_gamma_v_read_readvariableopA
=savev2_adam_batch_normalization_20_beta_v_read_readvariableop6
2savev2_adam_conv2d_14_kernel_v_read_readvariableop4
0savev2_adam_conv2d_14_bias_v_read_readvariableopB
>savev2_adam_batch_normalization_21_gamma_v_read_readvariableopA
=savev2_adam_batch_normalization_21_beta_v_read_readvariableop6
2savev2_adam_conv2d_15_kernel_v_read_readvariableop4
0savev2_adam_conv2d_15_bias_v_read_readvariableopB
>savev2_adam_batch_normalization_22_gamma_v_read_readvariableopA
=savev2_adam_batch_normalization_22_beta_v_read_readvariableop6
2savev2_adam_conv2d_16_kernel_v_read_readvariableop4
0savev2_adam_conv2d_16_bias_v_read_readvariableopB
>savev2_adam_batch_normalization_23_gamma_v_read_readvariableopA
=savev2_adam_batch_normalization_23_beta_v_read_readvariableop6
2savev2_adam_conv2d_17_kernel_v_read_readvariableop4
0savev2_adam_conv2d_17_bias_v_read_readvariableopB
>savev2_adam_batch_normalization_24_gamma_v_read_readvariableopA
=savev2_adam_batch_normalization_24_beta_v_read_readvariableop
savev2_const

identity_1��MergeV2Checkpointsw
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
_temp/part�
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
value	B : �
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: �5
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:r*
dtype0*�4
value�4B�4rB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB'variables/19/.ATTRIBUTES/VARIABLE_VALUEB'variables/20/.ATTRIBUTES/VARIABLE_VALUEB'variables/21/.ATTRIBUTES/VARIABLE_VALUEB'variables/22/.ATTRIBUTES/VARIABLE_VALUEB'variables/23/.ATTRIBUTES/VARIABLE_VALUEB'variables/24/.ATTRIBUTES/VARIABLE_VALUEB'variables/25/.ATTRIBUTES/VARIABLE_VALUEB'variables/26/.ATTRIBUTES/VARIABLE_VALUEB'variables/27/.ATTRIBUTES/VARIABLE_VALUEB'variables/28/.ATTRIBUTES/VARIABLE_VALUEB'variables/29/.ATTRIBUTES/VARIABLE_VALUEB'variables/30/.ATTRIBUTES/VARIABLE_VALUEB'variables/31/.ATTRIBUTES/VARIABLE_VALUEB'variables/32/.ATTRIBUTES/VARIABLE_VALUEB'variables/33/.ATTRIBUTES/VARIABLE_VALUEB'variables/34/.ATTRIBUTES/VARIABLE_VALUEB'variables/35/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/18/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/19/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/20/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/21/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/24/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/25/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/26/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/27/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/30/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/31/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/32/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/33/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/18/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/19/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/20/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/21/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/24/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/25/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/26/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/27/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/30/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/31/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/32/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/33/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:r*
dtype0*�
value�B�rB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �2
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0)savev2_dense_4_kernel_read_readvariableop'savev2_dense_4_bias_read_readvariableop7savev2_batch_normalization_25_gamma_read_readvariableop6savev2_batch_normalization_25_beta_read_readvariableop=savev2_batch_normalization_25_moving_mean_read_readvariableopAsavev2_batch_normalization_25_moving_variance_read_readvariableop)savev2_dense_5_kernel_read_readvariableop'savev2_dense_5_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop+savev2_conv2d_12_kernel_read_readvariableop)savev2_conv2d_12_bias_read_readvariableop7savev2_batch_normalization_19_gamma_read_readvariableop6savev2_batch_normalization_19_beta_read_readvariableop=savev2_batch_normalization_19_moving_mean_read_readvariableopAsavev2_batch_normalization_19_moving_variance_read_readvariableop+savev2_conv2d_13_kernel_read_readvariableop)savev2_conv2d_13_bias_read_readvariableop7savev2_batch_normalization_20_gamma_read_readvariableop6savev2_batch_normalization_20_beta_read_readvariableop=savev2_batch_normalization_20_moving_mean_read_readvariableopAsavev2_batch_normalization_20_moving_variance_read_readvariableop+savev2_conv2d_14_kernel_read_readvariableop)savev2_conv2d_14_bias_read_readvariableop7savev2_batch_normalization_21_gamma_read_readvariableop6savev2_batch_normalization_21_beta_read_readvariableop=savev2_batch_normalization_21_moving_mean_read_readvariableopAsavev2_batch_normalization_21_moving_variance_read_readvariableop+savev2_conv2d_15_kernel_read_readvariableop)savev2_conv2d_15_bias_read_readvariableop7savev2_batch_normalization_22_gamma_read_readvariableop6savev2_batch_normalization_22_beta_read_readvariableop=savev2_batch_normalization_22_moving_mean_read_readvariableopAsavev2_batch_normalization_22_moving_variance_read_readvariableop+savev2_conv2d_16_kernel_read_readvariableop)savev2_conv2d_16_bias_read_readvariableop7savev2_batch_normalization_23_gamma_read_readvariableop6savev2_batch_normalization_23_beta_read_readvariableop=savev2_batch_normalization_23_moving_mean_read_readvariableopAsavev2_batch_normalization_23_moving_variance_read_readvariableop+savev2_conv2d_17_kernel_read_readvariableop)savev2_conv2d_17_bias_read_readvariableop7savev2_batch_normalization_24_gamma_read_readvariableop6savev2_batch_normalization_24_beta_read_readvariableop=savev2_batch_normalization_24_moving_mean_read_readvariableopAsavev2_batch_normalization_24_moving_variance_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop0savev2_adam_dense_4_kernel_m_read_readvariableop.savev2_adam_dense_4_bias_m_read_readvariableop>savev2_adam_batch_normalization_25_gamma_m_read_readvariableop=savev2_adam_batch_normalization_25_beta_m_read_readvariableop0savev2_adam_dense_5_kernel_m_read_readvariableop.savev2_adam_dense_5_bias_m_read_readvariableop2savev2_adam_conv2d_12_kernel_m_read_readvariableop0savev2_adam_conv2d_12_bias_m_read_readvariableop>savev2_adam_batch_normalization_19_gamma_m_read_readvariableop=savev2_adam_batch_normalization_19_beta_m_read_readvariableop2savev2_adam_conv2d_13_kernel_m_read_readvariableop0savev2_adam_conv2d_13_bias_m_read_readvariableop>savev2_adam_batch_normalization_20_gamma_m_read_readvariableop=savev2_adam_batch_normalization_20_beta_m_read_readvariableop2savev2_adam_conv2d_14_kernel_m_read_readvariableop0savev2_adam_conv2d_14_bias_m_read_readvariableop>savev2_adam_batch_normalization_21_gamma_m_read_readvariableop=savev2_adam_batch_normalization_21_beta_m_read_readvariableop2savev2_adam_conv2d_15_kernel_m_read_readvariableop0savev2_adam_conv2d_15_bias_m_read_readvariableop>savev2_adam_batch_normalization_22_gamma_m_read_readvariableop=savev2_adam_batch_normalization_22_beta_m_read_readvariableop2savev2_adam_conv2d_16_kernel_m_read_readvariableop0savev2_adam_conv2d_16_bias_m_read_readvariableop>savev2_adam_batch_normalization_23_gamma_m_read_readvariableop=savev2_adam_batch_normalization_23_beta_m_read_readvariableop2savev2_adam_conv2d_17_kernel_m_read_readvariableop0savev2_adam_conv2d_17_bias_m_read_readvariableop>savev2_adam_batch_normalization_24_gamma_m_read_readvariableop=savev2_adam_batch_normalization_24_beta_m_read_readvariableop0savev2_adam_dense_4_kernel_v_read_readvariableop.savev2_adam_dense_4_bias_v_read_readvariableop>savev2_adam_batch_normalization_25_gamma_v_read_readvariableop=savev2_adam_batch_normalization_25_beta_v_read_readvariableop0savev2_adam_dense_5_kernel_v_read_readvariableop.savev2_adam_dense_5_bias_v_read_readvariableop2savev2_adam_conv2d_12_kernel_v_read_readvariableop0savev2_adam_conv2d_12_bias_v_read_readvariableop>savev2_adam_batch_normalization_19_gamma_v_read_readvariableop=savev2_adam_batch_normalization_19_beta_v_read_readvariableop2savev2_adam_conv2d_13_kernel_v_read_readvariableop0savev2_adam_conv2d_13_bias_v_read_readvariableop>savev2_adam_batch_normalization_20_gamma_v_read_readvariableop=savev2_adam_batch_normalization_20_beta_v_read_readvariableop2savev2_adam_conv2d_14_kernel_v_read_readvariableop0savev2_adam_conv2d_14_bias_v_read_readvariableop>savev2_adam_batch_normalization_21_gamma_v_read_readvariableop=savev2_adam_batch_normalization_21_beta_v_read_readvariableop2savev2_adam_conv2d_15_kernel_v_read_readvariableop0savev2_adam_conv2d_15_bias_v_read_readvariableop>savev2_adam_batch_normalization_22_gamma_v_read_readvariableop=savev2_adam_batch_normalization_22_beta_v_read_readvariableop2savev2_adam_conv2d_16_kernel_v_read_readvariableop0savev2_adam_conv2d_16_bias_v_read_readvariableop>savev2_adam_batch_normalization_23_gamma_v_read_readvariableop=savev2_adam_batch_normalization_23_beta_v_read_readvariableop2savev2_adam_conv2d_17_kernel_v_read_readvariableop0savev2_adam_conv2d_17_bias_v_read_readvariableop>savev2_adam_batch_normalization_24_gamma_v_read_readvariableop=savev2_adam_batch_normalization_24_beta_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *�
dtypesv
t2r	�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:�
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

identity_1Identity_1:output:0*�
_input_shapes�
�: :
�A�:�:�:�:�:�:	�
:
: : : : : :::::::!:!:!:!:!:!:!7:7:7:7:7:7:7<:<:<:<:<:<:<x:x:x:x:x:x:x�:�:�:�:�:�: : : : :
�A�:�:�:�:	�
:
:::::!:!:!:!:!7:7:7:7:7<:<:<:<:<x:x:x:x:x�:�:�:�:
�A�:�:�:�:	�
:
:::::!:!:!:!:!7:7:7:7:7<:<:<:<:<x:x:x:x:x�:�:�:�: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:&"
 
_output_shapes
:
�A�:!

_output_shapes	
:�:!

_output_shapes	
:�:!

_output_shapes	
:�:!

_output_shapes	
:�:!

_output_shapes	
:�:%!

_output_shapes
:	�
: 

_output_shapes
:
:	
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
: :,(
&
_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:!: 

_output_shapes
:!: 

_output_shapes
:!: 

_output_shapes
:!: 

_output_shapes
:!: 

_output_shapes
:!:,(
&
_output_shapes
:!7: 

_output_shapes
:7: 

_output_shapes
:7: 

_output_shapes
:7: 

_output_shapes
:7: 

_output_shapes
:7:, (
&
_output_shapes
:7<: !

_output_shapes
:<: "

_output_shapes
:<: #

_output_shapes
:<: $

_output_shapes
:<: %

_output_shapes
:<:,&(
&
_output_shapes
:<x: '

_output_shapes
:x: (

_output_shapes
:x: )

_output_shapes
:x: *

_output_shapes
:x: +

_output_shapes
:x:-,)
'
_output_shapes
:x�:!-

_output_shapes	
:�:!.

_output_shapes	
:�:!/

_output_shapes	
:�:!0

_output_shapes	
:�:!1

_output_shapes	
:�:2

_output_shapes
: :3

_output_shapes
: :4

_output_shapes
: :5

_output_shapes
: :&6"
 
_output_shapes
:
�A�:!7

_output_shapes	
:�:!8

_output_shapes	
:�:!9

_output_shapes	
:�:%:!

_output_shapes
:	�
: ;

_output_shapes
:
:,<(
&
_output_shapes
:: =

_output_shapes
:: >

_output_shapes
:: ?

_output_shapes
::,@(
&
_output_shapes
:!: A

_output_shapes
:!: B

_output_shapes
:!: C

_output_shapes
:!:,D(
&
_output_shapes
:!7: E

_output_shapes
:7: F

_output_shapes
:7: G

_output_shapes
:7:,H(
&
_output_shapes
:7<: I

_output_shapes
:<: J

_output_shapes
:<: K

_output_shapes
:<:,L(
&
_output_shapes
:<x: M

_output_shapes
:x: N

_output_shapes
:x: O

_output_shapes
:x:-P)
'
_output_shapes
:x�:!Q

_output_shapes	
:�:!R

_output_shapes	
:�:!S

_output_shapes	
:�:&T"
 
_output_shapes
:
�A�:!U

_output_shapes	
:�:!V

_output_shapes	
:�:!W

_output_shapes	
:�:%X!

_output_shapes
:	�
: Y

_output_shapes
:
:,Z(
&
_output_shapes
:: [

_output_shapes
:: \

_output_shapes
:: ]

_output_shapes
::,^(
&
_output_shapes
:!: _

_output_shapes
:!: `

_output_shapes
:!: a

_output_shapes
:!:,b(
&
_output_shapes
:!7: c

_output_shapes
:7: d

_output_shapes
:7: e

_output_shapes
:7:,f(
&
_output_shapes
:7<: g

_output_shapes
:<: h

_output_shapes
:<: i

_output_shapes
:<:,j(
&
_output_shapes
:<x: k

_output_shapes
:x: l

_output_shapes
:x: m

_output_shapes
:x:-n)
'
_output_shapes
:x�:!o

_output_shapes	
:�:!p

_output_shapes	
:�:!q

_output_shapes	
:�:r

_output_shapes
: 
�	
�
-__inference_sequential_20_layer_call_fn_69516

inputs"
unknown:x�
	unknown_0:	�
	unknown_1:	�
	unknown_2:	�
	unknown_3:	�
	unknown_4:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_sequential_20_layer_call_and_return_conditional_losses_67085x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������x: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������x
 
_user_specified_nameinputs
�
b
)__inference_dropout_9_layer_call_fn_69398

inputs
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������<* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dropout_9_layer_call_and_return_conditional_losses_67733w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������<`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������<22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������<
 
_user_specified_nameinputs
�
�
H__inference_sequential_17_layer_call_and_return_conditional_losses_69279

inputsB
(conv2d_14_conv2d_readvariableop_resource:!77
)conv2d_14_biasadd_readvariableop_resource:7<
.batch_normalization_21_readvariableop_resource:7>
0batch_normalization_21_readvariableop_1_resource:7M
?batch_normalization_21_fusedbatchnormv3_readvariableop_resource:7O
Abatch_normalization_21_fusedbatchnormv3_readvariableop_1_resource:7
identity��6batch_normalization_21/FusedBatchNormV3/ReadVariableOp�8batch_normalization_21/FusedBatchNormV3/ReadVariableOp_1�%batch_normalization_21/ReadVariableOp�'batch_normalization_21/ReadVariableOp_1� conv2d_14/BiasAdd/ReadVariableOp�conv2d_14/Conv2D/ReadVariableOp�
conv2d_14/Conv2D/ReadVariableOpReadVariableOp(conv2d_14_conv2d_readvariableop_resource*&
_output_shapes
:!7*
dtype0�
conv2d_14/Conv2DConv2Dinputs'conv2d_14/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������7*
paddingSAME*
strides
�
 conv2d_14/BiasAdd/ReadVariableOpReadVariableOp)conv2d_14_biasadd_readvariableop_resource*
_output_shapes
:7*
dtype0�
conv2d_14/BiasAddBiasAddconv2d_14/Conv2D:output:0(conv2d_14/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������7�
%batch_normalization_21/ReadVariableOpReadVariableOp.batch_normalization_21_readvariableop_resource*
_output_shapes
:7*
dtype0�
'batch_normalization_21/ReadVariableOp_1ReadVariableOp0batch_normalization_21_readvariableop_1_resource*
_output_shapes
:7*
dtype0�
6batch_normalization_21/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_21_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:7*
dtype0�
8batch_normalization_21/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_21_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:7*
dtype0�
'batch_normalization_21/FusedBatchNormV3FusedBatchNormV3conv2d_14/BiasAdd:output:0-batch_normalization_21/ReadVariableOp:value:0/batch_normalization_21/ReadVariableOp_1:value:0>batch_normalization_21/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_21/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������7:7:7:7:7:*
epsilon%o�:*
is_training( |
re_lu_21/ReluRelu+batch_normalization_21/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:���������7r
IdentityIdentityre_lu_21/Relu:activations:0^NoOp*
T0*/
_output_shapes
:���������7�
NoOpNoOp7^batch_normalization_21/FusedBatchNormV3/ReadVariableOp9^batch_normalization_21/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_21/ReadVariableOp(^batch_normalization_21/ReadVariableOp_1!^conv2d_14/BiasAdd/ReadVariableOp ^conv2d_14/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������!: : : : : : 2p
6batch_normalization_21/FusedBatchNormV3/ReadVariableOp6batch_normalization_21/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_21/FusedBatchNormV3/ReadVariableOp_18batch_normalization_21/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_21/ReadVariableOp%batch_normalization_21/ReadVariableOp2R
'batch_normalization_21/ReadVariableOp_1'batch_normalization_21/ReadVariableOp_12D
 conv2d_14/BiasAdd/ReadVariableOp conv2d_14/BiasAdd/ReadVariableOp2B
conv2d_14/Conv2D/ReadVariableOpconv2d_14/Conv2D/ReadVariableOp:W S
/
_output_shapes
:���������!
 
_user_specified_nameinputs
�
�
Q__inference_batch_normalization_21_layer_call_and_return_conditional_losses_66101

inputs%
readvariableop_resource:7'
readvariableop_1_resource:76
(fusedbatchnormv3_readvariableop_resource:78
*fusedbatchnormv3_readvariableop_1_resource:7
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:7*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:7*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:7*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:7*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������7:7:7:7:7:*
epsilon%o�:*
exponential_avg_factor%
�#<�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������7�
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������7: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������7
 
_user_specified_nameinputs
�
�
H__inference_sequential_19_layer_call_and_return_conditional_losses_69474

inputsB
(conv2d_16_conv2d_readvariableop_resource:<x7
)conv2d_16_biasadd_readvariableop_resource:x<
.batch_normalization_23_readvariableop_resource:x>
0batch_normalization_23_readvariableop_1_resource:xM
?batch_normalization_23_fusedbatchnormv3_readvariableop_resource:xO
Abatch_normalization_23_fusedbatchnormv3_readvariableop_1_resource:x
identity��6batch_normalization_23/FusedBatchNormV3/ReadVariableOp�8batch_normalization_23/FusedBatchNormV3/ReadVariableOp_1�%batch_normalization_23/ReadVariableOp�'batch_normalization_23/ReadVariableOp_1� conv2d_16/BiasAdd/ReadVariableOp�conv2d_16/Conv2D/ReadVariableOp�
conv2d_16/Conv2D/ReadVariableOpReadVariableOp(conv2d_16_conv2d_readvariableop_resource*&
_output_shapes
:<x*
dtype0�
conv2d_16/Conv2DConv2Dinputs'conv2d_16/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������x*
paddingSAME*
strides
�
 conv2d_16/BiasAdd/ReadVariableOpReadVariableOp)conv2d_16_biasadd_readvariableop_resource*
_output_shapes
:x*
dtype0�
conv2d_16/BiasAddBiasAddconv2d_16/Conv2D:output:0(conv2d_16/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������x�
%batch_normalization_23/ReadVariableOpReadVariableOp.batch_normalization_23_readvariableop_resource*
_output_shapes
:x*
dtype0�
'batch_normalization_23/ReadVariableOp_1ReadVariableOp0batch_normalization_23_readvariableop_1_resource*
_output_shapes
:x*
dtype0�
6batch_normalization_23/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_23_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:x*
dtype0�
8batch_normalization_23/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_23_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:x*
dtype0�
'batch_normalization_23/FusedBatchNormV3FusedBatchNormV3conv2d_16/BiasAdd:output:0-batch_normalization_23/ReadVariableOp:value:0/batch_normalization_23/ReadVariableOp_1:value:0>batch_normalization_23/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_23/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������x:x:x:x:x:*
epsilon%o�:*
is_training( |
re_lu_23/ReluRelu+batch_normalization_23/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:���������xr
IdentityIdentityre_lu_23/Relu:activations:0^NoOp*
T0*/
_output_shapes
:���������x�
NoOpNoOp7^batch_normalization_23/FusedBatchNormV3/ReadVariableOp9^batch_normalization_23/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_23/ReadVariableOp(^batch_normalization_23/ReadVariableOp_1!^conv2d_16/BiasAdd/ReadVariableOp ^conv2d_16/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������<: : : : : : 2p
6batch_normalization_23/FusedBatchNormV3/ReadVariableOp6batch_normalization_23/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_23/FusedBatchNormV3/ReadVariableOp_18batch_normalization_23/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_23/ReadVariableOp%batch_normalization_23/ReadVariableOp2R
'batch_normalization_23/ReadVariableOp_1'batch_normalization_23/ReadVariableOp_12D
 conv2d_16/BiasAdd/ReadVariableOp conv2d_16/BiasAdd/ReadVariableOp2B
conv2d_16/Conv2D/ReadVariableOpconv2d_16/Conv2D/ReadVariableOp:W S
/
_output_shapes
:���������<
 
_user_specified_nameinputs
�
�
6__inference_batch_normalization_23_layer_call_fn_70480

inputs
unknown:x
	unknown_0:x
	unknown_1:x
	unknown_2:x
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������x*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_23_layer_call_and_return_conditional_losses_66834w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������x`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������x: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������x
 
_user_specified_nameinputs
�

c
D__inference_dropout_8_layer_call_and_return_conditional_losses_69220

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?l
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:���������!C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:���������!*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���>�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:���������!w
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:���������!q
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:���������!a
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:���������!"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������!:W S
/
_output_shapes
:���������!
 
_user_specified_nameinputs
�
�
Q__inference_batch_normalization_19_layer_call_and_return_conditional_losses_65460

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������:::::*
epsilon%o�:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+����������������������������
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�
�
Q__inference_batch_normalization_21_layer_call_and_return_conditional_losses_70246

inputs%
readvariableop_resource:7'
readvariableop_1_resource:76
(fusedbatchnormv3_readvariableop_resource:78
*fusedbatchnormv3_readvariableop_1_resource:7
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:7*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:7*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:7*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:7*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������7:7:7:7:7:*
epsilon%o�:*
exponential_avg_factor%
�#<�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0k
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*/
_output_shapes
:���������7�
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������7: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:���������7
 
_user_specified_nameinputs
�

�
D__inference_conv2d_16_layer_call_and_return_conditional_losses_70428

inputs8
conv2d_readvariableop_resource:<x-
biasadd_readvariableop_resource:x
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:<x*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������x*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:x*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������xg
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:���������xw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������<: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������<
 
_user_specified_nameinputs
�
�
Q__inference_batch_normalization_21_layer_call_and_return_conditional_losses_70228

inputs%
readvariableop_resource:7'
readvariableop_1_resource:76
(fusedbatchnormv3_readvariableop_resource:78
*fusedbatchnormv3_readvariableop_1_resource:7
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:7*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:7*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:7*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:7*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������7:7:7:7:7:*
epsilon%o�:*
is_training( k
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*/
_output_shapes
:���������7�
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������7: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:���������7
 
_user_specified_nameinputs
�
�
Q__inference_batch_normalization_20_layer_call_and_return_conditional_losses_70075

inputs%
readvariableop_resource:!'
readvariableop_1_resource:!6
(fusedbatchnormv3_readvariableop_resource:!8
*fusedbatchnormv3_readvariableop_1_resource:!
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:!*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:!*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:!*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:!*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������!:!:!:!:!:*
epsilon%o�:*
is_training( k
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*/
_output_shapes
:���������!�
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������!: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:���������!
 
_user_specified_nameinputs
�	
�
6__inference_batch_normalization_20_layer_call_fn_69982

inputs
unknown:!
	unknown_0:!
	unknown_1:!
	unknown_2:!
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������!*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_20_layer_call_and_return_conditional_losses_65765�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������!`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������!: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+���������������������������!
 
_user_specified_nameinputs
�
D
(__inference_re_lu_24_layer_call_fn_70710

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_re_lu_24_layer_call_and_return_conditional_losses_67082i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
6__inference_batch_normalization_20_layer_call_fn_70008

inputs
unknown:!
	unknown_0:!
	unknown_1:!
	unknown_2:!
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������!*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_20_layer_call_and_return_conditional_losses_65847w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������!`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������!: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������!
 
_user_specified_nameinputs
�	
�
-__inference_sequential_19_layer_call_fn_69449

inputs!
unknown:<x
	unknown_0:x
	unknown_1:x
	unknown_2:x
	unknown_3:x
	unknown_4:x
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������x*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_sequential_19_layer_call_and_return_conditional_losses_66893w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������x`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������<: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������<
 
_user_specified_nameinputs
�
�
Q__inference_batch_normalization_23_layer_call_and_return_conditional_losses_66834

inputs%
readvariableop_resource:x'
readvariableop_1_resource:x6
(fusedbatchnormv3_readvariableop_resource:x8
*fusedbatchnormv3_readvariableop_1_resource:x
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:x*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:x*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:x*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:x*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������x:x:x:x:x:*
epsilon%o�:*
exponential_avg_factor%
�#<�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0k
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*/
_output_shapes
:���������x�
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������x: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:���������x
 
_user_specified_nameinputs
�
�
Q__inference_batch_normalization_19_layer_call_and_return_conditional_losses_65614

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������  :::::*
epsilon%o�:*
exponential_avg_factor%
�#<�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0k
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*/
_output_shapes
:���������  �
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������  : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:���������  
 
_user_specified_nameinputs
�
_
C__inference_re_lu_23_layer_call_and_return_conditional_losses_66777

inputs
identityN
ReluReluinputs*
T0*/
_output_shapes
:���������xb
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:���������x"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������x:W S
/
_output_shapes
:���������x
 
_user_specified_nameinputs
�%
�
H__inference_sequential_16_layer_call_and_return_conditional_losses_69193

inputsB
(conv2d_13_conv2d_readvariableop_resource:!7
)conv2d_13_biasadd_readvariableop_resource:!<
.batch_normalization_20_readvariableop_resource:!>
0batch_normalization_20_readvariableop_1_resource:!M
?batch_normalization_20_fusedbatchnormv3_readvariableop_resource:!O
Abatch_normalization_20_fusedbatchnormv3_readvariableop_1_resource:!
identity��%batch_normalization_20/AssignNewValue�'batch_normalization_20/AssignNewValue_1�6batch_normalization_20/FusedBatchNormV3/ReadVariableOp�8batch_normalization_20/FusedBatchNormV3/ReadVariableOp_1�%batch_normalization_20/ReadVariableOp�'batch_normalization_20/ReadVariableOp_1� conv2d_13/BiasAdd/ReadVariableOp�conv2d_13/Conv2D/ReadVariableOp�
conv2d_13/Conv2D/ReadVariableOpReadVariableOp(conv2d_13_conv2d_readvariableop_resource*&
_output_shapes
:!*
dtype0�
conv2d_13/Conv2DConv2Dinputs'conv2d_13/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������!*
paddingSAME*
strides
�
 conv2d_13/BiasAdd/ReadVariableOpReadVariableOp)conv2d_13_biasadd_readvariableop_resource*
_output_shapes
:!*
dtype0�
conv2d_13/BiasAddBiasAddconv2d_13/Conv2D:output:0(conv2d_13/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������!�
%batch_normalization_20/ReadVariableOpReadVariableOp.batch_normalization_20_readvariableop_resource*
_output_shapes
:!*
dtype0�
'batch_normalization_20/ReadVariableOp_1ReadVariableOp0batch_normalization_20_readvariableop_1_resource*
_output_shapes
:!*
dtype0�
6batch_normalization_20/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_20_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:!*
dtype0�
8batch_normalization_20/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_20_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:!*
dtype0�
'batch_normalization_20/FusedBatchNormV3FusedBatchNormV3conv2d_13/BiasAdd:output:0-batch_normalization_20/ReadVariableOp:value:0/batch_normalization_20/ReadVariableOp_1:value:0>batch_normalization_20/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_20/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������!:!:!:!:!:*
epsilon%o�:*
exponential_avg_factor%
�#<�
%batch_normalization_20/AssignNewValueAssignVariableOp?batch_normalization_20_fusedbatchnormv3_readvariableop_resource4batch_normalization_20/FusedBatchNormV3:batch_mean:07^batch_normalization_20/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0�
'batch_normalization_20/AssignNewValue_1AssignVariableOpAbatch_normalization_20_fusedbatchnormv3_readvariableop_1_resource8batch_normalization_20/FusedBatchNormV3:batch_variance:09^batch_normalization_20/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0|
re_lu_20/ReluRelu+batch_normalization_20/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:���������!r
IdentityIdentityre_lu_20/Relu:activations:0^NoOp*
T0*/
_output_shapes
:���������!�
NoOpNoOp&^batch_normalization_20/AssignNewValue(^batch_normalization_20/AssignNewValue_17^batch_normalization_20/FusedBatchNormV3/ReadVariableOp9^batch_normalization_20/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_20/ReadVariableOp(^batch_normalization_20/ReadVariableOp_1!^conv2d_13/BiasAdd/ReadVariableOp ^conv2d_13/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������  : : : : : : 2N
%batch_normalization_20/AssignNewValue%batch_normalization_20/AssignNewValue2R
'batch_normalization_20/AssignNewValue_1'batch_normalization_20/AssignNewValue_12p
6batch_normalization_20/FusedBatchNormV3/ReadVariableOp6batch_normalization_20/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_20/FusedBatchNormV3/ReadVariableOp_18batch_normalization_20/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_20/ReadVariableOp%batch_normalization_20/ReadVariableOp2R
'batch_normalization_20/ReadVariableOp_1'batch_normalization_20/ReadVariableOp_12D
 conv2d_13/BiasAdd/ReadVariableOp conv2d_13/BiasAdd/ReadVariableOp2B
conv2d_13/Conv2D/ReadVariableOpconv2d_13/Conv2D/ReadVariableOp:W S
/
_output_shapes
:���������  
 
_user_specified_nameinputs
�
�
Q__inference_batch_normalization_24_layer_call_and_return_conditional_losses_67067

inputs&
readvariableop_resource:	�(
readvariableop_1_resource:	�7
(fusedbatchnormv3_readvariableop_resource:	�9
*fusedbatchnormv3_readvariableop_1_resource:	�
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:�*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:�*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:����������:�:�:�:�:*
epsilon%o�:*
is_training( l
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*0
_output_shapes
:�����������
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:����������: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�	
�
-__inference_sequential_15_layer_call_fn_65705
conv2d_12_input!
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallconv2d_12_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������  *&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_sequential_15_layer_call_and_return_conditional_losses_65673w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������  `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������  : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:` \
/
_output_shapes
:���������  
)
_user_specified_nameconv2d_12_input
�
`
D__inference_flatten_2_layer_call_and_return_conditional_losses_67480

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"�����   ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:����������AY
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:����������A"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�

c
D__inference_dropout_8_layer_call_and_return_conditional_losses_67756

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?l
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:���������!C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:���������!*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���>�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:���������!w
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:���������!q
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:���������!a
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:���������!"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������!:W S
/
_output_shapes
:���������!
 
_user_specified_nameinputs
�
�
Q__inference_batch_normalization_24_layer_call_and_return_conditional_losses_67139

inputs&
readvariableop_resource:	�(
readvariableop_1_resource:	�7
(fusedbatchnormv3_readvariableop_resource:	�9
*fusedbatchnormv3_readvariableop_1_resource:	�
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:�*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:�*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:����������:�:�:�:�:*
epsilon%o�:*
exponential_avg_factor%
�#<�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0l
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*0
_output_shapes
:�����������
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:����������: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
H__inference_sequential_16_layer_call_and_return_conditional_losses_66029
conv2d_13_input)
conv2d_13_66013:!
conv2d_13_66015:!*
batch_normalization_20_66018:!*
batch_normalization_20_66020:!*
batch_normalization_20_66022:!*
batch_normalization_20_66024:!
identity��.batch_normalization_20/StatefulPartitionedCall�!conv2d_13/StatefulPartitionedCall�
!conv2d_13/StatefulPartitionedCallStatefulPartitionedCallconv2d_13_inputconv2d_13_66013conv2d_13_66015*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������!*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_conv2d_13_layer_call_and_return_conditional_losses_65824�
.batch_normalization_20/StatefulPartitionedCallStatefulPartitionedCall*conv2d_13/StatefulPartitionedCall:output:0batch_normalization_20_66018batch_normalization_20_66020batch_normalization_20_66022batch_normalization_20_66024*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������!*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_20_layer_call_and_return_conditional_losses_65847�
re_lu_20/PartitionedCallPartitionedCall7batch_normalization_20/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������!* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_re_lu_20_layer_call_and_return_conditional_losses_65862x
IdentityIdentity!re_lu_20/PartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������!�
NoOpNoOp/^batch_normalization_20/StatefulPartitionedCall"^conv2d_13/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������  : : : : : : 2`
.batch_normalization_20/StatefulPartitionedCall.batch_normalization_20/StatefulPartitionedCall2F
!conv2d_13/StatefulPartitionedCall!conv2d_13/StatefulPartitionedCall:` \
/
_output_shapes
:���������  
)
_user_specified_nameconv2d_13_input
�
�
Q__inference_batch_normalization_19_layer_call_and_return_conditional_losses_69922

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������  :::::*
epsilon%o�:*
is_training( k
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*/
_output_shapes
:���������  �
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������  : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:���������  
 
_user_specified_nameinputs
�
�
H__inference_sequential_17_layer_call_and_return_conditional_losses_66334
conv2d_14_input)
conv2d_14_66318:!7
conv2d_14_66320:7*
batch_normalization_21_66323:7*
batch_normalization_21_66325:7*
batch_normalization_21_66327:7*
batch_normalization_21_66329:7
identity��.batch_normalization_21/StatefulPartitionedCall�!conv2d_14/StatefulPartitionedCall�
!conv2d_14/StatefulPartitionedCallStatefulPartitionedCallconv2d_14_inputconv2d_14_66318conv2d_14_66320*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������7*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_conv2d_14_layer_call_and_return_conditional_losses_66129�
.batch_normalization_21/StatefulPartitionedCallStatefulPartitionedCall*conv2d_14/StatefulPartitionedCall:output:0batch_normalization_21_66323batch_normalization_21_66325batch_normalization_21_66327batch_normalization_21_66329*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������7*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_21_layer_call_and_return_conditional_losses_66152�
re_lu_21/PartitionedCallPartitionedCall7batch_normalization_21/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������7* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_re_lu_21_layer_call_and_return_conditional_losses_66167x
IdentityIdentity!re_lu_21/PartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������7�
NoOpNoOp/^batch_normalization_21/StatefulPartitionedCall"^conv2d_14/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������!: : : : : : 2`
.batch_normalization_21/StatefulPartitionedCall.batch_normalization_21/StatefulPartitionedCall2F
!conv2d_14/StatefulPartitionedCall!conv2d_14/StatefulPartitionedCall:` \
/
_output_shapes
:���������!
)
_user_specified_nameconv2d_14_input
�
�
6__inference_batch_normalization_19_layer_call_fn_69855

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������  *&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_19_layer_call_and_return_conditional_losses_65542w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������  `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������  : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������  
 
_user_specified_nameinputs
�
�
H__inference_sequential_19_layer_call_and_return_conditional_losses_66944
conv2d_16_input)
conv2d_16_66928:<x
conv2d_16_66930:x*
batch_normalization_23_66933:x*
batch_normalization_23_66935:x*
batch_normalization_23_66937:x*
batch_normalization_23_66939:x
identity��.batch_normalization_23/StatefulPartitionedCall�!conv2d_16/StatefulPartitionedCall�
!conv2d_16/StatefulPartitionedCallStatefulPartitionedCallconv2d_16_inputconv2d_16_66928conv2d_16_66930*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������x*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_conv2d_16_layer_call_and_return_conditional_losses_66739�
.batch_normalization_23/StatefulPartitionedCallStatefulPartitionedCall*conv2d_16/StatefulPartitionedCall:output:0batch_normalization_23_66933batch_normalization_23_66935batch_normalization_23_66937batch_normalization_23_66939*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������x*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_23_layer_call_and_return_conditional_losses_66762�
re_lu_23/PartitionedCallPartitionedCall7batch_normalization_23/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������x* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_re_lu_23_layer_call_and_return_conditional_losses_66777x
IdentityIdentity!re_lu_23/PartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������x�
NoOpNoOp/^batch_normalization_23/StatefulPartitionedCall"^conv2d_16/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������<: : : : : : 2`
.batch_normalization_23/StatefulPartitionedCall.batch_normalization_23/StatefulPartitionedCall2F
!conv2d_16/StatefulPartitionedCall!conv2d_16/StatefulPartitionedCall:` \
/
_output_shapes
:���������<
)
_user_specified_nameconv2d_16_input
�

�
D__inference_conv2d_12_layer_call_and_return_conditional_losses_65519

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������  *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������  g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:���������  w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������  : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������  
 
_user_specified_nameinputs
�
E
)__inference_dropout_9_layer_call_fn_69393

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������<* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dropout_9_layer_call_and_return_conditional_losses_67433h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:���������<"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������<:W S
/
_output_shapes
:���������<
 
_user_specified_nameinputs
�
�
6__inference_batch_normalization_23_layer_call_fn_70467

inputs
unknown:x
	unknown_0:x
	unknown_1:x
	unknown_2:x
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������x*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_23_layer_call_and_return_conditional_losses_66762w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������x`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������x: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������x
 
_user_specified_nameinputs
�
�
Q__inference_batch_normalization_24_layer_call_and_return_conditional_losses_70687

inputs&
readvariableop_resource:	�(
readvariableop_1_resource:	�7
(fusedbatchnormv3_readvariableop_resource:	�9
*fusedbatchnormv3_readvariableop_1_resource:	�
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:�*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:�*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:����������:�:�:�:�:*
epsilon%o�:*
is_training( l
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*0
_output_shapes
:�����������
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:����������: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
H__inference_sequential_17_layer_call_and_return_conditional_losses_66283

inputs)
conv2d_14_66267:!7
conv2d_14_66269:7*
batch_normalization_21_66272:7*
batch_normalization_21_66274:7*
batch_normalization_21_66276:7*
batch_normalization_21_66278:7
identity��.batch_normalization_21/StatefulPartitionedCall�!conv2d_14/StatefulPartitionedCall�
!conv2d_14/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_14_66267conv2d_14_66269*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������7*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_conv2d_14_layer_call_and_return_conditional_losses_66129�
.batch_normalization_21/StatefulPartitionedCallStatefulPartitionedCall*conv2d_14/StatefulPartitionedCall:output:0batch_normalization_21_66272batch_normalization_21_66274batch_normalization_21_66276batch_normalization_21_66278*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������7*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_21_layer_call_and_return_conditional_losses_66224�
re_lu_21/PartitionedCallPartitionedCall7batch_normalization_21/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������7* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_re_lu_21_layer_call_and_return_conditional_losses_66167x
IdentityIdentity!re_lu_21/PartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������7�
NoOpNoOp/^batch_normalization_21/StatefulPartitionedCall"^conv2d_14/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������!: : : : : : 2`
.batch_normalization_21/StatefulPartitionedCall.batch_normalization_21/StatefulPartitionedCall2F
!conv2d_14/StatefulPartitionedCall!conv2d_14/StatefulPartitionedCall:W S
/
_output_shapes
:���������!
 
_user_specified_nameinputs
�
�
Q__inference_batch_normalization_21_layer_call_and_return_conditional_losses_70210

inputs%
readvariableop_resource:7'
readvariableop_1_resource:76
(fusedbatchnormv3_readvariableop_resource:78
*fusedbatchnormv3_readvariableop_1_resource:7
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:7*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:7*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:7*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:7*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������7:7:7:7:7:*
epsilon%o�:*
exponential_avg_factor%
�#<�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������7�
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������7: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������7
 
_user_specified_nameinputs
�
D
(__inference_re_lu_25_layer_call_fn_69745

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_re_lu_25_layer_call_and_return_conditional_losses_67512a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
Q__inference_batch_normalization_24_layer_call_and_return_conditional_losses_70669

inputs&
readvariableop_resource:	�(
readvariableop_1_resource:	�7
(fusedbatchnormv3_readvariableop_resource:	�9
*fusedbatchnormv3_readvariableop_1_resource:	�
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:�*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:�*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,����������������������������:�:�:�:�:*
epsilon%o�:*
exponential_avg_factor%
�#<�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,�����������������������������
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,����������������������������: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,����������������������������
 
_user_specified_nameinputs
�
�
Q__inference_batch_normalization_19_layer_call_and_return_conditional_losses_65542

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������  :::::*
epsilon%o�:*
is_training( k
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*/
_output_shapes
:���������  �
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������  : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:���������  
 
_user_specified_nameinputs
�
c
*__inference_dropout_10_layer_call_fn_69613

inputs
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dropout_10_layer_call_and_return_conditional_losses_67705x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�
b
D__inference_dropout_9_layer_call_and_return_conditional_losses_67433

inputs

identity_1V
IdentityIdentityinputs*
T0*/
_output_shapes
:���������<c

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:���������<"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������<:W S
/
_output_shapes
:���������<
 
_user_specified_nameinputs
�%
�
H__inference_sequential_15_layer_call_and_return_conditional_losses_69109

inputsB
(conv2d_12_conv2d_readvariableop_resource:7
)conv2d_12_biasadd_readvariableop_resource:<
.batch_normalization_19_readvariableop_resource:>
0batch_normalization_19_readvariableop_1_resource:M
?batch_normalization_19_fusedbatchnormv3_readvariableop_resource:O
Abatch_normalization_19_fusedbatchnormv3_readvariableop_1_resource:
identity��%batch_normalization_19/AssignNewValue�'batch_normalization_19/AssignNewValue_1�6batch_normalization_19/FusedBatchNormV3/ReadVariableOp�8batch_normalization_19/FusedBatchNormV3/ReadVariableOp_1�%batch_normalization_19/ReadVariableOp�'batch_normalization_19/ReadVariableOp_1� conv2d_12/BiasAdd/ReadVariableOp�conv2d_12/Conv2D/ReadVariableOp�
conv2d_12/Conv2D/ReadVariableOpReadVariableOp(conv2d_12_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
conv2d_12/Conv2DConv2Dinputs'conv2d_12/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������  *
paddingSAME*
strides
�
 conv2d_12/BiasAdd/ReadVariableOpReadVariableOp)conv2d_12_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv2d_12/BiasAddBiasAddconv2d_12/Conv2D:output:0(conv2d_12/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������  �
%batch_normalization_19/ReadVariableOpReadVariableOp.batch_normalization_19_readvariableop_resource*
_output_shapes
:*
dtype0�
'batch_normalization_19/ReadVariableOp_1ReadVariableOp0batch_normalization_19_readvariableop_1_resource*
_output_shapes
:*
dtype0�
6batch_normalization_19/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_19_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
8batch_normalization_19/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_19_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
'batch_normalization_19/FusedBatchNormV3FusedBatchNormV3conv2d_12/BiasAdd:output:0-batch_normalization_19/ReadVariableOp:value:0/batch_normalization_19/ReadVariableOp_1:value:0>batch_normalization_19/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_19/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������  :::::*
epsilon%o�:*
exponential_avg_factor%
�#<�
%batch_normalization_19/AssignNewValueAssignVariableOp?batch_normalization_19_fusedbatchnormv3_readvariableop_resource4batch_normalization_19/FusedBatchNormV3:batch_mean:07^batch_normalization_19/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0�
'batch_normalization_19/AssignNewValue_1AssignVariableOpAbatch_normalization_19_fusedbatchnormv3_readvariableop_1_resource8batch_normalization_19/FusedBatchNormV3:batch_variance:09^batch_normalization_19/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0|
re_lu_19/ReluRelu+batch_normalization_19/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:���������  r
IdentityIdentityre_lu_19/Relu:activations:0^NoOp*
T0*/
_output_shapes
:���������  �
NoOpNoOp&^batch_normalization_19/AssignNewValue(^batch_normalization_19/AssignNewValue_17^batch_normalization_19/FusedBatchNormV3/ReadVariableOp9^batch_normalization_19/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_19/ReadVariableOp(^batch_normalization_19/ReadVariableOp_1!^conv2d_12/BiasAdd/ReadVariableOp ^conv2d_12/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������  : : : : : : 2N
%batch_normalization_19/AssignNewValue%batch_normalization_19/AssignNewValue2R
'batch_normalization_19/AssignNewValue_1'batch_normalization_19/AssignNewValue_12p
6batch_normalization_19/FusedBatchNormV3/ReadVariableOp6batch_normalization_19/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_19/FusedBatchNormV3/ReadVariableOp_18batch_normalization_19/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_19/ReadVariableOp%batch_normalization_19/ReadVariableOp2R
'batch_normalization_19/ReadVariableOp_1'batch_normalization_19/ReadVariableOp_12D
 conv2d_12/BiasAdd/ReadVariableOp conv2d_12/BiasAdd/ReadVariableOp2B
conv2d_12/Conv2D/ReadVariableOpconv2d_12/Conv2D/ReadVariableOp:W S
/
_output_shapes
:���������  
 
_user_specified_nameinputs
�
�
Q__inference_batch_normalization_22_layer_call_and_return_conditional_losses_66375

inputs%
readvariableop_resource:<'
readvariableop_1_resource:<6
(fusedbatchnormv3_readvariableop_resource:<8
*fusedbatchnormv3_readvariableop_1_resource:<
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:<*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:<*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:<*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:<*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������<:<:<:<:<:*
epsilon%o�:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������<�
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������<: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������<
 
_user_specified_nameinputs
�
�
H__inference_sequential_16_layer_call_and_return_conditional_losses_65865

inputs)
conv2d_13_65825:!
conv2d_13_65827:!*
batch_normalization_20_65848:!*
batch_normalization_20_65850:!*
batch_normalization_20_65852:!*
batch_normalization_20_65854:!
identity��.batch_normalization_20/StatefulPartitionedCall�!conv2d_13/StatefulPartitionedCall�
!conv2d_13/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_13_65825conv2d_13_65827*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������!*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_conv2d_13_layer_call_and_return_conditional_losses_65824�
.batch_normalization_20/StatefulPartitionedCallStatefulPartitionedCall*conv2d_13/StatefulPartitionedCall:output:0batch_normalization_20_65848batch_normalization_20_65850batch_normalization_20_65852batch_normalization_20_65854*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������!*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_20_layer_call_and_return_conditional_losses_65847�
re_lu_20/PartitionedCallPartitionedCall7batch_normalization_20/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������!* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_re_lu_20_layer_call_and_return_conditional_losses_65862x
IdentityIdentity!re_lu_20/PartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������!�
NoOpNoOp/^batch_normalization_20/StatefulPartitionedCall"^conv2d_13/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������  : : : : : : 2`
.batch_normalization_20/StatefulPartitionedCall.batch_normalization_20/StatefulPartitionedCall2F
!conv2d_13/StatefulPartitionedCall!conv2d_13/StatefulPartitionedCall:W S
/
_output_shapes
:���������  
 
_user_specified_nameinputs
�
�
)__inference_conv2d_16_layer_call_fn_70418

inputs!
unknown:<x
	unknown_0:x
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������x*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_conv2d_16_layer_call_and_return_conditional_losses_66739w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������x`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������<: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������<
 
_user_specified_nameinputs
�

c
D__inference_dropout_9_layer_call_and_return_conditional_losses_67733

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @l
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:���������<C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:���������<*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:���������<w
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:���������<q
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:���������<a
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:���������<"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������<:W S
/
_output_shapes
:���������<
 
_user_specified_nameinputs
�
�
Q__inference_batch_normalization_21_layer_call_and_return_conditional_losses_70192

inputs%
readvariableop_resource:7'
readvariableop_1_resource:76
(fusedbatchnormv3_readvariableop_resource:78
*fusedbatchnormv3_readvariableop_1_resource:7
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:7*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:7*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:7*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:7*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������7:7:7:7:7:*
epsilon%o�:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������7�
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������7: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������7
 
_user_specified_nameinputs
�
�
H__inference_sequential_20_layer_call_and_return_conditional_losses_67085

inputs*
conv2d_17_67045:x�
conv2d_17_67047:	�+
batch_normalization_24_67068:	�+
batch_normalization_24_67070:	�+
batch_normalization_24_67072:	�+
batch_normalization_24_67074:	�
identity��.batch_normalization_24/StatefulPartitionedCall�!conv2d_17/StatefulPartitionedCall�
!conv2d_17/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_17_67045conv2d_17_67047*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_conv2d_17_layer_call_and_return_conditional_losses_67044�
.batch_normalization_24/StatefulPartitionedCallStatefulPartitionedCall*conv2d_17/StatefulPartitionedCall:output:0batch_normalization_24_67068batch_normalization_24_67070batch_normalization_24_67072batch_normalization_24_67074*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_24_layer_call_and_return_conditional_losses_67067�
re_lu_24/PartitionedCallPartitionedCall7batch_normalization_24/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_re_lu_24_layer_call_and_return_conditional_losses_67082y
IdentityIdentity!re_lu_24/PartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:�����������
NoOpNoOp/^batch_normalization_24/StatefulPartitionedCall"^conv2d_17/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������x: : : : : : 2`
.batch_normalization_24/StatefulPartitionedCall.batch_normalization_24/StatefulPartitionedCall2F
!conv2d_17/StatefulPartitionedCall!conv2d_17/StatefulPartitionedCall:W S
/
_output_shapes
:���������x
 
_user_specified_nameinputs
�	
�
6__inference_batch_normalization_21_layer_call_fn_70148

inputs
unknown:7
	unknown_0:7
	unknown_1:7
	unknown_2:7
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������7*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_21_layer_call_and_return_conditional_losses_66101�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������7`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������7: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+���������������������������7
 
_user_specified_nameinputs
�
�
Q__inference_batch_normalization_24_layer_call_and_return_conditional_losses_70705

inputs&
readvariableop_resource:	�(
readvariableop_1_resource:	�7
(fusedbatchnormv3_readvariableop_resource:	�9
*fusedbatchnormv3_readvariableop_1_resource:	�
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:�*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:�*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:����������:�:�:�:�:*
epsilon%o�:*
exponential_avg_factor%
�#<�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0l
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*0
_output_shapes
:�����������
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:����������: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
H__inference_sequential_16_layer_call_and_return_conditional_losses_65978

inputs)
conv2d_13_65962:!
conv2d_13_65964:!*
batch_normalization_20_65967:!*
batch_normalization_20_65969:!*
batch_normalization_20_65971:!*
batch_normalization_20_65973:!
identity��.batch_normalization_20/StatefulPartitionedCall�!conv2d_13/StatefulPartitionedCall�
!conv2d_13/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_13_65962conv2d_13_65964*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������!*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_conv2d_13_layer_call_and_return_conditional_losses_65824�
.batch_normalization_20/StatefulPartitionedCallStatefulPartitionedCall*conv2d_13/StatefulPartitionedCall:output:0batch_normalization_20_65967batch_normalization_20_65969batch_normalization_20_65971batch_normalization_20_65973*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������!*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_20_layer_call_and_return_conditional_losses_65919�
re_lu_20/PartitionedCallPartitionedCall7batch_normalization_20/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������!* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_re_lu_20_layer_call_and_return_conditional_losses_65862x
IdentityIdentity!re_lu_20/PartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������!�
NoOpNoOp/^batch_normalization_20/StatefulPartitionedCall"^conv2d_13/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������  : : : : : : 2`
.batch_normalization_20/StatefulPartitionedCall.batch_normalization_20/StatefulPartitionedCall2F
!conv2d_13/StatefulPartitionedCall!conv2d_13/StatefulPartitionedCall:W S
/
_output_shapes
:���������  
 
_user_specified_nameinputs
�
�
6__inference_batch_normalization_22_layer_call_fn_70314

inputs
unknown:<
	unknown_0:<
	unknown_1:<
	unknown_2:<
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������<*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_22_layer_call_and_return_conditional_losses_66457w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������<`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������<: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������<
 
_user_specified_nameinputs
�
�
Q__inference_batch_normalization_23_layer_call_and_return_conditional_losses_66762

inputs%
readvariableop_resource:x'
readvariableop_1_resource:x6
(fusedbatchnormv3_readvariableop_resource:x8
*fusedbatchnormv3_readvariableop_1_resource:x
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:x*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:x*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:x*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:x*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������x:x:x:x:x:*
epsilon%o�:*
is_training( k
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*/
_output_shapes
:���������x�
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������x: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:���������x
 
_user_specified_nameinputs
�
�
H__inference_sequential_15_layer_call_and_return_conditional_losses_65724
conv2d_12_input)
conv2d_12_65708:
conv2d_12_65710:*
batch_normalization_19_65713:*
batch_normalization_19_65715:*
batch_normalization_19_65717:*
batch_normalization_19_65719:
identity��.batch_normalization_19/StatefulPartitionedCall�!conv2d_12/StatefulPartitionedCall�
!conv2d_12/StatefulPartitionedCallStatefulPartitionedCallconv2d_12_inputconv2d_12_65708conv2d_12_65710*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������  *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_conv2d_12_layer_call_and_return_conditional_losses_65519�
.batch_normalization_19/StatefulPartitionedCallStatefulPartitionedCall*conv2d_12/StatefulPartitionedCall:output:0batch_normalization_19_65713batch_normalization_19_65715batch_normalization_19_65717batch_normalization_19_65719*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������  *&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_19_layer_call_and_return_conditional_losses_65542�
re_lu_19/PartitionedCallPartitionedCall7batch_normalization_19/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������  * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_re_lu_19_layer_call_and_return_conditional_losses_65557x
IdentityIdentity!re_lu_19/PartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������  �
NoOpNoOp/^batch_normalization_19/StatefulPartitionedCall"^conv2d_12/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������  : : : : : : 2`
.batch_normalization_19/StatefulPartitionedCall.batch_normalization_19/StatefulPartitionedCall2F
!conv2d_12/StatefulPartitionedCall!conv2d_12/StatefulPartitionedCall:` \
/
_output_shapes
:���������  
)
_user_specified_nameconv2d_12_input
�
�

-__inference_sequential_14_layer_call_fn_68649

inputs!
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:#
	unknown_5:!
	unknown_6:!
	unknown_7:!
	unknown_8:!
	unknown_9:!

unknown_10:!$

unknown_11:!7

unknown_12:7

unknown_13:7

unknown_14:7

unknown_15:7

unknown_16:7$

unknown_17:7<

unknown_18:<

unknown_19:<

unknown_20:<

unknown_21:<

unknown_22:<$

unknown_23:<x

unknown_24:x

unknown_25:x

unknown_26:x

unknown_27:x

unknown_28:x%

unknown_29:x�

unknown_30:	�

unknown_31:	�

unknown_32:	�

unknown_33:	�

unknown_34:	�

unknown_35:
�A�

unknown_36:	�

unknown_37:	�

unknown_38:	�

unknown_39:	�

unknown_40:	�

unknown_41:	�


unknown_42:

identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42*8
Tin1
/2-*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*@
_read_only_resource_inputs"
 	
 !"%&)*+,*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_sequential_14_layer_call_and_return_conditional_losses_67962o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapesu
s:���������  : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������  
 
_user_specified_nameinputs
�
K
/__inference_max_pooling2d_2_layer_call_fn_69593

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_67465i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�	
�
-__inference_sequential_18_layer_call_fn_66490
conv2d_15_input!
unknown:7<
	unknown_0:<
	unknown_1:<
	unknown_2:<
	unknown_3:<
	unknown_4:<
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallconv2d_15_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������<*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_sequential_18_layer_call_and_return_conditional_losses_66475w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������<`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������7: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:` \
/
_output_shapes
:���������7
)
_user_specified_nameconv2d_15_input
�
�
H__inference_sequential_20_layer_call_and_return_conditional_losses_69558

inputsC
(conv2d_17_conv2d_readvariableop_resource:x�8
)conv2d_17_biasadd_readvariableop_resource:	�=
.batch_normalization_24_readvariableop_resource:	�?
0batch_normalization_24_readvariableop_1_resource:	�N
?batch_normalization_24_fusedbatchnormv3_readvariableop_resource:	�P
Abatch_normalization_24_fusedbatchnormv3_readvariableop_1_resource:	�
identity��6batch_normalization_24/FusedBatchNormV3/ReadVariableOp�8batch_normalization_24/FusedBatchNormV3/ReadVariableOp_1�%batch_normalization_24/ReadVariableOp�'batch_normalization_24/ReadVariableOp_1� conv2d_17/BiasAdd/ReadVariableOp�conv2d_17/Conv2D/ReadVariableOp�
conv2d_17/Conv2D/ReadVariableOpReadVariableOp(conv2d_17_conv2d_readvariableop_resource*'
_output_shapes
:x�*
dtype0�
conv2d_17/Conv2DConv2Dinputs'conv2d_17/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
�
 conv2d_17/BiasAdd/ReadVariableOpReadVariableOp)conv2d_17_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
conv2d_17/BiasAddBiasAddconv2d_17/Conv2D:output:0(conv2d_17/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:�����������
%batch_normalization_24/ReadVariableOpReadVariableOp.batch_normalization_24_readvariableop_resource*
_output_shapes	
:�*
dtype0�
'batch_normalization_24/ReadVariableOp_1ReadVariableOp0batch_normalization_24_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
6batch_normalization_24/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_24_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype0�
8batch_normalization_24/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_24_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
'batch_normalization_24/FusedBatchNormV3FusedBatchNormV3conv2d_17/BiasAdd:output:0-batch_normalization_24/ReadVariableOp:value:0/batch_normalization_24/ReadVariableOp_1:value:0>batch_normalization_24/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_24/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:����������:�:�:�:�:*
epsilon%o�:*
is_training( }
re_lu_24/ReluRelu+batch_normalization_24/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:����������s
IdentityIdentityre_lu_24/Relu:activations:0^NoOp*
T0*0
_output_shapes
:�����������
NoOpNoOp7^batch_normalization_24/FusedBatchNormV3/ReadVariableOp9^batch_normalization_24/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_24/ReadVariableOp(^batch_normalization_24/ReadVariableOp_1!^conv2d_17/BiasAdd/ReadVariableOp ^conv2d_17/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������x: : : : : : 2p
6batch_normalization_24/FusedBatchNormV3/ReadVariableOp6batch_normalization_24/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_24/FusedBatchNormV3/ReadVariableOp_18batch_normalization_24/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_24/ReadVariableOp%batch_normalization_24/ReadVariableOp2R
'batch_normalization_24/ReadVariableOp_1'batch_normalization_24/ReadVariableOp_12D
 conv2d_17/BiasAdd/ReadVariableOp conv2d_17/BiasAdd/ReadVariableOp2B
conv2d_17/Conv2D/ReadVariableOpconv2d_17/Conv2D/ReadVariableOp:W S
/
_output_shapes
:���������x
 
_user_specified_nameinputs
�
�
Q__inference_batch_normalization_19_layer_call_and_return_conditional_losses_65491

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������:::::*
epsilon%o�:*
exponential_avg_factor%
�#<�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+����������������������������
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�	
�
-__inference_sequential_16_layer_call_fn_65880
conv2d_13_input!
unknown:!
	unknown_0:!
	unknown_1:!
	unknown_2:!
	unknown_3:!
	unknown_4:!
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallconv2d_13_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������!*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_sequential_16_layer_call_and_return_conditional_losses_65865w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������!`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������  : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:` \
/
_output_shapes
:���������  
)
_user_specified_nameconv2d_13_input
�
�
Q__inference_batch_normalization_21_layer_call_and_return_conditional_losses_66224

inputs%
readvariableop_resource:7'
readvariableop_1_resource:76
(fusedbatchnormv3_readvariableop_resource:78
*fusedbatchnormv3_readvariableop_1_resource:7
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:7*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:7*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:7*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:7*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������7:7:7:7:7:*
epsilon%o�:*
exponential_avg_factor%
�#<�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0k
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*/
_output_shapes
:���������7�
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������7: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:���������7
 
_user_specified_nameinputs
�
�
)__inference_conv2d_15_layer_call_fn_70265

inputs!
unknown:7<
	unknown_0:<
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������<*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_conv2d_15_layer_call_and_return_conditional_losses_66434w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������<`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������7: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������7
 
_user_specified_nameinputs
�	
�
-__inference_sequential_20_layer_call_fn_69533

inputs"
unknown:x�
	unknown_0:	�
	unknown_1:	�
	unknown_2:	�
	unknown_3:	�
	unknown_4:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_sequential_20_layer_call_and_return_conditional_losses_67198x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������x: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������x
 
_user_specified_nameinputs
�
c
E__inference_dropout_11_layer_call_and_return_conditional_losses_69765

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:����������\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:����������"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
)__inference_conv2d_17_layer_call_fn_70571

inputs"
unknown:x�
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_conv2d_17_layer_call_and_return_conditional_losses_67044x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������x: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������x
 
_user_specified_nameinputs
�	
�
6__inference_batch_normalization_24_layer_call_fn_70594

inputs
unknown:	�
	unknown_0:	�
	unknown_1:	�
	unknown_2:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,����������������������������*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_24_layer_call_and_return_conditional_losses_66985�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,����������������������������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,����������������������������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,����������������������������
 
_user_specified_nameinputs
�	
�
6__inference_batch_normalization_21_layer_call_fn_70135

inputs
unknown:7
	unknown_0:7
	unknown_1:7
	unknown_2:7
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������7*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_21_layer_call_and_return_conditional_losses_66070�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������7`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������7: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+���������������������������7
 
_user_specified_nameinputs
�
�
Q__inference_batch_normalization_24_layer_call_and_return_conditional_losses_67016

inputs&
readvariableop_resource:	�(
readvariableop_1_resource:	�7
(fusedbatchnormv3_readvariableop_resource:	�9
*fusedbatchnormv3_readvariableop_1_resource:	�
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:�*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:�*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,����������������������������:�:�:�:�:*
epsilon%o�:*
exponential_avg_factor%
�#<�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,�����������������������������
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,����������������������������: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,����������������������������
 
_user_specified_nameinputs
�
F
*__inference_dropout_11_layer_call_fn_69755

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dropout_11_layer_call_and_return_conditional_losses_67519a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
_
C__inference_re_lu_20_layer_call_and_return_conditional_losses_65862

inputs
identityN
ReluReluinputs*
T0*/
_output_shapes
:���������!b
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:���������!"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������!:W S
/
_output_shapes
:���������!
 
_user_specified_nameinputs
�	
�
-__inference_sequential_19_layer_call_fn_69432

inputs!
unknown:<x
	unknown_0:x
	unknown_1:x
	unknown_2:x
	unknown_3:x
	unknown_4:x
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������x*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_sequential_19_layer_call_and_return_conditional_losses_66780w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������x`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������<: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������<
 
_user_specified_nameinputs
�
�
H__inference_sequential_16_layer_call_and_return_conditional_losses_69168

inputsB
(conv2d_13_conv2d_readvariableop_resource:!7
)conv2d_13_biasadd_readvariableop_resource:!<
.batch_normalization_20_readvariableop_resource:!>
0batch_normalization_20_readvariableop_1_resource:!M
?batch_normalization_20_fusedbatchnormv3_readvariableop_resource:!O
Abatch_normalization_20_fusedbatchnormv3_readvariableop_1_resource:!
identity��6batch_normalization_20/FusedBatchNormV3/ReadVariableOp�8batch_normalization_20/FusedBatchNormV3/ReadVariableOp_1�%batch_normalization_20/ReadVariableOp�'batch_normalization_20/ReadVariableOp_1� conv2d_13/BiasAdd/ReadVariableOp�conv2d_13/Conv2D/ReadVariableOp�
conv2d_13/Conv2D/ReadVariableOpReadVariableOp(conv2d_13_conv2d_readvariableop_resource*&
_output_shapes
:!*
dtype0�
conv2d_13/Conv2DConv2Dinputs'conv2d_13/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������!*
paddingSAME*
strides
�
 conv2d_13/BiasAdd/ReadVariableOpReadVariableOp)conv2d_13_biasadd_readvariableop_resource*
_output_shapes
:!*
dtype0�
conv2d_13/BiasAddBiasAddconv2d_13/Conv2D:output:0(conv2d_13/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������!�
%batch_normalization_20/ReadVariableOpReadVariableOp.batch_normalization_20_readvariableop_resource*
_output_shapes
:!*
dtype0�
'batch_normalization_20/ReadVariableOp_1ReadVariableOp0batch_normalization_20_readvariableop_1_resource*
_output_shapes
:!*
dtype0�
6batch_normalization_20/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_20_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:!*
dtype0�
8batch_normalization_20/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_20_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:!*
dtype0�
'batch_normalization_20/FusedBatchNormV3FusedBatchNormV3conv2d_13/BiasAdd:output:0-batch_normalization_20/ReadVariableOp:value:0/batch_normalization_20/ReadVariableOp_1:value:0>batch_normalization_20/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_20/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������!:!:!:!:!:*
epsilon%o�:*
is_training( |
re_lu_20/ReluRelu+batch_normalization_20/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:���������!r
IdentityIdentityre_lu_20/Relu:activations:0^NoOp*
T0*/
_output_shapes
:���������!�
NoOpNoOp7^batch_normalization_20/FusedBatchNormV3/ReadVariableOp9^batch_normalization_20/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_20/ReadVariableOp(^batch_normalization_20/ReadVariableOp_1!^conv2d_13/BiasAdd/ReadVariableOp ^conv2d_13/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������  : : : : : : 2p
6batch_normalization_20/FusedBatchNormV3/ReadVariableOp6batch_normalization_20/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_20/FusedBatchNormV3/ReadVariableOp_18batch_normalization_20/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_20/ReadVariableOp%batch_normalization_20/ReadVariableOp2R
'batch_normalization_20/ReadVariableOp_1'batch_normalization_20/ReadVariableOp_12D
 conv2d_13/BiasAdd/ReadVariableOp conv2d_13/BiasAdd/ReadVariableOp2B
conv2d_13/Conv2D/ReadVariableOpconv2d_13/Conv2D/ReadVariableOp:W S
/
_output_shapes
:���������  
 
_user_specified_nameinputs
�
�
Q__inference_batch_normalization_22_layer_call_and_return_conditional_losses_70381

inputs%
readvariableop_resource:<'
readvariableop_1_resource:<6
(fusedbatchnormv3_readvariableop_resource:<8
*fusedbatchnormv3_readvariableop_1_resource:<
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:<*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:<*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:<*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:<*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������<:<:<:<:<:*
epsilon%o�:*
is_training( k
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*/
_output_shapes
:���������<�
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������<: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:���������<
 
_user_specified_nameinputs
�
�
)__inference_conv2d_13_layer_call_fn_69959

inputs!
unknown:!
	unknown_0:!
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������!*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_conv2d_13_layer_call_and_return_conditional_losses_65824w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������!`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������  : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������  
 
_user_specified_nameinputs
�
�
'__inference_dense_5_layer_call_fn_69786

inputs
unknown:	�

	unknown_0:

identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_dense_5_layer_call_and_return_conditional_losses_67532o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
f
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_69603

inputs
identity�
MaxPoolMaxPoolinputs*0
_output_shapes
:����������*
ksize
*
paddingVALID*
strides
a
IdentityIdentityMaxPool:output:0*
T0*0
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�	
�
6__inference_batch_normalization_23_layer_call_fn_70441

inputs
unknown:x
	unknown_0:x
	unknown_1:x
	unknown_2:x
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������x*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_23_layer_call_and_return_conditional_losses_66680�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������x`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������x: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+���������������������������x
 
_user_specified_nameinputs
�%
�
Q__inference_batch_normalization_25_layer_call_and_return_conditional_losses_67351

inputs6
'assignmovingavg_readvariableop_resource:	�8
)assignmovingavg_1_readvariableop_resource:	�4
%batchnorm_mul_readvariableop_resource:	�0
!batchnorm_readvariableop_resource:	�
identity��AssignMovingAvg�AssignMovingAvg/ReadVariableOp�AssignMovingAvg_1� AssignMovingAvg_1/ReadVariableOp�batchnorm/ReadVariableOp�batchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	�*
	keep_dims(e
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes
:	��
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*(
_output_shapes
:����������l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	�*
	keep_dims(n
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:�*
squeeze_dims
 t
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:�*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes	
:�*
dtype0�
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes	
:�y
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:��
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes	
:�*
dtype0�
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes	
:�
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:��
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:r
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:�Q
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:�
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0u
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:�d
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:����������i
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:�w
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0q
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:�s
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:����������c
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
Q__inference_batch_normalization_24_layer_call_and_return_conditional_losses_66985

inputs&
readvariableop_resource:	�(
readvariableop_1_resource:	�7
(fusedbatchnormv3_readvariableop_resource:	�9
*fusedbatchnormv3_readvariableop_1_resource:	�
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:�*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:�*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,����������������������������:�:�:�:�:*
epsilon%o�:*
is_training( ~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,�����������������������������
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,����������������������������: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,����������������������������
 
_user_specified_nameinputs
�
�
Q__inference_batch_normalization_23_layer_call_and_return_conditional_losses_70498

inputs%
readvariableop_resource:x'
readvariableop_1_resource:x6
(fusedbatchnormv3_readvariableop_resource:x8
*fusedbatchnormv3_readvariableop_1_resource:x
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:x*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:x*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:x*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:x*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������x:x:x:x:x:*
epsilon%o�:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������x�
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������x: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������x
 
_user_specified_nameinputs
�
_
C__inference_re_lu_24_layer_call_and_return_conditional_losses_67082

inputs
identityO
ReluReluinputs*
T0*0
_output_shapes
:����������c
IdentityIdentityRelu:activations:0*
T0*0
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�	
d
E__inference_dropout_11_layer_call_and_return_conditional_losses_67660

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:����������C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:����������*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:����������p
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:����������j
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:����������Z
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�	
�
-__inference_sequential_15_layer_call_fn_65575
conv2d_12_input!
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallconv2d_12_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������  *(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_sequential_15_layer_call_and_return_conditional_losses_65560w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������  `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������  : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:` \
/
_output_shapes
:���������  
)
_user_specified_nameconv2d_12_input
�
�
H__inference_sequential_17_layer_call_and_return_conditional_losses_66170

inputs)
conv2d_14_66130:!7
conv2d_14_66132:7*
batch_normalization_21_66153:7*
batch_normalization_21_66155:7*
batch_normalization_21_66157:7*
batch_normalization_21_66159:7
identity��.batch_normalization_21/StatefulPartitionedCall�!conv2d_14/StatefulPartitionedCall�
!conv2d_14/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_14_66130conv2d_14_66132*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������7*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_conv2d_14_layer_call_and_return_conditional_losses_66129�
.batch_normalization_21/StatefulPartitionedCallStatefulPartitionedCall*conv2d_14/StatefulPartitionedCall:output:0batch_normalization_21_66153batch_normalization_21_66155batch_normalization_21_66157batch_normalization_21_66159*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������7*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_21_layer_call_and_return_conditional_losses_66152�
re_lu_21/PartitionedCallPartitionedCall7batch_normalization_21/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������7* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_re_lu_21_layer_call_and_return_conditional_losses_66167x
IdentityIdentity!re_lu_21/PartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������7�
NoOpNoOp/^batch_normalization_21/StatefulPartitionedCall"^conv2d_14/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������!: : : : : : 2`
.batch_normalization_21/StatefulPartitionedCall.batch_normalization_21/StatefulPartitionedCall2F
!conv2d_14/StatefulPartitionedCall!conv2d_14/StatefulPartitionedCall:W S
/
_output_shapes
:���������!
 
_user_specified_nameinputs
�
�
H__inference_sequential_18_layer_call_and_return_conditional_losses_66475

inputs)
conv2d_15_66435:7<
conv2d_15_66437:<*
batch_normalization_22_66458:<*
batch_normalization_22_66460:<*
batch_normalization_22_66462:<*
batch_normalization_22_66464:<
identity��.batch_normalization_22/StatefulPartitionedCall�!conv2d_15/StatefulPartitionedCall�
!conv2d_15/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_15_66435conv2d_15_66437*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������<*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_conv2d_15_layer_call_and_return_conditional_losses_66434�
.batch_normalization_22/StatefulPartitionedCallStatefulPartitionedCall*conv2d_15/StatefulPartitionedCall:output:0batch_normalization_22_66458batch_normalization_22_66460batch_normalization_22_66462batch_normalization_22_66464*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������<*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_22_layer_call_and_return_conditional_losses_66457�
re_lu_22/PartitionedCallPartitionedCall7batch_normalization_22/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������<* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_re_lu_22_layer_call_and_return_conditional_losses_66472x
IdentityIdentity!re_lu_22/PartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������<�
NoOpNoOp/^batch_normalization_22/StatefulPartitionedCall"^conv2d_15/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������7: : : : : : 2`
.batch_normalization_22/StatefulPartitionedCall.batch_normalization_22/StatefulPartitionedCall2F
!conv2d_15/StatefulPartitionedCall!conv2d_15/StatefulPartitionedCall:W S
/
_output_shapes
:���������7
 
_user_specified_nameinputs
�
�
Q__inference_batch_normalization_25_layer_call_and_return_conditional_losses_67304

inputs0
!batchnorm_readvariableop_resource:	�4
%batchnorm_mul_readvariableop_resource:	�2
#batchnorm_readvariableop_1_resource:	�2
#batchnorm_readvariableop_2_resource:	�
identity��batchnorm/ReadVariableOp�batchnorm/ReadVariableOp_1�batchnorm/ReadVariableOp_2�batchnorm/mul/ReadVariableOpw
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:x
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:�Q
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:�
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0u
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:�d
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:����������{
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:�*
dtype0s
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:�{
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:�*
dtype0s
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:�s
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:����������c
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
6__inference_batch_normalization_25_layer_call_fn_69673

inputs
unknown:	�
	unknown_0:	�
	unknown_1:	�
	unknown_2:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_25_layer_call_and_return_conditional_losses_67304p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
Q__inference_batch_normalization_25_layer_call_and_return_conditional_losses_69706

inputs0
!batchnorm_readvariableop_resource:	�4
%batchnorm_mul_readvariableop_resource:	�2
#batchnorm_readvariableop_1_resource:	�2
#batchnorm_readvariableop_2_resource:	�
identity��batchnorm/ReadVariableOp�batchnorm/ReadVariableOp_1�batchnorm/ReadVariableOp_2�batchnorm/mul/ReadVariableOpw
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:x
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:�Q
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:�
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0u
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:�d
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:����������{
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:�*
dtype0s
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:�{
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:�*
dtype0s
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:�s
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:����������c
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
Q__inference_batch_normalization_20_layer_call_and_return_conditional_losses_70093

inputs%
readvariableop_resource:!'
readvariableop_1_resource:!6
(fusedbatchnormv3_readvariableop_resource:!8
*fusedbatchnormv3_readvariableop_1_resource:!
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:!*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:!*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:!*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:!*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������!:!:!:!:!:*
epsilon%o�:*
exponential_avg_factor%
�#<�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0k
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*/
_output_shapes
:���������!�
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������!: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:���������!
 
_user_specified_nameinputs
�
b
D__inference_dropout_8_layer_call_and_return_conditional_losses_69208

inputs

identity_1V
IdentityIdentityinputs*
T0*/
_output_shapes
:���������!c

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:���������!"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������!:W S
/
_output_shapes
:���������!
 
_user_specified_nameinputs
�
�
6__inference_batch_normalization_21_layer_call_fn_70161

inputs
unknown:7
	unknown_0:7
	unknown_1:7
	unknown_2:7
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������7*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_21_layer_call_and_return_conditional_losses_66152w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������7`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������7: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������7
 
_user_specified_nameinputs
�
f
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_69598

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
H__inference_sequential_20_layer_call_and_return_conditional_losses_67198

inputs*
conv2d_17_67182:x�
conv2d_17_67184:	�+
batch_normalization_24_67187:	�+
batch_normalization_24_67189:	�+
batch_normalization_24_67191:	�+
batch_normalization_24_67193:	�
identity��.batch_normalization_24/StatefulPartitionedCall�!conv2d_17/StatefulPartitionedCall�
!conv2d_17/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_17_67182conv2d_17_67184*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_conv2d_17_layer_call_and_return_conditional_losses_67044�
.batch_normalization_24/StatefulPartitionedCallStatefulPartitionedCall*conv2d_17/StatefulPartitionedCall:output:0batch_normalization_24_67187batch_normalization_24_67189batch_normalization_24_67191batch_normalization_24_67193*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_24_layer_call_and_return_conditional_losses_67139�
re_lu_24/PartitionedCallPartitionedCall7batch_normalization_24/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_re_lu_24_layer_call_and_return_conditional_losses_67082y
IdentityIdentity!re_lu_24/PartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:�����������
NoOpNoOp/^batch_normalization_24/StatefulPartitionedCall"^conv2d_17/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������x: : : : : : 2`
.batch_normalization_24/StatefulPartitionedCall.batch_normalization_24/StatefulPartitionedCall2F
!conv2d_17/StatefulPartitionedCall!conv2d_17/StatefulPartitionedCall:W S
/
_output_shapes
:���������x
 
_user_specified_nameinputs
�

�
D__inference_conv2d_15_layer_call_and_return_conditional_losses_66434

inputs8
conv2d_readvariableop_resource:7<-
biasadd_readvariableop_resource:<
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:7<*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������<*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:<*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������<g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:���������<w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������7: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������7
 
_user_specified_nameinputs
�
b
D__inference_dropout_8_layer_call_and_return_conditional_losses_67400

inputs

identity_1V
IdentityIdentityinputs*
T0*/
_output_shapes
:���������!c

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:���������!"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������!:W S
/
_output_shapes
:���������!
 
_user_specified_nameinputs
�
D
(__inference_re_lu_22_layer_call_fn_70404

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������<* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_re_lu_22_layer_call_and_return_conditional_losses_66472h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:���������<"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������<:W S
/
_output_shapes
:���������<
 
_user_specified_nameinputs
�	
�
-__inference_sequential_20_layer_call_fn_67100
conv2d_17_input"
unknown:x�
	unknown_0:	�
	unknown_1:	�
	unknown_2:	�
	unknown_3:	�
	unknown_4:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallconv2d_17_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_sequential_20_layer_call_and_return_conditional_losses_67085x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������x: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:` \
/
_output_shapes
:���������x
)
_user_specified_nameconv2d_17_input
�
�
Q__inference_batch_normalization_20_layer_call_and_return_conditional_losses_65847

inputs%
readvariableop_resource:!'
readvariableop_1_resource:!6
(fusedbatchnormv3_readvariableop_resource:!8
*fusedbatchnormv3_readvariableop_1_resource:!
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:!*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:!*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:!*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:!*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������!:!:!:!:!:*
epsilon%o�:*
is_training( k
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*/
_output_shapes
:���������!�
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������!: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:���������!
 
_user_specified_nameinputs"�L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
[
sequential_15_inputD
%serving_default_sequential_15_input:0���������  ;
dense_50
StatefulPartitionedCall:0���������
tensorflow/serving/predict:��
�
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer-2
layer_with_weights-2
layer-3
layer_with_weights-3
layer-4
layer-5
layer_with_weights-4
layer-6
layer_with_weights-5
layer-7
	layer-8

layer-9
layer-10
layer_with_weights-6
layer-11
layer_with_weights-7
layer-12
layer-13
layer-14
layer_with_weights-8
layer-15
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api

signatures
�__call__
+�&call_and_return_all_conditional_losses
�_default_save_signature"
_tf_keras_sequential
�
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer-2
	variables
trainable_variables
regularization_losses
	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_sequential
�
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
 layer-2
!	variables
"trainable_variables
#regularization_losses
$	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_sequential
�
%	variables
&trainable_variables
'regularization_losses
(	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
)layer_with_weights-0
)layer-0
*layer_with_weights-1
*layer-1
+layer-2
,	variables
-trainable_variables
.regularization_losses
/	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_sequential
�
0layer_with_weights-0
0layer-0
1layer_with_weights-1
1layer-1
2layer-2
3	variables
4trainable_variables
5regularization_losses
6	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_sequential
�
7	variables
8trainable_variables
9regularization_losses
:	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
;layer_with_weights-0
;layer-0
<layer_with_weights-1
<layer-1
=layer-2
>	variables
?trainable_variables
@regularization_losses
A	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_sequential
�
Blayer_with_weights-0
Blayer-0
Clayer_with_weights-1
Clayer-1
Dlayer-2
E	variables
Ftrainable_variables
Gregularization_losses
H	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_sequential
�
I	variables
Jtrainable_variables
Kregularization_losses
L	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
M	variables
Ntrainable_variables
Oregularization_losses
P	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
Q	variables
Rtrainable_variables
Sregularization_losses
T	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�

Ukernel
Vbias
W	variables
Xtrainable_variables
Yregularization_losses
Z	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
[axis
	\gamma
]beta
^moving_mean
_moving_variance
`	variables
atrainable_variables
bregularization_losses
c	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
d	variables
etrainable_variables
fregularization_losses
g	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
h	variables
itrainable_variables
jregularization_losses
k	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�

lkernel
mbias
n	variables
otrainable_variables
pregularization_losses
q	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
riter

sbeta_1

tbeta_2
	udecay
vlearning_rateUm�Vm�\m�]m�lm�mm�wm�xm�ym�zm�}m�~m�m�	�m�	�m�	�m�	�m�	�m�	�m�	�m�	�m�	�m�	�m�	�m�	�m�	�m�	�m�	�m�	�m�	�m�Uv�Vv�\v�]v�lv�mv�wv�xv�yv�zv�}v�~v�v�	�v�	�v�	�v�	�v�	�v�	�v�	�v�	�v�	�v�	�v�	�v�	�v�	�v�	�v�	�v�	�v�	�v�"
	optimizer
�
w0
x1
y2
z3
{4
|5
}6
~7
8
�9
�10
�11
�12
�13
�14
�15
�16
�17
�18
�19
�20
�21
�22
�23
�24
�25
�26
�27
�28
�29
�30
�31
�32
�33
�34
�35
U36
V37
\38
]39
^40
_41
l42
m43"
trackable_list_wrapper
�
w0
x1
y2
z3
}4
~5
6
�7
�8
�9
�10
�11
�12
�13
�14
�15
�16
�17
�18
�19
�20
�21
�22
�23
U24
V25
\26
]27
l28
m29"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
	variables
trainable_variables
regularization_losses
�__call__
�_default_save_signature
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
-
�serving_default"
signature_map
�

wkernel
xbias
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
	�axis
	ygamma
zbeta
{moving_mean
|moving_variance
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
J
w0
x1
y2
z3
{4
|5"
trackable_list_wrapper
<
w0
x1
y2
z3"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
	variables
trainable_variables
regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�

}kernel
~bias
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
	�axis
	gamma
	�beta
�moving_mean
�moving_variance
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
M
}0
~1
2
�3
�4
�5"
trackable_list_wrapper
=
}0
~1
2
�3"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
!	variables
"trainable_variables
#regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
%	variables
&trainable_variables
'regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�kernel
	�bias
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
	�axis

�gamma
	�beta
�moving_mean
�moving_variance
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
P
�0
�1
�2
�3
�4
�5"
trackable_list_wrapper
@
�0
�1
�2
�3"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
,	variables
-trainable_variables
.regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�kernel
	�bias
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
	�axis

�gamma
	�beta
�moving_mean
�moving_variance
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
P
�0
�1
�2
�3
�4
�5"
trackable_list_wrapper
@
�0
�1
�2
�3"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
3	variables
4trainable_variables
5regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
7	variables
8trainable_variables
9regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�kernel
	�bias
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
	�axis

�gamma
	�beta
�moving_mean
�moving_variance
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
P
�0
�1
�2
�3
�4
�5"
trackable_list_wrapper
@
�0
�1
�2
�3"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
>	variables
?trainable_variables
@regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�kernel
	�bias
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
	�axis

�gamma
	�beta
�moving_mean
�moving_variance
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
P
�0
�1
�2
�3
�4
�5"
trackable_list_wrapper
@
�0
�1
�2
�3"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
E	variables
Ftrainable_variables
Gregularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
I	variables
Jtrainable_variables
Kregularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
M	variables
Ntrainable_variables
Oregularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
Q	variables
Rtrainable_variables
Sregularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
": 
�A�2dense_4/kernel
:�2dense_4/bias
.
U0
V1"
trackable_list_wrapper
.
U0
V1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
W	variables
Xtrainable_variables
Yregularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
+:)�2batch_normalization_25/gamma
*:(�2batch_normalization_25/beta
3:1� (2"batch_normalization_25/moving_mean
7:5� (2&batch_normalization_25/moving_variance
<
\0
]1
^2
_3"
trackable_list_wrapper
.
\0
]1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
`	variables
atrainable_variables
bregularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
d	variables
etrainable_variables
fregularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
h	variables
itrainable_variables
jregularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
!:	�
2dense_5/kernel
:
2dense_5/bias
.
l0
m1"
trackable_list_wrapper
.
l0
m1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
n	variables
otrainable_variables
pregularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
*:(2conv2d_12/kernel
:2conv2d_12/bias
*:(2batch_normalization_19/gamma
):'2batch_normalization_19/beta
2:0 (2"batch_normalization_19/moving_mean
6:4 (2&batch_normalization_19/moving_variance
*:(!2conv2d_13/kernel
:!2conv2d_13/bias
*:(!2batch_normalization_20/gamma
):'!2batch_normalization_20/beta
2:0! (2"batch_normalization_20/moving_mean
6:4! (2&batch_normalization_20/moving_variance
*:(!72conv2d_14/kernel
:72conv2d_14/bias
*:(72batch_normalization_21/gamma
):'72batch_normalization_21/beta
2:07 (2"batch_normalization_21/moving_mean
6:47 (2&batch_normalization_21/moving_variance
*:(7<2conv2d_15/kernel
:<2conv2d_15/bias
*:(<2batch_normalization_22/gamma
):'<2batch_normalization_22/beta
2:0< (2"batch_normalization_22/moving_mean
6:4< (2&batch_normalization_22/moving_variance
*:(<x2conv2d_16/kernel
:x2conv2d_16/bias
*:(x2batch_normalization_23/gamma
):'x2batch_normalization_23/beta
2:0x (2"batch_normalization_23/moving_mean
6:4x (2&batch_normalization_23/moving_variance
+:)x�2conv2d_17/kernel
:�2conv2d_17/bias
+:)�2batch_normalization_24/gamma
*:(�2batch_normalization_24/beta
3:1� (2"batch_normalization_24/moving_mean
7:5� (2&batch_normalization_24/moving_variance
�
{0
|1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11
^12
_13"
trackable_list_wrapper
�
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
w0
x1"
trackable_list_wrapper
.
w0
x1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
<
y0
z1
{2
|3"
trackable_list_wrapper
.
y0
z1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
.
{0
|1"
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
}0
~1"
trackable_list_wrapper
.
}0
~1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
?
0
�1
�2
�3"
trackable_list_wrapper
/
0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
0
�0
�1"
trackable_list_wrapper
5
0
1
 2"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
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
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
@
�0
�1
�2
�3"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
0
�0
�1"
trackable_list_wrapper
5
)0
*1
+2"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
@
�0
�1
�2
�3"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
0
�0
�1"
trackable_list_wrapper
5
00
11
22"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
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
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
@
�0
�1
�2
�3"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
0
�0
�1"
trackable_list_wrapper
5
;0
<1
=2"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
@
�0
�1
�2
�3"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
0
�0
�1"
trackable_list_wrapper
5
B0
C1
D2"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
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
.
^0
_1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
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
R

�total

�count
�	variables
�	keras_api"
_tf_keras_metric
c

�total

�count
�
_fn_kwargs
�	variables
�	keras_api"
_tf_keras_metric
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
.
{0
|1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
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
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
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
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
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
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
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
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
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
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
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
:  (2total
:  (2count
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
':%
�A�2Adam/dense_4/kernel/m
 :�2Adam/dense_4/bias/m
0:.�2#Adam/batch_normalization_25/gamma/m
/:-�2"Adam/batch_normalization_25/beta/m
&:$	�
2Adam/dense_5/kernel/m
:
2Adam/dense_5/bias/m
/:-2Adam/conv2d_12/kernel/m
!:2Adam/conv2d_12/bias/m
/:-2#Adam/batch_normalization_19/gamma/m
.:,2"Adam/batch_normalization_19/beta/m
/:-!2Adam/conv2d_13/kernel/m
!:!2Adam/conv2d_13/bias/m
/:-!2#Adam/batch_normalization_20/gamma/m
.:,!2"Adam/batch_normalization_20/beta/m
/:-!72Adam/conv2d_14/kernel/m
!:72Adam/conv2d_14/bias/m
/:-72#Adam/batch_normalization_21/gamma/m
.:,72"Adam/batch_normalization_21/beta/m
/:-7<2Adam/conv2d_15/kernel/m
!:<2Adam/conv2d_15/bias/m
/:-<2#Adam/batch_normalization_22/gamma/m
.:,<2"Adam/batch_normalization_22/beta/m
/:-<x2Adam/conv2d_16/kernel/m
!:x2Adam/conv2d_16/bias/m
/:-x2#Adam/batch_normalization_23/gamma/m
.:,x2"Adam/batch_normalization_23/beta/m
0:.x�2Adam/conv2d_17/kernel/m
": �2Adam/conv2d_17/bias/m
0:.�2#Adam/batch_normalization_24/gamma/m
/:-�2"Adam/batch_normalization_24/beta/m
':%
�A�2Adam/dense_4/kernel/v
 :�2Adam/dense_4/bias/v
0:.�2#Adam/batch_normalization_25/gamma/v
/:-�2"Adam/batch_normalization_25/beta/v
&:$	�
2Adam/dense_5/kernel/v
:
2Adam/dense_5/bias/v
/:-2Adam/conv2d_12/kernel/v
!:2Adam/conv2d_12/bias/v
/:-2#Adam/batch_normalization_19/gamma/v
.:,2"Adam/batch_normalization_19/beta/v
/:-!2Adam/conv2d_13/kernel/v
!:!2Adam/conv2d_13/bias/v
/:-!2#Adam/batch_normalization_20/gamma/v
.:,!2"Adam/batch_normalization_20/beta/v
/:-!72Adam/conv2d_14/kernel/v
!:72Adam/conv2d_14/bias/v
/:-72#Adam/batch_normalization_21/gamma/v
.:,72"Adam/batch_normalization_21/beta/v
/:-7<2Adam/conv2d_15/kernel/v
!:<2Adam/conv2d_15/bias/v
/:-<2#Adam/batch_normalization_22/gamma/v
.:,<2"Adam/batch_normalization_22/beta/v
/:-<x2Adam/conv2d_16/kernel/v
!:x2Adam/conv2d_16/bias/v
/:-x2#Adam/batch_normalization_23/gamma/v
.:,x2"Adam/batch_normalization_23/beta/v
0:.x�2Adam/conv2d_17/kernel/v
": �2Adam/conv2d_17/bias/v
0:.�2#Adam/batch_normalization_24/gamma/v
/:-�2"Adam/batch_normalization_24/beta/v
�2�
-__inference_sequential_14_layer_call_fn_67630
-__inference_sequential_14_layer_call_fn_68556
-__inference_sequential_14_layer_call_fn_68649
-__inference_sequential_14_layer_call_fn_68146�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
H__inference_sequential_14_layer_call_and_return_conditional_losses_68816
H__inference_sequential_14_layer_call_and_return_conditional_losses_69025
H__inference_sequential_14_layer_call_and_return_conditional_losses_68254
H__inference_sequential_14_layer_call_and_return_conditional_losses_68362�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
 __inference__wrapped_model_65438sequential_15_input"�
���
FullArgSpec
args� 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
-__inference_sequential_15_layer_call_fn_65575
-__inference_sequential_15_layer_call_fn_69042
-__inference_sequential_15_layer_call_fn_69059
-__inference_sequential_15_layer_call_fn_65705�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
H__inference_sequential_15_layer_call_and_return_conditional_losses_69084
H__inference_sequential_15_layer_call_and_return_conditional_losses_69109
H__inference_sequential_15_layer_call_and_return_conditional_losses_65724
H__inference_sequential_15_layer_call_and_return_conditional_losses_65743�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
-__inference_sequential_16_layer_call_fn_65880
-__inference_sequential_16_layer_call_fn_69126
-__inference_sequential_16_layer_call_fn_69143
-__inference_sequential_16_layer_call_fn_66010�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
H__inference_sequential_16_layer_call_and_return_conditional_losses_69168
H__inference_sequential_16_layer_call_and_return_conditional_losses_69193
H__inference_sequential_16_layer_call_and_return_conditional_losses_66029
H__inference_sequential_16_layer_call_and_return_conditional_losses_66048�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
)__inference_dropout_8_layer_call_fn_69198
)__inference_dropout_8_layer_call_fn_69203�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
D__inference_dropout_8_layer_call_and_return_conditional_losses_69208
D__inference_dropout_8_layer_call_and_return_conditional_losses_69220�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
-__inference_sequential_17_layer_call_fn_66185
-__inference_sequential_17_layer_call_fn_69237
-__inference_sequential_17_layer_call_fn_69254
-__inference_sequential_17_layer_call_fn_66315�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
H__inference_sequential_17_layer_call_and_return_conditional_losses_69279
H__inference_sequential_17_layer_call_and_return_conditional_losses_69304
H__inference_sequential_17_layer_call_and_return_conditional_losses_66334
H__inference_sequential_17_layer_call_and_return_conditional_losses_66353�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
-__inference_sequential_18_layer_call_fn_66490
-__inference_sequential_18_layer_call_fn_69321
-__inference_sequential_18_layer_call_fn_69338
-__inference_sequential_18_layer_call_fn_66620�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
H__inference_sequential_18_layer_call_and_return_conditional_losses_69363
H__inference_sequential_18_layer_call_and_return_conditional_losses_69388
H__inference_sequential_18_layer_call_and_return_conditional_losses_66639
H__inference_sequential_18_layer_call_and_return_conditional_losses_66658�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
)__inference_dropout_9_layer_call_fn_69393
)__inference_dropout_9_layer_call_fn_69398�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
D__inference_dropout_9_layer_call_and_return_conditional_losses_69403
D__inference_dropout_9_layer_call_and_return_conditional_losses_69415�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
-__inference_sequential_19_layer_call_fn_66795
-__inference_sequential_19_layer_call_fn_69432
-__inference_sequential_19_layer_call_fn_69449
-__inference_sequential_19_layer_call_fn_66925�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
H__inference_sequential_19_layer_call_and_return_conditional_losses_69474
H__inference_sequential_19_layer_call_and_return_conditional_losses_69499
H__inference_sequential_19_layer_call_and_return_conditional_losses_66944
H__inference_sequential_19_layer_call_and_return_conditional_losses_66963�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
-__inference_sequential_20_layer_call_fn_67100
-__inference_sequential_20_layer_call_fn_69516
-__inference_sequential_20_layer_call_fn_69533
-__inference_sequential_20_layer_call_fn_67230�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
H__inference_sequential_20_layer_call_and_return_conditional_losses_69558
H__inference_sequential_20_layer_call_and_return_conditional_losses_69583
H__inference_sequential_20_layer_call_and_return_conditional_losses_67249
H__inference_sequential_20_layer_call_and_return_conditional_losses_67268�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
/__inference_max_pooling2d_2_layer_call_fn_69588
/__inference_max_pooling2d_2_layer_call_fn_69593�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_69598
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_69603�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
*__inference_dropout_10_layer_call_fn_69608
*__inference_dropout_10_layer_call_fn_69613�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
E__inference_dropout_10_layer_call_and_return_conditional_losses_69618
E__inference_dropout_10_layer_call_and_return_conditional_losses_69630�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
)__inference_flatten_2_layer_call_fn_69635�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
D__inference_flatten_2_layer_call_and_return_conditional_losses_69641�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
'__inference_dense_4_layer_call_fn_69650�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
B__inference_dense_4_layer_call_and_return_conditional_losses_69660�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
6__inference_batch_normalization_25_layer_call_fn_69673
6__inference_batch_normalization_25_layer_call_fn_69686�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
Q__inference_batch_normalization_25_layer_call_and_return_conditional_losses_69706
Q__inference_batch_normalization_25_layer_call_and_return_conditional_losses_69740�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
(__inference_re_lu_25_layer_call_fn_69745�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
C__inference_re_lu_25_layer_call_and_return_conditional_losses_69750�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
*__inference_dropout_11_layer_call_fn_69755
*__inference_dropout_11_layer_call_fn_69760�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
E__inference_dropout_11_layer_call_and_return_conditional_losses_69765
E__inference_dropout_11_layer_call_and_return_conditional_losses_69777�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
'__inference_dense_5_layer_call_fn_69786�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
B__inference_dense_5_layer_call_and_return_conditional_losses_69797�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
#__inference_signature_wrapper_68463sequential_15_input"�
���
FullArgSpec
args� 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
)__inference_conv2d_12_layer_call_fn_69806�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
D__inference_conv2d_12_layer_call_and_return_conditional_losses_69816�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
6__inference_batch_normalization_19_layer_call_fn_69829
6__inference_batch_normalization_19_layer_call_fn_69842
6__inference_batch_normalization_19_layer_call_fn_69855
6__inference_batch_normalization_19_layer_call_fn_69868�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
Q__inference_batch_normalization_19_layer_call_and_return_conditional_losses_69886
Q__inference_batch_normalization_19_layer_call_and_return_conditional_losses_69904
Q__inference_batch_normalization_19_layer_call_and_return_conditional_losses_69922
Q__inference_batch_normalization_19_layer_call_and_return_conditional_losses_69940�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
(__inference_re_lu_19_layer_call_fn_69945�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
C__inference_re_lu_19_layer_call_and_return_conditional_losses_69950�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
)__inference_conv2d_13_layer_call_fn_69959�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
D__inference_conv2d_13_layer_call_and_return_conditional_losses_69969�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
6__inference_batch_normalization_20_layer_call_fn_69982
6__inference_batch_normalization_20_layer_call_fn_69995
6__inference_batch_normalization_20_layer_call_fn_70008
6__inference_batch_normalization_20_layer_call_fn_70021�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
Q__inference_batch_normalization_20_layer_call_and_return_conditional_losses_70039
Q__inference_batch_normalization_20_layer_call_and_return_conditional_losses_70057
Q__inference_batch_normalization_20_layer_call_and_return_conditional_losses_70075
Q__inference_batch_normalization_20_layer_call_and_return_conditional_losses_70093�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
(__inference_re_lu_20_layer_call_fn_70098�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
C__inference_re_lu_20_layer_call_and_return_conditional_losses_70103�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
)__inference_conv2d_14_layer_call_fn_70112�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
D__inference_conv2d_14_layer_call_and_return_conditional_losses_70122�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
6__inference_batch_normalization_21_layer_call_fn_70135
6__inference_batch_normalization_21_layer_call_fn_70148
6__inference_batch_normalization_21_layer_call_fn_70161
6__inference_batch_normalization_21_layer_call_fn_70174�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
Q__inference_batch_normalization_21_layer_call_and_return_conditional_losses_70192
Q__inference_batch_normalization_21_layer_call_and_return_conditional_losses_70210
Q__inference_batch_normalization_21_layer_call_and_return_conditional_losses_70228
Q__inference_batch_normalization_21_layer_call_and_return_conditional_losses_70246�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
(__inference_re_lu_21_layer_call_fn_70251�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
C__inference_re_lu_21_layer_call_and_return_conditional_losses_70256�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
)__inference_conv2d_15_layer_call_fn_70265�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
D__inference_conv2d_15_layer_call_and_return_conditional_losses_70275�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
6__inference_batch_normalization_22_layer_call_fn_70288
6__inference_batch_normalization_22_layer_call_fn_70301
6__inference_batch_normalization_22_layer_call_fn_70314
6__inference_batch_normalization_22_layer_call_fn_70327�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
Q__inference_batch_normalization_22_layer_call_and_return_conditional_losses_70345
Q__inference_batch_normalization_22_layer_call_and_return_conditional_losses_70363
Q__inference_batch_normalization_22_layer_call_and_return_conditional_losses_70381
Q__inference_batch_normalization_22_layer_call_and_return_conditional_losses_70399�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
(__inference_re_lu_22_layer_call_fn_70404�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
C__inference_re_lu_22_layer_call_and_return_conditional_losses_70409�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
)__inference_conv2d_16_layer_call_fn_70418�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
D__inference_conv2d_16_layer_call_and_return_conditional_losses_70428�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
6__inference_batch_normalization_23_layer_call_fn_70441
6__inference_batch_normalization_23_layer_call_fn_70454
6__inference_batch_normalization_23_layer_call_fn_70467
6__inference_batch_normalization_23_layer_call_fn_70480�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
Q__inference_batch_normalization_23_layer_call_and_return_conditional_losses_70498
Q__inference_batch_normalization_23_layer_call_and_return_conditional_losses_70516
Q__inference_batch_normalization_23_layer_call_and_return_conditional_losses_70534
Q__inference_batch_normalization_23_layer_call_and_return_conditional_losses_70552�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
(__inference_re_lu_23_layer_call_fn_70557�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
C__inference_re_lu_23_layer_call_and_return_conditional_losses_70562�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
)__inference_conv2d_17_layer_call_fn_70571�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
D__inference_conv2d_17_layer_call_and_return_conditional_losses_70581�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
6__inference_batch_normalization_24_layer_call_fn_70594
6__inference_batch_normalization_24_layer_call_fn_70607
6__inference_batch_normalization_24_layer_call_fn_70620
6__inference_batch_normalization_24_layer_call_fn_70633�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
Q__inference_batch_normalization_24_layer_call_and_return_conditional_losses_70651
Q__inference_batch_normalization_24_layer_call_and_return_conditional_losses_70669
Q__inference_batch_normalization_24_layer_call_and_return_conditional_losses_70687
Q__inference_batch_normalization_24_layer_call_and_return_conditional_losses_70705�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
(__inference_re_lu_24_layer_call_fn_70710�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
C__inference_re_lu_24_layer_call_and_return_conditional_losses_70715�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 �
 __inference__wrapped_model_65438�Gwxyz{|}~���������������������������UV_\^]lmD�A
:�7
5�2
sequential_15_input���������  
� "1�.
,
dense_5!�
dense_5���������
�
Q__inference_batch_normalization_19_layer_call_and_return_conditional_losses_69886�yz{|M�J
C�@
:�7
inputs+���������������������������
p 
� "?�<
5�2
0+���������������������������
� �
Q__inference_batch_normalization_19_layer_call_and_return_conditional_losses_69904�yz{|M�J
C�@
:�7
inputs+���������������������������
p
� "?�<
5�2
0+���������������������������
� �
Q__inference_batch_normalization_19_layer_call_and_return_conditional_losses_69922ryz{|;�8
1�.
(�%
inputs���������  
p 
� "-�*
#� 
0���������  
� �
Q__inference_batch_normalization_19_layer_call_and_return_conditional_losses_69940ryz{|;�8
1�.
(�%
inputs���������  
p
� "-�*
#� 
0���������  
� �
6__inference_batch_normalization_19_layer_call_fn_69829�yz{|M�J
C�@
:�7
inputs+���������������������������
p 
� "2�/+����������������������������
6__inference_batch_normalization_19_layer_call_fn_69842�yz{|M�J
C�@
:�7
inputs+���������������������������
p
� "2�/+����������������������������
6__inference_batch_normalization_19_layer_call_fn_69855eyz{|;�8
1�.
(�%
inputs���������  
p 
� " ����������  �
6__inference_batch_normalization_19_layer_call_fn_69868eyz{|;�8
1�.
(�%
inputs���������  
p
� " ����������  �
Q__inference_batch_normalization_20_layer_call_and_return_conditional_losses_70039����M�J
C�@
:�7
inputs+���������������������������!
p 
� "?�<
5�2
0+���������������������������!
� �
Q__inference_batch_normalization_20_layer_call_and_return_conditional_losses_70057����M�J
C�@
:�7
inputs+���������������������������!
p
� "?�<
5�2
0+���������������������������!
� �
Q__inference_batch_normalization_20_layer_call_and_return_conditional_losses_70075u���;�8
1�.
(�%
inputs���������!
p 
� "-�*
#� 
0���������!
� �
Q__inference_batch_normalization_20_layer_call_and_return_conditional_losses_70093u���;�8
1�.
(�%
inputs���������!
p
� "-�*
#� 
0���������!
� �
6__inference_batch_normalization_20_layer_call_fn_69982����M�J
C�@
:�7
inputs+���������������������������!
p 
� "2�/+���������������������������!�
6__inference_batch_normalization_20_layer_call_fn_69995����M�J
C�@
:�7
inputs+���������������������������!
p
� "2�/+���������������������������!�
6__inference_batch_normalization_20_layer_call_fn_70008h���;�8
1�.
(�%
inputs���������!
p 
� " ����������!�
6__inference_batch_normalization_20_layer_call_fn_70021h���;�8
1�.
(�%
inputs���������!
p
� " ����������!�
Q__inference_batch_normalization_21_layer_call_and_return_conditional_losses_70192�����M�J
C�@
:�7
inputs+���������������������������7
p 
� "?�<
5�2
0+���������������������������7
� �
Q__inference_batch_normalization_21_layer_call_and_return_conditional_losses_70210�����M�J
C�@
:�7
inputs+���������������������������7
p
� "?�<
5�2
0+���������������������������7
� �
Q__inference_batch_normalization_21_layer_call_and_return_conditional_losses_70228v����;�8
1�.
(�%
inputs���������7
p 
� "-�*
#� 
0���������7
� �
Q__inference_batch_normalization_21_layer_call_and_return_conditional_losses_70246v����;�8
1�.
(�%
inputs���������7
p
� "-�*
#� 
0���������7
� �
6__inference_batch_normalization_21_layer_call_fn_70135�����M�J
C�@
:�7
inputs+���������������������������7
p 
� "2�/+���������������������������7�
6__inference_batch_normalization_21_layer_call_fn_70148�����M�J
C�@
:�7
inputs+���������������������������7
p
� "2�/+���������������������������7�
6__inference_batch_normalization_21_layer_call_fn_70161i����;�8
1�.
(�%
inputs���������7
p 
� " ����������7�
6__inference_batch_normalization_21_layer_call_fn_70174i����;�8
1�.
(�%
inputs���������7
p
� " ����������7�
Q__inference_batch_normalization_22_layer_call_and_return_conditional_losses_70345�����M�J
C�@
:�7
inputs+���������������������������<
p 
� "?�<
5�2
0+���������������������������<
� �
Q__inference_batch_normalization_22_layer_call_and_return_conditional_losses_70363�����M�J
C�@
:�7
inputs+���������������������������<
p
� "?�<
5�2
0+���������������������������<
� �
Q__inference_batch_normalization_22_layer_call_and_return_conditional_losses_70381v����;�8
1�.
(�%
inputs���������<
p 
� "-�*
#� 
0���������<
� �
Q__inference_batch_normalization_22_layer_call_and_return_conditional_losses_70399v����;�8
1�.
(�%
inputs���������<
p
� "-�*
#� 
0���������<
� �
6__inference_batch_normalization_22_layer_call_fn_70288�����M�J
C�@
:�7
inputs+���������������������������<
p 
� "2�/+���������������������������<�
6__inference_batch_normalization_22_layer_call_fn_70301�����M�J
C�@
:�7
inputs+���������������������������<
p
� "2�/+���������������������������<�
6__inference_batch_normalization_22_layer_call_fn_70314i����;�8
1�.
(�%
inputs���������<
p 
� " ����������<�
6__inference_batch_normalization_22_layer_call_fn_70327i����;�8
1�.
(�%
inputs���������<
p
� " ����������<�
Q__inference_batch_normalization_23_layer_call_and_return_conditional_losses_70498�����M�J
C�@
:�7
inputs+���������������������������x
p 
� "?�<
5�2
0+���������������������������x
� �
Q__inference_batch_normalization_23_layer_call_and_return_conditional_losses_70516�����M�J
C�@
:�7
inputs+���������������������������x
p
� "?�<
5�2
0+���������������������������x
� �
Q__inference_batch_normalization_23_layer_call_and_return_conditional_losses_70534v����;�8
1�.
(�%
inputs���������x
p 
� "-�*
#� 
0���������x
� �
Q__inference_batch_normalization_23_layer_call_and_return_conditional_losses_70552v����;�8
1�.
(�%
inputs���������x
p
� "-�*
#� 
0���������x
� �
6__inference_batch_normalization_23_layer_call_fn_70441�����M�J
C�@
:�7
inputs+���������������������������x
p 
� "2�/+���������������������������x�
6__inference_batch_normalization_23_layer_call_fn_70454�����M�J
C�@
:�7
inputs+���������������������������x
p
� "2�/+���������������������������x�
6__inference_batch_normalization_23_layer_call_fn_70467i����;�8
1�.
(�%
inputs���������x
p 
� " ����������x�
6__inference_batch_normalization_23_layer_call_fn_70480i����;�8
1�.
(�%
inputs���������x
p
� " ����������x�
Q__inference_batch_normalization_24_layer_call_and_return_conditional_losses_70651�����N�K
D�A
;�8
inputs,����������������������������
p 
� "@�=
6�3
0,����������������������������
� �
Q__inference_batch_normalization_24_layer_call_and_return_conditional_losses_70669�����N�K
D�A
;�8
inputs,����������������������������
p
� "@�=
6�3
0,����������������������������
� �
Q__inference_batch_normalization_24_layer_call_and_return_conditional_losses_70687x����<�9
2�/
)�&
inputs����������
p 
� ".�+
$�!
0����������
� �
Q__inference_batch_normalization_24_layer_call_and_return_conditional_losses_70705x����<�9
2�/
)�&
inputs����������
p
� ".�+
$�!
0����������
� �
6__inference_batch_normalization_24_layer_call_fn_70594�����N�K
D�A
;�8
inputs,����������������������������
p 
� "3�0,�����������������������������
6__inference_batch_normalization_24_layer_call_fn_70607�����N�K
D�A
;�8
inputs,����������������������������
p
� "3�0,�����������������������������
6__inference_batch_normalization_24_layer_call_fn_70620k����<�9
2�/
)�&
inputs����������
p 
� "!������������
6__inference_batch_normalization_24_layer_call_fn_70633k����<�9
2�/
)�&
inputs����������
p
� "!������������
Q__inference_batch_normalization_25_layer_call_and_return_conditional_losses_69706d_\^]4�1
*�'
!�
inputs����������
p 
� "&�#
�
0����������
� �
Q__inference_batch_normalization_25_layer_call_and_return_conditional_losses_69740d^_\]4�1
*�'
!�
inputs����������
p
� "&�#
�
0����������
� �
6__inference_batch_normalization_25_layer_call_fn_69673W_\^]4�1
*�'
!�
inputs����������
p 
� "������������
6__inference_batch_normalization_25_layer_call_fn_69686W^_\]4�1
*�'
!�
inputs����������
p
� "������������
D__inference_conv2d_12_layer_call_and_return_conditional_losses_69816lwx7�4
-�*
(�%
inputs���������  
� "-�*
#� 
0���������  
� �
)__inference_conv2d_12_layer_call_fn_69806_wx7�4
-�*
(�%
inputs���������  
� " ����������  �
D__inference_conv2d_13_layer_call_and_return_conditional_losses_69969l}~7�4
-�*
(�%
inputs���������  
� "-�*
#� 
0���������!
� �
)__inference_conv2d_13_layer_call_fn_69959_}~7�4
-�*
(�%
inputs���������  
� " ����������!�
D__inference_conv2d_14_layer_call_and_return_conditional_losses_70122n��7�4
-�*
(�%
inputs���������!
� "-�*
#� 
0���������7
� �
)__inference_conv2d_14_layer_call_fn_70112a��7�4
-�*
(�%
inputs���������!
� " ����������7�
D__inference_conv2d_15_layer_call_and_return_conditional_losses_70275n��7�4
-�*
(�%
inputs���������7
� "-�*
#� 
0���������<
� �
)__inference_conv2d_15_layer_call_fn_70265a��7�4
-�*
(�%
inputs���������7
� " ����������<�
D__inference_conv2d_16_layer_call_and_return_conditional_losses_70428n��7�4
-�*
(�%
inputs���������<
� "-�*
#� 
0���������x
� �
)__inference_conv2d_16_layer_call_fn_70418a��7�4
-�*
(�%
inputs���������<
� " ����������x�
D__inference_conv2d_17_layer_call_and_return_conditional_losses_70581o��7�4
-�*
(�%
inputs���������x
� ".�+
$�!
0����������
� �
)__inference_conv2d_17_layer_call_fn_70571b��7�4
-�*
(�%
inputs���������x
� "!������������
B__inference_dense_4_layer_call_and_return_conditional_losses_69660^UV0�-
&�#
!�
inputs����������A
� "&�#
�
0����������
� |
'__inference_dense_4_layer_call_fn_69650QUV0�-
&�#
!�
inputs����������A
� "������������
B__inference_dense_5_layer_call_and_return_conditional_losses_69797]lm0�-
&�#
!�
inputs����������
� "%�"
�
0���������

� {
'__inference_dense_5_layer_call_fn_69786Plm0�-
&�#
!�
inputs����������
� "����������
�
E__inference_dropout_10_layer_call_and_return_conditional_losses_69618n<�9
2�/
)�&
inputs����������
p 
� ".�+
$�!
0����������
� �
E__inference_dropout_10_layer_call_and_return_conditional_losses_69630n<�9
2�/
)�&
inputs����������
p
� ".�+
$�!
0����������
� �
*__inference_dropout_10_layer_call_fn_69608a<�9
2�/
)�&
inputs����������
p 
� "!������������
*__inference_dropout_10_layer_call_fn_69613a<�9
2�/
)�&
inputs����������
p
� "!������������
E__inference_dropout_11_layer_call_and_return_conditional_losses_69765^4�1
*�'
!�
inputs����������
p 
� "&�#
�
0����������
� �
E__inference_dropout_11_layer_call_and_return_conditional_losses_69777^4�1
*�'
!�
inputs����������
p
� "&�#
�
0����������
� 
*__inference_dropout_11_layer_call_fn_69755Q4�1
*�'
!�
inputs����������
p 
� "�����������
*__inference_dropout_11_layer_call_fn_69760Q4�1
*�'
!�
inputs����������
p
� "������������
D__inference_dropout_8_layer_call_and_return_conditional_losses_69208l;�8
1�.
(�%
inputs���������!
p 
� "-�*
#� 
0���������!
� �
D__inference_dropout_8_layer_call_and_return_conditional_losses_69220l;�8
1�.
(�%
inputs���������!
p
� "-�*
#� 
0���������!
� �
)__inference_dropout_8_layer_call_fn_69198_;�8
1�.
(�%
inputs���������!
p 
� " ����������!�
)__inference_dropout_8_layer_call_fn_69203_;�8
1�.
(�%
inputs���������!
p
� " ����������!�
D__inference_dropout_9_layer_call_and_return_conditional_losses_69403l;�8
1�.
(�%
inputs���������<
p 
� "-�*
#� 
0���������<
� �
D__inference_dropout_9_layer_call_and_return_conditional_losses_69415l;�8
1�.
(�%
inputs���������<
p
� "-�*
#� 
0���������<
� �
)__inference_dropout_9_layer_call_fn_69393_;�8
1�.
(�%
inputs���������<
p 
� " ����������<�
)__inference_dropout_9_layer_call_fn_69398_;�8
1�.
(�%
inputs���������<
p
� " ����������<�
D__inference_flatten_2_layer_call_and_return_conditional_losses_69641b8�5
.�+
)�&
inputs����������
� "&�#
�
0����������A
� �
)__inference_flatten_2_layer_call_fn_69635U8�5
.�+
)�&
inputs����������
� "�����������A�
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_69598�R�O
H�E
C�@
inputs4������������������������������������
� "H�E
>�;
04������������������������������������
� �
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_69603j8�5
.�+
)�&
inputs����������
� ".�+
$�!
0����������
� �
/__inference_max_pooling2d_2_layer_call_fn_69588�R�O
H�E
C�@
inputs4������������������������������������
� ";�84�������������������������������������
/__inference_max_pooling2d_2_layer_call_fn_69593]8�5
.�+
)�&
inputs����������
� "!������������
C__inference_re_lu_19_layer_call_and_return_conditional_losses_69950h7�4
-�*
(�%
inputs���������  
� "-�*
#� 
0���������  
� �
(__inference_re_lu_19_layer_call_fn_69945[7�4
-�*
(�%
inputs���������  
� " ����������  �
C__inference_re_lu_20_layer_call_and_return_conditional_losses_70103h7�4
-�*
(�%
inputs���������!
� "-�*
#� 
0���������!
� �
(__inference_re_lu_20_layer_call_fn_70098[7�4
-�*
(�%
inputs���������!
� " ����������!�
C__inference_re_lu_21_layer_call_and_return_conditional_losses_70256h7�4
-�*
(�%
inputs���������7
� "-�*
#� 
0���������7
� �
(__inference_re_lu_21_layer_call_fn_70251[7�4
-�*
(�%
inputs���������7
� " ����������7�
C__inference_re_lu_22_layer_call_and_return_conditional_losses_70409h7�4
-�*
(�%
inputs���������<
� "-�*
#� 
0���������<
� �
(__inference_re_lu_22_layer_call_fn_70404[7�4
-�*
(�%
inputs���������<
� " ����������<�
C__inference_re_lu_23_layer_call_and_return_conditional_losses_70562h7�4
-�*
(�%
inputs���������x
� "-�*
#� 
0���������x
� �
(__inference_re_lu_23_layer_call_fn_70557[7�4
-�*
(�%
inputs���������x
� " ����������x�
C__inference_re_lu_24_layer_call_and_return_conditional_losses_70715j8�5
.�+
)�&
inputs����������
� ".�+
$�!
0����������
� �
(__inference_re_lu_24_layer_call_fn_70710]8�5
.�+
)�&
inputs����������
� "!������������
C__inference_re_lu_25_layer_call_and_return_conditional_losses_69750Z0�-
&�#
!�
inputs����������
� "&�#
�
0����������
� y
(__inference_re_lu_25_layer_call_fn_69745M0�-
&�#
!�
inputs����������
� "������������
H__inference_sequential_14_layer_call_and_return_conditional_losses_68254�Gwxyz{|}~���������������������������UV_\^]lmL�I
B�?
5�2
sequential_15_input���������  
p 

 
� "%�"
�
0���������

� �
H__inference_sequential_14_layer_call_and_return_conditional_losses_68362�Gwxyz{|}~���������������������������UV^_\]lmL�I
B�?
5�2
sequential_15_input���������  
p

 
� "%�"
�
0���������

� �
H__inference_sequential_14_layer_call_and_return_conditional_losses_68816�Gwxyz{|}~���������������������������UV_\^]lm?�<
5�2
(�%
inputs���������  
p 

 
� "%�"
�
0���������

� �
H__inference_sequential_14_layer_call_and_return_conditional_losses_69025�Gwxyz{|}~���������������������������UV^_\]lm?�<
5�2
(�%
inputs���������  
p

 
� "%�"
�
0���������

� �
-__inference_sequential_14_layer_call_fn_67630�Gwxyz{|}~���������������������������UV_\^]lmL�I
B�?
5�2
sequential_15_input���������  
p 

 
� "����������
�
-__inference_sequential_14_layer_call_fn_68146�Gwxyz{|}~���������������������������UV^_\]lmL�I
B�?
5�2
sequential_15_input���������  
p

 
� "����������
�
-__inference_sequential_14_layer_call_fn_68556�Gwxyz{|}~���������������������������UV_\^]lm?�<
5�2
(�%
inputs���������  
p 

 
� "����������
�
-__inference_sequential_14_layer_call_fn_68649�Gwxyz{|}~���������������������������UV^_\]lm?�<
5�2
(�%
inputs���������  
p

 
� "����������
�
H__inference_sequential_15_layer_call_and_return_conditional_losses_65724�wxyz{|H�E
>�;
1�.
conv2d_12_input���������  
p 

 
� "-�*
#� 
0���������  
� �
H__inference_sequential_15_layer_call_and_return_conditional_losses_65743�wxyz{|H�E
>�;
1�.
conv2d_12_input���������  
p

 
� "-�*
#� 
0���������  
� �
H__inference_sequential_15_layer_call_and_return_conditional_losses_69084xwxyz{|?�<
5�2
(�%
inputs���������  
p 

 
� "-�*
#� 
0���������  
� �
H__inference_sequential_15_layer_call_and_return_conditional_losses_69109xwxyz{|?�<
5�2
(�%
inputs���������  
p

 
� "-�*
#� 
0���������  
� �
-__inference_sequential_15_layer_call_fn_65575twxyz{|H�E
>�;
1�.
conv2d_12_input���������  
p 

 
� " ����������  �
-__inference_sequential_15_layer_call_fn_65705twxyz{|H�E
>�;
1�.
conv2d_12_input���������  
p

 
� " ����������  �
-__inference_sequential_15_layer_call_fn_69042kwxyz{|?�<
5�2
(�%
inputs���������  
p 

 
� " ����������  �
-__inference_sequential_15_layer_call_fn_69059kwxyz{|?�<
5�2
(�%
inputs���������  
p

 
� " ����������  �
H__inference_sequential_16_layer_call_and_return_conditional_losses_66029�	}~���H�E
>�;
1�.
conv2d_13_input���������  
p 

 
� "-�*
#� 
0���������!
� �
H__inference_sequential_16_layer_call_and_return_conditional_losses_66048�	}~���H�E
>�;
1�.
conv2d_13_input���������  
p

 
� "-�*
#� 
0���������!
� �
H__inference_sequential_16_layer_call_and_return_conditional_losses_69168{	}~���?�<
5�2
(�%
inputs���������  
p 

 
� "-�*
#� 
0���������!
� �
H__inference_sequential_16_layer_call_and_return_conditional_losses_69193{	}~���?�<
5�2
(�%
inputs���������  
p

 
� "-�*
#� 
0���������!
� �
-__inference_sequential_16_layer_call_fn_65880w	}~���H�E
>�;
1�.
conv2d_13_input���������  
p 

 
� " ����������!�
-__inference_sequential_16_layer_call_fn_66010w	}~���H�E
>�;
1�.
conv2d_13_input���������  
p

 
� " ����������!�
-__inference_sequential_16_layer_call_fn_69126n	}~���?�<
5�2
(�%
inputs���������  
p 

 
� " ����������!�
-__inference_sequential_16_layer_call_fn_69143n	}~���?�<
5�2
(�%
inputs���������  
p

 
� " ����������!�
H__inference_sequential_17_layer_call_and_return_conditional_losses_66334�������H�E
>�;
1�.
conv2d_14_input���������!
p 

 
� "-�*
#� 
0���������7
� �
H__inference_sequential_17_layer_call_and_return_conditional_losses_66353�������H�E
>�;
1�.
conv2d_14_input���������!
p

 
� "-�*
#� 
0���������7
� �
H__inference_sequential_17_layer_call_and_return_conditional_losses_69279~������?�<
5�2
(�%
inputs���������!
p 

 
� "-�*
#� 
0���������7
� �
H__inference_sequential_17_layer_call_and_return_conditional_losses_69304~������?�<
5�2
(�%
inputs���������!
p

 
� "-�*
#� 
0���������7
� �
-__inference_sequential_17_layer_call_fn_66185z������H�E
>�;
1�.
conv2d_14_input���������!
p 

 
� " ����������7�
-__inference_sequential_17_layer_call_fn_66315z������H�E
>�;
1�.
conv2d_14_input���������!
p

 
� " ����������7�
-__inference_sequential_17_layer_call_fn_69237q������?�<
5�2
(�%
inputs���������!
p 

 
� " ����������7�
-__inference_sequential_17_layer_call_fn_69254q������?�<
5�2
(�%
inputs���������!
p

 
� " ����������7�
H__inference_sequential_18_layer_call_and_return_conditional_losses_66639�������H�E
>�;
1�.
conv2d_15_input���������7
p 

 
� "-�*
#� 
0���������<
� �
H__inference_sequential_18_layer_call_and_return_conditional_losses_66658�������H�E
>�;
1�.
conv2d_15_input���������7
p

 
� "-�*
#� 
0���������<
� �
H__inference_sequential_18_layer_call_and_return_conditional_losses_69363~������?�<
5�2
(�%
inputs���������7
p 

 
� "-�*
#� 
0���������<
� �
H__inference_sequential_18_layer_call_and_return_conditional_losses_69388~������?�<
5�2
(�%
inputs���������7
p

 
� "-�*
#� 
0���������<
� �
-__inference_sequential_18_layer_call_fn_66490z������H�E
>�;
1�.
conv2d_15_input���������7
p 

 
� " ����������<�
-__inference_sequential_18_layer_call_fn_66620z������H�E
>�;
1�.
conv2d_15_input���������7
p

 
� " ����������<�
-__inference_sequential_18_layer_call_fn_69321q������?�<
5�2
(�%
inputs���������7
p 

 
� " ����������<�
-__inference_sequential_18_layer_call_fn_69338q������?�<
5�2
(�%
inputs���������7
p

 
� " ����������<�
H__inference_sequential_19_layer_call_and_return_conditional_losses_66944�������H�E
>�;
1�.
conv2d_16_input���������<
p 

 
� "-�*
#� 
0���������x
� �
H__inference_sequential_19_layer_call_and_return_conditional_losses_66963�������H�E
>�;
1�.
conv2d_16_input���������<
p

 
� "-�*
#� 
0���������x
� �
H__inference_sequential_19_layer_call_and_return_conditional_losses_69474~������?�<
5�2
(�%
inputs���������<
p 

 
� "-�*
#� 
0���������x
� �
H__inference_sequential_19_layer_call_and_return_conditional_losses_69499~������?�<
5�2
(�%
inputs���������<
p

 
� "-�*
#� 
0���������x
� �
-__inference_sequential_19_layer_call_fn_66795z������H�E
>�;
1�.
conv2d_16_input���������<
p 

 
� " ����������x�
-__inference_sequential_19_layer_call_fn_66925z������H�E
>�;
1�.
conv2d_16_input���������<
p

 
� " ����������x�
-__inference_sequential_19_layer_call_fn_69432q������?�<
5�2
(�%
inputs���������<
p 

 
� " ����������x�
-__inference_sequential_19_layer_call_fn_69449q������?�<
5�2
(�%
inputs���������<
p

 
� " ����������x�
H__inference_sequential_20_layer_call_and_return_conditional_losses_67249�������H�E
>�;
1�.
conv2d_17_input���������x
p 

 
� ".�+
$�!
0����������
� �
H__inference_sequential_20_layer_call_and_return_conditional_losses_67268�������H�E
>�;
1�.
conv2d_17_input���������x
p

 
� ".�+
$�!
0����������
� �
H__inference_sequential_20_layer_call_and_return_conditional_losses_69558������?�<
5�2
(�%
inputs���������x
p 

 
� ".�+
$�!
0����������
� �
H__inference_sequential_20_layer_call_and_return_conditional_losses_69583������?�<
5�2
(�%
inputs���������x
p

 
� ".�+
$�!
0����������
� �
-__inference_sequential_20_layer_call_fn_67100{������H�E
>�;
1�.
conv2d_17_input���������x
p 

 
� "!������������
-__inference_sequential_20_layer_call_fn_67230{������H�E
>�;
1�.
conv2d_17_input���������x
p

 
� "!������������
-__inference_sequential_20_layer_call_fn_69516r������?�<
5�2
(�%
inputs���������x
p 

 
� "!������������
-__inference_sequential_20_layer_call_fn_69533r������?�<
5�2
(�%
inputs���������x
p

 
� "!������������
#__inference_signature_wrapper_68463�Gwxyz{|}~���������������������������UV_\^]lm[�X
� 
Q�N
L
sequential_15_input5�2
sequential_15_input���������  "1�.
,
dense_5!�
dense_5���������
