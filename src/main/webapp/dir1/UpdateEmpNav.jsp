

<style>
	.NavOuter{
		text-align: center;
		background: #e8c396;
		padding:0px 0px 9px 0px;;

	}
	.NavWrap{
		display: inline-block;
		//border:1px solid red;
	}
	.NavInner{
		display: inline;
		width:auto;
		white-space: nowrap;
		background-color: lightgreen;
		padding: 10px 20px;
		border-right:1px solid #e8c396;

	}
	.NavInner a{
		font-weight: bold;
		font-size: 1em;
		color: brown;
	}
	.Navhead{
		background: lightblue;
		padding:10px;
		font-weight: bold;
		border-right:1px solid #e8c396;
	}
</style>

<div class="NavOuter">

	<div class="NavWrap">
		<div class="Navhead">
				~~ Emplyee Info ~~
		</div>
	<div class="NavInner">
		<a href="UpdateEmpProfile?eid=${param.eid}" >Profile</a>
	</div>
	<div class="NavInner">
		<a href="UpdateEmpQuali?eid=${param.eid}" >Qualification</a>
	</div>
	<div class="NavInner">
		<a href="UpdateEmpExp?eid=${param.eid}">Experience</a>
	</div>
	<div class="NavInner">
		<a href="UpdateEmpKr?eid=${param.eid}" >Knowledge Repository</a>
	</div>
	</div>

</div>