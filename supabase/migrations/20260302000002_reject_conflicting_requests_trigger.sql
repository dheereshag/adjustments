-- Trigger: when a request is approved, auto-reject all other pending requests
-- for the same (target_faculty_id, day, slot_id) with an explanatory remark.

CREATE OR REPLACE FUNCTION reject_conflicting_requests()
RETURNS TRIGGER AS $$
BEGIN
  IF NEW.status = 'approved' AND OLD.status IS DISTINCT FROM 'approved' THEN
    UPDATE adjustment_requests
    SET
      status      = 'rejected',
      remarks     = 'Slot already taken — another request for this slot was approved.',
      resolved_at = NOW()
    WHERE
      target_faculty_id = NEW.target_faculty_id
      AND day           = NEW.day
      AND slot_id       = NEW.slot_id
      AND status        = 'pending'
      AND id            <> NEW.id;
  END IF;
  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trg_reject_conflicting_requests
AFTER UPDATE ON adjustment_requests
FOR EACH ROW
EXECUTE FUNCTION reject_conflicting_requests();
