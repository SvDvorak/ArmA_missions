// F2 - OA Briefing
// Credits: Please see the F2 online manual (http://www.ferstaberinde.com/f2/en/)
// ====================================================================================

// FACTION: US

// ====================================================================================

// TASKS
// The code below creates tasks. A (commented-out) sample task is included.

// _task1 = player createSimpleTask ["OBJ_1"];
// _task1 setSimpleTaskDescription ["IN DEPTH OBJECTIVE DESCRIPTION", "SHORT OBJECTIVE DESCRIPTION", "WAYPOINT TEXT"];
// _task1 setSimpleTaskDestination WAYPOINTLOCATION;
// _task1 setTaskState "Created";

extractionTask = player createSimpleTask["Extract"];
extractionTask setSimpleTaskDescription["After clearing checkpoints, extract to the <marker name = 'ExtractionPoint'>north-east of Rasman</marker>.", "Extract", "Extract"];
extractionTask setSimpleTaskDestination(getMarkerPos "ExtractionPoint");

checkpoint3Task = player createSimpleTask["Clear checkpoint 3"];
checkpoint3Task setSimpleTaskDescription["Remove dragonsteeth at <marker name = 'Checkpoint3'>checkpoint 3</marker>.", "Clear checkpoint 3", "Clear checkpoint 3"];
checkpoint3Task setSimpleTaskDestination(getMarkerPos "Checkpoint3");

checkpoint2Task = player createSimpleTask["Clear checkpoint 2"];
checkpoint2Task setSimpleTaskDescription["Remove dragonsteeth at <marker name = 'Checkpoint2'>checkpoint 2</marker>.", "Clear checkpoint 2", "Clear checkpoint 2"];
checkpoint2Task setSimpleTaskDestination(getMarkerPos "Checkpoint2");

checkpoint1Task = player createSimpleTask["Clear checkpoint 1"];
checkpoint1Task setSimpleTaskDescription["Remove dragonsteeth at <marker name = 'Checkpoint1'>checkpoint 1</marker>.", "Clear checkpoint 1", "Clear checkpoint 1"];
checkpoint1Task setSimpleTaskDestination(getMarkerPos "Checkpoint1");

// ====================================================================================

// NOTES: CREDITS
// The code below creates the administration sub-section of notes.

_cre = player createDiaryRecord ["diary", ["Credits","
<br/>
Created by Andreas 'SvDvorak'
<br/><br/><br/>
Made with F2 (http://www.ferstaberinde.com/f2/en/)
"]];

// ====================================================================================

// NOTES: MISSION
// The code below creates the mission sub-section of notes.

_mis = player createDiaryRecord ["diary", ["Mission","
<br/>
Use your engineers to get close and remove all Dragons Teeth blockades along the road from Bastam to Rasman.
"]];

// ====================================================================================

// NOTES: SITUATION
// The code below creates the situation sub-section of notes.

_sit = player createDiaryRecord ["diary", ["Situation","
<br/>
In the last couple of days takistani insurgents have taken and secured the road leading north from Bastam to Rasman.
Along the road they have set up Dragons Teeth to hinder any vehicle movement.
Command wants this situation rectified, use your engineers to remove these concrete slabs so that US tanks can roll through.
<br/><br/><br/>
ENEMY FORCES
<br/>
Many small groups of lightly armed insurgents are patrolling the surrounding area of each blockade and there might also be hostiles holding nearby buildings.
<br/><br/><br/>
FRIENDLY FORCES
<br/>
None.
<br/><br/><br/>
"]];

// ====================================================================================