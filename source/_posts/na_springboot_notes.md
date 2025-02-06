---
title: NA Sprint Boot Notes
date: 2014-01-18 21:54:08
tags:
- noodle
- NA
- Java
- SpringBoot
categories:
- Java
---


# 参考链接

- [视频教程](https://www.bilibili.com/video/BV1Fi4y1S7ix?spm_id_from=333.788.videopod.episodes&vd_source=8a83b38420b65ac33aa101b7754630f6&p=27)


**. . .**<!-- more -->


# spring 的bean是啥意思

在 Spring 框架中，“Bean” 是一个核心概念，它是被 Spring 容器管理的对象。下面从多个方面详细解释 Spring 的 Bean 是什么：

## 定义与本质
在 Spring 里，Bean 本质上就是由 Spring 容器实例化、组装和管理的普通 Java 对象。这些对象的生命周期（创建、初始化、使用和销毁）都由 Spring 容器来控制，而不是由程序员在代码中手动创建和管理。例如，在传统 Java 开发中，我们会使用 `new` 关键字来创建对象：
```java
UserService userService = new UserServiceImpl();
```
但在 Spring 框架中，Spring 容器会负责创建 `UserService` 对象，我们只需要从容器中获取这个对象即可使用。

## Bean 的创建方式
Spring 容器创建 Bean 有多种方式，常见的有以下几种：
- **基于 XML 配置**：在 Spring 的 XML 配置文件中，可以使用 `<bean>` 标签来定义 Bean。示例如下：
```xml
<bean id="userService" class="com.example.service.UserServiceImpl"/>
```
这里的 `id` 是 Bean 的唯一标识符，`class` 是 Bean 对应的 Java 类的全限定名。Spring 容器会根据这个配置信息创建 `UserServiceImpl` 类的实例。
- **基于注解**：使用 Spring 的注解可以更方便地定义 Bean。例如，使用 `@Component`、`@Service`、`@Repository` 和 `@Controller` 等注解。示例如下：
```java
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService {
    // 类的具体实现
}
```
`@Service` 注解表示这是一个服务层的 Bean，Spring 会自动扫描带有这些注解的类，并将它们注册为 Bean。
- **基于 Java 配置类**：使用 Java 配置类和 `@Bean` 注解来定义 Bean。示例如下：
```java
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class AppConfig {
    @Bean
    public UserService userService() {
        return new UserServiceImpl();
    }
}
```
`@Configuration` 注解表示这是一个配置类，`@Bean` 注解用于定义一个 Bean，方法名 `userService` 就是 Bean 的名称。

## Bean 的生命周期
Spring 容器管理的 Bean 有其完整的生命周期，主要包括以下几个阶段：
1. **实例化**：Spring 容器根据配置信息创建 Bean 的实例。
2. **属性注入**：如果 Bean 有依赖的属性，Spring 容器会将这些依赖注入到 Bean 中。
3. **初始化**：在 Bean 实例创建并完成属性注入后，Spring 容器会调用 Bean 的初始化方法（如果有定义），可以通过实现 `InitializingBean` 接口的 `afterPropertiesSet()` 方法或使用 `@PostConstruct` 注解来定义初始化逻辑。
4. **使用**：Bean 初始化完成后，就可以被应用程序使用了。
5. **销毁**：当 Spring 容器关闭时，会调用 Bean 的销毁方法（如果有定义），可以通过实现 `DisposableBean` 接口的 `destroy()` 方法或使用 `@PreDestroy` 注解来定义销毁逻辑。

## Bean 的作用域
Spring 支持多种 Bean 的作用域，常见的有以下几种：
- **单例（Singleton）**：默认的作用域，Spring 容器只会创建一个 Bean 实例，所有对该 Bean 的请求都会返回同一个实例。
- **原型（Prototype）**：每次请求该 Bean 时，Spring 容器都会创建一个新的实例。
- **请求（Request）**：在 Web 应用中，每个 HTTP 请求都会创建一个新的 Bean 实例。
- **会话（Session）**：在 Web 应用中，每个 HTTP 会话会创建一个新的 Bean 实例。

## Bean 的意义和优势
- **解耦和可维护性**：通过将对象的创建和管理交给 Spring 容器，降低了代码之间的耦合度，使得代码更易于维护和扩展。
- **依赖注入**：方便实现依赖注入，提高了代码的可测试性和灵活性。
- **生命周期管理**：Spring 容器对 Bean 的生命周期进行管理，确保 Bean 在合适的时机被创建、初始化和销毁。 


# spring core和springboot和spring jpa和spring rest和spring security 的区别

Spring Core、Spring Boot、Spring JPA、Spring REST 和 Spring Security 都是 Spring 生态系统中的重要组成部分，它们各自承担着不同的职责，下面为你详细介绍它们之间的区别：

## Spring Core
- **核心地位**：Spring Core 是整个 Spring 框架的基础，提供了最核心的功能，是其他 Spring 模块构建的基石。
- **主要功能**
    - **IoC（控制反转）和 DI（依赖注入）**：通过 IoC 容器管理对象的创建和依赖关系，降低代码之间的耦合度。例如，使用 `ApplicationContext` 来获取和管理 Bean 对象。
    - **AOP（面向切面编程）**：允许开发者在不修改原有业务逻辑的基础上，对程序进行增强，如日志记录、事务管理等。
    - **资源管理**：提供了统一的资源加载机制，方便处理文件、类路径资源等。
- **使用场景**：是所有使用 Spring 框架的项目的基础，无论项目规模大小和类型如何，都离不开 Spring Core 提供的核心功能。

## Spring Boot
- **开发理念**：Spring Boot 的设计目标是简化 Spring 应用的开发过程，通过自动配置和约定大于配置的原则，减少开发者的配置工作量。
- **主要功能**
    - **自动配置**：根据项目中引入的依赖，自动进行相关的配置。例如，引入 Spring Data JPA 和 MySQL 驱动后，Spring Boot 会自动配置数据源和 JPA 相关的 Bean。
    - **嵌入式服务器**：内置了 Tomcat、Jetty 等嵌入式服务器，无需手动部署到外部服务器，直接运行应用程序即可启动 Web 服务。
    - **Actuator**：提供了应用程序的监控和管理功能，如健康检查、指标统计等。
- **使用场景**：适合快速搭建 Spring 应用，尤其是微服务架构下的应用开发，能够大大提高开发效率。

## Spring JPA
- **功能定位**：Spring JPA（Java Persistence API）是 Spring 对 JPA 规范的集成和扩展，用于简化数据库访问层的开发。
- **主要功能**
    - **对象关系映射（ORM）**：通过注解或 XML 配置，将 Java 对象映射到数据库表，实现对象和数据库记录之间的转换。
    - **Repository 接口**：提供了一系列的 Repository 接口，如 `CrudRepository`、`JpaRepository` 等，开发者可以通过定义接口方法来实现常见的数据库操作，无需编写具体的 SQL 语句。
    - **事务管理**：支持声明式事务管理，通过注解（如 `@Transactional`）可以方便地管理数据库事务。
- **使用场景**：适用于需要与关系型数据库进行交互的项目，能够减少数据库访问层的代码量，提高开发效率。

## Spring REST
- **功能用途**：Spring REST 主要用于构建 RESTful 风格的 Web 服务，遵循 REST（Representational State Transfer）架构风格。
- **主要功能**
    - **控制器注解**：使用 `@RestController` 和 `@RequestMapping` 等注解来定义 RESTful 接口，处理 HTTP 请求和响应。
    - **数据绑定和序列化**：自动将请求参数绑定到 Java 对象，并将 Java 对象序列化为 JSON 或 XML 格式的响应数据。
    - **HATEOAS（Hypermedia as the Engine of Application State）**：支持 HATEOAS 原则，在响应数据中包含链接信息，提高 API 的可发现性和可导航性。
- **使用场景**：适合构建前后端分离的 Web 应用，为前端提供数据接口，也可用于构建微服务架构中的服务之间的通信接口。

## Spring Security
- **核心功能**：Spring Security 是一个强大的身份验证和授权框架，用于保护 Spring 应用程序的安全性。
- **主要功能**
    - **身份验证**：支持多种身份验证方式，如表单登录、HTTP 基本认证、OAuth2 等，验证用户的身份信息。
    - **授权管理**：可以基于角色、权限等对用户进行授权，控制用户对资源的访问权限。
    - **防止攻击**：提供了防止常见 Web 攻击的功能，如 CSRF（跨站请求伪造）、XSS（跨站脚本攻击）等。
- **使用场景**：任何需要保护用户数据和资源安全的 Spring 应用都可以使用 Spring Security，尤其是涉及用户登录、敏感数据访问等场景。

## 总结
Spring Core 是 Spring 框架的核心基础，Spring Boot 简化了 Spring 应用的开发过程，Spring JPA 用于简化数据库访问，Spring REST 用于构建 RESTful 服务，Spring Security 用于保障应用程序的安全性。在实际项目中，通常会根据项目的需求综合使用这些模块。 


# the relationship between Servlet and TomCat
Servlet is a specification and technology in Java for developing web applications, while Tomcat is an open - source Servlet container. The relationship between them is as follows:

## Specification and implementation relationship
- **Servlet specification**: Servlet is a set of standard specifications developed by Sun Microsystems (now Oracle). It defines how Servlet classes should be written and how to interact with client requests and servers. In simple terms, the Servlet specification is an abstract design that stipulates the interfaces and methods for handling requests and responses in web application development. For example, the Servlet specification defines the `javax.servlet.Servlet` interface, and the Servlet classes written by developers need to implement this interface or inherit abstract classes such as `HttpServlet`.
- **Tomcat implementation**: Tomcat is a specific implementation of the Servlet specification. It implements various interfaces and methods defined in the Servlet specification, enabling the code written by developers that conforms to the Servlet specification to run on the Tomcat server. Tomcat provides a running environment for Servlets, allowing them to handle client requests and return responses.

## Running carrier relationship
- **Servlet's running dependency**: A Servlet itself is just a piece of Java code and cannot run independently. It requires a running environment, namely a Servlet container. The Servlet code needs to be deployed in a Servlet container, which is responsible for loading, instantiating, and managing the lifecycle of the Servlet.
- **Tomcat as the carrier**: Tomcat is such a Servlet container that can provide a running environment for Servlets. After developers write a Servlet class, they package it into a WAR (Web Application Archive) file and deploy it to Tomcat. Tomcat will be responsible for loading these Servlet classes, creating Servlet instances, and calling their methods to handle client requests. For example, when a client sends an HTTP request to the Tomcat server, Tomcat will find the corresponding Servlet according to the URL of the request and call the `service()` method of the Servlet for processing.

## Interaction and collaboration relationship
- **Request processing flow**: A client (such as a browser) sends an HTTP request to the Tomcat server. After receiving the request, Tomcat finds the corresponding Servlet according to information such as the URL of the request. Then, Tomcat creates `ServletRequest` and `ServletResponse` objects to encapsulate the client's request information and response information respectively, and passes these two objects to the corresponding methods (such as `doGet()` or `doPost()`) of the Servlet. The Servlet processes the business logic according to the request information, generates the response content, and writes it into the `ServletResponse` object. Finally, Tomcat retrieves the response content from the `ServletResponse` object and returns it to the client.
- **Lifecycle management**: Tomcat is responsible for managing the lifecycle of Servlets. After a Servlet is deployed to Tomcat, Tomcat will instantiate and initialize the Servlet (call the `init()` method) at an appropriate time. When a request arrives, it calls the service method of the Servlet to handle the request. When Tomcat is shut down or the Servlet is unloaded, Tomcat will call the `destroy()` method of the Servlet to release resources.

## Development and deployment relationship
- **Development aspect**: When developers develop Servlets, they only need to write Java code following the Servlet specification to implement the corresponding business logic, without having to worry about how the Servlet runs on the server. They can use various Java development tools (such as Eclipse, IntelliJ IDEA, etc.) to write and debug Servlet code.
- **Deployment aspect**: After development, the Servlet code is packaged into a WAR file and then deployed to the Tomcat server. Tomcat will automatically decompress the WAR file, load the Servlet classes in it into memory, and make them capable of handling client requests. This separated development and deployment method allows developers to focus on the implementation of business logic, while server administrators are responsible for server configuration and management. 


# J2EE vs Spring

> 现在已经基本没人用J2EE了, 都是用spring.

如上所述，J2EE是一套标准，它对一系列接口进行了约定，然后由众多厂商围绕这个标准做实现。Spring框架就是一个开源的J2EE应用程序框架。（搞了半天，原来Spring也算是J2EE一分子）
早期的Spring定位于解决J2EE在实际使用上的一系列问题，因为J2EE的API实在是太难用了。Spring框架的发起人Rod估计是趟了不少大坑，于是总结了一套最佳实践，并总结到了一套框架里。其中最重要的，就是所谓IoC（控制反转）。
Spring大量使用或者实现了J2EE标准。比如spring-mvc是在servlet基础之上的封装；spring本身并不提供容器，而是支持使用任何支持servlet标准的容器（如tomcat，jetty等）；spring-data也实现了JPA，通过标准接口对进行CRUD等。归根到底Spring只是想更好的解决实际问题。J2EE的实现做得好的就用，做得不好的，用比较恰当的方式独立实现或者封装。
随着时间的发展，J2EE已经越来越落后，这是由于它的体制造成的。J2EE的制定是由几大巨头定期开会协商通过，发布。然后由大容器实现厂商跟进。但这样太慢了。互联网的发展速度已经远不是这样一个僵化的体制能够适应的。反观Spring相对就快速的多。Spring自己就是一家公司，觉得整个社区什么东西最前沿，最急缺就立刻响应去做了。比如，Restful刚流行，你是愿意等一年半载出JAX-RS标准，然后再出Jersey，才能用；还是选择直接用Spring MVC直接就把事办了？结果不言而喻。对解决问题的态度是二者目前境遇不同的主要原因。最早期J2EE是领导者，所有的技术厂商要想在这个圈子里混，必须跟着标准走。而Spring逐渐占据领导地位之后，J2EE的一些标准反而要跟着Spring走。

作者：leftfist
链接：https://juejin.cn/post/6945982696183054349
来源：稀土掘金
著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。


# Spring JPA和MyBatis区别

> 现实里，中国大陆mybatis用的确实多一些, 北美不晓得

他们都是在Java开发中用于处理数据库交互的技术，它们有各自的特点，以下从多个方面介绍它们的区别：

## 1. 设计理念
- **Spring JPA**
    - Spring JPA 是 Spring 对 JPA（Java Persistence API）规范的集成和扩展，它基于 ORM（对象关系映射）思想，旨在将 Java 对象与数据库表进行映射，让开发者可以通过操作 Java 对象来间接操作数据库，无需编写大量的 SQL 语句，注重对象化的操作，提高开发效率。
- **MyBatis**
    - MyBatis 是一款半自动化的持久层框架，它同样支持 ORM，但更侧重于 SQL 的灵活使用。MyBatis 不会像 JPA 那样完全隐藏 SQL，而是允许开发者自己编写 SQL 语句，对 SQL 有更细粒度的控制，在性能优化和处理复杂业务逻辑时具有优势。

## 2. SQL 控制程度
- **Spring JPA**
    - 对于简单的增删改查操作，Spring JPA 可以根据方法名自动生成 SQL 语句，无需开发者手动编写。例如，定义一个继承自 `JpaRepository` 的接口，通过命名规范定义方法，就可以实现基本的数据库操作。
    ```java
    import org.springframework.data.jpa.repository.JpaRepository;
    public interface UserRepository extends JpaRepository<User, Long> {
        User findByUsername(String username);
    }
    ```
    - 但对于复杂的 SQL 查询，虽然也可以使用 `@Query` 注解手动编写 SQL，但相比之下不够灵活，特别是在处理复杂的多表关联查询时，可能会比较繁琐。
- **MyBatis**
    - MyBatis 允许开发者直接编写 SQL 语句，可以将 SQL 语句写在 XML 文件或使用注解方式配置在 Java 代码中。这使得开发者可以根据具体的业务需求和数据库特性，编写高效、复杂的 SQL 语句，对 SQL 的控制非常灵活。
    ```xml
    <select id="findUserByUsername" parameterType="String" resultType="User">
        SELECT * FROM users WHERE username = #{username}
    </select>
    ```

## 3. 学习成本
- **Spring JPA**
    - 对于熟悉面向对象编程和 JPA 规范的开发者来说，Spring JPA 的学习成本相对较低。因为它提供了简单的 API 和自动生成 SQL 的功能，开发者只需要定义接口和方法，就可以完成基本的数据库操作。
    - 然而，要深入掌握 Spring JPA 的高级特性，如自定义查询、性能优化等，仍然需要花费一定的时间和精力。
- **MyBatis**
    - MyBatis 的学习曲线相对较陡，尤其是对于没有 SQL 基础的开发者来说。因为需要手动编写 SQL 语句，所以需要掌握一定的 SQL 知识和数据库操作技能。
    - 同时，还需要了解 MyBatis 的配置文件、映射规则等，学习成本相对较高。

## 4. 性能表现
- **Spring JPA**
    - 在处理简单的数据库操作时，Spring JPA 由于自动生成 SQL，性能表现良好。但在处理复杂的查询时，自动生成的 SQL 可能不是最优的，需要开发者进行手动优化。
    - 另外，JPA 的缓存机制在一定程度上可以提高性能，但如果使用不当，也可能会导致性能问题。
- **MyBatis**
    - 由于开发者可以手动编写 SQL，能够针对具体的业务场景和数据库进行优化，所以在处理复杂查询和大数据量操作时，MyBatis 的性能通常更有优势。
    - 同时，MyBatis 的缓存机制也比较灵活，开发者可以根据需要进行配置。

## 5. 适用场景
- **Spring JPA**
    - 适用于快速开发项目，尤其是对数据库操作要求不复杂，注重开发效率和代码简洁性的项目。例如，一些小型的 Web 应用、原型项目等。
    - 对于团队中 SQL 能力相对较弱的开发者，Spring JPA 可以降低开发难度。
- **MyBatis**
    - 适用于对 SQL 性能要求较高、业务逻辑复杂的项目。例如，企业级应用、数据处理系统等，需要对 SQL 进行精细优化和复杂的多表关联查询。
    - 当项目需要与不同的数据库进行交互，并且需要根据不同数据库的特性编写不同的 SQL 时，MyBatis 更具优势。 


# 暴力反射是啥

暴力反射指的是利用 Java 的反射机制，突破 Java 语言原本的访问控制限制（如私有访问修饰符 private），强行访问、修改对象的私有属性或调用私有方法。下面为你详细介绍暴力反射的原理、使用场景、示例代码及注意事项。


# @Bean和@Component区别

在 Spring 框架里，`@Bean` 和 `@Component` 都和 Bean 的定义相关，但它们在使用场景、使用方式等方面存在明显差异，下面为你详细介绍：

## 作用层面
- **`@Component`**
    - 这是一个通用的组件注解，属于类级别的注解。当你在一个类上使用 `@Component` 注解时，就表明这个类是 Spring 管理的一个组件。Spring 会在启动时自动扫描带有 `@Component` 注解的类，并将其注册为 Bean。
    - 除了 `@Component` 外，Spring 还提供了几个语义更明确的衍生注解，如 `@Service`（用于服务层组件）、`@Repository`（用于数据访问层组件）、`@Controller`（用于表现层控制器），它们本质上和 `@Component` 一样，只是为了让代码的语义更清晰。
- **`@Bean`**
    - 它是方法级别的注解，通常在配置类（使用 `@Configuration` 注解的类）中使用。`@Bean` 注解的作用是告诉 Spring，由该注解标注的方法将返回一个对象，这个对象会被注册为 Spring 容器中的 Bean。

## 使用方式
- **`@Component`**
使用时直接将其添加到类的定义上，示例如下：
```java
import org.springframework.stereotype.Component;

@Component
public class MyComponent {
    public void doSomething() {
        System.out.println("Doing something...");
    }
}
```
同时，要确保 Spring 的组件扫描功能开启，一般在配置类上添加 `@ComponentScan` 注解：
```java
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;

@Configuration
@ComponentScan(basePackages = "com.example")
public class AppConfig {
    // 配置类的其他内容
}
```
- **`@Bean`**
在配置类中使用 `@Bean` 注解标注一个方法，该方法返回一个对象，示例如下：
```java
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class AppConfig {
    @Bean
    public MyBean myBean() {
        return new MyBean();
    }
}

class MyBean {
    public void doSomething() {
        System.out.println("MyBean is doing something...");
    }
}
```

## 灵活性
- **`@Component`**
主要用于标注自定义的类，让 Spring 自动发现并注册为 Bean。这种方式适合那些你自己编写的、符合组件规范的类。但它的局限性在于，对于一些第三方库中的类，你无法直接在其类定义上添加 `@Component` 注解。
- **`@Bean`**
非常灵活，可以用于任何类的 Bean 定义，包括第三方库中的类。你可以在配置类中创建并配置这些类的实例，然后将其注册为 Bean。例如，你可以对 Bean 的创建过程进行更多的控制，如传入参数、进行初始化操作等：
```java
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class AppConfig {
    @Bean
    public ThirdPartyLibraryClass thirdPartyBean() {
        ThirdPartyLibraryClass bean = new ThirdPartyLibraryClass();
        bean.setSomeProperty("Some value");
        return bean;
    }
}
```

## 生命周期管理
- **`@Component`**
Spring 会自动管理使用 `@Component` 注解的类的生命周期，包括实例化、依赖注入、初始化和销毁等过程。这些过程通常遵循 Spring 的默认规则。
- **`@Bean`**
使用 `@Bean` 注解时，你可以对 Bean 的生命周期进行更细粒度的控制。例如，你可以通过 `@Bean` 注解的 `initMethod` 和 `destroyMethod` 属性指定 Bean 的初始化方法和销毁方法：
```java
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class AppConfig {
    @Bean(initMethod = "init", destroyMethod = "destroy")
    public MyBean myBean() {
        return new MyBean();
    }
}

class MyBean {
    public void init() {
        System.out.println("MyBean is initializing...");
    }

    public void doSomething() {
        System.out.println("MyBean is doing something...");
    }

    public void destroy() {
        System.out.println("MyBean is destroying...");
    }
}
```

综上所述，`@Component` 适用于自动扫描和注册自定义组件，而 `@Bean` 更侧重于手动配置和管理 Bean，尤其是对于第三方库的类或需要精细控制 Bean 创建过程的场景。 


# 注解开发总结

![alt text](/img/na_springboot_notes/image.png)


# jdbc是啥

JDBC 即 Java Database Connectivity（Java 数据库连接），它是 Java 编程语言用于与各种关系型数据库进行交互的标准 API。以下从概念、工作原理、核心组件、使用步骤、优缺点几个方面进行详细介绍：

## 概念
JDBC 由一组用 Java 语言编写的类和接口组成，为 Java 开发人员提供了一种统一的方式来访问不同类型的数据库，如 MySQL、Oracle、SQL Server 等，而无需关心具体数据库的实现细节。通过 JDBC，开发人员可以执行 SQL 语句，实现对数据库的查询、插入、更新和删除等操作。

## 工作原理
JDBC 采用了一种分层的架构，主要分为两层：应用程序层和驱动程序层。
- **应用程序层**：开发人员编写的 Java 代码，通过调用 JDBC API 来执行数据库操作。
- **驱动程序层**：负责与具体的数据库进行通信，将 JDBC API 调用转换为数据库能够理解的指令。不同的数据库需要不同的 JDBC 驱动程序，例如 MySQL 有 MySQL Connector/J 驱动，Oracle 有 Oracle JDBC 驱动等。

## 核心组件
JDBC 的核心组件主要包括以下几个接口和类：
- **DriverManager**：这是 JDBC 的管理层，负责加载 JDBC 驱动程序并建立与数据库的连接。它会根据不同的数据库 URL 来选择合适的驱动程序，并返回一个 `Connection` 对象。
- **Connection**：代表与数据库的一个连接会话，通过 `DriverManager.getConnection()` 方法获取。一个 `Connection` 对象可以创建多个 `Statement` 或 `PreparedStatement` 对象，用于执行 SQL 语句。
- **Statement**：用于执行静态 SQL 语句，它可以执行查询、更新等操作。但由于存在 SQL 注入的风险，在实际开发中使用相对较少。
- **PreparedStatement**：是 `Statement` 的子接口，用于执行预编译的 SQL 语句。它可以有效防止 SQL 注入攻击，并且对于需要多次执行的 SQL 语句，性能更高。
- **ResultSet**：用于存储 SQL 查询的结果集。当执行查询语句后，会返回一个 `ResultSet` 对象，通过它可以遍历查询结果，获取每一行的数据。

## 使用步骤
使用 JDBC 进行数据库操作一般需要以下几个步骤：
1. **加载 JDBC 驱动程序**：通过 `Class.forName()` 方法加载相应的 JDBC 驱动类。例如，加载 MySQL 驱动：
```java
Class.forName("com.mysql.cj.jdbc.Driver");
```
2. **建立数据库连接**：使用 `DriverManager.getConnection()` 方法建立与数据库的连接，需要提供数据库的 URL、用户名和密码。例如：
```java
String url = "jdbc:mysql://localhost:3306/mydb";
String username = "root";
String password = "password";
Connection connection = DriverManager.getConnection(url, username, password);
```
3. **创建 `Statement` 或 `PreparedStatement` 对象**：根据需要执行的 SQL 语句类型，创建相应的对象。例如，创建 `PreparedStatement` 对象：
```java
String sql = "SELECT * FROM users WHERE id = ?";
PreparedStatement preparedStatement = connection.prepareStatement(sql);
preparedStatement.setInt(1, 1);
```
4. **执行 SQL 语句**：调用 `Statement` 或 `PreparedStatement` 对象的 `executeQuery()` 方法执行查询语句，或 `executeUpdate()` 方法执行更新语句。例如：
```java
ResultSet resultSet = preparedStatement.executeQuery();
```
5. **处理查询结果**：如果执行的是查询语句，需要遍历 `ResultSet` 对象获取查询结果。例如：
```java
while (resultSet.next()) {
    int id = resultSet.getInt("id");
    String name = resultSet.getString("name");
    System.out.println("ID: " + id + ", Name: " + name);
}
```
6. **关闭资源**：操作完成后，需要依次关闭 `ResultSet`、`Statement` 和 `Connection` 对象，以释放资源。例如：
```java
resultSet.close();
preparedStatement.close();
connection.close();
```

## 优缺点
- **优点**
    - **通用性**：提供了统一的 API，使得开发人员可以使用相同的代码结构来访问不同的数据库，提高了代码的可移植性。
    - **灵活性**：可以执行任意的 SQL 语句，对数据库进行各种操作，满足不同的业务需求。
    - **性能**：对于简单的数据库操作，JDBC 具有较高的性能，因为它直接与数据库进行交互，没有过多的中间层。
- **缺点**
    - **代码繁琐**：使用 JDBC 进行数据库操作需要编写大量的样板代码，如加载驱动、建立连接、关闭资源等，增加了开发的工作量。
    - **缺乏高级特性**：JDBC 本身不提供对象关系映射（ORM）等高级特性，对于复杂的数据库操作，开发人员需要手动编写大量的 SQL 语句和数据转换代码。 