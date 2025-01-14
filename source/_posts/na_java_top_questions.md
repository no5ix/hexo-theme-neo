---
title: NA Java Top Questions
date: 2025-01-12 23:36:08
tags:
- noodle
- Java
- NA
categories:
- Java
---


# Reference

[小恐龙网站](https://zihan1997.github.io/presentation/interview_questions/), 本文的编号是基于这个网站中的编号的


# 46-Types of Exceptions

![Exception](/img/java_top_questions/image.png)

- Java Exception hierarchy:
    - throwable
        - error
            - error is like system error which can NOT be handled by program, like OutOfMemoryError, StackOverflowError etc.
        - exception.
            - Exception -- compile/checked exception + runtime/unchecked exception. Checked exception can be handled using try catch block, like the SQLException, Thread InterrupttedException; Unchecked exception happens in runtime, like NullPointerException, IndexOutOfBoundException etc.

            - self defined exception: Just extend the java Exception class and define your own constructor and message
- How to deal with exception
    - Java: use Try/Catch/Finally block or use Throws on method level.
    - Spring: use @ExceptionHandler @ControllerAdvice on the controller level to catch exception in whole application

# 43-Abstract class vs. Interface

Difference Between Interface and Abstract Class in Java

> In Java, interfaces and abstract classes are both used to define templates or contracts for other classes, but they have distinct purposes and characteristics. Below is a comparison with examples to clarify their differences.

Key Differences


|Feature|	Interface|	Abstract Class|
|-|-|-|
|Keyword|	interface|	abstract|
|Inheritance|	A class can implement multiple interfaces.	| A class can extend only one abstract class.
|Method| Implementation	Methods are abstract by default (except `default` methods, which can have implementations).|Can contain both abstract and concrete (regular) methods.
|Fields|Can only have `public` `static` `final` constants.|Can have instance variables.
|Constructors|Not allowed.|Can have constructors.
|Default Access Level | Methods are implicitly `public`.| Methods can have `public`, `protected`, or `package-private` access.
|Use Case|Defines a contract or capability.|Defines shared characteristics or behavior.

Example 1: Using an Interface

> An interface is used to define a set of behaviors (a contract) that a class must implement.

```java
// Define an interface
interface Animal {
    void eat();  // Abstract method
    void sleep();  // Abstract method
}

// Implement the interface
class Dog implements Animal {
    @Override
    public void eat() {
        System.out.println("Dog eats bones.");
    }

    @Override
    public void sleep() {
        System.out.println("Dog sleeps in its kennel.");
    }
}

public class Main {
    public static void main(String[] args) {
        Animal myDog = new Dog();
        myDog.eat();   // Output: Dog eats bones.
        myDog.sleep(); // Output: Dog sleeps in its kennel.
    }
}
```

Example 2: Using an Abstract Class

> An abstract class is used when you want to share common code among related classes while still requiring subclasses to provide specific implementations.

```java
// Define an abstract class
abstract class Animal {
    abstract void eat(); // Abstract method
    void sleep() {       // Concrete method
        System.out.println("Animal is sleeping.");
    }
}

// Extend the abstract class
class Cat extends Animal {
    @Override
    void eat() {
        System.out.println("Cat eats fish.");
    }
}

public class Main {
    public static void main(String[] args) {
        Animal myCat = new Cat();
        myCat.eat();   // Output: Cat eats fish.
        myCat.sleep(); // Output: Animal is sleeping.
    }
}
```

When to Use: 
- Interface:
    - Use an interface to define a set of behaviors or capabilities that a class must adhere to, without concerning how they are implemented.
    - Example: The Runnable interface defines the ability to be run in a thread.
- Abstract Class:
    - Use an abstract class to represent shared characteristics or behavior while allowing subclasses to override specific parts.
    - Example: The HttpServlet abstract class provides a framework for handling HTTP requests while letting you implement methods like doGet() or doPost().


# 44-New feature of Java 8

Java 8 has several new features. Here are some of them along with examples of how they can be used in a project:

## 1. Lambda Expressions
Lambda expressions enable a more concise way to represent code blocks that can be passed to methods or stored in variables.

**Example: In an e-commerce project, filtering a list of products by price. Suppose there is a `Product` class with a `price` field.
```java
import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

class Product {
    private double price;
    private String name;

    public Product(double price, String name) {
        this.price = price;
        this.name = name;
    }

    public double getPrice() {
        return price;
    }
}

public class Main {
    public static void main(String[] args) {
        List<Product> products = new ArrayList<>();
        products.add(new Product(100, "Product1"));
        products.add(new Product(200, "Product2"));
        products.add(new Product(150, "Product3"));

        // Use Lambda expression to filter products with price greater than 150
        List<Product> filteredProducts = products.stream()
             .filter(product -> product.getPrice() > 150)
             .collect(Collectors.toList());

        filteredProducts.forEach(product -> System.out.println(product.getPrice()));
    }
}
```

## 2. Method References
Method references provide a more concise way to refer to existing methods.

**Example: In a logging project, there is a `Logger` class with a `logMessage` method for logging messages.
```java
import java.util.Arrays;
import java.util.List;

class Logger {
    public static void logMessage(String message) {
        System.out.println("Logging: " + message);
    }
}

public class Main {
    public static void main(String[] args) {
        List<String> messages = Arrays.asList("Message1", "Message2", "Message3");

        // Use method reference to apply the logging method to each message
        messages.forEach(Logger::logMessage);
    }
}
```

## 3. Stream API
The Stream API is used for performing functional operations on collections, such as filtering, mapping, and reducing.

**Example: In a data analysis project, calculating the total salary of employees. Suppose there is an `Employee` class with a `salary` field.
```java
import java.util.ArrayList;
import java.util.List;

class Employee {
    private double salary;

    public Employee(double salary) {
        this.salary = salary;
    }

    public double getSalary() {
        return salary;
    }
}

public class Main {
    public static void main(String[] args) {
        List<Employee> employees = new ArrayList<>();
        employees.add(new Employee(5000));
        employees.add(new Employee(6000));
        employees.add(new Employee(7000));

        // Use Stream API to calculate the total salary of employees
        double totalSalary = employees.stream()
             .mapToDouble(Employee::getSalary)
             .sum();

        System.out.println("Total salary: " + totalSalary);
    }
}
```

## 4. Optional Class

The Optional class is used to solve the problem of null pointer exceptions and handle potentially null values more gracefully.

**Example: In a user management system, getting a user's email address. Suppose the `User` class has a `getEmail` method that might return `null`.
```java
import java.util.Optional;

class User {
    private String email;

    public User(String email) {
        this.email = email;
    }

    public String getEmail() {
        return email;
    }
}

public class Main {
    public static void main(String[] args) {
        User user = new User("example@example.com");

        // Use Optional class to safely get the user's email address
        Optional<String> emailOptional = Optional.ofNullable(user.getEmail());
        String email = emailOptional.orElse("default@example.com");

        System.out.println("Email: " + email);
    }
}
```


# 67-Implement a singleton

```java
import java.io.Serializable;

public class Singleton implements Cloneable, Serializable {

    private static volatile Singleton instance;

    private Singleton() {}

    public static Singleton getInstance() {
        if (instance == null) {
            synchronized (Singleton.class) {
                if (instance == null) {
                    instance = new Singleton();
                }
            }
        }
        return instance;
    }

    @Override
    protected Object clone() throws CloneNotSupportedException {
        throw new CloneNotSupportedException("Cloning of Singleton is not allowed.");
    }

    protected Object readResolve() {
        return getInstance();
    }
}
```

Here is the explanation of this Java code in English:
1. Package Import:
    - `import java.io.Serializable;`: Imports the `Serializable` interface, which is used to mark a class as serializable, meaning that objects of this class can be converted into a byte stream for storage or transmission.
        - In a `Singleton` class, implementing the `Serializable` interface is to ensure that the Singleton pattern remains a singleton during serialization and deserialization.
        - If there is no `readResolve` method, a new object will be created during deserialization, which will break the Singleton pattern. Because the deserialization mechanism will create a new object through reflection instead of using the existing singleton instance.
        - When there is a `readResolve` method, during deserialization, the `readResolve` method will be called and it returns the singleton instance (obtained through the `getInstance` method), thus ensuring that the same singleton object is obtained after serialization and deserialization.
        - If the serialization - related content is not handled properly, multiple "singleton" objects may appear during deserialization, which violates the original intention of the Singleton pattern design. For example, suppose there is no `readResolve` method, each deserialization will create a new `Singleton` object instead of reusing the existing singleton object.
2. Class Definition:
    - `public class Singleton implements Cloneable, Serializable`: Defines a public class named `Singleton` that implements the `Cloneable` interface and the `Serializable` interface. Implementing the `Cloneable` interface usually indicates that objects of this class can be cloned (although in this example, the `clone` method is overridden to disallow cloning), and implementing the `Serializable` interface indicates that objects of this class can be serialized.
3. Static Member Variable:
    - `private static volatile Singleton instance;`: Defines a private static variable `instance` of type `Singleton`. The `volatile` keyword is used to ensure thread-safe access to the variable in a multi-threaded environment. This prevents certain visibility and reordering issues that can occur in a multi-threaded context, making sure that changes made by one thread are visible to other threads immediately.
4. Private Constructor:
    - `private Singleton() {}`: Declares a private constructor. This ensures that the `Singleton` class cannot be instantiated directly from outside the class. This is a common practice in implementing the Singleton design pattern, as it restricts the creation of `Singleton` objects to within the class itself.
5. Static Method to Get Instance:
    - `public static Singleton getInstance() {... }`: Defines a public static method `getInstance` which is used to obtain the single instance of the `Singleton` class.
        - `if (instance == null) {... }`: Checks if the `instance` variable is `null`. If it is, then the code enters the synchronized block.
        - `synchronized (Singleton.class) {... }`: Uses a synchronized block with the `Singleton.class` object as the lock. This ensures that only one thread can execute the code inside the block at a time, preventing multiple threads from creating multiple instances of the `Singleton` class.
        - `if (instance == null) { instance = new Singleton(); }`: Inside the synchronized block, the code checks again if `instance` is `null` (this is known as double-checked locking) before creating a new instance of `Singleton`. This is done to avoid unnecessary synchronization overhead. Once the instance is created, subsequent calls to `getInstance` will simply return the already created instance.
6. Clone Method Override:
    - `@Override protected Object clone() throws CloneNotSupportedException {... }`: Overrides the `clone` method from the `Cloneable` interface. Here, it throws a `CloneNotSupportedException` with a message indicating that cloning of the `Singleton` object is not allowed. This is done to maintain the Singleton property, as we do not want multiple instances created through cloning.
7. Read Resolve Method:
    - `protected Object readResolve() { return getInstance(); }`: The `readResolve` method is used during deserialization. When an object is deserialized, this method is called. Here, it returns the instance obtained from the `getInstance` method, ensuring that deserialization does not break the Singleton property. Instead of creating a new instance during deserialization, it returns the existing singleton instance, thus maintaining the Singleton guarantee.


In summary, this code implements the Singleton design pattern in Java, which ensures that only one instance of the `Singleton` class exists throughout the application. It uses double-checked locking for thread-safe lazy initialization of the instance, prevents cloning, and ensures that deserialization returns the existing singleton instance rather than creating a new one. This is a common and robust way of implementing the Singleton pattern in Java, taking into account thread safety and serialization issues.


# 68-364-Executor Service and Future and CompletableFuture

Benefits of using Executor Service and Future:
- Resource Management: `ExecutorService` manages threads efficiently, reducing the overhead of thread creation and destruction.
- Asynchronous Execution: Allows tasks to be executed in parallel, improving the performance of applications by leveraging multiple threads.
- Result Handling: `Future` provides a way to handle the results of asynchronous tasks, including waiting for the result, checking if the task is completed, and handling exceptions.


In summary, `ExecutorService` simplifies thread management and task execution, while `Future` provides a mechanism to interact with the results of asynchronous tasks. Together, they are powerful tools for writing concurrent and asynchronous Java programs, helping to improve performance and code readability.


## Executor Service

- The `ExecutorService` is an interface in Java that provides a higher-level abstraction for executing tasks asynchronously compared to using raw threads. It is part of the `java.util.concurrent` package.
- It manages a pool of threads, which can be used to execute `Runnable` or `Callable` tasks. By using an `ExecutorService`, you don't have to deal with the low-level details of thread creation, management, and destruction.
- You can submit tasks to the `ExecutorService`, and it will handle scheduling and execution of those tasks using its thread pool.
- Some commonly used implementations of `ExecutorService` include `ThreadPoolExecutor` and `ScheduledThreadPoolExecutor`.
- Example of creating an `ExecutorService`:
    ```java
    import java.util.concurrent.ExecutorService;
    import java.util.concurrent.Executors;

    public class ExecutorServiceExample {
        public static void main(String[] args) {
            // Creates a fixed-size thread pool with 5 threads
            ExecutorService executorService = Executors.newFixedThreadPool(5);
            // Submits a Runnable task
            executorService.execute(() -> {
                System.out.println("Task executed by thread: " + Thread.currentThread().getName());
            });
            // Shuts down the executor service after all tasks are completed
            executorService.shutdown();
        }
    }
    ```
    In the code above:
    - `Executors.newFixedThreadPool(5)` creates a fixed-size thread pool with 5 threads.
    - `executorService.execute()` submits a `Runnable` task to the executor service for execution. The `Runnable` task is defined using a lambda expression, which simply prints the name of the thread that executes the task.
    - `executorService.shutdown()` shuts down the executor service after all submitted tasks have completed.


## Future

- The `Future` interface represents the result of an asynchronous computation. It is used in conjunction with `ExecutorService` when you submit a `Callable` task.
- A `Callable` is similar to a `Runnable`, but it can return a result and throw an exception.
- When you submit a `Callable` to an `ExecutorService`, it returns a `Future` object, which you can use to check if the computation is done, wait for the computation to complete, and retrieve the result of the computation.
- Example of using `Future` with `ExecutorService`:
    ```java
    import java.util.concurrent.Callable;
    import java.util.concurrent.ExecutionException;
    import java.util.concurrent.ExecutorService;
    import java.util.concurrent.Executors;
    import java.util.concurrent.Future;

    public class FutureExample {
        public static void main(String[] args) {
            ExecutorService executorService = Executors.newFixedThreadPool(5);
            // Submits a Callable task
            Future<Integer> future = executorService.submit(new Callable<Integer>() {
                @Override
                public Integer call() throws Exception {
                    // Simulates some computation
                    Thread.sleep(2000);
                    return 42;
                }
            });
            try {
                // Waits for the task to complete and gets the result
                Integer result = future.get();
                System.out.println("Result: " + result);
            } catch (InterruptedException | ExecutionException e) {
                e.printStackTrace();
            }
            executorService.shutdown();
        }
    }
    ```
    In the code above:
    - `executorService.submit()` is used to submit a `Callable<Integer>` task. The `Callable` task simulates some computation (in this case, it sleeps for 2 seconds and then returns the value 42).
    - `future.get()` blocks the calling thread until the computation is completed and returns the result. If the computation throws an exception, it will be wrapped in an `ExecutionException`.
    - `InterruptedException` is thrown if the waiting thread is interrupted while waiting for the result.


## CompletableFuture

- Enhanced Functionality:
    - `CompletableFuture` is introduced in Java 8. It implements `Future` and provides additional functionality for chaining asynchronous operations, combining multiple futures, and handling exceptions.
    - It allows you to perform actions upon completion, combine multiple futures, and transform results.
    ```java
    import java.util.concurrent.CompletableFuture;
    import java.util.concurrent.ExecutionException;

    public class CompletableFutureExample {
        public static void main(String[] args) throws ExecutionException, InterruptedException {
            CompletableFuture<Integer> future = CompletableFuture.supplyAsync(() -> {
                // Simulate a long-running task
                try {
                    Thread.sleep(2000);
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
                return 42;
            });

            // Do other work while the future is being computed
            System.out.println("Doing other work...");

            // Chain another action upon completion
            CompletableFuture<String> resultFuture = future.thenApply(result -> "Result: " + result);

            // Block until the final result is available
            String result = resultFuture.get();
            System.out.println(result);
            /* result print:
                Doing other work...
                Result: 42
            */
        }
    }
    ```
    - Explanation:
        1. `CompletableFuture.supplyAsync(() -> {... });`: Creates a `CompletableFuture` that runs the given task asynchronously.
        2. `future.thenApply(result -> "Result: " + result);`: Chains another action to the `CompletableFuture`.
        3. `resultFuture.get();`: Blocks until the final result is available.

## Key Differences

- Chaining and Composing:
    - Future: Does not support chaining or combining multiple asynchronous tasks.
    - CompletableFuture: Allows chaining of operations using methods like `thenApply`, `thenCompose`, `thenCombine`, etc., enabling functional composition of asynchronous tasks.
- Exception Handling:
    - Future: Limited to `get()` which throws checked exceptions.
    - CompletableFuture: Provides methods like `exceptionally` and `handle` for better exception handling in asynchronous tasks.
- Completion Control:
    - Future: You have to wait for the future to complete using `get()`.
    - CompletableFuture: Allows you to complete the future manually using `complete()` or `completeExceptionally()`.


## Best Practices

- Use Future: For simple asynchronous tasks where you only need to wait for a result.
- Use CompletableFuture: For complex asynchronous workflows, combining multiple tasks, and performing operations upon completion of tasks.
    - By using `CompletableFuture`, you can write more readable and powerful asynchronous code, leveraging the functional programming features of Java 8 and later.


# 70-Factory Pattern & Obeserver Pattern

- Factory Pattern
    - This factory pattern allows you to create objects without exposing the instantiation logic to the client. The client only needs to interact with the `ProductFactory` and provide the product type, and the factory takes care of creating the appropriate product. This promotes loose coupling and makes the code more modular and maintainable.
    ```java
    // Product interface
    interface Product {
        void show();
    }

    // Concrete Product A
    class ConcreteProductA implements Product {
        @Override
        public void show() {
            System.out.println("This is ConcreteProductA");
        }
    }

    // Concrete Product B
    class ConcreteProductB implements Product {
        @Override
        public void show() {
            System.out.println("This is ConcreteProductB");
        }
    }

    // Factory class
    class ProductFactory {
        public Product createProduct(String productType) {
            if (productType.equalsIgnoreCase("A")) {
                return new ConcreteProductA();
            } else if (productType.equalsIgnoreCase("B")) {
                return new ConcreteProductB();
            } else {
                throw new IllegalArgumentException("Invalid product type: " + productType);
            }
        }
    }

    // Main class to demonstrate the factory pattern
    public class FactoryPatternExample {
        public static void main(String[] args) {
            ProductFactory factory = new ProductFactory();

            // Create product A
            Product productA = factory.createProduct("A");
            productA.show();

            // Create product B
            Product productB = factory.createProduct("B");
            productB.show();

            try {
                // Try to create an invalid product
                Product invalidProduct = factory.createProduct("C");
                invalidProduct.show();
            } catch (IllegalArgumentException e) {
                System.out.println(e.getMessage());
            }
        }
    }
    ```
- Observer Pattern
    - This code demonstrates the Observer Pattern, which allows a subject to maintain a list of observers and notify them of any state changes. It promotes loose coupling between the subject and the observers, making it easy to add or remove observers without modifying the subject's code.
    ```java
    import java.util.ArrayList;
    import java.util.List;

    // Observer interface
    interface Observer {
        void update(String message);
    }

    // Subject interface
    interface Subject {
        void attach(Observer observer);
        void detach(Observer observer);
        void notifyObservers(String message);
    }

    // Concrete Subject
    class ConcreteSubject implements Subject {
        private List<Observer> observers = new ArrayList<>();

        @Override
        public void attach(Observer observer) {
            observers.add(observer);
        }

        @Override
        public void detach(Observer observer) {
            observers.remove(observer);
        }

        @Override
        public void notifyObservers(String message) {
            for (Observer observer : observers) {
                observer.update(message);
            }
        }
    }

    // Concrete Observer A
    class ConcreteObserverA implements Observer {
        @Override
        public void update(String message) {
            System.out.println("ConcreteObserverA received message: " + message);
        }
    }

    // Concrete Observer B
    class ConcreteObserverB implements Observer {
        @Override
        public void update(String message) {
            System.out.println("ConcreteObserverB received message: " + message);
        }
    }

    // Main class to demonstrate the Observer Pattern
    public class ObserverPatternExample {
        public static void main(String[] args) {
            // Create subject
            ConcreteSubject subject = new ConcreteSubject();

            // Create observers
            Observer observerA = new ConcreteObserverA();
            Observer observerB = new ConcreteObserverB();

            // Attach observers to the subject
            subject.attach(observerA);
            subject.attach(observerB);

            // Notify observers
            subject.notifyObservers("Hello, Observers!");

            // Detach one observer
            subject.detach(observerB);

            // Notify remaining observer
            subject.notifyObservers("Goodbye, Observers!");
        }
    }
    ```


# 448-Proxy Pattern

The Proxy Design Pattern is a structural design pattern that provides a surrogate or placeholder for another object to control access to it. It is used to control access to the real object, add additional functionality, or provide a more efficient way of accessing the object. Here's a detailed explanation:

## Structure of Proxy Design Pattern

- Subject: This is an interface that defines the common interface for the RealSubject and Proxy.
- RealSubject: This is the actual object that the proxy represents.
- Proxy: This is the object that controls access to the RealSubject. It has a reference to the RealSubject and implements the Subject interface.

```java
interface Image {
    void display();
}

class RealImage implements Image {
    private final String fileName;

    public RealImage(String fileName) {
        this.fileName = fileName;
        loadFromDisk();
    }

    private void loadFromDisk() {
        System.out.println("Loading " + fileName);
    }

    @Override
    public void display() {
        System.out.println("Displaying " + fileName);
    }
}

class ProxyImage implements Image {
    private RealImage realImage;
    private final String fileName;

    public ProxyImage(String fileName) {
        this.fileName = fileName;
    }

    @Override
    public void display() {
        if (realImage == null) {
            realImage = new RealImage(fileName);
        }
        realImage.display();
    }
}
```

Explanation:
1. Interface `Image`:
    - `interface Image` defines the `display()` method that both `RealImage` and `ProxyImage` will implement.
2. RealSubject `RealImage`:
    - `RealImage` implements `Image`.
    - The `RealImage` constructor loads the image from disk when an instance is created.
    - The `display()` method displays the image.
3. Proxy `ProxyImage`:
    - `ProxyImage` also implements `Image`.
    - `ProxyImage` holds a reference to `RealImage`.
    - In the `display()` method of `ProxyImage`, if `realImage` is not instantiated, it creates a `RealImage` instance.
    - Then, it calls the `display()` method of `RealImage`.


## Use Cases

- Remote Proxy: Used to represent an object that exists in a different address space, like a remote object in a distributed system.
- Virtual Proxy: Used to create expensive objects on demand. For example, loading images only when they are needed to be displayed.
- Protection Proxy: Used to control access to the real object, providing authentication or authorization.


## Benefits

- Lazy Loading: Objects can be loaded only when they are needed, improving performance.
- Access Control: Provides a way to control access to the real object, adding security or authorization.
- Enhanced Functionality: Proxies can add additional functionality, like logging or caching, without modifying the real object.


## Example of Usage

```java
public class ProxyPatternExample {
    public static void main(String[] args) {
        Image image = new ProxyImage("test.jpg");
        // Image is loaded from disk only when display is called
        image.display();
        image.display();
    }
}
```
Explanation:
1. We create a `ProxyImage` instance with the file name "test.jpg".
2. The first time `display()` is called, `RealImage` is instantiated and the image is loaded and displayed.
3. The second time `display()` is called, the already instantiated `RealImage` is used, avoiding reloading.


# 135-map vs. flatMap

In functional programming, `Map` and `FlatMap` are two commonly used higher-order functions, especially in languages like Java, Scala, Python, and JavaScript. Here's a detailed explanation of both:

- Map
  - Purpose: The `Map` function takes a function and applies it to each element of a collection, transforming each element into a new element. The result is a collection of the same size, where each element has been transformed by the function.
      ```java
      import java.util.Arrays;
      import java.util.List;
      import java.util.stream.Collectors;

      public class MapExample {
          public static void main(String[] args) {
              List<Integer> numbers = Arrays.asList(1, 2, 3, 4, 5);
              // Map each integer to its square
              List<Integer> squaredNumbers = numbers.stream()
                                          .map(n -> n * n)
                                          .collect(Collectors.toList());
              System.out.println(squaredNumbers);  // [1, 4, 9, 16, 25]
          }
      }
      ```
      - Explanation:
          1. We have a list of integers `numbers`.
          2. We use the `stream()` method to convert the list into a stream.
          3. The `map()` function takes a lambda expression `n -> n * n`, which squares each element.
          4. The `collect(Collectors.toList())` method collects the transformed elements back into a list.
- FlatMap
    - Purpose: The `FlatMap` function takes a function that returns a collection for each element in the original collection. It then flattens all these collections into a single collection. It is used when you have a collection of collections and want to transform them into a single collection.
        ```java
        import java.util.Arrays;
        import java.util.List;
        import java.util.stream.Collectors;

        public class FlatMapExample {
            public static void main(String[] args) {
                List<List<Integer>> numberLists = Arrays.asList(
                        Arrays.asList(1, 2),
                        Arrays.asList(3, 4),
                        Arrays.asList(5, 6)
                );
                // FlatMap to convert a list of lists into a single list
                List<Integer> flattenedNumbers = numberLists.stream()
                                                    .flatMap(list -> list.stream())
                                                    .collect(Collectors.toList());
                System.out.println(flattenedNumbers);  // [1, 2, 3, 4, 5, 6]
            }
        }
        ```
        - Explanation:
            1. We have a list of lists of integers `numberLists`.
            2. We use `stream()` to convert the list of lists into a stream.
            3. The `flatMap()` function takes a lambda expression `list -> list.stream()`, which converts each inner list into a stream.
            4. The `flatMap()` function then flattens all these streams into a single stream.
            5. Finally, `collect(Collectors.toList())` collects the elements from the flattened stream into a single list.


# 374-Synchronized Method vs Synchronized block

- Synchronized Method
    ```java
    public class SynchronizedMethodExample {
        private int count = 0;

        public synchronized void increment() {
            count++;
        }
    }
    ```
    - Explanation:
        - The `synchronized` keyword is applied directly to the method signature.
        - When a thread calls `increment()`, **it acquires the lock on the object instance (this) of the class.**
        - No other thread can execute any other synchronized method of the same object until the first thread completes the execution of the synchronized method.
        - It's a simple way to ensure thread safety but can lead to performance issues if the method contains non-critical code that doesn't need synchronization.
- Synchronized Block
    ```java
    public class SynchronizedBlockExample {
        private int count = 0;
        private final Object lock = new Object();

        public void increment() {
            synchronized (lock) {
                count++;
            }
        }
    }
    ```
    - Explanation:
        - A synchronized block is used within a method.
        - The `synchronized (lock)` statement takes an object (in this case, `lock`) as an argument. This object serves as the lock.
        - Only one thread can enter the synchronized block that uses the same `lock` object at a time.
        - This allows for more granular control over what part of the method is synchronized, which can improve performance by limiting the scope of synchronization to only the critical section.
- Key Differences
    - Scope of Synchronization:
        - Synchronized Method: The entire method is synchronized, even if not all code within the method requires synchronization.
        - Synchronized Block: Only the code within the synchronized block is synchronized, allowing other parts of the method to be executed concurrently by different threads.
    - Lock Object:
        - Synchronized Method: The lock object is the instance of the class itself (this) for instance methods, or the class object for static methods.
        - Synchronized Block: You can specify any object as the lock, giving you flexibility in choosing the granularity of locking.
    - Performance:
        - Synchronized Method: May lead to unnecessary locking and reduced performance if the method contains code that does not need to be synchronized.
        - Synchronized Block: Allows for more efficient locking by only synchronizing the necessary parts of the code.
- Best Practices
    - Use Synchronized Method: When the entire method needs to be thread-safe and the method is relatively small.
    - Use Synchronized Block: When only a part of the method needs to be synchronized, especially in longer methods where only a small part accesses shared resources.


# 106-Thread

Here is an explanation of some important thread methods in Java: `join`, `wait`, `sleep`, and `yield`.

## join() Method

- Purpose: The `join()` method is used to wait for a thread to complete its execution. It is often used when one thread needs to wait for another thread to finish before it can continue its own execution.
    ```java
    public class JoinExample {
        public static void main(String[] args) throws InterruptedException {
            Thread thread1 = new Thread(() -> {
                try {
                    Thread.sleep(2000);
                    System.out.println("Thread 1 completed");
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
            });

            thread1.start();
            thread1.join();
            System.out.println("Main thread continues after thread1 completes");
            /* result print:  
                Thread 1 completed
                Main thread continues after thread1 completes
            */
        }
    }
    ```
    - Explanation:
        1. We create a new `Thread` (`thread1`) which sleeps for 2 seconds and then prints a message.
        2. We start `thread1` with `thread1.start()`.
        3. We call `thread1.join()`, which makes the main thread wait until `thread1` completes its execution.
        4. Only after `thread1` completes, the main thread prints its message.


## wait() Method

- Purpose: The `wait()` method is used to make a thread wait **until some other thread notifies it**. It must be called from a synchronized block or method, and it releases the lock on the object.
    ```java
    public class WaitExample {
        public static void main(String[] args) {
            final Object lock = new Object();

            Thread thread1 = new Thread(() -> {
                synchronized (lock) {
                    try {
                        System.out.println("Thread 1 is waiting");
                        lock.wait();
                        System.out.println("Thread 1 resumed");
                    } catch (InterruptedException e) {
                        e.printStackTrace();
                    }
                }
            });

            Thread thread2 = new Thread(() -> {
                synchronized (lock) {
                    System.out.println("Thread 2 notifying");
                    lock.notify();
                }
            });

            thread1.start();
            try {
                Thread.sleep(1000);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
            thread2.start();
            /* result print:  
                Thread 1 is waiting
                Thread 2 notifying
                Thread 1 resumed
            */
        }
    }
    ```
    - Explanation:
        1. We create an object `lock` which serves as a lock for synchronization.
        2. `thread1` enters a synchronized block, calls `wait()`, and waits.
        3. `thread2` enters the same synchronized block, calls `notify()`, and wakes up `thread1`.


## sleep() Method

- Purpose: The `sleep()` method is used to pause the execution of a thread for a specified amount of time. The thread does not release any locks during this time.
    ```java
    public class SleepExample {
        public static void main(String[] args) {
            Thread thread1 = new Thread(() -> {
                try {
                    System.out.println("Thread 1 sleeping");
                    Thread.sleep(2000);
                    System.out.println("Thread 1 awake");
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
            });

            thread1.start();
            /* result print:  
                Thread 1 sleeping
                Thread 1 awake
            */
        }
    }
    ```
    - Explanation:
        1. We create a new `Thread` (`thread1`).
        2. `thread1` calls `Thread.sleep(2000)`, which pauses the thread for 2 seconds.


## yield() Method

- Purpose: The `yield()` method is used to suggest to the thread scheduler that the current thread is willing to yield its current use of the processor. The thread scheduler is free to ignore this suggestion.
    ```java
    public class YieldExample {
        public static void main(String[] args) {
            Thread thread1 = new Thread(() -> {
                for (int i = 0; i < 5; i++) {
                    System.out.println("Thread 1: " + i);
                    Thread.yield();
                }
            });

            Thread thread2 = new Thread(() -> {
                for (int i = 0; i < 5; i++) {
                    System.out.println("Thread 2: " + i);
                    Thread.yield();
                }
            });

            thread1.start();
            thread2.start();
            /* result print:  
                Thread 2: 0
                Thread 2: 1
                Thread 2: 2
                Thread 1: 0
                Thread 1: 1
                Thread 1: 2
                Thread 2: 3
                Thread 2: 4
                Thread 1: 3
                Thread 1: 4
            */
        }
    }
    ```
    - Explanation:
        1. We create two threads (`thread1` and `thread2`).
        2. Each thread prints a message and calls `Thread.yield()`, suggesting that the scheduler can give the CPU to another thread.


## 104-How does thread communicate/interact/share data with each other

In Java, threads can communicate, interact, and share data with each other through several mechanisms. Here's a detailed overview of these methods:

### Shared Variables

- Using Volatile Variables:
    - A `volatile` variable ensures that all reads and writes to the variable are directly to and from main memory, not cached by threads. It is useful for simple flags or status indicators.
```java
public class VolatileExample {
    private volatile boolean flag = false;

    public void setFlag() {
        flag = true;
    }

    public boolean getFlag() {
        return flag;
    }
}
```
- Explanation:
    1. `private volatile boolean flag = false;`: Declares a `volatile` boolean variable.
    2. `setFlag()` sets the `flag` to `true`.
    3. `getFlag()` retrieves the value of `flag`.
    4. Changes made by one thread to `flag` are immediately visible to other threads.


### Synchronization

- Using Synchronized Methods and Blocks:
    - Synchronization ensures that only one thread can access a synchronized method or block at a time, preventing race conditions.
```java
public class SharedData {
    private int count = 0;

    public synchronized void increment() {
        count++;
    }

    public synchronized int getCount() {
        return count;
    }
}
```
- Explanation:
    1. `public synchronized void increment() {... }`: Synchronized method ensures thread-safe access to `count`.
    2. `public synchronized int getCount() {... }`: Ensures thread-safe access when reading `count`.


### Wait, Notify, and NotifyAll

- Using wait(), notify(), and notifyAll():
    - These methods are used in conjunction with synchronized blocks to pause and resume threads.
```java
public class WaitNotifyExample {
    private boolean ready = false;
    private final Object lock = new Object();

    public void waitForReady() throws InterruptedException {
        synchronized (lock) {
            while (!ready) {
                lock.wait();
            }
        }
    }

    public void setReady() {
        synchronized (lock) {
            ready = true;
            lock.notifyAll();
        }
    }
}
```
- Explanation:
    1. `waitForReady()` waits until `ready` is `true`, using `lock.wait()`.
    2. `setReady()` sets `ready` to `true` and wakes up waiting threads using `lock.notifyAll()`.


### Thread Confinement

- Using ThreadLocal:
    - `ThreadLocal` allows each thread to have its own copy of a variable.
```java
public class ThreadLocalExample {
    private static final ThreadLocal<Integer> threadLocal = new ThreadLocal<>();

    public static void main(String[] args) {
        threadLocal.set(1);
        System.out.println(threadLocal.get());
    }
}
```
- Explanation:
    1. `ThreadLocal<Integer> threadLocal = new ThreadLocal<>();`: Creates a `ThreadLocal` variable.
    2. `threadLocal.set(1);`: Sets the value for the current thread.
    3. `threadLocal.get();`: Retrieves the value for the current thread.


### Using Concurrent Data Structures

- Using Concurrent Collections:
    - Java provides concurrent collections like `ConcurrentHashMap`, `CopyOnWriteArrayList`, etc., which are thread-safe.
```java
import java.util.concurrent.ConcurrentHashMap;

public class ConcurrentMapExample {
    public static void main(String[] args) {
        ConcurrentHashMap<String, Integer> map = new ConcurrentHashMap<>();
        map.put("key", 1);
        System.out.println(map.get("key"));
    }
}
```
- Explanation:
    1. `ConcurrentHashMap<String, Integer> map = new ConcurrentHashMap<>();`: Creates a thread-safe map.
    2. `map.put("key", 1);`: Puts an entry in the map.
    3. `map.get("key");`: Retrieves the value from the map.


### Using Locks and Condition Variables

- Using ReentrantLock and Condition:
    - `ReentrantLock` provides more flexible locking than `synchronized`, and `Condition` allows more control over waiting and signaling.
```java
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.ReentrantLock;

public class LockConditionExample {
    private final ReentrantLock lock = new ReentrantLock();
    private final Condition condition = lock.newCondition();
    private boolean ready = false;

    public void waitForReady() throws InterruptedException {
        lock.lock();
        try {
            while (!ready) {
                condition.await();
            }
        } finally {
            lock.unlock();
        }
    }

    public void setReady() {
        lock.lock();
        try {
            ready = true;
            condition.signalAll();
        } finally {
            lock.unlock();
        }
    }
}
```
- Explanation:
    1. `ReentrantLock lock = new ReentrantLock();`: Creates a reentrant lock.
    2. `Condition condition = lock.newCondition();`: Creates a condition associated with the lock.
    3. `condition.await();` makes the thread wait.
    4. `condition.signalAll();` wakes up waiting threads.


By using these mechanisms, threads can communicate, interact, and share data safely and efficiently, avoiding race conditions and ensuring thread-safe access to shared resources.


## 121-373-deadlock

Deadlock is when you have 2 threads, Thread1 is waiting Thread2 to release lock on an object while Thread2 is waiting for Thread1 to release lock on an object. They are waiting on each other.

```java
public class ThreadLock {
    final static String R1 = "Hello Welcome to Pilot!";
    final static String R2 = "Visit Pilot!";

    public static void main(String[] args) {
        // creating thread T1
        Thread T1 = new Thread() {
            // implementing run method
            public void run() {
                // thread T1 locking the R1 resource
                synchronized (R1) {
                    System.out.println("Thread T1 locked ->   Resource R1");
                    // thread T1 locking the R2 resource
                    synchronized (R2) {
                        System.out.println("Thread T1 locked -> Resource R2");
                    }
                }
            }
        };

        // creating thread T2
        Thread T2 = new Thread() {
            // implementing run method
            public void run() {
                // thread T2 locking the R2 resource
                synchronized (R2) {
                    System.out.println("Thread T2 locked -> Resource R2");
                    // thread T2 locking the R1 resource
                    synchronized (R1) {
                        System.out.println("Thread T1 locked -> Resource R1");
                    }
                }
            }
        };

        // starting both the threads
        T1.start();
        T2.start();
        /* result print:  
            Thread T1 locked ->   Resource R1
            Thread T2 locked -> Resource R2
        */
    }
}
```


### Finding Deadlocks

- Thread Dump Analysis:
    - You can use tools like `jstack` (part of the JDK) to take a thread dump of a running Java application. A thread dump shows the state of all threads, including which locks they hold and which locks they are waiting for.
    - Example of using `jstack`:
        ```
        jstack <PID>
        ```
    - Here, `<PID>` is the process ID of the Java application.
    - Analyzing the thread dump:
        - Look for threads that are in the `BLOCKED` state. If two or more threads are waiting on locks held by each other, it indicates a deadlock.
        - For example, if Thread A is waiting for a lock held by Thread B, and Thread B is waiting for a lock held by Thread A, it's a deadlock.
- Java VisualVM:
    - Java VisualVM is a monitoring and profiling tool. It can detect deadlocks automatically.
    - Steps:
        1. Start your Java application.
        2. Open Java VisualVM.
        3. Locate your application in the list of running Java processes.
        4. Go to the "Threads" tab.
        5. Look for deadlock warnings, and examine thread states and locks.


### Avoiding Deadlocks

- Lock Ordering:
    - Always acquire locks in a consistent order across all threads.
    - Example:
    ```java
    public class DeadlockAvoidance {
        private final Object lock1 = new Object();
        private final Object lock2 = new Object();

        public void method1() {
            synchronized (lock1) {
                synchronized (lock2) {
                    // Critical section
                }
            }
        }

        public void method2() {
            synchronized (lock1) {
                synchronized (lock2) {
                    // Critical section
                }
            }
        }
    }
    ```
    - Explanation:
        - Both `method1()` and `method2()` acquire `lock1` before `lock2`. This ensures that no thread holds `lock2` while waiting for `lock1`.
- Lock Timeout:
    - Use `tryLock()` with a timeout instead of `synchronized` or `lock()`.
    - Example:
    ```java
    import java.util.concurrent.locks.Lock;
    import java.util.concurrent.locks.ReentrantLock;

    public class TimeoutLockExample {
        private final Lock lock1 = new ReentrantLock();
        private final Lock lock2 = new ReentrantLock();

        public void method1() {
            boolean lock1Acquired = false;
            boolean lock2Acquired = false;
            try {
                lock1Acquired = lock1.tryLock(100, TimeUnit.MILLISECONDS);
                lock2Acquired = lock2.tryLock(100, TimeUnit.MILLISECONDS);
                if (lock1Acquired && lock2Acquired) {
                    // Critical section
                }
            } catch (InterruptedException e) {
                // Handle interruption
            } finally {
                if (lock1Acquired) lock1.unlock();
                if (lock2Acquired) lock2.unlock();
            }
        }
    }
    ```
    - Explanation:
        1. `tryLock(100, TimeUnit.MILLISECONDS)` tries to acquire the lock with a timeout of 100 milliseconds.
        2. If the lock cannot be acquired within the timeout, the thread can take corrective action.
- Avoid Nested Locks:
    - Minimize the use of nested locks. If possible, design your code to use a single lock or fewer nested locks.


### Best Practices

- Resource Allocation Graph:
    - Use a resource allocation graph to analyze potential deadlocks before implementation.
    - Ensure that the graph does not contain cycles, which indicate potential deadlocks.
- Deadlock Detection Algorithms:
    - Implement deadlock detection algorithms like the Banker's algorithm in more complex systems, especially in operating systems or resource management systems.


# 118-Relationship between equals() and hashcode()

In Java, the `equals()` method is used to compare the equality of two objects. Here's a detailed explanation:

## Default Implementation

- The `equals()` method is defined in the `Object` class, which is the superclass of all classes in Java.
- The default implementation of `equals()` uses the `==` operator, which checks if two references point to the same object (i.e., reference equality).
    ```java
    public class EqualsExample {
        public static void main(String[] args) {
            Object obj1 = new Object();
            Object obj2 = new Object();
            Object obj3 = obj1;

            System.out.println(obj1.equals(obj2)); // false
            System.out.println(obj1.equals(obj3)); // true
        }
    }
    ```
    - Explanation:
        1. `obj1.equals(obj2)` returns `false` because `obj1` and `obj2` are different object instances.
        2. `obj1.equals(obj3)` returns `true` because `obj3` refers to the same object as `obj1`.


## Overriding equals()

- You should override the `equals()` method in your custom classes if you want to compare objects based on their state (content equality) rather than reference equality.
    ```java
    class Person {
        private String name;
        private int age;

        public Person(String name, int age) {
            this.name = name;
            this.age = age;
        }

        @Override
        public boolean equals(Object o) {
            if (this == o) return true;
            if (o == null || getClass()!= o.getClass()) return false;
            Person person = (Person) o;
            return age == person.age && name.equals(person.name);
        }
    }
    ```
    - Explanation:
        1. `if (this == o) return true;` checks if the objects are the same reference.
        2. `if (o == null || getClass()!= o.getClass()) return false;` checks if `o` is `null` or not of the same class.
        3. `Person person = (Person) o;` casts `o` to `Person`.
        4. `return age == person.age && name.equals(person.name);` compares the `age` and `name` fields.


## hashCode() and equals()

- If you override `equals()`, you should also override `hashCode()`.
- The `hashCode()` method is used in hash-based collections like `HashMap` and `HashSet`.
    ```java
    class Person {
        private String name;
        private int age;

        public Person(String name, int age) {
            this.name = name;
            this.age = age;
        }

        @Override
        public boolean equals(Object o) {
            if (this == o) return true;
            if (o == null || getClass()!= o.getClass()) return false;
            Person person = (Person) o;
            return age == person.age && name.equals(person.name);
        }

        @Override
        public int hashCode() {
            int result = name.hashCode();
            result = 31 * result + age;
            return result;
        }
    }
    ```
    - Explanation:
        1. `hashCode()` is overridden to generate a hash code based on `name` and `age`.
        2. The formula `int result = name.hashCode(); result = 31 * result + age;` is a common way to combine hash codes.


## Rules for equals()

- Reflexive: `x.equals(x)` should always be `true`.
- Symmetric: If `x.equals(y)` is `true`, then `y.equals(x)` should also be `true`.
- Transitive: If `x.equals(y)` is `true` and `y.equals(z)` is `true`, then `x.equals(z)` should be `true`.
- Consistent: Repeated calls to `equals()` should return the same result, if the objects have not changed.
- Null Check: `x.equals(null)` should always be `false`.


## Using equals()

```java
public class EqualsUsage {
    public static void main(String[] args) {
        Person p1 = new Person("John", 30);
        Person p2 = new Person("John", 30);
        Person p3 = new Person("Jane", 25);

        System.out.println(p1.equals(p2)); // true
        System.out.println(p1.equals(p3)); // false
    }
}
```
- Explanation:
    1. `p1.equals(p2)` returns `true` because `p1` and `p2` have the same `name` and `age`(because we overrode its `equals` method above).
    2. `p1.equals(p3)` returns `false` because `p1` and `p3` have different `name` and `age`.


# 132-What is fail-fast and fail-safe?

Here's an explanation of fail-fast and fail-safe mechanisms in Java, particularly in the context of collections:

## Fail-Fast

- Concept:
    - Fail-fast iterators in Java immediately throw a `ConcurrentModificationException` if the collection is modified structurally during iteration. Structural modifications include adding or removing elements.
    - It is designed to fail as soon as possible to avoid unpredictable behavior due to concurrent modifications.
- Example of Fail-Fast Iterator:
    ```java
    import java.util.ArrayList;
    import java.util.Iterator;
    import java.util.List;
    import java.util.ConcurrentModificationException;

    public class test {
        public static void main(String[] args) {
            List<String> list = new ArrayList<>();
            list.add("A");
            list.add("B");
            list.add("C");

            try {
                Iterator<String> iterator = list.iterator();
                while (iterator.hasNext()) {
                    String element = iterator.next();
                    if (element.equals("A")) {
                        // Structural modification
                        list.remove(element);
                        /*
                        the correct way!! When we want to remove an element, we use iterator.remove() instead of list.remove(element). This is the correct way to remove elements while iterating through the list, as the iterator's remove() method is designed to handle the modification safely, updating the internal state of the iterator and avoiding ConcurrentModificationException.
                        */
                    }
                }
            } catch (ConcurrentModificationException e) {
                System.out.println("ConcurrentModificationException caught: " + e.getMessage());
            }
            /* result print:
                ConcurrentModificationException caught: null
            */
        }
    }
    ```
    - Explanation:
        1. We create an `ArrayList` and add elements "A", "B", and "C".
        2. We obtain an iterator using `list.iterator()`.
        3. While iterating, we attempt to remove an element using `list.remove(element)`.
        4. This results in a `ConcurrentModificationException` because the collection is modified during iteration.


## Fail-Safe

- Concept:
    - Fail-safe iterators in Java do not throw `ConcurrentModificationException` when the collection is modified structurally during iteration.
    - They operate on a copy of the collection, not the original collection, so changes to the original collection do not affect the iteration.
- Example of Fail-Safe Iterator:
    ```java
    import java.util.concurrent.CopyOnWriteArrayList;

    public class FailSafeExample {
            public static void main(String[] args) {
                    CopyOnWriteArrayList<String> list = new CopyOnWriteArrayList<>();
                    list.add("A");
                    list.add("B");
                    list.add("C");

                    Iterator<String> iterator = list.iterator();
                    while (iterator.hasNext()) {
                            String element = iterator.next();
                            if (element.equals("B")) {
                                    // Structural modification
                                    list.remove(element);
                            }
                    }
            }
    }
    ```
    - Explanation:
        1. We create a `CopyOnWriteArrayList`.
        2. We add elements "A", "B", and "C".
        3. We obtain an iterator using `list.iterator()`.
        4. We attempt to remove an element using `list.remove(element)` during iteration.
        5. No `ConcurrentModificationException` is thrown because `CopyOnWriteArrayList` uses a fail-safe iterator that works on a copy of the list.


## Key Differences

- Concurrency Handling:
    - Fail-Fast: Detects concurrent modifications and fails immediately, useful in single-threaded or low-concurrency environments.
    - Fail-Safe: Does not fail when the collection is modified, suitable for concurrent environments.
- Performance:
    - Fail-Fast: Generally more efficient in single-threaded environments as it does not need to create copies of the collection.
    - Fail-Safe: Slower in single-threaded environments due to copying the collection, but more suitable for concurrent environments.


## Best Practices

- Use Fail-Fast: When you are in a single-threaded or low-concurrency environment and want to detect concurrent modifications early.
- Use Fail-Safe: When you expect concurrent modifications and want to avoid `ConcurrentModificationException`, especially in highly concurrent environments.
- Understanding the difference between fail-fast and fail-safe mechanisms helps you choose the right collection and iterator for your concurrency needs, ensuring robustness and predictability in your code.