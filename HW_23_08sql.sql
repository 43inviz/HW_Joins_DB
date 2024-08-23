use Academy

go
--1)
select distinct LectureRooms.Name
from LectureRooms
join Schedules on LectureRooms.Id = Schedules.LectureRoomId
join Lectures on Schedules.LectureId = Lectures.Id
join Teachers on Lectures.TeacherId = Teachers.Id
where Teachers.Name = 'Jack' and Teachers.Surname = 'Underhill'


go

--2)
select distinct Teachers.Surname
from Assistants
join Lectures on Assistants.TeacherId = Lectures.TeacherId
join Schedules on Lectures.Id = Schedules.LectureId
join GroupsLectures on Lectures.Id = GroupsLectures.LectureId
join Groups on GroupsLectures.GroupId = Groups.Id
join Teachers on Assistants.TeacherId = Teachers.Id
where Groups.Name = 'F505';

go
--3)
select distinct Subjects.Name
from Lectures
join Subjects on Lectures.SubjectId = Subjects.Id
join Schedules on Lectures.Id = Schedules.LectureId
join GroupsLectures on Lectures.Id = GroupsLectures.LectureId
join Groups on GroupsLectures.GroupId = Groups.Id
join Teachers on Lectures.TeacherId = Teachers.Id
where Teachers.Name = 'Laura' and Teachers.Surname = 'Brown'
and Groups.Year = 5;


go
--4
select distinct Teachers.Surname
from Teachers
left join Lectures on Teachers.Id = Lectures.TeacherId
left join Schedules on Lectures.Id = Schedules.LectureId and Schedules.DayOfWeek = 1
where Schedules.LectureId is null;


go
--5)
select distinct LectureRooms.Name, LectureRooms.Building
from LectureRooms
left join Schedules on LectureRooms.Id = Schedules.LectureRoomId
and Schedules.DayOfWeek = 3
and Schedules.Week = 2
and Schedules.Class = 3
where Schedules.Id is null;


go
--6)???????
--select distinct Teachers.Name, Teachers.Surname
--from Teachers
--join Lectures on Teachers.Id = Lectures.TeacherId
--join Schedules on Lectures.Id = Schedules.LectureId
--join Groups on Schedules.GroupId = Groups.Id
--where Faculties.Name = 'Computer Science'



go
--7)
select distinct Building
from Faculties
union
select distinct Building
from Departments
union
select distinct Building
from LectureRooms;

go
--8)


go
--9)
select distinct Schedules.DayOfWeek
from Schedules
join LectureRooms on Schedules.LectureRoomId = LectureRooms.Id
where LectureRooms.Name = 'A311' or LectureRooms.Name = 'A104'






