---
title: NA contractor knowledge syllabus 3
date: 2025-03-01 02:40:08
tags:
- noodle
- Java
- NA
- Syllabus
categories:
- Noodle
password: 'ees'
---



**. . .**<!-- more -->


{% post_link na_contractor_java_backend_syllabus %}
{% post_link na_contractor_java_backend_syllabus2 %}



# session 1

- What is Java variables and How to declare Java variables?
- What are Java data types?
- What are Primitive data types in Java?
- What is wrapper class in Java and Why we need wrapper class?
- What is the differences between passing by value and passing be reference?
- What is an Immutable class in Java?
- How to create a custom immutable class in Java?
- What is String pool in Java and why we need String pool?
- What are the results of following expressions? Please include the calculation process.
    * `5 & 6`
    * `5 | 6`
    * `5 ^ 6`
- What is toString() and why we need it?
- OutOfMemoryError vs StackOverflowError vs Memory Leak
- How to make class immutable?
- How does string works? Why is String immutable in Java?
- What's Garbage collection types and Whats new in java 8?
- JDK vs JRE vs JVM


# session2

- What is static field and static method?
- What is Object in Java and why we need object?
- What is Inheritance and how many types of inheritance are supported by Java?
- What is Interface and what is abstract class? What are the differences between them?
- What is Polymorphism? And how Java implements it?
- What is the differences between overriding and overloading?
- What is Encapsulation? How Java implements it? And why we need encapsulation?
- What is the difference between abstraction and encapsulation?
- Can we use this keyword in constructor and why?
- Abstract class vs. Interface. When to use abstract class and when to use interface?
- Generics and how do you use generics in your project?
- Java OOP 4 principles, and explain each of them
- Serialization, What is Serializable and SerialVersionUID?
- why using static and why not?
- what is SOLID principle?
- What is externalization and its difference with serialization
- Basic principles of the OOP
- Why Inheritance? / Benefit of using Inheritance
- Inheritance vs. Composition/Aggregation -> IS-A and HAS-A
- Can a class inherits multiple parent classes? / Is multiple inheritance allowed? Why?


# session3

- Describe the Collections Type Hierarchy. What Are the Main Interfaces, and What Are the
- Differences Between Them?
- What are List interface implementations and what are the differences between them and
- when to use what?
- What are Queue interface implementations and what are the differences and when to use
- what?
- What are Set interface implementations and what are the differences and when to use
- what?
- Explain the structure of the Deque implementation of LinkedList and its usage.
- What are the differences between HashMap, LinkedHashMap and TreeMap?
- What is the hashCode() and equals() function?
- How Is HashMap Implemented in Java? How Does Its Implementation Use hashCode and
- equals Methods of Objects? What Is the Time Complexity of Putting and Getting an
- Element from Such Structure?
- What are the differences between SynchronizedMap and ConcurrentHashMap?
- HashMap: how does it work internally, what is hash collision
- HashTable vs. HashMap
- ArrayList vs LinkedList, which one to choose?
- How does arraylist work internally?
- How does ConcurrentHashMap works?
- Relationship between equals() and hashcode()
- Difference between HashSet and TreeSet, HashMap and TreeMap
- What is fail-fast and fail-safe?
- HashMap vs LinkedHashMap and HashSet vs LinkedHashSet
- Suppose when you have Employee class to store data, when do you use list or map
- Difference: Arraylist vs LinkedList, when to use which
- Difference between Iterator and Enumeration


# Session4

- What is Builder Pattern and why we need it?
- What is an exception and what is an error in Java? What are the differences
- between them?
- What are the types of exceptions in Java? What are the differences?
- How can we handle an exception in Java?
- What is a custom exception and why do we need to use it?
- What is the difference between the final and finally keywords?
- Is the following code legal?Why?
- Try{
- }finally{
- }
- Is there anything wrong with the following exception handler as written? Will this code compile?
- Match each situation in the first list with an item in the second list.
- a. Scenarios
- i. int number = “four”;
- ii. public void recursion() { recursion(); }
- iii. A program is reading a stream and reaches the end of the stream marker.
- iv. You write code to read from a file but misspelled the filename
- b. Exceptions/Errors
- i. Error
- ii. checked exception
- iii. compile error
- iv. no exception
- What is Proxy Design Pattern?
- What is a Singleton class?
- Types of Exceptions and how do you deal with exceptions in your project?
- Implement a singleton
- Explain the Factory design pattern
- What design patterns did you worked on before?
- How to custom an Exception?
- What is ConcurrentModificationException and how to handle it?


