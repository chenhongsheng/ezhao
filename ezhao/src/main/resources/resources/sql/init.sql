create database ezhao;


CREATE TABLE `ezhao`.`user` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `loginName` VARCHAR(50) NOT NULL,
  `password` VARCHAR(50) NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `loginName_UNIQUE` (`loginName` ASC))
ENGINE = InnoDB
COMMENT = '用户登录表';

insert into `ezhao`.user(loginName,password) values('admin','admin');

DROP TABLE IF EXISTS `ezhao`.`product`;
CREATE TABLE `ezhao`.`product` (
  `id` int(11) DEFAULT NULL,
  `product_name` varchar(1000) DEFAULT NULL,
  `description` blob,
  `product_category` int(11) DEFAULT NULL,
  `thumbnails` varchar(1000) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `ezhao`.`product_category`;
CREATE TABLE `ezhao`.`product_category` (
  `id` int(11) NOT NULL,
  `category_name` varchar(1000) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `category_parent` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;