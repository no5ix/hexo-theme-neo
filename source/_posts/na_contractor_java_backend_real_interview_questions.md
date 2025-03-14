---
title: NA contractor interview notes
date: 2025-02-19 02:45:08
tags:
- noodle
- Java
- NA
categories:
- Noodle
password: 'ees'
---



**. . .**<!-- more -->


# Pilot Training Questions

## Mock

### BQ

#### Self - Introduction

**requirements**:  
- Prepare a fluent self-introduction and a detailed summary of work/project experience.
- Familiarize yourself thoroughly with your resume.Be ready to elaborate on your roles, achievements, and technologies/tools you used.

> Hey there! I’m Michael Hu.

I’ve been working as a Java backend developer for over ten years now, and I have experience building scalable, high-performance systems to solve real business problems.

I'm good at Java and Spring Boot. I used them to design and run backend systems stably. And I used them to create many RESTful APIs. These APIs have detailed documentation, and I used these APIs, to make many different micro services communicate with each other in a distributed environment.  

- For **database**, I mainly use MySQL and MongoDB and redis, I’ve got plenty of experience with Hibernate and JPA for data persistence. (I design complex schemas, optimize queries, and ensure data integrity)
- For **data processing**, I also work with Apache `/ əˈpætʃi /` Kafka for real-time data processing, to build event-driven architectures that handle high-throughput data streams and scalable messaging systems.
- For **security**, I use Spring Security, OAuth2, JWT to implement authentication and authorization, to make sure everything is secure.
- For **cloud platforms**, I worked with many AWS services. I use EC2 to deploy and manage virtual servers, RDS to handle relational databases, S3 to handle scalable storage, ECS to orchestrate `/ ˈɔːrkɪstreɪt /` Microservices in containers, I use CloudWatch to track performance, monitor logs, metrics, and system health.

参考:  
- **EC2** (Elastic Compute Cloud) → Deploy and manage virtual servers
    1. I use EC2 to launch, configure, and manage scalable virtual machines for running applications. It allows me to choose different instance types based on computing needs and ensures high availability.
- **RDS** (Relational Database Service) → Manage relational databases
    1. I use RDS to host and manage relational databases like MySQL, PostgreSQL, and SQL Server, handling automated backups, scaling, and maintenance `/ ˈmeɪntənəns /` without manual server management.
- **S3** (Simple Storage Service) → Store and retrieve any amount of data
    1. I use S3 for storing and retrieving large amounts of data, such as logs, backups, images `/ ˈɪmɪdʒ /` , and static website assets. It provides high durability and scalability.
- **CloudWatch**: monitoring
    1. I use CloudWatch to track performance, monitor logs, metrics, and system health.
- ECS(Elastic Container Service): 运行 & 管理 Docker 容器(支持 Fargate 无服务器模式)
- EKS(Elastic Kubernetes Service): 托管 Kubernetes 集群，简化容器编排。


#### Work/Project Summary

**requirements**: Prepare 1-2 examples of past projects or jobs where you made a significant impact. Use the STAR method (Situation, Task, Action, Result) to structure your responses. DO NOT READ, we can tell!

- **Project 1**: Russell Investments - Backend Developer (Nov 2022 - Present, Seattle, WA)
    - **Situation**: First, let me talk about the company I’m currently working for. its name is Russell Investments,  it's a fintech company, and our company provides some services like: asset management, investment consulting, and financial advices. I’m a senior backend java developer there. Because the number of financial transactions was growing very fast, but their old backend couldn’t keep up with new features and increasing user activity, so we needed a stronger backend system.
    - **Task**: So my job is to build a scalable microservices-based backend, and optimize the database-related parts and enhance security.
    - **Action**: So I had to take some actions to finish my task. so First,(根据从处理数据一点点到部署的顺序记忆)
        - **to handle scalability**, I used springboot to developed a modular microservices architecture and designed plenty of RESTful APIs. Each service handled a specific function, like user management, poll management, and data analysis. 
        - **to handle security**, I used Spring Security and OAuth2 for authentication and authorization.
        - **to handle data processing**, I used Kafka to make data analysis much faster.
        - **to handle database**, I used Redis caching to reduce database load and speed up responses. I also optimized database queries by adding indexes, removing redundant joins.
        - **to handle storage**, I integrated AWS RDS to enhance data management. , integrating third-party analysis tools.
        - **to handle deployment**, I used Docker and Kubernetes to handle it.
    - **Result**: as the result, The new microservices architecture made the system more flexible and easier to maintain. and the platform also became more scalable and efficient, like: because our API response times improved by **30%**, so now our system handled **20%** more daily transactions, and user engagement went up by **25%** .