# Session5

- What is Thread and What is Process? What are differences between them?
- How to create threads in Java?
- Runnable or Thread, which do you prefer to using? Why?
- What are differences between start() and run()?
- What if invoking start() method of a thread twice? What if invoking run() method twice?
- What is Thread Life Cycle in Java? Explain how to get to each stage.
- Explain join() method in Java Thread.
- What are differences sleep() and wait()?
- What is Daemon thread in Java? Why do we need it?
- What is thread interference? Give an example.
- What are some of the ways to perform Thread Synchronization?
- What is Deadlock? How to resolve it?
- What is the difference between Runnable and Callable interface?
- What is ExecutorService?
- Describe when you would use @Async and ExecutorService to improve
- the performance of your web application.
- Explain the usage of get() and join() in ExecutorService, what is the
- difference between them?
- Explain the difference between Future and CompletableFuture.
- Do you know about the Executor Service and Future?
- How do you create a thread?
- How does thread communicate/interact/share data with each other?
- What are the meaning of thread methods: join, wait, sleep, yield
- What is the deadlock? How to FIND it? How to avoid it?
- How to make a global count in multithreading environment
- Difference: Synchronized, ThreadLocal, Volatile, AtomicInteger
- Difference: Sleep and Wait
- Difference runnable vs callable
- Difference future vs completableFuture
- How do you implement a deadlock
- Synchronized method vs Synchronized block
- What is difference between synchronized and ReentrantLock


# Session6

1) What is the Stream API in Java 8? What are the differences between
- intermediate and terminal operations for Stream?
1) What is the Optional class in Java and why do we need it?
- New feature of Java 8. Give an example of how you use them in your project
- If java 8 allows default method in interface, so what is the real difference between interface and
- abstract class?
- What is the Functional Interface? Java 8 built in functional interface? Match each situation in the first list with an item in the second list.
    - a. Scenarios
        - i. int number = “four”;
        - ii. public void recursion() { recursion(); }
        - iii. A program is reading a stream and reaches the end of the stream
        - marker.
        - iv. You write code to read from a file but misspelled the filename
    - b. Exceptions/Errors
        - i. Error
        - ii. checked exception
        - iii. compile error
        - iv. no exception
- Explain Marker Interface. (Please also name some built-in marker interfaces provided in Java.)
- Why we need to use break statement in Switch statement?
- What are access modifiers and their corresponding scopes in Java?
- Explain the main method in Java.
- What is the diamond problem in Java? And how can we resolve the problem?
- What is Comparable and Comparator interface? What are differences between them and
- how to use them?
- What is Functional Interface? How do you create your own Functional Interface?
- What is Lambda Expression? Why does Lambda Expression work so closely with
- Functional Interface?
- java 8: Different types of "method reference"
- What is Optional?
- Java 8: Intermediate operator and terminal operator in stream api
- Map vs. FlatMap
- Java switch statement has too many cases, how to improve it
- Comparable vs. Comparator
- New features in java 11 and 17
- What is Java 17 new feature - sealed class


# Session7

- What is data modeling? Why do we need it? When would you need it?
- What is primary key? How is it different from unique key?
- How do you represent a multi-valued attribute in a database? Please describe in detail
- using an example.
- How do you represent a many-to-many relationship in database? Please describe in detail
- using an example.
- What is normalization? Why do you need to normalize?
- What does data redundancy mean? Can you give an example of each?
- What are normal forms?
- What is database integrity? Why do you need it?
- What are joins and explain different types of joins in detail.
- Explain indexes and why are they needed?
- Explain clustered and non-clustered index and their differences.
- If we have 1B data in our relational database and we do not want to fetch all at once. What
- are the ways that we can partition the data rows?
- Different type of Joins.
- Write a query: find the most popular product of one month.
- Explain ACID concepts
- What database did you use and how do you communicate with the DB
- Find the 2nd largest salary in employee table.
- Find employee whose salary is higher than its own manager(only given employee table which
- contains employee id and its manager id)
- Given employee table contain employee id, name,salary and manager id, find the employee
- whose salary is higher than their manager.
- How to delete duplicate rows, only keep unique rows
- Given 2 tables, find the data in both of table that not matching each other
- PreparedStatement vs Statement vs Callable Statement


# Session8

