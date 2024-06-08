# BookMyMovie
Online movie ticket booking website made with .net core 7 and entity framework. Users can buy movie ticket and track their orders while Admin can manage movie and cinema and view order details of users.

### Docker image : https://hub.docker.com/r/dhruvink79/book-my-movie

#### Steps for running app :

1. clone the repository

2. Write following command in the Package Manager Console of the project
    1. add-migration
    2. update-database

3. Now project is ready to run

Note : although all required NuGet packages would be available in project itself, but check for following packages and install them if not present

    i. Microsoft.AspNetCore.Identity.EntityFrameworkCore

    ii. Microsoft.EntityFrameworkCore

    iii. Microsoft.EntityFrameworkCore.SqlServer

    iv. Microsoft.EntityFrameworkCore.Tools
    
#### Credentials for Admin user :

email : admin@emovietickets.com,

password : AdminUserPassword123##
