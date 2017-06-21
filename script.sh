case $PLUGIN_ACTION in
    restore) echo "Restoring lockbox..."
      /bin/restore.sh $PLUGIN_LOCKBOX_CACHE_PATH
      ;;
    update) echo "Updating lockbox..."
      /bin/update.sh $PLUGIN_LOCKBOX_CACHE_PATH
      ;;
    *) echo "Unknown action specified! Make sure you set `action: {restore, update}` in your .drone.yml"
      exit 1
      ;;
esac
