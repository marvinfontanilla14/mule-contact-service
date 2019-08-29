# How to Up and Run mule-contact-service


### Software Prerequisites:

> Download and setup the following software 
* MySQL Server Community edition
  * Download page:
	[MySql Server](https://dev.mysql.com/downloads/mysql/) 	
* MySQL Workbench Community edition
  * Download page:
	[MySql Workbench](https://dev.mysql.com/downloads/workbench/) 	
* Mulesoft Mule 3.9 and Studio 6.6
  * Download page:
	[Mulesoft IDE](https://www.mulesoft.com/lp/dl/studio/previous) 	
* JDK8
  * Download page:
	[JDK8](https://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html) 	
* Maven
  * Download page:
	[Maven](https://maven.apache.org/download.cgi) 	
* Git
  * Download page:
	[Git](https://git-scm.com/downloads) 	
    
### Steps to Up and Run mule-contact-service:

  > Once you are done setting up the above software, the following are steps to up and run mule-contact-service
1. Clone or Download mule-contact-service
2. From the downloaded project, locate the contact database script **ms3-contact-service\database\contactdb.sql** you can also find the **Database Diagram** on this folder named: **contacterrdiagram**
3. Open MySQL Workbench and run the script to generate the contact database and sample data
4. Once you are done importing **contactdb.sql**, you are now ready to setup mule-contact-service. 
5. Open Anypoint Studio and Import **mule-contact-service**
6. **Note:** you can change the DB username and password on **mule-app.properties** of the project
7. Once the project has been completely imported, downloaded maven dependency, you can now start running **MUnit** and the project.
8. To run **MUnit** From the Anypoint IDE, locate the file **\src\test\munitms3-contact-service-apikit-test** using the project explorer
9. Open **munitms3-contact-service-apikit-test**, Right Click the canvas, and **Select Run MUnit Suite**. This will execute MUnit test cases.
10. Once the **MUnit** Completed the execution, A **Coverage Report** will be generated that can be viewed. **Please watch the Demo vidoe links below for more details.**  
11. To run **mule-contact-service**, locate and open the mule xml configuration file **interfaces/ms3-contact-service.xml** then right click and select **Run project mule-contact-service**. This will run the project.
12. If you see the logs on the console saying **DEPLOYED** then we are successfully Up and Run the Project.
13. To open the api console. Click this link [localhost api console](http://localhost:8081/console/). You should see available **Restful API Resources**. You can use this to test api functionalities. 	
