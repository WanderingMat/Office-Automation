$date = get-date  -displayhint date
Checkpoint-Computer -Description "$Date" -RestorePointType 'MODIFY_SETTINGS'