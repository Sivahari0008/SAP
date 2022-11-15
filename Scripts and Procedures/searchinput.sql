Create or replace procedure mart (in inp integer, out opt "department"."category")
as
begin
opt = select * from "department"."category" material = :inp ;
end;