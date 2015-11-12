#Restful Web Services with Jersey and Tomcat.

# Introduction #

This is a tutorial explaining how to write Restful web services using Jersey on Tomcat.


# What is REST #

REST is a software architectural style as described by Roy Fielding in his PhD dissertation published in 2000. It stands for **REpresentational State Transfer**. REST by itself is not an architecture but a set of constraints that, when applied to the design of a system, creates a software architectural style.
> Following constraints define a RESTful system:

  * It must be a client-server system
  * It has to be stateless - there should be no need for the service to keep user's sessions, in other words, each request should be independent of others.
  * It has to support a caching system - the network infrastructure should support cache at different levels.
  * It has to be uniformly accessible - each resource must have a unique address and a valid point of access.
  * It has to layered - it must support scalability
  * It should provide code on demand  - although this is an optional constraint, application ban be expandable at runtime by allowing the downloading of code on demand, for example, java applets.