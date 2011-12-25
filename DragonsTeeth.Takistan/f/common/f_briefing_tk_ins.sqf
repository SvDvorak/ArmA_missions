// F2 - OA Briefing
// Credits: Please see the F2 online manual (http://www.ferstaberinde.com/f2/en/)
// ====================================================================================

// FACTION: TAKISTANI MILITIA

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
*** Insert mission credits here. ***
<br/><br/><br/>
Made with F2 (http://www.ferstaberinde.com/f2/en/)
"]];

// ====================================================================================

// NOTES: ADMINISTRATION
// The code below creates the administration sub-section of notes.

_adm = player createDiaryRecord ["diary", ["Administration","
<br/>
*** Insert information on administration and logistics here. ***
"]];

// ====================================================================================

// NOTES: EXECUTION
// The code below creates the execution sub-section of notes.

_exe = player createDiaryRecord ["diary", ["Execution","
<br/>
COMMANDER'S INTENT
<br/>
*** Insert very short summary of plan here. ***
<br/><br/><br/>
MOVEMENT PLAN
<br/>
*** Insert movement instructions here. ***
<br/><br/><br/>
FIRE SUPPORT PLAN
<br/>
*** Insert fire support instructions here. ***
<br/><br/><br/>
SPECIAL TASKS
<br/>
*** Insert instructions for specific units here. ***
"]];

// ====================================================================================

// NOTES: MISSION
// The code below creates the mission sub-section of notes.

_mis = player createDiaryRecord ["diary", ["Mission","
<br/>
*** Insert the mission here. ***
"]];

// ====================================================================================

// NOTES: SITUATION
// The code below creates the situation sub-section of notes.

_sit = player createDiaryRecord ["diary", ["Situation","
<br/>
*** Insert general information about the situation here.***
<br/><br/><br/>
ENEMY FORCES
<br/>
*** Insert information about enemy forces here.***
<br/><br/><br/>
FRIENDLY FORCES
<br/>
*** Insert information about friendly forces here.***
<br/><br/><br/>
"]];

// ====================================================================================