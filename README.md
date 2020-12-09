# database-project
First, download XAMPP (https://www.apachefriends.org/index.html) according to your system.
Make sure your Java JDK is up to date (https://www.oracle.com/java/technologies/javase/javase-jdk8-downloads.html) Choose the
appropriate Java SE development kit according to your system.
Next, the ddl.sql, the dml.sql, the mariadb-java-client-2.1.1.jar file, and the ConstituentDatabase.java file must be downloaded.

The ddl.sql file creates the structure of the database. In here, all the tables that store all the data are created. The values in each table are created
(but not filled, this is done later). The relationship between each table is also created here.

The dml.sql file provides temporary data for these tables. The order that the tables are filled in this file is important in order that the relationships
between the tables remain true (if something in one table refers to something in another table that hasn't yet be created, this would cause issues). Since
the purpose of this database is to contain real data, this is just data that can be used to test the source code.

The mariadb-java-client-2.1.1.jar file allows the source code to be run on a computer through the command line or terminal. It connects Java, the programming
language that the application is written in, to MariaDB which is what the database itself is written in.

The ConstituentDatabase.java file is what allows the user to interact with the database. This file creates an interface which currently has 15
options that the user can choose from. There is a built in system that makes it error resistant (an error in the program won't close out the application, users will be provided the information they needed to properly fill out a request, and users will generally not be able to input an incorrect value)
