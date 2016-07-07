/*==============================================================*/
/* DBMS name:      Microsoft SQL Server 2008                    */
/* Created on:     2016/7/3 20:42:33                            */
/*==============================================================*/


if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('分组表') and o.name = 'FK_分组表_确定分组_活动表')
alter table 分组表
   drop constraint FK_分组表_确定分组_活动表
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('分组表') and o.name = 'FK_分组表_管理_管理员表')
alter table 分组表
   drop constraint FK_分组表_管理_管理员表
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('汇总表') and o.name = 'FK_汇总表_寻访关系_分组表')
alter table 汇总表
   drop constraint FK_汇总表_寻访关系_分组表
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('用户表') and o.name = 'FK_用户表_对应补充关系_用户权重表')
alter table 用户表
   drop constraint FK_用户表_对应补充关系_用户权重表
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('评分表') and o.name = 'FK_评分表_依赖关系_评分项目表')
alter table 评分表
   drop constraint FK_评分表_依赖关系_评分项目表
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('评分表') and o.name = 'FK_评分表_对应关系_分组表')
alter table 评分表
   drop constraint FK_评分表_对应关系_分组表
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('评分表') and o.name = 'FK_评分表_用户评分_用户表')
alter table 评分表
   drop constraint FK_评分表_用户评分_用户表
go

if exists (select 1
            from  sysobjects
           where  id = object_id('传值表')
            and   type = 'U')
   drop table 传值表
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('分组表')
            and   name  = '管理_FK'
            and   indid > 0
            and   indid < 255)
   drop index 分组表.管理_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('分组表')
            and   name  = '确定分组_FK'
            and   indid > 0
            and   indid < 255)
   drop index 分组表.确定分组_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('分组表')
            and   type = 'U')
   drop table 分组表
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('汇总表')
            and   name  = '寻访关系_FK'
            and   indid > 0
            and   indid < 255)
   drop index 汇总表.寻访关系_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('汇总表')
            and   type = 'U')
   drop table 汇总表
go

if exists (select 1
            from  sysobjects
           where  id = object_id('活动表')
            and   type = 'U')
   drop table 活动表
go

if exists (select 1
            from  sysobjects
           where  id = object_id('用户权重表')
            and   type = 'U')
   drop table 用户权重表
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('用户表')
            and   name  = '对应补充关系_FK'
            and   indid > 0
            and   indid < 255)
   drop index 用户表.对应补充关系_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('用户表')
            and   type = 'U')
   drop table 用户表
go

if exists (select 1
            from  sysobjects
           where  id = object_id('管理员表')
            and   type = 'U')
   drop table 管理员表
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('评分表')
            and   name  = '对应关系_FK'
            and   indid > 0
            and   indid < 255)
   drop index 评分表.对应关系_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('评分表')
            and   name  = '依赖关系_FK'
            and   indid > 0
            and   indid < 255)
   drop index 评分表.依赖关系_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('评分表')
            and   name  = '用户评分_FK'
            and   indid > 0
            and   indid < 255)
   drop index 评分表.用户评分_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('评分表')
            and   type = 'U')
   drop table 评分表
go

if exists (select 1
            from  sysobjects
           where  id = object_id('评分项目表')
            and   type = 'U')
   drop table 评分项目表
go

/*==============================================================*/
/* Table: 传值表                                                   */
/*==============================================================*/
create table 传值表 (
   TransID              nvarchar(20)         not null,
   TransProName         varchar(50)          not null,
   constraint PK_传值表 primary key nonclustered (TransID)
)
go

/*==============================================================*/
/* Table: 分组表                                                   */
/*==============================================================*/
create table 分组表 (
   DID                  int                  not null,
   AdminID              varchar(30)          null,
   AID                  int                  null,
   PartnerName          varchar(20)          not null,
   Project              char(50)             not null,
   constraint PK_分组表 primary key nonclustered (DID)
)
go

/*==============================================================*/
/* Index: 确定分组_FK                                               */
/*==============================================================*/
create index 确定分组_FK on 分组表 (
AID ASC
)
go

/*==============================================================*/
/* Index: 管理_FK                                                 */
/*==============================================================*/
create index 管理_FK on 分组表 (
AdminID ASC
)
go