- **Project 2**: Prodege `/proʊdeɪˈʒeɪ/` - Backend Developer (Aug 2019 - Nov 2022, El Segundo, CA)
    - **Situation**: As for the second company, Prodege, it is an online marketing company, I’m a senior backend java developer there. it was growing fast, but their old backend couldn’t keep up with new features and increasing user activity.
    - **Task**: so my task was to (I was responsible for building) build a scalable microservices-based backend. This included designing RESTful APIs, integrating third-party analysis tools, and ensuring high performance and reliability.
    - **Action**: So I had to take some actions to finish my task. so I developed a modular microservices architecture using Spring Boot. Each service handled a specific function, like user management, poll management, and data analysis. For real-time data processing, I used Kafka to make data analysis much faster. I also used Docker and Kubernetes to handle deployment.
    - **Result**:  as the result, The new microservices setup made the system more flexible and easier to maintain. And our marketing campaigns got more effective, the performance improved significantly, and user engagement went up by 25%


#### 15 behavioral questions

- **Example Question**: If you are working on a sprint and your manager suddenly assigns you a new task that needs to be finished as soon as possible, what would you do?
- **Example Answer**: 
    - **General approach**: Usually, This is really normal for me. First I will connect with manager to get an idea on the priority of the task, and reorg my priorities. ( in the middle say something like gotta be a reason manager made the choice)   
    - **Personal experience**: for example, I remember once I was working on a ticket to do xxxx, suddenly manager assigned a new ticket for me, it’s hey related to the production issue and the manager thinks I  have the ability to do that.  the production issue is about xxxx (briefly talking). In the final, manager is really happy about how quickly I solved the issue

**15 real** mock questions below:  

1. Why did you leave your last job?
    - **Personal experience**: 
        - Because I wanted something more challenging and a job that fit my career plans better. I wanted to find a place where I can use my skills to really make a difference.
        - That's why I'm really excited about this job at your company. I researched your company and your project, Your company's job description is a total match for my work experience. I can really get things done. And there's also new stuff to learn.
        - For example, I really like Kafka, but I've never done a whole lot of development with it. This new job seems super suitable for me, and I'm really excited about it.
        - and I really think I can use the stuff from my old company to help your project succeed.
2. Describe a major conflict within or outside your team and how you handled it, or how you dealt with a difficult team member.
    - **General approach**: Usually, I first figure out what’s causing the issue, then have a one-on-one chat to talk with the team member. We consider the goals and find a way to reach a compromise, especially when deciding on different approaches.
    - **Personal experience**: for example, At my previous company, I remember once I disagreed with a frontend developer on the API design. He wanted something simple, but I knew we needed something more scalable. After discussing the issue and considering the advantages and disadvantages, we found a compromise that worked, and the project turned out great.
3. Describe a time when you had difficulty completing a task or making progress.
    - **General approach**: Usually, I break down the task into smaller parts and figure out what’s causing the issue. I then research solutions and ask for advice from colleagues or online communities if necessary.
    - **Personal experience**: for example, At my previous company, REI, I had trouble dealing with slow database queries for our inventory system.  After breaking them down, I found unoptimized joins. I researched MySQL optimizations and worked with a senior colleague. I added some indexes and reduced query time by 50%.
4. If your manager asks you to change something that you think is already good enough, how would you handle it?
    - **General approach**: Usually, I listen to my manager’s reasons and then I share my view and show some data to support it. If needed, I think we could come up with a compromise ...
    - **Personal experience**: for example, I remember once I used Memcached to do the caching. but my manager wanted to switch technologies, he wanted to use Redis. So we ran some tests to compare their performance and we found that redis was better, and we found that Redis is also better than Memcached in many other ways. like:
        - for data processing, redis can handle different kinds of data, like lists, sets, and hashes. but Memcached can only deal with key - value pairs.
        - for data persistence, redis can store data on the disk, but memcache can not.
    - so finally, we decided to use redis, because redis is way better than Memcached.
