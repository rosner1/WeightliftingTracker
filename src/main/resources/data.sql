-- =====================================
-- EXTENSION (PostgreSQL UUID support)
-- =====================================
CREATE EXTENSION IF NOT EXISTS pgcrypto;

-- =====================================
-- LIFTS (BASE + EXPANDED)
-- =====================================
INSERT INTO lifts (id, name, description) VALUES

-- Core compounds
(gen_random_uuid(), 'Barbell Bench Press', 'Chest press with barbell'),
(gen_random_uuid(), 'Dumbbell Bench Press', 'Chest press with dumbbells'),
(gen_random_uuid(), 'Push-Up', 'Bodyweight chest exercise'),
(gen_random_uuid(), 'Barbell Squat', 'Compound lower body movement'),
(gen_random_uuid(), 'Deadlift', 'Posterior chain compound lift'),
(gen_random_uuid(), 'Pull-Up', 'Bodyweight vertical pull'),
(gen_random_uuid(), 'Lat Pulldown', 'Machine-based vertical pull'),
(gen_random_uuid(), 'Barbell Row', 'Horizontal pulling movement'),
(gen_random_uuid(), 'Dumbbell Row', 'Single-arm back exercise'),
(gen_random_uuid(), 'Overhead Press', 'Shoulder press with barbell'),

-- Chest
(gen_random_uuid(), 'Incline Bench Press', 'Upper chest press'),
(gen_random_uuid(), 'Decline Bench Press', 'Lower chest press'),
(gen_random_uuid(), 'Chest Fly', 'Chest isolation'),
(gen_random_uuid(), 'Cable Fly', 'Cable chest isolation'),
(gen_random_uuid(), 'Dips', 'Bodyweight chest/tricep'),
(gen_random_uuid(), 'Machine Chest Press', 'Machine chest press'),
(gen_random_uuid(), 'Decline Dumbbell Press', 'Lower chest dumbbell press'),
(gen_random_uuid(), 'Pec Deck', 'Machine chest fly'),

-- Back
(gen_random_uuid(), 'Chin-Up', 'Underhand pull-up'),
(gen_random_uuid(), 'T-Bar Row', 'Row variation'),
(gen_random_uuid(), 'Seated Cable Row', 'Cable row'),
(gen_random_uuid(), 'Face Pull', 'Rear delt/trap'),
(gen_random_uuid(), 'Wide Grip Pull-Up', 'Wide grip pull-up'),
(gen_random_uuid(), 'Neutral Grip Pull-Up', 'Neutral grip pull-up'),
(gen_random_uuid(), 'Reverse Grip Lat Pulldown', 'Underhand pulldown'),
(gen_random_uuid(), 'Single Arm Lat Pulldown', 'Unilateral lat pulldown'),
(gen_random_uuid(), 'Chest Supported Row', 'Supported row'),
(gen_random_uuid(), 'Inverted Row', 'Bodyweight row'),

-- Shoulders
(gen_random_uuid(), 'Arnold Press', 'Rotational press'),
(gen_random_uuid(), 'Lateral Raise', 'Shoulder isolation'),
(gen_random_uuid(), 'Front Raise', 'Anterior delt'),
(gen_random_uuid(), 'Rear Delt Fly', 'Posterior delt'),
(gen_random_uuid(), 'Upright Row', 'Trap/shoulder'),
(gen_random_uuid(), 'Machine Shoulder Press', 'Machine press'),
(gen_random_uuid(), 'Cable Lateral Raise', 'Cable lateral raise'),
(gen_random_uuid(), 'Front Plate Raise', 'Plate raise'),
(gen_random_uuid(), 'Reverse Pec Deck', 'Rear delt machine'),

-- Arms
(gen_random_uuid(), 'Barbell Curl', 'bicep curl'),
(gen_random_uuid(), 'Dumbbell Curl', 'bicep curl'),
(gen_random_uuid(), 'Hammer Curl', 'Neutral grip curl'),
(gen_random_uuid(), 'Preacher Curl', 'Preacher bench curl'),
(gen_random_uuid(), 'Concentration Curl', 'Single arm curl'),
(gen_random_uuid(), 'Cable Curl', 'Cable curl'),
(gen_random_uuid(), 'EZ Bar Curl', 'EZ bar curl'),
(gen_random_uuid(), 'Spider Curl', 'Incline curl'),
(gen_random_uuid(), 'Incline Dumbbell Curl', 'Stretch curl'),
(gen_random_uuid(), 'Cross Body Curl', 'Hammer style'),

