create table equities(e_symbols varchar(20), 
open float, 
close float, 
current float, 
exchange varchar(3), 
volume long, 
primary key(e_symbols) );

insert into equities values("ISMT", "53.55", "55.30", "58.05", "NS","103080"), 
("LSIL", "14.30", "14.30", "13.65", "NS","56080"),
("TTML", "139.95", "139.05", "145.95", "BO","30023"),
("ZEEMEDIA", "18.35", "18.45", "17.55", "BO","15900"),
("NHPC", "33.75", "33.50", "33.30", "NS","88022");
select * from equities;