5. Why do you want to join our team?
    <!-- - **General approach**: Usually, I research the company and explain how my skills align with its goals and values. -->
    - **Personal experience**: After researching your company and learning about your work, I realized that the stuff I know, like Java, Springboot, MySQL, Redis, and Kafka from my old job, could really help your project succeed.
6. Are you familiar with Agile `/ ˈædʒ(ə)l /` processes and Waterfall methodology `/ ˌmeθəˈdɑːlədʒi /`?
    - **General approach**: Agile works in an iterative `/ ˈɪtəreɪtɪv/` way. It breaks work into small cycles. This way, you can get feedback all the time and make changes as you go. Waterfall is different. It's sequential. That means you have to follow the steps one by one.
    - **Personal experience**: In my experience, Agile is really good for projects that are fast - paced and need to be flexible. for example, At my previous company, we used Scrum. We had two - week sprints and daily stand - up meetings. This helped us change things fast based on what users said. But for smaller projects where everything is clearly defined, like a school project, I use Waterfall, When you have a clear plan from the beginning to the end, it's easier to get the work done. ( Both methods are useful in their own ways, but I like Agile better because it can adapt to different situations. )
7. What does a typical day look like for you?
    <!-- - **General approach**: Usually, I start by reviewing emails and my to-do list, then spend most of the day coding, with meetings for progress updates or issue - solving. I end the day by updating my progress and planning the next day. -->
    - **Personal experience**: Usually, I start with a stand-up meeting, and then I will reviewing emails and my to-do list, and do some coding, debugging, and attending a code review. At the end of the day, I update my progress and plan for the next day.
8. What do you think are the most important factors for a successful team?
    - **General approach**: Good communication, clear goals, trust, and a positive learning attitude are key for a team to succeed.
    - **Personal experience**: for example, at my previous company, REI, we finished the project earlier and met the new security requirements, because we had clear communication and a very clear goal, and we trust each other and everyone worked as a team.
9.  If you are working on a sprint and your manager suddenly assigns you a new task that needs to be finished as soon as possible, what would you do?
    - ChatGPT:
        - **General approach**: Usually, I assess the new task, communicate its impact on my current work, and re - prioritize tasks if necessary.
        - **Personal experience**: for example, At Russell Investments, I paused a query optimization task to fix a security vulnerability. With help from a colleague, I completed the fix within a day and returned to my original task.
    - Zihan: 
        - **General approach**: This is really normal for me. First I will connect with manager to get an idea on the priority `/ praɪˈɔːrəti /` of the task, and reorganize my priorities. ( in the middle say something like gotta be a reason manager made the choice)   
        - **Personal experience**: for example, I remember once I was working on a ticket to implement a new API endpoint, suddenly manager assigned a new ticket for me, it’s related to the production issue, which was about the delays in order processing, and the manager thought I have the ability to do that. Finally, manager is really happy about how quickly I solved the issue. 
10. Tell me something about yourself that is not on your resume.
    <!-- - **General approach**: Usually, I share hobbies or experiences that have helped develop useful skills. -->
    - **Personal experience**:  I like to develop some productivity tools, like shell tool, I once developed a zshell plugin that can search everything very quickly with the key tab, and I once developed a chrome plugins, which can show the table of content for the web pages, so we can navigate to the chapter whatever we want very quickly, it's very helpful to read the long technical articles, and I introduced these tools to my team members, which helped them complete their work more efficiently and also enhanced my coding skills.
11. Tell me about a difficult project or challenge you faced and how you handled it.
    <!-- - **General approach**: Usually, I use the STAR method (Situation, Task, Action, Result) to explain how I overcame challenges. -->
    - **Personal experience**: 
        - **Situation**: I remember once we had to integrate a new payment system into our platform. But this system had really complicated security requirements.
        - **Task**: My job was to make sure the payment system  was integrated seamlessly , and it should  meet all security standards.
        - **Action**: I did a lot of research. I talked to the support team for the payment system and worked with security experts to figure out the best way to integrate it. I dealt with all the tough parts of authentication and encryption to keep everything safe.
        - **Result**: Finally, I made it work, And because of it, virtual goods purchases increased by 30% as a result. 
