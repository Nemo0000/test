select * from users_files1;

-- 用户档案表
create table users_files1(
  id number(10),
  username varchar2(50),
  password varchar2(50),
  age varchar2(50),
  birthday varchar2(50),
  edu varchar2(50),
  work varchar2(50),
  workto varchar2(50),
  workage varchar2(50),
  int varchar2(3999)
);
drop table users_files1;
select * from users_files1;
insert into users_files1 values(1,'高阳','123','21','1995-11-05','天津广播电视大学','vivo','研发','2','踏实肯干，抗压能力强');
insert into users_files1 values(2,'admin','123','23','1998-10-06','天津广播电视大学','浪潮','研发','5',null);
insert into users_files1 values(3,'丁佳伟','123','25','1990-10-07','北京人民大学','宜信','销售','6','热爱工作，热爱生活');



select * from work_gaoyang;


-- 企业简单信息表
create table work_gaoyang1(
  id number(10),
  wn varchar2(100),
  gn varchar2(100),
  zy varchar2(100),
  gd varchar2(50)
);
select * from work_gaoyang1;
Insert into work_gaoyang1 (ID,WN,GN,ZY,GD) values (1,'java开发实习生+4k+应届可培养','北京才秀人人科技天津分公司','4001-8000','天津');
Insert into work_gaoyang1 (ID,WN,GN,ZY,GD) values (2,'java软件开发工程师','天津亿阳通科技有限公司','6001-8000','天津');
Insert into work_gaoyang1 (ID,WN,GN,ZY,GD) values (3,'java工程师','天津紫藤科技有限公司','10001-15000','天津');
Insert into work_gaoyang1 (ID,WN,GN,ZY,GD) values (4,'java高级软件开发工程师','天津紫藤科技有限公司','10001-15000','天津-南开区');
Insert into work_gaoyang1 (ID,WN,GN,ZY,GD) values (5,'java开发工程师','天津紫藤科技有限公司','6000-1000','天津');
Insert into work_gaoyang1 (ID,WN,GN,ZY,GD) values (6,'高级java研发工程师','科蓝公司','10001-15000','天津');
Insert into work_gaoyang1 (ID,WN,GN,ZY,GD) values (7,'java工程师','天津名匠只能系统工程有限公司','7000-10000','天津');
Insert into work_gaoyang1 (ID,WN,GN,ZY,GD) values (8,'web前端实习生','秦蓉科技发展有限公司','4001-8000','天津');
Insert into work_gaoyang1 (ID,WN,GN,ZY,GD) values (9,'赴日软件工程师','天津红海时代科技有限公司','15000-20000','天津');
Insert into work_gaoyang1 (ID,WN,GN,ZY,GD) values (10,'天津招PHP工程师','lr朱氏会社','10001-15000','天津');
Insert into work_gaoyang1 (ID,WN,GN,ZY,GD) values (11,'东软研发部实习生','银美国际贸易有限公司','10001-15000','天津');
Insert into work_gaoyang1 (ID,WN,GN,ZY,GD) values (12,'IT管理培训生','天津东软睿道教育信息科技有限公司','3000-4500','天津');
Insert into work_gaoyang1 (ID,WN,GN,ZY,GD) values (13,'互联网开发工程师','天津东软睿道教育信息科技有限公司','4001-6000','天津');
Insert into work_gaoyang1 (ID,WN,GN,ZY,GD) values (14,'IT技术实习生','天津东软睿道教育信息科技有限公司','4000-6000','天津');
Insert into work_gaoyang1 (ID,WN,GN,ZY,GD) values (15,'东软诚聘-研发部助理','天津东软睿道教育信息科技有限公司','3000-5000','天津');
Insert into work_gaoyang1 (ID,WN,GN,ZY,GD) values (16,'机械电子研发初级工程师','天津东软睿道教育信息科技有限公司','4001-6000','天津');
Insert into work_gaoyang1 (ID,WN,GN,ZY,GD) values (17,'研发部管培生','天津东软睿道教育信息科技有限公司','3000-5000','天津');
Insert into work_gaoyang1 (ID,WN,GN,ZY,GD) values (18,'网站开发设计','天津东软睿道教育信息科技有限公司','4001-6000','天津');
Insert into work_gaoyang1 (ID,WN,GN,ZY,GD) values (19,'web前端开发工程师','天津东软睿道教育信息科技有限公司','4001-6000','天津');
Insert into work_gaoyang1 (ID,WN,GN,ZY,GD) values (20,'东软研发部-开发测试专员','天津东软睿道教育信息科技有限公司','4001-6000','天津');
Insert into work_gaoyang1 (ID,WN,GN,ZY,GD) values (21,'汽车电子研发工程师','天津东软睿道教育信息科技有限公司','4001-6000','天津');
Insert into work_gaoyang1 (ID,WN,GN,ZY,GD) values (22,'java实习生','天津羽蒙软件开发有限公司','2001-4000','天津');
Insert into work_gaoyang1 (ID,WN,GN,ZY,GD) values (23,'手机app试玩','北京亿同新科技信息有限公司','6001-8000','天津-河东区');
Insert into work_gaoyang1 (ID,WN,GN,ZY,GD) values (24,'4k聘java开发实习生','天津卓运天成科技有限公司','4001-6000','天津');
Insert into work_gaoyang1 (ID,WN,GN,ZY,GD) values (25,'java开发实习生双休五险一金','天津洪海时代科技有限公司','4001-6000','天津');
Insert into work_gaoyang1 (ID,WN,GN,ZY,GD) values (26,'java开发实习生','天津市苏美尔科技有限公司','6001-8000','天津-滨海新区');
Insert into work_gaoyang1 (ID,WN,GN,ZY,GD) values (27,'高级java开发工程师','广东奥博信息产业股份有限公司','10001-15000','天津');
select * from work_gaoyang1;


