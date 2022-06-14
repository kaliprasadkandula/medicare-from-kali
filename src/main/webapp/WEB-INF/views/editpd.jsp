<jsp:include page="aheader.jsp"></jsp:include>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>

	<div class="container-fluid">
		<div class="row">
			<div class="col-sm-5 mx-auto mt-2">
				<div class="card shadow">
					<div class="card-header text-center">
						<h5>Edit Patient Bill</h5>
					</div>
					<div class="card-body">
						<form method="post" action="editpdbyfd">
							<div class="form-row">
								<label class="col-sm-4 col-form-label">Patient ID</label>
								<div class="col-sm-8">
									<input type="text" name="patientid" readonly value="${patientid }" class="form-control form-control-sm" />
								</div>
							</div>
							<div class="form-row">
								<label class="col-sm-4 col-form-label">consultancy_bill</label>
								<div class="col-sm-8">
									<input type="text" name="consultancy_bill" value="${consultancy_bill }" class="form-control form-control-sm" />
								</div>
							</div>
							<div class="form-row">
								<label class="col-sm-4 col-form-label">room_bill</label>
								<div class="col-sm-8">
									<input type="text" name="room_bill" value="${room_bill }" class="form-control form-control-sm" />
								</div>
							</div>
							<div class="form-row">
								<label class="col-sm-4 col-form-label">service_bill</label>
								<div class="col-sm-8">
									<input type="text" name="service_bill" value="${service_bill }" class="form-control form-control-sm" />
								</div>
							</div>
							
							<div class="form-row">
								<label class="col-sm-4 col-form-label">medication_bill</label>
								<div class="col-sm-8">
									<input type="text" name="medication_bill" value="${medication_bill }" class="form-control form-control-sm" />
								</div>
							</div>
							
							<div class="form-row">
								<label class="col-sm-4 col-form-label">Bill Status</label>
								<div class="col-sm-8">
									<select name="bill_status" required class="form-control form-control-sm">
										<option value="not paid">not paid</option>
										<option value="paid">paid</option>
									</select>
								</div>
							</div>
							
							<input type="submit" value="Save"
								class="btn btn-primary float-right px-4">
						</form>

					</div>
				</div>
			</div>
		</div>
	</div>
<jsp:include page="footer.jsp"></jsp:include>