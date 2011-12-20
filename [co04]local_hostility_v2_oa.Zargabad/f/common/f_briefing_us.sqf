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

// ====================================================================================

// NOTES: CREDITS
// The code below creates the administration sub-section of notes.

_cre = player createDiaryRecord ["diary", ["Credits","
<br/>
Made by Andreas 'SvDvorak'
<br/><br/><br/>
Made with F2 (http://www.ferstaberinde.com/f2/en/)
"]];


// ====================================================================================

// NOTES: MISSION
// The code below creates the mission sub-section of notes.

_mis = player createDiaryRecord ["diary", ["Mission","
<br/>
Move into Zargabad and destroy the <marker name = 'TargetLocation'>stolen ammoboxes and truck</marker>.
"]];

// ====================================================================================

// NOTES: SITUATION
// The code below creates the situation sub-section of notes.

_sit = player createDiaryRecord ["diary", ["Situation","
<br/>
At 1000 hostile militia launched a surprise attack at Zargabad and pushed out the handfull of US troops stationed there. Left behind were two ammo boxes, with special weapons and ordinance, and one truck. It is imperative that this equipment does not come into use by the hostile forces.
<br/><br/><br/>
ENEMY FORCES
<br/>
Multiple squads of hostiles have been spotted patrolling around the town but more might me hiding in buildings.
<br/><br/><br/>
FRIENDLY FORCES
<br/>
There are no other friendly forces for miles, you are on your own.
<br/><br/><br/>
"]];

// ====================================================================================