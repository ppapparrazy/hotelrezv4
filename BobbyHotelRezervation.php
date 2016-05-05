<?php


error_reporting(E_ALL);



$link = mysqli_connect("localhost", "root", "", "HotelRezervationDB1");


if (!$link) {
   
    echo "-ERR  LINK MySQL Error: " . mysql_error();
    exit();
}

//
//	select db

if (!(mysqli_select_db($link, "HotelRezervationDB1"))) {   //!!!

    echo "-ERR  no selected DB  MySQL Error: " . mysql_error();
    exit();
}

$smsID = $_GET["smsID"];
$MSISDN = $_GET["MSISDN"];
$mobileSP = $_GET["msp"];
$smsBody = $_GET["smsBody"];


$smsBody = str_replace(" ", "", $smsBody);

$smsID = addslashes($smsID);
$MSISDN = addslashes($MSISDN);
$mobileSP = addslashes($mobileSP);
$smsBody = addslashes($smsBody);

$args = explode(':',$smsBody); 
$RoomCat=$args[0];
$NumOfDays=$args[1];

//echo "<br />DBG: RoomCat=$RoomCat,  NumOfDays=$NumOfDays";

$selectSQL = "
	SELECT 
		*
	FROM 
		roomcatprice
	WHERE 
		RoomCat = '$RoomCat'
        ";
 //echo "<br /> DBG:  prepare select";


$rSelect = mysqli_query($link, $selectSQL);
//echo "<br /> DBG:   after select";

if ($rSelect == false) {
    
    echo "-ERR MySQL : " . mysqli_error() . "\nSQL: $selectSQL";
    exit();
} else {
    //echo "<br /> DBG: ";   
    
   $NumOfRows = mysqli_num_rows($rSelect);
    
    if ($NumOfRows == 0) {
        echo "+OK Invalid room type.";
        exit();
    }
    
  
   $row = mysqli_fetch_array($rSelect);  
   
    $PriceForDay = $row['PriceForDay'];
    $TotalSum=$NumOfDays*$PriceForDay;

    
      echo " +OK Rezervation: TotalSum=$TotalSum for  Price per day=$PriceForDay and number of days=$NumOfDays   ";
   
}


mysqli_close($link);
?>