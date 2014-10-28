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
# Feed the httpmon to send http request to the RUBBoS based on Wikipedia workload pattern.
#

setConcurrency 103
sleep 1
setConcurrency	112
sleep 1
setConcurrency	98
sleep 1
setConcurrency	99
sleep 1
setConcurrency	99
sleep 1
setConcurrency	94
sleep 1
setConcurrency	100
sleep 1
setConcurrency	99
sleep 1
setConcurrency	109
sleep 1
setConcurrency	100
sleep 1
setConcurrency	110
sleep 1
setConcurrency	109
sleep 1
setConcurrency	108
sleep 1
setConcurrency	96
sleep 1
setConcurrency	101
sleep 1
setConcurrency	98
sleep 1
setConcurrency	97
sleep 1
setConcurrency	102
sleep 1
setConcurrency	101
sleep 1
setConcurrency	104
sleep 1
setConcurrency	112
sleep 1
setConcurrency	97
sleep 1
setConcurrency	100
sleep 1
setConcurrency	95
sleep 1
setConcurrency	93
sleep 1
setConcurrency	95
sleep 1
setConcurrency	86
sleep 1
setConcurrency	89
sleep 1
setConcurrency	87
sleep 1
setConcurrency	95
sleep 1
setConcurrency	89
sleep 1
setConcurrency	95
sleep 1
setConcurrency	86
sleep 1
setConcurrency	86
sleep 1
setConcurrency	84
sleep 1
setConcurrency	83
sleep 1
setConcurrency	80
sleep 1
setConcurrency	91
sleep 1
setConcurrency	98
sleep 1
setConcurrency	98
sleep 1
setConcurrency	81
sleep 1
setConcurrency	84
sleep 1
setConcurrency	74
sleep 1
setConcurrency	88
sleep 1
setConcurrency	79
sleep 1
setConcurrency	79
sleep 1
setConcurrency	93
sleep 1
setConcurrency	76
sleep 1
setConcurrency	72
sleep 1
setConcurrency	75
sleep 1
setConcurrency	61
sleep 1
setConcurrency	74
sleep 1
setConcurrency	71
sleep 1
setConcurrency	67
sleep 1
setConcurrency	72
sleep 1
setConcurrency	73
sleep 1
setConcurrency	66
sleep 1
setConcurrency	80
sleep 1
setConcurrency	69
sleep 1
setConcurrency	88
sleep 1
setConcurrency	90
sleep 1
setConcurrency	80
sleep 1
setConcurrency	75
sleep 1
setConcurrency	82
sleep 1
setConcurrency	68
sleep 1
setConcurrency	68
sleep 1
setConcurrency	78
sleep 1
setConcurrency	64
sleep 1
setConcurrency	66
sleep 1
setConcurrency	79
sleep 1
setConcurrency	80
sleep 1
setConcurrency	74
sleep 1
setConcurrency	70
sleep 1
setConcurrency	67
sleep 1
setConcurrency	65
sleep 1
setConcurrency	61
sleep 1
setConcurrency	68
sleep 1
setConcurrency	61
sleep 1
setConcurrency	64
sleep 1
setConcurrency	61
sleep 1
setConcurrency	66
sleep 1
setConcurrency	60
sleep 1
setConcurrency	64
sleep 1
setConcurrency	64
sleep 1
setConcurrency	65
sleep 1
setConcurrency	62
sleep 1
setConcurrency	59
sleep 1
setConcurrency	62
sleep 1
setConcurrency	59
sleep 1
setConcurrency	87
sleep 1
setConcurrency	90
sleep 1
setConcurrency	75
sleep 1
setConcurrency	88
sleep 1
setConcurrency	88
sleep 1
setConcurrency	77
sleep 1
setConcurrency	79
sleep 1
setConcurrency	65
sleep 1
setConcurrency	66
sleep 1
setConcurrency	59
sleep 1
setConcurrency	56
sleep 1
setConcurrency	57
sleep 1
setConcurrency	60
sleep 1
setConcurrency	68
sleep 1
setConcurrency	65
sleep 1
setConcurrency	55
sleep 1
setConcurrency	59
sleep 1
setConcurrency	56
sleep 1
setConcurrency	56
sleep 1
setConcurrency	59
sleep 1
setConcurrency	59
sleep 1
setConcurrency	69
sleep 1
setConcurrency	61
sleep 1
setConcurrency	57
sleep 1
setConcurrency	57
sleep 1
setConcurrency	60
sleep 1
setConcurrency	71
sleep 1
setConcurrency	67
sleep 1
setConcurrency	59
sleep 1
setConcurrency	52
sleep 1
setConcurrency	50
sleep 1
setConcurrency	52
sleep 1
setConcurrency	58
sleep 1
setConcurrency	59
sleep 1
setConcurrency	60
sleep 1
setConcurrency	52
sleep 1
setConcurrency	59
sleep 1
setConcurrency	67
sleep 1
setConcurrency	84
sleep 1
setConcurrency	72
sleep 1
setConcurrency	67
sleep 1
setConcurrency	59
sleep 1
setConcurrency	61
sleep 1
setConcurrency	63
sleep 1
setConcurrency	54
sleep 1
setConcurrency	71
sleep 1
setConcurrency	71
sleep 1
setConcurrency	63
sleep 1
setConcurrency	60
sleep 1
setConcurrency	66
sleep 1
setConcurrency	62
sleep 1
setConcurrency	67
sleep 1
setConcurrency	63
sleep 1
setConcurrency	52
sleep 1
setConcurrency	60
sleep 1
setConcurrency	55
sleep 1
setConcurrency	63
sleep 1
setConcurrency	65
sleep 1
setConcurrency	59
sleep 1
setConcurrency	61
sleep 1
setConcurrency	60
sleep 1
setConcurrency	54
sleep 1
setConcurrency	55
sleep 1
setConcurrency	54
sleep 1
setConcurrency	49
sleep 1
setConcurrency	52
sleep 1
setConcurrency	46
sleep 1
setConcurrency	47
sleep 1
setConcurrency	52
sleep 1
setConcurrency	58
sleep 1
setConcurrency	49
sleep 1
setConcurrency	56
sleep 1
setConcurrency	56
sleep 1
setConcurrency	62
sleep 1
setConcurrency	58
sleep 1
setConcurrency	55
sleep 1
setConcurrency	57
sleep 1
setConcurrency	52
sleep 1
setConcurrency	68
sleep 1
setConcurrency	61
sleep 1
setConcurrency	55
sleep 1
setConcurrency	57
sleep 1
setConcurrency	52
sleep 1
setConcurrency	59
sleep 1
setConcurrency	65
sleep 1
setConcurrency	62
sleep 1
setConcurrency	73
sleep 1
setConcurrency	58
sleep 1
setConcurrency	65
sleep 1
setConcurrency	58
sleep 1
setConcurrency	53
sleep 1
setConcurrency	48
sleep 1
setConcurrency	50
sleep 1
setConcurrency	49
sleep 1
setConcurrency	57
sleep 1
setConcurrency	50
sleep 1
setConcurrency	46
sleep 1
setConcurrency	50
sleep 1
setConcurrency	55
sleep 1
setConcurrency	61
sleep 1
setConcurrency	55
sleep 1
setConcurrency	58
sleep 1
setConcurrency	61
sleep 1
setConcurrency	57
sleep 1
setConcurrency	56
sleep 1
setConcurrency	50
sleep 1
setConcurrency	52
sleep 1
setConcurrency	52
sleep 1
setConcurrency	50
sleep 1
setConcurrency	51
sleep 1
setConcurrency	52
sleep 1
setConcurrency	53
sleep 1
setConcurrency	56
sleep 1
setConcurrency	55
sleep 1
setConcurrency	50
sleep 1
setConcurrency	55
sleep 1
setConcurrency	55
sleep 1
setConcurrency	51
sleep 1
setConcurrency	57
sleep 1
setConcurrency	60
sleep 1
setConcurrency	59
sleep 1
setConcurrency	59
sleep 1
setConcurrency	60
sleep 1
setConcurrency	65
sleep 1
setConcurrency	63
sleep 1
setConcurrency	62
sleep 1
setConcurrency	71
sleep 1
setConcurrency	60
sleep 1
setConcurrency	63
sleep 1
setConcurrency	66
sleep 1
setConcurrency	65
sleep 1
setConcurrency	66
sleep 1
setConcurrency	69
sleep 1
setConcurrency	65
sleep 1
setConcurrency	65
sleep 1
setConcurrency	66
sleep 1
setConcurrency	65
sleep 1
setConcurrency	69
sleep 1
setConcurrency	79
sleep 1
setConcurrency	75
sleep 1
setConcurrency	78
sleep 1
setConcurrency	75
sleep 1
setConcurrency	80
sleep 1
setConcurrency	87
sleep 1
setConcurrency	85
sleep 1
setConcurrency	90
sleep 1
setConcurrency	91
sleep 1
setConcurrency	84
sleep 1
setConcurrency	91
sleep 1
setConcurrency	83
sleep 1
setConcurrency	91
sleep 1
setConcurrency	95
sleep 1
setConcurrency	94
sleep 1
setConcurrency	93
sleep 1
setConcurrency	93
sleep 1
setConcurrency	92
sleep 1
setConcurrency	100
sleep 1
setConcurrency	102
sleep 1
setConcurrency	100
sleep 1
setConcurrency	104
sleep 1
setConcurrency	100
sleep 1
setConcurrency	101
sleep 1
setConcurrency	108
sleep 1
setConcurrency	106
sleep 1
setConcurrency	118
sleep 1
setConcurrency	123
sleep 1
setConcurrency	128
sleep 1
setConcurrency	121
sleep 1
setConcurrency	123
sleep 1
setConcurrency	124
sleep 1
setConcurrency	125
sleep 1
setConcurrency	123
sleep 1
setConcurrency	124
sleep 1
setConcurrency	129
sleep 1
setConcurrency	140
sleep 1
setConcurrency	133
sleep 1
setConcurrency	133
sleep 1
setConcurrency	138
sleep 1
setConcurrency	142
sleep 1
setConcurrency	140
sleep 1
setConcurrency	139
sleep 1
setConcurrency	155
sleep 1
setConcurrency	160
sleep 1
setConcurrency	149
sleep 1
setConcurrency	156
sleep 1
setConcurrency	161
sleep 1
setConcurrency	163
sleep 1
setConcurrency	166
sleep 1
setConcurrency	172
sleep 1
setConcurrency	160
sleep 1
setConcurrency	174
sleep 1
setConcurrency	168
sleep 1
setConcurrency	176
sleep 1
setConcurrency	185
sleep 1
setConcurrency	164
sleep 1
setConcurrency	176
sleep 1
setConcurrency	183
sleep 1
setConcurrency	180
sleep 1
setConcurrency	192
sleep 1
setConcurrency	192
sleep 1
setConcurrency	191
sleep 1
setConcurrency	192
sleep 1
setConcurrency	204
sleep 1
setConcurrency	194
sleep 1
setConcurrency	210
sleep 1
setConcurrency	213
sleep 1
setConcurrency	213
sleep 1
setConcurrency	217
sleep 1
setConcurrency	236
sleep 1
setConcurrency	220
sleep 1
setConcurrency	230
sleep 1
setConcurrency	247
sleep 1
setConcurrency	242
sleep 1
setConcurrency	246
sleep 1
setConcurrency	247
sleep 1
setConcurrency	261
sleep 1
setConcurrency	253
sleep 1
setConcurrency	268
sleep 1
setConcurrency	262
sleep 1
setConcurrency	268
sleep 1
setConcurrency	272
sleep 1
setConcurrency	270
sleep 1
setConcurrency	287
sleep 1
setConcurrency	289
sleep 1
setConcurrency	297
sleep 1
setConcurrency	297
sleep 1
setConcurrency	299
sleep 1
setConcurrency	302
sleep 1
setConcurrency	321
sleep 1
setConcurrency	316
sleep 1
setConcurrency	335
sleep 1
setConcurrency	327
sleep 1
setConcurrency	342
sleep 1
setConcurrency	360
sleep 1
setConcurrency	358
sleep 1
setConcurrency	371
sleep 1
setConcurrency	382
sleep 1
setConcurrency	377
sleep 1
setConcurrency	385
sleep 1
setConcurrency	405
sleep 1
setConcurrency	408
sleep 1
setConcurrency	435
sleep 1
setConcurrency	425
sleep 1
setConcurrency	416
sleep 1
setConcurrency	442
sleep 1
setConcurrency	428
sleep 1
setConcurrency	434
sleep 1
setConcurrency	421
sleep 1
setConcurrency	438
sleep 1
setConcurrency	453
sleep 1
setConcurrency	437
sleep 1
setConcurrency	442
sleep 1
setConcurrency	463
sleep 1
setConcurrency	437
sleep 1
setConcurrency	459
sleep 1
setConcurrency	457
sleep 1
setConcurrency	450
sleep 1
setConcurrency	456
sleep 1
setConcurrency	475
sleep 1
setConcurrency	467
sleep 1
setConcurrency	487
sleep 1
setConcurrency	465
sleep 1
setConcurrency	478
sleep 1
setConcurrency	497
sleep 1
setConcurrency	492
sleep 1
setConcurrency	495
sleep 1
setConcurrency	509
sleep 1
setConcurrency	494
sleep 1
setConcurrency	486
sleep 1
setConcurrency	491
sleep 1
setConcurrency	516
sleep 1
setConcurrency	510
sleep 1
setConcurrency	522
sleep 1
setConcurrency	529
sleep 1
setConcurrency	536
sleep 1
setConcurrency	518
sleep 1
setConcurrency	531
sleep 1
setConcurrency	527
sleep 1
setConcurrency	523
sleep 1
setConcurrency	557
sleep 1
setConcurrency	556
sleep 1
setConcurrency	557
sleep 1
setConcurrency	556
sleep 1
setConcurrency	562
sleep 1
setConcurrency	559
sleep 1
setConcurrency	548
sleep 1
setConcurrency	563
sleep 1
setConcurrency	564
sleep 1
setConcurrency	555
sleep 1
setConcurrency	556
sleep 1
setConcurrency	565
sleep 1
setConcurrency	565
sleep 1
setConcurrency	564
sleep 1
setConcurrency	564
sleep 1
setConcurrency	582
sleep 1
setConcurrency	565
sleep 1
setConcurrency	583
sleep 1
setConcurrency	574
sleep 1
setConcurrency	576
sleep 1
setConcurrency	568
sleep 1
setConcurrency	578
sleep 1
setConcurrency	572
sleep 1
setConcurrency	581
sleep 1
setConcurrency	566
sleep 1
setConcurrency	579
sleep 1
setConcurrency	568
sleep 1
setConcurrency	569
sleep 1
setConcurrency	566
sleep 1
setConcurrency	578
sleep 1
setConcurrency	575
sleep 1
setConcurrency	590
sleep 1
setConcurrency	569
sleep 1
setConcurrency	579
sleep 1
setConcurrency	577
sleep 1
setConcurrency	573
sleep 1
setConcurrency	573
sleep 1
setConcurrency	594
sleep 1
setConcurrency	572
sleep 1
setConcurrency	583
sleep 1
setConcurrency	589
sleep 1
setConcurrency	601
sleep 1
setConcurrency	590
sleep 1
setConcurrency	622
sleep 1
setConcurrency	607
sleep 1
setConcurrency	620
sleep 1
setConcurrency	620
sleep 1
setConcurrency	645
sleep 1
setConcurrency	625
sleep 1
setConcurrency	634
sleep 1
setConcurrency	642
sleep 1
setConcurrency	626
sleep 1
setConcurrency	646
sleep 1
setConcurrency	637
sleep 1
setConcurrency	644
sleep 1
setConcurrency	676
sleep 1
setConcurrency	656
sleep 1
setConcurrency	657
sleep 1
setConcurrency	648
sleep 1
setConcurrency	642
sleep 1
setConcurrency	681
sleep 1
setConcurrency	668
sleep 1
setConcurrency	677
sleep 1
setConcurrency	673
sleep 1
setConcurrency	666
sleep 1
setConcurrency	682
sleep 1
setConcurrency	669
sleep 1
setConcurrency	681
sleep 1
setConcurrency	682
sleep 1
setConcurrency	679
sleep 1
setConcurrency	677
sleep 1
setConcurrency	679
sleep 1
setConcurrency	681
sleep 1
setConcurrency	674
sleep 1
setConcurrency	673
sleep 1
setConcurrency	695
sleep 1
setConcurrency	704
sleep 1
setConcurrency	693
sleep 1
setConcurrency	701
sleep 1
setConcurrency	703
sleep 1
setConcurrency	698
sleep 1
setConcurrency	717
sleep 1
setConcurrency	703
sleep 1
setConcurrency	696
sleep 1
setConcurrency	677
sleep 1
setConcurrency	722
sleep 1
setConcurrency	717
sleep 1
setConcurrency	706
sleep 1
setConcurrency	715
sleep 1
setConcurrency	725
sleep 1
setConcurrency	730
sleep 1
setConcurrency	732
sleep 1
setConcurrency	744
sleep 1
setConcurrency	729
sleep 1
setConcurrency	738
sleep 1
setConcurrency	716
sleep 1
setConcurrency	761
sleep 1
setConcurrency	736
sleep 1
setConcurrency	740
sleep 1
setConcurrency	744
sleep 1
setConcurrency	753
sleep 1
setConcurrency	720
sleep 1
setConcurrency	753
sleep 1
setConcurrency	739
sleep 1
setConcurrency	748
sleep 1
setConcurrency	748
sleep 1
setConcurrency	732
sleep 1
setConcurrency	750
sleep 1
setConcurrency	735
sleep 1
setConcurrency	777
sleep 1
setConcurrency	737
sleep 1
setConcurrency	750
sleep 1
setConcurrency	753
sleep 1
setConcurrency	744
sleep 1
setConcurrency	777
sleep 1
setConcurrency	776
sleep 1
setConcurrency	738
sleep 1
setConcurrency	767
sleep 1
setConcurrency	751
sleep 1
setConcurrency	724
sleep 1
setConcurrency	727
sleep 1
setConcurrency	748
sleep 1
setConcurrency	725
sleep 1
setConcurrency	729
sleep 1
setConcurrency	723
sleep 1
setConcurrency	731
sleep 1
setConcurrency	734
sleep 1
setConcurrency	726
sleep 1
setConcurrency	727
sleep 1
setConcurrency	716
sleep 1
setConcurrency	723
sleep 1
setConcurrency	732
sleep 1
setConcurrency	745
sleep 1
setConcurrency	720
sleep 1
setConcurrency	730
sleep 1
setConcurrency	750
sleep 1
setConcurrency	744
sleep 1
setConcurrency	726
sleep 1
setConcurrency	731
sleep 1
setConcurrency	717
sleep 1
setConcurrency	739
sleep 1
setConcurrency	744
sleep 1
setConcurrency	733
sleep 1
setConcurrency	742
sleep 1
setConcurrency	740
sleep 1
setConcurrency	739
sleep 1
setConcurrency	734
sleep 1
setConcurrency	740
sleep 1
setConcurrency	737
sleep 1
setConcurrency	712
sleep 1
setConcurrency	758
sleep 1
setConcurrency	727
sleep 1
setConcurrency	753
sleep 1
setConcurrency	745
sleep 1
setConcurrency	753
sleep 1
setConcurrency	731
sleep 1
setConcurrency	757
sleep 1
setConcurrency	725
sleep 1
setConcurrency	749
sleep 1
setConcurrency	730
sleep 1
setConcurrency	727
sleep 1
setConcurrency	730
sleep 1
setConcurrency	716
sleep 1
setConcurrency	713
sleep 1
setConcurrency	722
sleep 1
setConcurrency	714
sleep 1
setConcurrency	732
sleep 1
setConcurrency	727
sleep 1
setConcurrency	728
sleep 1
setConcurrency	717
sleep 1
setConcurrency	715
sleep 1
setConcurrency	679
sleep 1
setConcurrency	708
sleep 1
setConcurrency	703
sleep 1
setConcurrency	709
sleep 1
setConcurrency	704
sleep 1
setConcurrency	716
sleep 1
setConcurrency	718
sleep 1
setConcurrency	719
sleep 1
setConcurrency	728
sleep 1
setConcurrency	703
sleep 1
setConcurrency	721
sleep 1
setConcurrency	736
sleep 1
setConcurrency	732
sleep 1
setConcurrency	712
sleep 1
setConcurrency	707
sleep 1
setConcurrency	732
sleep 1
setConcurrency	714
sleep 1
setConcurrency	736
sleep 1
setConcurrency	744
sleep 1
setConcurrency	735
sleep 1
setConcurrency	717
sleep 1
setConcurrency	729
sleep 1
setConcurrency	711
sleep 1
setConcurrency	719
sleep 1
setConcurrency	729
sleep 1
setConcurrency	726
sleep 1
setConcurrency	736
sleep 1
setConcurrency	735
sleep 1
setConcurrency	751
sleep 1
setConcurrency	747
sleep 1
setConcurrency	738
sleep 1
setConcurrency	738
sleep 1
setConcurrency	732
sleep 1
setConcurrency	750
sleep 1
setConcurrency	747
sleep 1
setConcurrency	618
sleep 1
setConcurrency	708
sleep 1
setConcurrency	718
sleep 1
setConcurrency	712
sleep 1
setConcurrency	702
sleep 1
setConcurrency	711
sleep 1
setConcurrency	729
sleep 1
setConcurrency	730
sleep 1
setConcurrency	745
sleep 1
setConcurrency	733
sleep 1
setConcurrency	728
sleep 1
setConcurrency	750
sleep 1
setConcurrency	735
sleep 1
setConcurrency	728
sleep 1
setConcurrency	731
sleep 1
setConcurrency	717
sleep 1
setConcurrency	748
sleep 1
setConcurrency	722
sleep 1
setConcurrency	745
sleep 1
setConcurrency	723
sleep 1
setConcurrency	726
sleep 1
setConcurrency	738
sleep 1
setConcurrency	729
sleep 1
setConcurrency	723
sleep 1
setConcurrency	747
sleep 1
setConcurrency	758
sleep 1
setConcurrency	739
sleep 1
setConcurrency	774
sleep 1
setConcurrency	773
sleep 1
setConcurrency	756
sleep 1
setConcurrency	776
sleep 1
setConcurrency	768
sleep 1
setConcurrency	727
sleep 1
setConcurrency	781
sleep 1
setConcurrency	766
sleep 1
setConcurrency	773
sleep 1
setConcurrency	748
sleep 1
setConcurrency	747
sleep 1
setConcurrency	774
sleep 1
setConcurrency	795
sleep 1
setConcurrency	773
sleep 1
setConcurrency	777
sleep 1
setConcurrency	797
sleep 1
setConcurrency	810
sleep 1
setConcurrency	779
sleep 1
setConcurrency	829
sleep 1
setConcurrency	795
sleep 1
setConcurrency	802
sleep 1
setConcurrency	802
sleep 1
setConcurrency	820
sleep 1
setConcurrency	800
sleep 1
setConcurrency	809
sleep 1
setConcurrency	838
sleep 1
setConcurrency	828
sleep 1
setConcurrency	821
sleep 1
setConcurrency	828
sleep 1
setConcurrency	865
sleep 1
setConcurrency	818
sleep 1
setConcurrency	845
sleep 1
setConcurrency	849
sleep 1
setConcurrency	856
sleep 1
setConcurrency	815
sleep 1
setConcurrency	869
sleep 1
setConcurrency	850
sleep 1
setConcurrency	862
sleep 1
setConcurrency	840
sleep 1
setConcurrency	870
sleep 1
setConcurrency	863
sleep 1
setConcurrency	877
sleep 1
setConcurrency	849
sleep 1
setConcurrency	855
sleep 1
setConcurrency	857
sleep 1
setConcurrency	889
sleep 1
setConcurrency	859
sleep 1
setConcurrency	880
sleep 1
setConcurrency	907
sleep 1
setConcurrency	878
sleep 1
setConcurrency	914
sleep 1
setConcurrency	900
sleep 1
setConcurrency	911
sleep 1
setConcurrency	866
sleep 1
setConcurrency	918
sleep 1
setConcurrency	896
sleep 1
setConcurrency	916
sleep 1
setConcurrency	930
sleep 1
setConcurrency	904
sleep 1
setConcurrency	912
sleep 1
setConcurrency	946
sleep 1
setConcurrency	902
sleep 1
setConcurrency	951
sleep 1
setConcurrency	938
sleep 1
setConcurrency	941
sleep 1
setConcurrency	931
sleep 1
setConcurrency	905
sleep 1
setConcurrency	911
sleep 1
setConcurrency	931
sleep 1
setConcurrency	888
sleep 1
setConcurrency	944
sleep 1
setConcurrency	922
sleep 1
setConcurrency	924
sleep 1
setConcurrency	930
sleep 1
setConcurrency	897
sleep 1
setConcurrency	931
sleep 1
setConcurrency	926
sleep 1
setConcurrency	941
sleep 1
setConcurrency	927
sleep 1
setConcurrency	927
sleep 1
setConcurrency	925
sleep 1
setConcurrency	962
sleep 1
setConcurrency	947
sleep 1
setConcurrency	942
sleep 1
setConcurrency	937
sleep 1
setConcurrency	916
sleep 1
setConcurrency	909
sleep 1
setConcurrency	948
sleep 1
setConcurrency	921
sleep 1
setConcurrency	924
sleep 1
setConcurrency	921
sleep 1
setConcurrency	941
sleep 1
setConcurrency	932
sleep 1
setConcurrency	951
sleep 1
setConcurrency	940
sleep 1
setConcurrency	929
sleep 1
setConcurrency	913
sleep 1
setConcurrency	910
sleep 1
setConcurrency	935
sleep 1
setConcurrency	935
sleep 1
setConcurrency	929
sleep 1
setConcurrency	922
sleep 1
setConcurrency	931
sleep 1
setConcurrency	954
sleep 1
setConcurrency	929
sleep 1
setConcurrency	935
sleep 1
setConcurrency	930
sleep 1
setConcurrency	950
sleep 1
setConcurrency	898
sleep 1
setConcurrency	934
sleep 1
setConcurrency	935
sleep 1
setConcurrency	942
sleep 1
setConcurrency	928
sleep 1
setConcurrency	912
sleep 1
setConcurrency	885
sleep 1
setConcurrency	930
sleep 1
setConcurrency	928
sleep 1
setConcurrency	933
sleep 1
setConcurrency	917
sleep 1
setConcurrency	902
sleep 1
setConcurrency	952
sleep 1
setConcurrency	905
sleep 1
setConcurrency	924
sleep 1
setConcurrency	952
sleep 1
setConcurrency	940
sleep 1
setConcurrency	920
sleep 1
setConcurrency	955
sleep 1
setConcurrency	933
sleep 1
setConcurrency	925
sleep 1
setConcurrency	933
sleep 1
setConcurrency	914
sleep 1
setConcurrency	909
sleep 1
setConcurrency	932
sleep 1
setConcurrency	899
sleep 1
setConcurrency	917
sleep 1
setConcurrency	933
sleep 1
setConcurrency	922
sleep 1
setConcurrency	902
sleep 1
setConcurrency	923
sleep 1
setConcurrency	900
sleep 1
setConcurrency	910
sleep 1
setConcurrency	873
sleep 1
setConcurrency	911
sleep 1
setConcurrency	935
sleep 1
setConcurrency	909
sleep 1
setConcurrency	916
sleep 1
setConcurrency	912
sleep 1
setConcurrency	893
sleep 1
setConcurrency	927
sleep 1
setConcurrency	900
sleep 1
setConcurrency	873
sleep 1
setConcurrency	914
sleep 1
setConcurrency	915
sleep 1
setConcurrency	924
sleep 1
setConcurrency	903
sleep 1
setConcurrency	901
sleep 1
setConcurrency	879
sleep 1
setConcurrency	914
sleep 1
setConcurrency	910
sleep 1
setConcurrency	908
sleep 1
setConcurrency	901
sleep 1
setConcurrency	906
sleep 1
setConcurrency	890
sleep 1
setConcurrency	902
sleep 1
setConcurrency	891
sleep 1
setConcurrency	907
sleep 1
setConcurrency	898
sleep 1
setConcurrency	893
sleep 1
setConcurrency	891
sleep 1
setConcurrency	889
sleep 1
setConcurrency	892
sleep 1
setConcurrency	920
sleep 1
setConcurrency	878
sleep 1
setConcurrency	867
sleep 1
setConcurrency	898
sleep 1
setConcurrency	879
sleep 1
setConcurrency	901
sleep 1
setConcurrency	902
sleep 1
setConcurrency	905
sleep 1
setConcurrency	900
sleep 1
setConcurrency	898
sleep 1
setConcurrency	884
sleep 1
setConcurrency	874
sleep 1
setConcurrency	873
sleep 1
setConcurrency	893
sleep 1
setConcurrency	883
sleep 1
setConcurrency	872
sleep 1
setConcurrency	891
sleep 1
setConcurrency	870
sleep 1
setConcurrency	872
sleep 1
setConcurrency	911
sleep 1
setConcurrency	871
sleep 1
setConcurrency	839
sleep 1
setConcurrency	872
sleep 1
setConcurrency	850
sleep 1
setConcurrency	834
sleep 1
setConcurrency	844
sleep 1
setConcurrency	838
sleep 1
setConcurrency	836
sleep 1
setConcurrency	863
sleep 1
setConcurrency	847
sleep 1
setConcurrency	839
sleep 1
setConcurrency	847
sleep 1
setConcurrency	842
sleep 1
setConcurrency	843
sleep 1
setConcurrency	849
sleep 1
setConcurrency	856
sleep 1
setConcurrency	829
sleep 1
setConcurrency	837
sleep 1
setConcurrency	821
sleep 1
setConcurrency	836
sleep 1
setConcurrency	855
sleep 1
setConcurrency	810
sleep 1
setConcurrency	838
sleep 1
setConcurrency	822
sleep 1
setConcurrency	840
sleep 1
setConcurrency	834
sleep 1
setConcurrency	865
sleep 1
setConcurrency	848
sleep 1
setConcurrency	844
sleep 1
setConcurrency	847
sleep 1
setConcurrency	823
sleep 1
setConcurrency	838
sleep 1
setConcurrency	813
sleep 1
setConcurrency	817
sleep 1
setConcurrency	810
sleep 1
setConcurrency	814
sleep 1
setConcurrency	818
sleep 1
setConcurrency	830
sleep 1
setConcurrency	801
sleep 1
setConcurrency	825
sleep 1
setConcurrency	801
sleep 1
setConcurrency	815
sleep 1
setConcurrency	799
sleep 1
setConcurrency	830
sleep 1
setConcurrency	819
sleep 1
setConcurrency	814
sleep 1
setConcurrency	841
sleep 1
setConcurrency	803
sleep 1
setConcurrency	810
sleep 1
setConcurrency	800
sleep 1
setConcurrency	786
sleep 1
setConcurrency	825
sleep 1
setConcurrency	806
sleep 1
setConcurrency	817
sleep 1
setConcurrency	796
sleep 1
setConcurrency	779
sleep 1
setConcurrency	783
sleep 1
setConcurrency	765
sleep 1
setConcurrency	767
sleep 1
setConcurrency	750
sleep 1
setConcurrency	784
sleep 1
setConcurrency	760
sleep 1
setConcurrency	751
sleep 1
setConcurrency	758
sleep 1
setConcurrency	775
sleep 1
setConcurrency	748
sleep 1
setConcurrency	743
sleep 1
setConcurrency	747
sleep 1
setConcurrency	730
sleep 1
setConcurrency	746
sleep 1
setConcurrency	740
sleep 1
setConcurrency	732
sleep 1
setConcurrency	724
sleep 1
setConcurrency	743
sleep 1
setConcurrency	750
sleep 1
setConcurrency	736
sleep 1
setConcurrency	760
sleep 1
setConcurrency	757
sleep 1
setConcurrency	725
sleep 1
setConcurrency	739
sleep 1
setConcurrency	752
sleep 1
setConcurrency	768
sleep 1
setConcurrency	763
sleep 1
setConcurrency	752
sleep 1
setConcurrency	732
sleep 1
setConcurrency	718
sleep 1
setConcurrency	747
sleep 1
setConcurrency	706
sleep 1
setConcurrency	725
sleep 1
setConcurrency	717
sleep 1
setConcurrency	737
sleep 1
setConcurrency	697
sleep 1
setConcurrency	746
sleep 1
setConcurrency	722
sleep 1
setConcurrency	714
sleep 1
setConcurrency	719
sleep 1
setConcurrency	740
sleep 1
setConcurrency	736
sleep 1
setConcurrency	742
sleep 1
setConcurrency	733
sleep 1
setConcurrency	739
sleep 1
setConcurrency	754
sleep 1
setConcurrency	764
sleep 1
setConcurrency	755
sleep 1
setConcurrency	751
sleep 1
setConcurrency	749
sleep 1
setConcurrency	763
sleep 1
setConcurrency	737
sleep 1
setConcurrency	767
sleep 1
setConcurrency	756
sleep 1
setConcurrency	762
sleep 1
setConcurrency	770
sleep 1
setConcurrency	719
sleep 1
setConcurrency	747
sleep 1
setConcurrency	756
sleep 1
setConcurrency	752
sleep 1
setConcurrency	718
sleep 1
setConcurrency	739
sleep 1
setConcurrency	712
sleep 1
setConcurrency	739
sleep 1
setConcurrency	711
sleep 1
setConcurrency	735
sleep 1
setConcurrency	764
sleep 1
setConcurrency	721
sleep 1
setConcurrency	745
sleep 1
setConcurrency	735
sleep 1
setConcurrency	722
sleep 1
setConcurrency	718
sleep 1
setConcurrency	734
sleep 1
setConcurrency	752
sleep 1
setConcurrency	745
sleep 1
setConcurrency	761
sleep 1
setConcurrency	777
sleep 1
setConcurrency	780
sleep 1
setConcurrency	757
sleep 1
setConcurrency	766
sleep 1
setConcurrency	754
sleep 1
setConcurrency	767
sleep 1
setConcurrency	776
sleep 1
setConcurrency	770
sleep 1
setConcurrency	758
sleep 1
setConcurrency	771
sleep 1
setConcurrency	775
sleep 1
setConcurrency	759
sleep 1
setConcurrency	758
sleep 1
setConcurrency	773
sleep 1
setConcurrency	773
sleep 1
setConcurrency	768
sleep 1
setConcurrency	761
sleep 1
setConcurrency	744
sleep 1
setConcurrency	743
sleep 1
setConcurrency	724
sleep 1
setConcurrency	759
sleep 1
setConcurrency	787
sleep 1
setConcurrency	778
sleep 1
setConcurrency	775
sleep 1
setConcurrency	788
sleep 1
setConcurrency	817
sleep 1
setConcurrency	744
sleep 1
setConcurrency	776
sleep 1
setConcurrency	743
sleep 1
setConcurrency	799
sleep 1
setConcurrency	799
sleep 1
setConcurrency	786
sleep 1
setConcurrency	782
sleep 1
setConcurrency	770
sleep 1
setConcurrency	794
sleep 1
setConcurrency	775
sleep 1
setConcurrency	760
sleep 1
setConcurrency	776
sleep 1
setConcurrency	801
sleep 1
setConcurrency	756
sleep 1
setConcurrency	778
sleep 1
setConcurrency	751
sleep 1
setConcurrency	730
sleep 1
setConcurrency	740
sleep 1
setConcurrency	721
sleep 1
setConcurrency	746
sleep 1
setConcurrency	723
sleep 1
setConcurrency	709
sleep 1
setConcurrency	744
sleep 1
setConcurrency	754
sleep 1
setConcurrency	699
sleep 1
setConcurrency	727
sleep 1
setConcurrency	736
sleep 1
setConcurrency	759
sleep 1
setConcurrency	771
sleep 1
setConcurrency	744
sleep 1
setConcurrency	749
sleep 1
setConcurrency	745
sleep 1
setConcurrency	760
sleep 1
setConcurrency	759
sleep 1
setConcurrency	752
sleep 1
setConcurrency	755
sleep 1
setConcurrency	777
sleep 1
setConcurrency	770
sleep 1
setConcurrency	735
sleep 1
setConcurrency	742
sleep 1
setConcurrency	766
sleep 1
setConcurrency	760
sleep 1
setConcurrency	759
sleep 1
setConcurrency	739
sleep 1
setConcurrency	749
sleep 1
setConcurrency	717
sleep 1
setConcurrency	743
sleep 1
setConcurrency	721
sleep 1
setConcurrency	709
sleep 1
setConcurrency	746
sleep 1
setConcurrency	746
sleep 1
setConcurrency	752
sleep 1
setConcurrency	758
sleep 1
setConcurrency	756
sleep 1
setConcurrency	743
sleep 1
setConcurrency	747
sleep 1
setConcurrency	747
sleep 1
setConcurrency	700
sleep 1
setConcurrency	707
sleep 1
setConcurrency	692
sleep 1
setConcurrency	720
sleep 1
setConcurrency	714
sleep 1
setConcurrency	726
sleep 1
setConcurrency	724
sleep 1
setConcurrency	699
sleep 1
setConcurrency	482
sleep 1
setConcurrency	482
sleep 1

