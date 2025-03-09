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

- Prepare a fluent self-introduction and a detailed summary of work/project experience.
- Familiarize yourself thoroughly with your resume.Be ready to elaborate on your roles, achievements, and technologies/tools you used.

Hey there! I’m Michael Hu.

I’ve been working as a Java backend developer for over ten years now, and I have experience building scalable, high-performance systems to solve real business problems.

I'm good at Java and Spring Boot. I used them to design and run backend systems stably. And I used them to create many RESTful APIs. These APIs have detailed documentation, and I used these APIs, to make many different micro services communicate with each other in a distributed environment.  

- For **database**, I mainly use MySQL and MongoDB and redis, I’ve got plenty of experience with Hibernate and JPA for data persistence. I design complex schemas, optimize queries, and ensure data integrity
- For **data processing**, I also work with Apache `/ əˈpætʃi /` Kafka for real-time data processing, to build event-driven architectures that handle high-throughput data streams and scalable messaging systems.
- For **security**, I use Spring Security, OAuth2, JWT to implement authentication and authorization, to make sure everything is secure.
- For **cloud platforms**, I worked with many AWS services. I use EC2 to deploy and manage virtual servers, RDS to handle relational databases, S3 to handle scalable storage, ECS to orchestrate `/ ˈɔːrkɪstreɪt /` Microservices in containers, I use CloudWatch to track performance, monitor logs, metrics, and system health.
    1. **EC2** (Elastic Compute Cloud) → Deploy and manage virtual servers
        - I use EC2 to launch, configure, and manage scalable virtual machines for running applications. It allows me to choose different instance types based on computing needs and ensures high availability.
    2. **RDS** (Relational Database Service) → Manage relational databases
        - I use RDS to host and manage relational databases like MySQL, PostgreSQL, and SQL Server, handling automated backups, scaling, and maintenance `/ ˈmeɪntənəns /` without manual server management.
    3. **S3** (Simple Storage Service) → Store and retrieve any amount of data
        - I use S3 for storing and retrieving large amounts of data, such as logs, backups, images `/ ˈɪmɪdʒ /` , and static website assets. It provides high durability and scalability.
    4. **CloudWatch**: monitoring
        - I use CloudWatch to track performance, monitor logs, metrics, and system health.

参考:  
- ECS(Elastic Container Service): 运行 & 管理 Docker 容器(支持 Fargate 无服务器模式)
- EKS(Elastic Kubernetes Service): 托管 Kubernetes 集群，简化容器编排。


#### Work/Project Summary

Prepare 1-2 examples of past projects or jobs where you made a significant impact. Use the STAR method (Situation, Task, Action, Result) to structure your responses. DO NOT READ, we can tell!

- **Project 1**: Russell Investments - Backend Developer (Nov 2022 - Present, Seattle, WA)
    - **Situation**: Russell Investments, a fintech company, needed to level up its backend systems to keep up with a growing number of financial transactions. As data volume and user requests increased, the system started struggling with performance and security issues.
    - **Task**: My job was to boost backend performance, tighten security, and integrate new financial services into the system. A big part of this was improving API response times and making sure all financial data stayed safe.
    - **Action**: First, I brought in Redis for caching frequently accessed data, which cut down on database queries and made responses much faster. For security, I implemented Spring Security and OAuth2 to beef up authentication and authorization. I also optimized database queries by analyzing execution plans and tweaking the schema where needed. On top of that, I integrated AWS services like RDS for better data storage and management.
    - **Result**: These changes made a huge impact—API response times improved by 30%, security got a major upgrade with zero security breaches, and the system could now handle 20% more transactions per day. Plus, the new financial services were successfully integrated, making the platform more powerful and scalable.
- **Project 2**: Prodege `/proʊdeɪˈʒeɪ/` - Backend Developer (Aug 2019 - Nov 2022, El Segundo, CA)
    - **Situation**: Prodege, a company specializing in online marketing and consumer polling, was growing fast. But their old backend system couldn’t keep up with the new features and the increasing number of users taking part in polls and marketing campaigns.
    - **Task**: My job was to build a brand-new microservices-based backend that could scale with the company’s growth. This meant designing and implementing RESTful APIs, integrating third-party analytics tools, and making sure the system was both high-performance and reliable.
    - **Action**: I built a modular microservices architecture using Spring Boot, where each microservice handled a specific function—like user management, poll management, and data analytics integration. To handle real-time user interactions, I used Kafka, which allowed us to process and analyze data efficiently. I also integrated third-party analytics tools to gain deeper insights. For deployment, I went with Docker and Kubernetes to make sure everything was highly available and scalable.
    - **Result**: The new microservices setup made the system way more flexible and easier to maintain. Thanks to the integrated analytics tools, marketing campaigns became a lot more data-driven. Performance improved significantly—we could handle 50% more concurrent users, which led to a 25% boost in user engagement and a noticeable increase in revenue from marketing campaigns.


