/****** Object:  Table [dbo].[ProjectType]    Script Date: 12/08/2012 13:32:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ProjectType](
	[ProjectTypeKey] [int] IDENTITY(1,1) NOT NULL,
	[ID] [varchar](10) NOT NULL,
	[Title] [varchar](100) NOT NULL,
	[Description] [varchar](max) NOT NULL,
 CONSTRAINT [PK_ProjectType] PRIMARY KEY CLUSTERED 
(
	[ProjectTypeKey] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PartnerType]    Script Date: 12/08/2012 13:32:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PartnerType](
	[PartnerTypeKey] [int] IDENTITY(1,1) NOT NULL,
	[Title] [varchar](100) NOT NULL,
 CONSTRAINT [PK_PartnerType] PRIMARY KEY CLUSTERED 
(
	[PartnerTypeKey] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Project]    Script Date: 12/08/2012 13:32:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Project](
	[ProjectKey] [int] IDENTITY(1,1) NOT NULL,
	[ProjectTypeKey] [int] NOT NULL,
	[Active] [bit] NOT NULL,
	[Title] [varchar](100) NOT NULL,
	[Description] [varchar](max) NOT NULL,
	[StartDate] [datetime] NOT NULL,
	[CompletionDate] [datetime] NOT NULL,
 CONSTRAINT [PK_Project] PRIMARY KEY CLUSTERED 
(
	[ProjectKey] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [IX_Project] ON [dbo].[Project] 
(
	[ProjectTypeKey] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Partner]    Script Date: 12/08/2012 13:32:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Partner](
	[PartnerKey] [int] IDENTITY(1,1) NOT NULL,
	[PartnerTypeKey] [int] NOT NULL,
	[Name] [varchar](250) NOT NULL,
	[Description] [varchar](max) NOT NULL,
	[WebsiteURL] [varchar](100) NULL,
 CONSTRAINT [PK_Partner] PRIMARY KEY CLUSTERED 
(
	[PartnerKey] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [IX_Partner] ON [dbo].[Partner] 
(
	[PartnerTypeKey] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Testimonial]    Script Date: 12/08/2012 13:32:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Testimonial](
	[TestimonialKey] [int] IDENTITY(1,1) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[Name] [varchar](100) NULL,
	[Note] [varchar](max) NOT NULL,
	[ProjectKey] [int] NULL,
 CONSTRAINT [PK_Testimonial] PRIMARY KEY CLUSTERED 
(
	[TestimonialKey] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [IX_Testimonial] ON [dbo].[Testimonial] 
(
	[CreateDate] DESC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_Testimonial_1] ON [dbo].[Testimonial] 
(
	[ProjectKey] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProjectPartner]    Script Date: 12/08/2012 13:32:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProjectPartner](
	[ProjectPartnerKey] [int] IDENTITY(1,1) NOT NULL,
	[ProjectKey] [int] NOT NULL,
	[PartnerKey] [int] NOT NULL,
 CONSTRAINT [PK_ProjectPartner] PRIMARY KEY CLUSTERED 
(
	[ProjectPartnerKey] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_ProjectPartner] ON [dbo].[ProjectPartner] 
(
	[ProjectKey] ASC,
	[PartnerKey] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProjectImage]    Script Date: 12/08/2012 13:32:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProjectImage](
	[ProjectImageKey] [int] IDENTITY(1,1) NOT NULL,
	[ProjectKey] [int] NOT NULL,
	[ImagePath] [nvarchar](250) NOT NULL,
	[SortOrder] [int] NULL,
	[DefaultImage] [bit] NOT NULL,
 CONSTRAINT [PK_ProjectImage] PRIMARY KEY CLUSTERED 
(
	[ProjectImageKey] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_ProjectImage] ON [dbo].[ProjectImage] 
(
	[ProjectKey] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  ForeignKey [FK_Partner_PartnerType]    Script Date: 12/08/2012 13:32:23 ******/
ALTER TABLE [dbo].[Partner]  WITH CHECK ADD  CONSTRAINT [FK_Partner_PartnerType] FOREIGN KEY([PartnerTypeKey])
REFERENCES [dbo].[PartnerType] ([PartnerTypeKey])
GO
ALTER TABLE [dbo].[Partner] CHECK CONSTRAINT [FK_Partner_PartnerType]
GO
/****** Object:  ForeignKey [FK_Project_ProjectType]    Script Date: 12/08/2012 13:32:23 ******/
ALTER TABLE [dbo].[Project]  WITH CHECK ADD  CONSTRAINT [FK_Project_ProjectType] FOREIGN KEY([ProjectTypeKey])
REFERENCES [dbo].[ProjectType] ([ProjectTypeKey])
GO
ALTER TABLE [dbo].[Project] CHECK CONSTRAINT [FK_Project_ProjectType]
GO
/****** Object:  ForeignKey [FK_ProjectImage_Project]    Script Date: 12/08/2012 13:32:23 ******/
ALTER TABLE [dbo].[ProjectImage]  WITH CHECK ADD  CONSTRAINT [FK_ProjectImage_Project] FOREIGN KEY([ProjectKey])
REFERENCES [dbo].[Project] ([ProjectKey])
GO
ALTER TABLE [dbo].[ProjectImage] CHECK CONSTRAINT [FK_ProjectImage_Project]
GO
/****** Object:  ForeignKey [FK_ProjectPartner_Partner]    Script Date: 12/08/2012 13:32:23 ******/
ALTER TABLE [dbo].[ProjectPartner]  WITH CHECK ADD  CONSTRAINT [FK_ProjectPartner_Partner] FOREIGN KEY([PartnerKey])
REFERENCES [dbo].[Partner] ([PartnerKey])
GO
ALTER TABLE [dbo].[ProjectPartner] CHECK CONSTRAINT [FK_ProjectPartner_Partner]
GO
/****** Object:  ForeignKey [FK_ProjectPartner_Project]    Script Date: 12/08/2012 13:32:23 ******/
ALTER TABLE [dbo].[ProjectPartner]  WITH CHECK ADD  CONSTRAINT [FK_ProjectPartner_Project] FOREIGN KEY([ProjectKey])
REFERENCES [dbo].[Project] ([ProjectKey])
GO
ALTER TABLE [dbo].[ProjectPartner] CHECK CONSTRAINT [FK_ProjectPartner_Project]
GO
/****** Object:  ForeignKey [FK_Testimonial_Project]    Script Date: 12/08/2012 13:32:23 ******/
ALTER TABLE [dbo].[Testimonial]  WITH CHECK ADD  CONSTRAINT [FK_Testimonial_Project] FOREIGN KEY([ProjectKey])
REFERENCES [dbo].[Project] ([ProjectKey])
GO
ALTER TABLE [dbo].[Testimonial] CHECK CONSTRAINT [FK_Testimonial_Project]
GO
