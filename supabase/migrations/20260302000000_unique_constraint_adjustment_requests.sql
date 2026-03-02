-- Truncate existing data to allow adding unique constraint cleanly
TRUNCATE TABLE adjustment_requests;

-- Add unique constraint to prevent duplicate requests for the same slot by the same faculty
ALTER TABLE adjustment_requests
  ADD CONSTRAINT adjustment_requests_unique_request
  UNIQUE (requested_by_faculty_id, target_faculty_id, day, slot_id);