12. Share a time when you made a mistake in a team setting, how you resolved it, and what you learned from the experience.
    <!-- - **General approach**: Usually, I admit mistakes early, analyze the cause, fix it, and share lessons learned with the team. -->
    - **Personal experience**: 
        - **Situation**: I remember once I made a mistake and let some sensitive user data show up in an API. It was a security issue.
        - **Task**: I needed to quickly solve the problem to protect user data and make sure this kind of thing didn't happen again in the future.
        - **Action**: I took some actions to fix the security problem. I added checks and controls to limit data access to those who could access the data. Then I held a meeting and made a presentation about this problem. and we discussed how to prevent this kind of problem from happening again in the future.
        - **Result**: After that, our code review process became better and we added stricter security checks and more reviews. 
13. Do you have on-call experience, and are you comfortable with overnight on-call duties?
    <!-- - **General approach**: Usually, I discuss my on - call experience or my willingness to handle stress and emergencies if I don’t have experience. -->
    - **Personal experience**: this is very normal for me, I'm totally comfortable with overnight on-call duties. I remember when I was at my REI,  I was on call during busy times. and there was a problem with the database, I fixed it quickly and got the service running again.
14. Do you know what pair programming is, and what are your thoughts on it?
    - **General approach**: yeah, I know pair programming is, it is like two programmers work together, and then we can get some benefits like better code quality and knowledge sharing.
    - **Personal experience**: when I was at my previous company, we did pair programming. I got to learn a ton from my partner who was really good at it. but our working speeds were different and it was a bit of a challenge, so we set clear goals and swapped roles. TThat made our teamwork better and the code was better too. 
15. If you are mentoring a junior colleague and they propose a new idea to the team, how would you handle it?
    - **General approach**: Usually, I listen to the idea, I think about it if it's a good solution, and I help them show it to the team.
    - **Personal experience**: for example, At my current company, Russell Investments, a junior colleague proposed a new tool for API testing, API tester. I checked how it would work with our project, and and it's much easier to integrate into our CI/CD workflow. I encouraged them to show it to the team, and the team agreed to use the idea.
16. Describe your code review process. What do you focus on during a code review?
    - **General approach**: Usually, I focus on making code easy to read, and check if it has security risk and some performance problems, and make sure it follows our coding standards.
    - **Personal experience**: For example, when I was doing a code review, I found variable names that were not clear, or a security problem like some colleagues didn't check the access permissions in their APIs, or some performance issues like redundant for loops to search something. We fixed those things, and the code became better and more secure. 


## Leetcode

- Arrays
    - Two sum: https://leetcode.com/problems/two-sum/description/
    - Contains Duplicate: https://leetcode.com/problems/contains-duplicate/description/
    - Group Anagram: https://leetcode.com/problems/group-anagrams/description/
    - Best Time to Buy and Sell Stock: https://leetcode.com/problems/best-time-to-buy-and-sell-stock/description/
    - Top K Frequent Elements: https://leetcode.com/problems/top-k-frequent-elements/description/
    - Longest Consecutive Sequence: https://leetcode.com/problems/longest-consecutive-sequence/description/
- Two Pointer
    - Valid Palindrome: https://leetcode.com/problems/valid-palindrome/description/
    - 3Sum: https://leetcode.com/problems/3sum/description/
- Binary Search
    - Binary Search: https://leetcode.com/problems/binary-search/description/
    - Search in Rotated Sorted Array: https://leetcode.com/problems/search-in-rotated-sorted-array/description/
    - Koko Eating Bananas: https://leetcode.com/problems/koko-eating-bananas/description/
- Sliding Window
    - Longest Substring Without Repeating Characters: https://leetcode.com/problems/longest-substring-without-repeating-characters/description/
- Linked List
    - Reverse Linked List: https://leetcode.com/problems/reverse-linked-list/description/
    - Merge Two Sorted Lists: https://leetcode.com/problems/merge-two-sorted-lists/description/
    - Linked List Cycle: https://leetcode.com/problems/linked-list-cycle/description/
    - Copy List with Random Pointer: https://leetcode.com/problems/copy-list-with-random-pointer/description/
