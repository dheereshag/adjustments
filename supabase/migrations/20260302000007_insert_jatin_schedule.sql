-- Insert Jatin into faculties
INSERT INTO faculties (id, name) VALUES (19848, 'Jatin');

-- Insert schedules for Jatin (faculty_id = 19848)
INSERT INTO schedules (faculty_id, day, slot_id, class_name, block_name, room_number, course_code, "group") VALUES
-- Monday: 1 & 2
(19848, 'Mon', 1, '24AML-2',  'D2', 318, '24CSP-283', 'B'),
(19848, 'Mon', 2, '24AML-2',  'D2', 318, '24CSP-283', 'B'),
-- Monday: 7 & 8
(19848, 'Mon', 7, '24AML-4',  'D2', 414, '24CSP-283', 'A'),
(19848, 'Mon', 8, '24AML-4',  'D2', 414, '24CSP-283', 'A'),
-- Tuesday: 1 & 2
(19848, 'Tue', 1, '24AML-12', 'D2', 409, '24CSP-283', 'B'),
(19848, 'Tue', 2, '24AML-12', 'D2', 409, '24CSP-283', 'B'),
-- Tuesday: 5 & 6
(19848, 'Tue', 5, '24AML-3',  'D2', 307, '24CSP-283', 'A'),
(19848, 'Tue', 6, '24AML-3',  'D2', 307, '24CSP-283', 'A'),
-- Tuesday: 7 & 8
(19848, 'Tue', 7, '24AML-11', 'D2', 410, '24CSP-283', 'A'),
(19848, 'Tue', 8, '24AML-11', 'D2', 410, '24CSP-283', 'A'),
-- Wednesday: 1 & 2
(19848, 'Wed', 1, '24AML-3',  'D2', 513, '24CSP-283', 'B'),
(19848, 'Wed', 2, '24AML-3',  'D2', 513, '24CSP-283', 'B'),
-- Wednesday: 7 & 8
(19848, 'Wed', 7, '24AML-4',  'D2', 307, '24CSP-283', 'B'),
(19848, 'Wed', 8, '24AML-4',  'D2', 307, '24CSP-283', 'B'),
-- Thursday: 5 & 6
(19848, 'Thu', 5, '24AML-2',  'D2', 306, '24CSP-283', 'A'),
(19848, 'Thu', 6, '24AML-2',  'D2', 306, '24CSP-283', 'A'),
-- Friday: 1 & 2
(19848, 'Fri', 1, '24AML-12', 'D2', 505, '24CSP-283', 'A'),
(19848, 'Fri', 2, '24AML-12', 'D2', 505, '24CSP-283', 'A'),
-- Friday: 5 & 6
(19848, 'Fri', 5, '24AML-11', 'D2', 317, '24CSP-283', 'B'),
(19848, 'Fri', 6, '24AML-11', 'D2', 317, '24CSP-283', 'B');