(gen_random_uuid(), 'Tricep Pushdown', 'Cable tricep'),
(gen_random_uuid(), 'Skullcrusher', 'Lying tricep'),
(gen_random_uuid(), 'Overhead Tricep Extension', 'Overhead tricep'),
(gen_random_uuid(), 'Close Grip Bench Press', 'Tricep bench'),
(gen_random_uuid(), 'Rope Pushdown', 'Rope extension'),
(gen_random_uuid(), 'Bench Dips', 'Bodyweight dips'),
(gen_random_uuid(), 'Single Arm Pushdown', 'Unilateral'),

-- Legs
(gen_random_uuid(), 'Leg Press', 'Machine legs'),
(gen_random_uuid(), 'Lunge', 'Single leg'),
(gen_random_uuid(), 'Leg Curl', 'hamstring isolation'),
(gen_random_uuid(), 'Leg Extension', 'Quad isolation'),
(gen_random_uuid(), 'calf Raise', 'calf isolation'),
(gen_random_uuid(), 'Hip Thrust', 'Glute movement'),

(gen_random_uuid(), 'Bulgarian Split Squat', 'Single leg squat'),
(gen_random_uuid(), 'Hack Squat', 'Machine squat'),
(gen_random_uuid(), 'Romanian Deadlift', 'hamstring hinge'),
(gen_random_uuid(), 'Sumo Deadlift', 'Wide stance deadlift'),
(gen_random_uuid(), 'Step-Up', 'Step movement'),

(gen_random_uuid(), 'Front Squat', 'Front squat'),
(gen_random_uuid(), 'Goblet Squat', 'Dumbbell squat'),
(gen_random_uuid(), 'Sissy Squat', 'Quad isolation'),
(gen_random_uuid(), 'Wall Sit', 'Isometric quad'),

(gen_random_uuid(), 'Nordic Curl', 'hamstring curl'),
(gen_random_uuid(), 'Good Morning', 'Hip hinge'),
(gen_random_uuid(), 'Single Leg Deadlift', 'Unilateral hinge'),

(gen_random_uuid(), 'Barbell Hip Thrust', 'Weighted glute'),
(gen_random_uuid(), 'Step Back Lunge', 'Reverse lunge'),
(gen_random_uuid(), 'Walking Lunge', 'Dynamic lunge'),

(gen_random_uuid(), 'Seated calf Raise', 'Seated calf'),
(gen_random_uuid(), 'Single Leg calf Raise', 'Unilateral calf'),

-- Traps / Full body
(gen_random_uuid(), 'Shrug', 'Trap isolation'),
(gen_random_uuid(), 'Barbell Shrug', 'Barbell trap'),
(gen_random_uuid(), 'Dumbbell Shrug', 'Dumbbell trap'),

(gen_random_uuid(), 'Power Clean', 'Explosive lift'),
(gen_random_uuid(), 'Clean and Press', 'Olympic variation'),
(gen_random_uuid(), 'Snatch', 'Olympic lift'),
(gen_random_uuid(), 'Thruster', 'Squat to press'),

-- Core
(gen_random_uuid(), 'Plank', 'Core hold'),
(gen_random_uuid(), 'Hanging Leg Raise', 'Core'),
(gen_random_uuid(), 'Cable Crunch', 'Weighted abs');

-- =====================================
-- MUSCLE LINKS
-- =====================================

-- Helper pattern repeated
-- Example mappings (covers all major lifts)

-- =====================================
-- COMPLETE LIFT → MUSCLE MAPPINGS
-- =====================================

-- Chest / Push
INSERT INTO lift_muscles (lift_id, muscle, is_primary)
SELECT id, 'pectoral', true FROM lifts WHERE name = 'Barbell Bench Press';
INSERT INTO lift_muscles SELECT id, 'tricep', false FROM lifts WHERE name = 'Barbell Bench Press';
INSERT INTO lift_muscles SELECT id, 'deltoid', false FROM lifts WHERE name = 'Barbell Bench Press';

INSERT INTO lift_muscles SELECT id, 'pectoral', true FROM lifts WHERE name = 'Dumbbell Bench Press';
INSERT INTO lift_muscles SELECT id, 'tricep', false FROM lifts WHERE name = 'Dumbbell Bench Press';
INSERT INTO lift_muscles SELECT id, 'deltoid', false FROM lifts WHERE name = 'Dumbbell Bench Press';

INSERT INTO lift_muscles SELECT id, 'pectoral', true FROM lifts WHERE name = 'Push-Up';
INSERT INTO lift_muscles SELECT id, 'tricep', false FROM lifts WHERE name = 'Push-Up';
INSERT INTO lift_muscles SELECT id, 'deltoid', false FROM lifts WHERE name = 'Push-Up';

