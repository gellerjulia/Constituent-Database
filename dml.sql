INSERT INTO Address (houseNumber, stName, ward) VALUES (8, 'Teletubby Rd.', 1);
INSERT INTO Address (houseNumber, stName, ward, aptNumber)  VALUES (6, 'Jenny Rd.', 2, '123');
INSERT INTO Address (houseNumber, stName, ward, aptNumber) VALUES (7, 'Tommy Rd.', 3, '90');
INSERT INTO Address (houseNumber, stName, ward) VALUES (5, 'Tutone St.', 3);
INSERT INTO Address (houseNumber, stName, ward) VALUES (3, 'Teletubby Ave.', 4);
INSERT INTO Address (houseNumber, stName, ward, aptNumber) VALUES (0, 'Rose Boulevard.', 5, '21B');
INSERT INTO Address (houseNumber, stName, ward, aptNumber) VALUES (9, 'Rose Boulevard.', 5, '21B');
INSERT INTO Address (houseNumber, stName, ward) VALUES (100, 'Tremont.', 5);
INSERT INTO Address (houseNumber, stName, ward, aptNumber) VALUES (253, 'Sussex St.', 9, '12');
INSERT INTO Address (houseNumber, stName, ward) VALUES (8, 'Columbus.', 1);

INSERT INTO PoliticalParty (partyName) VALUES ('democrat');
INSERT INTO PoliticalParty (partyName) VALUES (NULL);
INSERT INTO PoliticalParty (partyName) VALUES ('republican');
INSERT INTO PoliticalParty (partyName) VALUES ('independent');
INSERT INTO PoliticalParty (partyName) VALUES ('patriots');
INSERT INTO PoliticalParty (partyName) VALUES ('green');
INSERT INTO PoliticalParty (partyName) VALUES ('red party');
INSERT INTO PoliticalParty (partyName) VALUES ('blue party');
INSERT INTO PoliticalParty (partyName) VALUES ('yes party');
INSERT INTO PoliticalParty (partyName) VALUES ('party');

INSERT INTO Constituent (email, firstName, lastName, workNum, cellNum, homeNum, age, addressId, partyId, primaryLanguage, numPoliticalEventsAttended) VALUES ('mybrainhurts@gmail.com', 'Brain', 'Brian', '6178675309', '1234567891', '1234567891', 100, 1, 1, 'Pig Latin', 0);
INSERT INTO Constituent (email, firstName, lastName, workNum, cellNum, homeNum, age, addressId, partyId, primaryLanguage, numPoliticalEventsAttended) VALUES ('somethingelse@gmail.com', 'Tim', 'Beans', '4839105819', '1234567891', '1234567891', 20, NULL, 1, 'English', NULL);
INSERT INTO Constituent (email, firstName, lastName, workNum, cellNum, homeNum, age, addressId, partyId, primaryLanguage, numPoliticalEventsAttended) VALUES ('icantthinkofthings@gmail.com', 'Smoothie', 'Mango', '6178675309', '1234567891', '1234567891', 30, NULL, 1,  'English', 0);
INSERT INTO Constituent (email, firstName, lastName, workNum, cellNum, homeNum, age, addressId, partyId, primaryLanguage, numPoliticalEventsAttended) VALUES ('help@gmail.com', 'Mr.', 'Bean', '6178675309', '1234567891', '1234567891', 40, NULL, 2, 'Spanish', 2);
INSERT INTO Constituent (email, firstName, lastName, workNum, cellNum, homeNum, age, addressId, partyId, primaryLanguage, numPoliticalEventsAttended) VALUES ('im@gmail.com', 'Mrs.', 'Clause', '6178675309', '1234567891', '1234567891', 56, 4, 10, 'Mandarin', 10);
INSERT INTO Constituent (email, firstName, lastName, workNum, cellNum, homeNum, age, addressId, partyId, primaryLanguage, numPoliticalEventsAttended) VALUES ('running@gmail.com', 'Sara', 'Sara', '6178675309', '1234567891', '1234567891', 20, 4, 8, 'Manadarin', 100);
INSERT INTO Constituent (email, firstName, lastName, workNum, cellNum, homeNum, age, addressId, partyId, primaryLanguage, numPoliticalEventsAttended) VALUES ( 'out@gmail.com', 'Hannah', 'Montana', '6178675309', '1234567891', '1234567891', 10, 6,  7, 'English', 5);
INSERT INTO Constituent (email, firstName, lastName, workNum, cellNum, homeNum, age, addressId, partyId, primaryLanguage, numPoliticalEventsAttended) VALUES ('very@gmail.com', 'Kris', 'Kringle', '6178675309', '1234567891', '1234567891', 18, 10, 6, 'Spanish', 7);
INSERT INTO Constituent (email, firstName, lastName, workNum, cellNum, homeNum, age, addressId, partyId, primaryLanguage, numPoliticalEventsAttended) VALUES ('quickly@gmail.com', 'You', 'Thought', '6178675309', '1234567891', '1234567891', 19, 1, 1, 'Russian', 9);
INSERT INTO Constituent (email, firstName, lastName, workNum, cellNum, homeNum, age, addressId, partyId, primaryLanguage, numPoliticalEventsAttended) VALUES ('lastone@gmail.com', 'Brain', 'Brian', '6178675309', '1234567891', '1234567891', 65, 1, 1, 'Italian', 10);

