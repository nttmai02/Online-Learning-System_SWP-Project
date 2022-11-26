use [master]
go
create database [onlinelearningsystem]
go
use [onlinelearningsystem]
GO
CREATE TABLE [Role](
	[ID] [int] primary key,
	[Name] [varchar](50) NOT NULL,
)
GO
CREATE TABLE [User](
	[Id] [int] primary key identity,
	[Email] [varchar](255) NOT NULL,
	[PassWord] [varchar](50) NOT NULL,
	[FullName] [varchar](50) NOT NULL,
	[Gender] [bit],
	[Phone] [varchar](16),
	[Image] [varchar](max),
	[RoleId] [int] NOT NULL,
	foreign key(RoleId) references [Role](Id)
)

GO
CREATE TABLE [Category](
	[Id] [int] primary key identity,
	[Name] [varchar](255) NOT NULL,
)
GO
CREATE TABLE [Blog](
	[Id] [int] primary key identity,
	[Name] [varchar](255) NOT NULL,
	[Date] [datetime],
	[Content] [varchar](max) NOT NULL,
	[CategoryId] [int] NOT NULL,
	[UserId] [int] NOT NULL,
	[Image] [varchar](max) NOT NULL,
	[Status] [bit] NOT NULL,
	foreign key(CategoryId) references Category(Id),
	foreign key(UserId) references [User](Id)
)
GO
CREATE TABLE [Question](
	[Id] [int] primary key identity,
	[Content] [varchar](max) NOT NULL,
	[CategoryId] [int] NOT NULL,
	[status] [bit] NOT NULL,
	foreign key(CategoryId) references Category(Id)
)
GO
CREATE TABLE [Answers](
	[Id] [int] primary key identity,
	[Content] [varchar](max) NOT NULL,
	[Correct] [bit] NOT NULL,
	[QuestionId] int NOT NULL,
	foreign key(QuestionId) references Question(Id)
)
GO
CREATE TABLE [Quiz](
	[ID] [int] primary key identity,
	[Name] [varchar](max) NULL,
	[Level] [varchar](50) NOT NULL,
	[Duration] [time] NULL,
	[PassRate] [float] NULL,
	[Type] [varchar](50) NOT NULL
)
GO
CREATE TABLE [Course](
	[Id] [int] primary key identity,
	[Image] [varchar](max) NOT NULL,
	[Status] [bit] NOT NULL,
	[Name] [varchar](255) NOT NULL,
	[Description] [varchar](max) NOT NULL,
	[Featured] [bit] NOT NULL,
	[CategoryId] [int] NOT NULL,
	foreign key(CategoryId) references Category(Id)
)
GO
CREATE TABLE [Topic](
	[Id] [int] primary key identity,
	[Name] [varchar](255) NOT NULL,
	[Order] int NOT NULL UNIQUE,
	[CourseId] [int] NOT NULL,
	foreign key(CourseId) references Course(Id)
)
GO
CREATE TABLE [Register](
	[Id] [int] primary key identity,
	[UserId] [int],
	[CourseId] [int],
	[ValidFrom] [datetime] NOT NULL,
	[ValidTo] [datetime],
	foreign key(UserId) references [User](Id),
	foreign key(CourseId) references [Course](Id)
)
GO
CREATE TABLE [Lesson](
	[Id] [int] primary key identity,
	[Name] [varchar](255) NOT NULL,
	[URL] [varchar](max) NOT NULL,
	[Description] [varchar](max),
	[Order] [int] NOT NULL,
	[Status] [bit] NOT NULL,
	[TopicId] [int] NOT NULL,
	foreign key(TopicId) references Topic(Id)
)
GO
CREATE TABLE [User_Quiz](
	[Id] [int] primary key identity,
	[UserId] [int],
	[QuizId] [int],
	[TimeTaken] [time] NOT NULL,
	[Grade] [float] NOT NULL,
	foreign key(UserId) references [User](Id),
	foreign key(QuizId) references Quiz(Id)
)
GO
CREATE TABLE [User_Quiz_Question](
	[Id] [int] primary key identity,
	[User_QuizId] [int],
	[QuestionId] [int],
	[UserAnswer] [int] NOT NULL,
	[Marked] [bit] NOT NULL,
	foreign key(User_QuizId) references [User_Quiz](Id),
	foreign key(QuestionId) references [Question](Id)
)
GO
CREATE TABLE [Teach](
	[Id] [int] primary key identity,
	[UserId] [int],
	[CourseId] [int],
	foreign key(UserId) references [User](Id),
	foreign key(CourseId) references [Course](Id)
)
GO
CREATE TABLE [Topic_Quiz](
	[Id] [int] primary key identity,
	TopicId int,
	QuizId int,
	[Order] int,
	foreign key(TopicId) references Topic(Id),
	foreign key(QuizId) references Quiz(Id)
)
GO
CREATE TABLE [Quiz_Question](
	[Id] [int] primary key identity,
	QuizId int,
	QuestionId int,
	[Order] int,
	foreign key(QuizId) references Quiz(Id),
	foreign key(QuestionId) references Question(Id)
)
GO
CREATE TABLE [PricePackage](
	[Id] [int] primary key identity,
	[Name] [varchar](255) NOT NULL,
	[Duration] [int] NOT NULL,
	[ListedPrice] [float] NOT NULL,
	[SalePrice] [float] NOT NULL,
	[Status] [bit] NOT NULL,
	[CourseId] int NOT NULL,
	foreign key(CourseId) references Course(Id)
)