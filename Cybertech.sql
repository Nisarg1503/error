
/* Object: Table [dbo].[CompAssec] */
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CompAssec](
	[AssecID] [int] IDENTITY (100, 1) NOT NULL,
	[AssecName] [varchar](100) NOT NULL,
 CONSTRAINT [PK_CompAssec] PRIMARY KEY CLUSTERED 
(
	[AssecID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF



/* Object: Table [dbo].[MiceKeyboard] */
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MiceKeyboard](
	[MKID] [int] IDENTITY (100, 1) NOT NULL,
	[AssecID] [int] NOT NULL,
	[MKName] [varchar](150) NOT NULL,
	[MKDesc] [varchar](500) NOT NULL,
	[Price] [decimal](6,2) NOT NULL,
 CONSTRAINT [PK_MiceKeyboard] PRIMARY KEY CLUSTERED 
(
	[MKID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO

/* Object: Table [dbo].[Software] */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Software](
	[SoftwareID] [int] IDENTITY (1, 1) NOT NULL,
	[AssecID] [int] NOT NULL,
	[SoftwareName] [varchar](150) NOT NULL,
	[SoftwareDesc] [varchar](500) NOT NULL,
	[Price] [decimal](6,2) NOT NULL,
 CONSTRAINT [PK_Software] PRIMARY KEY CLUSTERED 
(
	[SoftwareID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO

/* Object: Table [dbo].[Devices] */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Devices](
	[DeviceID] [int] IDENTITY (1, 1) NOT NULL,
	[AssecID] [int] NOT NULL,
	[DeviceName] [varchar](150) NOT NULL,
	[DeviceDesc] [varchar](500) NOT NULL,
	[Price] [decimal](6,2) NOT NULL,
 CONSTRAINT [PK_Devices] PRIMARY KEY CLUSTERED 
(
	[DeviceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO


/* Object: Table [dbo].[PrintandScan] */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PrintandScan](
	[PSID] [int] IDENTITY (1, 1) NOT NULL,
	[AssecID] [int] NOT NULL,
	[PSName] [varchar](150) NOT NULL,
	[PSDesc] [varchar](500) NOT NULL,
	[Price] [decimal](6,2) NOT NULL,
 CONSTRAINT [PK_PrintandScan] PRIMARY KEY CLUSTERED 
(
	[PSID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO

/* Object: Table [dbo].[TabletAssec] */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TabletAssec](
	[TabletAssecID] [int] IDENTITY (1, 1) NOT NULL,
	[AssecID] [int] NOT NULL,
	[TabletAssecName] [varchar](150) NOT NULL,
	[TabletAssecDesc] [varchar](500) NOT NULL,
	[Price] [decimal](6,2) NOT NULL,
 CONSTRAINT [PK_TabletAssec] PRIMARY KEY CLUSTERED 
(
	[TabletAssecID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO


ALTER TABLE MiceKeyboard
ADD CONSTRAINT FK_MiceKeyboard_AssecID FOREIGN KEY (AssecID) REFERENCES CompAssec(AssecID)

ALTER TABLE Software
ADD CONSTRAINT FK_Software_AssecID FOREIGN KEY (AssecID) REFERENCES CompAssec(AssecID)

ALTER TABLE Devices
ADD CONSTRAINT FK_Devices_AssecID FOREIGN KEY (AssecID) REFERENCES CompAssec(AssecID)

ALTER TABLE PrintandScan
ADD CONSTRAINT FK_PrintandScan_AssecID FOREIGN KEY (AssecID) REFERENCES CompAssec(AssecID)

ALTER TABLE TabletAssec
ADD CONSTRAINT FK_TabletAssec_AssecID FOREIGN KEY (AssecID) REFERENCES CompAssec(AssecID)

--CompAssec
INSERT INTO CompAssec (AssecName)
VALUES ('Mice and Keyboard')

INSERT INTO CompAssec (AssecName)
VALUES ('Softwares')

INSERT INTO CompAssec (AssecName)
VALUES ('Devices')

INSERT INTO CompAssec (AssecName)
VALUES ('Printers and Scanners')

INSERT INTO CompAssec (AssecName)
VALUES ('Tablet Accessories')

--MiceKeyboard
INSERT INTO MiceKeyboard (AssecID, MKName, MKDesc, Price)
VALUES (101, 'Logitech M317 Wireless Optical Mobile Mouse', 'Compact, convenient, and comfortable: That is the Logitech M317 mouse in a nutshell. Sporting USB wireless connectivity, the M317 features precise tracking and smooth cursor control for an effortless navigation experience.', 34.99)

INSERT INTO MiceKeyboard (AssecID, MKName, MKDesc, Price)
VALUES (101, 'Microsoft Designer Bluetooth Bluetrack Mouse', 'Using the latest Bluetooth Smart technology, this Microsoft Designer Bluetooth mouse pairs wirelessly to your desktop, laptop, or tablet. It instantly connects without wires or dongles.', $29.99)

INSERT INTO MiceKeyboard (AssecID, MKName, MKDesc, Price)
VALUES (100, 'Microsoft ', 'irelessly to your desktop, laptop, or tablet. It instantly connects without wires or dongles.', $29.99)

INSERT INTO MiceKeyboard (AssecID, MKName, MKDesc, Price)
VALUES (100, 'Microsoft ', 'op, laptop, or tablet. It instantly connects without wires or dongles.', $29.99)


--Software
INSERT INTO Software (AssecID, SoftwareName, SoftwareDesc, Price)
VALUES (102, 'Kaspersky Total Security 2016 - 3 Users - 18 Months', 'Protect your privacy, money, identity, photos, and family against online threats and more, with Kaspersky Total Security. Whether you use your PC, Mac, Android smartphone or tablet, you will enjoy ultimate security, with award-winning technologies that provide rigorous, real-time defense against the latest malware and other threats.', $49.99)

INSERT INTO Software (AssecID, SoftwareName, SoftwareDesc, Price)
VALUES (102, 'McAfee Total Protection 2016 (PC/Mac/Android/iOS) - Unlimited Devices - 1 Year', 'Safeguard your data, identity, and privacy with McAfee Total Protection 2016. This award-winning anti-virus protection can be installed on all your Windows, Android, and iOS devices. Use facial recognition and attributes unique to you to log into your devices, online accounts, and apps.', $89.99)


INSERT INTO Devices (AssecID, DeviceName, DeviceDesc, Price)
VALUES (103, 'Kaspersky Total Security 2016 - 3 Users - 18 Months', 'Protect your privacy, money, identity, photos, and family against online threats and more, with Kaspersky Total Security. Whether you use your PC, Mac, Android smartphone or tablet, you will enjoy ultimate security, with award-winning technologies that provide rigorous, real-time defense against the latest malware and other threats.', $49.99)

INSERT INTO Devices (AssecID, DeviceName, DeviceDesc, Price)
VALUES (103, 'McAfee Total Protection 2016 (PC/Mac/Android/iOS) - Unlimited Devices - 1 Year', 'Safeguard your data, identity, and privacy with McAfee Total Protection 2016. This award-winning anti-virus protection can be installed on all your Windows, Android, and iOS devices. Use facial recognition and attributes unique to you to log into your devices, online accounts, and apps.', $89.99)


INSERT INTO PrintandScan (AssecID, PSName, PSDesc, Price)
VALUES (104, 'Kaspersky Total Security 2016 - 3 Users - 18 Months', 'Protect your privacy, money, identity, photos, and family against online threats and more, with Kaspersky Total Security. Whether you use your PC, Mac, Android smartphone or tablet, you will enjoy ultimate security, with award-winning technologies that provide rigorous, real-time defense against the latest malware and other threats.', $49.99)

INSERT INTO PrintandScan (AssecID, PSName, PSDesc, Price)
VALUES (104, 'McAfee Total Protection 2016 (PC/Mac/Android/iOS) - Unlimited Devices - 1 Year', 'Safeguard your data, identity, and privacy with McAfee Total Protection 2016. This award-winning anti-virus protection can be installed on all your Windows, Android, and iOS devices. Use facial recognition and attributes unique to you to log into your devices, online accounts, and apps.', $89.99)

INSERT INTO TabletAssec (AssecID, TabletAssecName, TabletAssecDesc, Price)
VALUES (104, 'Kaspersky Total Security 2016 - 3 Users - 18 Months', 'Protect your privacy, money, identity, photos, and family against online threats and more, with Kaspersky Total Security. Whether you use your PC, Mac, Android smartphone or tablet, you will enjoy ultimate security, with award-winning technologies that provide rigorous, real-time defense against the latest malware and other threats.', $49.99)

INSERT INTO TabletAssec (AssecID, TabletAssecName, TabletAssecDesc, Price)
VALUES (104, 'McAfee Total Protection 2016 (PC/Mac/Android/iOS) - Unlimited Devices - 1 Year', 'Safeguard your data, identity, and privacy with McAfee Total Protection 2016. This award-winning anti-virus protection can be installed on all your Windows, Android, and iOS devices. Use facial recognition and attributes unique to you to log into your devices, online accounts, and apps.', $89.99)



select * from CompAssec
select * from MiceKeyboard
select * from Software
select * from Devices
select * from PrintandScan
select * from TabletAssec


SELECT CompAssec.AssecID, MiceKeyboard.MKName, MiceKeyboard.MKDesc
FROM MiceKeyboard
LEFT OUTER JOIN CompAssec
ON MiceKeyboard.AssecID='100';


/* Object: Table [dbo].[Product] */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ProductID] [int] IDENTITY (1, 1) NOT NULL,
	[AssecID] [int] NOT NULL,
	[ProductName] [varchar](150) NOT NULL,
	[ProductDesc] [varchar](500) NOT NULL,
	[Price] [decimal](6,2) NOT NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO

ALTER TABLE Product
ADD CONSTRAINT FK_Product_AssecID FOREIGN KEY (AssecID) REFERENCES CompAssec(AssecID)

/* Mouse and Keyboard*/
INSERT INTO Product (AssecID, ProductName, ProductDesc, Price)
VALUES (100, 'Logitech MX Master Wireless Laser Mouse - Black', 'Fly through long webpages and documents with the Logitech MX Master wireless mouse. This high-end mouse is equipped with Darkfield laser tracking for accurate cursor control on a wide variety of surfaces, even glass and other glossy tabletops. The sculpted shape feels natural in your hand, while the thumbwheel makes it easy to scroll side to side.', $109.99)

INSERT INTO Product (AssecID, ProductName, ProductDesc, Price)
VALUES (100, 'Logitech Wireless Optical Mouse (M325) - Black', 'For all your computing, the Logitech M325 wireless mouse is the ideal mix of precision and comfort. It offers a solid connection to the Unifying nano receiver, and features micro-precise scrolling so you can navigate the web more easily.', $39.95)

INSERT INTO Product (AssecID, ProductName, ProductDesc, Price)
VALUES (100, 'Logitech M317 Wireless Optical Mobile Mouse - Perfectly Pewter', 'Compact, convenient, and comfortable: That is the Logitech M317 mouse in a nutshell. Sporting USB wireless connectivity, the M317 features precise tracking and smooth cursor control for an effortless navigation experience. Throw in a compact size, contoured design, and long battery life, and you have got yourself a solid all-around wireless mouse.', $34.95)

INSERT INTO Product (AssecID, ProductName, ProductDesc, Price)
VALUES (100, 'Logitech Bluetooth Optical Mouse (M557)', 'The phenomenal Logitech Bluetooth Mouse M557 is the one mouse you can rely on to work with whichever platform you work on. Connect to any Bluetooth-enabled PC or Mac or Windows 8 tablet-no receiver required.', $49.99)

INSERT INTO Product (AssecID, ProductName, ProductDesc, Price)
VALUES (100, 'Logitech Ultrathin Wireless Optical Touch Mouse (T630) - Black', 'The Logitech Ultrathin Touch Mouse T630 is built to complement todays sleek, sophisticated Ultrabook computers. It features a brushed metallic body with a silky-smooth touch surface, and the thin, lightweight design is incredibly portable so you can take it anywhere.', $74.99)

INSERT INTO Product (AssecID, ProductName, ProductDesc, Price)
VALUES (100, 'Logitech Touch Plus Wireless Keyboard (K400)', 'This Logitech Wireless Touch Plus K400 keyboard lets you experience seamless connectivity between your computer and TV. From the comfort of your couch, you can watch videos, browse the web and chat with friends on the big screen TV. Its design is compact and unobtrusive, so the device can be kept at arm is reach or on the coffee table.', $59.99)

INSERT INTO Product (AssecID, ProductName, ProductDesc, Price)
VALUES (100, 'Microsoft All-In-One Wireless Media Keyboard (N9Z-00002)', 'Navigate your computer or Smart TV with ease using the Microsoft all-in-one keyboard. More than just a standard keyboard, this unit features an integrated trackpad that supports multi-touch gestures like swiping, zooming, dragging, and more. Customizable hotkeys make it quick and easy to access your favourite content.', $49.99)

INSERT INTO Product (AssecID, ProductName, ProductDesc, Price)
VALUES (100, 'Logitech Wireless Keyboard (K360)', 'This compact wireless keyboard lets you type in more comfort with a layout you are used to. It prevents you from hunching over your laptop to type. And it is about 20% smaller than our standard keyboards, so it fits in your office, your living room or wherever you use your computer.', $29.99)

INSERT INTO Product (AssecID, ProductName, ProductDesc, Price)
VALUES (100, 'Final Clearance Logitech Wireless All-in-One Keyboard (K400)', 'The Logitech Wireless Touch Keyboard K400 provides total control when you connect your laptop to your television. It has a 10-meter (33 feet) wireless range so you can click, scroll, and browse from the comfort of your couch, and the large, built-in multi-touch touchpad enables intuitive control and navigation.', $29.97)

INSERT INTO Product (AssecID, ProductName, ProductDesc, Price)
VALUES (100, 'Insignia USB Numeric Keypad (NS-PNK6A01-C)', 'Enjoy both comfort and convenience with this wireless keyboard from Insignia. Equipped with a USB connector for easy plug and play installation, this keyboard sports a space-saving ergonomic design with low profile, quiet soft-touch gently-curved keys. It also features a spill-resistant 18-key USB numeric keypad.', $14.99)

/*Softwares*/
INSERT INTO Product (AssecID, ProductName, ProductDesc, Price)
VALUES (101, 'Kaspersky Total Security 2016 - 3 Users - 18 Months', 'Protect your privacy, money, identity, photos, and family against online threats and more, with Kaspersky Total Security. Whether you use your PC, Mac, Android smartphone or tablet, you will enjoy ultimate security, with award-winning technologies that provide rigorous, real-time defense against the latest malware and other threats.', $49.99)

INSERT INTO Product (AssecID, ProductName, ProductDesc, Price)
VALUES (101, 'McAfee Total Protection 2016 (PC/Mac/Android/iOS) - Unlimited Devices - 1 Year', 'Safeguard your data, identity, and privacy with McAfee Total Protection 2016. This award-winning anti-virus protection can be installed on all your Windows, Android, and iOS devices. Use facial recognition and attributes unique to you to log into your devices, online accounts, and apps.', $89.99)

INSERT INTO Product (AssecID, ProductName, ProductDesc, Price)
VALUES (101, 'Corel PaintShop Pro X8 Ultimate Edition', 'Give your images a "facelift" with the Corel PaintShop Pro X8. This photo editing and design software gives you the tools to quickly edit and enhance pictures, and create visual marvels for posters, scrapbooking, and other projects. Learn as you go with built-in training tools.', $49.99)

INSERT INTO Product (AssecID, ProductName, ProductDesc, Price)
VALUES (101, 'Microsoft Windows 10 Home - English', 'Familiar, productive, flexible, personal: That is Microsoft Windows 10 Home in a nutshell. Combining the strengths of Windows 7 and 8, it offers great new ways to work across multiple devices. Easy to use, it sports faster startups, enhanced built-in security, and advanced features like a state-of-the-art browser designed for online action.', $149.99)

INSERT INTO Product (AssecID, ProductName, ProductDesc, Price)
VALUES (101, 'Microsoft Office 365 Personal (PC/Mac) - 1 User - 1 Year', 'Create your best work with Microsoft Office 365 Personal for PC and Mac. This 1-year subscription lets you install the latest versions of Word, Excel, PowerPoint, OneNote, Outlook, Skype, OneDrive, and more on 1 PC or Mac, 1 tablet, and 1 smartphone. Access your most vital files from anywhere with 1TB of free OneDrive cloud storage.', $69.99)

/* Devices*/
INSERT INTO Product (AssecID, ProductName, ProductDesc, Price)
VALUES (102, 'Leef iBRIDGE 32GB Mobile Memory iOS USB Flash Drive', 'Running out of memory on your iOS device? The Leef iBRIDGE expands the storage capacity of your compatible Apple device giving you the freedom and flexibility to do more. Take your movie or music collections with you on the iBRIDGE, all without using internal memory or data. You can also record video and capture photos directly to the iBRIDGE.', $89.99)

INSERT INTO Product (AssecID, ProductName, ProductDesc, Price)
VALUES (102, 'WD My Passport Ultra 1TB 2.5" USB 3.0 Portable External Hard Drive (WDBGPU0010BBK-NESN)', 'This WD My Passport Ultra hard drive offers security and reliable performance, while giving you a ton of space to store your music, photos, videos, and documents. Sporting a 1TB capacity, it transfers files at lightning-fast USB 3.0 speeds and offers the option to set up a password as an added security measure to keep your precious files safe.', $84.99)

INSERT INTO Product (AssecID, ProductName, ProductDesc, Price)
VALUES (102, 'Transcend 8x Portable External DVD Writer', 'This extra slim portable DVD writer from Transcend is ideal for playing movies, backing up files, and installing software on the go. Sporting a sleek, ultrathin design, this DVD writer makes the perfect companion to your laptop or Ultrabook. It also includes a free CyberLink Media Suite 10 media writing software download for added convenience.', $39.99)

INSERT INTO Product (AssecID, ProductName, ProductDesc, Price)
VALUES (102, 'SYBA USB 2.0 USB Floppy Drive (SY-USB-FDD)', 'This SYBA external USB Floppy Drive supports 3.5" 1.44 MB floppy disks. It can be read and write just by connecting it to a computer. No external power supply is needed for this drive.', $30.99)

INSERT INTO Product (AssecID, ProductName, ProductDesc, Price)
VALUES (102, 'Seagate Personal Cloud 5TB 3.5" 5900RPM External Hard Drive (STCR5000101)', 'Keep your files safe and in one place with this external hard drive from Seagate. With 5TB of space, this hard drive gives you plenty of room to store your valuable documents and multimedia files. The hard drive can also sync with Dropbox, Google Drive, Baidu, and Box cloud services, letting you organize files on a personal cloud.', $279.99)


/* Printers and Scanners*/
INSERT INTO Product (AssecID, ProductName, ProductDesc, Price)
VALUES (103, 'Canon CanoScan LiDE 220 Colour Scanner', 'Make digital keepsakes of your photographs and electronic copies of important documents with the Canon CanoScan LiDE220 Colour Image Scanner. Easy to use and equipped with all the features you need, this scanner helps you work efficiently, scanning, copying, sending to Cloud, or creating PDFs in a snap.', $99.99)

INSERT INTO Product (AssecID, ProductName, ProductDesc, Price)
VALUES (103, 'IRIScan Anywhere 3 Portable Scanner', 'Scan anywhere, anytime with the IRIScan Anywhere 3 WiFi portable scanner. Ideal for scanning anything from business cards to contracts, this scanner saves your digital files to the included microSD card and wirelessly sends documents to your computer, smartphone, or tablet. The included OCR software turns your scans into editable digital documents.', $149.99)

INSERT INTO Product (AssecID, ProductName, ProductDesc, Price)
VALUES (103, 'HP LaserJet Pro Monochrome All-In-One Laser Printer With Fax', 'Ideal for the home or small office, the HP LaserJet Pro MFP M127fn printer can handle all your needs from one machine. This cost-effective, Ethernet-connected multifunction printer makes it easy to print, copy, scan, and fax professional-quality documents.', $209.99)

INSERT INTO Product (AssecID, ProductName, ProductDesc, Price)
VALUES (103, 'Lexmark MarkNet N8352 802.11b/g/n Wireless Print Server Kit', 'Lexmark MarkNet N8352 802.11b/g/n Wireless Print Server Kit - Wi-Fi - IEEE 802.11n - USB - External', $68.00)

INSERT INTO Product (AssecID, ProductName, ProductDesc, Price)
VALUES (103, 'Canon PIXMA Wireless All-In-One Inkjet Printer', 'Print, scan, copy, and enjoy the convenience of wireless connectivity with the PIXMA MG2929 wireless inkjet all-in-one printer. Print from your smartphone or tablet using your wireless home network, even from cloud services like Dropbox and Evernote. It uses a hybrid print system for vivid colours and sharp black text.', $39.99)


/* Tablet Accessories*/
INSERT INTO Product (AssecID, ProductName, ProductDesc, Price)
VALUES (104, 'Microsoft Surface Pro 4 Type Cover', 'Experience Microsoft s most advanced keyboard for the Surface family with this innovative Type Cover. Compatible with the Surface Pro 4, this next generation Type Cover feels and performs like a traditional laptop keyboard with a full QWERTY layout, dedicated shortcut buttons, and ultra-responsive touchpad.', $169.99)

INSERT INTO Product (AssecID, ProductName, ProductDesc, Price)
VALUES (104, 'Apple iPad Pro 9.7" Smart Keyboard', 'The Smart Keyboard combines an array of new technologies and materials to create a keyboard like no other. Fully portable, it connects to iPad Pro easily, with no batteries required. It also folds neatly into a light, durable cover for outstanding protection.', $199.99)

INSERT INTO Product (AssecID, ProductName, ProductDesc, Price)
VALUES (104, 'Insignia 10400mAh Portable Charger', 'Charge up to 3 devices simultaneously with this Insignia mobile battery. It features adjustment technology that intelligently identifies your device to deliver the fastest possible charge.', $59.99)

INSERT INTO Product (AssecID, ProductName, ProductDesc, Price)
VALUES (104, 'Samsung Galaxy Tab E 9.6" Folio Case', 'Keep your Galaxy Tab E 9.6" looking top-notch with this Samsung cover case. It snaps securely to the device to provide you with sturdy, durable protection for the tablets screen. The ultraslim, lightweight cover blends in seamlessly with the sleek, premium design of the Galaxy Tab E without adding bulk or weight.', $59.99)

INSERT INTO Product (AssecID, ProductName, ProductDesc, Price)
VALUES (104, 'Belkin iPad Air 1/2 & iPad Pro 9.7" Folio Case', 'Keep your iPad Air or iPad Pro 9.7" tablet protected without compromising on style. This Belkin twin stripe tablet case is made with durable, lightweight material. It preserves the slim form factor of your tablet while providing protection and a non-slip grip. An integrated stand makes it easy to find a comfortable viewing or typing angle.', $49.99)

INSERT INTO Product (AssecID, ProductName, ProductDesc, Price)
VALUES (104, 'OtterBox Defender iPad mini 4 Rugged Case', 'Maintain your iPad is aura of sleek perfection with this mighty case from OtterBox. This multi-layered case combines a rubber, foam, and polycarbonate construction to help protect your phone from both scratches and minor impacts. A built-in screen protector guards against nasty nicks and port plugs keep out dust and dirt.', $89.99)

INSERT INTO Product (AssecID, ProductName, ProductDesc, Price)
VALUES (104, 'Exian Tempered Glass iPad Mini Front Screen Protector', 'The screen on your iPad mini will continue to look brand new with this tempered glass screen protector from Exian. This screen protector protects your screen from scratches and mimics your screen is natural feel so you dont lose any touch sensitivity. It is also easy to apply with no extra tools required.', $34.99)


select * from CompAssec
select * from Product

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Cart](
	[RecordId] [int] IDENTITY(1,1) NOT NULL,
	[CartId] [varchar](50) NOT NULL,
	[AlbumId] [int] NOT NULL,
	[Count] [int] NOT NULL,
	[DateCreated] [datetime] NOT NULL,
 CONSTRAINT [PK_Cart] PRIMARY KEY CLUSTERED 
(
	[RecordId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[OrderId] [int] IDENTITY(1,1) NOT NULL,
	[OrderDate] [datetime] NOT NULL,
	[Username] [nvarchar](256) NULL,
	[FirstName] [nvarchar](160) NULL,
	[LastName] [nvarchar](160) NULL,
	[Address] [nvarchar](70) NULL,
	[City] [nvarchar](40) NULL,
	[State] [nvarchar](40) NULL,
	[PostalCode] [nvarchar](10) NULL,
	[Country] [nvarchar](40) NULL,
	[Phone] [nvarchar](24) NULL,
	[Email] [nvarchar](160) NULL,
	[Total] [numeric](10, 2) NOT NULL,
 CONSTRAINT [PK__Invoice__D796AAB51A14E395] PRIMARY KEY CLUSTERED 
(
	[OrderId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IPK_Invoice] ON [dbo].[Order] 
(
	[OrderId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[OrderDetailId] [int] IDENTITY(1,1) NOT NULL,
	[OrderId] [int] NOT NULL,
	[AlbumId] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[UnitPrice] [numeric](10, 2) NOT NULL,
 CONSTRAINT [PK__InvoiceL__0D760AD91DE57479] PRIMARY KEY CLUSTERED 
(
	[OrderDetailId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IFK_Invoice_InvoiceLine] ON [dbo].[OrderDetail] 
(
	[OrderId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IPK_InvoiceLine] ON [dbo].[OrderDetail] 
(
	[OrderDetailId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO



