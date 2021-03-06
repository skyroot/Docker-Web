
<div class="panel panel-default" id='ctnerPanel'>
	<div class="panel-heading clearfix">
		<div class="row">
			<div class="col-xs-12 col-md-3">
				<h4 class="panel-title pull-left" style="padding-top: 7.5px;">Containers <span class='badge'>0</span></h4>
			</div>
			<div class="col-xs-12 col-md-6">
				<div class="btn-group">
					<a id='start' href="#" class="btn btn-default btn-sm" data-loading-text='Starting...'><strong>Start</strong></a>
					<a id='stop' href="#" class="btn btn-default btn-sm" data-loading-text='Stopping'><strong>Stop</strong></a>
					<a id='restart' href="#" class="btn btn-default btn-sm" data-loading-text='Stopping'><strong>Restart</strong></a>
					<a id='kill' href="#" class="btn btn-default btn-sm" data-loading-text='Killing...'><strong>Kill</strong></a>
					<a id='pause' href="#" class="btn btn-default btn-sm"><strong>Pause</strong></a>
					<a id='unpause' href="#" class="btn btn-default btn-sm"><strong>Unpause</strong></a>
				</div>
			</div>
			<div class="col-xs-12 col-md-3">
				<div class="btn-group pull-right">
					<a id='dsplyAll' href="#" class="btn btn-info btn-sm" data-loading-text='Loading......'><strong>Display All</strong></a>

					<a id='delCtner' href="#" class="btn btn-warning btn-sm" data-loading-text='Deleting...'><strong>Delete</strong></a>
				</div>
			</div>
						
		</div>

	</div>
		
	<table class="table table-hover table-responsive">
		<thead>
			<tr>
				<th><input id='full' type='checkbox' /></th>
				<th>Id</th>
				<th>Names</th>
				<th>Image</th>
				<th>Command</th>
				<th>Created</th>
				<th>Status</th>
				<th>Ports</th>
			</tr>
		</thead>
		<tbody id='ctnerTbody'></tbody>
	</table>
</div>

<!-- 链接模态框 -->
<div class="modal" id='ctnerModal' tabindex='-1'>
	<div class="modal-dialog modal-lg">
		<div class="modal-content">
			<div class="modal-header">
				<a class="close" data-dismiss='modal'>&times;</a>
				<h5 class='modal-title'>Container</h5>
			</div>	
			<div class="modal-body">
				<ul class='nav nav-tabs nav-justified' id='ctnerTab'>
					<li class='active'><a id='process' href='#rename' data-toggle='tab'>Rename</a></li>
					<li><a id='process' href='#ps' data-toggle='tab'>Processes</a></li>
					<!-- <li><a href='#registry' data-toggle='tab'>Registry</a></li> -->
					<li><a href='#changes' data-toggle='tab' data-loading-text='Loading.....'>Changes On Filesystem</a></li>
					<li><a href='#inspect' data-toggle='tab' data-loading-text='Loading.....'>Inspect</a></li>
				</ul>

				<div class="tab-content">
					<!-- rename标签 -->
					<p></p>
					<div class='tab-pane active' id="rename">
						<form id='renameForm'>
							<div class="form-group">
								<label>Old Name</label>
								<input class="form-control" id='oldCtnerName' type='text' placeholder='Old name' disabled/>
							</div>
							<div class="form-group">
								<label>New Name</label>
								<input class="form-control" id='newCtnerName' type='text' name='newCtnerName' placeholder='New Name'/>
							</div>
							<button class='btn btn-default' data-dismiss='modal'>Cancel</button>
							<button class='btn btn-success pull-right' id='renameCtnerSbmt'>Submit</button>	
						</form>		
					</div>
					<!-- process标签 -->
					<div class='tab-pane' id='ps'>
						<p></p>
						<div class="panel panel-danger">
						<!-- <div class="panel panel-warning"> -->
							<div class="panel-heading">
								<h4 class="panel-title"></h4>
							</div>
							<p></p>
							<table class='table table-condensed table-striped'>
								<thead id='psThead'></thead>
								<tbody id='psTbody'></tbody>	
							</table>
						</div>
					</div>
					
					<!-- history标签 -->
					<div class='tab-pane' id="changes">
						<p></p>
						<div class="panel panel-danger">
						<!-- <div class="panel panel-warning"> -->
							<div class="panel-heading">
								<h4 class="panel-title"></h4>
							</div>
							<table class='table table-condensed table-striped'>
								<thead>
									<th>Path</th>
									<th>Kind</th>
								</thead>
								<tbody id='chgTbody'></tbody>	
							</table>
						</div>
					</div>
					<!-- inspect标签 -->
					<div class='tab-pane' id="inspect">
						<p></p>
						<div class="panel panel-danger">
							<div class="panel-heading">
								<h4 class="panel-title"></h4>
							</div>
							<div class="panel-body">
								<pre class='pre-scrollable'></pre>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<!-- rename container -->
<div class="modal" id='renameModal' tabindex='-1'>
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<a href="#" class="close" data-dismiss='modal'>&times;</a>
				<h5 class='modal-tilte'>Rename Container</h5>	
			</div>
			<div class="modal-body">
				<form id='renameForm'>
					<div class="form-group">
						<label>Old Name</label>
						<input class="form-control" type='text' placeholder='Old name' disabled/>
					</div>
					<div class="form-group">
						<label>New Name</label>
						<input class="form-control" id='newCtnerName' type='text' name='newCtnerName' placeholder='New Name'/>
					</div>
					<button class='btn btn-default' data-dismiss='modal'>Cancel</button>
					<button class='btn btn-success pull-right' id='tagSubmit'>Submit</button>	
				</form>		
			</div>
			<div class="modal-footer">
				
			</div>
		</div>
	</div>	
</div>