INSERT INTO lift_muscles SELECT id, 'pectoral', true FROM lifts WHERE name = 'Incline Bench Press';
INSERT INTO lift_muscles SELECT id, 'deltoid', false FROM lifts WHERE name = 'Incline Bench Press';

INSERT INTO lift_muscles SELECT id, 'pectoral', true FROM lifts WHERE name = 'Decline Bench Press';
INSERT INTO lift_muscles SELECT id, 'deltoid', false FROM lifts WHERE name = 'Decline Bench Press';

INSERT INTO lift_muscles SELECT id, 'pectoral', true FROM lifts WHERE name = 'Chest Fly';
INSERT INTO lift_muscles SELECT id, 'deltoid', false FROM lifts WHERE name = 'Chest Fly';

INSERT INTO lift_muscles SELECT id, 'pectoral', true FROM lifts WHERE name = 'Cable Fly';
INSERT INTO lift_muscles SELECT id, 'deltoid', false FROM lifts WHERE name = 'Cable Fly';

INSERT INTO lift_muscles SELECT id, 'pectoral', true FROM lifts WHERE name = 'Dips';
INSERT INTO lift_muscles SELECT id, 'tricep', false FROM lifts WHERE name = 'Dips';

INSERT INTO lift_muscles SELECT id, 'pectoral', true FROM lifts WHERE name = 'Machine Chest Press';

INSERT INTO lift_muscles SELECT id, 'pectoral', true FROM lifts WHERE name = 'Decline Dumbbell Press';

INSERT INTO lift_muscles SELECT id, 'pectoral', true FROM lifts WHERE name = 'Pec Deck';

-- Shoulders
INSERT INTO lift_muscles SELECT id, 'deltoid', true FROM lifts WHERE name = 'Overhead Press';
INSERT INTO lift_muscles SELECT id, 'tricep', false FROM lifts WHERE name = 'Overhead Press';

INSERT INTO lift_muscles SELECT id, 'deltoid', true FROM lifts WHERE name = 'Arnold Press';
INSERT INTO lift_muscles SELECT id, 'tricep', false FROM lifts WHERE name = 'Arnold Press';

INSERT INTO lift_muscles SELECT id, 'deltoid', true FROM lifts WHERE name = 'Lateral Raise';

INSERT INTO lift_muscles SELECT id, 'deltoid', true FROM lifts WHERE name = 'Front Raise';

INSERT INTO lift_muscles SELECT id, 'deltoid', true FROM lifts WHERE name = 'Rear Delt Fly';
INSERT INTO lift_muscles SELECT id, 'trapezius', false FROM lifts WHERE name = 'Rear Delt Fly';

INSERT INTO lift_muscles SELECT id, 'deltoid', true FROM lifts WHERE name = 'Upright Row';
INSERT INTO lift_muscles SELECT id, 'trapezius', false FROM lifts WHERE name = 'Upright Row';

INSERT INTO lift_muscles SELECT id, 'deltoid', true FROM lifts WHERE name = 'Machine Shoulder Press';
INSERT INTO lift_muscles SELECT id, 'tricep', false FROM lifts WHERE name = 'Machine Shoulder Press';

INSERT INTO lift_muscles SELECT id, 'deltoid', true FROM lifts WHERE name = 'Cable Lateral Raise';

INSERT INTO lift_muscles SELECT id, 'deltoid', true FROM lifts WHERE name = 'Front Plate Raise';

INSERT INTO lift_muscles SELECT id, 'deltoid', true FROM lifts WHERE name = 'Reverse Pec Deck';

-- Back / Pull
INSERT INTO lift_muscles SELECT id, 'latissimus_dorsi', true FROM lifts WHERE name = 'Deadlift';
INSERT INTO lift_muscles SELECT id, 'hamstring', false FROM lifts WHERE name = 'Deadlift';
INSERT INTO lift_muscles SELECT id, 'gluteus_maximus', false FROM lifts WHERE name = 'Deadlift';
INSERT INTO lift_muscles SELECT id, 'trapezius', false FROM lifts WHERE name = 'Deadlift';

INSERT INTO lift_muscles SELECT id, 'latissimus_dorsi', true FROM lifts WHERE name = 'Pull-Up';
INSERT INTO lift_muscles SELECT id, 'bicep', false FROM lifts WHERE name = 'Pull-Up';

INSERT INTO lift_muscles SELECT id, 'latissimus_dorsi', true FROM lifts WHERE name = 'Lat Pulldown';
INSERT INTO lift_muscles SELECT id, 'bicep', false FROM lifts WHERE name = 'Lat Pulldown';

