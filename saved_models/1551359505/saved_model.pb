ł
ő

:
Add
x"T
y"T
z"T"
Ttype:
2	
B
AssignVariableOp
resource
value"dtype"
dtypetype
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
.
Identity

input"T
output"T"	
Ttype
p
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
	2
=
Mul
x"T
y"T
z"T"
Ttype:
2	

NoOp
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
~
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	
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
9
Softmax
logits"T
softmax"T"
Ttype:
2
:
Sub
x"T
y"T
z"T"
Ttype:
2	
q
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape
9
VarIsInitializedOp
resource
is_initialized
"serve*1.12.02v1.12.0-0-ga6d8ffae09°
s
dense_14_inputPlaceholder*
shape:˙˙˙˙˙˙˙˙˙*
dtype0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ľ
0dense_14/kernel/Initializer/random_uniform/shapeConst*"
_class
loc:@dense_14/kernel*
valueB"     *
dtype0*
_output_shapes
:

.dense_14/kernel/Initializer/random_uniform/minConst*"
_class
loc:@dense_14/kernel*
valueB
 *HY˝*
dtype0*
_output_shapes
: 

.dense_14/kernel/Initializer/random_uniform/maxConst*"
_class
loc:@dense_14/kernel*
valueB
 *HY=*
dtype0*
_output_shapes
: 
đ
8dense_14/kernel/Initializer/random_uniform/RandomUniformRandomUniform0dense_14/kernel/Initializer/random_uniform/shape*
dtype0* 
_output_shapes
:
*

seed *
T0*"
_class
loc:@dense_14/kernel*
seed2 
Ú
.dense_14/kernel/Initializer/random_uniform/subSub.dense_14/kernel/Initializer/random_uniform/max.dense_14/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@dense_14/kernel*
_output_shapes
: 
î
.dense_14/kernel/Initializer/random_uniform/mulMul8dense_14/kernel/Initializer/random_uniform/RandomUniform.dense_14/kernel/Initializer/random_uniform/sub*
T0*"
_class
loc:@dense_14/kernel* 
_output_shapes
:

ŕ
*dense_14/kernel/Initializer/random_uniformAdd.dense_14/kernel/Initializer/random_uniform/mul.dense_14/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@dense_14/kernel* 
_output_shapes
:

ą
dense_14/kernelVarHandleOp* 
shared_namedense_14/kernel*"
_class
loc:@dense_14/kernel*
	container *
shape:
*
dtype0*
_output_shapes
: 
o
0dense_14/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_14/kernel*
_output_shapes
: 

dense_14/kernel/AssignAssignVariableOpdense_14/kernel*dense_14/kernel/Initializer/random_uniform*"
_class
loc:@dense_14/kernel*
dtype0

#dense_14/kernel/Read/ReadVariableOpReadVariableOpdense_14/kernel*"
_class
loc:@dense_14/kernel*
dtype0* 
_output_shapes
:


dense_14/bias/Initializer/zerosConst* 
_class
loc:@dense_14/bias*
valueB*    *
dtype0*
_output_shapes	
:
Ś
dense_14/biasVarHandleOp*
dtype0*
_output_shapes
: *
shared_namedense_14/bias* 
_class
loc:@dense_14/bias*
	container *
shape:
k
.dense_14/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_14/bias*
_output_shapes
: 

dense_14/bias/AssignAssignVariableOpdense_14/biasdense_14/bias/Initializer/zeros* 
_class
loc:@dense_14/bias*
dtype0

!dense_14/bias/Read/ReadVariableOpReadVariableOpdense_14/bias* 
_class
loc:@dense_14/bias*
dtype0*
_output_shapes	
:
p
dense_14/MatMul/ReadVariableOpReadVariableOpdense_14/kernel*
dtype0* 
_output_shapes
:

