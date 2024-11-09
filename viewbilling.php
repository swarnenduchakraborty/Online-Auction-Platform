<?php
include("header.php");
if(isset($_GET['delid']))
{
	$sql ="DELETE FROM billing WHERE billing_id='$_GET[delid]'";
	$qsql = mysqli_query($con,$sql);
	if(mysqli_affected_rows($con) == 1)
	{
		echo "<script>alert('billing record deleted successfully...');</script>";
		echo "<script>window.localation='viewbilling.php';</script>";
	}
}
?>
            <!-- breadcrumb-area start -->
            <div class="breadcrumb-area bg-gray">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-12">
                            <ul class="breadcrumb-list">
                                <li class="breadcrumb-item">Home</li>
                                <li class="breadcrumb-item active">View Billing</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <!-- breadcrumb-area end -->
            
            <!-- content-wraper start -->
            <div class="content-wraper mt-10">
                <div class="container-fluid">
					<!-- checkout-area start -->
                    <div class="checkout-area">
                        <div class="row">
                            <div class="col-lg-12">
<div class="row">
	<div class="col-lg-12 col-xl-12 col-sm-12">
		<form action="" method="post">
			<div class="checkbox-form checkout-review-order">
				<h3 class="shoping-checkboxt-title">View Billing</h3>
				<div class="row">

<div class="col-lg-12">
	<p class="single-form-row">

<table id="datatable" class="table table-striped table-bordered">
	<thead>
		<tr>
			<th>Customer</th>
			<th>Product</th>
			<th>Purchase Date</th>
			<th>Purchase amount</th>
			<th>Payment type</th>
			<th>Payment details</th>
			<th>Status</th>
			<th>Action</th>
		</tr>
	</thead>
	<tbody>
	<?php
	$sql ="SELECT *, customer.customer_name, product.product_name FROM billing LEFT JOIN customer ON billing.customer_id=customer.customer_id LEFT JOIN product ON product.product_id=billing.product_id";
	$qsql = mysqli_query($con,$sql);
	while($rs = mysqli_fetch_array($qsql))
	{
		echo "<tr>
			<td>$rs[customer_name]<br><b>Email:</b> $rs[email_id]<br><b>Ph. No:</b> $rs[mobile_no]</td>
			<td>$rs[product_name]</td>
			<td>$rs[purchase_date]</td>
			<td>$rs[purchase_amount]</td>
			<td>$rs[payment_type]</td>
			<td>
			<b>Card holder:</b>&nbsp;$rs[card_holder] <br>
			<b>Card type:</b>&nbsp;$rs[card_type] <br>
			<b>Card No.</b>&nbsp;$rs[card_number] <br>
			<b>Expiry Date:</b>&nbsp;" . date("M-Y",strtotime($rs['expire_date'])) . " <br>
			<b>CVV No.</b>&nbsp;$rs[cvv_number]
			</td>
			<td>$rs[status]</td>
			<td>
			
			<a href='billing.php?editid=$rs[0]' class='btn btn-info' >Edit</a>
			
				<a href='viewbilling.php?delid=$rs[0]' class='btn btn-danger' onclick='return confirmdelete()'>Delete</a>
		
			
			</td>
			
			</tr>";
	}
	?>
	</tbody>
</table>

	</p>
</div>

				</div>
			</div>
		</form>
	</div>
</div>
                            </div>
                        </div>
                    </div>
                    <!-- checkout-area end -->
                </div>
            </div>
            <!-- content-wraper end -->
            
            <!-- footer-area start -->
            <?php
			include("footer.php");
			?>
<script>
function confirmdelete()
{
	if(confirm("Are you sure want to delete this record?") == true)
	{
		return true;
	}
	else 
	{
		return false;
	}
}
</script>