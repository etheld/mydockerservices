#! /usr/bin/env bash

# Options.
DATADIR="/znc-data"

# Build modules from source.
if [ -d "${DATADIR}/modules" ]; then
  # Store current directory.
  cwd="$(pwd)"

  # Find module sources.
  modules=$(find "${DATADIR}/modules" -name "*.cpp")

  # Build modules.
  for module in $modules; do
    echo "Building module $module..."
    cd "$(dirname "$module")"
    znc-buildmod "$module"
  done

  # Go back to original directory.
  cd "$cwd"
fi

# Start ZNC.
echo "Starting ZNC..."
exec sudo -u znc znc --foreground --datadir="$DATADIR" $@
