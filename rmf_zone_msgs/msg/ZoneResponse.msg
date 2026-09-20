# One answer from the zone manager to one robot, carried inside ZoneState.
# Rejections, go-aheads and revocations all ride here, so a robot has a
# single place to look for how its request was handled.

# Time the response was issued.
builtin_interfaces/Time stamp

# Identity of the robot being answered.
string robot_name
string fleet_name

# Echoes the request_id of the ZoneRequest being answered. For a REVOKED
# response it is the request_id of the booking being taken back, which is
# what lets a robot tell a stale revocation from one for the booking it
# currently holds.
string request_id

# The zone this response is about.
string zone_name

# status.
# REJECTED = the request cannot be granted, see reason.
# PROCEED  = enter the zone without a booking, nothing is held for you.
# REVOKED  = a booking you were granted has been taken back, see reason.
#
# REJECTED is zero so that a response from a newer manager carrying a status
# this fleet adapter does not know reads as a refusal, which costs a retry,
# rather than as permission to enter or a booking to drop.
uint8 REJECTED=0
uint8 PROCEED=1
uint8 REVOKED=2
uint8 status

# The waypoint whose booking was revoked, for status REVOKED. Empty
# otherwise.
string assigned_waypoint_name

# Human-readable explanation, for REJECTED and REVOKED. Intended for logs
# and operator UIs.
string reason
