# database-project
First, download XAMPP (https://www.apachefriends.org/index.html) according to your system.
Make sure your Java JDK is up to date (https://www.oracle.com/java/technologies/javase/javase-jdk8-downloads.html) Choose the
appropriate Java SE development kit according to your system.
Next, the ddl.sql, the dml.sql, the mariadb-java-client-2.1.1.jar file, and the ConstituentDatabase.java file must be downloaded. You can do this by pressing the green code button and the click download as a zip. Once that downloads, go to that file on your computer and click it to unzip the file.

The ddl.sql file creates the structure of the database. In here, all the tables that store all the data are created. The values in each table are created
(but not filled, this is done later). The relationship between each table is also created here.

The dml.sql file provides temporary data for these tables. The order that the tables are filled in this file is important in order that the relationships
between the tables remain true (if something in one table refers to something in another table that hasn't yet be created, this would cause issues). Since
the purpose of this database is to contain real data, this is just data that can be used to test the source code.

The mariadb-java-client-2.1.1.jar file allows the source code to be run on a computer through the command line or terminal. It connects Java, the programming
language that the application is written in, to MariaDB which is what the database itself is written in.

The ConstituentDatabase.java file is what allows the user to interact with the database. This file creates an interface which currently has 15
options that the user can choose from. There is a built in system that makes it error resistant (an error in the program won't close out the application, users will be provided the information they needed to properly fill out a request, and users will generally not be able to input an incorrect value)

Once all the files have been downloaded, open up the XAMPP application. Follow the steps provided to finish the download. Next, open up the file called "XAMPP". In here, there should be an application called manager. Open that. Click on the Manage Servers button which is in the top middle. Next, either press the Start All button at the bottom of the window or click on MySQL Database and press Start on the right side of the window and then do the same for Apache Web Server.

Once this is done, open up a browsing application (i.e. Chrome, Safari, Firefox, etc), and type in localhost in the search bar and hit enter. On the upper right side of the bar there will be a tab called phpMyAdmin. Click that tab. On the left hand side under th phpMyAdmin Logo, there will be a called New. Click that. In the tab that says Database Name, under the word Database and Create Database, enter constituents (it must be constituents exactly or otherwise the source code will not connect properly). Once that's done, hit Create

Now the ddl.sql and dml.sql file must be imported. There will be an import tab in the about the middle of the page at the top. If you navigated away from the constituents database, you can return to it by clicking on constituents on the left side of the window. Under File to Import, click the choose file/browse button. Then choose the ddl.sql file that was downloaded. Then press Go on the bottom right side of the page. Once thats down, navigate back to the import page and repeat the same steps but this time upload the dml.sql file.

If you are using an OS operating system, navigate to Terminal.
First enter the downloaded zip file. This is done by typing cd and then the source path. For me, I type: 

cd /Users/trevorkhanna/Downloads/database-project-main

Then compile the source code. To do this, type javac -d bin and then the source path. For example, I would type:

javac -d bin /Users/trevorkhanna/Downloads/database-project-main/ConstituentDatabase.java

Then type: 

java -cp bin:mariadb-java-client-2.1.1.jar databases.ConstituentDatabase

Finally type:

java -cp bin:mariadb-java-client-2.1.1.jar databases.ConstituentDatabase localhost/constituents?user=root

If you are using Windows, navigate to the Command Line
The following steps will be the same as if you are using an OS operating system except the soruce path may change.
To enter the downloaded files type:

C:\Users\yourusernamehere\Downloads --> followed by the name of the downloaded file

Then type: 

java -cp bin:mariadb-java-client-2.1.1.jar databases.ConstituentDatabase

Finally type:

java -cp bin:mariadb-java-client-2.1.1.jar databases.ConstituentDatabase localhost/constituents?user=root

*Note: the downloaded file name cannot have any spaces

Now feel free to use the program as you wish!