-- 企业详细信息表
create table work_gaoyang12(
  id number(10),
  work1 varchar2(100),
  work2 varchar2(100),
  work3 varchar2(100),
  work4 varchar2(100), 
  work5 varchar2(100),
  work6 varchar2(100),
  work7 varchar2(100),
  work8 varchar2(100),
  work9 varchar2(100),
  work10 varchar2(100),
  work11 varchar2(3999)
);
drop table work_gaoyang12;
Insert into work_gaoyang12 (ID,WORK1,WORK2,WORK3,WORK4,WORK5,WORK6,WORK7,WORK8,WORK9,WORK10,WORK11) values (1,'北京才秀人人科技天津分公司','Java开发工程师','4001-6000元/月','3人','不限','不限','不限','天津','18522229855','李女士','北京才秀人人科技有限公司从成立至今一直致力于软件研发、平面设计、财务外包等业务领域。多年来公司业绩呈良好发展态势，在政府、企业、学校等有着广泛的客户群。公司始终本着“以信为本,以质取胜”的宗旨，着眼于市场需求，高瞻远瞩，凭借多年来辛勤耕耘和守信的经营，已及广大商家和客户的支持，赢得了业界和顾客的一致好评和信任。
才秀人人科技有限公司是一家致力于软件研发、互联网/移动互联网、智能设备、广告设计、人才外包等业务领域的综合性高科技公司，总部位于北京。
除互联网、高科技等产品外，才秀人人科技同样致力于IT人才输送、教育平台建设、软件研发等综合服务，已形成包括人才实训中心、软件研发中心、软件人才中心、IT教育中心四大人才服务模块，在全国范围内拥有1000多所高等院校合作伙伴，为50,000多家企业提供人才输送服务，成为业内最大的人才输送平台。
　　公司在不断发展的过程中逐渐建立起一套完善的营销网络及售后服务、客户在这里可以得到售前技术咨询、售中合理化方案和售后标准化服务等一整套完善的服务支持，从而最大限度的满足用户的需求。
　　软件开发设计领域，公司主要将软件开发定位到中、小软件系统的开发和设计方面，公司有专业的软件开发人员，专门为中、小企业客户定制开发专业软件系统。满足中、小企业的软件领域的应用需求。
　　才秀人人科技有限公司将在世界信息化、网络化的背景下在计算机网络领域获得长足的发展，公司将努力建设成为中国IT业界具有高成长性的企业，建立建全遍布全国的营销网络，通过在企业内部建立合理的竞争机制，使企业内部人才充满创新的原动力。
　　公司将在本行业大力宣传自己、推销自己，给企业发展带来更多的市场机遇和信息，始终坚持以用户为中心的服务体系，为用户提供更具吸引力的产品与服务，扩大在本行业、本地区、乃至全国的知名度和影响力，扩大市场份额。
　　二十一世纪将是信息的时代、网络的时代。我们将抓住这样一个大好的历史机遇，遵循站稳青岛、立足山东、面向全国、走向世界的企业目标，在全国范围内开展业务。既要看到公司发展中有利的一面，同时还有清晰的危机感，以高度的使命感、责任感一如既往的为用户和社会提供满意的产品和服务，将公司做大做强，创造新的业绩，展示新的风采，为中国信息产业发展做出贡献。');
Insert into work_gaoyang12 (ID,WORK1,WORK2,WORK3,WORK4,WORK5,WORK6,WORK7,WORK8,WORK9,WORK10,WORK11) values (2,'天津亿阳通科技有限公司','Java开发工程师','4001-6000元/月','5人','大专及以上','不限','20-40周岁','天津-河西区','13520589685','王先生','信息传输、软件和信息技术服务业；科学研究和技术服务业；商务服务业；批发和零售业。');
Insert into work_gaoyang12 (ID,WORK1,WORK2,WORK3,WORK4,WORK5,WORK6,WORK7,WORK8,WORK9,WORK10,WORK11) values (3,'天津紫藤科技有限公司','软件工程师','10001-15000元/月','5人','本科及以上','1-3年','不限','天津','13922845569','刘女士','天津紫藤科技有限公司是从事专业的移动互联网领域营的技术开发及服务，电子商务平台的开发及运营和智能手机研发、销售。公司核心团队主要来自互联网技术开发，品牌营销及市场推广领域，独特的团队搭配
为紫藤科技奠定了坚实的资源及策略基础，为企业提供移动互联网时代的互动整合传播解决方案。公司致力于专业电子商务，秉承与客户共赢理念，为企业提供高效、务实的互联网营销顾问服务，在专业市场的电子商务建设领域具有独特优势和丰富经验。通过不断地自我超越、资源整合和对互联网的执着，今天的紫藤科技公司将秉承使命，努力为专业市场实现电子商务提供全面解决方案，推动中国电子商务的高速发展。公司具有同行业无与伦比的产业资源集群优势。拥有手机研发设计方案、ID、MD及多媒体制作处理、LCM设计及高品质关键
元件合作供应商等众多资源。紫藤科技不断提供企业的核心竞争力，实现“引领手机时尚，追求生活梦想，为客户创造价值，为社会发展做出新的贡献”。');
select * from work_gaoyang12;

-- 企业简单信息表
create table work_gaoyang13(
  id number(10),
  ent1 varchar2(50),
  ent2 varchar2(50),
  ent3 varchar2(50)
);
Insert into work_gaoyang13 (ID,ENT1,ENT2,ENT3) values (1,'1140852550@qq.com','gameover','天津达内科技有限公司');
Insert into work_gaoyang13 (ID,ENT1,ENT2,ENT3) values (2,'13702067709','gameover','天津北大某鸟有限公司');
select * from work_gaoyang13;