INSERT INTO lift_muscles SELECT id, 'latissimus_dorsi', true FROM lifts WHERE name = 'Barbell Row';
INSERT INTO lift_muscles SELECT id, 'bicep', false FROM lifts WHERE name = 'Barbell Row';
INSERT INTO lift_muscles SELECT id, 'trapezius', false FROM lifts WHERE name = 'Barbell Row';

INSERT INTO lift_muscles SELECT id, 'latissimus_dorsi', true FROM lifts WHERE name = 'Dumbbell Row';
INSERT INTO lift_muscles SELECT id, 'bicep', false FROM lifts WHERE name = 'Dumbbell Row';

INSERT INTO lift_muscles SELECT id, 'latissimus_dorsi', true FROM lifts WHERE name = 'T-Bar Row';
INSERT INTO lift_muscles SELECT id, 'bicep', false FROM lifts WHERE name = 'T-Bar Row';

INSERT INTO lift_muscles SELECT id, 'latissimus_dorsi', true FROM lifts WHERE name = 'Seated Cable Row';
INSERT INTO lift_muscles SELECT id, 'bicep', false FROM lifts WHERE name = 'Seated Cable Row';

INSERT INTO lift_muscles SELECT id, 'trapezius', true FROM lifts WHERE name = 'Face Pull';
INSERT INTO lift_muscles SELECT id, 'deltoid', false FROM lifts WHERE name = 'Face Pull';

INSERT INTO lift_muscles SELECT id, 'latissimus_dorsi', true FROM lifts WHERE name = 'Wide Grip Pull-Up';
INSERT INTO lift_muscles SELECT id, 'bicep', false FROM lifts WHERE name = 'Wide Grip Pull-Up';

INSERT INTO lift_muscles SELECT id, 'latissimus_dorsi', true FROM lifts WHERE name = 'Neutral Grip Pull-Up';
INSERT INTO lift_muscles SELECT id, 'bicep', false FROM lifts WHERE name = 'Neutral Grip Pull-Up';

INSERT INTO lift_muscles SELECT id, 'latissimus_dorsi', true FROM lifts WHERE name = 'Reverse Grip Lat Pulldown';
INSERT INTO lift_muscles SELECT id, 'bicep', false FROM lifts WHERE name = 'Reverse Grip Lat Pulldown';

INSERT INTO lift_muscles SELECT id, 'latissimus_dorsi', true FROM lifts WHERE name = 'Single Arm Lat Pulldown';
INSERT INTO lift_muscles SELECT id, 'bicep', false FROM lifts WHERE name = 'Single Arm Lat Pulldown';

INSERT INTO lift_muscles SELECT id, 'latissimus_dorsi', true FROM lifts WHERE name = 'Chest Supported Row';
INSERT INTO lift_muscles SELECT id, 'bicep', false FROM lifts WHERE name = 'Chest Supported Row';

INSERT INTO lift_muscles SELECT id, 'latissimus_dorsi', true FROM lifts WHERE name = 'Inverted Row';
INSERT INTO lift_muscles SELECT id, 'bicep', false FROM lifts WHERE name = 'Inverted Row';

-- biceps
INSERT INTO lift_muscles SELECT id, 'bicep', true FROM lifts WHERE name = 'Barbell Curl';
INSERT INTO lift_muscles SELECT id, 'bicep', true FROM lifts WHERE name = 'Dumbbell Curl';
INSERT INTO lift_muscles SELECT id, 'bicep', true FROM lifts WHERE name = 'Hammer Curl';
INSERT INTO lift_muscles SELECT id, 'bicep', true FROM lifts WHERE name = 'Preacher Curl';
INSERT INTO lift_muscles SELECT id, 'bicep', true FROM lifts WHERE name = 'Concentration Curl';
INSERT INTO lift_muscles SELECT id, 'bicep', true FROM lifts WHERE name = 'Cable Curl';
INSERT INTO lift_muscles SELECT id, 'bicep', true FROM lifts WHERE name = 'EZ Bar Curl';
INSERT INTO lift_muscles SELECT id, 'bicep', true FROM lifts WHERE name = 'Spider Curl';
INSERT INTO lift_muscles SELECT id, 'bicep', true FROM lifts WHERE name = 'Incline Dumbbell Curl';
INSERT INTO lift_muscles SELECT id, 'bicep', true FROM lifts WHERE name = 'Cross Body Curl';

