echo "--- Checking renv synchronisation..."

Rscript --no-save --no-restore-data -e '
  if (!isTRUE(renv::status()$synchronized)) {
    message("\nrenv is out of sync with renv.lock.\nRun renv::snapshot() then commit again.\n")
    quit(status = 1)
  }
  message("renv check passed.")
'
