create type charge as table (i int);

create table battery (i int);
insert into battery values (0);
insert into battery values (1);
insert into battery values (2);

create procedure myproc (in intab charge,in i int, out outtab charge) as
begin
 outtab = select i from :intab where i > :i;
end; 

call myproc(intab=>battery, i=>2, outtab =>?);
