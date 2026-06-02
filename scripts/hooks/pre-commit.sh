#!/usr/bin/env bash

echo "--- Checking renv synchronisation..."
"/c/Program Files/R/R-4.5.3/bin/x64/Rscript" --no-save --no-restore-data -e '
  if (!isTRUE(renv::status()$synchronized)) {
    message("\nrenv is out of sync with renv.lock.\nRun renv::snapshot() then commit again.\n")
    quit(status = 1)
  }
  message("renv check passed.")
'