- Explain relational database and non-relational database.
- Difference between SQL and NoSQL.
- Explain CAP Principal.
- What is ACID?
- How do you decide which database to choose, SQL or NoSQL
- Explain CAP theorem and which database use them
- How to find all available keyspaces in Cassandra
- What is consistent hashing in cassandra
- what is cassandra replication strategy
- What is sharding in MongoDB?
- How replication works in MongoDB


# Session9

- What is RESTful Web Service?
- How to create a controller?
- Describe the RESTful principles.
- How does the RestTemplate work.
- What is difference between path variable and query param?
- Http status code you ever met.
- Explain MVC and the order of each components.
- Different types of request mapping/rest api/http methods.
- Comparison between soap and rest.
- When designing a public API, what needs to be considered.
- If define a object in the controller, and then other request update the value of the object, then
- which value will be fetched by a new request?
- Explain the differences between REST and SOAP.
- Explain the usage of @RestController.
- Explain the difference between @RequestBody and @ResponseBody
- How can we communicate with external applications in our Spring application?
- How to handle controller exceptions? How spring handles exception?
- What will happen after clicking the URL?
- Key Difference: Soap vs Rest


# Session10

- What is Dependency Injection?
- What is the di erence between BeanFactory and ApplicationContext in Spring?
- How Can We Inject Beans in Spring?
- Which Is the Best Way of Injecting Beans and Why?
- What is the Scope of a Bean?
- How Does the Scope Prototype Work?
- What Does the Spring Bean Lifecycle Look Like?
- Explain different ways to solve the bean ambiguity when we try to inject dependencies.
- When there is circular dependency, use which type of injection?
- Setter based Injection VS. Constructor based?
- Explain DispatcherSeervlet in detail
- ApplicationContext VS. BeanFactory
- How to inject beans when there are two beans with the same type?
- Spring validation?
- How to make a java class managed by spring?
- How does spring injection singleton bean into prototype bean?
- How to let spring create a bean only when that bean is needed instead of create at beginning
- What about lazy loading a spring bean?
- Spring literal and new and intern() objects
- Why is spring immutable in java?
- How do you use cache in your whole project?
- Spring Annotation you used in your project?
- What is conditional bean in Spring boot?
- What is IoC/Dependency Injection?
- Spring bean annotation, bean life cycle and bean scope
- Spring Bean scope and explain the request scope
- Different ways of DI
- Difference between @Component and @Bean
- When there is circular dependency, use which type of Injection? / Setter based Injection vs.
- Constructor based


# Session12

- What is Spring Boot? How does it differ from Spring?
- What is Spring Retryable?
- Why do you use Spring Boot? / Benefits of Spring Boot
- How to start a Spring Boot project?
- Command to run a spring boot application
- What does @SpringBootApplication mean?
- For Spring Boot, how do I use another server such as WebLogic instead of the embedded
- Tomcat server?
- Regarding @Async 1) what is it for 2) how to define it 3) how to call async method 4) can async
- method be private and why
- Difference between Spring boot and Spring
- How to do cache in spring boot and how to refresh the cache


# Session13

- What is AOP and why do we need it?
- What is Join Point?
- What is Point Cut?
- What is Advice?
- How do you handle exceptions in your Spring Application?
- What is AOP and how do you implement AOP in the project?


# Session14

- What are JDBC statements? List all types of JDBC statements and their usage.
- What is JdbcTemplate? And what are some of the advantages it has over standard JDBC?
- What is ORM and why is it helpful?
- What is Hibernate and what are the advantages of Hibernate over JDBC?
- What is a Session and how do we get a Session?
- 
- If an application uses Hibernate for persistent logic and uses MySQL as persistent store,
- what are the steps that we need to do if the application want to switch to OracleDB from
- MySQL? (Assume table structures remain the same)
- What is a SessionFactory and how do we get a SessionFactory?
- Ways to connect to database?


# Session15

- What is “Offline Transaction”?
- How do we usually perform Transaction Management in JDBC?
- What is Database Transaction? How do you implement transaction?
- What are entity states defined in Hibernate / JPA?
- How can we transfer the entity between different states?
- What are differences between save, persist?
- What are differences between update, merge and saveOrUpdate?
- How do you use elasticSearch in your java application
- How does hibernate internally check if entity version has changed?
- How to configure multiple database using JPA?


# Session16

- Explain the difference between authentication and authorization.
- What is JWT?
- What is Spring Security and what can it help us to achieve?
- How do we secure a RESTful API?
- Have you used security? how do you protect your rest api? how do you protect your
- application?
- How do you implement security for your application or microservices


