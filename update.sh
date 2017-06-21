LOCKBOX_S3_PATH=$1
LOCKBOX_DIRECTORY=~/.R/lockbox
LOCKBOX_TMP=/tmp/lockboxcache.tar.gz

tar -czvf $LOCKBOX_TMP -C $LOCKBOX_DIRECTORY .
aws s3 cp $LOCKBOX_TMP $LOCKBOX_S3_PATH
rm -f $LOCKBOX_TMP

echo "Lockbox updated!"
