#!/bin/bash

## GPU visibility
 export HIP_VISIBLE_DEVICES=0

 make -j $1

DRIVER=example/$1
VERIFY=$2
INIT=$3
REPEAT=$4

########  verify  init  repeat  M___ N___ K___  StrideA StrideB StrideC StrideC1
#$DRIVER $VERIFY $INIT $REPEAT   256  256  256      256     256     256      256
#$DRIVER $VERIFY $INIT $REPEAT   960 1024 1024     1024    1024    1024     1024
#$DRIVER $VERIFY $INIT $REPEAT  1920 2048 2048     2048    2048    2048     2048
 $DRIVER $VERIFY $INIT $REPEAT  3840 4096 4096     4096    4096    4096     4096
#$DRIVER $VERIFY $INIT $REPEAT  7680 8192 8192     8192    8192    8192     8192
#$DRIVER $VERIFY $INIT $REPEAT  1024 1024 1024     1024    1024    1024     1024
#$DRIVER $VERIFY $INIT $REPEAT  2048 2048 2048     2048    2048    2048     2048