INSERT INTO Event (eventName) VALUES ('help Trevor out');
INSERT INTO Event (eventName) VALUES ('help Julia out');
INSERT INTO Event (eventName) VALUES ('gif good grade');
INSERT INTO Event (eventName) VALUES ('databasedesign');
INSERT INTO Event (eventName) VALUES ('I am trying');
INSERT INTO Event (eventName) VALUES ('need higher gpa');
INSERT INTO Event (eventName) VALUES ( 'am tired');
INSERT INTO Event (eventName) VALUES ('its midnight');
INSERT INTO Event (eventName) VALUES ('Derbinsky da best');
INSERT INTO Event (eventName) VALUES ('yes brownie point pls');

INSERT INTO EventRsvp (constituentNameId, eventId, inPerson, rsvpStatus, showed) VALUES (1, 1, 'Y', 'M', 'Y');
INSERT INTO EventRsvp (constituentNameId, eventId, inPerson, rsvpStatus, showed) VALUES (1, 2, 'N', 'Y', 'N');
INSERT INTO EventRsvp (constituentNameId, eventId, inPerson, rsvpStatus, showed) VALUES (3, 3, 'Y', 'N', 'N');
INSERT INTO EventRsvp (constituentNameId, eventId, inPerson, rsvpStatus, showed) VALUES (4, 4,  'N', 'Y', 'N');
INSERT INTO EventRsvp (constituentNameId, eventId, inPerson, rsvpStatus, showed) VALUES (4, 5, 'N', 'M', 'N');
INSERT INTO EventRsvp (constituentNameId, eventId, inPerson, rsvpStatus, showed) VALUES (6, 6, 'N', 'N', 'N');
INSERT INTO EventRsvp (constituentNameId, eventId, inPerson, rsvpStatus, showed) VALUES (7,7, 'Y', NULL, 'Y');
INSERT INTO EventRsvp (constituentNameId, eventId, inPerson, rsvpStatus, showed) VALUES (8, 8,  'Y', NULL, 'N');
INSERT INTO EventRsvp (constituentNameId, eventId, inPerson, rsvpStatus, showed) VALUES (9, 2, 'N', 'Y', 'N');
INSERT INTO EventRsvp (constituentNameId, eventId, inPerson, rsvpStatus, showed) VALUES (10, 1, 'Y', 'N', 'N');
INSERT INTO EventRsvp (constituentNameId, eventId, inPerson, rsvpStatus, showed) VALUES (1, 3, 'Y', 'Y', 'Y');
INSERT INTO EventRsvp (constituentNameId, eventId, inPerson, rsvpStatus, showed) VALUES (1, 4, 'Y', 'Y', 'Y');
INSERT INTO EventRsvp (constituentNameId, eventId, inPerson, rsvpStatus, showed) VALUES (1, 5, 'Y', 'Y', 'Y');
INSERT INTO EventRsvp (constituentNameId, eventId, inPerson, rsvpStatus, showed) VALUES (1, 6, 'Y', 'Y', 'Y');
INSERT INTO EventRsvp (constituentNameId, eventId, inPerson, rsvpStatus, showed) VALUES (1, 7, 'Y', 'Y', 'Y');
INSERT INTO EventRsvp (constituentNameId, eventId, inPerson, rsvpStatus, showed) VALUES (1, 8, 'Y', 'Y', 'Y');
INSERT INTO EventRsvp (constituentNameId, eventId, inPerson, rsvpStatus, showed) VALUES (3, 4, 'Y', 'N', 'Y');
INSERT INTO EventRsvp (constituentNameId, eventId, inPerson, rsvpStatus, showed) VALUES (3, 5, 'Y', 'N', 'Y');
INSERT INTO EventRsvp (constituentNameId, eventId, inPerson, rsvpStatus, showed) VALUES (3, 6, 'Y', 'Y', 'N');
INSERT INTO EventRsvp (constituentNameId, eventId, inPerson, rsvpStatus, showed) VALUES (3, 7, 'Y', 'Y', 'Y');
INSERT INTO EventRsvp (constituentNameId, eventId, inPerson, rsvpStatus, showed) VALUES (3, 8, 'Y', 'N', 'Y');
INSERT INTO EventRsvp (constituentNameId, eventId, inPerson, rsvpStatus, showed) VALUES (3, 1, 'Y', 'N', 'Y');
INSERT INTO EventRsvp (constituentNameId, eventId, inPerson, rsvpStatus, showed) VALUES (4, 1,  'N', 'Y', 'N');
INSERT INTO EventRsvp (constituentNameId, eventId, inPerson, rsvpStatus, showed) VALUES (4, 2,  'N', 'N', 'Y');
INSERT INTO EventRsvp (constituentNameId, eventId, inPerson, rsvpStatus, showed) VALUES (4, 3,  'N', 'N', 'Y');
INSERT INTO EventRsvp (constituentNameId, eventId, inPerson, rsvpStatus, showed) VALUES (6, 1, 'N', 'N', 'N');
INSERT INTO EventRsvp (constituentNameId, eventId, inPerson, rsvpStatus, showed) VALUES (6, 2, 'N', 'N', 'N');
INSERT INTO EventRsvp (constituentNameId, eventId, inPerson, rsvpStatus, showed) VALUES (6, 3, 'N', 'N', 'N');
INSERT INTO EventRsvp (constituentNameId, eventId, inPerson, rsvpStatus, showed) VALUES (6, 4, 'N', 'N', 'N');




