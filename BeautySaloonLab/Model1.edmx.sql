
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 12/10/2022 16:50:24
-- Generated from EDMX file: C:\Users\milic\source\repos\BeautySaloonLab\BeautySaloonLab\Model1.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [BeautySaloonDatabase];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_additional_services_services]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[additional_services] DROP CONSTRAINT [FK_additional_services_services];
GO
IF OBJECT_ID(N'[dbo].[FK_Customer_Tag]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Customer] DROP CONSTRAINT [FK_Customer_Tag];
GO
IF OBJECT_ID(N'[dbo].[FK_employees_Department]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[employees] DROP CONSTRAINT [FK_employees_Department];
GO
IF OBJECT_ID(N'[dbo].[FK_Employees_Services_employees]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Employees_Services] DROP CONSTRAINT [FK_Employees_Services_employees];
GO
IF OBJECT_ID(N'[dbo].[FK_Employees_Services_Services_Customers]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Employees_Services] DROP CONSTRAINT [FK_Employees_Services_Services_Customers];
GO
IF OBJECT_ID(N'[dbo].[FK_History_of_pay_Product]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[History_of_pay] DROP CONSTRAINT [FK_History_of_pay_Product];
GO
IF OBJECT_ID(N'[dbo].[FK_History_of_pay_Services_Customers]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[History_of_pay] DROP CONSTRAINT [FK_History_of_pay_Services_Customers];
GO
IF OBJECT_ID(N'[dbo].[FK_Product_Manufacturer]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Product] DROP CONSTRAINT [FK_Product_Manufacturer];
GO
IF OBJECT_ID(N'[dbo].[FK_Product_Topicality]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Product] DROP CONSTRAINT [FK_Product_Topicality];
GO
IF OBJECT_ID(N'[dbo].[FK_Services_Customers_additional_services]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Services_Customers] DROP CONSTRAINT [FK_Services_Customers_additional_services];
GO
IF OBJECT_ID(N'[dbo].[FK_Services_Customers_Customer]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Services_Customers] DROP CONSTRAINT [FK_Services_Customers_Customer];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[additional_services]', 'U') IS NOT NULL
    DROP TABLE [dbo].[additional_services];
GO
IF OBJECT_ID(N'[dbo].[Customer]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Customer];
GO
IF OBJECT_ID(N'[dbo].[Department]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Department];
GO
IF OBJECT_ID(N'[dbo].[employees]', 'U') IS NOT NULL
    DROP TABLE [dbo].[employees];
GO
IF OBJECT_ID(N'[dbo].[Employees_Services]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Employees_Services];
GO
IF OBJECT_ID(N'[dbo].[History_of_pay]', 'U') IS NOT NULL
    DROP TABLE [dbo].[History_of_pay];
GO
IF OBJECT_ID(N'[dbo].[Manufacturer]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Manufacturer];
GO
IF OBJECT_ID(N'[dbo].[Product]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Product];
GO
IF OBJECT_ID(N'[dbo].[services]', 'U') IS NOT NULL
    DROP TABLE [dbo].[services];
GO
IF OBJECT_ID(N'[dbo].[Services_Customers]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Services_Customers];
GO
IF OBJECT_ID(N'[dbo].[sysdiagrams]', 'U') IS NOT NULL
    DROP TABLE [dbo].[sysdiagrams];
GO
IF OBJECT_ID(N'[dbo].[Tag]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Tag];
GO
IF OBJECT_ID(N'[dbo].[Topicality]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Topicality];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'additional_services'
CREATE TABLE [dbo].[additional_services] (
    [id] int  NOT NULL,
    [id_sevices] int  NULL
);
GO

-- Creating table 'Customer'
CREATE TABLE [dbo].[Customer] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Lname] nvarchar(50)  NULL,
    [Fname] nvarchar(50)  NULL,
    [Mname] nvarchar(50)  NULL,
    [Bday] datetime  NULL,
    [Mail] nvarchar(50)  NULL,
    [Phone] nvarchar(50)  NULL,
    [Bonus] nvarchar(70)  NULL,
    [Gender] nvarchar(50)  NULL,
    [Date_of_registration] datetime  NULL,
    [Photo] varbinary(max)  NULL,
    [Id_tag] int  NULL
);
GO

-- Creating table 'Department'
CREATE TABLE [dbo].[Department] (
    [id] int  NOT NULL,
    [name] nvarchar(50)  NULL
);
GO

-- Creating table 'employees'
CREATE TABLE [dbo].[employees] (
    [id] int  NOT NULL,
    [Lname] nvarchar(50)  NULL,
    [Fname] nvarchar(50)  NULL,
    [Mname] nvarchar(50)  NULL,
    [Passport_SaN] nvarchar(50)  NULL,
    [Id_department] int  NULL,
    [gender] nvarchar(50)  NULL,
    [Salary] nvarchar(50)  NULL,
    [Bday] datetime  NULL,
    [Position] nvarchar(50)  NULL
);
GO

-- Creating table 'Employees_Services'
CREATE TABLE [dbo].[Employees_Services] (
    [id] int  NOT NULL,
    [id_Employes] int  NULL,
    [id_Services_Customers] int  NULL
);
GO

-- Creating table 'History_of_pay'
CREATE TABLE [dbo].[History_of_pay] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Date_of_pay] datetime  NULL,
    [Id_product] int  NULL,
    [Count] int  NULL,
    [Id_Service_Customer] int  NULL
);
GO

-- Creating table 'Manufacturer'
CREATE TABLE [dbo].[Manufacturer] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(50)  NULL,
    [Date_start] datetime  NULL
);
GO

-- Creating table 'Product'
CREATE TABLE [dbo].[Product] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(50)  NULL,
    [Category] nvarchar(50)  NULL,
    [Price] decimal(19,4)  NULL,
    [Description] nvarchar(50)  NULL,
    [Weight] float  NULL,
    [Size_Width] float  NULL,
    [Size_Height] float  NULL,
    [Size_Length] float  NULL,
    [Id_Manufacturer] int  NULL,
    [Image] varbinary(max)  NULL,
    [Id_Topicality] int  NULL
);
GO

-- Creating table 'services'
CREATE TABLE [dbo].[services] (
    [id] int  NOT NULL,
    [Name] nvarchar(50)  NULL,
    [Description] nvarchar(50)  NULL,
    [Price] decimal(19,4)  NULL,
    [Discount] nvarchar(50)  NULL,
    [Time] time  NULL,
    [image] varbinary(max)  NULL
);
GO

-- Creating table 'Services_Customers'
CREATE TABLE [dbo].[Services_Customers] (
    [id] int  NOT NULL,
    [Id_customers] int  NULL,
    [Id_additional_services] int  NULL,
    [Date_start] datetime  NULL,
    [Comment] nvarchar(50)  NULL
);
GO

-- Creating table 'sysdiagrams'
CREATE TABLE [dbo].[sysdiagrams] (
    [name] nvarchar(128)  NOT NULL,
    [principal_id] int  NOT NULL,
    [diagram_id] int IDENTITY(1,1) NOT NULL,
    [version] int  NULL,
    [definition] varbinary(max)  NULL
);
GO

-- Creating table 'Tag'
CREATE TABLE [dbo].[Tag] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(50)  NULL,
    [Colour] nvarchar(50)  NULL
);
GO

-- Creating table 'Topicality'
CREATE TABLE [dbo].[Topicality] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(50)  NULL,
    [Flag] nvarchar(50)  NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [id] in table 'additional_services'
ALTER TABLE [dbo].[additional_services]
ADD CONSTRAINT [PK_additional_services]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- Creating primary key on [Id] in table 'Customer'
ALTER TABLE [dbo].[Customer]
ADD CONSTRAINT [PK_Customer]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [id] in table 'Department'
ALTER TABLE [dbo].[Department]
ADD CONSTRAINT [PK_Department]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- Creating primary key on [id] in table 'employees'
ALTER TABLE [dbo].[employees]
ADD CONSTRAINT [PK_employees]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- Creating primary key on [id] in table 'Employees_Services'
ALTER TABLE [dbo].[Employees_Services]
ADD CONSTRAINT [PK_Employees_Services]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- Creating primary key on [Id] in table 'History_of_pay'
ALTER TABLE [dbo].[History_of_pay]
ADD CONSTRAINT [PK_History_of_pay]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Manufacturer'
ALTER TABLE [dbo].[Manufacturer]
ADD CONSTRAINT [PK_Manufacturer]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Product'
ALTER TABLE [dbo].[Product]
ADD CONSTRAINT [PK_Product]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [id] in table 'services'
ALTER TABLE [dbo].[services]
ADD CONSTRAINT [PK_services]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- Creating primary key on [id] in table 'Services_Customers'
ALTER TABLE [dbo].[Services_Customers]
ADD CONSTRAINT [PK_Services_Customers]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- Creating primary key on [diagram_id] in table 'sysdiagrams'
ALTER TABLE [dbo].[sysdiagrams]
ADD CONSTRAINT [PK_sysdiagrams]
    PRIMARY KEY CLUSTERED ([diagram_id] ASC);
GO

-- Creating primary key on [Id] in table 'Tag'
ALTER TABLE [dbo].[Tag]
ADD CONSTRAINT [PK_Tag]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Topicality'
ALTER TABLE [dbo].[Topicality]
ADD CONSTRAINT [PK_Topicality]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [id_sevices] in table 'additional_services'
ALTER TABLE [dbo].[additional_services]
ADD CONSTRAINT [FK_additional_services_services]
    FOREIGN KEY ([id_sevices])
    REFERENCES [dbo].[services]
        ([id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_additional_services_services'
CREATE INDEX [IX_FK_additional_services_services]
ON [dbo].[additional_services]
    ([id_sevices]);
GO

-- Creating foreign key on [Id_additional_services] in table 'Services_Customers'
ALTER TABLE [dbo].[Services_Customers]
ADD CONSTRAINT [FK_Services_Customers_additional_services]
    FOREIGN KEY ([Id_additional_services])
    REFERENCES [dbo].[additional_services]
        ([id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Services_Customers_additional_services'
CREATE INDEX [IX_FK_Services_Customers_additional_services]
ON [dbo].[Services_Customers]
    ([Id_additional_services]);
GO

-- Creating foreign key on [Id_tag] in table 'Customer'
ALTER TABLE [dbo].[Customer]
ADD CONSTRAINT [FK_Customer_Tag]
    FOREIGN KEY ([Id_tag])
    REFERENCES [dbo].[Tag]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Customer_Tag'
CREATE INDEX [IX_FK_Customer_Tag]
ON [dbo].[Customer]
    ([Id_tag]);
GO

-- Creating foreign key on [Id_customers] in table 'Services_Customers'
ALTER TABLE [dbo].[Services_Customers]
ADD CONSTRAINT [FK_Services_Customers_Customer]
    FOREIGN KEY ([Id_customers])
    REFERENCES [dbo].[Customer]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Services_Customers_Customer'
CREATE INDEX [IX_FK_Services_Customers_Customer]
ON [dbo].[Services_Customers]
    ([Id_customers]);
GO

-- Creating foreign key on [Id_department] in table 'employees'
ALTER TABLE [dbo].[employees]
ADD CONSTRAINT [FK_employees_Department]
    FOREIGN KEY ([Id_department])
    REFERENCES [dbo].[Department]
        ([id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_employees_Department'
CREATE INDEX [IX_FK_employees_Department]
ON [dbo].[employees]
    ([Id_department]);
GO

-- Creating foreign key on [id_Employes] in table 'Employees_Services'
ALTER TABLE [dbo].[Employees_Services]
ADD CONSTRAINT [FK_Employees_Services_employees]
    FOREIGN KEY ([id_Employes])
    REFERENCES [dbo].[employees]
        ([id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Employees_Services_employees'
CREATE INDEX [IX_FK_Employees_Services_employees]
ON [dbo].[Employees_Services]
    ([id_Employes]);
GO

-- Creating foreign key on [id_Services_Customers] in table 'Employees_Services'
ALTER TABLE [dbo].[Employees_Services]
ADD CONSTRAINT [FK_Employees_Services_Services_Customers]
    FOREIGN KEY ([id_Services_Customers])
    REFERENCES [dbo].[Services_Customers]
        ([id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Employees_Services_Services_Customers'
CREATE INDEX [IX_FK_Employees_Services_Services_Customers]
ON [dbo].[Employees_Services]
    ([id_Services_Customers]);
GO

-- Creating foreign key on [Id_product] in table 'History_of_pay'
ALTER TABLE [dbo].[History_of_pay]
ADD CONSTRAINT [FK_History_of_pay_Product]
    FOREIGN KEY ([Id_product])
    REFERENCES [dbo].[Product]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_History_of_pay_Product'
CREATE INDEX [IX_FK_History_of_pay_Product]
ON [dbo].[History_of_pay]
    ([Id_product]);
GO

-- Creating foreign key on [Id_Service_Customer] in table 'History_of_pay'
ALTER TABLE [dbo].[History_of_pay]
ADD CONSTRAINT [FK_History_of_pay_Services_Customers]
    FOREIGN KEY ([Id_Service_Customer])
    REFERENCES [dbo].[Services_Customers]
        ([id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_History_of_pay_Services_Customers'
CREATE INDEX [IX_FK_History_of_pay_Services_Customers]
ON [dbo].[History_of_pay]
    ([Id_Service_Customer]);
GO

-- Creating foreign key on [Id_Manufacturer] in table 'Product'
ALTER TABLE [dbo].[Product]
ADD CONSTRAINT [FK_Product_Manufacturer]
    FOREIGN KEY ([Id_Manufacturer])
    REFERENCES [dbo].[Manufacturer]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Product_Manufacturer'
CREATE INDEX [IX_FK_Product_Manufacturer]
ON [dbo].[Product]
    ([Id_Manufacturer]);
GO

-- Creating foreign key on [Id_Topicality] in table 'Product'
ALTER TABLE [dbo].[Product]
ADD CONSTRAINT [FK_Product_Topicality]
    FOREIGN KEY ([Id_Topicality])
    REFERENCES [dbo].[Topicality]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Product_Topicality'
CREATE INDEX [IX_FK_Product_Topicality]
ON [dbo].[Product]
    ([Id_Topicality]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------