create role Doctor;

grant select on Doctors to Doctors;
grant select on Doctors to Patients;
grant select on Doctors to Cabinets;
grant select on Doctors to DiseaseHistories;
grant select on Doctors to Tricks;

grant update on Doctors to Doctors;
grant update on Doctors to DiseaseHistories;
grant alter on Doctors to DiseaseHistories;

---------------------------------------------

create role Patient;

grant select on Doctors to Cabinets;
grant select on Doctors to DiseaseHistories;
grant select on Doctors to Tricks;

---------------------------------------------

create role Admin;

grant alter on Doctors to Admin;
grant insert on Doctors to Admin;
grant select on Doctors to Admin;
grant delete on Doctors to Admin;
grant update on Doctors to Admin;

grant alter on Patients to Admin;
grant insert on Patients to Admin;
grant select on Patients to Admin;
grant delete on Patients to Admin;
grant update on Patients to Admin;

grant alter on Cabinets to Admin;
grant insert on Cabinets to Admin;
grant select on Cabinets to Admin;
grant delete on Cabinets to Admin;
grant update on Cabinets to Admin;

grant alter on DiseaseHistories to Admin;
grant insert on DiseaseHistories to Admin;
grant select on DiseaseHistories to Admin;
grant delete on DiseaseHistories to Admin;
grant update on DiseaseHistories to Admin;

grant alter on Tricks to Admin;
grant insert on Tricks to Admin;
grant select on Tricks to Admin;
grant delete on Tricks to Admin;
grant update on Tricks to Admin;
