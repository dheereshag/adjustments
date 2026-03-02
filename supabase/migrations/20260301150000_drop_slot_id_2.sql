-- Expand paired slots into individual rows, then drop slot_id_2.
--
-- Before: one row per class with slot_id + slot_id_2 (e.g. 3 & 4)
-- After:  one row per slot — the second slot becomes its own row
--         with identical class_name / block_name / room / course / group.

-- Step 1: insert the second-slot rows for every schedule that has slot_id_2
INSERT INTO schedules (faculty_id, day, slot_id, class_name, block_name, room_number, course_code, course_name, "group")
SELECT faculty_id, day, slot_id_2, class_name, block_name, room_number, course_code, course_name, "group"
FROM schedules
WHERE slot_id_2 IS NOT NULL;

-- Step 2: remove the now-redundant column
ALTER TABLE schedules DROP COLUMN slot_id_2;