/*==============================================================*/
/* Table: 汇总表                                                   */
/*==============================================================*/
create table 汇总表 (
   SID                  int                  not null,
   DID                  int                  null,
   SValue               real                 not null,
   constraint PK_汇总表 primary key nonclustered (SID)
)
go

/*==============================================================*/
/* Index: 寻访关系_FK                                               */
/*==============================================================*/
create index 寻访关系_FK on 汇总表 (
DID ASC
)
go

/*==============================================================*/
/* Table: 活动表                                                   */
/*==============================================================*/
create table 活动表 (
   AName                varchar(20)          not null,
   ADate                datetime             not null,
   AID                  int                  not null,
   Place                varchar(20)          not null,
   constraint PK_活动表 primary key nonclustered (AID)
)
go

/*==============================================================*/
/* Table: 用户权重表                                                 */
/*==============================================================*/
create table 用户权重表 (
   URID                 int                  not null,
   RoleName             varchar(20)          not null,
   UWeight              real                 not null,
   constraint PK_用户权重表 primary key nonclustered (URID)
)
go

/*==============================================================*/
/* Table: 用户表                                                   */
/*==============================================================*/
create table 用户表 (
   CID                  int                  not null,
   URID                 int                  null,
   Name                 varchar(20)          not null,
   Pwd                  varchar(20)          not null,
   Note                 varchar(20)          not null,
   Sex                  varchar(20)          not null,
   constraint PK_用户表 primary key nonclustered (CID)
)
go

/*==============================================================*/
/* Index: 对应补充关系_FK                                             */
/*==============================================================*/
create index 对应补充关系_FK on 用户表 (
URID ASC
)
go

/*==============================================================*/
/* Table: 管理员表                                                  */
/*==============================================================*/
create table 管理员表 (
   AdminID              varchar(30)          not null,
   AdminPwd             varchar(30)          not null,
   constraint PK_管理员表 primary key nonclustered (AdminID)
)
go

/*==============================================================*/
/* Table: 评分表                                                   */
/*==============================================================*/
create table 评分表 (
   Date                 datetime             not null,
   ID                   int                  not null,
   CID                  int                  null,
   DID                  int                  null,
   PID                  int                  null,
   Value                real                 not null,
   Flag                 varchar(20)          not null,
   constraint PK_评分表 primary key nonclustered (ID)
)
go

/*==============================================================*/
/* Index: 用户评分_FK                                               */
/*==============================================================*/
create index 用户评分_FK on 评分表 (
CID ASC
)
go

/*==============================================================*/
/* Index: 依赖关系_FK                                               */
/*==============================================================*/
create index 依赖关系_FK on 评分表 (
PID ASC
)
go

/*==============================================================*/
/* Index: 对应关系_FK                                               */
/*==============================================================*/
create index 对应关系_FK on 评分表 (
DID ASC
)
go

/*==============================================================*/
/* Table: 评分项目表                                                 */
/*==============================================================*/
create table 评分项目表 (
   PID                  int                  not null,
   Itemize              varchar(40)          not null,
   MaxScore             real                 not null,
   MinScore             real                 not null,
   PWeight              real                 not null,
   constraint PK_评分项目表 primary key nonclustered (PID)
)
go

alter table 分组表
   add constraint FK_分组表_确定分组_活动表 foreign key (AID)
      references 活动表 (AID)
go

alter table 分组表
   add constraint FK_分组表_管理_管理员表 foreign key (AdminID)
      references 管理员表 (AdminID)
go

alter table 汇总表
   add constraint FK_汇总表_寻访关系_分组表 foreign key (DID)
      references 分组表 (DID)
go

alter table 用户表
   add constraint FK_用户表_对应补充关系_用户权重表 foreign key (URID)
      references 用户权重表 (URID)
go

alter table 评分表
   add constraint FK_评分表_依赖关系_评分项目表 foreign key (PID)
      references 评分项目表 (PID)
go

alter table 评分表
   add constraint FK_评分表_对应关系_分组表 foreign key (DID)
      references 分组表 (DID)
go

alter table 评分表
   add constraint FK_评分表_用户评分_用户表 foreign key (CID)
      references 用户表 (CID)
go

