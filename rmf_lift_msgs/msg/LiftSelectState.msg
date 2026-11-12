# Answer from the lift manager to a LiftSelectRequest, published on
# lift_select_states. Requesters should act only on the latest state for
# their session_id.

# state_time records when the information in this message was generated
builtin_interfaces/Time state_time

# session_id of the LiftSelectRequest this state answers.
# Format: <fleet_name>/<robot_name>
string session_id

# The lift selected for this session. Empty when no lift is selected.
string lift_name

uint8 result
# The session holds no lift: no LiftState shows the session any more.
uint8 RESULT_IDLE=0
# The lift in lift_name is selected and lanes are set. The requester may
# now head to the lift.
uint8 RESULT_PROCEED=1
# Selection failed (for example, setting lanes failed). The request is
# dropped and will not be retried; do not resend it. Needs manual
# intervention.
uint8 RESULT_FAILED=2
