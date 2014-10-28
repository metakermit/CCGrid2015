#!/bin/bash

# httpmon accepts changing some of the command-line parameters at run-time,
# by accepting commands through stdin. This is an example script that automates
# dynamic workload generation using httpmon. httpmon's output is redirected to
# httpmon.log.

#
# Experiment parameters
#

# URL to generate load for
# RandomStory.php includes random story ides to request "ViewStory.php" page
url="http://192.168.122.139/PHP/RandomStory.php"

#
# Experiment verbs (see below for usage)
#
function setStart {
	echo [`date +%s`] start
}
function setCount {
	echo [`date +%s`] count=$1
	echo "count=$1" >&9
}
function setOpen {
	echo [`date +%s`] open=$1
	echo "open=$1" >&9
}
function setThinkTime {
	echo [`date +%s`] thinktime=$1
	echo "thinktime=$1" >&9
}
function setConcurrency {
	echo [`date +%s`] concurrency=$1
	echo "concurrency=$1" >&9
}
function setTimeout {
	echo [`date +%s`] timeout=$1
	echo "timeout=$1" >&9
}

#
# Initialization
#

# Create FIFO to communicate with httpmon and start httpmon
rm -f httpmon.fifo
mkfifo httpmon.fifo
./httpmon_socket_ver1.4 --url $url --concurrency 1 --timeout 4 --interval 1 --deterministic --dump < httpmon.fifo &> httpmon.log &
exec 9> httpmon.fifo

#
# Initialize experiment
#
setOpen 1
setThinkTime 1
setTimeout 4
setStart

#
# Feed the httpmon to send http request to the RUBBoS based on WorldCup'98 workload pattern.
#