INSERT INTO Supervisor (firstName, lastName) VALUES ('Larry', 'Lard');
INSERT INTO Supervisor (firstName, lastName) VALUES ('Shoeless', 'Jones');
INSERT INTO Supervisor (firstName, lastName) VALUES ('Trevor', 'Trevor');
INSERT INTO Supervisor (firstName, lastName) VALUES ('Larry', 'Steve');
INSERT INTO Supervisor (firstName, lastName) VALUES ('Steve', 'Lard');
INSERT INTO Supervisor (firstName, lastName) VALUES ('Mary', 'Philips');
INSERT INTO Supervisor (firstName, lastName) VALUES ('Mary', 'Lee');
INSERT INTO Supervisor (firstName, lastName) VALUES ('John', 'Johnson');
INSERT INTO Supervisor (firstName, lastName) VALUES ('Nate', 'Derbinsky:)');
INSERT INTO Supervisor (firstName, lastName) VALUES ('Katie', 'Queen');

INSERT INTO Caller (firstName, lastName, supervisorId) VALUES ('Larry', 'Lard', 1);
INSERT INTO Caller (firstName, lastName, supervisorId) VALUES ('Steve', 'Stevington', 1);
INSERT INTO Caller (firstName, lastName, supervisorId) VALUES ('Mary', 'Marion', 4);
INSERT INTO Caller (firstName, lastName, supervisorId) VALUES ('Will', 'William', 4);
INSERT INTO Caller (firstName, lastName, supervisorId) VALUES ('Harriet', 'Harry', 6);
INSERT INTO Caller (firstName, lastName, supervisorId) VALUES ('Harry', 'Harry', 6);
INSERT INTO Caller (firstName, lastName, supervisorId) VALUES ('Harry', 'Potter', 7);
INSERT INTO Caller (firstName, lastName, supervisorId) VALUES ('ThatOther', 'Potter', 8);
INSERT INTO Caller (firstName, lastName, supervisorId) VALUES ('Larry', 'Lard', 8);
INSERT INTO Caller (firstName, lastName, supervisorId) VALUES ('abc', 'Stevington', 8);