# Session17

- Explain and name some methods that you used in JUnit.
- Explain and name some annotations that you used in JUnit.
- What is Mockito and the usage of it?
- What kind of test experience do you have?
- Cucumber and its annotations.
- How cucumber works, give an example.
- Functional test & Integration test & Unit test
- What’s the test framework in your team?
- Talk about different test you did before.
- Junit VS. Automation
- What is the limitation of the Mockito?
- Can you mock a static field using Mockito?
- How to test a private method without other framework?
- Difference: InjectMock VS. InjectMockBean?


# Session19

- In your own word, please describe some of the advantages and disadvantages of a
- Monolithic Application.
- In your own word, please describe some of the advantages and disadvantages of a
- Microservice Application.
- What is the purpose of using Netflix Eureka?
- How can microservices communicate with each other?
- What is the purpose of using Spring API Gateway?
- Explain cascading failure in microservice and how to prevent it.
- Explain CircuitBreaker and how it works in detail.
- How much load can your API handle at the same time? What is your RPS
- When your frontend or rest api loads slowly, how do you solve it?
- How to monitor the status of the application?
- What application details are stored in service registry?
- How can you make services communicate with each other? -> Tools like Spring Cloud to setup
- microservice or use message queue like Kafka
- How to use the Zuul Gateway API? / How does the Zuul Gateway API work?
- How to manage the entire transaction across different microservices? How to rollback?
- How to communicate between microservices
- Explain microservice
- What microservice did your team use?
- Disadvantage of microservice
- Synchronous communication and A-Synchrounous commuication in microservice->
- RestTemplate or feign and message queue like Kafka
- vertically and horizontally
- How to deploy microservices to AWS EC2?
- What type of application is suitable for microservice architecture? What type is not?
- Suppose you have two Eureka servers, how does each application know which Eureka server it
- is registered to?
- What is the circuit breaker?
- How does microservices communicate with each other?
- How do you use RestTemplate?
- How do you get noticed when a service is down?
- How to setup service discovery?
- What is Granuarity Line in microserivce
- How check services and their status, what is they are hosted in docker
- How do you config for multiple environments?


# Session20

- Use your own words to explain Kafka.
- Did you use Kafka in your project? How does it work?
- Talk about Kafka and Zookeeper
- How to start and stop kafka server?
- How to prevent data loss in kafka
- How to keep message order in Kafka
- Kafka how to let two consumers read the same message
- Kafka how to determine the consumption rate


# session22

- How do you monitor your application? Please provide examples.
- Explain the difference between these log levels: INFO, WARN, ERROR.
- If you have error, but it is not showing in log, how do you debug and find it?
- How to prevent duplicate message in kafka
- What is kafka dead letter queue and how do you handle it?
- How to implement security to kafka. Kafka Security


# Session23

- Use your own words to explain Jenkins.
- Can you talk about CI/CD?
- Git command you used in the project
- How do you release from the git repository
- How do you combine several commits together
- What is git cherry-pick
- difference between git and svn
- difference git merge and rebase


# Session24

- How to deploy microservice in AWS container


# Session25

- AWS difference between parameter store and secret manager
- AWS where to store certificate file


# extra

(those we are not sure which session to put in)

- Use your own words to explain TDD and why use TDD.
- Please do some research on Redis and use your own words to explain what Redis is.
- Use your own words to explain what Swagger is.
- Please do some research on ELK and use your own words to explain what they are.
- Use your own words to explain Jira.
- What is RabbitMQ and what can it help us to achieve in a web application?
- What are the component of RabbitMQ?
- What are different types of Exchange that exist in RabbitMQ?
- What is Scheduler and what can it help us to achieve in a web application?
- What is Maven and why it is used?
- What is POM? And what information does POM contain?
- What is Maven Repository? What is Maven Central Repository? What is local Maven
- Repository?
- What is JAR and WAR? What are the di erences?
- What is Connection Pool and its advantages?
- What are some of the configurations for Connection Pool?
- Difference between get and load?
- What is flush method? Why do we need it?
- What is evict method? Can you provide an example where you used it?
- How to use docker in the Spring Boot?
- ElasticSearch why do you use it
- How does Java class loader work?
- Shallow copy vs. Deep copy
- When implements Serializable, what if you don't define the serialVersionUID? What if you
- remove it?
- Design a Employee Voting system according to the requirements
- Design a parking lot according to the requirements
- When you API request or Frontend page loading slowly, how do you handle it?