# ASSESSMENT 6: Interview Practice Questions

Answer the following questions.

First, without external resources. Challenge yourself to answer from memory.

Then, research the question to expand on your answer. Even if you feel you have answered the question completely on your own, there is always something more to learn. Write your researched answer in your OWN WORDS.

1. As a developer, I am creating a Rails application with a model called Cohort that has_many students, but OOPS! I forgot to add the foreign key. How can I fix this mistake? What is the name of the foreign key? Would the foreign key be on the Cohort model or the Student model?

Your answer: Hmm very interesting..so as far as I am aware, a key is given to any data created. For example, if you had created 5 students, each student would have a key similar as to how an index works in the array. I would love to do more research and get back to you!

Researched answer: There is definitely a way to add a foreign key after creating a model. This would be done by using ALTER TABLE which then you would be able to edit the model you created. Here is a resource for you to look at incase you are ever in this predicament! https://ubiq.co/database-blog/mysql-add-foreign-key/

2. Which RESTful routes must always be passed params? Why?

Your answer: Great question! So I'm aware that RESTful routes consist of the following: Index, Show, New, Create, Edit, Update, Delete. Within them, I believe that Index, Show, and New. 

Researched answer: I wasn't able to find which ones always need to be passed params but I have a feeling it has to do with CRUD?

3. Name three rails generator commands. What is created by each?

Your answer: At the top of my head I can think of rails server, which is what launches a web server for the app. Rails generate is used for creating new things. You can create controllers using this command. The last one I can think of is rails db: which is a command in order to update the app you are using with the terminal. 

Researched answer: If you type rails generate by itself, it will show you what commands you can use using rails generate. Also, if you type rails db: it will show you the options you can use with rails db: 

4. Consider the Rails routes below. What is the name of the controller method that would be called by each route? What action would each of the controller methods perform?

action: "GET" location: /students
<!-- The controller method is #index. This would get the information of students. -->
action: "POST" location: /students
<!-- The controller method is #create. This would display the students. -->
action: "GET" location: /students/new
<!-- The controller method is #index. This would get the information for a new student. -->
action: "GET" location: /students/2
<!-- The controller method is #index. This would get the information for the student with a key value of 2.-->
action: "GET" location: /students/2/edit
<!-- The controller method is #index. This would get the information of a student with the key value of 2 in order to edit it. -->
action: "PATCH" location: /students/2
<!-- The controller method is #update. This would update the information from student 2 since we just changed the information. -->
action: "DELETE" location: /students/2
<!-- The controller method is #destroy. This will delete student with a key value of 2.-->
5. As a developer, you are making an application to manage your to do list. Create 10 user stories that will help you get your application started. Read more about [user stories](https://www.atlassian.com/agile/project-management/user-stories).

    1. As a user, I want to make an account so that I can personalize my to do list.
    2. As a user, I want to create a new  task so that I can keep track of what I need to get done. 
    3. As a user, I add add a name, level of priority, optional due date, and description of my task so that I can have all the information I need when looking back on my task. 
    4. As a user, I want to be able to see my tasks in order of priority varying on the level I set and the due dates so that I know when I need to get them done.
    5. As a user, I want to send my to do list to the people I live with so that house chores or grocery lists can be communicated to everyone.
    6. As a user, I want to see confetti when I finish a task so that I feel accomplished and want to complete another task.
    7. As a user, the people that I sent my to do list can see the tasks that I or they have finished so that we are all on the same page.
    8. As a user, I can customize the color scheme of my tasks so that I have more fun looking at my list.
    9. As a user, I can create a General Category for my to do lists to go into so that I can separate my work to do lists with my home to do lists.
    10. As a user, I can add images to my to do lists so that I can have a visual representation if needed. 