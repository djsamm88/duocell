<title>Duo Cell</title>
<style>
html,body{
	margin:0px;
	padding:0px;
}
body,table{
	    text-transform: uppercase;
		font-size:8px;
		font-family:verdana;
}

font-size:10px;
</style>

<body onload='window.print();'>
<center>
	DUO CELL 
	<br>
	SUKA MAJU, PINGGIR, RIAU
	<br>
	082277109994
	
</center>

<hr style="border-top: dotted 1px;" />

<table>
<tr>
	<td>Tanggal</td>
	<td>: <?php echo tglindo(date('Y-m-d'))?></td>	
</tr>
<tr>
	<td>Customer No</td>
	<td>: <?php echo $customer_no?></td>	
</tr>

<tr>
	<td>Serial Number</td>
	<td>: <b><?php echo $sn?></b></td>	
</tr>


</table>
<hr style="border-top: dotted 1px;" />
<center>Terimakasih</center>

</body>

<script type="text/javascript">
	setTimeout(function(){window.close();},100);
</script>