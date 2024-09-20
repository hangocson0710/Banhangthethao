<?php


function construct() {

	load_model('index');	

}





function indexAction() {
	
	$ta = getAllta();
	$maychaybo = getAllmaychaybo();
	$maytonghop = getAllmaytonghop();
	
	$data = [ $ta, $maychaybo, $maytonghop];
	load_view('index',$data);
}




function addAction() {

}




function editAction() {

}