INSERT INTO CallInfo (typeNumCalled, pickedUp, constituentNameId, callerId) VALUES ('work', 'N', 1, 1);
INSERT INTO CallInfo (typeNumCalled, pickedUp, callNotes, constituentConcerns, constituentNameId, callerId) VALUES ('work', 'Y', 'nice', 'thirsty', 2, 1);
INSERT INTO CallInfo (typeNumCalled, pickedUp, constituentNameId, callerId) VALUES ('work', 'N', 3, 1);
INSERT INTO CallInfo (typeNumCalled, pickedUp, callNotes, constituentConcerns, constituentNameId, callerId) VALUES ('home', 'Y', 'weirdo', 'crazy chipmunks attacking smaller chipmunks. Ate my radishes', 1, 2);
INSERT INTO CallInfo (typeNumCalled, pickedUp, constituentNameId, callerId) VALUES ('home', 'N', 3, 2);
INSERT INTO CallInfo (typeNumCalled, pickedUp, constituentNameId, callerId) VALUES ('cell', 'N', 4, 2);
INSERT INTO CallInfo (typeNumCalled, pickedUp, constituentNameId, callerId) VALUES ('work', 'N', 5, 2);
INSERT INTO CallInfo (typeNumCalled, pickedUp, callNotes, constituentConcerns, constituentNameId, callerId) VALUES ('work', 'Y', 'is what it is', 'not enough sleep', 9, 2);
INSERT INTO CallInfo (typeNumCalled, pickedUp, constituentNameId, callerId) VALUES ('work', 'N', 6, 7);
INSERT INTO CallInfo (typeNumCalled, pickedUp, constituentNameId, callerId) VALUES ('work', 'N', 7, 8);

INSERT INTO TimeLog (callerId, startTime, dayOfWeek, endTime, monthCalled, yearCalled, totalCallsMade, numPickedUp, dayCalled) VALUES (1, 1130, 'Wednesday', 1135, 2, 2012, 1000, 10, 5);
INSERT INTO TimeLog  (callerId, startTime, dayOfWeek, endTime, monthCalled, yearCalled, totalCallsMade, numPickedUp, dayCalled) VALUES (1, 2330, 'Friday', 2345, 3, 2001, 500, 495, 6);
INSERT INTO TimeLog  (callerId, startTime, dayOfWeek, endTime, monthCalled, yearCalled, totalCallsMade, numPickedUp, dayCalled) VALUES (4, 0430, 'Wednesday', 0435, 6, 24, 100, 90, 10);
INSERT INTO TimeLog  (callerId, startTime, dayOfWeek, endTime, monthCalled, yearCalled, totalCallsMade, numPickedUp, dayCalled) VALUES (4, 0030, 'Friday', 0123, 3, 2001, 90, 10, 7);
INSERT INTO TimeLog  (callerId, startTime, dayOfWeek, endTime, monthCalled, yearCalled, totalCallsMade, numPickedUp, dayCalled) VALUES (4, 1330, 'Monday', 1324, 4, 2010, 600, 599, 8);
INSERT INTO TimeLog  (callerId, startTime, dayOfWeek, endTime, monthCalled, yearCalled, totalCallsMade, numPickedUp, dayCalled) VALUES (4, 0510, 'Monday', 0710, 6, 2010, 600, 600, 4);
INSERT INTO TimeLog  (callerId, startTime, dayOfWeek, endTime, monthCalled, yearCalled, totalCallsMade, numPickedUp, dayCalled) VALUES (7, 0910, 'Monday', 0912, 7, 2010, 610, 1, 5);
INSERT INTO TimeLog  (callerId, startTime, dayOfWeek, endTime, monthCalled, yearCalled, totalCallsMade, numPickedUp, dayCalled) VALUES (8, 1140, 'Tuesday', 1143, 5, 2011, 20, 0, 9);
INSERT INTO TimeLog  (callerId, startTime, dayOfWeek, endTime, monthCalled, yearCalled, totalCallsMade, numPickedUp, dayCalled) VALUES (8, 1650, 'Thursday', 1850, 5, 2020, 900, 343, 7);
INSERT INTO TimeLog  (callerId, startTime, dayOfWeek, endTime, monthCalled, yearCalled, totalCallsMade, numPickedUp, dayCalled) VALUES (9, 0520, 'Tuesday', 0521, 5, 2019, 700, 400, 10);

