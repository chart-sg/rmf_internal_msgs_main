builtin_interfaces/Time request_time

# session_id should be unique at least between different requesters.
# For example, session_id could be the requester's node name.
string session_id

# AGV mode means that the doors are always open when the lift is stopped
# Human mode means that LiftDoorRequest messages must be used to open/close
# the doors explicitly, since they may "time out" and close automatically.
uint8 request_type
uint8 REQUEST_END_SESSION=0
uint8 REQUEST_AGV_MODE=1
uint8 REQUEST_HUMAN_MODE=2

# The floor where the requester boards the lift.
# Must be one of the values returned in a LiftState.
string origin_floor

# The floor the requester wants to travel to.
# Must be one of the values returned in a LiftState.
string next_floor

# True if this request should be served ahead of non-priority requests.
bool priority

# Names of the candidate lifts that may serve this request.
# Empty array - requester accepts any lift to be assigned
# Single array elemenet - requester requests for the particular lift only
string[] chosen_lifts
