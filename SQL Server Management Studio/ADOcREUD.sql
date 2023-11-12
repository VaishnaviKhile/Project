Create proc SPInsert
@ID INT,
@NAME VARCHAR
as
begin
INSERT INTO Student VALUES(@ID,@NAME)
end
