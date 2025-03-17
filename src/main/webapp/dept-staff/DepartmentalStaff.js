

	
	function LoadStaffInDeptPage(id){
		$.ajax({
			type:"GET",
			url:"GetDepWiseEmp?id="+id,
			success:function(data){
				$(".outerTbl").text("");
					if(data.al.length != 0){
						for (var key in data.al) {
							
//							var photoString='<div style="width:100px;height:100px;border:1px solid #888"></div>';
							var photoString='<img src="images/user.png" style="width:100px;" />';
							var photo = printVal(data.al[key].photo);
							if(photo !=""){
								photoString='<img src="https://s3.us-east-2.amazonaws.com/test-rmc-bucket/emp/'+data.al[key].EID+'/photo/'+photo+'"/> ';
							}

							($('.outerTbl')).append('<tr >'
								+'<td style="width:200px">'
									+' '+photoString+' '
								+'</td>'
								+'<td>'
									+'<b>Name : </b><b class="EnameB">'+ printVal(data.al[key].sal) +' '+ printVal(data.al[key].fname) +' '+ printVal(data.al[key].mname) +' '+ printVal(data.al[key].lname) +'</b><br/>'
//							 										+'<b>Branch: </b> '+printVal(data.al[key].deptname)+' <br/>'
									+'<b>Designation: </b> '+printVal(data.al[key].designame)+' <br/>'
									+'<b>Qualification: </b> '+printVal(data.al[key].quali)+' <br/>'
									+'<b>Email ID: </b> '+printVal(data.al[key].mail)+' <br/>'
									+'<b>Contact No.: </b> '+printVal(data.al[key].contact1)+' <br/>'
								+'</td>'
								+'</tr>'
								+'<tr>'
								+'<td class="btmRw" colspan="2">'
									+'<div class="row">'   //1
										+'<div class="col-xs-12 col-sm-2 col-md-2 col-lg-2">'
											+'<b>Experience in Years:</b>'
										+'</div>'
										+'<div class="col-xs-12 col-sm-4 col-md-4 col-lg-4">'
											+' '+printVal(data.al[key].texp)+' Years '
										+'</div>'
										+'<div class="col-xs-12 col-sm-2 col-md-2 col-lg-2">'
										+'<b>Expert Area:</b>'
										+'</div>'
										+'<div class="col-xs-12 col-sm-4 col-md-4 col-lg-4">'
											+''+printVal(data.al[key].aoi)+''
										+'</div>'
									+'</div>'
									+'<div class="row">'	//4
										/*+'<div class="col-xs-12 col-sm-2 col-md-2 col-lg-2">'
											+'<b>Journal Publications:</b>'
										+'</div>'
										+'<div class="col-xs-12 col-sm-4 col-md-4 col-lg-4">'
											+''+printVal(data.al[key].jpub)+''
										+'</div>'*/
										+'<div class="col-xs-12 col-sm-2 col-md-2 col-lg-2">'
											+'<b>Academic Profile:</b>'
										+'</div>'
										+'<div class="col-xs-12 col-sm-4 col-md-4 col-lg-4">'
											+'<a href="https://s3.us-east-2.amazonaws.com/test-rmc-bucket/emp/'+printVal(data.al[key].EID)+'/resume/'+printVal(data.al[key].resume)+'" target="_blank" >'+printVal(data.al[key].resume)+'</a>'
										+'</div>'
								+'</div>'
									/*+'<div class="row">'	//2
										+'<div class="col-xs-12 col-sm-2 col-md-2 col-lg-2">'
											+'<b>Expert Area:</b>'
										+'</div>'
										+'<div class="col-xs-12 col-sm-4 col-md-4 col-lg-4">'
											+''+printVal(data.al[key].aoi)+''
										+'</div>'
										+'<div class="col-xs-12 col-sm-2 col-md-2 col-lg-2">'
											+'<b>Research Projects Undertaken:</b>'
										+'</div>'
										+'<div class="col-xs-12 col-sm-4 col-md-4 col-lg-4">'
											+''+printVal(data.al[key].research)+''
										+'</div>'
									+'</div>'*/
									/*+'<div class="row">'	//3
										+'<div class="col-xs-12 col-sm-2 col-md-2 col-lg-2">'
											+'<b>Subjects Taught:</b>'
										+'</div>'
										+'<div class="col-xs-12 col-sm-4 col-md-4 col-lg-4">'
											+''+printVal(data.al[key].sub)+''
										+'</div>'
										+'<div class="col-xs-12 col-sm-2 col-md-2 col-lg-2">'
											+'<b>Memberships:</b>'
										+'</div>'
										+'<div class="col-xs-12 col-sm-4 col-md-4 col-lg-4">'
											+''+printVal(data.al[key].memberships)+''
										+'</div>'
									+'</div>'*/
									/**/
									/*+'<div class="row">'//5
										+'<div class="col-xs-12 col-sm-2 col-md-2 col-lg-2">'
											+'<b>Patents:</b>'
										+'</div>'
										+'<div class="col-xs-12 col-sm-4 col-md-4 col-lg-4">'
											+''+printVal(data.al[key].petants)+''
										+'</div>'
										+'<div class="col-xs-12 col-sm-2 col-md-2 col-lg-2">'
											+'<b>-</b>'
										+'</div>'
										+'<div class="col-xs-12 col-sm-4 col-md-4 col-lg-4">'
											+'-'
										+'</div>'
									+'</div>'*/
									+'<div class="row blankDV">'//blank
									+'</div>'
								+'</td>'
							+'</tr>');

			        	}
					}
					else{
						($('.outerTbl')).append('<tr >'
								+'<td style="text-align:center"><b style="color:red">No records present for selected criteria.</b></td>'
								+'</tr>');
					}
			},
			error:function(data){

			}
		});
	}

	
	function  LoadStaffAchiv(did){
		$.ajax({
			type:"GET",
			url:"GetDepWiseStaffAchiv",
			data:{"did":did},
			success:function(data){
				if(data!=null){
					var sr=1
					$.each(data.al, function (i, item) {
						$("#st").append('<tr>'
								+'<td>'+sr+'</td>'
								+'<td>'+item.staffname+'</td>'
								+'<td>'+item.awardname+'</td>'
								+'<td>'+item.details+'</td>'
								+'<td><a href="https://s3.us-east-2.amazonaws.com/test-rmc-bucket/AddStaffAchiv/'+item.deptid+'_'+item.document+'" target="_blank">'+item.document+'</a></td>'
								+'</tr>');
						
						sr++;
						
						
					});
				  		               }
			},
			error:function(data){

			}
			
		});
	}
	
	function  LoadResImg(did){
		$.ajax({
			type:"GET",
			url:"GetResImg",
			data:{"did":did},
			success:function(data){
				if(data!=null){
					var sr=1
					
					$.each(data.al, function (i, item) {
						/*$("#st5").append('<img src="https://s3.us-east-2.amazonaws.com/rmc-bucket/AddDepAboutImg/'+item.deptid+'_'+item.image+'" style="height: 300px; width: 400px;margin-left:40%;"/>');*/
						/*$("#slideshow").append('<img src="https://s3.us-east-2.amazonaws.com/rmc-bucket/AddDepAboutImg/'+item.deptid+'_'+item.image+'" style="height: 300px; width: 400px;margin-left:25%;" ></img><br>');*/
						$("#slideshow1").append('<div><img style=" width: 500px;height: 350px;" src="https://s3.us-east-2.amazonaws.com/test-rmc-bucket/ResearchImg/'+item.imgid+'_'+item.image+'" ><br><center><h5 style="color:red;">'+item.imgtitle+'</h5></center></div>');
						
					});
					sr++;
					
					
					
				  		               }
			},
			error:function(data){

			}
			
		});
	}
	
	function  LoadStaffRes(did){
		
		$.ajax({
			type:"GET",
			url:"GetDepWiseStaffRes",
			data:{"did":did},
			success:function(data){
				if(data!=null){
					var sr=1
					
					if(data.al.length != 0)
						{
					$.each(data.al, function (i, item) {
						/*$("#di1").append('<p><h2 style="color: #43577B; font-size: 21px; font-weight: bold;margin-left: 10px">'+item.heading+'</h2></p>');*/
						$("#di1").append('<p >'+item.details+'</p>');     
								
						
					});
						}
					else
						{
						$("#di1").append('<p><h4 style="color:red;" align="center">Reseach Content Not Available</h4></p>');
						}
				  		      }
			},
			error:function(data){

			}
			
		});
	}
	function  LoadStaffResPub(did){
		
		$.ajax({
			type:"GET",
			url:"GetDepWiseStaffResPub",
			data:{"did":did},
			success:function(data){
				if(data!=null){
					var sr=1
					if(data.al.length != 0)
					{
					$.each(data.al, function (i, item) {
						/*$("#di2").append('<p><h2 style="color: #43577B; font-size: 21px; font-weight: bold;margin-left: 10px">'+item.heading+'</h2></p>');*/
						$("#di2").append('<p >'+item.details+'</p>');     
								
						
					});
					}
					else
						{
						$("#di2").append('<p><h4 style="color:red;" align="center">Publication Content Not Available</h4></p>'); 
						}
				  		      }
			},
			error:function(data){

			}
			
		});
	}
	function  LoadStaffResult(did,url){
		
		$.ajax({
			type:"GET",
			url:"GetDepWiseDepResult",
			data:{"did":did},
			success:function(data){
				if(data!=null){
					var sr=1
					$.each(data.al, function (i, item) {
						$("#st3").append('<tr>'
								+'<td>'+sr+'</td>'
								+'<td><a href="DepResultDet?year='+item.year+'&did='+item.deptid+'&url='+url+' ">'+item.year+'</a> </td>'
								+'</tr>');
						
						sr++;
						
						
					});
				  		               }
			},
			error:function(data){

			}
			
		});
	}
	function  LoadStaffCourseStru(did){
		$.ajax({
			type:"GET",
			url:"GetDepWiseCourseStruct",
			data:{"did":did},
			success:function(data){
				if(data!=null){
					var sr=1
					$.each(data.al, function (i, item) {
						$("#st4").append('<tr>'
								+'<td>'+sr+'</td>'
								+'<td>'+item.corsname+'</td>'
								+'<td>'+item.corsedetl+'</td>'
								+'<td>'+item.year+'</td>'
								+'<td><a href="https://s3.us-east-2.amazonaws.com/test-rmc-bucket/AddDepCourseStr/'+item.deptid+'_'+item.document+'" target="_blank">'+item.document+'</a></td>'
								+'</tr>');
						
						sr++;
						
						
					});
				  		               }
			},
			error:function(data){

			}
			
		});
	}
	function  LoadDepImg(did){
		$.ajax({
			type:"GET",
			url:"GetDepImg",
			data:{"did":did},
			success:function(data){
				if(data!=null){
					var sr=1
					$.each(data.al, function (i, item) {
						/*$("#st5").append('<img src="https://s3.us-east-2.amazonaws.com/rmc-bucket/AddDepAboutImg/'+item.deptid+'_'+item.image+'" style="height: 300px; width: 400px;margin-left:40%;"/>');*/
						/*$("#slideshow").append('<img src="https://s3.us-east-2.amazonaws.com/rmc-bucket/AddDepAboutImg/'+item.deptid+'_'+item.image+'" style="height: 300px; width: 400px;margin-left:25%;" ></img><br>');*/
						$("#slideshow").append('<div><img style=" width: 500px;height: 350px;" src="https://s3.us-east-2.amazonaws.com/test-rmc-bucket/AddDepAboutImg/'+item.deptid+'_'+item.image+'" ><br><center><h5 style="color:red;">'+item.imgname+'</h5></center></div>');
						
					});
					sr++;		
					
				  		               }
			},
			error:function(data){

			}
			
		});
	}
	function  LoadDeptDtl(did){
		$.ajax({
			type:"GET",
			url:"GetDeptDtl",
			data:{"did":did},
			success:function(data){
				if(data!=null){
					var sr=1
					$.each(data.al, function (i, item) {
						$("#di").append('<p><h2 style="color: #43577B!important; font-size: 21px; font-weight: bold;margin-left: 10px">'+item.heading+'</h2></p>');
						$("#di").append('<p >'+item.details+'</p>');     
								
						
					});
				  		      }
			},
			error:function(data){

			}
			
		});
	}
	
	function  LoadDepEvent(did,url){
		$.ajax({
			type:"GET",
			url:"GetDepWiseEvent",
			data:{"did":did},
			success:function(data){
				if(data!=null){
					var sr=1
					var str='<div class="row">'
					$.each(data.al, function (i, item) {
						
						
							str=str+'<div class="col-sm-4">'
								   +'<img src="https://s3.us-east-2.amazonaws.com/test-rmc-bucket/DeptEventpics/'+item.eid+'_'+item.image+'" style="height: 200px; width: 100%;"/><br><a href="GetDeptPics?id='+item.eid+'&url='+url+'" target="_blank1"><center>'+item.caption+'</center></a>'
								   +'</div>'
										
										
									
						
						
					});
					 str=str+'</div>'
					$("#rr").append(str);
				  		         }
			},
			error:function(data){

			}
			
		});
	}
	
	/*$.get('GetDepWiseStaffAchiv',{did:'1'},function(responseJson){
  		             if(responseJson!=null){
	                 $("#countrytable").find("tr:gt(0)").remove();
                     var table1 = $("#countrytable");
                     var sr=1;
                     $.each(responseJson,function(key,value) { 
                   	                      var rowNew = $("<tr><td></td><td></td><td></td><td></td><td></td></tr>");
                   	                         rowNew.children().eq(0).text(sr++); 
                   	                         rowNew.children().eq(1).text(value['staffname']); 
                   	                         rowNew.children().eq(2).text(value['awardname']); 
                   	                         rowNew.children().eq(3).text(value['details']); 
                   	                         rowNew.children().eq(4).html('<a href="https://s3.us-east-2.amazonaws.com/rmc-bucket/AddStaffAchiv/'+value['document']+'">'+value['document']+'</a>'); 
                   	                          
                   	                         rowNew.appendTo(table1);
                    });
  		               }  
                      });*/

function printVal(val){
	if(typeof val == 'undefined' || val == 'null')
			return "";
	else
		return val;
}
