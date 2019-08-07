<?Php

echo "<script>console.log( 'Debug Objects:' );</script>";

require "connect.php"; // Database Connection 

error_reporting(0);
$category_code=$_POST['category_code']; 
$category=$_POST['category'];
$db_status='OK';
if(strlen($category_code) > 0 and strlen($category)>0){

$sql=$conn->prepare("insert into category (category,category_code) values(:category,:category_code)");
$sql->bindParam(':category',$category,PDO::PARAM_STR,25);
$sql->bindParam(':category_code',$category_code,PDO::PARAM_STR,4);
if($sql->execute()){

$sub_id=$conn->lastInsertId(); 
}
else{
$db_status='NOTOK';
}


}else{
$db_status='NOTOK';
}

$main = array('db_status'=>$db_status);


echo json_encode($main); 

?>