drop table if exists Tricks;
drop table if exists DiseaseHistories;
drop table if exists Patients;
drop table if exists Doctors;
drop table if exists Cabinets;

create table if not exists Doctors
(
    id_doctor int not null primary key,
    first_name varchar(20),
    second_name varchar(20),
    patronymic varchar(20),
    job_title varchar(20)
);

create table if not exists Patients
(
    id_patient int not null primary key,
    first_name varchar(20) not null,
    second_name varchar(20) not null,
    patronymic varchar(20) not null,
    passport varchar(20) not null,
    age int not null,

    constraint chk_age check (Patients.age >= 0 AND Patients.age <= 200)
);

create table if not exists Cabinets
(
    num int not null primary key,
    floor_number int
);

create table if not exists DiseaseHistories
(
    id_disease int not null primary key,

    id_patient int not null,
    foreign key(id_patient) references Patients(id_patient),

    description varchar(80),
    complaints varchar(80),
    symptoms varchar(80),
    medicines varchar(80),
    sick_leave_days int
);

create table if not exists Tricks
(
    id_tricks int not null primary key,

    id_doctor int not null,
    foreign key(id_doctor) references Doctors(id_doctor),

    id_patient int not null,
    foreign key(id_doctor) references Patients(id_patient),

    num_cabinet int not null,
    foreign key(num_cabinet) references Cabinets(num),

    time time,
    duration_minutes int
);
