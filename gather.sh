#!/bin/sh
USER=root
HOSTS=`ls -1 config`
DATE=`date  "+%Y%m%d_%H%M%S"`

for host in $HOSTS
do
  HOSTDIR=out/$DATE/$host
  echo $DIR
  FILES=`cat config/$host`
  for f in $FILES
  do

    d=`dirname $f`
    TARGETDIR=$HOSTDIR$d
    if [ ! -d $TARGETDIR ]
    then
      mkdir -p $TARGETDIR
    fi
    scp -r $USER@$host:$f $TARGETDIR
    if [ $? != "0" ]
    then
      echo "Fail get: "$f 
    fi
  done
done