setConcurrency	12
sleep 1
setConcurrency	11
sleep 1
setConcurrency	12
sleep 1
setConcurrency	11
sleep 1
setConcurrency	13
sleep 1
setConcurrency	14
sleep 1
setConcurrency	13
sleep 1
setConcurrency	11
sleep 1
setConcurrency	13
sleep 1
setConcurrency	15
sleep 1
setConcurrency	18
sleep 1
setConcurrency	18
sleep 1
setConcurrency	19
sleep 1
setConcurrency	22
sleep 1
setConcurrency	25
sleep 1
setConcurrency	27
sleep 1
setConcurrency	28
sleep 1
setConcurrency	29
sleep 1
setConcurrency	30
sleep 1
setConcurrency	29
sleep 1
setConcurrency	29
sleep 1
setConcurrency	27
sleep 1
setConcurrency	26
sleep 1
setConcurrency	23
sleep 1
setConcurrency	19
sleep 1
setConcurrency	17
sleep 1
setConcurrency	18
sleep 1
setConcurrency	18
sleep 1
setConcurrency	18
sleep 1
setConcurrency	17
sleep 1
setConcurrency	16
sleep 1
setConcurrency	16
sleep 1
setConcurrency	18
sleep 1
setConcurrency	20
sleep 1
setConcurrency	23
sleep 1
setConcurrency	25
sleep 1
setConcurrency	28
sleep 1
setConcurrency	32
sleep 1
setConcurrency	34
sleep 1
setConcurrency	34
sleep 1
setConcurrency	36
sleep 1
setConcurrency	36
sleep 1
setConcurrency	36
sleep 1
setConcurrency	32
sleep 1
setConcurrency	32
sleep 1
setConcurrency	31
sleep 1
setConcurrency	31
sleep 1
setConcurrency	27
sleep 1
setConcurrency	22
sleep 1
setConcurrency	22
sleep 1
setConcurrency	22
sleep 1
setConcurrency	23
sleep 1
setConcurrency	22
sleep 1
setConcurrency	23
sleep 1
setConcurrency	20
sleep 1
setConcurrency	21
sleep 1
setConcurrency	23
sleep 1
setConcurrency	27
sleep 1
setConcurrency	29
sleep 1
setConcurrency	30
sleep 1
setConcurrency	30
sleep 1
setConcurrency	33
sleep 1
setConcurrency	34
sleep 1
setConcurrency	35
sleep 1
setConcurrency	35
sleep 1
setConcurrency	35
sleep 1
setConcurrency	35
sleep 1
setConcurrency	33
sleep 1
setConcurrency	31
sleep 1
setConcurrency	29
sleep 1
setConcurrency	31
sleep 1
setConcurrency	28
sleep 1
setConcurrency	25
sleep 1
setConcurrency	22
sleep 1
setConcurrency	23
sleep 1
setConcurrency	21
sleep 1
setConcurrency	19
sleep 1
setConcurrency	19
sleep 1
setConcurrency	18
sleep 1
setConcurrency	20
sleep 1
setConcurrency	22
sleep 1
setConcurrency	25
sleep 1
setConcurrency	28
sleep 1
setConcurrency	29
sleep 1
setConcurrency	30
sleep 1
setConcurrency	35
sleep 1
setConcurrency	39
sleep 1
setConcurrency	40
sleep 1
setConcurrency	40
sleep 1
setConcurrency	40
sleep 1
setConcurrency	42
sleep 1
setConcurrency	39
sleep 1
setConcurrency	35
sleep 1
setConcurrency	35
sleep 1
setConcurrency	33
sleep 1
setConcurrency	29
sleep 1
setConcurrency	25
sleep 1
setConcurrency	22
sleep 1
setConcurrency	23
sleep 1
setConcurrency	24
sleep 1
setConcurrency	23
sleep 1
setConcurrency	23
sleep 1
setConcurrency	20
sleep 1
setConcurrency	19
sleep 1
setConcurrency	22
sleep 1
setConcurrency	26
sleep 1
setConcurrency	29
sleep 1
setConcurrency	30
sleep 1
setConcurrency	29
sleep 1
setConcurrency	32
sleep 1
setConcurrency	35
sleep 1
setConcurrency	37
sleep 1
setConcurrency	39
sleep 1
setConcurrency	37
sleep 1
setConcurrency	36
sleep 1
setConcurrency	35
sleep 1
setConcurrency	33
sleep 1
setConcurrency	33
sleep 1
setConcurrency	32
sleep 1
setConcurrency	28
sleep 1
setConcurrency	23
sleep 1
setConcurrency	20
sleep 1
setConcurrency	19
sleep 1
setConcurrency	16
sleep 1
setConcurrency	15
sleep 1
setConcurrency	15
sleep 1
setConcurrency	14
sleep 1
setConcurrency	13
sleep 1
setConcurrency	14
sleep 1
setConcurrency	15
sleep 1
setConcurrency	16
sleep 1
setConcurrency	18
sleep 1
setConcurrency	17
sleep 1
setConcurrency	18
sleep 1
setConcurrency	20
sleep 1
setConcurrency	22
sleep 1
setConcurrency	23
sleep 1
setConcurrency	24
sleep 1
setConcurrency	26
sleep 1
setConcurrency	26
sleep 1
setConcurrency	23
sleep 1
setConcurrency	22
sleep 1
setConcurrency	21
sleep 1
setConcurrency	20
sleep 1
setConcurrency	17
sleep 1
setConcurrency	16
sleep 1
setConcurrency	18
sleep 1
setConcurrency	17
sleep 1
setConcurrency	18
sleep 1
setConcurrency	16
sleep 1
setConcurrency	16
sleep 1
setConcurrency	13
sleep 1
setConcurrency	14
sleep 1
setConcurrency	15
sleep 1
setConcurrency	16
sleep 1
setConcurrency	18
sleep 1
setConcurrency	18
sleep 1
setConcurrency	19
sleep 1
setConcurrency	22
sleep 1
setConcurrency	24
sleep 1
setConcurrency	27
sleep 1
setConcurrency	27
sleep 1
setConcurrency	28
sleep 1
setConcurrency	25
sleep 1
setConcurrency	24
sleep 1
setConcurrency	27
sleep 1
setConcurrency	26
sleep 1
setConcurrency	25
sleep 1
setConcurrency	23
sleep 1
setConcurrency	20
sleep 1
setConcurrency	22
sleep 1
setConcurrency	28
sleep 1
setConcurrency	32
sleep 1
setConcurrency	34
sleep 1
setConcurrency	30
sleep 1
setConcurrency	32
sleep 1
setConcurrency	39
sleep 1
setConcurrency	48
sleep 1
setConcurrency	53
sleep 1
setConcurrency	57
sleep 1
setConcurrency	57
sleep 1
setConcurrency	65
sleep 1
setConcurrency	72
sleep 1
setConcurrency	75
sleep 1
setConcurrency	79
sleep 1
setConcurrency	76
sleep 1
setConcurrency	77
sleep 1
setConcurrency	74
sleep 1
setConcurrency	67
sleep 1
setConcurrency	67
sleep 1
setConcurrency	65
sleep 1
setConcurrency	59
sleep 1
setConcurrency	48
sleep 1
setConcurrency	48
sleep 1
setConcurrency	48
sleep 1
setConcurrency	47
sleep 1
setConcurrency	46
sleep 1
setConcurrency	48
sleep 1
setConcurrency	42
sleep 1
setConcurrency	43
sleep 1
setConcurrency	51
sleep 1
setConcurrency	57
sleep 1
setConcurrency	62
sleep 1
setConcurrency	66
sleep 1
setConcurrency	70
sleep 1
setConcurrency	80
sleep 1
setConcurrency	93
sleep 1
setConcurrency	99
sleep 1
setConcurrency	105
sleep 1
setConcurrency	104
sleep 1
setConcurrency	105
sleep 1
setConcurrency	102
sleep 1
setConcurrency	98
sleep 1
setConcurrency	97
sleep 1
setConcurrency	93
sleep 1
setConcurrency	83
sleep 1
setConcurrency	69
sleep 1
setConcurrency	67
sleep 1
setConcurrency	69
sleep 1
setConcurrency	71
sleep 1
setConcurrency	69
sleep 1
setConcurrency	73
sleep 1
setConcurrency	66
sleep 1
setConcurrency	67
sleep 1
setConcurrency	80
sleep 1
setConcurrency	93
sleep 1
setConcurrency	102
sleep 1
setConcurrency	107
sleep 1
setConcurrency	110
sleep 1
setConcurrency	132
sleep 1
setConcurrency	164
sleep 1
setConcurrency	196
sleep 1
setConcurrency	237
sleep 1
setConcurrency	447
sleep 1
setConcurrency	566
sleep 1
setConcurrency	494
sleep 1
setConcurrency	261
sleep 1
setConcurrency	274
sleep 1
setConcurrency	333
sleep 1
setConcurrency	225
sleep 1
setConcurrency	159
sleep 1
setConcurrency	142
sleep 1
setConcurrency	147
sleep 1
setConcurrency	128
sleep 1
setConcurrency	113
sleep 1
setConcurrency	106
sleep 1
setConcurrency	106
sleep 1
setConcurrency	103
sleep 1
setConcurrency	121
sleep 1
setConcurrency	126
sleep 1
setConcurrency	126
sleep 1
setConcurrency	118
sleep 1
setConcurrency	125
sleep 1
setConcurrency	139
sleep 1
setConcurrency	165
sleep 1
setConcurrency	182
sleep 1
setConcurrency	199
sleep 1
setConcurrency	329
sleep 1
setConcurrency	464
sleep 1
setConcurrency	444
sleep 1
setConcurrency	236
sleep 1
setConcurrency	262
sleep 1
setConcurrency	299
sleep 1
setConcurrency	207
sleep 1
setConcurrency	142
sleep 1
setConcurrency	125
sleep 1
setConcurrency	131
sleep 1
setConcurrency	118
sleep 1
setConcurrency	104
sleep 1
setConcurrency	100
sleep 1
setConcurrency	89
sleep 1
setConcurrency	87
sleep 1
setConcurrency	106
sleep 1
setConcurrency	110
sleep 1
setConcurrency	111
sleep 1
setConcurrency	109
sleep 1
setConcurrency	111
sleep 1
setConcurrency	130
sleep 1
setConcurrency	209
sleep 1
setConcurrency	359
sleep 1
setConcurrency	383
sleep 1
setConcurrency	292
sleep 1
setConcurrency	314
sleep 1
setConcurrency	279
sleep 1
setConcurrency	192
sleep 1
setConcurrency	231
sleep 1
setConcurrency	242
sleep 1
setConcurrency	172
sleep 1
setConcurrency	111
sleep 1
setConcurrency	94
sleep 1
setConcurrency	87
sleep 1
setConcurrency	77
sleep 1
setConcurrency	72
sleep 1
setConcurrency	62
sleep 1
setConcurrency	69
sleep 1
setConcurrency	58
sleep 1
setConcurrency	55
sleep 1
setConcurrency	53
sleep 1
setConcurrency	57
sleep 1
setConcurrency	57
sleep 1
setConcurrency	59
sleep 1
setConcurrency	62
sleep 1
setConcurrency	69
sleep 1
setConcurrency	89
sleep 1
setConcurrency	124
sleep 1
setConcurrency	122
sleep 1
setConcurrency	128
sleep 1
setConcurrency	140
sleep 1
setConcurrency	113
sleep 1
setConcurrency	92
sleep 1
setConcurrency	90
sleep 1
setConcurrency	96
sleep 1
setConcurrency	78
sleep 1
setConcurrency	71
sleep 1
setConcurrency	68
sleep 1
setConcurrency	66
sleep 1
setConcurrency	69
sleep 1
setConcurrency	63
sleep 1
setConcurrency	57
sleep 1
setConcurrency	53
sleep 1
setConcurrency	50
sleep 1
setConcurrency	52
sleep 1
setConcurrency	56
sleep 1
setConcurrency	55
sleep 1
setConcurrency	61
sleep 1
setConcurrency	63
sleep 1
setConcurrency	69
sleep 1
setConcurrency	85
sleep 1
setConcurrency	108
sleep 1
setConcurrency	108
sleep 1
setConcurrency	105
sleep 1
setConcurrency	114
sleep 1
setConcurrency	96
sleep 1
setConcurrency	92
sleep 1
setConcurrency	94
sleep 1
setConcurrency	90
sleep 1
setConcurrency	82
sleep 1
setConcurrency	81
sleep 1
setConcurrency	84
sleep 1
setConcurrency	79
sleep 1
setConcurrency	74
sleep 1
setConcurrency	89
sleep 1
setConcurrency	78
sleep 1
setConcurrency	83
sleep 1
setConcurrency	100
sleep 1
setConcurrency	114
sleep 1
setConcurrency	120
sleep 1
setConcurrency	115
sleep 1
setConcurrency	126
sleep 1
setConcurrency	156
sleep 1
setConcurrency	311
sleep 1
setConcurrency	558
sleep 1
setConcurrency	578
sleep 1
setConcurrency	306
sleep 1
setConcurrency	348
sleep 1
setConcurrency	312
sleep 1
setConcurrency	230
sleep 1
setConcurrency	387
sleep 1
setConcurrency	421
sleep 1
setConcurrency	202
sleep 1
setConcurrency	123
sleep 1
setConcurrency	105
sleep 1
setConcurrency	108
sleep 1
setConcurrency	95
sleep 1
setConcurrency	83
sleep 1
setConcurrency	83
sleep 1
setConcurrency	72
sleep 1
setConcurrency	73
sleep 1
setConcurrency	86
sleep 1
setConcurrency	91
sleep 1
setConcurrency	93
sleep 1
setConcurrency	91
sleep 1
setConcurrency	98
sleep 1
setConcurrency	113
sleep 1
setConcurrency	142
sleep 1
setConcurrency	163
sleep 1
setConcurrency	174
sleep 1
setConcurrency	266
sleep 1
setConcurrency	357
sleep 1
setConcurrency	290
sleep 1
setConcurrency	173
sleep 1
setConcurrency	232
sleep 1
setConcurrency	261
sleep 1
setConcurrency	159
sleep 1
setConcurrency	109
sleep 1
setConcurrency	97
sleep 1
setConcurrency	98
sleep 1
setConcurrency	89
sleep 1
setConcurrency	77
sleep 1
setConcurrency	80
sleep 1
setConcurrency	70
sleep 1
setConcurrency	70
sleep 1
setConcurrency	81
sleep 1
setConcurrency	85
sleep 1
setConcurrency	85
sleep 1
setConcurrency	82
sleep 1
setConcurrency	85
sleep 1
setConcurrency	96
sleep 1
setConcurrency	118
sleep 1
setConcurrency	137
sleep 1
setConcurrency	152
sleep 1
setConcurrency	221
sleep 1
setConcurrency	307
sleep 1
setConcurrency	295
sleep 1
setConcurrency	174
sleep 1
setConcurrency	239
sleep 1
setConcurrency	274
sleep 1
setConcurrency	163
sleep 1
setConcurrency	109
sleep 1
setConcurrency	93
sleep 1
setConcurrency	99
sleep 1
setConcurrency	89
sleep 1
setConcurrency	78
sleep 1
setConcurrency	78
sleep 1
setConcurrency	69
sleep 1
setConcurrency	72
sleep 1
setConcurrency	80
sleep 1
setConcurrency	84
sleep 1
setConcurrency	82
sleep 1
setConcurrency	78
sleep 1
setConcurrency	81
sleep 1
setConcurrency	97
sleep 1
setConcurrency	115
sleep 1
setConcurrency	130
sleep 1
setConcurrency	141
sleep 1
setConcurrency	204
sleep 1
setConcurrency	279
sleep 1
setConcurrency	266
sleep 1
setConcurrency	164
sleep 1
setConcurrency	213
sleep 1
setConcurrency	246
sleep 1
setConcurrency	164
sleep 1
setConcurrency	108
sleep 1
setConcurrency	92
sleep 1
setConcurrency	95
sleep 1
setConcurrency	85
sleep 1
setConcurrency	74
sleep 1
setConcurrency	71
sleep 1
setConcurrency	62
sleep 1
setConcurrency	65
sleep 1
setConcurrency	76
sleep 1
setConcurrency	80
sleep 1
setConcurrency	80
sleep 1
setConcurrency	77
sleep 1
setConcurrency	77
sleep 1
setConcurrency	86
sleep 1
setConcurrency	105
sleep 1
setConcurrency	119
sleep 1
setConcurrency	131
sleep 1
setConcurrency	190
sleep 1
setConcurrency	260
sleep 1
setConcurrency	259
sleep 1
setConcurrency	147
sleep 1
setConcurrency	193
sleep 1
setConcurrency	241
sleep 1
setConcurrency	146
sleep 1
setConcurrency	86
sleep 1
setConcurrency	72
sleep 1
setConcurrency	65
sleep 1
setConcurrency	64
sleep 1
setConcurrency	59
sleep 1
setConcurrency	56
sleep 1
setConcurrency	50
sleep 1
setConcurrency	43
sleep 1
setConcurrency	41
sleep 1
setConcurrency	41
sleep 1
setConcurrency	39
sleep 1
setConcurrency	39
sleep 1
setConcurrency	39
sleep 1
setConcurrency	41
sleep 1
setConcurrency	48
sleep 1
setConcurrency	64
sleep 1
setConcurrency	86
sleep 1
setConcurrency	80
sleep 1
setConcurrency	91
sleep 1
setConcurrency	98
sleep 1
setConcurrency	75
sleep 1
setConcurrency	73
sleep 1
setConcurrency	78
sleep 1
setConcurrency	72
sleep 1
setConcurrency	57
sleep 1
setConcurrency	53
sleep 1
setConcurrency	50
sleep 1
setConcurrency	52
sleep 1
setConcurrency	53
sleep 1
setConcurrency	51
sleep 1
setConcurrency	45
sleep 1
setConcurrency	42
sleep 1
setConcurrency	40
sleep 1
setConcurrency	39
sleep 1
setConcurrency	41
sleep 1
setConcurrency	41
sleep 1
setConcurrency	41
sleep 1
setConcurrency	44
sleep 1
setConcurrency	49
sleep 1
setConcurrency	71
sleep 1
setConcurrency	100
sleep 1
setConcurrency	87
sleep 1
setConcurrency	87
sleep 1
setConcurrency	97
sleep 1
setConcurrency	80
sleep 1
setConcurrency	79
sleep 1
setConcurrency	91
sleep 1
setConcurrency	95
sleep 1
setConcurrency	73
sleep 1
setConcurrency	72
sleep 1
setConcurrency	84
sleep 1
setConcurrency	82
sleep 1
setConcurrency	77
sleep 1
setConcurrency	76
sleep 1
setConcurrency	67
sleep 1
setConcurrency	71
sleep 1
setConcurrency	82
sleep 1
setConcurrency	89
sleep 1
setConcurrency	90
sleep 1
setConcurrency	87
sleep 1
setConcurrency	86
sleep 1
setConcurrency	97
sleep 1
setConcurrency	121
sleep 1
setConcurrency	141
sleep 1
setConcurrency	154
sleep 1
setConcurrency	209
sleep 1
setConcurrency	280
sleep 1
setConcurrency	254
sleep 1
setConcurrency	155
sleep 1
setConcurrency	220
sleep 1
setConcurrency	318
sleep 1
setConcurrency	194
sleep 1
setConcurrency	116
sleep 1
setConcurrency	97
sleep 1
setConcurrency	99
sleep 1
setConcurrency	91
sleep 1
setConcurrency	78
sleep 1
setConcurrency	75
sleep 1
setConcurrency	69
sleep 1
setConcurrency	71
sleep 1
setConcurrency	80
sleep 1
setConcurrency	84
sleep 1
setConcurrency	86
sleep 1
setConcurrency	79
sleep 1
setConcurrency	75
sleep 1
setConcurrency	85
sleep 1
setConcurrency	122
sleep 1
setConcurrency	161
sleep 1
setConcurrency	458
sleep 1
setConcurrency	596
sleep 1
setConcurrency	365
sleep 1
setConcurrency	200
sleep 1
setConcurrency	169
sleep 1
setConcurrency	276
sleep 1
setConcurrency	380
sleep 1
setConcurrency	279
sleep 1
setConcurrency	149
sleep 1
setConcurrency	121
sleep 1
setConcurrency	122
sleep 1
setConcurrency	104
sleep 1
setConcurrency	93
sleep 1
setConcurrency	88
sleep 1
setConcurrency	78
sleep 1
setConcurrency	84
sleep 1
setConcurrency	99
sleep 1
setConcurrency	103
sleep 1
setConcurrency	99
sleep 1
setConcurrency	92
sleep 1
setConcurrency	92
sleep 1
setConcurrency	103
sleep 1
setConcurrency	124
sleep 1
setConcurrency	159
sleep 1
setConcurrency	453
sleep 1
setConcurrency	563
sleep 1
setConcurrency	359
sleep 1
setConcurrency	181
sleep 1
setConcurrency	154
sleep 1
setConcurrency	242
sleep 1
setConcurrency	337
sleep 1
setConcurrency	220
sleep 1
setConcurrency	129
sleep 1
setConcurrency	110
sleep 1
setConcurrency	108
sleep 1
setConcurrency	98
sleep 1
setConcurrency	87
sleep 1
setConcurrency	83
sleep 1
setConcurrency	74
sleep 1
setConcurrency	80
sleep 1
setConcurrency	92
sleep 1
setConcurrency	94
sleep 1
setConcurrency	88
sleep 1
setConcurrency	75
sleep 1
setConcurrency	83
sleep 1
setConcurrency	99
sleep 1
setConcurrency	124
sleep 1
setConcurrency	163
sleep 1
setConcurrency	448
sleep 1
setConcurrency	619
sleep 1
setConcurrency	397
sleep 1
setConcurrency	213
sleep 1
setConcurrency	178
sleep 1
setConcurrency	313
sleep 1
setConcurrency	397
sleep 1
setConcurrency	229
sleep 1
setConcurrency	135
sleep 1
setConcurrency	113
sleep 1
setConcurrency	111
sleep 1
setConcurrency	99
sleep 1
setConcurrency	83
sleep 1
setConcurrency	81
sleep 1
setConcurrency	71
sleep 1
setConcurrency	71
sleep 1
setConcurrency	83
sleep 1
setConcurrency	85
sleep 1
setConcurrency	82
sleep 1
setConcurrency	77
sleep 1
setConcurrency	72
sleep 1
setConcurrency	84
sleep 1
setConcurrency	113
sleep 1
setConcurrency	141
sleep 1
setConcurrency	486
sleep 1
setConcurrency	809
sleep 1
setConcurrency	644
sleep 1
setConcurrency	476
sleep 1
setConcurrency	438
sleep 1
setConcurrency	598
sleep 1
setConcurrency	705
sleep 1
setConcurrency	314
sleep 1
setConcurrency	121
sleep 1
setConcurrency	97
sleep 1
setConcurrency	90
sleep 1
setConcurrency	82
sleep 1
setConcurrency	77
sleep 1
setConcurrency	68
sleep 1
setConcurrency	62
sleep 1
setConcurrency	54
sleep 1
setConcurrency	52
sleep 1
setConcurrency	46
sleep 1
setConcurrency	45
sleep 1
setConcurrency	45
sleep 1
setConcurrency	45
sleep 1
setConcurrency	46
sleep 1
setConcurrency	55
sleep 1
setConcurrency	69
sleep 1
setConcurrency	85
sleep 1
setConcurrency	119
sleep 1
setConcurrency	135
sleep 1
setConcurrency	95
sleep 1
setConcurrency	83
sleep 1
setConcurrency	90
sleep 1
setConcurrency	104
sleep 1
setConcurrency	86
sleep 1
setConcurrency	65
sleep 1
setConcurrency	58
sleep 1
setConcurrency	56
sleep 1
setConcurrency	55
sleep 1
setConcurrency	54
sleep 1
setConcurrency	52
sleep 1
setConcurrency	50
sleep 1
setConcurrency	44
sleep 1
setConcurrency	40
sleep 1
setConcurrency	37
sleep 1
setConcurrency	38
sleep 1
setConcurrency	39
sleep 1
setConcurrency	40
sleep 1
setConcurrency	41
sleep 1
setConcurrency	45
sleep 1
setConcurrency	54
sleep 1
setConcurrency	68
sleep 1
setConcurrency	100
sleep 1
setConcurrency	132
sleep 1
setConcurrency	139
sleep 1
setConcurrency	107
sleep 1
setConcurrency	105
sleep 1
setConcurrency	119
sleep 1
setConcurrency	111
sleep 1
setConcurrency	95
sleep 1
setConcurrency	88
sleep 1
setConcurrency	87
sleep 1
setConcurrency	84
sleep 1
setConcurrency	78
sleep 1
setConcurrency	76
sleep 1
setConcurrency	70
sleep 1
setConcurrency	73
sleep 1
setConcurrency	86
sleep 1
setConcurrency	95
sleep 1
setConcurrency	92
sleep 1
setConcurrency	86
sleep 1
setConcurrency	86
sleep 1
setConcurrency	95
sleep 1
setConcurrency	123
sleep 1
setConcurrency	150
sleep 1
setConcurrency	334
sleep 1
setConcurrency	746
sleep 1
setConcurrency	856
sleep 1
setConcurrency	448
sleep 1
setConcurrency	342
sleep 1
setConcurrency	448
sleep 1
setConcurrency	561
sleep 1
setConcurrency	200
sleep 1
setConcurrency	115
sleep 1
setConcurrency	101
sleep 1
setConcurrency	100
sleep 1
setConcurrency	88
sleep 1
setConcurrency	77
sleep 1
setConcurrency	74
sleep 1
setConcurrency	66
sleep 1
setConcurrency	67
sleep 1
setConcurrency	81
sleep 1
setConcurrency	84
sleep 1
setConcurrency	82
sleep 1
setConcurrency	83
sleep 1
setConcurrency	85
sleep 1
setConcurrency	95
sleep 1
setConcurrency	112
sleep 1
setConcurrency	136
sleep 1
setConcurrency	291
sleep 1
setConcurrency	671
sleep 1
setConcurrency	704
sleep 1
setConcurrency	442
sleep 1
setConcurrency	390
sleep 1
setConcurrency	635
sleep 1
setConcurrency	818
sleep 1
setConcurrency	965
sleep 1
setConcurrency	247
sleep 1
setConcurrency	135
sleep 1
setConcurrency	123
sleep 1
setConcurrency	105
sleep 1
setConcurrency	93
sleep 1
setConcurrency	91
sleep 1
setConcurrency	76
sleep 1
setConcurrency	77
sleep 1
setConcurrency	80
sleep 1
setConcurrency	87
sleep 1
setConcurrency	85
sleep 1
setConcurrency	78
sleep 1
setConcurrency	78
sleep 1
setConcurrency	85
sleep 1
setConcurrency	101
sleep 1
setConcurrency	115
sleep 1
setConcurrency	120
sleep 1
setConcurrency	122
sleep 1
setConcurrency	115
sleep 1
setConcurrency	104
sleep 1
setConcurrency	94
sleep 1
setConcurrency	89
sleep 1
setConcurrency	80
sleep 1
setConcurrency	70
sleep 1
setConcurrency	58
sleep 1
setConcurrency	52
sleep 1
setConcurrency	54
sleep 1
setConcurrency	52
sleep 1
setConcurrency	51
sleep 1
setConcurrency	52
sleep 1
setConcurrency	45
sleep 1
setConcurrency	45
sleep 1
setConcurrency	47
sleep 1
setConcurrency	49
sleep 1
setConcurrency	52
sleep 1
setConcurrency	53
sleep 1
setConcurrency	53
sleep 1
setConcurrency	60
sleep 1
setConcurrency	72
sleep 1
setConcurrency	75
sleep 1
setConcurrency	89
sleep 1
setConcurrency	93
sleep 1
setConcurrency	91
sleep 1
setConcurrency	85
sleep 1
setConcurrency	76
sleep 1
setConcurrency	74
sleep 1
setConcurrency	70
sleep 1
setConcurrency	61
sleep 1
setConcurrency	52
sleep 1
setConcurrency	48
sleep 1
setConcurrency	47
sleep 1
setConcurrency	47
sleep 1
setConcurrency	47
sleep 1
setConcurrency	50
sleep 1
setConcurrency	43
sleep 1
setConcurrency	42
sleep 1
setConcurrency	49
sleep 1
setConcurrency	54
sleep 1
setConcurrency	58
sleep 1
setConcurrency	58
sleep 1
setConcurrency	60
sleep 1
setConcurrency	66
sleep 1
setConcurrency	82
sleep 1
setConcurrency	105
sleep 1
setConcurrency	288
sleep 1
setConcurrency	610
sleep 1
setConcurrency	666
sleep 1
setConcurrency	548
sleep 1
setConcurrency	177
sleep 1
setConcurrency	237
sleep 1
setConcurrency	298
sleep 1
setConcurrency	127
sleep 1
setConcurrency	75
sleep 1
setConcurrency	65
sleep 1
setConcurrency	63
sleep 1
setConcurrency	61
sleep 1
setConcurrency	59
sleep 1
setConcurrency	54
sleep 1
setConcurrency	48
sleep 1
setConcurrency	42
sleep 1
setConcurrency	37
sleep 1
setConcurrency	35
sleep 1
setConcurrency	34
sleep 1
setConcurrency	32
sleep 1
setConcurrency	33
sleep 1
setConcurrency	35
sleep 1
setConcurrency	40
sleep 1
setConcurrency	49
sleep 1
setConcurrency	63
sleep 1
setConcurrency	103
sleep 1
setConcurrency	129
sleep 1
setConcurrency	96
sleep 1
setConcurrency	71
sleep 1
setConcurrency	88
sleep 1
setConcurrency	113
sleep 1
setConcurrency	118
sleep 1
setConcurrency	69
sleep 1
setConcurrency	60
sleep 1
setConcurrency	56
sleep 1
setConcurrency	54
sleep 1
setConcurrency	53
sleep 1
setConcurrency	53
sleep 1
setConcurrency	45
sleep 1
setConcurrency	41
sleep 1
setConcurrency	38
sleep 1
setConcurrency	36
sleep 1
setConcurrency	37
sleep 1
setConcurrency	38
sleep 1
setConcurrency	37
sleep 1
setConcurrency	38
sleep 1
setConcurrency	42
sleep 1
setConcurrency	45
sleep 1
setConcurrency	49
sleep 1
setConcurrency	50
sleep 1
setConcurrency	49
sleep 1
setConcurrency	47
sleep 1
setConcurrency	43
sleep 1
setConcurrency	42
sleep 1
setConcurrency	41
sleep 1
setConcurrency	38
sleep 1
setConcurrency	35
sleep 1
setConcurrency	35
sleep 1
setConcurrency	39
sleep 1
setConcurrency	43
sleep 1
setConcurrency	43
sleep 1
setConcurrency	45
sleep 1
setConcurrency	40
sleep 1
setConcurrency	42
sleep 1
setConcurrency	51
sleep 1
setConcurrency	58
sleep 1
setConcurrency	58
sleep 1
setConcurrency	57
sleep 1
setConcurrency	54
sleep 1
setConcurrency	62
sleep 1
setConcurrency	74
sleep 1
setConcurrency	87
sleep 1
setConcurrency	92
sleep 1
setConcurrency	92
sleep 1
setConcurrency	89
sleep 1
setConcurrency	81
sleep 1
setConcurrency	72
sleep 1
setConcurrency	70
sleep 1
setConcurrency	66
sleep 1
setConcurrency	59
sleep 1
setConcurrency	51
sleep 1
setConcurrency	46
sleep 1
setConcurrency	46
sleep 1
setConcurrency	46
sleep 1
setConcurrency	45
sleep 1
setConcurrency	45
sleep 1
setConcurrency	39
sleep 1
setConcurrency	39
sleep 1
setConcurrency	43
sleep 1
setConcurrency	47
sleep 1
setConcurrency	48
sleep 1
setConcurrency	50
sleep 1
setConcurrency	51
sleep 1
setConcurrency	59
sleep 1
setConcurrency	75
sleep 1
setConcurrency	89
sleep 1
setConcurrency	101
sleep 1
setConcurrency	97
sleep 1
setConcurrency	106
sleep 1
setConcurrency	109
sleep 1
setConcurrency	131
sleep 1
setConcurrency	494
sleep 1
setConcurrency	739
sleep 1
setConcurrency	860
sleep 1
setConcurrency	253
sleep 1
setConcurrency	98
sleep 1
setConcurrency	91
sleep 1
setConcurrency	78
sleep 1
setConcurrency	65
sleep 1
setConcurrency	62
sleep 1
setConcurrency	54
sleep 1
setConcurrency	54
sleep 1
setConcurrency	58
sleep 1
setConcurrency	60
sleep 1
setConcurrency	56
sleep 1
setConcurrency	54
sleep 1
setConcurrency	54
sleep 1
setConcurrency	58
sleep 1
setConcurrency	75
sleep 1
setConcurrency	88
sleep 1
setConcurrency	91
sleep 1
setConcurrency	92
sleep 1
setConcurrency	98
sleep 1
setConcurrency	95
sleep 1
setConcurrency	118
sleep 1
setConcurrency	514
sleep 1
setConcurrency	850
sleep 1
setConcurrency	261
sleep 1
setConcurrency	108
sleep 1
setConcurrency	85
sleep 1
setConcurrency	82
sleep 1
setConcurrency	71
sleep 1
setConcurrency	60
sleep 1
setConcurrency	59
sleep 1
setConcurrency	52
sleep 1
setConcurrency	49
sleep 1
setConcurrency	53
sleep 1
setConcurrency	55
sleep 1
setConcurrency	56
sleep 1
setConcurrency	51
sleep 1
setConcurrency	49
sleep 1
setConcurrency	54
sleep 1
setConcurrency	66
sleep 1
setConcurrency	73
sleep 1
setConcurrency	74
sleep 1
setConcurrency	71
sleep 1
setConcurrency	70
sleep 1
setConcurrency	62
sleep 1
setConcurrency	57
sleep 1
setConcurrency	56
sleep 1
setConcurrency	52
sleep 1
setConcurrency	47
sleep 1
setConcurrency	37
sleep 1
setConcurrency	34
sleep 1
setConcurrency	34
sleep 1
setConcurrency	33
sleep 1
setConcurrency	32
sleep 1
setConcurrency	34
sleep 1
setConcurrency	29
sleep 1
setConcurrency	29
sleep 1
setConcurrency	31
sleep 1
setConcurrency	34
sleep 1
setConcurrency	38
sleep 1
setConcurrency	37
sleep 1
setConcurrency	37
sleep 1
setConcurrency	40
sleep 1
setConcurrency	45
sleep 1
setConcurrency	52
sleep 1
setConcurrency	57
sleep 1
setConcurrency	55
sleep 1
setConcurrency	54
sleep 1
setConcurrency	51
sleep 1
setConcurrency	47
sleep 1
setConcurrency	49
sleep 1
setConcurrency	49
sleep 1
setConcurrency	42
sleep 1
setConcurrency	34
sleep 1
setConcurrency	29
sleep 1
setConcurrency	30
sleep 1
setConcurrency	29
sleep 1
setConcurrency	29
sleep 1
setConcurrency	28
sleep 1
setConcurrency	27
sleep 1
setConcurrency	22
sleep 1
setConcurrency	21
sleep 1
setConcurrency	21
sleep 1
setConcurrency	21
sleep 1
setConcurrency	21
sleep 1
setConcurrency	22
sleep 1
setConcurrency	22
sleep 1
setConcurrency	25
sleep 1
setConcurrency	28
sleep 1
setConcurrency	33
sleep 1
setConcurrency	36
sleep 1
setConcurrency	37
sleep 1
setConcurrency	38
sleep 1
setConcurrency	38
sleep 1
setConcurrency	60
sleep 1
setConcurrency	75
sleep 1
setConcurrency	55
sleep 1
setConcurrency	43
sleep 1
setConcurrency	39
sleep 1
setConcurrency	40
sleep 1
setConcurrency	38
sleep 1
setConcurrency	38
sleep 1
setConcurrency	37
sleep 1
setConcurrency	33
sleep 1
setConcurrency	30
sleep 1
setConcurrency	27
sleep 1
setConcurrency	25
sleep 1
setConcurrency	26
sleep 1
setConcurrency	25
sleep 1
setConcurrency	29
sleep 1
setConcurrency	28
sleep 1
setConcurrency	31
sleep 1
setConcurrency	37
sleep 1
setConcurrency	42
sleep 1
setConcurrency	47
sleep 1
