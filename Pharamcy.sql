create table Doctor
(
phy_ssn varchar(10),
speciality varchar(30) not null,
name varchar(25) not null,
exp_year int,
constraint PHY_SSN_PK primary key (phy_ssn)
)
create table Patient
(
ssn varchar(10),
phy_ssn varchar(10),
age tinyint,
name varchar(25) not null,
address varchar(30),
constraint SSN_PK primary key (ssn),
constraint Patient_Doctor_FK foreign key (phy_ssn) references Doctor
)

create table  pharmaceutical_company
(
name varchar(30),
address varchar(20) not null,
phone_number varchar(20) not null,
constraint NAME_PK primary key (name)
)
create table Drug
(
trade_name varchar(25),
Cname varchar(30),
constraint D_PK primary key(trade_name,Cname),
constraint DP_S foreign key (Cname) references pharmaceutical_company
) 

create table Pharmacy
(
name varchar(20),
address varchar(20) not null,
phone_number varchar(20) not null,
constraint pharma_PK primary key (name)
)

create table Contract
(
name varchar(20),
Cname varchar(30),
start_date date,
end_date date,
text varchar(15),
supervisor varchar(15),
constraint PN_PK primary key(name,Cname),
constraint NAME_P foreign key (name) references Pharmacy,
constraint P_N foreign key(Cname)references pharmaceutical_company
);

create table Sell
(
trade_name varchar(25),
name varchar(20),
Cname varchar(30),
price int,
constraint PK_KK primary key(name,trade_name,Cname) ,
constraint Pharmacy_name foreign key (name) references Pharmacy,
constraint Drug_name foreign key (trade_name,cname) references Drug,
constraint Pharm_id foreign key(Cname) references pharmaceutical_company
)


insert into Pharmacy
values('Aly W Aly','10th Ramadan ','+201207401492');