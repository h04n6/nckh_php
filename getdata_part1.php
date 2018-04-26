<?php

$connect = mysqli_connect("localhost", "root", "", "nckh");
mysqli_query($connect, "SET NAMES 'utf8'");

$query = "SELECT * FROM part1";

$data = mysqli_query($connect, $query);

//Tao class sinh vien
class Part1{
	function Part1($img, $snd, $cor){
		$this->image = $img;
		$this->sound = $snd;
		$this->correct = $cor;
	}
}

//Tao mang
$p1 = array();

//Them phan tu vao mang
while($row = mysqli_fetch_assoc($data)){
	array_push($p1, new Part1($row['image'], $row['sound'], $row['correct']));
}

//Chuyen ve dinh dang cua mang -> JSON
echo json_encode($p1);

?>