# Snapshot of the zone manager's booking log. Published whenever something
# changes that a waiting robot may care about: a booking granted, changed at
# a zone boundary, handed back, released or revoked, a request refused, or a
# reservation arriving from the reservation node that makes a vertex
# assignable. There is no periodic publisher.
#
# Every message carries the whole log rather than a delta.

# Time the snapshot was published
builtin_interfaces/Time stamp

# All bookings currently held by robots, across all zones.
ZoneBooking[] bookings

# Refusals that go with this publish, filled in only on the publish that
# refuses a request.
ZoneRejection[] rejected

# Go-aheads that name no waypoint, filled in only on the publish that answers
# such a request. Nothing is booked or reserved by one of these.
ZoneProceed[] proceed
