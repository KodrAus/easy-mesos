# Easy Mesos

This is an attempt to put together a useful set of `docker-compose` tools for managing an Apache Mesos cluster.
It's mostly a learning exercise so the eventual usefulness of said tools is questionable.

A couple of nice-to-have thoughts:

- Support for multiple active clusters on a single machine
- Some basic out-of-the-box Mesosphere services like Mesos DNS and Marathon LB
- Resolve Docker containers from the host's local registry
- Support persistent state (rather than killing slaves and rebuilding)

The base `docker-compose` is adapted from [here](https://github.com/bobrik/mesos-compose).