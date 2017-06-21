LOCKBOX_S3_PATH=$1
LOCKBOX_DIRECTORY=~/.R/lockbox
LOCKBOX_TMP=/tmp/lockboxcache.tar.gz

aws s3 cp $LOCKBOX_S3_PATH $LOCKBOX_TMP
mkdir -p $LOCKBOX_DIRECTORY
tar -xzvf -C $LOCKBOX_DIRECTORY $LOCKBOX_TMP
rm -f $LOCKBOX_TMP

echo "Lockbox restored!"