˘
dense_14/MatMulMatMuldense_14_inputdense_14/MatMul/ReadVariableOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( *
transpose_b( 
j
dense_14/BiasAdd/ReadVariableOpReadVariableOpdense_14/bias*
dtype0*
_output_shapes	
:

dense_14/BiasAddBiasAdddense_14/MatMuldense_14/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Z
dense_14/ReluReludense_14/BiasAdd*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
`
dropout_7/IdentityIdentitydense_14/Relu*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ľ
0dense_15/kernel/Initializer/random_uniform/shapeConst*"
_class
loc:@dense_15/kernel*
valueB"   
   *
dtype0*
_output_shapes
:

.dense_15/kernel/Initializer/random_uniform/minConst*"
_class
loc:@dense_15/kernel*
valueB
 *Ű˝*
dtype0*
_output_shapes
: 

.dense_15/kernel/Initializer/random_uniform/maxConst*"
_class
loc:@dense_15/kernel*
valueB
 *Ű=*
dtype0*
_output_shapes
: 
ď
8dense_15/kernel/Initializer/random_uniform/RandomUniformRandomUniform0dense_15/kernel/Initializer/random_uniform/shape*

seed *
T0*"
_class
loc:@dense_15/kernel*
seed2 *
dtype0*
_output_shapes
:	

Ú
.dense_15/kernel/Initializer/random_uniform/subSub.dense_15/kernel/Initializer/random_uniform/max.dense_15/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@dense_15/kernel*
_output_shapes
: 
í
.dense_15/kernel/Initializer/random_uniform/mulMul8dense_15/kernel/Initializer/random_uniform/RandomUniform.dense_15/kernel/Initializer/random_uniform/sub*
T0*"
_class
loc:@dense_15/kernel*
_output_shapes
:	

ß
*dense_15/kernel/Initializer/random_uniformAdd.dense_15/kernel/Initializer/random_uniform/mul.dense_15/kernel/Initializer/random_uniform/min*
_output_shapes
:	
*
T0*"
_class
loc:@dense_15/kernel
°
dense_15/kernelVarHandleOp* 
shared_namedense_15/kernel*"
_class
loc:@dense_15/kernel*
	container *
shape:	
*
dtype0*
_output_shapes
: 
o
0dense_15/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_15/kernel*
_output_shapes
: 

dense_15/kernel/AssignAssignVariableOpdense_15/kernel*dense_15/kernel/Initializer/random_uniform*"
_class
loc:@dense_15/kernel*
dtype0

#dense_15/kernel/Read/ReadVariableOpReadVariableOpdense_15/kernel*"
_class
loc:@dense_15/kernel*
dtype0*
_output_shapes
:	


dense_15/bias/Initializer/zerosConst* 
_class
loc:@dense_15/bias*
valueB
*    *
dtype0*
_output_shapes
:

Ľ
dense_15/biasVarHandleOp*
dtype0*
_output_shapes
: *
shared_namedense_15/bias* 
_class
loc:@dense_15/bias*
	container *
shape:

k
.dense_15/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_15/bias*
_output_shapes
: 

dense_15/bias/AssignAssignVariableOpdense_15/biasdense_15/bias/Initializer/zeros* 
_class
loc:@dense_15/bias*
dtype0

!dense_15/bias/Read/ReadVariableOpReadVariableOpdense_15/bias* 
_class
loc:@dense_15/bias*
dtype0*
_output_shapes
:

o
dense_15/MatMul/ReadVariableOpReadVariableOpdense_15/kernel*
dtype0*
_output_shapes
:	

Ľ
dense_15/MatMulMatMuldropout_7/Identitydense_15/MatMul/ReadVariableOp*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
transpose_a( *
transpose_b( *
T0
i
dense_15/BiasAdd/ReadVariableOpReadVariableOpdense_15/bias*
dtype0*
_output_shapes
:


dense_15/BiasAddBiasAdddense_15/MatMuldense_15/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

_
dense_15/SoftmaxSoftmaxdense_15/BiasAdd*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
T0
%

group_depsNoOp^dense_15/Softmax
U
ConstConst"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
W
Const_1Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
W
Const_2Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
W
Const_3Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
W
Const_4Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
\
Const_5Const"/device:CPU:0*
valueB Bmodel*
dtype0*
_output_shapes
: 
W
Const_6Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
W
Const_7Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
W
Const_8Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
W
Const_9Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
X
Const_10Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
¤
RestoreV2/tensor_namesConst"/device:CPU:0*K
valueBB@B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
r
RestoreV2/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:

	RestoreV2	RestoreV2Const_5RestoreV2/tensor_namesRestoreV2/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
B
IdentityIdentity	RestoreV2*
T0*
_output_shapes
:
L
AssignVariableOpAssignVariableOpdense_14/kernelIdentity*
dtype0
¤
RestoreV2_1/tensor_namesConst"/device:CPU:0*I
value@B>B4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
t
RestoreV2_1/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:

RestoreV2_1	RestoreV2Const_5RestoreV2_1/tensor_namesRestoreV2_1/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
F

Identity_1IdentityRestoreV2_1*
T0*
_output_shapes
:
N
AssignVariableOp_1AssignVariableOpdense_14/bias
Identity_1*
dtype0
Ś
RestoreV2_2/tensor_namesConst"/device:CPU:0*K
valueBB@B6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
t
RestoreV2_2/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:

RestoreV2_2	RestoreV2Const_5RestoreV2_2/tensor_namesRestoreV2_2/shape_and_slices"/device:CPU:0*
dtypes
2*
_output_shapes
:
F

Identity_2IdentityRestoreV2_2*
T0*
_output_shapes
:
P
AssignVariableOp_2AssignVariableOpdense_15/kernel
Identity_2*
dtype0
¤
RestoreV2_3/tensor_namesConst"/device:CPU:0*I
value@B>B4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
t
RestoreV2_3/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:

RestoreV2_3	RestoreV2Const_5RestoreV2_3/tensor_namesRestoreV2_3/shape_and_slices"/device:CPU:0*
dtypes
2*
_output_shapes
:
F

Identity_3IdentityRestoreV2_3*
T0*
_output_shapes
:
N
AssignVariableOp_3AssignVariableOpdense_15/bias
Identity_3*
dtype0
Q
VarIsInitializedOpVarIsInitializedOpdense_14/kernel*
_output_shapes
: 
Q
VarIsInitializedOp_1VarIsInitializedOpdense_15/bias*
_output_shapes
: 
S
VarIsInitializedOp_2VarIsInitializedOpdense_15/kernel*
_output_shapes
: 
Q
VarIsInitializedOp_3VarIsInitializedOpdense_14/bias*
_output_shapes
: 
l
initNoOp^dense_14/bias/Assign^dense_14/kernel/Assign^dense_15/bias/Assign^dense_15/kernel/Assign
X
Const_11Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
P

save/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
ˇ
save/SaveV2/tensor_namesConst*ę
valueŕBÝ
B/.ATTRIBUTES/OBJECT_CONFIG_JSONB_CHECKPOINTABLE_OBJECT_GRAPHB&layer-0/.ATTRIBUTES/OBJECT_CONFIG_JSONB&layer-2/.ATTRIBUTES/OBJECT_CONFIG_JSONB3layer_with_weights-0/.ATTRIBUTES/OBJECT_CONFIG_JSONB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB3layer_with_weights-1/.ATTRIBUTES/OBJECT_CONFIG_JSONB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:

w
save/SaveV2/shape_and_slicesConst*'
valueB
B B B B B B B B B B *
dtype0*
_output_shapes
:

ť
save/SaveV2SaveV2
save/Constsave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesConst_6Const_11Const_7Const_9Const_8!dense_14/bias/Read/ReadVariableOp#dense_14/kernel/Read/ReadVariableOpConst_10!dense_15/bias/Read/ReadVariableOp#dense_15/kernel/Read/ReadVariableOp*
dtypes
2

}
save/control_dependencyIdentity
save/Const^save/SaveV2*
T0*
_class
loc:@save/Const*
_output_shapes
: 
É
save/RestoreV2/tensor_namesConst"/device:CPU:0*ę
valueŕBÝ
B/.ATTRIBUTES/OBJECT_CONFIG_JSONB_CHECKPOINTABLE_OBJECT_GRAPHB&layer-0/.ATTRIBUTES/OBJECT_CONFIG_JSONB&layer-2/.ATTRIBUTES/OBJECT_CONFIG_JSONB3layer_with_weights-0/.ATTRIBUTES/OBJECT_CONFIG_JSONB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB3layer_with_weights-1/.ATTRIBUTES/OBJECT_CONFIG_JSONB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:


save/RestoreV2/shape_and_slicesConst"/device:CPU:0*'
valueB
B B B B B B B B B B *
dtype0*
_output_shapes
:

Ě
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*<
_output_shapes*
(::::::::::*
dtypes
2


	save/NoOpNoOp

save/NoOp_1NoOp

save/NoOp_2NoOp

save/NoOp_3NoOp

save/NoOp_4NoOp
N
save/IdentityIdentitysave/RestoreV2:5*
T0*
_output_shapes
:
T
save/AssignVariableOpAssignVariableOpdense_14/biassave/Identity*
dtype0
P
save/Identity_1Identitysave/RestoreV2:6*
T0*
_output_shapes
:
Z
save/AssignVariableOp_1AssignVariableOpdense_14/kernelsave/Identity_1*
dtype0

save/NoOp_5NoOp
P
save/Identity_2Identitysave/RestoreV2:8*
T0*
_output_shapes
:
X
save/AssignVariableOp_2AssignVariableOpdense_15/biassave/Identity_2*
dtype0
P
save/Identity_3Identitysave/RestoreV2:9*
T0*
_output_shapes
:
Z
save/AssignVariableOp_3AssignVariableOpdense_15/kernelsave/Identity_3*
dtype0
Đ
save/restore_allNoOp^save/AssignVariableOp^save/AssignVariableOp_1^save/AssignVariableOp_2^save/AssignVariableOp_3
^save/NoOp^save/NoOp_1^save/NoOp_2^save/NoOp_3^save/NoOp_4^save/NoOp_5
R
save_1/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 

save_1/SaveV2/tensor_namesConst*Ě
valueÂBż	B/.ATTRIBUTES/OBJECT_CONFIG_JSONB&layer-0/.ATTRIBUTES/OBJECT_CONFIG_JSONB&layer-2/.ATTRIBUTES/OBJECT_CONFIG_JSONB3layer_with_weights-0/.ATTRIBUTES/OBJECT_CONFIG_JSONB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB3layer_with_weights-1/.ATTRIBUTES/OBJECT_CONFIG_JSONB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:	
w
save_1/SaveV2/shape_and_slicesConst*
dtype0*
_output_shapes
:	*%
valueB	B B B B B B B B B 
˙	
save_1/SaveV2/tensors_0Const*ˇ	
value­	BŞ	 BŁ	{"class_name": "Sequential", "config": {"layers": [{"class_name": "Dense", "config": {"activation": "relu", "activity_regularizer": null, "batch_input_shape": [null, 784], "bias_constraint": null, "bias_initializer": {"class_name": "Zeros", "config": {"dtype": "float32"}}, "bias_regularizer": null, "dtype": "float32", "kernel_constraint": null, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"dtype": "float32", "seed": null}}, "kernel_regularizer": null, "name": "dense_14", "trainable": true, "units": 512, "use_bias": true}}, {"class_name": "Dropout", "config": {"dtype": "float32", "name": "dropout_7", "noise_shape": null, "rate": 0.2, "seed": null, "trainable": true}}, {"class_name": "Dense", "config": {"activation": "softmax", "activity_regularizer": null, "bias_constraint": null, "bias_initializer": {"class_name": "Zeros", "config": {"dtype": "float32"}}, "bias_regularizer": null, "dtype": "float32", "kernel_constraint": null, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"dtype": "float32", "seed": null}}, "kernel_regularizer": null, "name": "dense_15", "trainable": true, "units": 10, "use_bias": true}}], "name": "sequential_7"}}*
dtype0*
_output_shapes
: 
ĺ
save_1/SaveV2/tensors_1Const*
valueB B{"class_name": "InputLayer", "config": {"batch_input_shape": [null, 784], "dtype": "float32", "name": "dense_14_input", "sparse": false}}*
dtype0*
_output_shapes
: 
í
save_1/SaveV2/tensors_2Const*Ľ
valueB B{"class_name": "Dropout", "config": {"dtype": "float32", "name": "dropout_7", "noise_shape": null, "rate": 0.2, "seed": null, "trainable": true}}*
dtype0*
_output_shapes
: 
Ě
save_1/SaveV2/tensors_3Const*
valueúB÷ Bđ{"class_name": "Dense", "config": {"activation": "relu", "activity_regularizer": null, "batch_input_shape": [null, 784], "bias_constraint": null, "bias_initializer": {"class_name": "Zeros", "config": {"dtype": "float32"}}, "bias_regularizer": null, "dtype": "float32", "kernel_constraint": null, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"dtype": "float32", "seed": null}}, "kernel_regularizer": null, "name": "dense_14", "trainable": true, "units": 512, "use_bias": true}}*
dtype0*
_output_shapes
: 
Ź
save_1/SaveV2/tensors_6Const*ä
valueÚB× BĐ{"class_name": "Dense", "config": {"activation": "softmax", "activity_regularizer": null, "bias_constraint": null, "bias_initializer": {"class_name": "Zeros", "config": {"dtype": "float32"}}, "bias_regularizer": null, "dtype": "float32", "kernel_constraint": null, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"dtype": "float32", "seed": null}}, "kernel_regularizer": null, "name": "dense_15", "trainable": true, "units": 10, "use_bias": true}}*
dtype0*
_output_shapes
: 

save_1/SaveV2SaveV2save_1/Constsave_1/SaveV2/tensor_namessave_1/SaveV2/shape_and_slicessave_1/SaveV2/tensors_0save_1/SaveV2/tensors_1save_1/SaveV2/tensors_2save_1/SaveV2/tensors_3!dense_14/bias/Read/ReadVariableOp#dense_14/kernel/Read/ReadVariableOpsave_1/SaveV2/tensors_6!dense_15/bias/Read/ReadVariableOp#dense_15/kernel/Read/ReadVariableOp*
dtypes
2	

save_1/control_dependencyIdentitysave_1/Const^save_1/SaveV2*
T0*
_class
loc:@save_1/Const*
_output_shapes
: 
­
save_1/RestoreV2/tensor_namesConst"/device:CPU:0*Ě
valueÂBż	B/.ATTRIBUTES/OBJECT_CONFIG_JSONB&layer-0/.ATTRIBUTES/OBJECT_CONFIG_JSONB&layer-2/.ATTRIBUTES/OBJECT_CONFIG_JSONB3layer_with_weights-0/.ATTRIBUTES/OBJECT_CONFIG_JSONB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB3layer_with_weights-1/.ATTRIBUTES/OBJECT_CONFIG_JSONB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:	

!save_1/RestoreV2/shape_and_slicesConst"/device:CPU:0*%
valueB	B B B B B B B B B *
dtype0*
_output_shapes
:	
Ď
save_1/RestoreV2	RestoreV2save_1/Constsave_1/RestoreV2/tensor_names!save_1/RestoreV2/shape_and_slices"/device:CPU:0*8
_output_shapes&
$:::::::::*
dtypes
2	

save_1/NoOpNoOp

save_1/NoOp_1NoOp

save_1/NoOp_2NoOp

save_1/NoOp_3NoOp
R
save_1/IdentityIdentitysave_1/RestoreV2:4*
T0*
_output_shapes
:
X
save_1/AssignVariableOpAssignVariableOpdense_14/biassave_1/Identity*
dtype0
T
save_1/Identity_1Identitysave_1/RestoreV2:5*
T0*
_output_shapes
:
^
save_1/AssignVariableOp_1AssignVariableOpdense_14/kernelsave_1/Identity_1*
dtype0

save_1/NoOp_4NoOp
T
save_1/Identity_2Identitysave_1/RestoreV2:7*
T0*
_output_shapes
:
\
save_1/AssignVariableOp_2AssignVariableOpdense_15/biassave_1/Identity_2*
dtype0
T
save_1/Identity_3Identitysave_1/RestoreV2:8*
T0*
_output_shapes
:
^
save_1/AssignVariableOp_3AssignVariableOpdense_15/kernelsave_1/Identity_3*
dtype0
Ö
save_1/restore_allNoOp^save_1/AssignVariableOp^save_1/AssignVariableOp_1^save_1/AssignVariableOp_2^save_1/AssignVariableOp_3^save_1/NoOp^save_1/NoOp_1^save_1/NoOp_2^save_1/NoOp_3^save_1/NoOp_4

init_1NoOp"J
save_1/Const:0save_1/control_dependency:0save_1/restore_all 5 @F8"
trainable_variablesűř

dense_14/kernel:0dense_14/kernel/Assign%dense_14/kernel/Read/ReadVariableOp:0(2,dense_14/kernel/Initializer/random_uniform:08
s
dense_14/bias:0dense_14/bias/Assign#dense_14/bias/Read/ReadVariableOp:0(2!dense_14/bias/Initializer/zeros:08

dense_15/kernel:0dense_15/kernel/Assign%dense_15/kernel/Read/ReadVariableOp:0(2,dense_15/kernel/Initializer/random_uniform:08
s
dense_15/bias:0dense_15/bias/Assign#dense_15/bias/Read/ReadVariableOp:0(2!dense_15/bias/Initializer/zeros:08"!
saved_model_main_op


init_1"
	variablesűř

dense_14/kernel:0dense_14/kernel/Assign%dense_14/kernel/Read/ReadVariableOp:0(2,dense_14/kernel/Initializer/random_uniform:08
s
dense_14/bias:0dense_14/bias/Assign#dense_14/bias/Read/ReadVariableOp:0(2!dense_14/bias/Initializer/zeros:08

dense_15/kernel:0dense_15/kernel/Assign%dense_15/kernel/Read/ReadVariableOp:0(2,dense_15/kernel/Initializer/random_uniform:08
s
dense_15/bias:0dense_15/bias/Assign#dense_15/bias/Read/ReadVariableOp:0(2!dense_15/bias/Initializer/zeros:08*Ł
serving_default
:
dense_14_input(
dense_14_input:0˙˙˙˙˙˙˙˙˙5
dense_15)
dense_15/Softmax:0˙˙˙˙˙˙˙˙˙
tensorflow/serving/predict