
COMMIT_EDITMSG=$1
echo $COMMIT_EDITMSG

addBranchNumber() {
  NAME=$(git branch | grep '*' | sed 's/* //') 
  echo $NAME
  ISSUE_NUMBER=`echo $NAME | cut -d '-' -f1`
  echo $ISSUE_NUMBER
  DESCRIPTION=$(git config branch."$NAME".description)
  echo "[#$ISSUE_NUMBER] $(cat $COMMIT_EDITMSG)" > $COMMIT_EDITMSG
  if [ -n "$DESCRIPTION" ] 
  then
     echo "" >> $COMMIT_EDITMSG
     echo $DESCRIPTION >> $COMMIT_EDITMSG
  fi 
}


MERGE=$(cat $COMMIT_EDITMSG|grep -i 'merge'|wc -l)


if [ $MERGE -eq 0 ] ; then
  addBranchNumber
fi
