---
title: NA Kafka notes
date: 2025-02-24 05:58:08
tags:
- noodle
- Java
- NA
- Kafka
categories:
- Noodle
password: 'ees'
---



**. . .**<!-- more -->

# 参考链接

- [视频教程1, kafka一小时入门精讲课程（高清重制无废话版](https://www.bilibili.com/video/BV1h94y1Q7Xg/?vd_source=8a83b38420b65ac33aa101b7754630f6)
- [视频教程2, 尚硅谷Kafka教程，2024新版kafka视频，零基础入门到实战](https://www.bilibili.com/video/BV1Gp421m7UN/?vd_source=8a83b38420b65ac33aa101b7754630f6)

# syllabus

| Session | Topic | Detailed Topics |
|--|--|--|
| 20 | `KAFKA` | 1. Kafka - concepts, how it works and how message is sent to partition<br>2. Consumer Group, assignment strategy<br>3. Message in Order |
| 21 | `KAFKA2` | 1. Kafka Duplicate Message<br>2. Kafka Message Loss<br>3. Poison Failure, DLQ<br>4. Kafka Security (SASL, ACLs, Encrypt etc) |

Here are the differences between `Controller` and `RestController` as well as those between Kafka and RabbitMQ:

# Differences between Kafka and RabbitMQ
- **Message Model**
    - **Kafka**: It is a distributed streaming platform that follows a publish-subscribe model with a messaging system based on topics. Producers send messages to topics, and consumers subscribe to topics to receive messages. It is designed for high-throughput, real-time data streaming and is often used for applications like log aggregation, real-time analytics, and event-driven architectures.
    - **RabbitMQ**: It is a message broker that supports multiple messaging models, including publish-subscribe, point-to-point (queue-based), and request-reply. It is more flexible in terms of message routing and can handle a variety of messaging use cases, such as task queues, asynchronous processing, and message-based communication between different components of an application.
- **Data Durability and Persistence**
    - **Kafka**: It stores messages in a distributed and durable log structure. Messages are written to disk and can be configured to have multiple replicas for fault tolerance. It has a high level of data durability and can handle large volumes of data with efficient disk I/O operations.
    - **RabbitMQ**: It also supports message persistence, but its approach is different. Messages can be persisted to disk, and it uses a combination of in-memory queues and disk storage to manage messages. The durability can be configured based on the specific requirements of the application.
- **Performance and Throughput**
    - **Kafka**: It is optimized for high throughput and low latency in handling large volumes of data. It can handle a large number of messages per second and is well-suited for applications that require real-time processing of streaming data.
    - **RabbitMQ**: It is more focused on reliability and flexibility rather than extreme high throughput. It can handle a significant amount of messages, but its performance characteristics are different from Kafka. It is often used in scenarios where message reliability and guaranteed delivery are more important than raw throughput.
- **Use Cases**
    - **Kafka**: Commonly used in big data processing, real-time analytics, event sourcing, and applications where there is a need to handle and process a large volume of streaming data in real-time. It is also popular in microservices architectures for event-driven communication between services.
    - **RabbitMQ**: Used in a wide range of applications for message queuing, task scheduling, asynchronous communication between different parts of an application, and in enterprise integration scenarios where reliable message delivery and flexible routing are required.
