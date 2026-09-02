# Sent by a fleet adapter to the zone manager to claim a waypoint inside a
# named zone, to give one up, or to hand one back after a re-assignment.
# The manager is the only reader.

# Identity of the robot making the request.
string robot_name
string fleet_name

# Unique ID for this request. The manager echoes it in the ZoneState it
# publishes, which is how a robot picks its own answer out of the log.
string request_id

# The zone this request is about.
string zone_name

# request_type:
# ENTRY    = claim a waypoint inside the zone.
# EXIT     = give up the booking held in the zone.
# HANDBACK = let go of `released_waypoint`'s ticket without releasing it, so
#            the manager may take the vertex back.
uint8 ENTRY=0
uint8 EXIT=1
uint8 HANDBACK=2
uint8 request_type

# Optional hints carried from the task description (group preferences,
# orientation hint, preferred internal vertices).
ZoneModifiers modifiers

# The vertex being handed back, for request_type HANDBACK. Empty otherwise.
string released_waypoint
