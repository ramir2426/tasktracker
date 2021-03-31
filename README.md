# README

This README would help to find my project required things instructions.

Project is deployed on tassktracker.herokuapp.com/.
Creds: sent to you over the email/Moodle comment section
    
Things that required to cover:

**1) UML Diagrams.**

Unified Modeling Language is a general-purpose, developmental, modeling language in the field of software engineering that is intended to provide a standard way to visualize the design of a system.
[Use case Diagram](https://github.com/ramir2426/tasktracker/blob/master/doc/Use_case.jpg) 

The purpose of use case diagram is to capture the dynamic aspect of a system.
Items involved are 1)Functionalities to be represented as use case 2)Actors 3)Relationships among the use cases and actors.

[Activity Diagram](https://github.com/ramir2426/tasktracker/blob/master/doc/Activity_Diagram.jpg)

Activity diagram is basically a flowchart to represent the flow from one activity to another activity. The activity can be described as an operation of the system.
The control flow is drawn from one operation to another. This flow can be sequential, branched, or concurrent. Activity diagrams deal with all type of flow control by using different elements such as fork, join, etc
      
[Class Diagram](https://github.com/ramir2426/tasktracker/blob/master/doc/Class_Diagram.jpg)

 It represents the static view of an application. Class diagram is not only used for visualizing, describing, and documenting different aspects of a system but also for constructing executable code of the software application.
 Class diagram shows a collection of classes, interfaces, associations, collaborations, and constraints. It is also known as a structural diagram.

**2) DDD Of LMS**

The domain driven design approach is used for complex needs, connecting the implementation to an evolving model of the core business concepts. It puts the focus on the problem domain and basically helps identify the architecture and inform about the mechanics that the software needs to replicate.To create a Library Management System,I have a good understanding of what library is all about, and the domain of library.
There 4 main DDD common terms

   1. Context: The setting in which a word or statement appears that determines its meaning. Statements about a model can only be understood in a context.
               
   2. Model: A system of abstractions that describes selected aspects of a domain and can be used to solve problems related to that domain.
   
   3. Ubiquitous Language: A language structured around the domain model and used by all team members to connect all the activities of the team with the software.
                          
   4. Bounded Context: A description of a boundary (typically a subsystem, or the work of a specific team) within which a particular model is defined and applicable.
                       (example: Book Managemnet System, User management, IAM management, Transcation management, Employee Management, Book Management)
    
[DDD](https://github.com/ramir2426/tasktracker/blob/master/doc/DDD.pdf)

**3) SonarCloud Metrics.**

SonarCloud is the online service to catch Bugs,Security Vulnerabilities,Code smells in the Pull Requests and throughout code repositories so developer can enhance workflow with continuous code quality.

The link to check the sonar https://sonarcloud.io/dashboard?id=ramir2426_tasktracker link.

**4) Clean Code Development(5 points  + 10 points of cheat sheet)** 

Clean code means code should be as efficient, readable, and maintainable as possible, and instead of only solving the problem or focus on the design of your code, on architecture. Easy to understand the flow of entire application, easy to understand role and responsibility of each class, easy to understand what each method does , what is the purpose of expression and variable and easy to fix bugs.It makes easy to maintain,test,save som extra cost etc.

[CheatSheet](https://github.com/ramir2426/tasktracker/blob/master/doc/CheatSheet.pdf)

I have developed project according to clean code standarnd points through the project. Some examples and which points implemented can be found `cleanCode` folder.

* Build: I have used `heroku` built system for the project. Screenshots can be found under `CI/CD` folder.

* Continuous Delivery: I have implemented `heroku` pipline for building CI/CD. Screenshots can be found under `CI/CD` folder.
  Please find the link of Heroku CI/CD https://www.heroku.com/continuous-integration and https://devcenter.heroku.com/articles/pipelines for better understanding.
  
  Heroku CI/CD is easy to setup and use, detecting and running your tests with a minimum of configuration, while providing enough flexibility and power 
  for the most demanding uses. 
  Seamlessly integrated with Heroku Pipelines, it completes Heroku Flow to provide a unified solution for continuous integration/continuous delivery.
  
  

* IDE: Use JetBrains `RubyMine` and favorite shortcut key is `command+G` for `find Next replacement`.

* DSL: example implemented related to my project please check `dsl` folder.

* Functional Programming: Used to build the project. Some example under `functionalProgramming` folder,

* ...