- Stack & Queue
    - Valid Parentheses: https://leetcode.com/problems/valid-parentheses/description/
    - Min Stack: https://leetcode.com/problems/min-stack/description/
    - Implement Queue using Stacks: https://leetcode.com/problems/implement-queue-using-stacks/description/
- DFS & BFS
    - Number of Islands: https://leetcode.com/problems/number-of-islands/description/

## Rest API

- User Info
    - Given URL: https://jsonplaceholder.typicode.com/users
    - You need to write a REST api to call the given URL and return a user with its "name, username, zipcode"
    - for example, if user id is 1, you should return a JSON file with username "Bret", email "Sincere@april.biz" and zipcode "92998-3874"
        - HINT: use "Rest Template"
    - Result: OPEN a webbrowser and enter: http://localhost:8080/user/1 should return the correct result.
    - Follow-up: id only 1-10, how to handle /user/11 → print in the page “Invalid ID”
    - Solution
- Movie
    - https://jsonmock.hackerrank.com/api/movies/search/?Title=waterworld 
    - GIVEN Above URL. Write a MVC with rest api to fetch this URL and then create new rest APIs to:
        - Show all movies
        - Show all movies sort by year
        - Fetch a particular movie based on its imdbID.
        - Hint: have multiple pages
    - Solutions
        - look at this URL date, it has multiple pages, each page has 10 movies, we need to fetch all pages to get a full list of movies and then filter to find the particular movie by imdbID
        - each movie has Title, Year, imdbID three fields, we need to create a model to match them
        - need org.json.simple to parse the json object from the given URL
