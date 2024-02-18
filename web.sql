create database web_project
create table user_data
(
  f_name varchar(150),
  l_name varchar(150),
  email varchar(150),
 phone varchar(150),
  date_birth varchar(150),
  addresss varchar(150),
 Gender varchar(150),
 Specification varchar(150),
 date_visit varchar(150),
hourr varchar(150),doc_id varchar(150),doc_name varchar(150),salary int);

   create table doctors 
  (
  id int IDENTITY(1,1) PRIMARY KEY,
  doc_name varchar(150),
  doc_age int,
  doc_salary int,
  doc_Specification varchar(100),
  days_work varchar(150),
  hours_work varchar(150)
  );
  insert into doctors values 
  ('Mohamed ahmed ali',
  33,
  100,
  'Internal medicine',
  'Saturday,Sunday,Monday',
  '8 Am to 10 pm'
  );
   insert into doctors values 
  ('Menna mohamed ahmed',
   45,
  200,
  'Internal medicine',
  'Saturday,Sunday,Monday,Wednesday,Thursday',
  '8 Am to 10 pm'
  );
   insert into doctors values 
  ('Alaa mahmoud ali',
   39,
  150,
  'Internal medicine',
  'Monday,Tuesday,Wednesday,Thursday',
  '8 Am to 10 pm'
  );
    insert into doctors values 
  ('Magdy adel Ibrahim',
  48,
  250,
  'Internal medicine',
  'Saturday,Sunday,Monday,Tuesday,Wednesday,Thursday',
  '8 Am to 10 pm'
  );
   insert into doctors values 
  ('Omer mohamed ali',
  38,
  250,
  'Family medicine',
  'Saturday,Sunday,Monday,Wednesday,Thursday',
  '8 Am to 10 pm'
  );
   insert into doctors values 
  ('Abdallah ashraf ahmed',
  41,
  300,
  'Family medicine',
  'Monday,Wednesday,Thursday',
  '8 Am to 10 pm'
  );
   insert into doctors values 
  ('Rawan ali mohamed',
  33,
  150,
  'Family medicine',
  'Saturday,Sunday,Monday,Wednesday,Thursday',
  '8 Am to 10 pm'
  );
   insert into doctors values 
  ('Nourhan ali ahmed',
  45,
  350,
  'Family medicine',
  'Saturday,Sunday,Monday,Wednesday,Thursday',
  '8 Am to 10 pm'
  );
   insert into doctors values 
  ('Amr ahmed mohamed',
  35,
  150,
  'Emergency medicine',
  'Sunday,Monday,Wednesday,Thursday',
  '8 Am to 10 pm'
  );
     insert into doctors values 
  ('Eyad ali ahmed',
  39,
  200,
  'Emergency medicine',
  'Saturday,Sunday,Monday,Wednesday,Thursday',
  '8 Am to 10 pm'
  );
     insert into doctors values 
  ('Arwa ahmed saleh',
  32,
  150,
  'Emergency medicine',
  'Sunday,Monday,Wednesday,Thursday',
  '8 Am to 10 pm'
  );
   insert into doctors values 
  ('Rahma ahmed karem',
  34,
  170,
  'Emergency medicine',
  'Saturday,Sunday,Monday',
  '8 Am to 10 pm'
  );
   insert into doctors values 
  ('Ali ahmed ali',
  36,
  200,
  'Rheumatology',
  'Saturday,Sunday,Monday,Wednesday,Thursday',
  '8 Am to 10 pm'
  );
   insert into doctors values 
  ('Khaled ahmed mohamed',
  39,
  170,
  'Rheumatology',
  'Saturday,Sunday,Monday,Wednesday,Thursday',
  '8 Am to 10 pm'
  );
   insert into doctors values 
  ('Karem  Khattab mohamed',
  31,
  100,
  'Rheumatology',
  'Saturday,Sunday,Monday,Wednesday',
  '8 Am to 10 pm'
  );
   insert into doctors values 
  ('Roaa hossam ahmed',
  30,
  150,
  'Rheumatology',
  'Monday,Wednesday,Thursday',
  '8 Am to 10 pm'
  );
   insert into doctors values 
  ('Alyaa ahmed omer',
  30,
  150,
  'Otorhinolaryngology',
  'Saturday,Sunday,Monday,Wednesday,Thursday',
  '8 Am to 10 pm'
  );
     insert into doctors values 
  ('Galal adel ahmed',
  45,
  250,
  'Otorhinolaryngology',
  'Saturday,Sunday,Monday',
  '8 Am to 10 pm'
  );
     insert into doctors values 
  ('Madgy adel ibrahem',
  35,
  250,
  'Otorhinolaryngology',
  'Saturday,Sunday,Monday,Wednesday,Thursday',
  '8 Am to 10 pm'
  );
     insert into doctors values 
  ('Aser salah ahmed',
  30,
  200,
  'Otorhinolaryngology',
  'Saturday,Sunday,Monday,Wednesday,Thursday',
  '8 Am to 10 pm'
  );


  Create table contact_us(f_name varchar(250),email varchar(250),phone varchar(20),mess varchar(400));


 

 create table join_us(f_name varchar(150),l_name varchar(150),email varchar(150), phone varchar(150), birth varchar(150), addresss varchar(150), Gender varchar(150), education varchar(900),clic varchar(900), images image);

 create table signUp(f_name varchar (80) , email varchar(60) primary key , pass int , confirmpass int , question varchar(50) , answer varchar(50), l_name varchar(120) );
