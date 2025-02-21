---
title: NA contractor knowledge outline
date: 2025-02-21 04:18:08
tags:
- noodle
- Java
- NA
categories:
- Java
password: '886'
---



**. . .**<!-- more -->

| Session | Topic | Detailed Topics |
|--|--|--|
| 1 | JVM STRING FINAL | 1. Warm Up<br>2. JVM Memory Management<br>3. JVM, JDK, JRE<br>4. Garbage Collection<br>5. String & StringBuilder & StringBuffer<br>6. Final, Finally, Finalize<br>7. Immutable class (optional: basic syntax of java) |
| 2 | STATIC OOP | 1. Static<br>2. Marker Interface - Serializable, Cloneable<br>3. OOP<br>4. SOLID Principle<br>5. Reflection<br>6. Generics |
| 3 | COLLECTION | 1. Array vs ArrayList vs LinkedList<br>2. Set, TreeSet, LinkedHashSet<br>3. Map, LinkedHashMap, ConcurrentHashMap(how it works)<br>4. SynchronizedMap<br>5. Iterator vs Enumeration |
| 4 | EXCEPTION DESIGN PATTERN | 1. Design Pattern - Singleton, Factory, Observer, Proxy<br>2. Exception Type - compile, runtime, customized |
| 5 | THREADS | 1. MultiThreads Interaction (Synchronized, Atomic, ThreadLocal, Volatile)<br>2. Reentrant Lock<br>3. Executor and ThreadPool, ForkJoinPool<br>4. Future & CompletableFuture<br>5. Runnable vs Callable<br>6. Semaphore vs Mutex |
| 6 | JAVA8,17 | 1. Java 8: Functional Interface, Lambda, Stream API (map, filter, sorted, groupingBy etc), Optional, Default<br>2. Java 17: Sealed Class, advantage vs limitation, across package |
| 7 | SQL | 1. Primary Key, Normalization<br>2. Different type of Joins<br>3. Top asked SQLs - nth highest salary; highest salary each department; employee salary greater than manager<br>4. Introduce of Stored Procedure and Function<br>5. Cluster index vs Non - Cluster - Index<br>6. Explain Plan - what does it do, what can it tell |
| 8 | NOSQL | 1. SQL vs NoSQL<br>2. MongoDB vs Cassandra introduction<br>3. ACID vs CAP rules explanation |
| 9 | REST API | 1. DispatcherServlet<br>2. Rest API<br>3. How to create a good rest api<br>4. Http Error Code: 200, 201, 400, 401, 403, 404, 500, 502, 503, 504<br>5. Introduction of GraphQL, WebSocket, gRPC<br>6. ReactiveJava |
| 10 | SPRING CORE | 1. IOC/DI<br>2. Bean Scope<br>3. Constructor vs Setter vs Field based injection |
| 11 | SPRING ANNOTATIONS | 1. Different spring annotations<br>2. @Controller vs @RestController<br>3. @Qualifier, @Primary<br>4. Spring Cache and Retry |
| 12 | SPRING BOOT | 1. How to create spring boot from Scratch<br>2. Benefit of Spring boot<br>3. Annotation @SpringBootApplication<br>4. AutoConfiguration, how to disable<br>5. Actuator |
| 13 | SPRING BOOT2 | 1. Spring ActiveProfile<br>2. AOP<br>3. @ExceptionHandler, @ControllerAdvice |
| 14 | DATA ACCESS | 1. JDBC, statement vs PreparedStatement, Datasource<br>2. Hibernate ORM, Session, Cache<br>3. Optimistic Locking - add version column<br>4. Association: many - to - many |
| 15 | TRANSACTION JPA | 1. @Transactional - atomic operation<br>2. Propagation, Isolation<br>3. JPA naming convention<br>4. Paging and Sorting Using JPA<br>5. Hibernate Persistence Context |
| 16 | SECURITY | 1. How to implement Security by overriding Spring class<br>2. Basic Authentication and password encryption<br>3. JWT Token and workflow<br>4. Oauth2 workflow<br>5. Authorization based on User role |
| 17 | UNIT TEST | 1. Different Type of Tests in whole project lifecycle<br>2. Unit Test, Mock<br>3. Testing Rest Api with Rest Assured |
| 18 | AUTOMATION TEST | 1. BDD - Cucumber - annotations<br>2. Load Test with JMeter<br>3. Performance tool JProfiler<br>4. AB Test |
| 19 | MICROSERVICE | 1. Benefits/Disadvantage of MicroService<br>2. How to split monolithic to microservice<br>3. Circuit Breaker - concept, retry, fallback method<br>4. Load Balancer - concept and algorithms<br>5. API Gateway<br>6. Config Server |
| 20 | KAFKA | 1. Kafka - concepts, how it works and how message is sent to partition<br>2. Consumer Group, assignment strategy<br>3. Message in Order |
| 21 | KAFKA2 | 1. Kafka Duplicate Message<br>2. Kafka Message Loss<br>3. Poison Failure, DLQ<br>4. Kafka Security (SASL, ACLs, Encrypt etc) |
| 22 | DISTRIBUTED SYSTEM | 1. MicroService: how to communicate between services<br>2. Saga Pattern<br>3. Monitoring: Splunk, Grafana, Kabana, CloudWatch etc<br>4. System Design: distributed system |
| 23 | DEVOPS | 1. CICD<br>2. Jenkins pipeline with example<br>3. Git Commands: squash, cherry - pick etc<br>4. On - Call: PageDuty etc<br>5. How do you solve a production issue with or without log |
| 24 | KUBERNETES | 1. Kubernetes, EKS, WCNP, KubeCtl |
| 25 | CLOUD | AWS Modules with examples | 