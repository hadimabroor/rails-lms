# Rails LMS

## Project Description
Rails LMS is a Learning Management System built with Ruby on Rails. It provides a platform for educators to manage courses, students, and assessments while offering students a workspace to learn and track their progress.

## Setup Instructions

To set up the project locally, follow these steps:

1. **Clone the repository:**  
   ```bash
   git clone https://github.com/hadimabroor/rails-lms.git
   cd rails-lms
   ```

2. **Install dependencies:**  
   Make sure you have Rails installed, then run:  
   ```bash
   bundle install
   ```

3. **Set up the database:**  
   ```bash
   rails db:create
   rails db:migrate
   rails db:seed
   ```

4. **Start the server:**  
   ```bash
   rails server
   ```

5. **Visit the app:**  
   Open your browser and go to `http://localhost:3000`

## Database Schema

The database schema includes the following tables:

- **Users**  
  - `id`: integer, primary key  
  - `name`: string  
  - `email`: string, unique  
  - `role`: integer, representing user type (student, instructor, admin)  

- **Courses**  
  - `id`: integer, primary key  
  - `title`: string  
  - `description`: text  
  - `user_id`: integer, foreign key referencing Users  

- **Enrollments**  
  - `id`: integer, primary key  
  - `user_id`: integer, foreign key referencing Users  
  - `course_id`: integer, foreign key referencing Courses  

- **Assignments**  
  - `id`: integer, primary key  
  - `title`: string  
  - `due_date`: datetime  
  - `course_id`: integer, foreign key referencing Courses  

- **Submissions**  
  - `id`: integer, primary key  
  - `assignment_id`: integer, foreign key referencing Assignments  
  - `user_id`: integer, foreign key referencing Users  
  - `submitted_at`: datetime  

## Features Overview

- **User Authentication:** Register and login for students and instructors.
- **Course Management:** Instructors can create, edit, and delete courses.
- **Enrollment System:** Students can enroll in courses and track their progress.
- **Assignments and Submissions:** Manage assignments, set due dates, and students can submit their work.
- **Reporting:** Instructors can view reports on student progress and assignment completion.