INSERT INTO Newsletter (bodyText, name) VALUES ('rowdy teens stay up late to do database design homework', 'wild'); 
INSERT INTO Newsletter (bodyText, name) VALUES ('todays teens get little sleep. Why?', 'Tuesday');
INSERT INTO Newsletter (bodyText, name) VALUES ('this boy is sleepy', 'another day');
INSERT INTO Newsletter (bodyText, name) VALUES ('hungry hippos eat bananas', 'name');
INSERT INTO Newsletter (bodyText, name) VALUES ('only so much creativity in one session', 'todays news');
INSERT INTO Newsletter (bodyText, name) VALUES ('what could go wrong if one stays up all night?', 'who knows');
INSERT INTO Newsletter (bodyText, name) VALUES ('another bites the dust', 'another one gone');
INSERT INTO Newsletter (bodyText, name) VALUES ('doggy are cute', 'bad grammar');
INSERT INTO Newsletter (bodyText, name) VALUES ('how YOU can be a millionaire with this one trick!', 'haha');
INSERT INTO Newsletter (bodyText, name) VALUES ('The Indiana Family and Social Service Administration (FSSA) automation story, especially the story of Sophie Stipes, resonates with me the most. It is a story about a child who was born with several development delays for which treatment costed over $6,000 a month. Despite facing immense troubles, she started to overcome the issues only to be stopped by an automated system. It shows how that even after they tried to correct the systems’ mistake, they were stymied because of misinformation or no information from people who should have known what was going on. Essentially, the stories describe how helpless the Stipes felt. Being helpless is a feeling that evokes powerful emotions from everyone.
        	The shortcomings of the new system in Indiana are amplified by personal stories. The letter (Figure 1) that the Stipes family received that told them that they would lose their benefits was addressed to Sophie herself, who was just 6 years old at the time. This is just one of many possible issues that arise when people are reduced to numbers and statistics.
Figure 1: The letter saying that Sophie’s Medicaid benefits would be discontinued
The largest issue with any automated system, ethically, is that people become numbers and statistics instead of experiences and stories. In this case, a machine addressed a letter to a child about Medicaid. Though it might make sense to a machine to address the letter to the person who would be directly affected, it doesn’t make sense to us as people. Reducing people numbers creates unique problems. For instance, at the beginning of this class we discussed the trolley problem. The question was would we switch tracks to avoid running over 5 people but instead run over 1 person. In this question, the people are simply numbers. People’s answers would certainly change if instead of running over 1 unknown person, it was their brother or sister. Or maybe more people would be willing to change the tracks if the one person was exceptionally vile. In the same sense, a machine cannot make the same decisions about people when it cannot understand people like other humans do. A failure to establish eligibility to a machine might simply mean the files were out of order or the power shut down in the middle of an operation. These mistakes would not mean the same thing for a person.
This story makes me want to rally behind Sophie Stipes because of Rawl’s veil of ignorance and conflict theory. These theories are centered around the idea of what is just and what is unjust especially to those who are already hurting. Making sick child suffer more to cut taxpayer dollars is undoubtedly unjust. Eubanks clearly knows this as well because of her focus on Sophie. It would be immoral to not root for Sophie and against the automation. Automation, in this example, undoubtedly created more anxiety for the Stipes family and jeopardized Sophie’s life. But Eubanks isn’t necessarily fighting against automation. She is fighting against the mistreatment of the poor.
Eubanks explains how this is a story about fighting against poverty. She says that when people approach her about the economic and social implications of their designs, she asks two questions:
Does the tool increase the self-determination and agency of the poor?
Would the tool be tolerated if it was targeted at non-poor people?
The answer to both of these questions in this case would be no. It does not help the poor to consolidate their resources and then make them go through a machine that doesn’t understand their unique problems instead of a person. Following from that, if the machine would affect the rich, there would be a massive outcry about the slowness and ambiguity of the automation. The difference between the rich and the poor is that the rich have enough money to make their voices heard while the voices of the poor are but faint whispers.
It feels immoral to ever try to place sick people in the wrong. This urge I have to help the sick and needy isn’t unique to me. It is a basic human emotion. Most people have this need to help people who are in need of help. Eubanks created this us versus them mentality where us represents the sick and the poor while them represents a faceless organization who cares more about ease of use than the people it is designed to help, and as such, how could this not provoke strong emotions in me?', 'Automating Inequality Essay');

INSERT INTO EmailsForNewsletter (emailNewsletterId, constituentNameId) VALUES  (1, 1);
INSERT INTO EmailsForNewsletter (emailNewsletterId, constituentNameId) VALUES (2, 1);
INSERT INTO EmailsForNewsletter (emailNewsletterId, constituentNameId) VALUES (1, 2);
INSERT INTO EmailsForNewsletter (emailNewsletterId, constituentNameId) VALUES (3, 2);
INSERT INTO EmailsForNewsletter (emailNewsletterId, constituentNameId) VALUES (4, 2);
INSERT INTO EmailsForNewsletter (emailNewsletterId, constituentNameId) VALUES (4, 6);
INSERT INTO EmailsForNewsletter (emailNewsletterId, constituentNameId) VALUES (1, 7);
INSERT INTO EmailsForNewsletter (emailNewsletterId, constituentNameId) VALUES (5, 8);
INSERT INTO EmailsForNewsletter (emailNewsletterId, constituentNameId) VALUES (1, 9);
INSERT INTO EmailsForNewsletter (emailNewsletterId, constituentNameId) VALUES (1, 10);