-- Triceps
INSERT INTO lift_muscles SELECT id, 'tricep', true FROM lifts WHERE name = 'Tricep Pushdown';
INSERT INTO lift_muscles SELECT id, 'tricep', true FROM lifts WHERE name = 'Skullcrusher';
INSERT INTO lift_muscles SELECT id, 'tricep', true FROM lifts WHERE name = 'Overhead Tricep Extension';
INSERT INTO lift_muscles SELECT id, 'tricep', true FROM lifts WHERE name = 'Close Grip Bench Press';
INSERT INTO lift_muscles SELECT id, 'tricep', true FROM lifts WHERE name = 'Rope Pushdown';
INSERT INTO lift_muscles SELECT id, 'tricep', true FROM lifts WHERE name = 'Bench Dips';
INSERT INTO lift_muscles SELECT id, 'tricep', true FROM lifts WHERE name = 'Single Arm Pushdown';

-- Legs
INSERT INTO lift_muscles SELECT id, 'quadricep', true FROM lifts WHERE name = 'Leg Press';
INSERT INTO lift_muscles SELECT id, 'quadricep', true FROM lifts WHERE name = 'Front Squat';
INSERT INTO lift_muscles SELECT id, 'quadricep', true FROM lifts WHERE name = 'Goblet Squat';
INSERT INTO lift_muscles SELECT id, 'quadricep', true FROM lifts WHERE name = 'Sissy Squat';
INSERT INTO lift_muscles SELECT id, 'quadricep', true FROM lifts WHERE name = 'Wall Sit';
INSERT INTO lift_muscles SELECT id, 'hamstring', true FROM lifts WHERE name = 'Leg Curl';
INSERT INTO lift_muscles SELECT id, 'calf', true FROM lifts WHERE name = 'calf Raise';
INSERT INTO lift_muscles SELECT id, 'gluteus_maximus', true FROM lifts WHERE name = 'Hip Thrust';
INSERT INTO lift_muscles SELECT id, 'gluteus_maximus', true FROM lifts WHERE name = 'Walking Lunge';
INSERT INTO lift_muscles SELECT id, 'gluteus_maximus', true FROM lifts WHERE name = 'Step Back Lunge';
INSERT INTO lift_muscles SELECT id, 'hamstring', true FROM lifts WHERE name = 'Single Leg Deadlift';
INSERT INTO lift_muscles SELECT id, 'hamstring', true FROM lifts WHERE name = 'Good Morning';
INSERT INTO lift_muscles SELECT id, 'gluteus_maximus', false FROM lifts WHERE name = 'Romanian Deadlift';
INSERT INTO lift_muscles SELECT id, 'quadricep', true FROM lifts WHERE name = 'Bulgarian Split Squat';
INSERT INTO lift_muscles SELECT id, 'quadricep', true FROM lifts WHERE name = 'Hack Squat';
INSERT INTO lift_muscles SELECT id, 'hamstring', true FROM lifts WHERE name = 'Sumo Deadlift';
INSERT INTO lift_muscles SELECT id, 'quadricep', true FROM lifts WHERE name = 'Step-Up';

-- Calves
INSERT INTO lift_muscles SELECT id, 'calf', true FROM lifts WHERE name = 'Seated calf Raise';
INSERT INTO lift_muscles SELECT id, 'calf', true FROM lifts WHERE name = 'Single Leg calf Raise';

-- Traps / Full body
INSERT INTO lift_muscles SELECT id, 'trapezius', true FROM lifts WHERE name = 'Barbell Shrug';
INSERT INTO lift_muscles SELECT id, 'trapezius', true FROM lifts WHERE name = 'Dumbbell Shrug';
INSERT INTO lift_muscles SELECT id, 'trapezius', true FROM lifts WHERE name = 'Shrug';
INSERT INTO lift_muscles SELECT id, 'trapezius', true FROM lifts WHERE name = 'Power Clean';
INSERT INTO lift_muscles SELECT id, 'deltoid', true FROM lifts WHERE name = 'Clean and Press';
INSERT INTO lift_muscles SELECT id, 'trapezius', true FROM lifts WHERE name = 'Snatch';
INSERT INTO lift_muscles SELECT id, 'quadricep', true FROM lifts WHERE name = 'Thruster';

-- Core
INSERT INTO lift_muscles SELECT id, 'trapezius', false FROM lifts WHERE name = 'Plank';
INSERT INTO lift_muscles SELECT id, 'latissimus_dorsi', false FROM lifts WHERE name = 'Hanging Leg Raise';
INSERT INTO lift_muscles SELECT id, 'pectoral', false FROM lifts WHERE name = 'Cable Crunch';