case $PLUGIN_ACTION in
    restore) echo "Restoring lockbox..."
      grep -c -i $2 $3
      ;;
    update) echo "Updating lockbox..."
      grep -c -i $2 $3
      ;;
    *) echo "Unknown action specified! Make sure you set `action: {restore, update}` in your .drone.yml"
      exit 1
      ;;
esac
