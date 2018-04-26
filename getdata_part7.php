<?php

$connect = mysqli_connect("localhost", "root", "", "nckh");
mysqli_query($connect, "SET NAMES 'utf8'");

$query = "SELECT * FROM part5 Where examID = '";

$data = mysqli_query($connect, $query);

//Tao class sinh vien
class Part5{
	function Part5($ques, $answ, $cor, $para){
		$this->question = $ques;
		$this->answer = $answ;
		$this->correct = $cor;
		$this->paragraph = $para;
	}
}

//Tao mang
$p1 = array();

//Them phan tu vao mang
while($row = mysqli_fetch_assoc($data)){
	array_push($p1, new Part5($row['question'], $row['answer'], $row['correct'], $row['paragraph']));
}

//Chuyen ve dinh dang cua mang -> JSON
echo json_encode($p1);

?>