#### 15 behavioral questions

1. Describe a major conflict within or outside your team and how you handled it, or how you dealt with a difficult team member.
    - **general approach**: First, I try to understand the root cause of the conflict or the behavior of the difficult team member. I set up a one - on - one meeting in a calm environment to have an open - and - honest conversation. I listen actively to their concerns and explain my perspective. If it's a conflict about work, we analyze the requirements and goals together to find a common ground. For example, if it's about a different approach to implementing a feature, we evaluate the pros and cons of each method based on the project's needs like performance, maintainability, and time constraints.
    - **personal experience**: At Prodege, I was working on a microservices - based project with a frontend developer. We had a conflict over the API design. They wanted a very simple API for quick development, but I knew that for long - term scalability and performance, a more complex and well - structured API was needed. I scheduled a meeting with them. I listened to their concerns about time and simplicity. Then, I showed them data from past projects where a simple API led to issues in the long run, like difficulties in adding new features and performance bottlenecks. I also explained how our proposed API design would be more modular and easier to maintain. After this conversation, we reached a compromise. We designed an API that was a bit more complex than what they initially wanted but still had some simplifications to meet the short - term development needs. This solution worked well, and our project was completed successfully.
2. Describe a time when you had difficulty completing a task or making progress.
    - **general approach**: When I face difficulty in completing a task, I first break down the task into smaller subtasks. This helps me identify the specific parts that are causing problems. Then, I research relevant technologies or best practices. I also reach out to colleagues or online communities for advice. If it's a technical issue, I might create a test environment to isolate and solve the problem.
    - **personal experience**: At REI, I was tasked with optimizing the database queries for our retail inventory management system. Initially, I couldn't figure out why some queries were taking a long time. I started by breaking down the queries into smaller components and analyzing each part. I found that some joins were not optimized. I researched query optimization techniques for MySQL, our database at the time. I also asked a senior colleague who had experience in database optimization. They suggested using indexes more effectively. I created a test database with sample data and experimented with different indexing strategies. After a few tries, I found the right combination of indexes. As a result, the query execution time was reduced by 50%, which significantly improved the performance of the inventory management system.
3. If your manager asks you to change something that you think is already good enough, how would you handle it?
    - **general approach**: I would first listen carefully to my manager's reasons for the requested change. Then, I would explain my perspective on why I thought the current solution was sufficient, presenting data or evidence if possible. If there are valid concerns from the manager, I would work with them to find a solution. I might propose a compromise or a way to implement the change with minimal impact on the existing work.
    - **personal experience**: At Russell Investments, I had implemented a caching mechanism using Redis for our fintech application. The performance improvement was significant, and I thought it was a good solution. However, my manager wanted to change it to a different caching technology. I met with my manager and listened to their concerns about the long - term cost and compatibility with future system upgrades. I then showed them the performance metrics of our current Redis - based caching, like how it reduced the response time by 40%. But I also understood their concerns. So, we decided to run a small - scale test with the new caching technology in a staging environment. After the test, we found that the new technology had some potential benefits in the long run. We then gradually migrated to the new caching technology while closely monitoring the performance.
4. Why do you want to join our team?
    - **general approach**: I would research the company's products, services, and values. I would mention how my skills and experience can contribute to the team's goals. For example, if the company is focused on developing high - performance applications, I would talk about my experience in optimizing backend performance. I would also express my interest in the company's innovative culture or the opportunity to work on challenging projects.
    - **personal experience**: After researching your company, I noticed that you're working on developing a new fintech product with a focus on real - time data processing. I have extensive experience in using Apache Kafka for real - time data processing at Russell Investments. I was able to build a scalable messaging system that handled high - throughput data streams. I believe my skills can directly contribute to the success of this product. Also, I'm impressed by your company's innovative culture. I'm excited about the opportunity to work with a team that is constantly pushing the boundaries in the fintech industry.
5. Are you familiar with Agile processes and Waterfall methodology?
    - **general approach**: I would explain the basic concepts of Agile and Waterfall. For Agile, I would mention its iterative nature, focus on customer feedback, and the use of sprints. For Waterfall, I would talk about its sequential approach from requirements gathering to deployment. I would also share my experience using each methodology. If I have more experience with Agile, I would talk about how I've used Scrum or Kanban frameworks, how we had daily stand - up meetings to communicate progress, and how we adapted to changes during sprints.
    - **personal experience**: At IMVU, we mainly used the Agile process, specifically Scrum. We had two - week sprints. Every day, we had a stand - up meeting where each team member would share what they did the previous day, what they planned to do, and any obstacles they faced. I found this process very effective. For example, during the development of a new social feature, we got feedback from users during a sprint. We were able to quickly adjust our plans, add some new features, and remove some less - important ones. This iterative approach allowed us to deliver a better product. I also have some knowledge of the Waterfall methodology. In a small project at school, we used Waterfall. We first defined all the requirements, then designed the system, developed, tested, and finally deployed. While it worked well for that small - scale project, I prefer Agile for its flexibility in handling changes.
