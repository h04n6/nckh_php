<?php

$connect = mysqli_connect("localhost", "root", "", "nckh");
mysqli_query($connect, "SET NAMES 'utf8'");

$query = "SELECT * FROM part5 Where examID = '";

$data = mysqli_query($connect, $query);

//Tao class sinh vien
class Part6{
	function Part6($ques, $answ, $cor){
		$this->question = $ques;
		$this->answer = $answ;
		$this->correct = $cor;
	}
}

//Tao mang
$p1 = array();

//Them phan tu vao mang
while($row = mysqli_fetch_assoc($data)){
	array_push($p1, new Part6($row['question'], $row['answer'], $row['correct']));
}

//Chuyen ve dinh dang cua mang -> JSON
echo json_encode($p1);

?>