/*==============================================================*/
/* DBMS name:      Microsoft SQL Server 2008                    */
/* Created on:     2016/7/2 6:47:34                             */
/*==============================================================*/


if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('�����') and o.name = 'FK_�����_ȷ������_���')
alter table �����
   drop constraint FK_�����_ȷ������_���
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('���ܱ�') and o.name = 'FK_���ܱ�_Ѱ�ù�ϵ_�����')
alter table ���ܱ�
   drop constraint FK_���ܱ�_Ѱ�ù�ϵ_�����
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('�û���') and o.name = 'FK_�û���_��Ӧ�����ϵ_�û�Ȩ�ر�')
alter table �û���
   drop constraint FK_�û���_��Ӧ�����ϵ_�û�Ȩ�ر�
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('���ֱ�') and o.name = 'FK_���ֱ�_������ϵ_������Ŀ��')
alter table ���ֱ�
   drop constraint FK_���ֱ�_������ϵ_������Ŀ��
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('���ֱ�') and o.name = 'FK_���ֱ�_��Ӧ��ϵ_�����')
alter table ���ֱ�
   drop constraint FK_���ֱ�_��Ӧ��ϵ_�����
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('���ֱ�') and o.name = 'FK_���ֱ�_�û�����_�û���')
alter table ���ֱ�
   drop constraint FK_���ֱ�_�û�����_�û���
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('�����')
            and   name  = 'ȷ������_FK'
            and   indid > 0
            and   indid < 255)
   drop index �����.ȷ������_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('�����')
            and   type = 'U')
   drop table �����
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('���ܱ�')
            and   name  = 'Ѱ�ù�ϵ_FK'
            and   indid > 0
            and   indid < 255)
   drop index ���ܱ�.Ѱ�ù�ϵ_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('���ܱ�')
            and   type = 'U')
   drop table ���ܱ�
go

if exists (select 1
            from  sysobjects
           where  id = object_id('���')
            and   type = 'U')
   drop table ���
go

if exists (select 1
            from  sysobjects
           where  id = object_id('�û�Ȩ�ر�')
            and   type = 'U')
   drop table �û�Ȩ�ر�
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('�û���')
            and   name  = '��Ӧ�����ϵ_FK'
            and   indid > 0
            and   indid < 255)
   drop index �û���.��Ӧ�����ϵ_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('�û���')
            and   type = 'U')
   drop table �û���
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('���ֱ�')
            and   name  = '��Ӧ��ϵ_FK'
            and   indid > 0
            and   indid < 255)
   drop index ���ֱ�.��Ӧ��ϵ_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('���ֱ�')
            and   name  = '������ϵ_FK'
            and   indid > 0
            and   indid < 255)
   drop index ���ֱ�.������ϵ_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('���ֱ�')
            and   name  = '�û�����_FK'
            and   indid > 0
            and   indid < 255)
   drop index ���ֱ�.�û�����_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('���ֱ�')
            and   type = 'U')
   drop table ���ֱ�
go

if exists (select 1
            from  sysobjects
           where  id = object_id('������Ŀ��')
            and   type = 'U')
   drop table ������Ŀ��
go

/*==============================================================*/
/* Table: �����                                                   */
/*==============================================================*/
create table ����� (
   DID                  int                  not null,
   AID                  int                  null,
   PartnerName          varchar(20)          not null,
   Project              char(50)             not null,
   constraint PK_����� primary key nonclustered (DID)
)
go

/*==============================================================*/
/* Index: ȷ������_FK                                               */
/*==============================================================*/
create index ȷ������_FK on ����� (
AID ASC
)
go

/*==============================================================*/
/* Table: ���ܱ�                                                   */
/*==============================================================*/
create table ���ܱ� (
   SID                  int                  not null,
   DID                  int                  null,
   SValue               real                 not null,
   constraint PK_���ܱ� primary key nonclustered (SID)
)
go

/*==============================================================*/
/* Index: Ѱ�ù�ϵ_FK                                               */
/*==============================================================*/
create index Ѱ�ù�ϵ_FK on ���ܱ� (
DID ASC
)
go

/*==============================================================*/
/* Table: ���                                                   */
/*==============================================================*/
create table ��� (
   AName                varchar(20)          not null,
   ADate                datetime             not null,
   AID                  int                  not null,
   Place                varchar(20)          not null,
   constraint PK_��� primary key nonclustered (AID)
)
go

/*==============================================================*/
/* Table: �û�Ȩ�ر�                                                 */
/*==============================================================*/
create table �û�Ȩ�ر� (
   URID                 int                  not null,
   RoleName             varchar(20)          not null,
   UWeight              real                 not null,
   constraint PK_�û�Ȩ�ر� primary key nonclustered (URID)
)
go

/*==============================================================*/
/* Table: �û���                                                   */
/*==============================================================*/
create table �û��� (
   CID                  int                  not null,
   URID                 int                  null,
   Name                 varchar(20)          not null,
   Pwd                  varchar(20)          not null,
   Note                 varchar(20)          not null,
   Sex                  varchar(20)          not null,
   constraint PK_�û��� primary key nonclustered (CID)
)
go

/*==============================================================*/
/* Index: ��Ӧ�����ϵ_FK                                             */
/*==============================================================*/
create index ��Ӧ�����ϵ_FK on �û��� (
URID ASC
)
go

/*==============================================================*/
/* Table: ���ֱ�                                                   */
/*==============================================================*/
create table ���ֱ� (
   Date                 datetime             not null,
   ID                   int                  not null,
   CID                  int                  null,
   DID                  int                  null,
   PID                  int                  null,
   Value                real                 not null,
   Flag                 varchar(20)          not null,
   constraint PK_���ֱ� primary key nonclustered (ID)
)
go

/*==============================================================*/
/* Index: �û�����_FK                                               */
/*==============================================================*/
create index �û�����_FK on ���ֱ� (
CID ASC
)
go

/*==============================================================*/
/* Index: ������ϵ_FK                                               */
/*==============================================================*/
create index ������ϵ_FK on ���ֱ� (
PID ASC
)
go

/*==============================================================*/
/* Index: ��Ӧ��ϵ_FK                                               */
/*==============================================================*/
create index ��Ӧ��ϵ_FK on ���ֱ� (
DID ASC
)
go

/*==============================================================*/
/* Table: ������Ŀ��                                                 */
/*==============================================================*/
create table ������Ŀ�� (
   PID                  int                  not null,
   Itemize              varchar(40)          not null,
   MaxScore             real                 not null,
   MinScore             real                 not null,
   PWeight              real                 not null,
   constraint PK_������Ŀ�� primary key nonclustered (PID)
)
go

alter table �����
   add constraint FK_�����_ȷ������_��� foreign key (AID)
      references ��� (AID)
go

alter table ���ܱ�
   add constraint FK_���ܱ�_Ѱ�ù�ϵ_����� foreign key (DID)
      references ����� (DID)
go

alter table �û���
   add constraint FK_�û���_��Ӧ�����ϵ_�û�Ȩ�ر� foreign key (URID)
      references �û�Ȩ�ر� (URID)
go

alter table ���ֱ�
   add constraint FK_���ֱ�_������ϵ_������Ŀ�� foreign key (PID)
      references ������Ŀ�� (PID)
go

alter table ���ֱ�
   add constraint FK_���ֱ�_��Ӧ��ϵ_����� foreign key (DID)
      references ����� (DID)
go

alter table ���ֱ�
   add constraint FK_���ֱ�_�û�����_�û��� foreign key (CID)
      references �û��� (CID)
go