- Build a POST API /greetings with below requirements
    - Create a POST API /greetings
    - INPUT – json array: [{"name":"john doe", "work": "engineer"}, {"name":"jane who", "work": "manager"}] 
    - OUTPUT - json: {"data": ["Hello john the engineer", "Hello jane the manager"], "timestamp": "${requested_timestamp}"
    - Use postman to call the API and pass input, it should return the correct response.




# concepts

## In java, difference between @controller and @restcontroller

In Java, specifically in the Spring framework, both `@Controller` and `@RestController` are annotations used for building web - related components. Here are the key differences between them:

### 1. Function and Purpose
- **`@Controller`**
    - It is a stereotype annotation in Spring MVC. It is mainly used to mark a class as a Spring MVC controller. A controller class typically handles HTTP requests, processes them, and then returns a view name. The view resolver in Spring MVC will then use this view name to render an appropriate view (such as a JSP page, Thymeleaf template, etc.) to the client.
- **`@RestController`**
    - It is a combination of `@Controller` and `@ResponseBody`. This annotation is designed for building RESTful web services. When a class is marked with `@RestController`, all the handler methods in this class will automatically serialize the return value to the HTTP response body in a format like JSON or XML by default.

### 2. Return Value Handling
- **`@Controller`**
    - By default, the return value of a method in a `@Controller` class is treated as a view name. For example:
```java
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MyViewController {
    @GetMapping("/view")
    public String showView() {
        return "myView";
    }
}
```
    - In this code, the method `showView` returns the string `"myView"`, and Spring MVC will look for a view with this name to render.
- **`@RestController`**
    - The return value of a method in a `@RestController` class is directly serialized and sent as the HTTP response body. For example:
```java
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class MyRestController {
    @GetMapping("/data")
    public String getData() {
        return "This is some data";
    }
}
```
    - When a client makes a request to `/data`, the string `"This is some data"` will be sent directly in the response body.

### 3. Usage Scenarios
- **`@Controller`**
    - It is suitable for traditional web applications where you need to render views based on user requests. For example, an e - commerce website where you need to display product lists, user profiles, etc. in HTML pages.
- **`@RestController`**
    - It is ideal for building RESTful APIs. These APIs can be consumed by various clients such as mobile applications, single - page web applications, etc. For example, a backend API for a mobile banking application that provides services like getting account balance, transaction history, etc. 


## in kafka, how to handle schema evolution

Here are several common methods to handle schema evolution in Apache Kafka:

### 1. Using Schema Registry
#### Avro with Confluent Schema Registry
- **Principle**
    - Confluent Schema Registry is a widely used tool for managing schemas in Kafka. It stores schemas in a central repository and enforces compatibility rules between different versions of schemas. When using Avro serialization, producers and consumers can interact with the Schema Registry to ensure that the data they produce and consume adheres to the defined schemas.
- **Steps**
    - **Producer side**: When a producer sends data, it first checks if the schema of the data exists in the Schema Registry. If not, it registers the new schema. The registry then assigns a unique ID to the schema. The producer serializes the data using Avro and includes the schema ID in the message.
    - **Consumer side**: The consumer receives the message with the schema ID, fetches the corresponding schema from the Schema Registry, and deserializes the data using that schema.
- **Compatibility Modes**
    - **Backward compatibility**: Newer versions of the schema can be read by older consumers. For example, adding a new optional field to an Avro record is backward - compatible.
    - **Forward compatibility**: Older versions of the schema can be read by newer consumers. For example, removing a non - required field is forward - compatible.
    - **Full compatibility**: It combines backward and forward compatibility.

#### Protobuf with Schema Registry
- Similar to Avro, Protocol Buffers can also be used with a schema registry. Protobuf has its own serialization and deserialization mechanisms, and the schema registry helps in managing different versions of Protobuf schemas.

### 2. Designing Flexible Schemas
#### Use Optional Fields
- When defining your data schema, mark non - essential fields as optional. For example, in Avro, you can define a field like this:
```json
{
    "name": "optionalField",
    "type": ["null", "string"],
    "default": null
}
```
- This allows you to add new fields in future schema versions without breaking existing consumers that may not expect these new fields.

#### Avoid Breaking Changes
- Do not remove or rename existing required fields. If you need to change the meaning of a field, it's better to add a new field and gradually deprecate the old one.

### 3. Versioning in the Application Code
#### Producer - Side Versioning
- The producer can explicitly include a version number in the message. For example, you can add a `version` field to your data structure:
```java
public class MyMessage {
    private int version;
    private String data;

    // Getters and setters
}
```
- The producer can increment the version number when there is a schema change.

#### Consumer - Side Version Handling
- The consumer can check the version number in the message and handle the data differently based on the version. For example:
```java
if (message.getVersion() == 1) {
    // Handle data in version 1 format
} else if (message.getVersion() == 2) {
    // Handle data in version 2 format
}
```

### 4. Using Kafka Connect with Schema Evolution Support
- Kafka Connect is a tool for moving data between Kafka and other systems. Some connectors support schema evolution. For example, the JDBC connector can handle changes in the database schema and propagate these changes to Kafka topics while maintaining compatibility.

在 Apache Kafka 中，处理模式演变（Schema Evolution）有以下几种常见方法：

### 1. 使用模式注册表
#### 结合 Confluent 模式注册表使用 Avro
- **原理**
    - Confluent 模式注册表是 Kafka 中广泛使用的管理模式的工具。它将模式存储在中央存储库中，并对不同版本的模式执行兼容性规则。在使用 Avro 序列化时，生产者和消费者可以与模式注册表交互，以确保它们生产和消费的数据符合定义的模式。
- **步骤**
    - **生产者端**：生产者发送数据时，首先检查数据的模式是否存在于模式注册表中。如果不存在，则注册新模式。注册表会为该模式分配一个唯一的 ID。生产者使用 Avro 对数据进行序列化，并在消息中包含模式 ID。
    - **消费者端**：消费者接收到包含模式 ID 的消息后，从模式注册表中获取相应的模式，并使用该模式对数据进行反序列化。
- **兼容性模式**
    - **向后兼容**：新模式可以被旧版本的消费者读取。例如，向 Avro 记录中添加一个新的可选字段就是向后兼容的。
    - **向前兼容**：旧模式可以被新版本的消费者读取。例如，移除一个非必需字段是向前兼容的。
    - **完全兼容**：同时具备向后兼容和向前兼容的特性。

#### 结合模式注册表使用 Protocol Buffers（Protobuf）
- 与 Avro 类似，Protocol Buffers 也可以与模式注册表结合使用。Protobuf 有自己的序列化和反序列化机制，模式注册表有助于管理不同版本的 Protobuf 模式。

### 2. 设计灵活的模式
#### 使用可选字段
- 在定义数据模式时，将非必需字段标记为可选。例如，在 Avro 中可以这样定义一个字段：
```json
{
    "name": "optionalField",
    "type": ["null", "string"],
    "default": null
}
```
- 这样，在未来的模式版本中添加新字段时，不会破坏可能不期望这些新字段的现有消费者。

#### 避免重大更改
- 不要移除或重命名现有的必需字段。如果需要更改字段的含义，最好添加一个新字段，并逐步弃用旧字段。

### 3. 在应用代码中进行版本控制
#### 生产者端版本控制
- 生产者可以在消息中显式包含版本号。例如，可以在数据结构中添加一个 `version` 字段：
```java
public class MyMessage {
    private int version;
    private String data;

    // Getters 和 setters
}
```
- 当模式发生变化时，生产者可以递增版本号。

#### 消费者端版本处理
- 消费者可以检查消息中的版本号，并根据版本不同对数据进行不同的处理。例如：
```java
if (message.getVersion() == 1) {
    // 处理版本 1 格式的数据
} else if (message.getVersion() == 2) {
    // 处理版本 2 格式的数据
}
```

### 4. 使用支持模式演变的 Kafka Connect
- Kafka Connect 是用于在 Kafka 和其他系统之间移动数据的工具。一些连接器支持模式演变。例如，JDBC 连接器可以处理数据库模式的更改，并将这些更改传播到 Kafka 主题，同时保持兼容性。 


## kafka Exactly one semantics

Kafka 提供三种消息传递语义，分别是最多一次（At most once）、至少一次（At least once）和精确一次（Exactly once），它们的区别如下：

### 最多一次（At most once）
- **生产者**：消息发送后，不管是否成功写入 Kafka 就继续发送下一条消息。如果发送失败，不会重试。比如网络抖动导致消息没发出去，生产者也不会重新发送。
- **消费者**：消费消息前先提交偏移量，再处理消息。若处理过程中消费者崩溃，已提交偏移量的消息不会再次处理，可能造成消息丢失。
- **应用场景**：适用于对数据丢失容忍度较高，对性能要求较高的场景，如实时日志收集，少量日志丢失不影响整体分析。

### 至少一次（At least once）
- **生产者**：消息发送失败会重试，保证消息至少被写入 Kafka 一次。但如果写入成功，而确认响应丢失，生产者重试会导致消息重复写入。
- **消费者**：先处理消息，处理完成后再提交偏移量。若处理完消息还未提交偏移量时消费者崩溃，重启后会重新处理之前的消息，导致消息重复消费。
- **应用场景**：适用于对数据丢失零容忍，但能接受数据重复的场景，如数据统计分析，重复数据可以通过去重处理。

### 精确一次（Exactly once）
- **生产者**：有幂等生产者和事务性生产者两种机制。幂等生产者借助 PID 和序列号避免同一分区内重复写入；事务性生产者保证跨分区消息发送的原子性，失败可回滚。
- **消费者**：结合生产者事务操作与手动提交偏移量，在事务中处理消息并在完成后提交，故障时事务回滚，确保消息不重复不丢失。
- **应用场景**：适用于对数据准确性要求极高的场景，如金融交易系统，每笔交易必须精确处理一次。 

### Concept
Exactly-once semantics means that each message is written to a Kafka topic and consumed and processed exactly once, ensuring data consistency.

### Challenges
- **Producer**: Retries may lead to duplicate message writes due to the failure of receiving acknowledgments.
- **Consumer**: Incorrect timing of offset commits may result in duplicate message processing or message loss.

### Solutions
- **Producer**
    - **Idempotent Producer**: Introduced since Kafka 0.11.0, it avoids duplicate writes by means of the Producer ID (PID) and sequence numbers.
    - **Transactional Producer**: Ensures the atomicity of message sending across multiple partitions, and in case of failure, the transaction can be rolled back.
- **Consumer**: Combine the producer's transaction operations with manual offset commits. Process messages within a transaction and commit the offset after the processing is completed. When a failure occurs, the transaction is rolled back to ensure there are no message-related issues. 


# bq

# coding

- find kth element in an array
- find the middle node in a linked list