6. What does a typical day look like for you?
    - **general approach**: A typical day usually starts with checking emails and messages to see if there are any urgent tasks or updates. Then, I review my to - do list, which is often based on the sprint goals if I'm working in an Agile environment. I spend a significant amount of time coding, either implementing new features, fixing bugs, or optimizing existing code. I also have meetings, like team stand - ups, code reviews, or discussions with other teams. In the afternoon, I might do some research if I encounter new technical challenges. Before the end of the day, I update my progress and plan for the next day.
    - **personal experience**: At Prodege, a typical day began with a 15 - minute stand - up meeting. We would quickly share our progress and any issues. After that, I would start coding new features for our online marketing and consumer polling application. One day, I was working on integrating a new third - party analytics API. I spent a few hours coding and debugging. Then, I had a code review meeting with my colleagues. They gave me some great suggestions on improving the code readability. In the afternoon, I encountered an issue with the API authentication. I spent some time researching the API documentation and asking for help on relevant developer forums. By the end of the day, I had made significant progress on the integration, and I updated my tasks in Jira for the next day.
7. What do you think are the most important factors for a successful team?
    - **general approach**: Communication is crucial. Team members need to be able to share ideas, progress, and problems openly. Clear goals and roles are also important. Everyone should know what the team is working towards and what their responsibilities are. Trust among team members is essential. It allows for collaboration and risk - taking. And a positive attitude towards learning and adapting to changes helps the team stay competitive.
    - **personal experience**: At REI, we had a very successful project in improving the checkout process for our online store. Communication was key. We had daily communication channels open, and we also had weekly in - depth meetings. Everyone knew their roles clearly. The frontend developers focused on the user - facing interface, and the backend developers, like me, worked on optimizing the database and API calls. We trusted each other's work. When I made changes to the backend, the frontend developers trusted that it would work well with their part. Also, when we faced new security requirements during the project, we were all open to learning new security techniques and adapting our code. This positive attitude towards learning and change helped us complete the project ahead of schedule and with great results.
8. If you are working on a sprint and your manager suddenly assigns you a new task that needs to be finished as soon as possible, what would you do?
    - **general approach**: First, I would quickly assess the new task's complexity and the time it might take. Then, I would communicate with my manager about my current sprint tasks, their priorities, and the potential impact of taking on the new task. If possible, we could re - prioritize the sprint tasks or adjust the sprint goals. I might also ask for help from colleagues if the new task is similar to something they've worked on before.
    - **personal experience**: At Russell Investments, during a sprint focused on improving the performance of our trading platform, my manager assigned me a new task to fix a critical security vulnerability. I quickly estimated that it would take about a day to fix. I told my manager about my current sprint tasks, like optimizing some queries. We decided to pause the query optimization task for a day and focus on the security fix. I also asked a colleague who had experience in security to give me a quick review of my fix. With their help, I was able to complete the security fix within a day and then resume my sprint tasks.
9. Tell me something about yourself that is not on your resume.
    - **general approach**: I could talk about a hobby that has taught me useful skills. For example, if I like playing chess, I could say that it has improved my strategic thinking and problem - solving skills. Or I could share a volunteer experience that has enhanced my communication or teamwork skills.
    - **personal experience**: I'm an avid open - source contributor. In my free time, I contribute to a Java - based open - source project related to database connection pooling. This has allowed me to learn from other developers around the world. I've had to communicate with them, review their code, and also have my code reviewed. It has improved my coding skills, especially in writing more modular and efficient code. It has also taught me how to work in a global, diverse team, which is very similar to the corporate environment.
10. Tell me about a difficult project or challenge you faced and how you handled it.
    - **general approach**: I would use the STAR method. Describe the situation, the task at hand, the actions I took, and the results. For example, if the challenge was to integrate a new and complex third - party service, I would explain how I first studied the service's documentation, then tried different integration approaches, and finally overcame the obstacles.
    - **personal experience**: At IMVU, we were integrating a new virtual goods payment system. The situation was that the new payment system had very complex security requirements and a different API structure from what we were used to. The task was to integrate it smoothly into our existing virtual world platform. I first spent a lot of time studying the payment system's documentation. I then created a test environment to experiment with different integration methods. I faced issues with the authentication and data encryption. I reached out to the payment system's support team and also consulted with some industry experts. After several attempts, I was able to integrate the payment system successfully. As a result, our users could use the new payment methods, and the number of virtual goods purchases increased by 30%.
