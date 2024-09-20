<?php





function getAllta(){

	return db_fetch_array("SELECT * FROM `tbl_product` WHERE `id_category` = '7'  LIMIT 8");
}




function getAllmaychaybo(){

	return db_fetch_array("SELECT * FROM `tbl_product` WHERE `id_category` = '8' LIMIT 8");

}





function getAllmaytonghop(){

	return db_fetch_array("SELECT * FROM `tbl_product` WHERE `id_category` = '9' LIMIT 8");

}





