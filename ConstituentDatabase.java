package databases;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Scanner;

public class ConstituentDatabase {

  public static void main(String[] args) throws ClassNotFoundException {


    final String PARAM = "local/constituents?user=root";

    if (args.length != 1) {
      System.out.printf("Usage: java %s <%s>", ConstituentDatabase.class.getCanonicalName(), PARAM);
      System.exit(0);
    }

    // load the sqlite-JDBC driver using the current class loader
    // make the connection URI, based on DBMS
    final String CONN_URI;

    Class.forName("org.mariadb.jdbc.Driver");
    CONN_URI = ("jdbc:mariadb://" + args[0]);


    // using try-with-resource automatically closes
    // connection to the database (and input scanner)
    try (final Connection connection = DriverManager.getConnection(CONN_URI);	   
        final Scanner input = new Scanner(System.in); ) {

      // get input(s)
      System.out.println("Type \"1\" to add a new constituent to a newsletter\n" +
          "Type \"2\" to update the work phone number of a constituent\n" +
          "Type \"3\" to delete an event from the database\n" +
          "Type \"4\" to add a new address to the database\n" +
          "Type \"5\" to add a new constituent to the database\n" +
          "Type \"6\" to receive all the address of the constituents\n" +
          "Type \"7\" to receive all the supervisor names\n" +
          "Type \"8\" to receive all the names of the newsletters\n" +
          "Type \"9\" to receive all the primary languages of the constituents\n" +
          "Type \"10\" to receive all the names of the callers\n" +
          "Type \"11\" to receive all 2 hour time slots with the highest percentage of answered calls\n" +
          "Type \"12\" to return the total number of eligible voters in every ward\n" +
          "Type \"13\" to percentages of who rsvped yes and no and showed up and didn't to specific events\n" +
          "Type \"14\" to return the percentage of constituents in a ward affliate with a different political parties\n" +
          "Type \"15\" to gauge the interest in a particular event");
      String userInput = input.next();
      if (userInput.equals("1")) {

        System.out.printf("Enter the newsletterId and the nameId of the person): ");
        final String param1 = input.next();
        final String param2 = input.next();

        // generate parameterized sql
        final String sql =  "INSERT INTO EmailsForNewsletter (emailNewsletterId, constituentNameId) VALUES (?, ?)";

        try (final PreparedStatement stmt = connection.prepareStatement(sql)) {
          stmt.setString(1, param1);
          stmt.setString(2, param2);

          stmt.executeQuery();
        }

        System.out.println("Added constituent with id \"" + param2 + "\" to newsletter with id \"" + param1 + "\"");

      } else if (userInput.equals("2")) {

        System.out.println("Enter the new work number and the nameId of the person");
        final String param1 = input.next();
        final String param2 = input.next();

        final String sql = "UPDATE Constituent SET workNum = ? WHERE nameId = ?";

        try (final PreparedStatement stmt = connection.prepareStatement(sql)) {
          stmt.setString(1, param1);
          stmt.setString(2, param2);

          stmt.executeQuery();
        }

        System.out.println("Update work phone number of constituent with id \"" + param2 + "\" to " + param1);

      } else if (userInput.equals("3")) {

        System.out.println("Enter the eventId of the event to be removed");
        final String param = input.next();

        final String sql = "DELETE FROM Event WHERE eventId = ?";

        try (final PreparedStatement stmt = connection.prepareStatement(sql)) {
          stmt.setString(1, param);

          stmt.executeQuery();
        }

        System.out.println("Event with id \"" + param + "\" removed from database");

      } else if (userInput.equals("4")) {

        System.out.println("Is this an apartment? Type Y for yes or N for no");

        String apt = input.next();

        if (apt.equalsIgnoreCase("Y")) {
          System.out.println("Enter the house number, the street name (without the type: no \"St.\" and such), the ward number,\n" +
              "and the apartment number of the new address");

          final String param1 = input.next();
          final String param2 = input.next();
          final String param3 = input.next();
          final String param4 = input.next();

          final String sql =  "INSERT INTO Address (houseNumber, stName, ward, aptNumber) VALUES (?, ?, ?, ?)";

          try (final PreparedStatement stmt = connection.prepareStatement(sql)) {
            stmt.setString(1, param1);
            stmt.setString(2, param2);
            stmt.setString(3, param3);
            stmt.setString(4, param4);

            stmt.executeQuery();
          }     
        } else {
          System.out.println("Enter the house number, the street name (without the type: no \"St.\" and such), and the ward number\n" +
              "of the new address");

          final String param1 = input.next();
          final String param2 = input.next();
          final String param3 = input.next();

          final String sql =  "INSERT INTO Address (houseNumber, stName, ward) VALUES (?, ?, ?)";

          try (final PreparedStatement stmt = connection.prepareStatement(sql)) {
            stmt.setString(1, param1);
            stmt.setString(2, param2);
            stmt.setString(3, param3);

            stmt.executeQuery();
          }     
        }

        System.out.println("Added the new address to the databasee");

      } else if (userInput.equals("5")) {

        System.out.println("Enter a new Id, the email, the first name, the last name, the work phone number, the cell number,\n" + 
            "the home phone number, the age, the addressId, the partyId, the primary language, and the number of political \n" +
            "events attended for the new constituent");

        final String param1 = input.next();
        final String param2 = input.next();
        final String param3 = input.next();
        final String param4 = input.next();
        final String param5 = input.next();
        final String param6 = input.next();
        final String param7 = input.next();
        final String param8 = input.next();
        final String param9 = input.next();
        final String param10 = input.next();
        final String param11 = input.next();
        final String param12 = input.next();

        final String sql =  "INSERT INTO Constituent VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";

        try (final PreparedStatement stmt = connection.prepareStatement(sql)) {
          stmt.setString(1, param1);
          stmt.setString(2, param2);
          stmt.setString(3, param3);
          stmt.setString(4, param4);
          stmt.setString(5, param5);
          stmt.setString(6, param6);
          stmt.setString(7, param7);
          stmt.setString(8, param8);
          stmt.setString(9, param9);
          stmt.setString(10, param10);
          stmt.setString(11, param11);
          stmt.setString(12, param12);

          stmt.executeQuery();
        }

        System.out.println("Added the new constituent to the databasee");

      } else if (userInput.equals("6")) {
        final String sql = "SELECT * FROM Address;"; /* returns all the addresses of constituents */

        try (final PreparedStatement stmt = connection.prepareStatement(sql)) {

          try (final ResultSet res = stmt.executeQuery()) {
            while (res.next()) {
              if (res.getString(4) != null) {
                System.out.printf("House Number: %s, Street Name: %s, Ward Number: %s, Apartment Number %s %n", 
                    res.getInt(1), res.getString(2), res.getInt(3), res.getString(4));
              } else {
                System.out.printf("House Number: %s, Street Name: %s, Ward Number: %s %n", 
                    res.getInt(1), res.getString(2), res.getInt(3));
              }
            }
          }
        }

      } else if (userInput.equals("7")) {
        final String sql = "SELECT * FROM Supervisor;";  /* returns the names of all supervisors */

        try (final PreparedStatement stmt = connection.prepareStatement(sql)) {

          try (final ResultSet res = stmt.executeQuery()) {
            while (res.next()) {
              System.out.printf("%s %s%n", 
                  res.getString(2), res.getString(3));
            }
          }
        }
      } else if (userInput.equals("8")) {
        final String sql = "SELECT * FROM Newsletter;"; /* returns the names of all newsletters */

        try (final PreparedStatement stmt = connection.prepareStatement(sql)) {

          try (final ResultSet res = stmt.executeQuery()) {
            while (res.next()) {
              System.out.printf("%s %n", 
                  res.getString(2));
            }
          }
        }
      } else if (userInput.equals("9")) {
        final String sql = "SELECT DISTINCT primaryLanguage as languageSpoken\n"
            + "FROM Constituent;" ; /* returns all the primary langauges of constituents */

        try (final PreparedStatement stmt = connection.prepareStatement(sql)) {

          try (final ResultSet res = stmt.executeQuery()) {
            while (res.next()) {
              System.out.printf("%s %n", 
                  res.getString(1));
            }
          }
        }
      } else if (userInput.equals("10")) {
        final String sql = "SELECT firstName AS callerFirstName, lastName AS callerLastName\n"
            + "FROM Caller;";  /* returns the names of all callers */

        try (final PreparedStatement stmt = connection.prepareStatement(sql)) {

          try (final ResultSet res = stmt.executeQuery()) {
            while (res.next()) {
              System.out.printf("%s %s %n", 
                  res.getString(1), res.getString(2));
            }
          }
        }
      } else if (userInput.equals("11")) {
        final String sql = "SELECT\n"
            + "t.startTime as startTime, t.endTime as endTime, t.dayOfWeek as dayOfWeekCalled, "
            + "t.numPickedUp/t.totalCallsMade as percentOfCallsAnswered, c.firstName AS callerFirstName,\n"
            + "c.lastName AS callerLastName, s.firstName AS supervisorFirstName, s.lastName AS supervisorLastName\n"
            + "FROM\n"
            + "TimeLog t INNER JOIN Caller c ON t.callerId=c.callerId\n"
            + "INNER JOIN Supervisor s ON s.supervisorId=c.supervisorId\n"
            + "WHERE endTime-startTime  =  200 AND t.dayOfWeek != 'Saturday' AND t.dayOfWeek != 'Sunday'\n"
            + "GROUP BY startTime\n"
            + "ORDER BY t.numPickedUp DESC, startTime ASC;\n"
            + "";  

        /* Returns all 2 hour time slots with the start time, end time, 
         * day of the week called and percent of all call answered during a two 
         * hour timeslot where people were called in order of the highest to lowest percent of people 
         * who picked up but only for calls made during weekday. This is important because it will allow 
         * callers to analyze when the best two hour slot of time is two call constituents and have constituents 
         * answer. It is limited to weekdays since callers work for elected officials and while some callers may 
         * work on weekends, the majority of workers don’t work weekends and thus it is most useful to see when 
         * more constituents can be reached over the phone during common working hours of callers. We also 
         * included caller name and supervisor name because reaching more constituents could be a result of 
         * tactics employed by individual callers or strategies taught by a supervisor to all the callers the manage 
         * and thus we felt it helpful to include caller name and supervisor name so those analyzing  
         * the data can be on the look out for high percentages of callers reached i association with particular 
         * callers or all the callers of particular supervisors.; 
         * Complexity report: one group by = 1 point, 3 where conditions = 1 point; one order by 2 attributes = 1 point, 
         * a non-aggregate function in select with division = 1 point , strong motivation for query = 1 point; 
         * 3 tables joined together = 1 point TOTAL = 6*/


        try (final PreparedStatement stmt = connection.prepareStatement(sql)) {

          try (final ResultSet res = stmt.executeQuery()) {
            while (res.next()) {
              System.out.printf("Start Time: %s:%s, End Time: %s:%s, Day of Week Called: %s, %s%% calls answered%n" +
                  "Caller: %s %s, Supervisor: %s %s%n%n", 
                  res.getInt(1)/100,res.getInt(1)%100, res.getInt(2)/100, res.getInt(2)%100, res.getString(3), res.getInt(4)*100, res.getString(5), res.getString(6),
                  res.getString(7), res.getString(8));
            }
          }
        }
      } else if (userInput.equals("12")) {
        final String sql = "SELECT COUNT(c.nameId) AS numberEligibleVoters, a.ward AS ward\n"
            + "FROM Constituent c LEFT Join Address a ON c.addressId = a.addressId\n"
            + "WHERE c.age >= 18 \n"
            + "GROUP BY a.ward\n"
            + "ORDER BY numberEligibleVoters DESC, ward ASC;" ;  

        /* returns thed number of eligible voters in every 
            ward which is important because it allows candidates for city official positions to focus their election 
            efforts on wards with more eligible voters and thus makes better use of their limited time during campaign s
            eason.; Complex report: one non-inner join = 1 point, where clause with more than one non-aggreagate conidtiton = 1 point, 
            strong motivation = 1 point, 2 ordering fields = 1 point, aggregate function with COUNT = 1 point,  
            uses a group by = 1 point; TOTAL = 6 points*/

        try (final PreparedStatement stmt = connection.prepareStatement(sql)) {

          try (final ResultSet res = stmt.executeQuery()) {
            while (res.next()) {
              if (res.getString(2) != null) {
                System.out.printf("Ward: %s%nNumber of Voters: %s%n%n", 
                    res.getString(2), res.getString(1));
              } else {
                System.out.printf("No address on record%nNumber of Voters: %s%n%n", res.getString(1));
              }
            }
          }
        }
      } else if (userInput.equals("13")) {

        final String sql = "SELECT (SELECT (SELECT COUNT(er.constituentNameId)\n"
            + "        FROM EventRsvp er\n"
            + "        WHERE er.showed = 'Y' AND er.rsvpStatus = 'Y' AND er.eventId=e.eventId) \n"
            + "        / \n"
            + "        COUNT(er.constituentNameId)\n"
            + "    FROM EventRsvp er \n"
            + "    WHERE er.rsvpStatus = 'Y' AND er.eventId=e.eventId) AS percentGoingAndShowed,\n"
            + "        (SELECT (SELECT COUNT(er.constituentNameId)\n"
            + "        FROM EventRsvp er\n"
            + "        WHERE er.showed = 'N' AND er.rsvpStatus = 'N' AND er.eventId=e.eventId) \n"
            + "        / \n"
            + "        COUNT(er.constituentNameId)\n"
            + "    FROM EventRsvp er \n"
            + "    WHERE er.rsvpStatus = 'N' AND er.eventId=e.eventId) AS percentNotGoingAndNoShow,\n"
            + "        e.eventName AS eventName\n"
            + "FROM Event e\n"
            + "ORDER BY percentGoingAndShowed DESC, percentNotGoingAndNoShow DESC;";

        /* Returns the percent of people who said they would show up and did and thee percent of people who said they 
         * wouldn’t and didn’t for every event. This helps elected officials see how useful rsvp’s are in predicting if a 
         * person will actually come to help them adjust their attendance expectations for future events. Complexity 
         * report: aggregate function with COUNT = 1 point, 4  conditions for where = 1 point, 2 ordering fields = 1 point, 
         * strong motivation = 1 point , 4 sub-query = 2 point, TOTAL = 6 points (other complexities not noted because 
         * already reached complex status)*/

        try (final PreparedStatement stmt = connection.prepareStatement(sql)) {

          try (final ResultSet res = stmt.executeQuery()) {
            while (res.next()) {
              if (res.getString(1) != null && res.getString(2) != null) {
              System.out.printf("Event: %s%n" +
                                "People Who Said They Would Attend and Did: %s%%%n" +
                                "People Who Said They Wouldn't Attend and Didn't: %s%%%n%n", 
                                res.getString(3), res.getDouble(1) * 100, res.getDouble(2) * 100);
              } else if (res.getString(1) != null) {
                System.out.printf("Event: %s%n" +
                    "People Who Said They Would Attend and Did: %s%%%n" +
                    "People Who Said They Wouldn't Attend and Didn't: no rsvps%n%n", 
                    res.getString(3), res.getDouble(1) * 100);
              } else if (res.getString(2) != null){
                System.out.printf("Event: %s%n" +
                    "People Who Said They Would Attend and Did: no rsvps%n" +
                    "People Who Said They Wouldn't Attend and Didn't: %s%%%n%n", 
                    res.getString(3), res.getDouble(2) * 100);
              } else {
                System.out.printf("Event: %s%n" +
                    "People Who Said They Would Attend and Did: no rsvps%n" +
                    "People Who Said They Wouldn't Attend and Didn't: no rsvps%n%n", 
                    res.getString(3));
              }
            }
          }
        }
      } else if (userInput.equals("14")) {

        System.out.println("Enter the ward you want to examine");

        final String param = input.next();

        final String sql = "SELECT  t.numberOfPoliticalAffiliates/a.wardPopulation AS percentOfWardInPoliticalParty, "
            + "t.politicalAffiliationId AS politicalAffiliationId, t.nameOfPoliticalGroup as nameOfPoliticalGroup, a.ward AS ward\n"
            + "FROM (SELECT COUNT(c.nameId) AS wardPopulation, a.ward AS ward\n"
            + "  From Constituent c INNER JOIN Address a ON c.addressId=a.addressId WHERE a.ward=?) a\n"
            + "    INNER JOIN (SELECT COUNT(c.nameId) AS numberOfPoliticalAffiliates, p.partyId AS politicalAffiliationId, "
            + "         p.partyName as nameOfPoliticalGroup, a.ward AS ward\n"
            + "      FROM PoliticalParty p INNER JOIN Constituent c ON p.partyId = c.partyId\n"
            + "    INNER JOIN Address a ON c.addressId=a.addressId\n"
            + "  WHERE a.ward=?\n"
            + "  GROUP BY p.partyId\n"
            + "  ORDER BY numberOfPoliticalAffiliates DESC, nameOfPoliticalGroup) t;" ;  

        /* Returns how many constituents in a ward input by the user affiliate with every political group in that ward. 
         * Also returns the party Id and partyName. This is important because it helps politicians see how many people 
         * affiliate with certain political parties in a ward. This informatin is critical as it enables officials to better 
         * understand the main ideologies represented in a given region which has implications on how well a politician’s visit 
         * will be received by residents in that area. Complexity report: 3 tables joined = 1 point, 1 aggregate function with 
         * count = 1 point, 1 group by function = 1 point, 2 ordering fields = 1 point, strong motivation = 1 point, 1 subquery = 1 
         * point, one non-aggreagte function in select with division = 1 point; TOTAL:at least 7  points */

        try (final PreparedStatement stmt = connection.prepareStatement(sql)) {

          stmt.setString(1, param);
          stmt.setString(2, param);


          try (final ResultSet res = stmt.executeQuery()) {
            while (res.next()) {
              System.out.printf("Percent of Ward in Party: %s%%; Party Id: %s; Party Name: %s; Ward: %s%n", 
                  res.getDouble(1)*100, res.getInt(2), res.getString(3), res.getInt(4));
            }
          }
        }
      } else if (userInput.equals("15")) {

        System.out.println("Enter the eventId for the event that you wish to gauge the interest in");

        final String param = input.next();

        final String sql = "SELECT t.numberAttending AS numberAttending, t.eventName AS eventName, t.eventId AS eventId, t.numberAttending-50 AS extraAttendingOver50Capacity \n"
            + "FROM \n"
            + "  (SELECT COUNT(c.nameId) AS numberAttending, e.eventId as eventId, e.eventName AS eventName \n"
            + "    FROM EventRsvp er INNER JOIN Constituent c ON er.constituentNameId = c.nameId \n"
            + "      INNER JOIN Event e ON e.eventId = er.eventId \n"
            + "      WHERE e.eventId = ? AND er.rsvpStatus = 'Y') AS t;" ;  

        /* Returns the number of constituents attending a particular event, user inputs eventId of the event of interest. 
         * It also returns the event name, event Id, and the number of people over 50 people there will be as 50 people is a 
         * typical maximum occupancy for many commonly used small, cheap-to-rent spaces used for functions; complex report: 3 tables 
         * joined = 1 point, 2 conditions in where clause = 1 point, strong motivation = 1 point, aggregate function with 
         * count = 1 point, non-aggreagate function used in select with subtraction = 1 point; 1 subquery = 1 point; TOTAL = 6 points */

        try (final PreparedStatement stmt = connection.prepareStatement(sql)) {

          stmt.setString(1, param);


          try (final ResultSet res = stmt.executeQuery()) {
            while (res.next()) {
              if (res.getInt(4) >= 0) {
                System.out.printf("Number Attending: %s%nEvent Name: %s%nEvent Id: %s%nNumber Planning to Attend Over 50: %s%n%n", 
                    res.getInt(1), res.getString(2), res.getInt(3), res.getInt(4));
              } else {
                System.out.printf("Number Attending: %s%nEvent Name: %s%nEvent Id: %s%n%n", 
                    res.getInt(1), res.getString(2), res.getInt(3));
              }
            }
          }
        }
      }

    } catch (SQLException e) {
      System.out.printf("Error connecting to db: %s%n", e.getMessage());
      System.exit(0);
    }

  }

}
