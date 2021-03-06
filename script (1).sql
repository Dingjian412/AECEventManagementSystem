USE [AECEventManagement]
GO
/****** Object:  Table [dbo].[Event]    Script Date: 9/4/2018 8:09:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Event](
	[EventID] [int] NOT NULL,
	[EventName] [varchar](50) NOT NULL,
	[EventTime] [datetime] NOT NULL,
	[City] [varchar](100) NOT NULL,
	[CreatedTime] [datetime] NOT NULL,
	[CreatedBy] [varchar](50) NOT NULL,
	[UpdatedTime] [datetime] NULL,
	[UpdatedBy] [varchar](50) NULL,
 CONSTRAINT [PK_Event] PRIMARY KEY CLUSTERED 
(
	[EventID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EventPit]    Script Date: 9/4/2018 8:09:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EventPit](
	[ID] [int] NOT NULL,
	[EventID] [int] NOT NULL,
	[PitStopID] [int] NOT NULL,
	[PitSequence] [int] NOT NULL,
	[Createdtime] [datetime] NOT NULL,
	[CreatedBy] [varchar](50) NOT NULL,
	[UpdatedTime] [datetime] NULL,
	[UpdatedBy] [varchar](50) NULL,
 CONSTRAINT [PK_EventPit] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EventTeam]    Script Date: 9/4/2018 8:09:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EventTeam](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[EventID] [int] NOT NULL,
	[TeamID] [int] NOT NULL,
	[CreatedTime] [datetime] NOT NULL,
	[CreatedBy] [varchar](50) NOT NULL,
	[UpdatedTime] [datetime] NULL,
	[UpdatedBy] [varchar](50) NULL,
 CONSTRAINT [PK_EventTeam] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Participant]    Script Date: 9/4/2018 8:09:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Participant](
	[ParticipantID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Age] [int] NULL,
	[HP] [varchar](20) NULL,
	[CreatedTime] [datetime] NOT NULL,
	[CreatedBy] [varchar](50) NOT NULL,
	[UpdatedTime] [datetime] NULL,
	[UpdatedBy] [varchar](50) NULL,
 CONSTRAINT [PK_Participant] PRIMARY KEY CLUSTERED 
(
	[ParticipantID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PitStop]    Script Date: 9/4/2018 8:09:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PitStop](
	[PitStopID] [int] NOT NULL,
	[PitName] [varchar](50) NOT NULL,
	[Address] [varchar](50) NOT NULL,
	[Postcode] [varchar](10) NOT NULL,
	[Longitude] [geography] NOT NULL,
	[Latitude] [geography] NOT NULL,
	[CreatedTime] [datetime] NOT NULL,
	[CreatedBy] [varchar](50) NOT NULL,
	[UpdatedTime] [datetime] NULL,
	[UpdatedBy] [varchar](50) NULL,
 CONSTRAINT [PK_PitStop] PRIMARY KEY CLUSTERED 
(
	[PitStopID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Staff]    Script Date: 9/4/2018 8:09:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Staff](
	[StaffID] [int] NOT NULL,
	[StaffName] [varchar](50) NOT NULL,
	[UserName] [varchar](50) NOT NULL,
	[Password] [varchar](50) NOT NULL,
	[title] [varchar](50) NOT NULL,
	[CreatedTime] [datetime] NOT NULL,
	[CreatedBy] [varchar](50) NOT NULL,
	[UpdatedTime] [datetime] NULL,
	[UpdatedBy] [varchar](50) NULL,
 CONSTRAINT [PK_Staff] PRIMARY KEY CLUSTERED 
(
	[StaffID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Team]    Script Date: 9/4/2018 8:09:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Team](
	[TeamID] [int] NOT NULL,
	[TeamName] [varchar](50) NOT NULL,
	[DeviceID] [varchar](50) NOT NULL,
	[CreatedTime] [datetime] NOT NULL,
	[CreatedBy] [varchar](50) NOT NULL,
	[UpdatedTime] [datetime] NULL,
	[UpdatedBy] [varchar](50) NULL,
 CONSTRAINT [PK_Team] PRIMARY KEY CLUSTERED 
(
	[TeamID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TeamParticipant]    Script Date: 9/4/2018 8:09:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TeamParticipant](
	[ID] [int] NOT NULL,
	[TeamID] [int] NOT NULL,
	[ParticipantID] [int] NOT NULL,
	[CreatedTime] [datetime] NOT NULL,
	[CreatedBy] [varchar](50) NOT NULL,
	[UpdatedTime] [datetime] NULL,
	[UpdatedBy] [varchar](50) NULL,
 CONSTRAINT [PK_TeamParticipant] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Event] ADD  CONSTRAINT [DF_Event_CreatedTime]  DEFAULT (getdate()) FOR [CreatedTime]
GO
ALTER TABLE [dbo].[Event] ADD  CONSTRAINT [DF_Event_CreatedBy]  DEFAULT ('System') FOR [CreatedBy]
GO
ALTER TABLE [dbo].[EventPit] ADD  CONSTRAINT [DF_EventPit_Createdtime]  DEFAULT (getdate()) FOR [Createdtime]
GO
ALTER TABLE [dbo].[EventPit] ADD  CONSTRAINT [DF_EventPit_CreatedBy]  DEFAULT ('System') FOR [CreatedBy]
GO
ALTER TABLE [dbo].[EventTeam] ADD  CONSTRAINT [DF_EventTeam_CreatedTime]  DEFAULT (getdate()) FOR [CreatedTime]
GO
ALTER TABLE [dbo].[EventTeam] ADD  CONSTRAINT [DF_EventTeam_CreatedBy]  DEFAULT ('system') FOR [CreatedBy]
GO
ALTER TABLE [dbo].[Participant] ADD  CONSTRAINT [DF_Participant_CreatedTime]  DEFAULT (getdate()) FOR [CreatedTime]
GO
ALTER TABLE [dbo].[Participant] ADD  CONSTRAINT [DF_Participant_CreatedBy]  DEFAULT ('System') FOR [CreatedBy]
GO
ALTER TABLE [dbo].[PitStop] ADD  CONSTRAINT [DF_PitStop_CreatedTime]  DEFAULT (getdate()) FOR [CreatedTime]
GO
ALTER TABLE [dbo].[PitStop] ADD  CONSTRAINT [DF_PitStop_CreatedBy]  DEFAULT ('System') FOR [CreatedBy]
GO
ALTER TABLE [dbo].[Staff] ADD  CONSTRAINT [DF_Staff_CreatedTime]  DEFAULT (getdate()) FOR [CreatedTime]
GO
ALTER TABLE [dbo].[Staff] ADD  CONSTRAINT [DF_Staff_CreatedBy]  DEFAULT ('System') FOR [CreatedBy]
GO
ALTER TABLE [dbo].[Team] ADD  CONSTRAINT [DF_Team_CreatedTime]  DEFAULT (getdate()) FOR [CreatedTime]
GO
ALTER TABLE [dbo].[Team] ADD  CONSTRAINT [DF_Team_CreatedBy]  DEFAULT ('System') FOR [CreatedBy]
GO
ALTER TABLE [dbo].[TeamParticipant] ADD  CONSTRAINT [DF_TeamParticipant_CreatedTime]  DEFAULT (getdate()) FOR [CreatedTime]
GO
ALTER TABLE [dbo].[TeamParticipant] ADD  CONSTRAINT [DF_TeamParticipant_CreatedBy]  DEFAULT ('System') FOR [CreatedBy]
GO
ALTER TABLE [dbo].[EventPit]  WITH CHECK ADD  CONSTRAINT [FK_EventPit_Event] FOREIGN KEY([EventID])
REFERENCES [dbo].[Event] ([EventID])
GO
ALTER TABLE [dbo].[EventPit] CHECK CONSTRAINT [FK_EventPit_Event]
GO
ALTER TABLE [dbo].[EventPit]  WITH CHECK ADD  CONSTRAINT [FK_EventPit_PitStop] FOREIGN KEY([PitStopID])
REFERENCES [dbo].[PitStop] ([PitStopID])
GO
ALTER TABLE [dbo].[EventPit] CHECK CONSTRAINT [FK_EventPit_PitStop]
GO
ALTER TABLE [dbo].[EventTeam]  WITH CHECK ADD  CONSTRAINT [FK_EventTeam_Event] FOREIGN KEY([EventID])
REFERENCES [dbo].[Event] ([EventID])
GO
ALTER TABLE [dbo].[EventTeam] CHECK CONSTRAINT [FK_EventTeam_Event]
GO
ALTER TABLE [dbo].[EventTeam]  WITH CHECK ADD  CONSTRAINT [FK_EventTeam_Team] FOREIGN KEY([TeamID])
REFERENCES [dbo].[Team] ([TeamID])
GO
ALTER TABLE [dbo].[EventTeam] CHECK CONSTRAINT [FK_EventTeam_Team]
GO
ALTER TABLE [dbo].[TeamParticipant]  WITH CHECK ADD  CONSTRAINT [FK_TeamParticipant_Participant] FOREIGN KEY([ParticipantID])
REFERENCES [dbo].[Participant] ([ParticipantID])
GO
ALTER TABLE [dbo].[TeamParticipant] CHECK CONSTRAINT [FK_TeamParticipant_Participant]
GO
ALTER TABLE [dbo].[TeamParticipant]  WITH CHECK ADD  CONSTRAINT [FK_TeamParticipant_Team] FOREIGN KEY([TeamID])
REFERENCES [dbo].[Team] ([TeamID])
GO
ALTER TABLE [dbo].[TeamParticipant] CHECK CONSTRAINT [FK_TeamParticipant_Team]
GO
