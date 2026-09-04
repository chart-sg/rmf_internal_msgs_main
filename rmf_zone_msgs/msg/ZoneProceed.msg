# Sent by the zone manager to let a robot cross into a zone without giving it
# a waypoint.

# Identity of the robot being let in.
string robot_name
string fleet_name

# Echoes the request_id of the original ZoneRequest.
string request_id

# Name of the zone being entered.
string zone_name
