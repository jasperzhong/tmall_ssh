DROP DATABASE IF EXISTS tmall;
CREATE DATABASE tmall DEFAULT CHARACTER SET utf8;
USE tmall;


/* 用户表 */
CREATE TABLE user(
	/* id 主键 */
	id int(11) NOT NULL AUTO_INCREMENT, 
	
	/* 真实姓名 */
	name varchar(20) DEFAULT NULL,

	/* 登陆名 */
	login varchar(20) NOT NULL UNIQUE,

	/* 密码 */
	password varchar(20) DEFAULT NULL,

	/* 性别 */ 
	sex varchar(20) DEFAULT NULL,

	/* 电话 */
	phone varchar(20) DEFAULT NULL,

	/* 电子邮件 */
	email varchar(50) DEFAULT NULL,

	PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


/* 管理员表 */
CREATE TABLE administrator(
	/* id 主键 */
	id int(11) NOT NULL AUTO_INCREMENT, 
	
	/* 真实姓名 */
	name varchar(20) DEFAULT NULL,

	/* 登陆名 */
	login varchar(20) NOT NULL UNIQUE,

	/* 密码 */
	password varchar(20) DEFAULT NULL,

	/* 权限 */
	permission varchar(20) DEFAULT NULL,

	PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


/* 类别表 */
/* 比如服装，数码，电器等等*/
CREATE TABLE category(
	/* id 主键 */
	id int(11) NOT NULL AUTO_INCREMENT, 

	/* 名字 */
	name varchar(20) DEFAULT NULL,

	PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


/* 产品表 */
CREATE TABLE product(
	/* id 主键 */
	id int(11) NOT NULL AUTO_INCREMENT, 

	/* 产品名称 */
	name varchar(255) DEFAULT NULL,

	/* 简单介绍 */
	remark varchar(50) DEFAULT NULL,

	/* 详细介绍 */
	details varchar(1000) DEFAULT NULL,

	/* 商品图片 */
	img varchar(255) DEFAULT NULL,

	/* 生产日期 */
	pdate date DEFAULT NULL,

	/* 原始价格 */
	originalPrice float DEFAULT NULL,

	/* 优惠价格 */
	discountedPrice float DEFAULT NULL,

	/* 库存 */
	stock int(11) DEFAULT NULL,

	/* 外键，指向对应的类别(category) */
	cid int(11) DEFAULT NULL,

	PRIMARY key (id),

	CONSTRAINT fk_product_category FOREIGN KEY (cid) REFERENCES category(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


/* 评论表 */
CREATE TABLE review(
	/* id 主键 */
	id int(11) NOT NULL AUTO_INCREMENT, 

	/* 评价内容 */
	content varchar(1000) DEFAULT NULL, 

	/* 外键，指向用户(user) */
	uid int(11) DEFAULT NULL,

	/* 外键，指向产品(product) */
	pid int(11) DEFAULT NULL,

	PRIMARY KEY (id),

	CONSTRAINT fk_review_user FOREIGN KEY (uid) REFERENCES user(id),
	CONSTRAINT fk_review_product FOREIGN KEY (pid) REFERENCES product(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


/* 订单表 */
CREATE TABLE order_(
	/* id 主键 */
	id int(11) NOT NULL AUTO_INCREMENT,

	/* 订单号 */
	code varchar(255) DEFAULT NULL,

	/* 收货地址 */
	address varchar(255) DEFAULT NULL,

	/* 邮编 */
	post varchar(255) DEFAULT NULL,

	/* 收货人 */
	receiver varchar(20) DEFAULT NULL,

	/* 手机 */
	phone varchar(20) DEFAULT NULL,

	/* 备注 */
	remark varchar(255) DEFAULT NULL,

	/* 创建日期 */
	createDate datetime DEFAULT NULL,

	/* 支付日期 */
	payDate datetime DEFAULT NULL,

	/* 发货日期 */
	deliverDate datetime DEFAULT NULL,
	
	/* 确认收货日期 */
	confirmDate datetime DEFAULT NULL,

	/* 订单总金额 */
	sum float DEFAULT NULL,

	/* 订单状态 */
	status varchar(20) DEFAULT NULL, 

	/* 外键，指向用户(user) */
	uid int(11) DEFAULT NULL, 

	PRIMARY KEY (id),

    CONSTRAINT fk_order_user FOREIGN KEY (uid) REFERENCES user (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


/* 订单项表 */
CREATE TABLE item(
	/* id 主键 */
	id int(11) NOT NULL AUTO_INCREMENT,

	/* 购买数量 */
	num int(11) DEFAULT NULL,

	/* 外键，指向产品(product) */
	pid int(11) DEFAULT NULL,

	/* 外键，指向订单(order) */
	orid int(11) DEFAULT NULL, 

	/* 外键，指向用户(user) */
	uid int(11) DEFAULT NULL,

	PRIMARY KEY (id),

    CONSTRAINT fk_item_user FOREIGN KEY (uid) REFERENCES user (id),
    CONSTRAINT fk_item_product FOREIGN KEY (pid) REFERENCES product (id),
    CONSTRAINT fk_item_order FOREIGN KEY (orid) REFERENCES order_ (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


/* 预先插入模拟数据 */

INSERT INTO user(name, login, password, sex, phone, email) VALUES ("钟钰琛", "Tom", "12345678", "male", "13712345678", "tom@gmail.com");

INSERT INTO category(name) VALUES ("女装/内衣");
INSERT INTO category(name) VALUES ("男装/户外运动");
INSERT INTO category(name) VALUES ("女鞋/男鞋/箱包");
INSERT INTO category(name) VALUES ("化妆品/个人护理");
INSERT INTO category(name) VALUES ("腕表/珠宝饰品/眼镜");
INSERT INTO category(name) VALUES ("手机/数码/电脑办公");
INSERT INTO category(name) VALUES ("母婴玩具");
INSERT INTO category(name) VALUES ("零食/进口食品/茶酒");
INSERT INTO category(name) VALUES ("生鲜水果");
INSERT INTO category(name) VALUES ("大家电/生活电器");
INSERT INTO category(name) VALUES ("家具器材");
INSERT INTO category(name) VALUES ("汽车/配件/鲜花");
INSERT INTO category(name) VALUES ("医药保健");
INSERT INTO category(name) VALUES ("厨具/收纳/宠物");
INSERT INTO category(name) VALUES ("图书音像");

