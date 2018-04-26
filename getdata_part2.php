<?php

$connect = mysqli_connect("localhost", "root", "", "nckh");
mysqli_query($connect, "SET NAMES 'utf8'");

$query = "SELECT * FROM part2";

$data = mysqli_query($connect, $query);

//Tao class sinh vien
class Part2{
	function Part2($snd, $cor){
		$this->sound = $snd;
		$this->correct = $cor;
	}
}

//Tao mang
$p = array();

//Them phan tu vao mang
while($row = mysqli_fetch_assoc($data)){
	array_push($p, new Part1($row['sound'], $row['correct']));
}

//Chuyen ve dinh dang cua mang -> JSON
echo json_encode($p);

?>