11. Share a time when you made a mistake in a team setting, how you resolved it, and what you learned from the experience.
    - **general approach**: When I make a mistake, I first admit it as soon as possible. Then, I analyze the root cause of the mistake. If it's a code - related mistake, I fix the code and write additional tests to prevent similar mistakes in the future. I also communicate with the team about the mistake, what I've done to fix it, and what we can all learn from it.
    - **personal experience**: At Prodege, I made a mistake in the API I was developing. I accidentally exposed some sensitive user data in the API response. As soon as I realized it, I informed the team immediately. I then analyzed the code and found that it was a mistake in the data filtering logic. I fixed the code and added more rigorous data validation and filtering in the API. I also wrote unit and integration tests to ensure that sensitive data was never exposed again. I apologized to the team and we had a short meeting to discuss how we could improve our code review process to catch such mistakes earlier. From this experience, I learned the importance of double - checking data handling in APIs and the value of a thorough code review.
12. Do you have on - call experience, and are you comfortable with overnight on - call duties?
    - **general approach**: If I have on - call experience, I would talk about my past experiences, like how I handled emergencies during on - call shifts. I would mention the tools and processes I used to monitor systems and respond quickly. If I don't have on - call experience, I would express my willingness to learn and adapt, and talk about my ability to handle stress and work under pressure.
    - **personal experience**: At REI, I had on - call duties during the holiday season when our online store had high traffic. I used monitoring tools like ELK Stack to keep an eye on the system's performance. One night, I received an alert that the database connection pool was full, causing the checkout process to fail. I quickly accessed the server, analyzed the situation, and found that some queries were not releasing connections properly. I adjusted the query code and increased the connection pool size temporarily. This resolved the issue. I'm comfortable with overnight on - call duties. I understand the importance of being available to ensure the system's smooth operation, especially for business - critical applications.
13. Do you know what pair programming is, and what are your thoughts on it?
    - **general approach**: I would explain that pair programming is a technique where two programmers work together at one workstation, one writing the code (the driver) and the other reviewing and suggesting improvements (the navigator). I would talk about its benefits, like increased code quality, knowledge sharing, and better problem - solving. I might also mention some potential challenges, like differences in working styles, and how to overcome them.
    - **personal experience**: I've participated in pair programming during a project at IMVU. We were working on a complex algorithm for user matching in our virtual world. One of the benefits I experienced was the knowledge sharing. My partner had more experience in algorithm design, and I learned a lot from them. We also caught bugs and made better design decisions because we were constantly discussing the code. However, we did face some challenges with our different working speeds. To overcome this, we set clear goals for each session and took turns being the driver and the navigator more frequently. Overall, I think pair programming is a great way to improve code quality and team collaboration.
14. If you are mentoring a junior colleague and they propose a new idea to the team, how would you handle it?
    - **general approach**: First, I would listen attentively to their idea and show enthusiasm for their initiative. Then, I would help them analyze the idea from different perspectives, like technical feasibility, impact on the project timeline, and alignment with the project goals. If it's a good idea, I would encourage them to present it to the team and support them during the presentation. If there are issues, I would guide them on how to improve the idea.
    - **personal experience**: At Russell Investments, a junior colleague proposed using a new open - source library for data processing. I listened carefully and was impressed by their research. We then analyzed it together. We found that while it had some great features, it was not fully compatible with our existing security framework. I helped them research ways to make it work or find alternatives. We also discussed how it would fit into our project timeline. In the end, we found a modified version of the library that could work with our security framework. I encouraged them to present the idea to the team, and I gave them some tips on how to make the presentation more effective. The team adopted the idea, and it improved our data processing efficiency.
15. Describe your code review process. What do you focus on during a code review?
    - **general approach**: My code review process usually starts with a quick overview of the code's purpose and functionality. Then, I check for code readability, like proper indentation, meaningful variable names, and code comments. I also review the code for security, making sure there are no vulnerabilities like SQL injection or data exposure. Performance is another important aspect. I look for inefficient algorithms, unnecessary database queries, or improper use of resources. I also check if the code follows the project's coding standards and best practices.
    - **personal experience**: At Prodege, during a code review of an API implementation, I first made sure I understood what the API was supposed to do. I noticed that some variable names were not very descriptive, so I suggested changing them for better readability. I also found a potential SQL injection vulnerability in one of the database queries. I pointed it out to the developer and showed them how to use prepared statements to fix it. Regarding performance, I saw that the API was making multiple unnecessary database calls. We discussed how to cache some of the data to reduce the number of calls. By focusing on these aspects, we were able to improve the overall quality of the code. 


### Tech


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