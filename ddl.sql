CREATE TABLE Address (
	houseNumber INT,
	stName VARCHAR(20),
	ward INT,
	aptNumber VARCHAR(10),
	addressId INT AUTO_INCREMENT,
	CONSTRAINT AddressPK PRIMARY KEY (addressId)
);

CREATE TABLE PoliticalParty (
	partyName VARCHAR(20),
	partyId INT AUTO_INCREMENT,
	CONSTRAINT PoliticalPartyPK PRIMARY KEY (partyId)
);

CREATE TABLE Constituent (
	nameId INT AUTO_INCREMENT,
	email VARCHAR(30),
	firstName VARCHAR(20),
	lastName VARCHAR(20),
	workNum CHAR(10),
	cellNum CHAR(10),
	homeNum CHAR(10),
	age INT,
	addressId INT,
	partyId INT,
	primaryLanguage VARCHAR(10),
	numPoliticalEventsAttended INT,
	CONSTRAINT ConstituentFK1
	FOREIGN KEY (partyId) REFERENCES  PoliticalParty (partyId),
	CONSTRAINT ConstituentFK2
	FOREIGN KEY (addressId) REFERENCES  Address (addressId),
	CONSTRAINT ConstituentPK PRIMARY KEY (nameId)
);


CREATE TABLE Event (
	eventName VARCHAR (50),
	eventId INT AUTO_INCREMENT,
	CONSTRAINT EventPK PRIMARY KEY (eventId)
);

CREATE TABLE EventRsvp (
	constituentNameId INT,
	eventId INT,
	inPerson CHAR(1),
	rsvpStatus CHAR(1),
	showed CHAR(1),
	CONSTRAINT EventRsvpFK1
	FOREIGN KEY (constituentNameId) REFERENCES Constituent (nameId),
	CONSTRAINT EventRsvpFK2
	FOREIGN KEY (eventId) REFERENCES Event (eventId),
	CONSTRAINT EventRsvpPK PRIMARY KEY (eventId, constituentNameId)
);

CREATE TABLE Supervisor (
	supervisorId INT AUTO_INCREMENT,
	firstName VARCHAR(20),
lastName VARCHAR(20),
	CONSTRAINT SupervisorPK PRIMARY KEY (supervisorId)
);

CREATE TABLE Caller (
	callerId INT AUTO_INCREMENT,
	firstName VARCHAR(20),
	lastName VARCHAR(20),
	supervisorId INT,
	CONSTRAINT CallerFK
	FOREIGN KEY (supervisorId) REFERENCES Supervisor (supervisorId),
	CONSTRAINT CallerPK PRIMARY KEY (callerId)
);

CREATE TABLE CallInfo (   	 
callId INT AUTO_INCREMENT,
	typeNumCalled CHAR(10),
	pickedUp CHAR(1),
	callNotes TEXT,
	constituentConcerns TEXT,
         	constituentNameId INT,
	callerId INT,
CONSTRAINT CallInfoFK1 FOREIGN KEY (constituentNameId) REFERENCES Constituent (nameId),
CONSTRAINT CallInfoFK2 FOREIGN KEY (callerId) REFERENCES Caller (callerId),
	CONSTRAINT CallInfoPK PRIMARY KEY (callId)
);

CREATE TABLE TimeLog (
	callerId INT,
	startTime INT,
	dayOfWeek VARCHAR(9),
	timeLogId INT AUTO_INCREMENT,
	endTime INT,
             monthCalled INT,
             yearCalled INT,
	totalCallsMade INT,
	numPickedUp INT,
             dayCalled INT,
	CONSTRAINT TimeLogFK FOREIGN KEY (callerId) REFERENCES Caller (callerId),
	CONSTRAINT TimeLogPK PRIMARY KEY (timeLogId)
);

CREATE TABLE Newsletter (
	bodyText TEXT,
	name VARCHAR(50),
	newsletterId INT AUTO_INCREMENT,
	CONSTRAINT NewsletterPK PRIMARY KEY (newsletterId)
);

CREATE TABLE EmailsForNewsletter(
	emailNewsletterId INT,
	constituentNameId INT,  
CONSTRAINT EmailsForNewsletterFK1
FOREIGN KEY (emailNewsletterId) REFERENCES Newsletter (newsletterId),
CONSTRAINT EmailsForNewsletterFK2
FOREIGN KEY (constituentNameId) REFERENCES Constituent (nameID),
CONSTRAINT  EmailsForNewsletterPK PRIMARY KEY (emailNewsletterId, constituentNameId)
);

CREATE INDEX constituentIndex ON Constituent (firstName, lastName);
