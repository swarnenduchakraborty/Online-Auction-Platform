<?php
include("header.php");
if(isset($_GET['delid'])){
	$sql = "DELETE FROM winners WHERE winner_id='$_GET[delid]'";
	$qsql = mysqli_query($con,$sql);
	echo mysqli_error($con);
	if(mysqli_affected_rows($con) == 1){
		echo "<script>alert('winner record deleted successfully...');</script>";
	}
}
?>
<!-- banner -->
	<div class="banner">
		<?php
		include("sidebar.php");
		?>
		<div class="w3l_banner_nav_right">
<!-- about -->
		<div class="privacy about">
			<h3>View Winner</h3>

			<div class="checkout-left">	

				<div class="col-md-12 ">
<table id="datatable"  class="table table-striped table-bordered dataTable" cellspacing="0" width="100%" role="grid" aria-describedby="example_info" style="width: 100%;" >		
	<thead>
		<tr>
		    <th>Customer</th>
			<th style="width: 400px;">Product</th>
			<th>Auction End date</th>
			<th>Winning bid</th>
		</tr>
		</thead>
		<tbody>
		<?php
		$sql = "select * from winners LEFT JOIN customer ON winners.customer_id =customer.customer_id LEFT JOIN product ON winners.product_id=product.product_id";
		$qsql = mysqli_query($con,$sql);
		while($rs = mysqli_fetch_array($qsql)){
			echo "<tr>
			    <td>$rs[customer_name]</td>
				<td>$rs[product_name]</td>
				<td>" . date("d-m-Y",strtotime($rs['end_date'])) . "</td>
				<td>$rs[winning_bid]</td></tr>";
		}
		?>
	</tbody>
</table>
				</div>
			
				<div class="clearfix"> </div>
				
			</div>

		</div>
<!-- //about -->
		</div>
		<div class="clearfix"></div>
	</div>
<!-- //banner -->
<script>
function deleteconfirm()
{
	if(confirm("Are you sure want to delete this record?") == true)
	{
		return  true;
	}
	else
	{
		return false;
	}
}
</script>

<?php
include("datatable.php");
include("footer.php");
?>