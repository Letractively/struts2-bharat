# JMS Tutorial #

## 5.0 Publish and subscribe messaging ##

This is popularly called as pub/sub messaging.
Add your content here.

### Key Points ###

  1. Messages are published to a topic as opposed to a queue in Point-to-Point messaging.
  1. Message consumers can be 1) Durable 2) Non-Durable 3) Dynamic types.
  1. Publisher does not generally know anything about subscribers.
  1. Each message is delivered to multiple subscribers.
  1. This is a push based model. ie Messages are pushed to subscribers (P-2-P is pull based).
  1. Messages delivered to a topic are automatically pushed to all qualified subscribers.
  1. As in enterprise messaging in general, there is no coupling of the producers to the consumers. Subscribers and publishers can be added dynamically at runtime, which allows the system to grow or shrink in complexity over time.
  1. Every client that subscribes to a topic receives its own copy of messages published to that topic. A single message produced by one publisher may be copied and distributed to hundreds or even thousands of subscribers.

With the pub/sub model, messages published to a topic are immediately delivered to each subscriber by the JMS Provider. The subscribers do not have to scan topic for messages belonging to them. Rather the JMS provider delivers a copy of the message to each subscriber.

Subscribers can be either durable or nondurable. Nondurable subscribers receive messages
only when that subscriber is currently active and connected to the topic, whereas
durable subscribers receive all desired messages sent to that topic, regardless of whether
that subscriber is active.

Subscribers may also be dynamic or administered. As you will see later in this tutorial,
dynamic durable subscribers can be created on the fly, whereas administered subscribers
are static and known by the JMS provider.

**Interfaces for topics**
| **General API** |        **Publish-and-subscribe API** |
|:----------------|:-------------------------------------|
|ConnectionFactory | TopicConnectionFactory               |
|Destination      |   Topic                              |
|Connection       |   TopicConnection                    |
|Session          |   TopicSession                       |
|MessageConsumer  |   TopicPublisher                     |
|MessageProducer  |   TopicSubscriber                    |

## When to use Pub/Sub Messaging ##
The publish-and-subscribe model is used when you want to broadcast a message or event to multiple message consumers. The important point here is that multiple consumers may consume the message. By design, the pub/sub model will push copies of the message out to multiple subscribers.
> This model is generally used in scenarios like:
    * stock price updates
    * Exception or error notification
    * Change notification for a particular item in the database

Any situation where you need to notify multiple consumers of an event is a good use of the pub/sub model.

An important point to notice here is that the publisher does not care about how the information will be used. It simply publishes to the topic.

## Example Application ##
We will be discussing a small application where a message will be published to a topic whenever an exception is thrown. On the other hand there can be multiple subscribers interested in the message and taking an action depending the criticality of the exception.



